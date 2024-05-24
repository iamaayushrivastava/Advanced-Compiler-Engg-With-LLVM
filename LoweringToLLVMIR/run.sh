# Note: To run this run.sh file, paste the below command.

# ./run.sh <path_to_your_build_directory>

LLVM_BUILD_DIR=$1
if [[ -z "$1" ]]; then
    echo "Please provide LLVM_BUILD_DIR as 1st argument"
    echo "Exiting"
    exit 0
fi
OPT=$LLVM_BUILD_DIR/bin/opt
CLANG=$LLVM_BUILD_DIR/bin/clang
OUT_DIR=./1/LLVMIR
INP_DIR=./1/Code

FP_INP_DIR=./2
FP_OUT_DIR=./2

TER_OP_IN_DIR=./3
TER_OP_OUT_DIR=./3

# To generate .ll files
$CLANG -S -emit-llvm $INP_DIR/array.c -o $OUT_DIR/array.ll
$CLANG -S -emit-llvm $INP_DIR/class.cpp -o $OUT_DIR/class.ll
$CLANG -S -emit-llvm $INP_DIR/struct.c -o $OUT_DIR/struct.ll
$CLANG -S -emit-llvm $INP_DIR/union.c -o $OUT_DIR/union.ll
$CLANG -S -emit-llvm $INP_DIR/vector.cpp -o $OUT_DIR/vector.ll

# Representation of floating point in LLVM IR
$CLANG -S -emit-llvm $FP_INP_DIR/floatingpoint.c -o $FP_OUT_DIR/floatingpoint.ll

# Representation of ternary operator in LLVM IR
$CLANG -S -emit-llvm $TER_OP_IN_DIR/ternaryoperator.c -o $TER_OP_OUT_DIR/ternaryoperator.ll