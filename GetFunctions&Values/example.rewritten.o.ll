; ModuleID = 'example.rewritten.o'
source_filename = "example.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"add func: %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Num is less than 10\00", align 1
@0 = private unnamed_addr constant [31 x i8] c"\0Aarguments to %s:  %s\0A %s\0A %s\0A\00", align 1
@1 = private unnamed_addr constant [18 x i8] c"llvm.dbg.declare \00", align 1
@2 = private unnamed_addr constant [31 x i8] c"\0Aarguments to %s:  %s\0A %s\0A %s\0A\00", align 1
@3 = private unnamed_addr constant [18 x i8] c"llvm.dbg.declare \00", align 1
@4 = private unnamed_addr constant [31 x i8] c"\0Aarguments to %s:  %s\0A %s\0A %s\0A\00", align 1
@5 = private unnamed_addr constant [18 x i8] c"llvm.dbg.declare \00", align 1
@6 = private unnamed_addr constant [31 x i8] c"\0Aarguments to %s:  %s\0A %s\0A %s\0A\00", align 1
@7 = private unnamed_addr constant [18 x i8] c"llvm.dbg.declare \00", align 1
@8 = private unnamed_addr constant [31 x i8] c"\0Aarguments to %s:  %s\0A %s\0A %s\0A\00", align 1
@9 = private unnamed_addr constant [16 x i8] c"__isoc99_scanf \00", align 1
@10 = private unnamed_addr constant [27 x i8] c"\0Aarguments to %s:  %s\0A %s\0A\00", align 1
@11 = private unnamed_addr constant [10 x i8] c"_Z3addii \00", align 1
@12 = private unnamed_addr constant [27 x i8] c"\0Aarguments to %s:  %s\0A %s\0A\00", align 1
@13 = private unnamed_addr constant [8 x i8] c"printf \00", align 1
@14 = private unnamed_addr constant [27 x i8] c"\0Aarguments to %s:  %s\0A %s\0A\00", align 1
@15 = private unnamed_addr constant [8 x i8] c"printf \00", align 1
@16 = private unnamed_addr constant [23 x i8] c"\0Aarguments to %s:  %s\0A\00", align 1
@17 = private unnamed_addr constant [8 x i8] c"printf \00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3addii(i32 noundef %a, i32 noundef %b) #0 !dbg !10 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %a.addr, align 4, !dbg !19
  %1 = load i32, i32* %b.addr, align 4, !dbg !20
  %add = add nsw i32 %0, %1, !dbg !21
  ret i32 %add, !dbg !22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #2 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  %calltmp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @0, i32 0, i32 0), [18 x i8] c"llvm.dbg.declare \00"), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !31, metadata !DIExpression()), !dbg !30
  store i8** %argv, i8*** %argv.addr, align 8
  %calltmp5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1, i32 0, i32 0), [18 x i8] c"llvm.dbg.declare \00"), !dbg !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !33, metadata !DIExpression()), !dbg !32
  %calltmp6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), [18 x i8] c"llvm.dbg.declare \00"), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %a, metadata !35, metadata !DIExpression()), !dbg !34
  %calltmp7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @3, i32 0, i32 0), [18 x i8] c"llvm.dbg.declare \00"), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %b, metadata !37, metadata !DIExpression()), !dbg !36
  %calltmp8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %a, i32* %b), !dbg !38
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* noundef %a, i32* noundef %b), !dbg !38
  %0 = load i32, i32* %a, align 4, !dbg !39
  %1 = load i32, i32* %b, align 4, !dbg !40
  %calltmp9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @11, i32 0, i32 0), i32 %0, i32 %1), !dbg !41
  %call1 = call noundef i32 @_Z3addii(i32 noundef %0, i32 noundef %1), !dbg !41
  %calltmp10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %call1), !dbg !42
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call1), !dbg !42
  %2 = load i32, i32* %a, align 4, !dbg !43
  %cmp = icmp sgt i32 %2, 10, !dbg !45
  br i1 %cmp, label %if.then, label %if.else, !dbg !46

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %a, align 4, !dbg !47
  %add = add nsw i32 %3, 2, !dbg !49
  %calltmp11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %add), !dbg !50
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %add), !dbg !50
  br label %if.end, !dbg !51

if.else:                                          ; preds = %entry
  %calltmp12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)), !dbg !52
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)), !dbg !52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !54
}

declare i32 @__isoc99_scanf(i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 14.0.6-++20220622053131+f28c006a5895-1~exp1~20220622173215.157", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example.cpp", directory: "/home/raihan/log_pass/functionAnalysis", checksumkind: CSK_MD5, checksum: "2b9ddf37c2c625748b49add7ebba325c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6-++20220622053131+f28c006a5895-1~exp1~20220622173215.157"}
!10 = distinct !DISubprogram(name: "add", linkageName: "_Z3addii", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 13, scope: !10)
!17 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 19, scope: !10)
!19 = !DILocation(line: 4, column: 9, scope: !10)
!20 = !DILocation(line: 4, column: 11, scope: !10)
!21 = !DILocation(line: 4, column: 10, scope: !10)
!22 = !DILocation(line: 4, column: 2, scope: !10)
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !24, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!24 = !DISubroutineType(types: !25)
!25 = !{!13, !13, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DILocation(line: 8, column: 14, scope: !23)
!31 = !DILocalVariable(name: "argc", arg: 1, scope: !23, file: !1, line: 8, type: !13)
!32 = !DILocation(line: 8, column: 33, scope: !23)
!33 = !DILocalVariable(name: "argv", arg: 2, scope: !23, file: !1, line: 8, type: !26)
!34 = !DILocation(line: 9, column: 9, scope: !23)
!35 = !DILocalVariable(name: "a", scope: !23, file: !1, line: 9, type: !13)
!36 = !DILocation(line: 9, column: 11, scope: !23)
!37 = !DILocalVariable(name: "b", scope: !23, file: !1, line: 9, type: !13)
!38 = !DILocation(line: 10, column: 5, scope: !23)
!39 = !DILocation(line: 11, column: 31, scope: !23)
!40 = !DILocation(line: 11, column: 33, scope: !23)
!41 = !DILocation(line: 11, column: 27, scope: !23)
!42 = !DILocation(line: 11, column: 5, scope: !23)
!43 = !DILocation(line: 12, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !23, file: !1, line: 12, column: 8)
!45 = !DILocation(line: 12, column: 9, scope: !44)
!46 = !DILocation(line: 12, column: 8, scope: !23)
!47 = !DILocation(line: 13, column: 23, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 14)
!49 = !DILocation(line: 13, column: 25, scope: !48)
!50 = !DILocation(line: 13, column: 9, scope: !48)
!51 = !DILocation(line: 14, column: 5, scope: !48)
!52 = !DILocation(line: 16, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 9)
!54 = !DILocation(line: 18, column: 5, scope: !23)
