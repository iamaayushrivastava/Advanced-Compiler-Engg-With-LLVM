; ModuleID = '/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file2.c'
source_filename = "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %num1 = alloca i32, align 4
  %num2 = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %num1, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 8, ptr %num1, align 4, !dbg !22
  store i32 9, ptr %num2, align 4, !dbg !23
  %0 = load i32, ptr %num1, align 4, !dbg !24
  %1 = load i32, ptr %num2, align 4, !dbg !25
  %add = add nsw i32 %0, %1, !dbg !26
  store i32 %add, ptr %sum, align 4, !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file2.c", directory: "/home/aayusphere/ACE/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "e891bcbabd1f2b8b6f3599d0ae6afd75")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!10 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 1, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "Asgn1b_CS24MTECH02001/test/code/file2.c", directory: "/home/aayusphere/ACE", checksumkind: CSK_MD5, checksum: "e891bcbabd1f2b8b6f3599d0ae6afd75")
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "num1", scope: !10, file: !11, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 9, scope: !10)
!18 = !DILocalVariable(name: "num2", scope: !10, file: !11, line: 3, type: !14)
!19 = !DILocation(line: 3, column: 15, scope: !10)
!20 = !DILocalVariable(name: "sum", scope: !10, file: !11, line: 3, type: !14)
!21 = !DILocation(line: 3, column: 21, scope: !10)
!22 = !DILocation(line: 4, column: 10, scope: !10)
!23 = !DILocation(line: 5, column: 10, scope: !10)
!24 = !DILocation(line: 6, column: 11, scope: !10)
!25 = !DILocation(line: 6, column: 18, scope: !10)
!26 = !DILocation(line: 6, column: 16, scope: !10)
!27 = !DILocation(line: 6, column: 9, scope: !10)
!28 = !DILocation(line: 7, column: 5, scope: !10)
