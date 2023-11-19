; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TestStruct = type { i32, i32, i32 }

$_ZN10TestStructC2Ev = comdat any

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 {
  %1 = alloca %struct.TestStruct, align 4
  %2 = alloca i32, align 4
  call void @_ZN10TestStructC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %1) #2
  %3 = getelementptr inbounds %struct.TestStruct, ptr %1, i32 0, i32 0
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.TestStruct, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %4, %6
  %8 = getelementptr inbounds %struct.TestStruct, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %7, %9
  store i32 %10, ptr %2, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10TestStructC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TestStruct, ptr %3, i32 0, i32 0
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.TestStruct, ptr %3, i32 0, i32 1
  store i32 2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.TestStruct, ptr %3, i32 0, i32 2
  store i32 3, ptr %6, align 4
  ret void
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 15.0.7"}
