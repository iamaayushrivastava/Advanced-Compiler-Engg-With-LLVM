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

; Function Attrs: uwtable
define dso_local void @_Z3addRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !8, !alias.scope !5
  %6 = load ptr, ptr %1, align 8, !tbaa !13, !noalias !5
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !16, !noalias !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11, !noalias !5
  store i64 %8, ptr %4, align 8, !tbaa !17, !noalias !5
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %11, ptr %0, align 8, !tbaa !13, !alias.scope !5
  %12 = load i64, ptr %4, align 8, !tbaa !17, !noalias !5
  store i64 %12, ptr %5, align 8, !tbaa !18, !alias.scope !5
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %11, %10 ], [ %5, %3 ]
  switch i64 %8, label %17 [
    i64 1, label %15
    i64 0, label %18
  ]

15:                                               ; preds = %13
  %16 = load i8, ptr %6, align 1, !tbaa !18
  store i8 %16, ptr %14, align 1, !tbaa !18
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %6, i64 %8, i1 false)
  br label %18

18:                                               ; preds = %17, %15, %13
  %19 = load i64, ptr %4, align 8, !tbaa !17, !noalias !5
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !16, !alias.scope !5
  %21 = load ptr, ptr %0, align 8, !tbaa !13, !alias.scope !5
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11, !noalias !5
  %23 = load ptr, ptr %2, align 8, !tbaa !13, !noalias !5
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !16, !noalias !5
  %26 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %23, i64 noundef %25)
          to label %33 unwind label %27

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %0, align 8, !tbaa !13, !alias.scope !5
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %29) #11
  br label %32

32:                                               ; preds = %31, %27
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
define dso_local noundef i32 @main() local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 27)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 8)
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = getelementptr inbounds %"class.std::basic_ios", ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  tail call void @_ZSt16__throw_bad_castv() #12
  unreachable

14:                                               ; preds = %0
  %15 = getelementptr inbounds %"class.std::ctype", ptr %11, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !30
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.std::ctype", ptr %11, i64 0, i32 9, i64 10
  %20 = load i8, ptr %19, align 1, !tbaa !18
  br label %26

21:                                               ; preds = %14
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %22 = load ptr, ptr %11, align 8, !tbaa !19
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10)
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i8 [ %20, %18 ], [ %25, %21 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %27)
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %30, ptr %2, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %30, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 7, ptr %31, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %2, i64 23
  store i8 0, ptr %32, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %33, ptr %3, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %33, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 6, ptr %34, align 8, !tbaa !16
  %35 = getelementptr inbounds i8, ptr %3, i64 22
  store i8 0, ptr %35, align 2, !tbaa !18
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  store ptr %36, ptr %1, align 8, !tbaa !8, !alias.scope !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %36, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  store i64 7, ptr %37, align 8, !tbaa !16, !alias.scope !33
  %38 = getelementptr inbounds i8, ptr %1, i64 23
  store i8 0, ptr %38, align 1, !tbaa !18
  %39 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %33, i64 noundef 6)
          to label %45 unwind label %40

40:                                               ; preds = %26
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = load ptr, ptr %1, align 8, !tbaa !13, !alias.scope !33
  %43 = icmp eq ptr %42, %36
  br i1 %43, label %124, label %44

44:                                               ; preds = %40
  call void @_ZdlPv(ptr noundef %42) #11
  br label %124

45:                                               ; preds = %26
  %46 = load ptr, ptr %3, align 8, !tbaa !13
  %47 = icmp eq ptr %46, %33
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @_ZdlPv(ptr noundef %46) #11
  br label %49

49:                                               ; preds = %45, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  %50 = load ptr, ptr %2, align 8, !tbaa !13
  %51 = icmp eq ptr %50, %30
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %50) #11
  br label %53

53:                                               ; preds = %49, %52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 33)
          to label %55 unwind label %133

55:                                               ; preds = %53
  %56 = load ptr, ptr %1, align 8, !tbaa !13
  %57 = load i64, ptr %37, align 8, !tbaa !16
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %56, i64 noundef %57)
          to label %59 unwind label %133

59:                                               ; preds = %55
  %60 = load ptr, ptr %58, align 8, !tbaa !19
  %61 = getelementptr i8, ptr %60, i64 -24
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds i8, ptr %58, i64 %62
  %64 = getelementptr inbounds %"class.std::basic_ios", ptr %63, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %68 unwind label %133

68:                                               ; preds = %67
  unreachable

69:                                               ; preds = %59
  %70 = getelementptr inbounds %"class.std::ctype", ptr %65, i64 0, i32 8
  %71 = load i8, ptr %70, align 8, !tbaa !30
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.std::ctype", ptr %65, i64 0, i32 9, i64 10
  %75 = load i8, ptr %74, align 1, !tbaa !18
  br label %82

