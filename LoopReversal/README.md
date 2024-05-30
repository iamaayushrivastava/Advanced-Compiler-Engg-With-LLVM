# Loop Reversal Pass in LLVM (Version 17.0.6)

## Overview

This project implements a transformation pass in LLVM (version 17.0.6) to reverse a loop in LLVM-IR without changing its semantics. The pass changes the usage of the induction variable accordingly to preserve correctness. For example, a loop iterating from `x` to `y` will be transformed to iterate from `y` to `x`.

## Implementation Details

The implementation involves the following steps:

1. **Identify Loops:** The pass identifies loops in the LLVM-IR using loop analysis utilities provided by LLVM.

2. **Loop Reversal:** For each identified loop, the pass reverses the loop in the following manner using the ```LoopInfo``` Class Reference.
   - Reversing the direction of the loop by changing the loop comparison condition (`<` becomes `>=` and `>` becomes `<=`).
   - Updating the induction variable initialization, increment/decrement, multiply, divide and usage accordingly to reflect the new loop direction.

3. **Preserve Semantics:** Special attention is given to preserving loop semantics during transformation. This includes handling boundary conditions and adjusting loop-invariant calculations.

## Usage

To use the Loop Reversal Pass:

1. Build LLVMv17.0 with the necessary dependencies.
2. Build the Loop Reversal Pass using the LLVM build system.
3. Convert the LLVM IR into SSA form using the prexisiting ```memreg``` and ```loop-rotate``` pass.
4. Apply the pass using `opt` on the Transformed LLVM-IR code.

### Generate IR in SSA form using the following script

```bash
   opt -S -passes=mem2reg,loop-rotate <input.ll> -o <output.ll>
```
### Run the pass using the following script.

```bash
   opt -load-pass-plugin=$LLVM_BUILD/lib/LoopReversal.so -passes=loop-reversal <output.ll>
```

## Materials Used

1. LLVM Documentation: The official LLVM documentation was extensively referred to for understanding LLVM's APIs, Pass Manager, Loop Analysis, and Transformation techniques.

   [LLVM Loop Terminology](https://llvm.org/docs/LoopTerminology.html)

   [LLVM LoopAnalysis Class](https://llvm.org/doxygen/classllvm_1_1LoopAnalysis.html)

   [LLVM Programmer's Manual](https://llvm.org/docs/ProgrammersManual.html)

2. LLVM Source Files: Source files from the LLVM codebase were studied to understand the implementation details of existing passes and utilities related to loop transformations.

   [LoopInfo.h](https://llvm.org/doxygen/LoopInfo_8h_source.html)

3. YouTube Videos

   [Writing Loop Optimizations in LLVM](https://www.youtube.com/watch?v=3pRhvQi7Z10)

   [LLVM Loops](https://www.youtube.com/watch?v=b7Q2PGR5a1o)