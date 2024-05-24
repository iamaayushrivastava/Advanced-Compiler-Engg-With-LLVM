LLVM_BUILD_DIR=$1
if [[ -z "$1" ]]; then
    echo "Please provide LLVM_BUILD_DIR as 1st argument"
    echo "Exiting"
    exit 0
fi
OPT=$LLVM_BUILD_DIR/bin/opt
CLANG=$LLVM_BUILD_DIR/bin/clang
INP_OPT_DIR=./1/Code
OUT_OPT_DIR=./1/LLVMIR
OUT_OPTO0_DIR=./1/Opt0
OUT_OPTO1_DIR=./1/Opt1
OUT_OPTO2_DIR=./1/Opt2
OUT_OPTO3_DIR=./1/Opt3
OUT_OPTOs_DIR=./1/Opts
OUT_OPTOz_DIR=./1/Optz

OUT_DIR=./LLVMIR
INP_DIR=./Code
OUT_AS_DIR=./AsCode
TR_DCE_DIR=./2/Transformation/dce
TR_MEM_DIR=./2/Transformation/mem2reg
OUT_DCE_MEM_DIR=./dce-mem2reg-LLVMIR

# To generate .ll files
$CLANG $INP_OPT_DIR/file1.c -S -emit-llvm -o $OUT_OPT_DIR/file1.ll -Xclang -disable-O0-optnone
$CLANG $INP_OPT_DIR/file2.cpp -S -emit-llvm -o $OUT_OPT_DIR/file2.ll -Xclang -disable-O0-optnone
$CLANG $INP_OPT_DIR/file3.cpp -S -emit-llvm -o $OUT_OPT_DIR/file3.ll -Xclang -disable-O0-optnone
$CLANG $INP_OPT_DIR/file4.c -S -emit-llvm -o $OUT_OPT_DIR/file4.ll -Xclang -disable-O0-optnone 
$CLANG $INP_OPT_DIR/file5.c -S -emit-llvm -o $OUT_OPT_DIR/file5.ll -Xclang -disable-O0-optnone

# Applying various optimization levels of LLVM

# Optimization Level O0
$CLANG -O0 $INP_OPT_DIR/file1.c -S -emit-llvm -o $OUT_OPTO0_DIR/file1.ll
$CLANG -O0 $INP_OPT_DIR/file2.cpp -S -emit-llvm -o $OUT_OPTO0_DIR/file2.ll
$CLANG -O0 $INP_OPT_DIR/file3.cpp -S -emit-llvm -o $OUT_OPTO0_DIR/file3.ll
$CLANG -O0 $INP_OPT_DIR/file4.c -S -emit-llvm -o $OUT_OPTO0_DIR/file4.ll
$CLANG -O0 $INP_OPT_DIR/file5.c -S -emit-llvm -o $OUT_OPTO0_DIR/file5.ll

# Optimization Level O1
$CLANG -O1 $INP_OPT_DIR/file1.c -S -emit-llvm -o $OUT_OPTO1_DIR/file1.ll
$CLANG -O1 $INP_OPT_DIR/file2.cpp -S -emit-llvm -o $OUT_OPTO1_DIR/file2.ll
$CLANG -O1 $INP_OPT_DIR/file3.cpp -S -emit-llvm -o $OUT_OPTO1_DIR/file3.ll
$CLANG -O1 $INP_OPT_DIR/file4.c -S -emit-llvm -o $OUT_OPTO1_DIR/file4.ll
$CLANG -O1 $INP_OPT_DIR/file5.c -S -emit-llvm -o $OUT_OPTO1_DIR/file5.ll

# Optimization Level O2
$CLANG -O2 $INP_OPT_DIR/file1.c -S -emit-llvm -o $OUT_OPTO2_DIR/file1.ll
$CLANG -O2 $INP_OPT_DIR/file2.cpp -S -emit-llvm -o $OUT_OPTO2_DIR/file2.ll
$CLANG -O2 $INP_OPT_DIR/file3.cpp -S -emit-llvm -o $OUT_OPTO2_DIR/file3.ll
$CLANG -O2 $INP_OPT_DIR/file4.c -S -emit-llvm -o $OUT_OPTO2_DIR/file4.ll
$CLANG -O2 $INP_OPT_DIR/file5.c -S -emit-llvm -o $OUT_OPTO2_DIR/file5.ll

# Optimization Level O3
$CLANG -O3 $INP_OPT_DIR/file1.c -S -emit-llvm -o $OUT_OPTO3_DIR/file1.ll
$CLANG -O3 $INP_OPT_DIR/file2.cpp -S -emit-llvm -o $OUT_OPTO3_DIR/file2.ll
$CLANG -O3 $INP_OPT_DIR/file3.cpp -S -emit-llvm -o $OUT_OPTO3_DIR/file3.ll
$CLANG -O3 $INP_OPT_DIR/file4.c -S -emit-llvm -o $OUT_OPTO3_DIR/file4.ll
$CLANG -O3 $INP_OPT_DIR/file5.c -S -emit-llvm -o $OUT_OPTO3_DIR/file5.ll