76:                                               ; preds = %69
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %65)
          to label %77 unwind label %133

77:                                               ; preds = %76
  %78 = load ptr, ptr %65, align 8, !tbaa !19
  %79 = getelementptr inbounds ptr, ptr %78, i64 6
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef signext i8 %80(ptr noundef nonnull align 8 dereferenceable(570) %65, i8 noundef signext 10)
          to label %82 unwind label %133

82:                                               ; preds = %77, %73
  %83 = phi i8 [ %75, %73 ], [ %81, %77 ]
  %84 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %58, i8 noundef signext %83)
          to label %85 unwind label %133

85:                                               ; preds = %82
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %87 unwind label %133

87:                                               ; preds = %85
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 26)
          to label %89 unwind label %135

89:                                               ; preds = %87
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef 7.000000e+00)
          to label %91 unwind label %135

91:                                               ; preds = %89
  %92 = load ptr, ptr %90, align 8, !tbaa !19
  %93 = getelementptr i8, ptr %92, i64 -24
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr inbounds i8, ptr %90, i64 %94
  %96 = getelementptr inbounds %"class.std::basic_ios", ptr %95, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !21
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %100 unwind label %135

100:                                              ; preds = %99
  unreachable

101:                                              ; preds = %91
  %102 = getelementptr inbounds %"class.std::ctype", ptr %97, i64 0, i32 8
  %103 = load i8, ptr %102, align 8, !tbaa !30
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %"class.std::ctype", ptr %97, i64 0, i32 9, i64 10
  %107 = load i8, ptr %106, align 1, !tbaa !18
  br label %114

108:                                              ; preds = %101
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %97)
          to label %109 unwind label %135

109:                                              ; preds = %108
  %110 = load ptr, ptr %97, align 8, !tbaa !19
  %111 = getelementptr inbounds ptr, ptr %110, i64 6
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef signext i8 %112(ptr noundef nonnull align 8 dereferenceable(570) %97, i8 noundef signext 10)
          to label %114 unwind label %135

114:                                              ; preds = %109, %105
  %115 = phi i8 [ %107, %105 ], [ %113, %109 ]
  %116 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %90, i8 noundef signext %115)
          to label %117 unwind label %135

117:                                              ; preds = %114
  %118 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %119 unwind label %135

119:                                              ; preds = %117
  %120 = load ptr, ptr %1, align 8, !tbaa !13
  %121 = icmp eq ptr %120, %36
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %120) #11
  br label %123

123:                                              ; preds = %119, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #11
  ret i32 0

124:                                              ; preds = %40, %44
  %125 = load ptr, ptr %3, align 8, !tbaa !13
  %126 = icmp eq ptr %125, %33
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void @_ZdlPv(ptr noundef %125) #11
  br label %128

128:                                              ; preds = %127, %124
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  %129 = load ptr, ptr %2, align 8, !tbaa !13
  %130 = icmp eq ptr %129, %30
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %129) #11
  br label %132

132:                                              ; preds = %131, %128
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %142

133:                                              ; preds = %85, %82, %77, %76, %67, %55, %53
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %137

135:                                              ; preds = %117, %114, %109, %108, %99, %89, %87
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi { ptr, i32 } [ %136, %135 ], [ %134, %133 ]
  %139 = load ptr, ptr %1, align 8, !tbaa !13
  %140 = icmp eq ptr %139, %36
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  call void @_ZdlPv(ptr noundef %139) #11
  br label %142

142:                                              ; preds = %141, %137, %132
  %143 = phi { ptr, i32 } [ %41, %132 ], [ %138, %137 ], [ %138, %141 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #11
  resume { ptr, i32 } %143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_file3.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!7 = distinct !{!7, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!14, !10, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !15, i64 8, !11, i64 16}
!15 = !{!"long", !11, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !12, i64 0}
!21 = !{!22, !10, i64 240}
!22 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0, !10, i64 216, !11, i64 224, !29, i64 225, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256}
!23 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !10, i64 40, !26, i64 48, !11, i64 64, !27, i64 192, !10, i64 200, !28, i64 208}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !15, i64 8}
!27 = !{!"int", !11, i64 0}
!28 = !{!"_ZTSSt6locale", !10, i64 0}
!29 = !{!"bool", !11, i64 0}
!30 = !{!31, !11, i64 56}
!31 = !{!"_ZTSSt5ctypeIcE", !32, i64 0, !10, i64 16, !29, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!32 = !{!"_ZTSNSt6locale5facetE", !27, i64 8}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!35 = distinct !{!35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!36 = distinct !{!36, !37, !"_Z3addRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_: argument 0"}
!37 = distinct !{!37, !"_Z3addRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_"}
