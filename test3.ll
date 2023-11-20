; ModuleID = 'test3.cpp'
source_filename = "test3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.TestStruct = type { i32, i32, i32 }

; Function Attrs: noinline norecurse nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x %struct.TestStruct], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %26, %0
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 7
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [7 x %struct.TestStruct], ptr %2, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.TestStruct, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [7 x %struct.TestStruct], ptr %2, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.TestStruct, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %13, %18
  %20 = load i32, ptr %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x %struct.TestStruct], ptr %2, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.TestStruct, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %19, %24
  store i32 %25, ptr %4, align 4
  br label %26

26:                                               ; preds = %8
  %27 = load i32, ptr %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %3, align 4
  br label %5

29:                                               ; preds = %5
  %30 = load i32, ptr %1, align 4
  ret i32 %30
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
