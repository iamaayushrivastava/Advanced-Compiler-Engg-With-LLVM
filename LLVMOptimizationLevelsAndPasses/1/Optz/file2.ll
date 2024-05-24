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

; Function Attrs: minsize optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: minsize nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: minsize mustprogress nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @_Z10bubbleSortPii(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %4 = add nsw i32 %3, -1
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i64 [ %19, %18 ], [ 0, %2 ]
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = trunc i64 %7 to i32
  %11 = xor i32 %10, -1
  %12 = add i32 %11, %1
  %13 = sext i32 %12 to i64
  br label %15

14:                                               ; preds = %6
  ret void

15:                                               ; preds = %27, %9
  %16 = phi i64 [ 0, %9 ], [ %23, %27 ]
  %17 = icmp slt i64 %16, %13
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %7, 1
  br label %6, !llvm.loop !9

20:                                               ; preds = %15
  %21 = getelementptr inbounds i32, ptr %0, i64 %16
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = add nuw nsw i64 %16, 1
  %24 = getelementptr inbounds i32, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %28
  br label %15, !llvm.loop !11

28:                                               ; preds = %20
  store i32 %25, ptr %21, align 4, !tbaa !5
  store i32 %22, ptr %24, align 4, !tbaa !5
  br label %27
}

; Function Attrs: minsize mustprogress optsize uwtable
define dso_local void @_Z10printArrayPii(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %4 = zext i32 %3 to i64
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi i64 [ %15, %10 ], [ 0, %2 ]
  %7 = icmp eq i64 %6, %4
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1) #12
  ret void

10:                                               ; preds = %5
  %11 = getelementptr inbounds i32, ptr %0, i64 %6
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12) #12
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str) #12
  %15 = add nuw nsw i64 %6, 1
  br label %5, !llvm.loop !12
}

; Function Attrs: inlinehint minsize mustprogress optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: minsize optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main() local_unnamed_addr #8 {
  %1 = alloca [6 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(24) @__const.main.arr, i64 24, i1 false)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2) #12
  call void @_Z10printArrayPii(ptr noundef nonnull %1, i32 noundef 6) #12
  call void @_Z10bubbleSortPii(ptr noundef nonnull %1, i32 noundef 6) #12
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3) #12
  call void @_Z10printArrayPii(ptr noundef nonnull %1, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: minsize optsize uwtable
define internal void @_GLOBAL__sub_I_file2.cpp() #10 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { minsize optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { minsize nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { minsize mustprogress nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint minsize mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { minsize optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { minsize optsize }
attributes #13 = { nounwind }

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
