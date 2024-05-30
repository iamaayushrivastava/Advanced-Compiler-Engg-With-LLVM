#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/ADT/DepthFirstIterator.h" 
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include <string>
#include <regex>
#include <map>
#include <stack>
#include <vector>
#include <string>
#include <cstdlib>
#include <cmath>  
#include <algorithm>
#include <iostream>
#include<set>
#include<queue>

using namespace llvm;
using namespace std;

// Command line option for variable name
static cl::opt<std::string> VariableName("var-name", cl::desc("Variable Name"), cl::value_desc("variable"), cl::init("Let's start!"));

namespace {

// Loop Information

struct Flowgraph
{
    map<string, BasicBlock*> blockMap;
    map<string, set<string>> preds;
    set<pair<string, string>> edges;
    set<string> blocks;
};

// Function Declaration
Flowgraph CFG(Function &F);
void ComputeDomTree(map<string, set<string>> &domTree, map<string, set<string>> preds, set<string> blocks, string entryBlock);
vector<pair<string, string>> GetBackEdge(set<pair<string, string>> edges, map<string, set<string>> dominatorTree);
set<set<string>> FindLoop(vector<pair<string, string>> backwardedges, map<string, set<string>> preds, map<int, set<string>> &loopMap);
pair<set<string>, int> GetLoop(map<int, set<string>>& loopMap, map<string, BasicBlock*> &blockMap);

Flowgraph CFG(Function &F)
{
    Flowgraph graph;
    int countBlock = 0;
    for(auto &B: F) 
    {
        string blockName = "Block" + to_string(countBlock); // Naming each basic block
        B.setName(Twine(blockName));
        graph.blocks.insert(blockName);
        graph.blockMap[blockName] = &B;
        countBlock++;
    }
    for(auto &B: F)
    {
        // Fill the predecessors and edges of each basic block
        string blockName = B.getName().str();
        for (auto it = pred_begin(&B), et = pred_end(&B); it != et; ++it)
        {
            BasicBlock* predecessor = *it;
            string predName = predecessor->getName().str();
            graph.preds[blockName].insert(predName);
            graph.edges.insert(make_pair(predName, blockName));
        }            
    }
    return graph;
}

// Intersection
set<string> intersection(set<string> &A, set<string> &B)
{
    set<string> ret;
    set_intersection(A.begin(), A.end(), B.begin(), B.end(), inserter(ret, ret.begin()));
    return ret;
}

set<string> findallintersections(set<string> &preds, set<string> &blocks, map<string, set<string>> &dominatorTree)
{
    set<string> ret = blocks;
    for(auto pred:preds)
    {
        ret = intersection(ret, dominatorTree[pred]);
    }
    return ret;
}

// Relax BB
bool relaxAllBlocks(set<string> blocks, map<string, set<string>> preds, map<string, set<string>> &domTree, string entryNode)
{
    int unstablecount = blocks.size()-1;
    // Run for all nodes except the entryNode
    for(auto block: blocks)
    {
        if(block==entryNode)
            continue;
        set<string> bk = domTree[block];

        domTree[block] = findallintersections(preds[block], blocks, domTree);

        domTree[block].insert(block);

        if(bk == domTree[block])unstablecount--;
    }
    return unstablecount != 0;
}

// Compute Dominators
void ComputeDomTree(map<string, set<string>> &domTree, map<string, set<string>> preds, set<string> blocks, string entryBlock)
{
    if(blocks.size()==0)return;
    for(auto block:blocks)
    {
        domTree[block] = blocks;
    }
    domTree[entryBlock] = set<string>{entryBlock};
    while(relaxAllBlocks(blocks, preds, domTree, entryBlock));
}

vector<pair<string, string>> GetBackEdge(set<pair<string, string>> edges, map<string, set<string>> dominatorTree)
{
    vector<pair<string, string>> backwardedges;
    for(auto edge: edges) 
    {
        string n = edge.first; string s = edge.second;
        // Consider only backward edge in dominator graph
        if(dominatorTree[n].find(s) != dominatorTree[n].end())
            backwardedges.push_back(edge);
    }
    return backwardedges;
}

// DFS
void dfs(string node, set<string> &loop, map<string, set<string>> preds)
{
    loop.insert(node);
    for(auto pre : preds[node])
    {
        if(loop.find(pre) == loop.end())
            dfs(pre, loop, preds);
    }
}

// Check for the presence of loop and get the loop nodes
set<set<string>> FindLoop(vector<pair<string, string>> backwardedges, map<string, set<string>> preds, map<int, set<string>> &loopMap)
{
    set<set<string>> loops;
    for(auto edge:backwardedges)
    {
        set<string> loop;
        loop.insert(edge.second);
        dfs(edge.first, loop, preds);
        loopMap[loops.size()] = loop;
        loops.insert(loop);
    }
    return loops;
}

// Loop Information
pair<set<string>, int> GetLoop(map<int, set<string>> &loopMap, map<string, BasicBlock*> &blockMap) 
{
    // errs() << "\n********* Loop Information *********\n";
    set<string> LoopInstrSet;
    int iteration = 1;
    for(auto itr : loopMap) 
    {
        // errs() << "\nLoop" << " " << itr.first << "\n";
        // for(auto blockid: it.second)
        // { 
        //         errs() << blockid << " ";
        // }
        // int numofloops = itr.second.size();
        // errs() << "\nNumber of BB in loops: " << numofloops << "\n";
        // errs() << "\nCount of basic blocks involved in the loop: " << itr.second.size() << "\n";
        int countInst = 0; // Count the number of instructions involved in the loop
        for(auto blockid: itr.second)
        {   
            // for(auto &I: *blockMap[blockid])
            // {
            //     errs() << I << "\n";
            //     countInst++;
            // }
            // errs() << "\n";
            BasicBlock* block = blockMap[blockid];
            // errs() << "\nInstructions for " << blockid << "\n";
            for (auto &I : *block)
            {
                // Instructions involved in the loop
                // errs() << "\n" << "  " << I;
                countInst++;
                // Adding instructions to the LoopInstr Set
                string Instr;
                raw_string_ostream OS(Instr);
                I.print(OS);
                OS.flush();
                LoopInstrSet.insert(Instr);
            }
            for (Instruction &I : *block)
            {
                if (auto *cmpInst = dyn_cast<CmpInst>(&I))
                {
                    // int cmpvalue;
                    // Value *op1 = cmpInst->getOperand(0);
                    Value *op2 = cmpInst->getOperand(1);
                    // errs() << "Comparison instruction: " << *cmpInst << "\n";
                    // errs() << "Operand 1: " << *op1 << "\n";
                    // errs() << "Operand 2: " << *op2 << "\n\n";
                    if (ConstantInt *ConstOp2 = dyn_cast<ConstantInt>(op2))
                    {
                        int cmpvalue = ConstOp2->getSExtValue();
                        // errs() << "\nValue of cmp instruction: " << cvalue << "\n";
                        // cmpvalue = (cvalue - 1);
                        iteration = cmpvalue;
                        // errs() << "\nValue of cmp instruction: " << cvalue << "\n";
                        // errs() << "\nValue of cmp instruction: " << cmpvalue << "\n";
                    }
                }
            }
        }
        // errs() << "\n";
        // errs() << "\n";
        // errs() << "\nLoop information for the loop" << " " << itr.first << ":\n";
        // errs() << "\nValue of cmp instruction: " << iteration << "\n";
        // errs() << "\nTotal instructions involved in the loop: " << countInst << "\n";
    }
    // errs() <<"\n\tLoop Instructions" << "\n";
    // for (auto itr = LoopInstrSet.begin(); itr != LoopInstrSet.end(); ++itr)
    //     errs() << "\n" << *itr << "\n";
    // errs() << "\n";
    return make_pair(LoopInstrSet, iteration);
}

// Get the LocalScope of an Instruction
DILocalScope *Scope(Instruction *Inst)
{
    // Check if the instruction has debug metadata
    if (MDNode *MetadataNode = Inst->getMetadata(LLVMContext::MD_dbg))
    {
        // Check if the metadata is a DILocation
        if (auto *DILoc = dyn_cast<DILocation>(MetadataNode))
        {
            // Return the scope of the DILocation
            // errs() << "\nInstruction with Scope: " << DILoc->getScope() << "\n";
            return DILoc->getScope();
        }
    }
    // Return nullptr if no debug metadata or DILocation found
    return nullptr;
}

// Get the line number of the Instruction 'CurrInstruction' in the source code
int LineNumber(Instruction *CurrInstruction)
{
    if (MDNode *MetadataNode = CurrInstruction->getMetadata(LLVMContext::MD_dbg))
    {  
        // Check if metadata exists
        if (auto *DebugLoc = dyn_cast<DILocation>(MetadataNode))
        {
            // Check if metadata is DILocation
            // Return the line number from DILocation metadata
            // errs() << "LineNumber: " << DebugLoc->getLine() << "\n";
            return DebugLoc->getLine();
        }
    }
    return -1;  // Return -1 if metadata or line number is not found
}

// Get the maximum line number of the Instruction
int MaximumLineNumber(DILocalScope *ScopeInfo, Function *F)
{
    // errs() << "Scope Info" << *ScopeInfo << "\n";
    int maxlinenum = -1; // Initialize maxlinenum to track the maximum line number
    for (auto &BB : *F)
    {
        for (auto &I : BB)
        {
            if (ScopeInfo == Scope(&I))
            {
                // Update maxlinenum to the maximum of maxlinenum and the line number of the instruction
                maxlinenum = max(maxlinenum, LineNumber(&I));
            }
        }
    }
    return maxlinenum; // Return the maximum line number found
}

// Check UserInstr is present in the LoopInstrSet or not
bool IsInstructionInLoop(set<string> LoopInstrSet, string UserInst)
{
    return LoopInstrSet.find(UserInst) != LoopInstrSet.end();
}

// Driver Function
void visitor(Function &F, FunctionAnalysisManager &FAM)
{
    Module *M = F.getParent();
    // errs() << "\nFunction Name: " << F.getName() << "\n";
    errs() << "Clang version: " << LLVM_VERSION_STRING << "\n";
    // errs() << "LLVM Source Repository: " << "git@github.com:llvm/llvm-project.git" << "\n";
    NamedMDNode *NamedMetadata = M->getNamedMetadata("llvm.ident");
    if (!NamedMetadata || NamedMetadata->getNumOperands() == 0)
    {
        errs() << "Git details not found in the module\n";   
    }
    // Extract repository URL and commit hash from llvm.ident metadata
    MDNode *IdentNode = NamedMetadata->getOperand(0);
    if (!IdentNode || IdentNode->getNumOperands() < 1)
        errs() << "Error extracting Git details from llvm.ident\n";
    MDString *GitDetails = dyn_cast<MDString>(IdentNode->getOperand(0));
    if (!GitDetails)
    {
        errs() << "Error extracting Git details from llvm.ident\n";
    }
    std::string GitDetailsStr = GitDetails->getString().str();
    // Extract repository URL and commit hash using regex
    std::regex GitRegex(R"((https?:\/\/[^\s]+)\s+([0-9a-fA-F]+))");
    std::smatch Match;
    if (std::regex_search(GitDetailsStr, Match, GitRegex) && Match.size() == 3)
    {
        std::string RepositoryURL = Match[1].str();
        std::string CommitHash = Match[2].str();
        outs() << "\nLLVM Source Repository: " << RepositoryURL << "\n";
        outs() << "\nLLVM Commit Hash: " << CommitHash << "\n";
    } 
    else
        errs() << "Error extracting Git details from llvm.ident\n";
    StringRef target = M->getTargetTriple();
    errs() << "\nTarget: " << target << "\n";
    for (Function &F : *M)
    {
        Flowgraph graph = CFG(F);
        // errs() << "\nFunction Name: " << F.getName() << "\n";
        map<string, set<string>> domTree;
        set<string> LoopInstrSet;
        int cmpvalue = 1;
        if(graph.blocks.size() > 0)
        {
            // errs() << "\nTotal number of basic blocks in the function: " << graph.blocks.size() << "\n";
            auto entryBlock = graph.blocks.begin();
            ComputeDomTree(domTree, graph.preds, graph.blocks, *entryBlock);
        }
        // Step 2: Find backward edges
        vector<pair<string, string>> backwardedges = GetBackEdge(graph.edges, domTree);
        // Step 3: Construct loops
        map<int, set<string>> loopMap;
        set<set<string>> loops = FindLoop(backwardedges, graph.preds, loopMap);
        int loopcount = 0;
        loopcount = backwardedges.size();
        if (loopcount)
        {
            // errs() << "\nTotal number of loops: " << loopcount << "\n";
            auto LoopDetails = GetLoop(loopMap, graph.blockMap);
            LoopInstrSet = LoopDetails.first;
            cmpvalue = LoopDetails.second;
        }
        for (auto &BB : F)
        {
            for (auto &Inst : BB)
            {   
                // int loopitr = IterationCount(Inst);
                // Check if the instruction is a Debug Declare Instruction (DbgDeclareInst)
                if (DbgDeclareInst *DebugInst = dyn_cast<DbgDeclareInst>(&Inst))
                {
                    // Check if the variable name matches the desired variable
                    if (DebugInst->getVariable()->getName() == VariableName)
                    {
                        // Instruction Map
                        set<string> UserInstrSet;
                        errs() << "\nVariable Name: " << DebugInst->getVariable()->getName() << "\n";
                        // Get the minimum scope of the variable based on line number
                        int minscope = DebugInst->getVariable()->getLine();
                        // errs() << "\nLine number: " << minscope << "\n";
                        if(Instruction *UsrInst = dyn_cast<Instruction>(DebugInst->getAddress()))
                        {
                            std::set<int> FTPSet;
                            int readcount = 0;
                            int writecount = 0;
                            int readloopcount = 0;
                            int writeloopcount = 0;
                            for (Use &U : UsrInst->uses())
                            {
                                Instruction *UserInst = cast<Instruction>(U.getUser());
                                // errs() << "\nUser instruction : " << *UserInst << "\n";
                                // Add User Instructions to the UserInstrSet
                                string Instr;
                                raw_string_ostream OS(Instr);
                                UserInst->print(OS);
                                OS.flush();
                                UserInstrSet.insert(Instr);
                                if (UserInst->getOpcode() == Instruction::Load)
                                {
                                    // errs() << "\nLoad instruction : " << *UserInst << "\n";
                                    if(IsInstructionInLoop(LoopInstrSet, Instr))
                                    {
                                        readloopcount++;
                                        // errs() << "\nIfReadLoopCount : " << readloopcount << "\n";
                                    }
                                    else
                                    {
                                        readcount++;
                                        // errs() << "\nElseReadCount : " << readcount << "\n";
                                    }
                                }
                                if (UserInst->getOpcode() == Instruction::Store)
                                {
                                    // errs() << "\nLoad instruction : " << *UserInst << "\n";

                                    if(IsInstructionInLoop(LoopInstrSet, Instr))
                                    {
                                        writeloopcount++;
                                        // errs() << "\nIfWriteLoopCount : " << writeloopcount << "\n";
                                    }
                                    else
                                    {
                                        writecount++;
                                        // errs() << "\nElseWriteCount : " << writecount << "\n";
                                    }
                                }
                                if (MDNode *MD = UserInst->getMetadata(LLVMContext::MD_dbg))
                                {
                                    if (auto *DILoc = dyn_cast<DILocation>(MD))
                                    {
                                        // errs() << "Line Number: " << DILoc->getLine() << "\n";
                                        FTPSet.insert(DILoc->getLine());
                                    }
                                }
                                // if (readloopcount > 0)
                                //     errs() << "\nNumber of reads: " << readcount + (cmpvalue * readloopcount) << "\n";
                                // else
                                //     errs() << "\nNumber of reads: " << readcount << "\n";
                                // if  (writeloopcount > 0)
                                //     errs() << "\nNumber of write: " << writecount + (cmpvalue * writeloopcount) << "\n";
                                // else
                                //     errs() << "\nNumber of write: " << writecount << "\n";
                            }
                            errs() << "\nFootprint: ";
                            for(auto itr = FTPSet.begin(); itr != FTPSet.end(); itr++)
                            {
                                errs() << *itr << " ";
                            }
                            errs()<<"\n";
                            // Print the UserInstr Map
                            // errs() << "\nInstructions in the UserInstructionMap" << "\n\n";
                            // for (auto itr = UserInstrSet.begin(); itr != UserInstrSet.end(); ++itr)
                            //     errs() << *itr << "\n";
                            if (readloopcount > 0)
                                errs() << "\nNumber of Reads: " << readcount + (cmpvalue * readloopcount) << "\n";
                            else
                                errs() << "\nNumber of Reads: " << readcount << "\n";
                            if  (writeloopcount > 0)
                                errs() << "\nNumber of Writes: " << writecount + (cmpvalue * writeloopcount) << "\n";
                            else
                                errs() << "\nNumber of Writes: " << writecount << "\n";
                        }
                        if(Instruction *UsrInst = dyn_cast<Instruction>(DebugInst->getAddress()))
                        {
                            std::set<int> FTPScopeSet; // Set of max scope for each instruction
                            int maxscope = -1;
                            for (Use &U : UsrInst->uses())
                            {
                                Instruction *UserInst = cast<Instruction>(U.getUser());
                                // errs() << "\nUser instruction : " << *UserInst << "\n";
                                if (MDNode *MD = UserInst->getMetadata(LLVMContext::MD_dbg))
                                {
                                    // auto scope;
                                    if (auto *DILoc = dyn_cast<DILocation>(MD))
                                    {
                                        // scope = DILoc->getScope();
                                        // errs() << "Scope: " << scope << "\n";
                                        // errs() << "\nScope: " << DILoc->getScope() << "\n";
                                        // Get the maxm line number for the scope
                                        maxscope = MaximumLineNumber(DILoc->getScope(), &F);
                                        // errs() << "\nMaxm Line Number for the instruction: " << maxscope << "\n";
                                        FTPScopeSet.insert(maxscope);
                                        // for(auto itr = FTPScopeSet.begin(); itr != FTPScopeSet.end(); itr++)
                                        // {
                                        //     errs() << *itr << " ";
                                        // }
                                    }    
                                }
                            }
                            int maxelement = *FTPScopeSet.rbegin(); // Maximum Scope
                            // Print the scope of the variable
                            errs() << "\nVariable Scope: " << minscope << "  " << maxelement << "\n";
                            // MaxScope(DebugInst, &F);
                            // errs() << "\nMaxm Scope: " << maxelement << "\n";
                        }
                    }
                }  
            }
        }
    }
}

struct Footprint : PassInfoMixin<Footprint>
{
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM)
    {
        visitor(F, FAM);
        return PreservedAnalyses::all();
    }
    static bool isRequired() { return true; }
};
}

// Footprint Pass Registeration

llvm::PassPluginLibraryInfo getFootprintPluginInfo()
{
    return { LLVM_PLUGIN_API_VERSION, "Footprint", LLVM_VERSION_STRING, [](PassBuilder &PB)
            {
                PB.registerPipelineParsingCallback([](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>)
                {
                    if (Name == "ftprint")
                    {
                        FPM.addPass(Footprint());
                        return true;
                    }
                    return false;
                });
            }
        };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo()
{
    return getFootprintPluginInfo();
}