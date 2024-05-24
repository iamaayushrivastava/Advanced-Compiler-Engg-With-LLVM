; ModuleID = './1/Code/file4.c'
source_filename = "./1/Code/file4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"Enter a number (1-7) to represent the day of the week: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Sunday\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Monday\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Tuesday\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Wednesday\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Thursday\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Friday\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Saturday\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"Invalid day number. Please enter a number between 1 and 7.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %4 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.1, ptr noundef %2)
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %20 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 6, label %16
    i32 7, label %18
  ]

6:                                                ; preds = %0
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %22

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %22

10:                                               ; preds = %0
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %22

12:                                               ; preds = %0
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %22

14:                                               ; preds = %0
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %22

16:                                               ; preds = %0
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %22

18:                                               ; preds = %0
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %22

20:                                               ; preds = %0
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %12, %10, %8, %6
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
