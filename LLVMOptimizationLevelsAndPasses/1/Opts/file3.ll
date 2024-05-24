; ModuleID = './1/Code/file3.cpp'
source_filename = "./1/Code/file3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"Result of adding integers: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Hello, \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"world!\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Result of concatenating strings: \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Result of adding doubles: \00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_file3.cpp, ptr null }]

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3addii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress optsize uwtable
define dso_local void @_Z3addRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 {
  tail call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !5
  %5 = load ptr, ptr %1, align 8, !tbaa !10
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5, ptr noundef %8) #11
  %9 = load ptr, ptr %2, align 8, !tbaa !10
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9, i64 noundef %11) #11
          to label %19 unwind label %13

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %15) #12
  br label %18

18:                                               ; preds = %13, %17
  resume { ptr, i32 } %14

19:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @_Z3addddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
  %4 = fadd double %0, %1
  %5 = fadd double %4, %2
  ret double %5
}

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 27) #11
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 8) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %9, i8 noundef signext 10) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %10) #11
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %13, ptr %2, align 8, !tbaa !5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds ([8 x i8], ptr @.str.1, i64 0, i64 7)) #11
          to label %14 unwind label %62

14:                                               ; preds = %0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %15, ptr %3, align 8, !tbaa !5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds ([7 x i8], ptr @.str.2, i64 0, i64 6)) #11
          to label %16 unwind label %64

16:                                               ; preds = %14
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #11
          to label %17 unwind label %66

17:                                               ; preds = %16
  %18 = load ptr, ptr %3, align 8, !tbaa !10
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %18) #12
  br label %21

21:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  %22 = load ptr, ptr %2, align 8, !tbaa !10
  %23 = icmp eq ptr %22, %13
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %22) #12
  br label %25

25:                                               ; preds = %21, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 33) #11
          to label %27 unwind label %78

27:                                               ; preds = %25
  %28 = load ptr, ptr %1, align 8, !tbaa !10
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !13
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %28, i64 noundef %30) #11
          to label %32 unwind label %78

32:                                               ; preds = %27
  %33 = load ptr, ptr %31, align 8, !tbaa !14
  %34 = getelementptr i8, ptr %33, i64 -24
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds i8, ptr %31, i64 %35
  %37 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %36, i8 noundef signext 10) #11
          to label %38 unwind label %78

38:                                               ; preds = %32
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext %37) #11
          to label %40 unwind label %78

40:                                               ; preds = %38
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #11
          to label %42 unwind label %78

42:                                               ; preds = %40
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 26) #11
          to label %44 unwind label %80

44:                                               ; preds = %42
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef 7.000000e+00) #11
          to label %46 unwind label %80

46:                                               ; preds = %44
  %47 = load ptr, ptr %45, align 8, !tbaa !14
  %48 = getelementptr i8, ptr %47, i64 -24
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %50, i8 noundef signext 10) #11
          to label %52 unwind label %80

52:                                               ; preds = %46
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %45, i8 noundef signext %51) #11
          to label %54 unwind label %80

54:                                               ; preds = %52
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #11
          to label %56 unwind label %80

56:                                               ; preds = %54
  %57 = load ptr, ptr %1, align 8, !tbaa !10
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %57) #12
  br label %61

61:                                               ; preds = %56, %60
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #13
  ret i32 0

62:                                               ; preds = %0
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %76

64:                                               ; preds = %14
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %71

66:                                               ; preds = %16
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %3, align 8, !tbaa !10
  %69 = icmp eq ptr %68, %15
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %68) #12
  br label %71

71:                                               ; preds = %70, %66, %64
  %72 = phi { ptr, i32 } [ %65, %64 ], [ %67, %66 ], [ %67, %70 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  %73 = load ptr, ptr %2, align 8, !tbaa !10
  %74 = icmp eq ptr %73, %13
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %73) #12
  br label %76

76:                                               ; preds = %75, %71, %62
  %77 = phi { ptr, i32 } [ %63, %62 ], [ %72, %71 ], [ %72, %75 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  br label %88

78:                                               ; preds = %40, %38, %32, %27, %25
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %82

80:                                               ; preds = %54, %52, %46, %44, %42
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  %84 = load ptr, ptr %1, align 8, !tbaa !10
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %84) #12
  br label %88

88:                                               ; preds = %87, %82, %76
  %89 = phi { ptr, i32 } [ %77, %76 ], [ %83, %82 ], [ %83, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #13
  resume { ptr, i32 } %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = icmp ne ptr %1, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #14
  unreachable

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  store i64 %12, ptr %4, align 8, !tbaa !16
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  br label %20

16:                                               ; preds = %9
  %17 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #11
  store ptr %17, ptr %0, align 8, !tbaa !10
  %18 = load i64, ptr %4, align 8, !tbaa !16
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %18, ptr %19, align 8, !tbaa !17
  br label %20

20:                                               ; preds = %14, %16
  %21 = phi ptr [ %15, %14 ], [ %17, %16 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %1, align 1, !tbaa !17
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %1, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %20, %22, %24
  %26 = load i64, ptr %4, align 8, !tbaa !16
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %26, ptr %27, align 8, !tbaa !13
  %28 = load ptr, ptr %0, align 8, !tbaa !10
  %29 = getelementptr inbounds i8, ptr %28, i64 %26
  store i8 0, ptr %29, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress optsize uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = icmp ne ptr %1, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #14
  unreachable

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  store i64 %12, ptr %4, align 8, !tbaa !16
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  br label %20

16:                                               ; preds = %9
  %17 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #11
  store ptr %17, ptr %0, align 8, !tbaa !10
  %18 = load i64, ptr %4, align 8, !tbaa !16
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %18, ptr %19, align 8, !tbaa !17
  br label %20

20:                                               ; preds = %14, %16
  %21 = phi ptr [ %15, %14 ], [ %17, %16 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %1, align 1, !tbaa !17
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %1, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %20, %22, %24
  %26 = load i64, ptr %4, align 8, !tbaa !16
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %26, ptr %27, align 8, !tbaa !13
  %28 = load ptr, ptr %0, align 8, !tbaa !10
  %29 = getelementptr inbounds i8, ptr %28, i64 %26
  store i8 0, ptr %29, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_file3.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !12, i64 8, !8, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !9, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!8, !8, i64 0}
