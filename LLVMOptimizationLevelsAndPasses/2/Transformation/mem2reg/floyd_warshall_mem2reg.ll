; ModuleID = './IR_Files/floyd_warshall.ll'
source_filename = "./Code/floyd_warshall.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [82 x i8] c"The following matrix shows the shortest distances between every pair of vertices\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.graph = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 5, i32 99999, i32 10], [4 x i32] [i32 99999, i32 0, i32 3, i32 99999], [4 x i32] [i32 99999, i32 99999, i32 0, i32 1], [4 x i32] [i32 99999, i32 99999, i32 99999, i32 0]], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_floyd_warshall.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13floydWarshallPA4_i(ptr noundef %0) #4 {
  br label %2

2:                                                ; preds = %65, %1
  %.0 = phi i32 [ 0, %1 ], [ %66, %65 ]
  %3 = icmp slt i32 %.0, 4
  br i1 %3, label %4, label %67

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %62, %4
  %.01 = phi i32 [ 0, %4 ], [ %63, %62 ]
  %6 = icmp slt i32 %.01, 4
  br i1 %6, label %7, label %64

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %59, %7
  %.02 = phi i32 [ 0, %7 ], [ %60, %59 ]
  %9 = icmp slt i32 %.02, 4
  br i1 %9, label %10, label %61

10:                                               ; preds = %8
  %11 = sext i32 %.01 to i64
  %12 = getelementptr inbounds [4 x i32], ptr %0, i64 %11
  %13 = sext i32 %.02 to i64
  %14 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds [4 x i32], ptr %0, i64 %16
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds [4 x i32], ptr %17, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds [4 x i32], ptr %0, i64 %21
  %23 = sext i32 %.02 to i64
  %24 = getelementptr inbounds [4 x i32], ptr %22, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %20, %25
  %27 = icmp sgt i32 %15, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %10
  %29 = sext i32 %.0 to i64
  %30 = getelementptr inbounds [4 x i32], ptr %0, i64 %29
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [4 x i32], ptr %30, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 99999
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = sext i32 %.01 to i64
  %37 = getelementptr inbounds [4 x i32], ptr %0, i64 %36
  %38 = sext i32 %.0 to i64
  %39 = getelementptr inbounds [4 x i32], ptr %37, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 99999
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = sext i32 %.01 to i64
  %44 = getelementptr inbounds [4 x i32], ptr %0, i64 %43
  %45 = sext i32 %.0 to i64
  %46 = getelementptr inbounds [4 x i32], ptr %44, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = sext i32 %.0 to i64
  %49 = getelementptr inbounds [4 x i32], ptr %0, i64 %48
  %50 = sext i32 %.02 to i64
  %51 = getelementptr inbounds [4 x i32], ptr %49, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %47, %52
  %54 = sext i32 %.01 to i64
  %55 = getelementptr inbounds [4 x i32], ptr %0, i64 %54
  %56 = sext i32 %.02 to i64
  %57 = getelementptr inbounds [4 x i32], ptr %55, i64 0, i64 %56
  store i32 %53, ptr %57, align 4
  br label %58

58:                                               ; preds = %42, %35, %28, %10
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %.02, 1
  br label %8, !llvm.loop !6

61:                                               ; preds = %8
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !8

64:                                               ; preds = %5
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !9

67:                                               ; preds = %2
  call void @_Z13printSolutionPA4_i(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13printSolutionPA4_i(ptr noundef %0) #4 {
  %2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %3

3:                                                ; preds = %31, %1
  %.01 = phi i32 [ 0, %1 ], [ %32, %31 ]
  %4 = icmp slt i32 %.01, 4
  br i1 %4, label %5, label %33

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %27, %5
  %.0 = phi i32 [ 0, %5 ], [ %28, %27 ]
  %7 = icmp slt i32 %.0, 4
  br i1 %7, label %8, label %29

8:                                                ; preds = %6
  %9 = sext i32 %.01 to i64
  %10 = getelementptr inbounds [4 x i32], ptr %0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 99999
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef @.str.2)
  br label %26

18:                                               ; preds = %8
  %19 = sext i32 %.01 to i64
  %20 = getelementptr inbounds [4 x i32], ptr %0, i64 %19
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef @.str.2)
  br label %26

26:                                               ; preds = %18, %15
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !10

29:                                               ; preds = %6
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %31

31:                                               ; preds = %29
  %32 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !11

33:                                               ; preds = %3
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #5 {
  %1 = alloca [4 x [4 x i32]], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %1, ptr align 16 @__const.main.graph, i64 64, i1 false)
  %2 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 0, i64 0
  call void @_Z13floydWarshallPA4_i(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_floyd_warshall.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
