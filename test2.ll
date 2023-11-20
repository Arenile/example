; ModuleID = 'test2.cpp'
source_filename = "test2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.TestStruct = type { i32, i32, i32 }

; Function Attrs: noinline norecurse nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca [7 x %struct.TestStruct], align 4
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [7 x %struct.TestStruct], ptr %1, i64 0, i64 2
  %4 = getelementptr inbounds %struct.TestStruct, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [7 x %struct.TestStruct], ptr %1, i64 0, i64 2
  %7 = getelementptr inbounds %struct.TestStruct, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %5, %8
  %10 = getelementptr inbounds [7 x %struct.TestStruct], ptr %1, i64 0, i64 2
  %11 = getelementptr inbounds %struct.TestStruct, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add nsw i32 %9, %12
  store i32 %13, ptr %2, align 4
  ret i32 0
}

attributes #0 = { noinline norecurse nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 0]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 15.0.0 (clang-1500.0.40.1)"}
