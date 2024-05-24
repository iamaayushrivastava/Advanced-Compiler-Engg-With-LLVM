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
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"Result of adding integers: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Hello, \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"world!\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Result of concatenating strings: \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Result of adding doubles: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_file3.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3addii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3addRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 {
  tail call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !5
  %6 = load ptr, ptr %1, align 8, !tbaa !10
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 %8, ptr %4, align 8, !tbaa !14
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %11, ptr %0, align 8, !tbaa !10
  %12 = load i64, ptr %4, align 8, !tbaa !14
  store i64 %12, ptr %5, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %0, align 8, !tbaa !10
  switch i64 %8, label %17 [
    i64 1, label %15
    i64 0, label %18
  ]

15:                                               ; preds = %13
  %16 = load i8, ptr %6, align 1, !tbaa !15
  store i8 %16, ptr %14, align 1, !tbaa !15
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %6, i64 %8, i1 false)
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !14
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !13
  %21 = load ptr, ptr %0, align 8, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %23 = load ptr, ptr %2, align 8, !tbaa !10
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !13
  %26 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %23, i64 noundef %25)
          to label %33 unwind label %27

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %0, align 8, !tbaa !10
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %29) #12
  br label %32

32:                                               ; preds = %27, %31
  resume { ptr, i32 } %28

33:                                               ; preds = %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_Z3addddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
  %4 = fadd double %0, %1
  %5 = fadd double %4, %2
  ret double %5
}

; Function Attrs: norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %1 = alloca i64, align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 27)
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 8)
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds %"class.std::basic_ios", ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  tail call void @_ZSt16__throw_bad_castv() #13
  unreachable

15:                                               ; preds = %0
  %16 = getelementptr inbounds %"class.std::ctype", ptr %12, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !27
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.std::ctype", ptr %12, i64 0, i32 9, i64 10
  %21 = load i8, ptr %20, align 1, !tbaa !15
  br label %27

22:                                               ; preds = %15
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %12)
  %23 = load ptr, ptr %12, align 8, !tbaa !16
  %24 = getelementptr inbounds ptr, ptr %23, i64 6
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef signext i8 %25(ptr noundef nonnull align 8 dereferenceable(570) %12, i8 noundef signext 10)
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi i8 [ %21, %19 ], [ %26, %22 ]
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext %28)
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %31, ptr %3, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %31, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 7, ptr %32, align 8, !tbaa !13
  %33 = getelementptr inbounds i8, ptr %3, i64 23
  store i8 0, ptr %33, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %34, ptr %4, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %34, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 6, ptr %35, align 8, !tbaa !13
  %36 = getelementptr inbounds i8, ptr %4, i64 22
  store i8 0, ptr %36, align 2, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %37, ptr %2, align 8, !tbaa !5, !alias.scope !30
  %38 = load ptr, ptr %3, align 8, !tbaa !10, !noalias !30
  %39 = load i64, ptr %32, align 8, !tbaa !13, !noalias !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12, !noalias !30
  store i64 %39, ptr %1, align 8, !tbaa !14, !noalias !30
  %40 = icmp ugt i64 %39, 15
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
          to label %43 unwind label %142

43:                                               ; preds = %41
  store ptr %42, ptr %2, align 8, !tbaa !10, !alias.scope !30
  %44 = load i64, ptr %1, align 8, !tbaa !14, !noalias !30
  store i64 %44, ptr %37, align 8, !tbaa !15, !alias.scope !30
  br label %45

45:                                               ; preds = %43, %27
  %46 = load ptr, ptr %2, align 8, !tbaa !10, !alias.scope !30
  switch i64 %39, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %45
  %48 = load i8, ptr %38, align 1, !tbaa !15
  store i8 %48, ptr %46, align 1, !tbaa !15
  br label %50

49:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %38, i64 %39, i1 false)
  br label %50

50:                                               ; preds = %49, %47, %45
  %51 = load i64, ptr %1, align 8, !tbaa !14, !noalias !30
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 %51, ptr %52, align 8, !tbaa !13, !alias.scope !30
  %53 = load ptr, ptr %2, align 8, !tbaa !10, !alias.scope !30
  %54 = getelementptr inbounds i8, ptr %53, i64 %51
  store i8 0, ptr %54, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12, !noalias !30
  %55 = load ptr, ptr %4, align 8, !tbaa !10, !noalias !30
  %56 = load i64, ptr %35, align 8, !tbaa !13, !noalias !30
  %57 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %55, i64 noundef %56)
          to label %63 unwind label %58

58:                                               ; preds = %50
  %59 = landingpad { ptr, i32 }
          cleanup
  %60 = load ptr, ptr %2, align 8, !tbaa !10, !alias.scope !30
  %61 = icmp eq ptr %60, %37
  br i1 %61, label %144, label %62

62:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %60) #12
  br label %144

63:                                               ; preds = %50
  %64 = load ptr, ptr %4, align 8, !tbaa !10
  %65 = icmp eq ptr %64, %34
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call void @_ZdlPv(ptr noundef %64) #12
  br label %67

67:                                               ; preds = %63, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  %68 = load ptr, ptr %3, align 8, !tbaa !10
  %69 = icmp eq ptr %68, %31
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %68) #12
  br label %71

71:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  %72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 33)
          to label %73 unwind label %154

73:                                               ; preds = %71
  %74 = load ptr, ptr %2, align 8, !tbaa !10
  %75 = load i64, ptr %52, align 8, !tbaa !13
  %76 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %74, i64 noundef %75)
          to label %77 unwind label %154

