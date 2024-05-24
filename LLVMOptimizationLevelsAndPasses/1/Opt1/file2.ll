; ModuleID = './1/Code/file2.cpp'
source_filename = "./1/Code/file2.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 64, i32 25, i32 12, i32 22, i32 11, i32 1], align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"Original array: \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Sorted array: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_file2.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z4swapRiS_(ptr nocapture noundef nonnull align 4 dereferenceable(4) %0, ptr nocapture noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = load i32, ptr %1, align 4, !tbaa !5
  store i32 %4, ptr %0, align 4, !tbaa !5
  store i32 %3, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z10bubbleSortPii(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2, %14
  %6 = phi i32 [ %16, %14 ], [ %3, %2 ]
  %7 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %8 = xor i32 %7, -1
  %9 = add i32 %8, %1
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  br label %18

13:                                               ; preds = %14, %2
  ret void

14:                                               ; preds = %27, %5
  %15 = add nuw nsw i32 %7, 1
  %16 = add i32 %6, -1
  %17 = icmp eq i32 %15, %3
  br i1 %17, label %13, label %5, !llvm.loop !9

18:                                               ; preds = %11, %27
  %19 = phi i64 [ 0, %11 ], [ %22, %27 ]
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = add nuw nsw i64 %19, 1
  %23 = getelementptr inbounds i32, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 %24, ptr %20, align 4, !tbaa !5
  store i32 %21, ptr %23, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %18, %26
  %28 = icmp eq i64 %22, %12
  br i1 %28, label %14, label %18, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10printArrayPii(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %8

6:                                                ; preds = %8, %2
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %14, %8 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str, i64 noundef 1)
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %8, !llvm.loop !13
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #7 {
  %1 = alloca [6 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(24) @__const.main.arr, i64 24, i1 false)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 16)
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ 0, %0 ], [ %9, %3 ]
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str, i64 noundef 1)
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 6
  br i1 %10, label %11, label %3, !llvm.loop !13

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %18, %16 ], [ 5, %11 ]
  %15 = phi i32 [ %17, %16 ], [ 0, %11 ]
  br label %20

16:                                               ; preds = %29
  %17 = add nuw nsw i32 %15, 1
  %18 = add nsw i64 %14, -1
  %19 = icmp eq i32 %17, 5
  br i1 %19, label %31, label %13, !llvm.loop !9

20:                                               ; preds = %29, %13
  %21 = phi i64 [ 0, %13 ], [ %24, %29 ]
  %22 = getelementptr inbounds i32, ptr %1, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = add nuw nsw i64 %21, 1
  %25 = getelementptr inbounds i32, ptr %1, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 %26, ptr %22, align 4, !tbaa !5
  store i32 %23, ptr %25, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %28, %20
  %30 = icmp eq i64 %24, %14
  br i1 %30, label %16, label %20, !llvm.loop !12

31:                                               ; preds = %16
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 14)
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %39, %33 ]
  %35 = getelementptr inbounds i32, ptr %1, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %36)
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str, i64 noundef 1)
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, 6
  br i1 %40, label %41, label %33, !llvm.loop !13

41:                                               ; preds = %33
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_file2.cpp() #9 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
