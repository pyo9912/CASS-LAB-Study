; ModuleID = 'Test.c'
source_filename = "Test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"a(3): %d  b(4): %d  c(3.0): %.1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* %2, align 4
  store i32 4, i32* %3, align 4
  store float 3.000000e+00, float* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 0
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 1, %11
  store i32 %12, i32* %3, align 4
  %13 = load float, float* %4, align 4
  %14 = fmul float %13, 1.000000e+00
  store float %14, float* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load float, float* %4, align 4
  %18 = fpext float %17 to double
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %15, i32 %16, double %18)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
