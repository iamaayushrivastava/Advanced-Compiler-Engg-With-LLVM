; ModuleID = './IR_Files/matrix_mul.ll'
source_filename = "./Code/matrix_mul.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [42 x i8] c"Enter rows and columns for first matrix: \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Enter rows and columns for second matrix: \00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Error! column of first matrix not equal to row of second.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Enter elements of matrix 1:\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Enter element a\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Enter elements of matrix 2:\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Enter element b\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Output Matrix: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_matrix_mul.cpp, ptr null }]

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

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca [10 x [10 x i32]], align 16
  %2 = alloca [10 x [10 x i32]], align 16
  %3 = alloca [10 x [10 x i32]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(4) %7)
  br label %14

14:                                               ; preds = %18, %0
  %15 = load i32, ptr %5, align 4
  %16 = load i32, ptr %6, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %21 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %25 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(4) %7)
  br label %14, !llvm.loop !6

26:                                               ; preds = %14
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef @.str.3)
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %30

30:                                               ; preds = %52, %26
  %.01 = phi i32 [ 0, %26 ], [ %53, %52 ]
  %31 = load i32, ptr %4, align 4
  %32 = icmp slt i32 %.01, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %49, %33
  %.02 = phi i32 [ 0, %33 ], [ %50, %49 ]
  %35 = load i32, ptr %5, align 4
  %36 = icmp slt i32 %.02, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4)
  %39 = add nsw i32 %.01, 1
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef %39)
  %41 = add nsw i32 %.02, 1
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef %41)
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef @.str.5)
  %44 = sext i32 %.01 to i64
  %45 = getelementptr inbounds [10 x [10 x i32]], ptr %1, i64 0, i64 %44
  %46 = sext i32 %.02 to i64
  %47 = getelementptr inbounds [10 x i32], ptr %45, i64 0, i64 %46
  %48 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %47)
  br label %49

49:                                               ; preds = %37
  %50 = add nsw i32 %.02, 1
  br label %34, !llvm.loop !8

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %.01, 1
  br label %30, !llvm.loop !9

54:                                               ; preds = %30
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef @.str.6)
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %58

58:                                               ; preds = %80, %54
  %.1 = phi i32 [ 0, %54 ], [ %81, %80 ]
  %59 = load i32, ptr %6, align 4
  %60 = icmp slt i32 %.1, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %77, %61
  %.13 = phi i32 [ 0, %61 ], [ %78, %77 ]
  %63 = load i32, ptr %7, align 4
  %64 = icmp slt i32 %.13, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7)
  %67 = add nsw i32 %.1, 1
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef %67)
  %69 = add nsw i32 %.13, 1
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %68, i32 noundef %69)
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef @.str.5)
  %72 = sext i32 %.1 to i64
  %73 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 %72
  %74 = sext i32 %.13 to i64
  %75 = getelementptr inbounds [10 x i32], ptr %73, i64 0, i64 %74
  %76 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %75)
  br label %77

77:                                               ; preds = %65
  %78 = add nsw i32 %.13, 1
  br label %62, !llvm.loop !10

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79
  %81 = add nsw i32 %.1, 1
  br label %58, !llvm.loop !11

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %98, %82
  %.2 = phi i32 [ 0, %82 ], [ %99, %98 ]
  %84 = load i32, ptr %4, align 4
  %85 = icmp slt i32 %.2, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %95, %86
  %.24 = phi i32 [ 0, %86 ], [ %96, %95 ]
  %88 = load i32, ptr %7, align 4
  %89 = icmp slt i32 %.24, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = sext i32 %.2 to i64
  %92 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 %91
  %93 = sext i32 %.24 to i64
  %94 = getelementptr inbounds [10 x i32], ptr %92, i64 0, i64 %93
  store i32 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %90
  %96 = add nsw i32 %.24, 1
  br label %87, !llvm.loop !12

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %.2, 1
  br label %83, !llvm.loop !13

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %136, %100
  %.3 = phi i32 [ 0, %100 ], [ %137, %136 ]
  %102 = load i32, ptr %4, align 4
  %103 = icmp slt i32 %.3, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %133, %104
  %.35 = phi i32 [ 0, %104 ], [ %134, %133 ]
  %106 = load i32, ptr %7, align 4
  %107 = icmp slt i32 %.35, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %130, %108
  %.0 = phi i32 [ 0, %108 ], [ %131, %130 ]
  %110 = load i32, ptr %5, align 4
  %111 = icmp slt i32 %.0, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = sext i32 %.3 to i64
  %114 = getelementptr inbounds [10 x [10 x i32]], ptr %1, i64 0, i64 %113
  %115 = sext i32 %.0 to i64
  %116 = getelementptr inbounds [10 x i32], ptr %114, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4
  %118 = sext i32 %.0 to i64
  %119 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 %118
  %120 = sext i32 %.35 to i64
  %121 = getelementptr inbounds [10 x i32], ptr %119, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4
  %123 = mul nsw i32 %117, %122
  %124 = sext i32 %.3 to i64
  %125 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 %124
  %126 = sext i32 %.35 to i64
  %127 = getelementptr inbounds [10 x i32], ptr %125, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4
  %129 = add nsw i32 %128, %123
  store i32 %129, ptr %127, align 4
  br label %130

130:                                              ; preds = %112
  %131 = add nsw i32 %.0, 1
  br label %109, !llvm.loop !14

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132
  %134 = add nsw i32 %.35, 1
  br label %105, !llvm.loop !15

135:                                              ; preds = %105
  br label %136

136:                                              ; preds = %135
  %137 = add nsw i32 %.3, 1
  br label %101, !llvm.loop !16

138:                                              ; preds = %101
  %139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef @.str.8)
  %141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %140, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %142

142:                                              ; preds = %166, %138
  %.4 = phi i32 [ 0, %138 ], [ %167, %166 ]
  %143 = load i32, ptr %4, align 4
  %144 = icmp slt i32 %.4, %143
  br i1 %144, label %145, label %168

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %163, %145
  %.46 = phi i32 [ 0, %145 ], [ %164, %163 ]
  %147 = load i32, ptr %7, align 4
  %148 = icmp slt i32 %.46, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %146
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.9)
  %151 = sext i32 %.4 to i64
  %152 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 %151
  %153 = sext i32 %.46 to i64
  %154 = getelementptr inbounds [10 x i32], ptr %152, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4
  %156 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %150, i32 noundef %155)
  %157 = load i32, ptr %7, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp eq i32 %.46, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %162

162:                                              ; preds = %160, %149
  br label %163

163:                                              ; preds = %162
  %164 = add nsw i32 %.46, 1
  br label %146, !llvm.loop !17

165:                                              ; preds = %146
  br label %166

166:                                              ; preds = %165
  %167 = add nsw i32 %.4, 1
  br label %142, !llvm.loop !18

168:                                              ; preds = %142
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_matrix_mul.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
