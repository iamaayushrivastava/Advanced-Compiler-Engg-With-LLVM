; ModuleID = '/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file5.c'
source_filename = "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @performCalculations() #0 !dbg !10 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %sum = alloca i32, align 4
  %product = alloca i32, align 4
  %division = alloca double, align 8
  call void @llvm.dbg.declare(metadata ptr %a, metadata !15, metadata !DIExpression()), !dbg !17
  store i32 5, ptr %a, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata ptr %b, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 3, ptr %b, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i32, ptr %a, align 4, !dbg !22
  %1 = load i32, ptr %b, align 4, !dbg !23
  %add = add nsw i32 %0, %1, !dbg !24
  store i32 %add, ptr %sum, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata ptr %product, metadata !25, metadata !DIExpression()), !dbg !26
  %2 = load i32, ptr %a, align 4, !dbg !27
  %3 = load i32, ptr %b, align 4, !dbg !28
  %mul = mul nsw i32 %2, %3, !dbg !29
  store i32 %mul, ptr %product, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata ptr %division, metadata !30, metadata !DIExpression()), !dbg !32
  %4 = load i32, ptr %a, align 4, !dbg !33
  %5 = load i32, ptr %b, align 4, !dbg !34
  %div = sdiv i32 %4, %5, !dbg !35
  %conv = sitofp i32 %div to double, !dbg !33
  store double %conv, ptr %division, align 8, !dbg !32
  ret void, !dbg !36
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file5.c", directory: "/home/aayusphere/ACE/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "9498ed817e6d99419928a7b99fc964d2")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!10 = distinct !DISubprogram(name: "performCalculations", scope: !11, file: !11, line: 1, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DIFile(filename: "Asgn1b_CS24MTECH02001/test/code/file5.c", directory: "/home/aayusphere/ACE", checksumkind: CSK_MD5, checksum: "9498ed817e6d99419928a7b99fc964d2")
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !{}
!15 = !DILocalVariable(name: "a", scope: !10, file: !11, line: 3, type: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocation(line: 3, column: 9, scope: !10)
!18 = !DILocalVariable(name: "b", scope: !10, file: !11, line: 3, type: !16)
!19 = !DILocation(line: 3, column: 16, scope: !10)
!20 = !DILocalVariable(name: "sum", scope: !10, file: !11, line: 4, type: !16)
!21 = !DILocation(line: 4, column: 9, scope: !10)
!22 = !DILocation(line: 4, column: 15, scope: !10)
!23 = !DILocation(line: 4, column: 19, scope: !10)
!24 = !DILocation(line: 4, column: 17, scope: !10)
!25 = !DILocalVariable(name: "product", scope: !10, file: !11, line: 5, type: !16)
!26 = !DILocation(line: 5, column: 9, scope: !10)
!27 = !DILocation(line: 5, column: 19, scope: !10)
!28 = !DILocation(line: 5, column: 23, scope: !10)
!29 = !DILocation(line: 5, column: 21, scope: !10)
!30 = !DILocalVariable(name: "division", scope: !10, file: !11, line: 6, type: !31)
!31 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!32 = !DILocation(line: 6, column: 12, scope: !10)
!33 = !DILocation(line: 6, column: 23, scope: !10)
!34 = !DILocation(line: 6, column: 27, scope: !10)
!35 = !DILocation(line: 6, column: 25, scope: !10)
!36 = !DILocation(line: 7, column: 1, scope: !10)
