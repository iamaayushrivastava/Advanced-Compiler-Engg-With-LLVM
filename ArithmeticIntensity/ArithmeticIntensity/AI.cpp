#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/ADT/SCCIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Operator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Pass.h"
#include <string>
#include <vector>
#include <set>
#include <map>
#include <stack>

using namespace llvm;

namespace {

struct Flowgraph
{
    std::map<std::string, BasicBlock*> blockMap;
    std::map<std::string, std::set<std::string>> preds;
    std::set<std::pair<std::string, std::string>> edges;
    std::set<std::string> blocks;
};

Flowgraph construct_flowgraph(Function &F);
void dom_comp(std::map<std::string, std::set<std::string>> &domTree, std::map<std::string, std::set<std::string>> preds, std::set<std::string> blocks, std::string entryBlock);
std::vector<std::pair<std::string, std::string>> find_backedges(std::set<std::pair<std::string, std::string>> edges, std::map<std::string, std::set<std::string>> dominatorTree);
std::set<std::set<std::string>> find_loops(std::vector<std::pair<std::string, std::string>> backwardedges, std::map<std::string, std::set<std::string>> preds, std::map<int, std::set<std::string>> &loopMap);
void print_loops(std::map<int, std::set<std::string>> &loopMap, std::map<std::string, BasicBlock*> &blockMap);
std::map<std::string, int> VariableMap;
void no_loop_count_inst(Function &F);
void arithmetic_intensity(Function &F, int num);
std::map<int, std::pair<int, int>> loopOperations;
std::map<std::string, std::pair<int, int>> AI;
// int extract_cmp_value(Instruction *inst);

int arithmetic_ops = 0;
int memory_ops = 0;

void visitor(Function &F)
{
    errs() << "\nFunction Name: " << F.getName() << "\n";

    no_loop_count_inst(F);

    // Step 1: Construct flowgraph and compute the dominance relation for it
    Flowgraph graph = construct_flowgraph(F);

    std::map<std::string, std::set<std::string>> domTree;

    errs() << "\nTotal number of basic blocks in the function: " << graph.blocks.size() << "\n";

    if(graph.blocks.size() > 0)
    {
        auto entryBlock = graph.blocks.begin();
        dom_comp(domTree, graph.preds, graph.blocks, *entryBlock);
    }

    // Find backward edges
    std::vector<std::pair<std::string, std::string>> backwardedges = find_backedges(graph.edges, domTree);

    // Construct loops
    std::map<int, std::set<std::string>> loopMap;
    std::set<std::set<std::string>> loops = find_loops(backwardedges, graph.preds, loopMap);

    errs() << "\nTotal number of loops: " << backwardedges.size() << "\n";

    int loop_count = 0;

    loop_count = backwardedges.size();

    print_loops(loopMap, graph.blockMap);
    arithmetic_intensity(F, loop_count);
}

Flowgraph construct_flowgraph(Function &F)
{
    Flowgraph graph;
    int countBlock = 0;
    for(auto &B: F) 
    {
        std::string blockName = "Block" + std::to_string(countBlock); // Naming each basic block
        B.setName(Twine(blockName));
        graph.blocks.insert(blockName);
        graph.blockMap[blockName] = &B;
        countBlock++;
    }

    for(auto &B: F)
    {
        // Fill the predecessors and edges of each basic block
        std::string blockName = B.getName().str();
        for (auto it = pred_begin(&B), et = pred_end(&B); it != et; ++it)
        {
            BasicBlock* predecessor = *it;
            std::string predName = predecessor->getName().str();
            graph.preds[blockName].insert(predName);
            graph.edges.insert(make_pair(predName, blockName));
        }            
    }
    return graph;
}

std::set<std::string> intersection(std::set<std::string> &A, std::set<std::string> &B)
{
    std::set<std::string> ret;
    std::set_intersection(A.begin(), A.end(), B.begin(), B.end(), std::inserter(ret, ret.begin()));
    return ret;
}

std::set<std::string> findallintersections(std::set<std::string> &preds, std::set<std::string> &blocks, std::map<std::string, std::set<std::string>> &dominatorTree)
{
    std::set<std::string> ret = blocks;
    for(auto pred:preds)
    {
        ret = intersection(ret, dominatorTree[pred]);
    }
    return ret;
}

bool relaxAllBlocks(std::set<std::string> blocks, std::map<std::string, std::set<std::string>> preds, std::map<std::string, std::set<std::string>> &domTree, std::string entryNode)
{
    int unstablecount = blocks.size()-1;
    // Run for all nodes except the entryNode
    for(auto block: blocks)
    {
        if(block==entryNode)
            continue;
        std::set<std::string> bk = domTree[block];

        domTree[block] = findallintersections(preds[block], blocks, domTree);

        domTree[block].insert(block);

        if(bk == domTree[block])unstablecount--;
    }
    return unstablecount != 0;
}

void dom_comp(std::map<std::string, std::set<std::string>> &domTree, std::map<std::string, std::set<std::string>> preds, std::set<std::string> blocks, std::string entryBlock)
{
    if(blocks.size()==0)return;

    for(auto block:blocks)
    {
        domTree[block] = blocks;
    }

    domTree[entryBlock] = std::set<std::string>{entryBlock};

    while(relaxAllBlocks(blocks, preds, domTree, entryBlock));
}

/*
Step 2 : Find each node s in flowgraph for which there is a node n such that
        (i) s <= n in dominance relationship and •  (n,s) is an edge in flowgraph
        (ii) Each such node s is a loop entry point and (n,s) is a backward edge
*/

std::vector<std::pair<std::string, std::string>> find_backedges(std::set<std::pair<std::string, std::string>> edges, std::map<std::string, std::set<std::string>> dominatorTree)
{
    std::vector<std::pair<std::string, std::string>> backwardedges;
    for(auto edge: edges) 
    {
        std::string n = edge.first; std::string s = edge.second;
        // Consider only backward edge in dominator graph
        if(dominatorTree[n].find(s) != dominatorTree[n].end())
            backwardedges.push_back(edge);
    }
    return backwardedges;
}

/*
Step 3: Construction

Construct natural loop associated with s and (n,s). It is characterized by its nodes N’⊆ N
    (i) Enter entry point s and node n at the other end of the backward edge into N’
    (ii) Then, include the predecessors of n
    (iii) Continue by adding all the predecessors of nodes that are in the loop, except for the predecessors of the entry point, until there are no more such nodes
*/

void dfs(std::string node, std::set<std::string> &loop, std::map<std::string, std::set<std::string>> preds)
{
    loop.insert(node);
    for(auto pre : preds[node])
    {
        if(loop.find(pre) == loop.end())
            dfs(pre, loop, preds);
    }
}

std::set<std::set<std::string>> find_loops(std::vector<std::pair<std::string, std::string>> backwardedges, std::map<std::string, std::set<std::string>> preds, std::map<int, std::set<std::string>> &loopMap)
{
    std::set<std::set<std::string>> loops;
    for(auto edge:backwardedges)
    {
        std::set<std::string> loop;
        loop.insert(edge.second);
        dfs(edge.first, loop, preds);
        loopMap[loops.size()] = loop;
        loops.insert(loop);
    }
    return loops;
}

void print_loops(std::map<int, std::set<std::string>> &loopMap, std::map<std::string, BasicBlock*> &blockMap) 
{
    errs() << "\n********* Loop Information *********\n";

    int loop_arithmetic_ops = 0;
    int loop_memory_ops = 0;

    for(auto it:loopMap) 
    {
        errs() << "\nLoop" << " " << it.first << ": ";

        for(auto blockid: it.second)
        { 
           // errs() << blockid << " ";
        }
        errs() << "\n\nCount of basic blocks involved in the loop: " << it.second.size() << "\n";

        int countInst = 0;

        int aops = 0;
        int memoryops = 0;

        int cmp_value = 0;

        for(auto blockid: it.second)
        {   
            // for(auto &I: *blockMap[blockid])
            // {
            //     errs() << I << "\n";
            //     countInst++;
            // }

            BasicBlock* block = blockMap[blockid];
            errs() << "\nInstructions for " << blockid << ":";

            // for(Instruction &I : *block)
            // {
            //     if (CmpInst *comp = dyn_cast<CmpInst>(&I))
            //     {
            //         // Iterate over the operands of the comparison instruction
            //         for (unsigned i = 0; icountInst < comp->getNumOperands(); ++i)
            //         {
            //             Value *Op = comp->getOperand(i);
            //             // Check if the operand is a constant integer
            //             if (ConstantInt *ConstOp = dyn_cast<ConstantInt>(Op))
            //             {
            //                 int a = ConstOp->getSExtValue();
            //                 errs() << "Constant value: " << a << "\n";
            //             }
            //         }
            //     }
            // }

            for (Instruction &I : *block)
            {
                // for (Use &U : I.operands())
                // { 
                //     Value *Operand = U.get();
                //     if (Operand->getType()->isFloatingPointTy())

                // if(CmpInst *cmp =dyn_cast<CmpInst>(&I))
                // {
                //     Value *Op2 = cmp->getOperand(1);
                //     if (ConstantInt *ConstOp2 = dyn_cast<ConstantInt>(Op2))
                //         cvalue = ConstOp2->getSExtValue();
                // }

                // {

                // Check if it's a comparison instruction
                
                // cmp_value = extract_cmp_value(&I); // Pass the instruction pointer
                if (auto *cmpInst = dyn_cast<CmpInst>(&I))
                {
                    // Value *op1 = cmpInst->getOperand(0);
                    Value *op2 = cmpInst->getOperand(1);
                    // errs() << "Comparison instruction: " << *cmpInst << "\n";
                    // errs() << "Operand 1: " << *op1 << "\n";
                    // errs() << "Operand 2: " << *op2 << "\n\n";

                    if (ConstantInt *ConstOp2 = dyn_cast<ConstantInt>(op2))
                    {
                        int cvalue = ConstOp2->getSExtValue();
                        // errs() << "\nValue of cmp instruction: " << cvalue << "\n";
                        cmp_value = (cvalue - 1);
                    }

                    errs() << "\n";
                }

                if (I.isBinaryOp())
                {
                    switch (I.getOpcode())
                    {
                        // case Instruction::BinaryOps::Add:
                        // case Instruction::BinaryOps::Sub:
                        // case Instruction::BinaryOps::Mul:
                        case Instruction::BinaryOps::FAdd:
                        case Instruction::BinaryOps::FSub:
                        case Instruction::BinaryOps::FMul:
                        // case Instruction::BinaryOps::SDiv:
                        // case Instruction::BinaryOps::UDiv:
                        // case Instruction::BinaryOps::SRem:
                        // case Instruction::BinaryOps::URem:
                        case Instruction::BinaryOps::FRem:
                            aops++;
                            break;
                        default:
                            break;
                    }
                }      
                else if (I.getOpcode() == Instruction::Load || I.getOpcode() == Instruction::Store)
                    memoryops++;

                        // if(StoreInst *store = dyn_cast<StoreInst>(&I))
                        //     memoryAccessOperations++;

                        // if(LoadInst *load = dyn_cast<LoadInst>(&I))
                        //     memoryAccessOperations++;

                        // if (I.getOpcode() == Instruction::FAdd || I.getOpcode() == Instruction::FMul || I.getOpcode() == Instruction::FDiv || I.getOpcode() == Instruction::FSub || I.getOpcode() == Instruction::FRem)
                        //     arithmeticOperations++;
            }

            // errs() << "\nBB Name: " << block->getName() << "\n";
            // errs() << "\nTotal Arithmetic Operations: " << aops << "\n";
            // errs() << "\nTotal Memory Access Operations: " << memoryops << "\n";

            // loop_inst(*block);
            for (auto &I : *block)
            {
                // Instructions involved in the loop
                errs() << "\n" << "  " << I << "\n";
                countInst++;
            }
        }
        
        errs() << "\nLoop information for the loop" << " " << it.first << ":\n";
        errs() << "\nTotal instructions involved in the loop: " << countInst << "\n";
        errs() << "\n";
        errs() << "Arithmetic operations in this loop: " << aops << "\n";
        errs() << "Memory access operations in this loop: " << memoryops << "\n";
        // errs() << "\nCMP value: " << cmp_value << "\n";

        aops = (aops * cmp_value);
        memoryops =  (memoryops * cmp_value);

        errs() << "Total arithmetic operations executed in this loop: " << aops << "\n";
        errs() << "Total memory access operations executed in this loop: " << memoryops << "\n";

        loopOperations[it.first] = std::make_pair(aops, memoryops);

        loop_arithmetic_ops += aops;
        loop_memory_ops += memoryops;

        errs() << "\n";
        // errs() << "Total Arithmetic Operations involved in the loop (Final Value): " << loop_arithmetic_ops << "\n";
        // errs() << "Total Memory Access Operations involved in the loop (Final Value): " << loop_memory_ops << "\n";
    }
    AI["Ops_Count"] = std::make_pair(loop_arithmetic_ops, loop_memory_ops);
}

// int extract_cmp_value(Instruction *inst)
// {
//     int cmp_value = 0;
    
//     // Check if the instruction is a comparison instruction
//     if (CmpInst *cmpInst = dyn_cast<CmpInst>(inst))
//     {
//         // Check if the comparison instruction has a constant operand
//         if (ConstantInt *constOp = dyn_cast<ConstantInt>(cmpInst->getOperand(1)))
//         {
//             cmp_value = constOp->getSExtValue();
//             errs() << "Compare Instruction Value: " << cmp_value;
//         }
//     }
//     return cmp_value;
// }

void no_loop_count_inst(Function &F)
{
    int arithmeticOperations = 0;
    int memoryAccessOperations = 0;

    for (BasicBlock &BB : F)
    {
        for (Instruction &I : BB)
        {
            // for (Use &U : I.operands())
            // { 
            //     Value *Operand = U.get();
            //     if (Operand->getType()->isFloatingPointTy())
            // {
            if (I.isBinaryOp())
            {
                switch (I.getOpcode())
                {
                    // case Instruction::BinaryOps::Add:
                    // case Instruction::BinaryOps::Sub:
                    // case Instruction::BinaryOps::Mul:
                    case Instruction::BinaryOps::FAdd:
                    case Instruction::BinaryOps::FSub:
                    case Instruction::BinaryOps::FMul:
                    // case Instruction::BinaryOps::SDiv:
                    // case Instruction::BinaryOps::UDiv:
                    // case Instruction::BinaryOps::SRem:
                    // case Instruction::BinaryOps::URem:
                    case Instruction::BinaryOps::FRem:
                        arithmeticOperations++;
                        break;
                    default:
                        break;
                }
            }      
            else if (I.getOpcode() == Instruction::Load || I.getOpcode() == Instruction::Store)
                memoryAccessOperations++;

                // if(StoreInst *store = dyn_cast<StoreInst>(&I))
                //     memoryAccessOperations++;

                // if(LoadInst *load = dyn_cast<LoadInst>(&I))
                //     memoryAccessOperations++;

                // if (I.getOpcode() == Instruction::FAdd || I.getOpcode() == Instruction::FMul || I.getOpcode() == Instruction::FDiv || I.getOpcode() == Instruction::FSub || I.getOpcode() == Instruction::FRem)
                //     arithmeticOperations++;
        }
    }

    // float intensity = (arithmeticOperations / memoryAccessOperations);

    // errs() << "Function Name: " << F.getName() << "\n";
    // errs() << "Total Arithmetic Operations: " << arithmeticOperations << "\n";
    // errs() << "Total Memory Access Operations: " << memoryAccessOperations << "\n";
    // errs() << "Arithmetic Intensity (A/B): " << intensity << "\n";

    arithmetic_ops = arithmeticOperations;
    memory_ops = memoryAccessOperations;
    errs() << "\nTotal arithmetic operations in a sequential flow: " << arithmetic_ops << "\n";
    errs() << "\nTotal memory access operations in a sequential flow: " << memory_ops << "\n";
}

void arithmetic_intensity(Function &F, int n)
{
    errs() << "\n********* Arithmetic Intensity *********";
    errs() << "\n";
    // AI[it.first] = std::make_pair(loop_arithmetic_ops, loop_memory_ops);

    int a, b;

    if (n > 0)
    {
        for (const auto &pair : AI)
        {
            // errs() << "Key: " << pair.first << ", Value: (" << pair.second.first << ", " << pair.second.second << ")";
            a = pair.second.first;
            b = pair.second.second;
        }

        int arithmetic_operations = a + arithmetic_ops;
        int memory_operations = b + memory_ops;

        errs() << "\nTotal number of arithmetic operations: " << arithmetic_operations << "\n";
        errs() << "\nTotal number of memory access operations: " << memory_operations << "\n";

        if (memory_ops != 0)
        {
            float intensity = (arithmetic_ops / memory_ops);
            errs() << "\nArithmetic Intensity (A/B): " << intensity << "\n";
        }
    }

    else
    {
        if (memory_ops != 0)
        {
            float intensity = (arithmetic_ops / memory_ops);
            errs() << "Total number of arithmetic operations: " << arithmetic_ops << "\n";
            errs() << "Total number of memory access operations: " << memory_ops << "\n";
            errs() << "Arithmetic Intensity (A/B): " << intensity << "\n";
        }
    }
    
}

struct ArithmeticIntensity : PassInfoMixin<ArithmeticIntensity>
{
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM)
    {
        visitor(F);
        return PreservedAnalyses::all();
    }
    static bool isRequired() { return true; }
};
}

// ArithmeticIntensity Pass Registeration

llvm::PassPluginLibraryInfo getArithmeticIntensityPluginInfo()
{
    return { LLVM_PLUGIN_API_VERSION, "ArithmeticIntensity", LLVM_VERSION_STRING, [](PassBuilder &PB)
            {
                PB.registerPipelineParsingCallback([](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>)
                {
                    if (Name == "arithmetic-intensity")
                    {
                        FPM.addPass(ArithmeticIntensity());
                        return true;
                    }
                    return false;
                });
            }
        };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo()
{
    return getArithmeticIntensityPluginInfo();
}