77:                                               ; preds = %73
  %78 = load ptr, ptr %76, align 8, !tbaa !16
  %79 = getelementptr i8, ptr %78, i64 -24
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds i8, ptr %76, i64 %80
  %82 = getelementptr inbounds %"class.std::basic_ios", ptr %81, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  invoke void @_ZSt16__throw_bad_castv() #13
          to label %86 unwind label %154

86:                                               ; preds = %85
  unreachable

87:                                               ; preds = %77
  %88 = getelementptr inbounds %"class.std::ctype", ptr %83, i64 0, i32 8
  %89 = load i8, ptr %88, align 8, !tbaa !27
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.std::ctype", ptr %83, i64 0, i32 9, i64 10
  %93 = load i8, ptr %92, align 1, !tbaa !15
  br label %100

94:                                               ; preds = %87
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %83)
          to label %95 unwind label %154

95:                                               ; preds = %94
  %96 = load ptr, ptr %83, align 8, !tbaa !16
  %97 = getelementptr inbounds ptr, ptr %96, i64 6
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef signext i8 %98(ptr noundef nonnull align 8 dereferenceable(570) %83, i8 noundef signext 10)
          to label %100 unwind label %154

100:                                              ; preds = %95, %91
  %101 = phi i8 [ %93, %91 ], [ %99, %95 ]
  %102 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %76, i8 noundef signext %101)
          to label %103 unwind label %154

103:                                              ; preds = %100
  %104 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %102)
          to label %105 unwind label %154

105:                                              ; preds = %103
  %106 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 26)
          to label %107 unwind label %156

107:                                              ; preds = %105
  %108 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef 7.000000e+00)
          to label %109 unwind label %156

109:                                              ; preds = %107
  %110 = load ptr, ptr %108, align 8, !tbaa !16
  %111 = getelementptr i8, ptr %110, i64 -24
  %112 = load i64, ptr %111, align 8
  %113 = getelementptr inbounds i8, ptr %108, i64 %112
  %114 = getelementptr inbounds %"class.std::basic_ios", ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !18
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  invoke void @_ZSt16__throw_bad_castv() #13
          to label %118 unwind label %156

118:                                              ; preds = %117
  unreachable

119:                                              ; preds = %109
  %120 = getelementptr inbounds %"class.std::ctype", ptr %115, i64 0, i32 8
  %121 = load i8, ptr %120, align 8, !tbaa !27
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %"class.std::ctype", ptr %115, i64 0, i32 9, i64 10
  %125 = load i8, ptr %124, align 1, !tbaa !15
  br label %132

126:                                              ; preds = %119
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %115)
          to label %127 unwind label %156

127:                                              ; preds = %126
  %128 = load ptr, ptr %115, align 8, !tbaa !16
  %129 = getelementptr inbounds ptr, ptr %128, i64 6
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef signext i8 %130(ptr noundef nonnull align 8 dereferenceable(570) %115, i8 noundef signext 10)
          to label %132 unwind label %156

132:                                              ; preds = %127, %123
  %133 = phi i8 [ %125, %123 ], [ %131, %127 ]
  %134 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %108, i8 noundef signext %133)
          to label %135 unwind label %156

135:                                              ; preds = %132
  %136 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %134)
          to label %137 unwind label %156

137:                                              ; preds = %135
  %138 = load ptr, ptr %2, align 8, !tbaa !10
  %139 = icmp eq ptr %138, %37
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  call void @_ZdlPv(ptr noundef %138) #12
  br label %141

141:                                              ; preds = %137, %140
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  ret i32 0

142:                                              ; preds = %41
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %144

144:                                              ; preds = %58, %62, %142
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %59, %62 ], [ %59, %58 ]
  %146 = load ptr, ptr %4, align 8, !tbaa !10
  %147 = icmp eq ptr %146, %34
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  call void @_ZdlPv(ptr noundef %146) #12
  br label %149

149:                                              ; preds = %148, %144
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  %150 = load ptr, ptr %3, align 8, !tbaa !10
  %151 = icmp eq ptr %150, %31
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @_ZdlPv(ptr noundef %150) #12
  br label %153

153:                                              ; preds = %152, %149
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %163

154:                                              ; preds = %103, %100, %95, %94, %85, %73, %71
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %158

156:                                              ; preds = %135, %132, %127, %126, %117, %107, %105
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi { ptr, i32 } [ %157, %156 ], [ %155, %154 ]
  %160 = load ptr, ptr %2, align 8, !tbaa !10
  %161 = icmp eq ptr %160, %37
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  call void @_ZdlPv(ptr noundef %160) #12
  br label %163

163:                                              ; preds = %162, %158, %153
  %164 = phi { ptr, i32 } [ %145, %153 ], [ %159, %158 ], [ %159, %162 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  resume { ptr, i32 } %164
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_file3.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

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
!14 = !{!12, !12, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !9, i64 0}
!18 = !{!19, !7, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !7, i64 216, !8, i64 224, !26, i64 225, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256}
!20 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !7, i64 40, !23, i64 48, !8, i64 64, !24, i64 192, !7, i64 200, !25, i64 208}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !12, i64 8}
!24 = !{!"int", !8, i64 0}
!25 = !{!"_ZTSSt6locale", !7, i64 0}
!26 = !{!"bool", !8, i64 0}
!27 = !{!28, !8, i64 56}
!28 = !{!"_ZTSSt5ctypeIcE", !29, i64 0, !7, i64 16, !26, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!29 = !{!"_ZTSNSt6locale5facetE", !24, i64 8}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!32 = distinct !{!32, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
