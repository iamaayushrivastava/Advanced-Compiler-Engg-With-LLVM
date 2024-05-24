; ModuleID = './1/Code/file4.c'
source_filename = "./1/Code/file4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"Enter a number (1-7) to represent the day of the week: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [9 x i8] c"Saturday\00", align 1
@str.10 = private unnamed_addr constant [7 x i8] c"Friday\00", align 1
@str.11 = private unnamed_addr constant [9 x i8] c"Thursday\00", align 1
@str.12 = private unnamed_addr constant [10 x i8] c"Wednesday\00", align 1
@str.13 = private unnamed_addr constant [8 x i8] c"Tuesday\00", align 1
@str.14 = private unnamed_addr constant [7 x i8] c"Monday\00", align 1
@str.15 = private unnamed_addr constant [7 x i8] c"Sunday\00", align 1
@str.16 = private unnamed_addr constant [59 x i8] c"Invalid day number. Please enter a number between 1 and 7.\00", align 1
@reltable.main = private unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @str.15 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str.14 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str.13 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str.12 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str.11 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str.10 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @str to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32)], align 4

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) #6
  %3 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #6
  %4 = load i32, ptr %1, align 4, !tbaa !5
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = sext i32 %5 to i64
  %9 = shl i64 %8, 2
  %10 = call ptr @llvm.load.relative.i64(ptr @reltable.main, i64 %9)
  br label %11

11:                                               ; preds = %0, %7
  %12 = phi ptr [ %10, %7 ], [ @str.16, %0 ]
  %13 = call i32 @puts(ptr nonnull dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #4

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