# Optimization Level Os
$CLANG -Os $INP_OPT_DIR/file1.c -S -emit-llvm -o $OUT_OPTOs_DIR/file1.ll
$CLANG -Os $INP_OPT_DIR/file2.cpp -S -emit-llvm -o $OUT_OPTOs_DIR/file2.ll
$CLANG -Os $INP_OPT_DIR/file3.cpp -S -emit-llvm -o $OUT_OPTOs_DIR/file3.ll
$CLANG -Os $INP_OPT_DIR/file4.c -S -emit-llvm -o $OUT_OPTOs_DIR/file4.ll
$CLANG -Os $INP_OPT_DIR/file5.c -S -emit-llvm -o $OUT_OPTOs_DIR/file5.ll

# Optimization Level Oz
$CLANG -Oz $INP_OPT_DIR/file1.c -S -emit-llvm -o $OUT_OPTOz_DIR/file1.ll
$CLANG -Oz $INP_OPT_DIR/file2.cpp -S -emit-llvm -o $OUT_OPTOz_DIR/file2.ll
$CLANG -Oz $INP_OPT_DIR/file3.cpp -S -emit-llvm -o $OUT_OPTOz_DIR/file3.ll
$CLANG -Oz $INP_OPT_DIR/file4.c -S -emit-llvm -o $OUT_OPTOz_DIR/file4.ll
$CLANG -Oz $INP_OPT_DIR/file5.c -S -emit-llvm -o $OUT_OPTOz_DIR/file5.ll

# To generate .ll files
$CLANG $INP_DIR/floyd_warshall.cpp -S -emit-llvm -o $OUT_DIR/floyd_warshall.ll -Xclang -disable-O0-optnone
$CLANG $INP_DIR/matrix_mul.cpp -S -emit-llvm -o $OUT_DIR/matrix_mul.ll -Xclang -disable-O0-optnone

# To generate Assembly Codes
$CLANG -S $INP_DIR/floyd_warshall.cpp -o $OUT_AS_DIR/floyd_warshall_as.bc
$CLANG -S $INP_DIR/matrix_mul.cpp -o $OUT_AS_DIR/matrix_mul_as.bc

# Analysis Passes

# To generate CFG
# $OPT -passes="dot-cfg-only" $INP_DIR/floyd_warshall.ll -disable-output
# $OPT -passes="dot-cfg-only" $INP_DIR/matrix_mul.ll -disable-output

# Convert CFG-ONLY files to PNG of floyd_warshall.ll
# dot -Tpng .main.dot -o floyd_warshall_dot_cfg_only.png
# dot -Tpng ._Z13floydWarshallPA4_i.dot -o floyd_warshall_dot_cfg_only_01.png
# dot -Tpng ._Z13printSolutionPA4_i.dot -o floyd_warshall_dot_cfg_only_02.png

# Convert CFG-ONLY files to PNG of matrix_mul.ll
# dot -Tpng .main.dot -o matrix_mul_dot_cfg_only.png

# To generate DOM Tree
# $OPT -passes="dot-dom-only" $INP_DIR/floyd_warshall.ll -disable-output
# $OPT -passes="dot-dom-only" $INP_DIR/matrix_mul.ll -disable-output

# Convert DOM-ONLY files to PNG of floyd_warshall.ll
# dot -Tpng domonly.main.dot -o floyd_warshall_dot_dom_only.png
# dot -Tpng domonly._Z13floydWarshallPA4_i.dot -o floyd_warshall_dot_dom_only_01.png
# dot -Tpng domonly._Z13printSolutionPA4_i.dot -o floyd_warshall_dot_dom_only_02.png

# Convert DOM-ONLY files to PNG of matrix_mul.ll
# dot -Tpng domonly.main.dot -o matrix_mul_dot_dom_only.png

#  Transformation Passes

# Optimize the LLVM IR using "dce" pass
$OPT -passes="dce" -S $OUT_DIR/floyd_warshall.ll -o $TR_DCE_DIR/floyd_warshall_dce.ll
$OPT -passes="dce" -S $OUT_DIR/matrix_mul.ll -o $TR_DCE_DIR/matrix_mul_dce.ll

# Optimize the LLVM IR using "mem2reg" pass
$OPT -passes="mem2reg" -S $OUT_DIR/floyd_warshall.ll -o $TR_MEM_DIR/floyd_warshall_mem2reg.ll
$OPT -passes="mem2reg" -S $OUT_DIR/matrix_mul.ll -o $TR_MEM_DIR/matrix_mul_mem2reg.ll

# Optimize the LLVM IR using "dce" and "mem2reg" pass
$OPT -passes="dce,mem2reg" -S $OUT_DIR/floyd_warshall.ll -o $OUT_DCE_MEM_DIR/floyd_warshall_dce_mem2reg.ll
$OPT -passes="dce,mem2reg" -S $OUT_DIR/matrix_mul.ll -o $OUT_DCE_MEM_DIR/matrix_mul_dce_mem2reg.ll