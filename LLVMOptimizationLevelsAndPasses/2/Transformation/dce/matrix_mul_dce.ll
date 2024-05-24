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
  %1 = alloca i32, align 4
  %2 = alloca [10 x [10 x i32]], align 16
  %3 = alloca [10 x [10 x i32]], align 16
  %4 = alloca [10 x [10 x i32]], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(4) %8)
  br label %18

18:                                               ; preds = %22, %0
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %25 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(4) %8)
  br label %18, !llvm.loop !6

30:                                               ; preds = %18
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef @.str.3)
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %9, align 4
  br label %34

34:                                               ; preds = %63, %30
  %35 = load i32, ptr %9, align 4
  %36 = load i32, ptr %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  store i32 0, ptr %10, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, ptr %10, align 4
  %41 = load i32, ptr %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4)
  %45 = load i32, ptr %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef %46)
  %48 = load i32, ptr %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %47, i32 noundef %49)
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef @.str.5)
  %52 = load i32, ptr %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 %53
  %55 = load i32, ptr %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], ptr %54, i64 0, i64 %56
  %58 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %57)
  br label %59

59:                                               ; preds = %43
  %60 = load i32, ptr %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %10, align 4
  br label %39, !llvm.loop !8

62:                                               ; preds = %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %9, align 4
  br label %34, !llvm.loop !9

66:                                               ; preds = %34
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef @.str.6)
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %9, align 4
  br label %70

70:                                               ; preds = %99, %66
  %71 = load i32, ptr %9, align 4
  %72 = load i32, ptr %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  store i32 0, ptr %10, align 4
  br label %75

75:                                               ; preds = %95, %74
  %76 = load i32, ptr %10, align 4
  %77 = load i32, ptr %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7)
  %81 = load i32, ptr %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %80, i32 noundef %82)
  %84 = load i32, ptr %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %83, i32 noundef %85)
  %87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef @.str.5)
  %88 = load i32, ptr %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 %89
  %91 = load i32, ptr %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i32], ptr %90, i64 0, i64 %92
  %94 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %93)
  br label %95

95:                                               ; preds = %79
  %96 = load i32, ptr %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %10, align 4
  br label %75, !llvm.loop !10

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %9, align 4
  br label %70, !llvm.loop !11

102:                                              ; preds = %70
  store i32 0, ptr %9, align 4
  br label %103

103:                                              ; preds = %123, %102
  %104 = load i32, ptr %9, align 4
  %105 = load i32, ptr %5, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  store i32 0, ptr %10, align 4
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i32, ptr %10, align 4
  %110 = load i32, ptr %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, ptr %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x [10 x i32]], ptr %4, i64 0, i64 %114
  %116 = load i32, ptr %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i32], ptr %115, i64 0, i64 %117
  store i32 0, ptr %118, align 4
  br label %119

119:                                              ; preds = %112
  %120 = load i32, ptr %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %10, align 4
  br label %108, !llvm.loop !12

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %9, align 4
  br label %103, !llvm.loop !13

126:                                              ; preds = %103
  store i32 0, ptr %9, align 4
  br label %127

127:                                              ; preds = %173, %126
  %128 = load i32, ptr %9, align 4
  %129 = load i32, ptr %5, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %176

131:                                              ; preds = %127
  store i32 0, ptr %10, align 4
  br label %132

132:                                              ; preds = %169, %131
  %133 = load i32, ptr %10, align 4
  %134 = load i32, ptr %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %172

136:                                              ; preds = %132
  store i32 0, ptr %11, align 4
  br label %137

137:                                              ; preds = %165, %136
  %138 = load i32, ptr %11, align 4
  %139 = load i32, ptr %6, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load i32, ptr %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 %143
  %145 = load i32, ptr %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [10 x i32], ptr %144, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = load i32, ptr %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 %150
  %152 = load i32, ptr %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [10 x i32], ptr %151, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4
  %156 = mul nsw i32 %148, %155
  %157 = load i32, ptr %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [10 x [10 x i32]], ptr %4, i64 0, i64 %158
  %160 = load i32, ptr %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [10 x i32], ptr %159, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4
  %164 = add nsw i32 %163, %156
  store i32 %164, ptr %162, align 4
  br label %165

165:                                              ; preds = %141
  %166 = load i32, ptr %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %11, align 4
  br label %137, !llvm.loop !14

168:                                              ; preds = %137
  br label %169

169:                                              ; preds = %168
  %170 = load i32, ptr %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %10, align 4
  br label %132, !llvm.loop !15

172:                                              ; preds = %132
  br label %173

173:                                              ; preds = %172
  %174 = load i32, ptr %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %9, align 4
  br label %127, !llvm.loop !16

176:                                              ; preds = %127
  %177 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef @.str.8)
  %179 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %178, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %9, align 4
  br label %180

180:                                              ; preds = %210, %176
  %181 = load i32, ptr %9, align 4
  %182 = load i32, ptr %5, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %213

184:                                              ; preds = %180
  store i32 0, ptr %10, align 4
  br label %185

185:                                              ; preds = %206, %184
  %186 = load i32, ptr %10, align 4
  %187 = load i32, ptr %8, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %209

189:                                              ; preds = %185
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.9)
  %191 = load i32, ptr %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [10 x [10 x i32]], ptr %4, i64 0, i64 %192
  %194 = load i32, ptr %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [10 x i32], ptr %193, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4
  %198 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %190, i32 noundef %197)
  %199 = load i32, ptr %10, align 4
  %200 = load i32, ptr %8, align 4
  %201 = sub nsw i32 %200, 1
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %189
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %205

205:                                              ; preds = %203, %189
  br label %206

206:                                              ; preds = %205
  %207 = load i32, ptr %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %10, align 4
  br label %185, !llvm.loop !17

209:                                              ; preds = %185
  br label %210

210:                                              ; preds = %209
  %211 = load i32, ptr %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %9, align 4
  br label %180, !llvm.loop !18

213:                                              ; preds = %180
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
