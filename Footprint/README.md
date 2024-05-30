# Finding the Footprint of a Variable

## Question 1
**Write an algorithm to obtain scope information of a global/local variable in a function.**

You can navigate through the program's CFG and maintain track of variable declarations and their scopes to get the scope information for a variable in a function.

### Algorithm

1. **Iterate through Instructions**
   - Start by iterating through each instruction in the function.

2. **Check for Alloca Instructions**
   - For each instruction, check if it's an alloca instruction (the instruction that allocates space on the stack for a new variable).

3. **Get Debug Info**
   - If the instruction is an alloca, retrieve its debug info, which contains the scope information.

4. **Extract Scope Information**
   - Extract the scope information from the debug info. The scope information is stored as a class object of type `DILocation`.

5. **Find Max Line Number**
   - Within the scope, iterate through each instruction again.
   - For each instruction, compare its line number with the current maximum line number found within the scope.
   - Update the maximum line number whenever a higher line number is encountered.

6. **Final Scope Information**
   - The maximum line number found within the scope represents the scope information for the alloca instruction of the variable.

### Pseudocode

```pseudocode
function findScopeInformation(function):
    maxLineNumber = 0
    for each instruction in function:
        if instruction is alloca:
            debugInfo = getDebugInfo(instruction)
            scope = debugInfo.scope
            currentMax = findMaxLineNumberInScope(scope)
            maxLineNumber = max(maxLineNumber, currentMax)
    return maxLineNumber

function findMaxLineNumberInScope(scope):
    maxLineNumber = 0
    for each instruction in scope:
        lineNumber = instruction.lineNumber
        maxLineNumber = max(maxLineNumber, lineNumber)
    return maxLineNumber
```

## Generic Pseudocode

```
Procedure GetScopeInformation(function):
    For each statement in function:
        If the statement is a variable declaration:
            Add variable name and scope (global/local) to the scope information

    Return scope information
```

## Question 2
**Give an algorithm to count read/write accesses of a variable in a function with nested loops (SSA or non-SSA).**

You can traverse the CFG and examine each statement inside loops to find read and write operations on the variable in order to count the read and write accesses of the variable in a function with nested loops.

### Algorithm

```
Procedure CountVariableAccesses(function, variable):
    Initialize readcount and writecount to 0
    
    For each statement in function:
        If the statement reads variable:
            Increment readcount
        If the statement writes variable:
            Increment writeCount
            
    Return readcount, writecount
```

## Question 3
**Assume Loop Info pass is not available. Now, how can you implement a Footprint pass?**

It can be implemented by analysing the program's control flow graph and looking for backedges and dominators, you can indeed identify loops in a program. Also, loops can be identified based on structures that resemble loops, such as conditional jumps or branches.

To performs loop analysis, perform the following steps.

## Overview

1. **Constructing the Control Flow Graph (CFG)**
   - Assign unique names to each basic block in the function and add them to the CFG.
   - Determine predecessors and outgoing edges of each basic block and store in the CFG.

2. **Computing Dominance Relation**
   - Using the CFG, compute the dominance relation to identify which basic blocks dominate others.

3. **Finding Backedges**
   - Identify backedges, which connect a node to one of its ancestors in the dominator tree. These edges suggest loop structures.

4. **Constructing Loops**
   - For each backedge, construct a natural loop by traversing predecessors starting from the backedge until reaching a loop header.
   - Include all nodes within this loop until no more predecessors are found.

5. **Calculating Loop Information**
   - Analyze instructions within each loop, counting the total number of basic blocks and instructions.
   - Identify and count instruction types like binary operations, memory access (load/store) operations, and comparison operations.
   - Compute the number of iterations from comparison instructions within the loop.
   - Calculate total arithmetic and memory access operations within the loop by multiplying the operations with the number of iterations.

6. **Calculate Arithmetic Intensity**
   - Compute the total number of arithmetic operations (A) and the total number of memory access operations (B).
   - Once you have the counts of arithmetic operations and memory access operations, compute A/B for each function.

## Question 4
**In general, what is the use of scope information, read and write count in compiler optimizations? Which optimizations can benefit from this information?**

Read and write counts, as well as scope information, offer insightful data about how variables behave within a program. This information can be used by the compiler to optimize code for memory efficiency and performance. The following are some optimizations that can be gained from this information.

- **Dead code elimination:** Eliminating dead code can help reduce code size and speed up execution by identifying and removing unused variables or code blocks based on scope information.

- **Loop optimization:** To increase efficiency, loop unrolling, loop fusion, or loop parallelization can be optimized given knowledge of the read and write counts of the variables inside the loops.

- **Register allocation:** By minimizing memory accesses and increasing execution performance, register allocation decisions can be made with the help of an understanding of the variables' scope and read/write patterns.

- **Memory access optimization:** Compilers can improve memory access patterns to lower cache misses and enhance data locality, which will boost speed, by examining read and write counts.

- **Code motion:** To cut costs and boost speed, variables with a limited scope or fewer read/write accesses may be candidates for code motion. This involves removing the variables from costly operations like loops.

In general, more effective and optimized code production can result from compiler optimizations that make use of scope information and access counts.