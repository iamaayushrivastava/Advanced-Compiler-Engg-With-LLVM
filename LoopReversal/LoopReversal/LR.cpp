#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/GenericLoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Scalar/LoopRotation.h"
#include "llvm/Transforms/Utils/Mem2Reg.h"
#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <map>
#include <queue>
#include <set>
#include <stack>
#include <string>
#include <vector>

using namespace llvm;
using namespace std;

namespace {

bool LoopReverse(Loop *L, Function &F, FunctionAnalysisManager &FAM)
{
    ScalarEvolution &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);
    LLVMContext &Context = F.getContext();        

    // Loop Header
    // errs() << "Loop Header" << "\n";
    // L->getHeader()->dump();

    optional<Loop::LoopBounds>LB = L->getBounds(SE);

    // O/P: Step Instruction
    //    i32 1

    // Induction Variable
    PHINode *Phi = L->getInductionVariable(SE);
    // dbgs() << "\nInduction Variable Instruction: " << *L->getInductionVariable(SE) << "\n";

    // Initial Value of the Induction Variable
    Value &InitialValue = LB->getInitialIVValue();
    // dbgs() << "\nInitial Value of Induction Variable: " << LB->getInitialIVValue() << "\n";

    // Final Value of the Induction Variable
    Value &FinalValue = LB->getFinalIVValue();
    // dbgs() << "\nFinal Value of Induction Variable: " << LB->getFinalIVValue() << "\n";

    // Latch Compare Instr
    ICmpInst *CompareInst = L->getLatchCmpInst();
    dbgs() << "\nInitial Compare Instr: " << *L->getLatchCmpInst() << "\n";

    // Inverse Cmp Instr (< to >=)
    CompareInst->setPredicate(CompareInst->getInversePredicate());
    dbgs() << "\nCompare Instr after reversing the comparison operator: " << *L->getLatchCmpInst() << "\n";

    // Set the initial value i.e., the first operand of Cmp Instr
    CompareInst->setOperand(1, &InitialValue);
    dbgs() << "\nFinal Cmp Instr: " << *L->getLatchCmpInst() << "\n";

    // Step Instruction, that updates the Induction Variable
    errs() << "Step Instruction Info" << "\n";
    Instruction &SI = LB->getStepInst();
    // errs() << "\nInitial Step Instruction" << SI << "\n"; // %inc15 = add nsw i32 %i.13, 1

    // if (Instruction *SI = LB->getStepInst())
    // {
    //     errs() << *SI << "\n"; // Assuming *SI is a valid instruction
    // }
    // else 
    //     errs() << " Step instruction not found!\n";

    // errs() << *SI.getOperand(1) << "\n";

    Constant *variable = dyn_cast<Constant>(SI.getOperand(1));
    errs() << "\nConstant Value: " << *variable << "\n";

    // errs() << "Step Instruction Operand 0" << "\n";
    // errs() << *SI.getOperand(0) << "\n";
    // errs() << "\nStep Instruction Operand 1" << "\n";
    // errs() << *SI.getOperand(1) << "\n";

    // Update the step instruction value
    if (SI.isBinaryOp())
    {
        errs() << "\nStep Instruction is a binary operation.\n";
        // Get the opcode of the instruction
        unsigned OpCode = SI.getOpcode();

        // Print the opcode name
        errs() << "\nOpCode: " << Instruction::getOpcodeName(OpCode) << "\n";
        
        // Create an IRBuilder for the Phi node
        // IRBuilder<> Builder(Phi);

        if(OpCode == Instruction::Add)
        {
            errs() << "Step Instruction is ADD.\n";
            // Create a subtract instruction
            // Replace i++ with i--
            Value *V = ConstantInt::get(Type::getInt32Ty(Context), -variable->getUniqueInteger().getSExtValue());
            // It will change the step instruction
            SI.setOperand(1, V);
            errs() << "\n Final Step Instruction" << SI << "\n"; // %inc15 = add nsw i32 %i.13, 1
            // Value *V = Builder.CreateNSWSub(&FinalValue, SI.getOperand(1));
            // Phi->setIncomingValue(0, V);
        }
        else if (OpCode == Instruction::Sub)
        {
            errs() << "Step Instruction is SUB.\n";
            // Create an add instruction
            // Replace i-- with i++
            Value *V = ConstantInt::get(Type::getInt32Ty(Context), -variable->getUniqueInteger().getSExtValue());
            // It will change the step instruction
            SI.setOperand(1, V);
            errs() << "\n Final Step Instruction" << SI << "\n"; // %inc15 = add nsw i32 %i.13, 1
            // Value *V = Builder.CreateNSWAdd(&FinalValue, SI.getOperand(1));
            // Phi->setIncomingValue(0, V);
        }
        else if (OpCode == Instruction::Mul)
        {
            errs() << "Step Instruction is MUL.\n";
            // Create a divide instruction
            Value *V = ConstantInt::get(Type::getInt32Ty(Context), (1/((variable)->getUniqueInteger().getSExtValue())));
            // It will change the step instruction
            SI.setOperand(1, V);
            errs() << "\n Final Step Instruction" << SI << "\n"; // %inc15 = add nsw i32 %i.13, 1
            // Value *V = Builder.CreateUDiv(&FinalValue, SI.getOperand(1));
            // Phi->setIncomingValue(0, V);
        }
        else if (OpCode == Instruction::UDiv)
        {
            errs() << "Step Instruction is UDIV.\n";
            // Create a multiply instruction
            // Value *V = Builder.CreateNSWMul(&FinalValue, SI.getOperand(1));
            // Phi->setIncomingValue(0, V);
            Value *V = ConstantInt::get(Type::getInt32Ty(Context), (1*((variable)->getUniqueInteger().getSExtValue())));
            // It will change the step instruction
            SI.setOperand(1, V);
            errs() << "\n Final Step Instruction" << SI << "\n"; // %inc15 = add nsw i32 %i.13, 1
        }
        else
        {
            errs() << "Unsupported operation.\n";
        }
    }
    else
        errs() << "\nStep Instruction is not a binary operation.\n";

