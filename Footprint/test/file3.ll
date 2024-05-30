; ModuleID = '/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file3.c'
source_filename = "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %count, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 0, ptr %count, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata ptr %i, metadata !18, metadata !DIExpression()), !dbg !20
  store i32 0, ptr %i, align 4, !dbg !20
  br label %for.cond, !dbg !21

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !22
  %cmp = icmp slt i32 %0, 5, !dbg !24
  br i1 %cmp, label %for.body, label %for.end, !dbg !25

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !26, metadata !DIExpression()), !dbg !28
  store i32 0, ptr %sum, align 4, !dbg !28
  %1 = load i32, ptr %i, align 4, !dbg !29
  %mul = mul nsw i32 %1, 2, !dbg !30
  %2 = load i32, ptr %sum, align 4, !dbg !31
  %add = add nsw i32 %2, %mul, !dbg !31
  store i32 %add, ptr %sum, align 4, !dbg !31
  %3 = load i32, ptr %count, align 4, !dbg !32
  %inc = add nsw i32 %3, 1, !dbg !32
  store i32 %inc, ptr %count, align 4, !dbg !32
  br label %for.inc, !dbg !33

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !34
  %inc1 = add nsw i32 %4, 1, !dbg !34
  store i32 %inc1, ptr %i, align 4, !dbg !34
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !39
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file3.c", directory: "/home/aayusphere/ACE/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "a67589722443b1f9e948f4ba975dbe79")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!10 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 1, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "Asgn1b_CS24MTECH02001/test/code/file3.c", directory: "/home/aayusphere/ACE", checksumkind: CSK_MD5, checksum: "a67589722443b1f9e948f4ba975dbe79")
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "count", scope: !10, file: !11, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 9, scope: !10)
!18 = !DILocalVariable(name: "i", scope: !19, file: !11, line: 4, type: !14)
!19 = distinct !DILexicalBlock(scope: !10, file: !11, line: 4, column: 5)
!20 = !DILocation(line: 4, column: 14, scope: !19)
!21 = !DILocation(line: 4, column: 10, scope: !19)
!22 = !DILocation(line: 4, column: 21, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !11, line: 4, column: 5)
!24 = !DILocation(line: 4, column: 23, scope: !23)
!25 = !DILocation(line: 4, column: 5, scope: !19)
!26 = !DILocalVariable(name: "sum", scope: !27, file: !11, line: 6, type: !14)
!27 = distinct !DILexicalBlock(scope: !23, file: !11, line: 5, column: 5)
!28 = !DILocation(line: 6, column: 13, scope: !27)
!29 = !DILocation(line: 7, column: 16, scope: !27)
!30 = !DILocation(line: 7, column: 18, scope: !27)
!31 = !DILocation(line: 7, column: 13, scope: !27)
!32 = !DILocation(line: 8, column: 14, scope: !27)
!33 = !DILocation(line: 9, column: 5, scope: !27)
!34 = !DILocation(line: 4, column: 29, scope: !23)
!35 = !DILocation(line: 4, column: 5, scope: !23)
!36 = distinct !{!36, !25, !37, !38}
!37 = !DILocation(line: 9, column: 5, scope: !19)
!38 = !{!"llvm.loop.mustprogress"}
!39 = !DILocation(line: 10, column: 5, scope: !10)
