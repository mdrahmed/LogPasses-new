; ModuleID = 'example.ll'
source_filename = "example.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [15 x i8] c"It's a string\0A\00", align 1
@.str.1 = private unnamed_addr constant [134 x i8] c"Provide 2 inputs => a,b.\0AIf a is greater than 10 then subtract(string) function will be called. Otherwise str(string) will be called\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"a is greater than 10\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"GoingtoStrr function\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"a is less than 10.\0AInt function is called\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_example.cpp, i8* null }]
@0 = private unnamed_addr constant [13 x i8] c"\0A\0AUser:  %s\0A\00", align 1
@1 = private unnamed_addr constant [147 x i8] c"main is calling _Z8subtractii\0A_Z8subtractii is called from this callInst  %30 = call noundef i32 @_Z8subtractii(i32 noundef %28, i32 noundef %29)\0A\00", align 1
@str = private unnamed_addr constant [26 x i8] c"Tue Mar 14 12:59:46 2023\0A\00", align 1
@str.1 = private unnamed_addr constant [22 x i8] c"Unix time: 1678820386\00", align 1
@2 = private unnamed_addr constant [25 x i8] c"\0Aarguments:  %s\0A %s\0A %s\0A\00", align 1
@3 = private unnamed_addr constant [15 x i8] c"_Z8subtractii \00", align 1
@4 = private unnamed_addr constant [21 x i8] c"_Z8subtractii i32 %0\00", align 1
@5 = private unnamed_addr constant [27 x i8] c"_Z8subtractii i32 %0i32 %1\00", align 1
@6 = private unnamed_addr constant [19 x i8] c"arg_values: %s\0A%s\0A\00", align 1
@str.2 = private unnamed_addr constant [29 x i8] c"Total Process time:0.000011\0A\00", align 1
@7 = private unnamed_addr constant [13 x i8] c"\0A\0AUser:  %s\0A\00", align 1
@8 = private unnamed_addr constant [342 x i8] c"main is calling _Z4strrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0A_Z4strrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE is called from this callInst  %15 = invoke noundef i32 @_Z4strrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%\22class.std::__cxx11::basic_string\22* noundef %4)\0A          to label %16 unwind label %21\0A\00", align 1
@str.3 = private unnamed_addr constant [26 x i8] c"Tue Mar 14 12:59:46 2023\0A\00", align 1
@str.4 = private unnamed_addr constant [22 x i8] c"Unix time: 1678820386\00", align 1
@9 = private unnamed_addr constant [21 x i8] c"\0Aarguments:  %s\0A %s\0A\00", align 1
@10 = private unnamed_addr constant [61 x i8] c"_Z4strrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE \00", align 1
@11 = private unnamed_addr constant [100 x i8] c"_Z4strrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE %\22class.std::__cxx11::basic_string\22* %0\00", align 1
@12 = private unnamed_addr constant [16 x i8] c"arg_values: %s\0A\00", align 1
@str.5 = private unnamed_addr constant [29 x i8] c"Total Process time:0.000010\0A\00", align 1
@13 = private unnamed_addr constant [13 x i8] c"\0A\0AUser:  %s\0A\00", align 1
@14 = private unnamed_addr constant [534 x i8] c"main is calling _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_\0A_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ is called from this callInst  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%\22class.std::__cxx11::basic_string\22* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %\22class.std::allocator\22* noundef nonnull align 1 dereferenceable(1) %5)\0A          to label %14 unwind label %17\0A\00", align 1
@15 = private unnamed_addr constant [13 x i8] c"\0A\0AUser:  %s\0A\00", align 1
@16 = private unnamed_addr constant [320 x i8] c"main is calling _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev\0A_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev is called from this callInst  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%\22class.std::__cxx11::basic_string\22* noundef nonnull align 8 dereferenceable(32) %4) #3\0A\00", align 1
@17 = private unnamed_addr constant [13 x i8] c"\0A\0AUser:  %s\0A\00", align 1
@18 = private unnamed_addr constant [320 x i8] c"main is calling _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev\0A_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev is called from this callInst  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%\22class.std::__cxx11::basic_string\22* noundef nonnull align 8 dereferenceable(32) %4) #3\0A\00", align 1

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z8subtractii(i32 noundef %0, i32 noundef %1) #4 {
  %calltmp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str, i32 0, i32 0))
  %calltmp1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.1, i32 0, i32 0))
  %calltmp2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @5, i32 0, i32 0))
  %calltmp3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i32 %0, i32 %1)
  %calltmp4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str.2, i32 0, i32 0))
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z4strrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #5 {
  %calltmp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.3, i32 0, i32 0))
  %calltmp1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.4, i32 0, i32 0))
  %calltmp2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @11, i32 0, i32 0))
  %2 = load %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, align 8
  %calltmp3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), %"class.std::__cxx11::basic_string" %2)
  %calltmp4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str.5, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([134 x i8], [134 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @scanf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* noundef %2, i32* noundef %3)
  %10 = load i32, i32* %2, align 4
  %11 = icmp sgt i32 %10, 10
  br i1 %11, label %12, label %26

12:                                               ; preds = %0
  %calltmp2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([534 x i8], [534 x i8]* @14, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5)
          to label %14 unwind label %17

14:                                               ; preds = %12
  %calltmp1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([342 x i8], [342 x i8]* @8, i32 0, i32 0))
  %15 = invoke noundef i32 @_Z4strrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %4)
          to label %16 unwind label %21

16:                                               ; preds = %14
  %calltmp3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([320 x i8], [320 x i8]* @16, i32 0, i32 0))
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #3
  br label %31

17:                                               ; preds = %12
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %6, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %14
  %22 = landingpad { i8*, i32 }
          cleanup
  %calltmp4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([320 x i8], [320 x i8]* @18, i32 0, i32 0))
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %6, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %7, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #3
  br label %25

25:                                               ; preds = %21, %17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #3
  br label %32

26:                                               ; preds = %0
  %calltmp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @1, i32 0, i32 0))
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call noundef i32 @_Z8subtractii(i32 noundef %28, i32 noundef %29)
  br label %31

31:                                               ; preds = %26, %16
  ret i32 0

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = insertvalue { i8*, i32 } undef, i8* %33, 0
  %36 = insertvalue { i8*, i32 } %35, i32 %34, 1
  resume { i8*, i32 } %36
}

declare i32 @scanf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_example.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.6"}
