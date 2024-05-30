; ModuleID = '/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file1.c'
source_filename = "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 !dbg !10 {
entry:
  %i = alloca i32, align 4
  %ip = alloca ptr, align 8
  %i1 = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %i, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 0, ptr %i, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !18, metadata !DIExpression()), !dbg !20
  store ptr %i, ptr %ip, align 8, !dbg !20
  call void @llvm.dbg.declare(metadata ptr %i1, metadata !21, metadata !DIExpression()), !dbg !23
  store i32 0, ptr %i1, align 4, !dbg !23
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i1, align 4, !dbg !25
  %cmp = icmp slt i32 %0, 100, !dbg !27
  br i1 %cmp, label %for.body, label %for.end, !dbg !28

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !29, metadata !DIExpression()), !dbg !31
  store i32 0, ptr %temp, align 4, !dbg !31
  %1 = load i32, ptr %i1, align 4, !dbg !32
  %2 = load i32, ptr %temp, align 4, !dbg !33
  %add = add nsw i32 %2, %1, !dbg !33
  store i32 %add, ptr %temp, align 4, !dbg !33
  %3 = load i32, ptr %temp, align 4, !dbg !34
  %4 = load ptr, ptr %ip, align 8, !dbg !35
  store i32 %3, ptr %4, align 4, !dbg !36
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i1, align 4, !dbg !38
  %inc = add nsw i32 %5, 1, !dbg !38
  store i32 %inc, ptr %i1, align 4, !dbg !38
  br label %for.cond, !dbg !39, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !43
  ret i32 %6, !dbg !44
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aayusphere/ACE/Asgn1b_CS24MTECH02001/test/code/file1.c", directory: "/home/aayusphere/ACE/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "ced58174536473124ff0021b637a7dcd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!10 = distinct !DISubprogram(name: "foo", scope: !11, file: !11, line: 1, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "Asgn1b_CS24MTECH02001/test/code/file1.c", directory: "/home/aayusphere/ACE", checksumkind: CSK_MD5, checksum: "ced58174536473124ff0021b637a7dcd")
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "i", scope: !10, file: !11, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 9, scope: !10)
!18 = !DILocalVariable(name: "ip", scope: !10, file: !11, line: 4, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!20 = !DILocation(line: 4, column: 10, scope: !10)
!21 = !DILocalVariable(name: "i", scope: !22, file: !11, line: 5, type: !14)
!22 = distinct !DILexicalBlock(scope: !10, file: !11, line: 5, column: 5)
!23 = !DILocation(line: 5, column: 14, scope: !22)
!24 = !DILocation(line: 5, column: 10, scope: !22)
!25 = !DILocation(line: 5, column: 21, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !11, line: 5, column: 5)
!27 = !DILocation(line: 5, column: 23, scope: !26)
!28 = !DILocation(line: 5, column: 5, scope: !22)
!29 = !DILocalVariable(name: "temp", scope: !30, file: !11, line: 7, type: !14)
!30 = distinct !DILexicalBlock(scope: !26, file: !11, line: 6, column: 5)
!31 = !DILocation(line: 7, column: 13, scope: !30)
!32 = !DILocation(line: 8, column: 17, scope: !30)
!33 = !DILocation(line: 8, column: 14, scope: !30)
!34 = !DILocation(line: 9, column: 15, scope: !30)
!35 = !DILocation(line: 9, column: 10, scope: !30)
!36 = !DILocation(line: 9, column: 13, scope: !30)
!37 = !DILocation(line: 10, column: 5, scope: !30)
!38 = !DILocation(line: 5, column: 31, scope: !26)
!39 = !DILocation(line: 5, column: 5, scope: !26)
!40 = distinct !{!40, !28, !41, !42}
!41 = !DILocation(line: 10, column: 5, scope: !22)
!42 = !{!"llvm.loop.mustprogress"}
!43 = !DILocation(line: 11, column: 12, scope: !10)
!44 = !DILocation(line: 11, column: 5, scope: !10)
