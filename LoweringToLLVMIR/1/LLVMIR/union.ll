; ModuleID = './1/Code/union.c'
source_filename = "./1/Code/union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Example = type { i32, [16 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"example.i : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"example.f : %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Union\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"example.str : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.Example, align 4
  store i32 0, ptr %1, align 4
  store i32 10, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  store float 2.205000e+02, ptr %2, align 4
  %5 = load float, ptr %2, align 4
  %6 = fpext float %5 to double
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %6)
  %8 = getelementptr inbounds [20 x i8], ptr %2, i64 0, i64 0
  %9 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #3
  %10 = getelementptr inbounds [20 x i8], ptr %2, i64 0, i64 0
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %10)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
