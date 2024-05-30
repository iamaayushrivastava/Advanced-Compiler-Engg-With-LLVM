## Arithmetic Intensity LLVM Pass

### Overview

The `arithmetic-intensity` pass provided here facilitates the calculation of arithmetic intensity. Arithmetic intensity, expressed as the FLOP per Byte ratio (F/B), quantifies the ratio of floating-point operations to the total number of bytes of memory accessed by the processor cores.

### Functionality

This LLVM pass operates by analyzing each function by determining the total number of arithmetic operations (A) and memory access operations (B) and performing the computation of A/B for each function to compute arithmetic intensity.

In cases where functions contain loops (e.g., while, for, do-while), the pass also identifies the presence and characteristics of these loops. This identification process follows a structured approach outlined below.

### Loop Identification Process

#### Step 1: Construct Flowgraph and Compute Dominance Relation

The first step involves constructing a flowgraph representation of the function and computing the dominance relation within this graph.

#### Step 2: Find Backward Edges

The `find_backedges()` function is employed to identify backward edges within the dominance tree. These edges signify paths that loop back to previous nodes in the control flow.

#### Step 3: Construct Loops

By utilizing the backward edges and their corresponding predecessors, the pass constructs loops within the function. This process involves traversing the flowgraph in reverse order and performing a depth-first search on vertices connected by backward edges.

### Calculation of Arithmetic Intensity

Once loops are identified, the pass computes the total number of arithmetic and memory operations involved within these loops. This count is then added with the arithmetic and memory operations not utilized by loops. The resulting sum is used to compute the arithmetic intensity for the function.

### Conclusion

The `arithmetic-intensity` LLVM pass serves as a valuable tool for analyzing the arithmetic intensity of functions within LLVM codebases. By accurately identifying loops and computing arithmetic intensity metrics, this pass aids in optimizing code performance and resource utilization.

All the materials that have been read/used for this assignment.

1. https://llvm.org/docs/LangRef.html

2. https://llvm.org/doxygen/

3. Book: Advance Compiler Design and Implementation by Steven S. Muchnick

4. Stack Overflow: https://stackoverflow.com/questions/26281823/llvm-how-to-get-the-label-of-basic-blocks

5. Stack Overflow:https://stackoverflow.com/questions/71066473/in-llvm-how-do-i-get-the-loop-and-its-instructions

6. CS6393: Advanced Compiler Engineering Slides

7. https://user.it.uu.se/~kostis/Teaching/KT2-06/Slides/lecture07-LoopOptimizations.pdf
