; ModuleID = './2/floatingpoint.c'
source_filename = "./2/floatingpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Float value: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Double value: %lf\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Long Double value: %Lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca double, align 8
  %4 = alloca x86_fp80, align 16
  store i32 0, ptr %1, align 4
  store float 0x400921FA00000000, ptr %2, align 4
  store double 0x400921FB54411744, ptr %3, align 8
  store x86_fp80 0xK4000C90FDAA22168C235, ptr %4, align 16
  %5 = load float, ptr %2, align 4
  %6 = fpext float %5 to double
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %6)
  %8 = load double, ptr %3, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %8)
  %10 = load x86_fp80, ptr %4, align 16
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, x86_fp80 noundef %10)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