    // Update the Induction variable value with the final value
    IRBuilder<> Builder(Phi);
    Value *finalvalue = ConstantInt::get(Type::getInt32Ty(Context), 1);
    Value *NewIVar = Builder.CreateNSWSub(&FinalValue, finalvalue);
    Phi->setIncomingValue(0, NewIVar); // Changing the initial value
    
    Instruction *I = dyn_cast<Instruction>(Phi);
    Instruction *ReplaceInst = I->getNextNonDebugInstruction();

    // Replacing the Induction Variable with the new value
    IRBuilder<> NewBuilder(ReplaceInst);
    Value *FinalInstr = dyn_cast<Value>(I);
    Value *Instr = NewBuilder.CreateNSWSub(&FinalValue, FinalInstr);

    I->replaceUsesWithIf(Instr, llvm::function_ref<bool(Use &U)>([L, LB, Instr](Use &U)
    {
            Instruction *I = dyn_cast<Instruction>(U.getUser());
            // errs() << "Current User: "<< *I;

            if(I->getParent() != L->getLoopLatch() && I != Instr)
                return true ;
            else
                return false;
    }));
    return true;
}

void countBB(Loop *L, Function &F, FunctionAnalysisManager &FAM)
{
    if(L) // Remember the base case
    {
        int noBB = 0;
        for (auto *bb : L->getBlocks())
            noBB++;
        // dbgs() << "No. of basic blocks: " << noBB << "\n";

        LoopReverse(L, F, FAM);

        for (auto *NL : *L)
            // countBB(NL);
            countBB(NL, F, FAM);
    }
}

void loopBBCnt1(Function &F,FunctionAnalysisManager &FAM)
{
    LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);
    // ScalarEvolution &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);

    // dbgs() << "Function name: " << F.getName() << "\n";

    // int loopNo = 0;

    for (Loop *L : LI)
    {
        countBB(L, F, FAM);
        // Loop Header
        // dbgs() << "\nLoop Header: " << *L->getHeader();
        // dbgs() << "\nLoop Depth : " << L->getLoopDepth() << "\n";
        // loopNo++;
        // int noBB = 0;
        // for (auto BB: L->getBlocks())
        //     noBB++;
        // dbgs() << "\nLoop number: " << loopNo << "\n";
        // dbgs() << "No. of basic blocks: " << noBB << "\n";

        // for (auto *NL : *L)
        // {
        //     // Iterate over sub loops
        //     loopNo++;
        //     noBB = 0;
        //     for (auto *bb : NL->getBlocks())
        //         noBB++;
        //     dbgs() << "\nLoop number: " << loopNo << "\n";
        //     dbgs() << "No. of basic blocks: " << noBB << "\n";
        // }
    }
}

struct LoopReversal : PassInfoMixin<LoopReversal>
{
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM)
    {
        loopBBCnt1(F, FAM);
        return PreservedAnalyses::all();
    }
    static bool isRequired() { return true; }
};
}

llvm::PassPluginLibraryInfo getLoopReversalPluginInfo()
{
    return
    { LLVM_PLUGIN_API_VERSION, "LoopReversal", LLVM_VERSION_STRING, [](PassBuilder &PB)
        {
            PB.registerPipelineParsingCallback([](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>)
            {
                if (Name == "loop-reversal")
                {
                    FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass(true,true)));
                    FPM.addPass(LoopReversal());
                    return true;
                }
                return false;
            });
        }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo()
{
    return getLoopReversalPluginInfo();
}