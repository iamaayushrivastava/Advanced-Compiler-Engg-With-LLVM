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

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @_Z10bubbleSortPii(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %2, %15
  %6 = phi i32 [ %17, %15 ], [ %3, %2 ]
  %7 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %8 = xor i32 %7, -1
  %9 = add i32 %8, %1
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = zext i32 %6 to i64
  %13 = load i32, ptr %0, align 4, !tbaa !5
  br label %19

14:                                               ; preds = %15, %2
  ret void

15:                                               ; preds = %28, %5
  %16 = add nuw nsw i32 %7, 1
  %17 = add i32 %6, -1
  %18 = icmp eq i32 %16, %3
  br i1 %18, label %14, label %5, !llvm.loop !9

19:                                               ; preds = %11, %28
  %20 = phi i32 [ %13, %11 ], [ %29, %28 ]
  %21 = phi i64 [ 0, %11 ], [ %22, %28 ]
  %22 = add nuw nsw i64 %21, 1
  %23 = getelementptr inbounds i32, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = getelementptr inbounds i32, ptr %0, i64 %21
  store i32 %24, ptr %27, align 4, !tbaa !5
  store i32 %20, ptr %23, align 4, !tbaa !5
  br label %28

28:                                               ; preds = %19, %26
  %29 = phi i32 [ %24, %19 ], [ %20, %26 ]
  %30 = icmp eq i64 %22, %12
  br i1 %30, label %15, label %19, !llvm.loop !11
}

; Function Attrs: mustprogress optsize uwtable
define dso_local void @_Z10printArrayPii(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %8

6:                                                ; preds = %8, %2
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1) #10
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %14, %8 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11) #10
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str, i64 noundef 1) #10
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %8, !llvm.loop !12
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main() local_unnamed_addr #7 {
  %1 = alloca [6 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(24) @__const.main.arr, i64 24, i1 false)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 16) #10
  call void @_Z10printArrayPii(ptr noundef nonnull %1, i32 noundef 6) #10
  br label %3

3:                                                ; preds = %0, %7
  %4 = phi i64 [ %9, %7 ], [ 5, %0 ]
  %5 = phi i32 [ %8, %7 ], [ 0, %0 ]
  %6 = load i32, ptr %1, align 16, !tbaa !5
  br label %11

7:                                                ; preds = %20
  %8 = add nuw nsw i32 %5, 1
  %9 = add nsw i64 %4, -1
  %10 = icmp eq i32 %8, 5
  br i1 %10, label %23, label %3, !llvm.loop !9

11:                                               ; preds = %20, %3
  %12 = phi i32 [ %6, %3 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %3 ], [ %14, %20 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = getelementptr inbounds i32, ptr %1, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = icmp sgt i32 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds i32, ptr %1, i64 %13
  store i32 %16, ptr %19, align 4, !tbaa !5
  store i32 %12, ptr %15, align 4, !tbaa !5
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %16, %11 ], [ %12, %18 ]
  %22 = icmp eq i64 %14, %4
  br i1 %22, label %7, label %11, !llvm.loop !11

23:                                               ; preds = %7
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 14) #10
  call void @_Z10printArrayPii(ptr noundef nonnull %1, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_file2.cpp() #9 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #10
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #11
  ret void
}

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
