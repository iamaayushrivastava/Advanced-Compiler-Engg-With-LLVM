; ModuleID = '/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file4.c'
source_filename = "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %i, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata ptr %j, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 1, ptr %j, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata ptr %a, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, ptr %a, align 4, !dbg !21
  br label %while.cond, !dbg !22

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %j, align 4, !dbg !23
  %cmp = icmp sgt i32 %0, 11, !dbg !24
  br i1 %cmp, label %while.body, label %while.end, !dbg !22

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata ptr %n, metadata !25, metadata !DIExpression()), !dbg !27
  %1 = load i32, ptr %a, align 4, !dbg !28
  %2 = load i32, ptr %j, align 4, !dbg !29
  %add = add nsw i32 %1, %2, !dbg !30
  store i32 %add, ptr %n, align 4, !dbg !27
  %3 = load i32, ptr %j, align 4, !dbg !31
  %add1 = add nsw i32 %3, 1, !dbg !32
  store i32 %add1, ptr %j, align 4, !dbg !33
  br label %while.cond, !dbg !22, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !37
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file4.c", directory: "/home/aayusphere/ACE/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "d8873249a62c76a6d0de1313bafececf")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!10 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 1, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "Asgn1b_CS24MTECH02001/test/code/file4.c", directory: "/home/aayusphere/ACE", checksumkind: CSK_MD5, checksum: "d8873249a62c76a6d0de1313bafececf")
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "i", scope: !10, file: !11, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 9, scope: !10)
!18 = !DILocalVariable(name: "j", scope: !10, file: !11, line: 4, type: !14)
!19 = !DILocation(line: 4, column: 9, scope: !10)
!20 = !DILocalVariable(name: "a", scope: !10, file: !11, line: 5, type: !14)
!21 = !DILocation(line: 5, column: 9, scope: !10)
!22 = !DILocation(line: 6, column: 5, scope: !10)
!23 = !DILocation(line: 6, column: 12, scope: !10)
!24 = !DILocation(line: 6, column: 13, scope: !10)
!25 = !DILocalVariable(name: "n", scope: !26, file: !11, line: 8, type: !14)
!26 = distinct !DILexicalBlock(scope: !10, file: !11, line: 7, column: 5)
!27 = !DILocation(line: 8, column: 13, scope: !26)
!28 = !DILocation(line: 8, column: 17, scope: !26)
!29 = !DILocation(line: 8, column: 19, scope: !26)
!30 = !DILocation(line: 8, column: 18, scope: !26)
!31 = !DILocation(line: 9, column: 11, scope: !26)
!32 = !DILocation(line: 9, column: 12, scope: !26)
!33 = !DILocation(line: 9, column: 10, scope: !26)
!34 = distinct !{!34, !22, !35, !36}
!35 = !DILocation(line: 10, column: 5, scope: !10)
!36 = !{!"llvm.loop.mustprogress"}
!37 = !DILocation(line: 11, column: 5, scope: !10)
