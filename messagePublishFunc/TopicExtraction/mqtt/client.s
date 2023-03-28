	.text
	.file	"client_subscriber.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.1
	.type	__cxx_global_var_init.1,@function
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	leaq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp0:
	movl	$_ZN4mqttL11VERSION_STRB5cxx11E, %edi
	movl	$.L.str, %esi
	movq	%rbx, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp1:
# %bb.1:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZN4mqttL11VERSION_STRB5cxx11E, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_2:
	.cfi_def_cfa %rbp, 16
.Ltmp2:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	__cxx_global_var_init.1, .Lfunc_end1-__cxx_global_var_init.1
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.2
	.type	__cxx_global_var_init.2,@function
__cxx_global_var_init.2:                # @__cxx_global_var_init.2
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	leaq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp3:
	movl	$_ZN4mqttL9COPYRIGHTB5cxx11E, %edi
	movl	$.L.str.3, %esi
	movq	%rbx, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp4:
# %bb.1:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZN4mqttL9COPYRIGHTB5cxx11E, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_2:
	.cfi_def_cfa %rbp, 16
.Ltmp5:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	__cxx_global_var_init.2, .Lfunc_end2-__cxx_global_var_init.2
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Lfunc_end2-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.4
	.type	__cxx_global_var_init.4,@function
__cxx_global_var_init.4:                # @__cxx_global_var_init.4
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	leaq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp6:
	movl	$_ZL14SERVER_ADDRESSB5cxx11, %edi
	movl	$.L.str.5, %esi
	movq	%rbx, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp7:
# %bb.1:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZL14SERVER_ADDRESSB5cxx11, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_2:
	.cfi_def_cfa %rbp, 16
.Ltmp8:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	__cxx_global_var_init.4, .Lfunc_end3-__cxx_global_var_init.4
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp6-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin2           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.6
	.type	__cxx_global_var_init.6,@function
__cxx_global_var_init.6:                # @__cxx_global_var_init.6
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	leaq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp9:
	movl	$_ZL9CLIENT_IDB5cxx11, %edi
	movl	$.L.str.7, %esi
	movq	%rbx, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp10:
# %bb.1:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZL9CLIENT_IDB5cxx11, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_2:
	.cfi_def_cfa %rbp, 16
.Ltmp11:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	__cxx_global_var_init.6, .Lfunc_end4-__cxx_global_var_init.6
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp9-.Lfunc_begin3           # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin3          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.8
	.type	__cxx_global_var_init.8,@function
__cxx_global_var_init.8:                # @__cxx_global_var_init.8
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	leaq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp12:
	movl	$_ZL5TOPICB5cxx11, %edi
	movl	$.L.str.9, %esi
	movq	%rbx, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp13:
# %bb.1:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZL5TOPICB5cxx11, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_2:
	.cfi_def_cfa %rbp, 16
.Ltmp14:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end5:
	.size	__cxx_global_var_init.8, .Lfunc_end5-__cxx_global_var_init.8
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp12-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin4          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$2424, %rsp                     # imm = 0x978
	.cfi_offset %rbx, -24
	movl	$0, -28(%rbp)
	movl	%edi, -72(%rbp)
	movq	%rsi, -152(%rbp)
	leaq	-528(%rbp), %rbx
	movq	%rbx, %rdi
	movl	$_ZL14SERVER_ADDRESSB5cxx11, %esi
	movl	$_ZL9CLIENT_IDB5cxx11, %edx
	xorl	%ecx, %ecx
	callq	_ZN4mqtt12async_clientC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PNS_19iclient_persistenceE@PLT
	leaq	-40(%rbp), %rdi
	callq	_ZN13mqtt_callbackC1Ev
	movq	-40(%rbp), %rax
	movq	-64(%rax), %rax
	leaq	-40(%rbp,%rax), %rsi
.Ltmp15:
	movq	%rbx, %rdi
	callq	_ZN4mqtt12async_client12set_callbackERNS_8callbackE@PLT
.Ltmp16:
	jmp	.LBB6_1
.LBB6_1:
.Ltmp17:
	leaq	-1472(%rbp), %rdi
	callq	_ZN4mqtt15connect_optionsC1Ev@PLT
.Ltmp18:
	jmp	.LBB6_2
.LBB6_2:
.Ltmp20:
	leaq	-1472(%rbp), %rdi
	movl	$20, %esi
	callq	_ZN4mqtt15connect_options23set_keep_alive_intervalEi
.Ltmp21:
	jmp	.LBB6_3
.LBB6_3:
.Ltmp22:
	leaq	-1472(%rbp), %rdi
	movl	$1, %esi
	callq	_ZN4mqtt15connect_options17set_clean_sessionEb
.Ltmp23:
	jmp	.LBB6_4
.LBB6_4:
.Ltmp24:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	$.L.str.10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp25:
	jmp	.LBB6_5
.LBB6_5:
.Ltmp26:
	movq	%rax, %rdi
	movl	$_ZL14SERVER_ADDRESSB5cxx11, %esi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.Ltmp27:
	jmp	.LBB6_6
.LBB6_6:
.Ltmp28:
	movq	%rax, %rdi
	movl	$.L.str.11, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp29:
	jmp	.LBB6_7
.LBB6_7:
.Ltmp30:
	movq	_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.Ltmp31:
	jmp	.LBB6_8
.LBB6_8:
.Ltmp32:
	leaq	-2416(%rbp), %rdi
	leaq	-1472(%rbp), %rsi
	callq	_ZN4mqtt15connect_optionsC1ERKS0_@PLT
.Ltmp33:
	jmp	.LBB6_9
.LBB6_9:
.Ltmp35:
	leaq	-104(%rbp), %rdi
	leaq	-528(%rbp), %rsi
	leaq	-2416(%rbp), %rdx
	callq	_ZN4mqtt12async_client7connectENS_15connect_optionsE@PLT
.Ltmp36:
	jmp	.LBB6_10
.LBB6_10:
	leaq	-2416(%rbp), %rdi
	callq	_ZN4mqtt15connect_optionsD2Ev
	leaq	-104(%rbp), %rdi
	callq	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	(%rax), %rcx
	movq	88(%rcx), %rcx
.Ltmp38:
	movq	%rax, %rdi
	callq	*%rcx
.Ltmp39:
	jmp	.LBB6_11
.LBB6_11:
.Ltmp40:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	$.L.str.12, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp41:
	jmp	.LBB6_12
.LBB6_12:
.Ltmp42:
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.Ltmp43:
	jmp	.LBB6_13
.LBB6_13:
.Ltmp44:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	$.L.str.13, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp45:
	jmp	.LBB6_14
.LBB6_14:
.Ltmp46:
	movq	%rax, %rdi
	movl	$_ZL5TOPICB5cxx11, %esi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.Ltmp47:
	jmp	.LBB6_15
.LBB6_15:
.Ltmp48:
	movq	%rax, %rdi
	movl	$.L.str.14, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp49:
	jmp	.LBB6_16
.LBB6_16:
.Ltmp50:
	movq	_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.Ltmp51:
	jmp	.LBB6_17
.LBB6_17:
.Ltmp52:
	leaq	-144(%rbp), %rdi
	callq	_ZN4mqtt17subscribe_optionsC2Ev
.Ltmp53:
	jmp	.LBB6_18
.LBB6_18:
.Ltmp54:
	leaq	-128(%rbp), %rdi
	callq	_ZN4mqtt10propertiesC2Ev
.Ltmp55:
	jmp	.LBB6_19
.LBB6_19:
.Ltmp57:
	leaq	-88(%rbp), %rdi
	leaq	-528(%rbp), %rsi
	leaq	-144(%rbp), %r8
	leaq	-128(%rbp), %r9
	movl	$_ZL5TOPICB5cxx11, %edx
	xorl	%ecx, %ecx
	callq	_ZN4mqtt12async_client9subscribeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_17subscribe_optionsERKNS_10propertiesE@PLT
.Ltmp58:
	jmp	.LBB6_20
.LBB6_20:
	leaq	-128(%rbp), %rdi
	callq	_ZN4mqtt10propertiesD2Ev
	leaq	-88(%rbp), %rdi
	callq	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	(%rax), %rcx
	movq	88(%rcx), %rcx
.Ltmp60:
	movq	%rax, %rdi
	callq	*%rcx
.Ltmp61:
	jmp	.LBB6_21
.LBB6_21:
.Ltmp62:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	$.L.str.12, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp63:
	jmp	.LBB6_22
.LBB6_22:
.Ltmp64:
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.Ltmp65:
	jmp	.LBB6_23
.LBB6_23:
	jmp	.LBB6_24
.LBB6_24:                               # =>This Inner Loop Header: Depth=1
	jmp	.LBB6_25
.LBB6_25:                               #   in Loop: Header=BB6_24 Depth=1
	movl	$1, -44(%rbp)
.Ltmp67:
	leaq	-64(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_
.Ltmp68:
	jmp	.LBB6_26
.LBB6_26:                               #   in Loop: Header=BB6_24 Depth=1
.Ltmp69:
	leaq	-64(%rbp), %rdi
	callq	_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE
.Ltmp70:
	jmp	.LBB6_27
.LBB6_27:                               #   in Loop: Header=BB6_24 Depth=1
	jmp	.LBB6_24
.LBB6_28:
.Ltmp19:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
	jmp	.LBB6_48
.LBB6_29:
.Ltmp84:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
	jmp	.LBB6_47
.LBB6_30:
.Ltmp34:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
	jmp	.LBB6_38
.LBB6_31:
.Ltmp37:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
	leaq	-2416(%rbp), %rdi
	callq	_ZN4mqtt15connect_optionsD2Ev
	jmp	.LBB6_38
.LBB6_32:
.Ltmp56:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
	jmp	.LBB6_37
.LBB6_33:
.Ltmp59:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
	leaq	-128(%rbp), %rdi
	callq	_ZN4mqtt10propertiesD2Ev
	jmp	.LBB6_37
.LBB6_34:                               # %.loopexit
.Ltmp71:
	jmp	.LBB6_36
.LBB6_35:                               # %.loopexit.split-lp
.Ltmp66:
	jmp	.LBB6_36
.LBB6_36:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev
.LBB6_37:
	leaq	-104(%rbp), %rdi
	callq	_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev
.LBB6_38:
	movl	-12(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB6_47
# %bb.39:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch@PLT
	movq	%rax, -56(%rbp)
.Ltmp72:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movl	$.L.str.15, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
.Ltmp73:
	jmp	.LBB6_40
.LBB6_40:
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	callq	*%rax
.Ltmp74:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp75:
	jmp	.LBB6_41
.LBB6_41:
.Ltmp76:
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.Ltmp77:
	jmp	.LBB6_42
.LBB6_42:
	movl	$1, -28(%rbp)
	movl	$1, -68(%rbp)
.Ltmp82:
	callq	__cxa_end_catch@PLT
.Ltmp83:
	jmp	.LBB6_44
.LBB6_43:
.Ltmp78:
	movq	%rax, -24(%rbp)
	movl	%edx, -12(%rbp)
.Ltmp79:
	callq	__cxa_end_catch@PLT
.Ltmp80:
	jmp	.LBB6_45
.LBB6_44:
	jmp	.LBB6_46
.LBB6_45:
	jmp	.LBB6_47
.LBB6_46:
	leaq	-1472(%rbp), %rdi
	callq	_ZN4mqtt15connect_optionsD2Ev
	leaq	-40(%rbp), %rdi
	callq	_ZN13mqtt_callbackD1Ev
	leaq	-528(%rbp), %rdi
	callq	_ZN4mqtt12async_clientD1Ev@PLT
	movl	-28(%rbp), %eax
	addq	$2424, %rsp                     # imm = 0x978
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_47:
	.cfi_def_cfa %rbp, 16
	leaq	-1472(%rbp), %rdi
	callq	_ZN4mqtt15connect_optionsD2Ev
.LBB6_48:
	leaq	-40(%rbp), %rdi
	callq	_ZN13mqtt_callbackD1Ev
	leaq	-528(%rbp), %rdi
	callq	_ZN4mqtt12async_clientD1Ev@PLT
# %bb.49:
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_50:
.Ltmp81:
                                        # kill: killed $rdx
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp18-.Ltmp15                #   Call between .Ltmp15 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin5          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp23-.Ltmp20                #   Call between .Ltmp20 and .Ltmp23
	.uleb128 .Ltmp84-.Lfunc_begin5          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp33-.Ltmp24                #   Call between .Ltmp24 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin5          #     jumps to .Ltmp34
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp35-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin5          #     jumps to .Ltmp37
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp38-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp55-.Ltmp38                #   Call between .Ltmp38 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin5          #     jumps to .Ltmp56
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp57-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin5          #     jumps to .Ltmp59
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp60-.Lfunc_begin5          # >> Call Site 8 <<
	.uleb128 .Ltmp65-.Ltmp60                #   Call between .Ltmp60 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin5          #     jumps to .Ltmp66
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp67-.Lfunc_begin5          # >> Call Site 9 <<
	.uleb128 .Ltmp70-.Ltmp67                #   Call between .Ltmp67 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin5          #     jumps to .Ltmp71
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp70-.Lfunc_begin5          # >> Call Site 10 <<
	.uleb128 .Ltmp72-.Ltmp70                #   Call between .Ltmp70 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin5          # >> Call Site 11 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp78-.Lfunc_begin5          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin5          # >> Call Site 12 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin5          # >> Call Site 13 <<
	.uleb128 .Ltmp77-.Ltmp74                #   Call between .Ltmp74 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin5          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin5          # >> Call Site 14 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin5          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin5          # >> Call Site 15 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin5          #     jumps to .Ltmp81
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp80-.Lfunc_begin5          # >> Call Site 16 <<
	.uleb128 .Lfunc_end6-.Ltmp80            #   Call between .Ltmp80 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	1                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                             #   Continue to action 1
	.byte	2                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 2
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 2
	.long	_ZTIN4mqtt9exceptionE           # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN13mqtt_callbackC1Ev,"axG",@progbits,_ZN13mqtt_callbackC1Ev,comdat
	.weak	_ZN13mqtt_callbackC1Ev          # -- Begin function _ZN13mqtt_callbackC1Ev
	.p2align	4, 0x90
	.type	_ZN13mqtt_callbackC1Ev,@function
_ZN13mqtt_callbackC1Ev:                 # @_ZN13mqtt_callbackC1Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZN4mqtt8callbackC2Ev
	movabsq	$_ZTV13mqtt_callback, %rax
	addq	$64, %rax
	movq	%rax, (%rbx)
	movabsq	$_ZTV13mqtt_callback, %rax
	addq	$64, %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN13mqtt_callbackC1Ev, .Lfunc_end7-_ZN13mqtt_callbackC1Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt15connect_options23set_keep_alive_intervalEi,"axG",@progbits,_ZN4mqtt15connect_options23set_keep_alive_intervalEi,comdat
	.weak	_ZN4mqtt15connect_options23set_keep_alive_intervalEi # -- Begin function _ZN4mqtt15connect_options23set_keep_alive_intervalEi
	.p2align	4, 0x90
	.type	_ZN4mqtt15connect_options23set_keep_alive_intervalEi,@function
_ZN4mqtt15connect_options23set_keep_alive_intervalEi: # @_ZN4mqtt15connect_options23set_keep_alive_intervalEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZN4mqtt15connect_options23set_keep_alive_intervalEi, .Lfunc_end8-_ZN4mqtt15connect_options23set_keep_alive_intervalEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt15connect_options17set_clean_sessionEb,"axG",@progbits,_ZN4mqtt15connect_options17set_clean_sessionEb,comdat
	.weak	_ZN4mqtt15connect_options17set_clean_sessionEb # -- Begin function _ZN4mqtt15connect_options17set_clean_sessionEb
	.p2align	4, 0x90
	.type	_ZN4mqtt15connect_options17set_clean_sessionEb,@function
_ZN4mqtt15connect_options17set_clean_sessionEb: # @_ZN4mqtt15connect_options17set_clean_sessionEb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	andb	$1, %sil
	movb	%sil, -9(%rbp)
	movq	-24(%rbp), %rbx
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	_ZN4mqtt6to_intEb
	movl	%eax, 12(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZN4mqtt15connect_options17set_clean_sessionEb, .Lfunc_end9-_ZN4mqtt15connect_options17set_clean_sessionEb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt15connect_optionsD2Ev,"axG",@progbits,_ZN4mqtt15connect_optionsD2Ev,comdat
	.weak	_ZN4mqtt15connect_optionsD2Ev   # -- Begin function _ZN4mqtt15connect_optionsD2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt15connect_optionsD2Ev,@function
_ZN4mqtt15connect_optionsD2Ev:          # @_ZN4mqtt15connect_optionsD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$912, %rdi                      # imm = 0x390
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	addq	$880, %rdi                      # imm = 0x370
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	addq	$808, %rdi                      # imm = 0x328
	callq	_ZN4mqtt21name_value_collectionD2Ev
	movq	%rbx, %rdi
	addq	$784, %rdi                      # imm = 0x310
	callq	_ZN4mqtt10propertiesD2Ev
	movq	%rbx, %rdi
	addq	$768, %rdi                      # imm = 0x300
	callq	_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev
	movq	%rbx, %rdi
	addq	$752, %rdi                      # imm = 0x2F0
	callq	_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev
	movq	%rbx, %rdi
	addq	$736, %rdi                      # imm = 0x2E0
	callq	_ZN4mqtt10buffer_refIcED2Ev
	movq	%rbx, %rdi
	addq	$720, %rdi                      # imm = 0x2D0
	callq	_ZN4mqtt10buffer_refIcED2Ev
	movq	%rbx, %rdi
	addq	$304, %rdi                      # imm = 0x130
	callq	_ZN4mqtt11ssl_optionsD2Ev
	addq	$200, %rbx
	movq	%rbx, %rdi
	callq	_ZN4mqtt12will_optionsD2Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZN4mqtt15connect_optionsD2Ev, .Lfunc_end10-_ZN4mqtt15connect_optionsD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv # -- Begin function _ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,@function
_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv: # @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, .Lfunc_end11-_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt17subscribe_optionsC2Ev,"axG",@progbits,_ZN4mqtt17subscribe_optionsC2Ev,comdat
	.weak	_ZN4mqtt17subscribe_optionsC2Ev # -- Begin function _ZN4mqtt17subscribe_optionsC2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt17subscribe_optionsC2Ev,@function
_ZN4mqtt17subscribe_optionsC2Ev:        # @_ZN4mqtt17subscribe_optionsC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$77, (%rax)
	movb	$81, 1(%rax)
	movb	$83, 2(%rax)
	movb	$79, 3(%rax)
	movl	$0, 4(%rax)
	movb	$0, 8(%rax)
	movb	$0, 9(%rax)
	movb	$0, 10(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZN4mqtt17subscribe_optionsC2Ev, .Lfunc_end12-_ZN4mqtt17subscribe_optionsC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt10propertiesC2Ev,"axG",@progbits,_ZN4mqtt10propertiesC2Ev,comdat
	.weak	_ZN4mqtt10propertiesC2Ev        # -- Begin function _ZN4mqtt10propertiesC2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt10propertiesC2Ev,@function
_ZN4mqtt10propertiesC2Ev:               # @_ZN4mqtt10propertiesC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZN4mqtt10propertiesC2Ev, .Lfunc_end13-_ZN4mqtt10propertiesC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt10propertiesD2Ev,"axG",@progbits,_ZN4mqtt10propertiesD2Ev,comdat
	.weak	_ZN4mqtt10propertiesD2Ev        # -- Begin function _ZN4mqtt10propertiesD2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt10propertiesD2Ev,@function
_ZN4mqtt10propertiesD2Ev:               # @_ZN4mqtt10propertiesD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
.Ltmp85:
	callq	MQTTProperties_free@PLT
.Ltmp86:
	jmp	.LBB14_1
.LBB14_1:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_2:
	.cfi_def_cfa %rbp, 16
.Ltmp87:
                                        # kill: killed $rdx
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end14:
	.size	_ZN4mqtt10propertiesD2Ev, .Lfunc_end14-_ZN4mqtt10propertiesD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN4mqtt10propertiesD2Ev,"aG",@progbits,_ZN4mqtt10propertiesD2Ev,comdat
	.p2align	2
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp85-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin6          #     jumps to .Ltmp87
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE,"axG",@progbits,_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE,comdat
	.weak	_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE # -- Begin function _ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE,@function
_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE: # @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:
	jmp	.LBB15_8
.LBB15_2:
	movq	-16(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -40(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	movq	%rax, -64(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, -56(%rbp)
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	leaq	-64(%rbp), %rdi
	movq	%rdi, %rsi
	callq	nanosleep@PLT
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB15_5
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	callq	__errno_location@PLT
	cmpl	$4, (%rax)
	sete	%cl
.LBB15_5:                               #   in Loop: Header=BB15_3 Depth=1
	testb	$1, %cl
	jne	.LBB15_6
	jmp	.LBB15_7
.LBB15_6:                               #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_3
.LBB15_7:                               # %.loopexit
	jmp	.LBB15_8
.LBB15_8:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE, .Lfunc_end15-_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_, .Lfunc_end16-_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10shared_ptrIN4mqtt5tokenEED2Ev,"axG",@progbits,_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev,comdat
	.weak	_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev # -- Begin function _ZNSt10shared_ptrIN4mqtt5tokenEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev,@function
_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev:   # @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev, .Lfunc_end17-_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end18:
	.size	__clang_call_terminate, .Lfunc_end18-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13mqtt_callbackD1Ev,"axG",@progbits,_ZN13mqtt_callbackD1Ev,comdat
	.weak	_ZN13mqtt_callbackD1Ev          # -- Begin function _ZN13mqtt_callbackD1Ev
	.p2align	4, 0x90
	.type	_ZN13mqtt_callbackD1Ev,@function
_ZN13mqtt_callbackD1Ev:                 # @_ZN13mqtt_callbackD1Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movabsq	$_ZTT13mqtt_callback, %rsi
	movq	%rbx, %rdi
	callq	_ZN13mqtt_callbackD2Ev
	movq	%rbx, %rdi
	callq	_ZN4mqtt8callbackD2Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZN13mqtt_callbackD1Ev, .Lfunc_end19-_ZN13mqtt_callbackD1Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt8callbackC2Ev,"axG",@progbits,_ZN4mqtt8callbackC2Ev,comdat
	.weak	_ZN4mqtt8callbackC2Ev           # -- Begin function _ZN4mqtt8callbackC2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt8callbackC2Ev,@function
_ZN4mqtt8callbackC2Ev:                  # @_ZN4mqtt8callbackC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$_ZTVN4mqtt8callbackE, %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZN4mqtt8callbackC2Ev, .Lfunc_end20-_ZN4mqtt8callbackC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13mqtt_callbackD0Ev,"axG",@progbits,_ZN13mqtt_callbackD0Ev,comdat
	.weak	_ZN13mqtt_callbackD0Ev          # -- Begin function _ZN13mqtt_callbackD0Ev
	.p2align	4, 0x90
	.type	_ZN13mqtt_callbackD0Ev,@function
_ZN13mqtt_callbackD0Ev:                 # @_ZN13mqtt_callbackD0Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZN13mqtt_callbackD1Ev
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZN13mqtt_callbackD0Ev, .Lfunc_end21-_ZN13mqtt_callbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end22-_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.16, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	-8(%rbp), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv@PLT
	testb	$1, %al
	jne	.LBB23_2
# %bb.1:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.17, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.LBB23_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end23-_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE,"axG",@progbits,_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE,comdat
	.weak	_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE # -- Begin function _ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE
	.p2align	4, 0x90
	.type	_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE,@function
_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE: # @_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, -24(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.18, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	callq	_ZNK4mqtt7message9get_topicB5cxx11Ev
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSolsEPKv@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%r14, %rdi
	callq	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	callq	_ZNK4mqtt7message9get_topicB5cxx11Ev
	movq	%rax, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf@PLT
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE, .Lfunc_end24-_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE,"axG",@progbits,_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE,comdat
	.weak	_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE # -- Begin function _ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE
	.p2align	4, 0x90
	.type	_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE,@function
_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE: # @_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, -24(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.20, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	$1, %al
	jne	.LBB25_1
	jmp	.LBB25_2
.LBB25_1:
	movq	%rbx, %rdi
	callq	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*32(%rcx)
	movl	%eax, %esi
	jmp	.LBB25_3
.LBB25_2:
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	jmp	.LBB25_3
.LBB25_3:
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE, .Lfunc_end25-_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt8callbackD2Ev,"axG",@progbits,_ZN4mqtt8callbackD2Ev,comdat
	.weak	_ZN4mqtt8callbackD2Ev           # -- Begin function _ZN4mqtt8callbackD2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt8callbackD2Ev,@function
_ZN4mqtt8callbackD2Ev:                  # @_ZN4mqtt8callbackD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZN4mqtt8callbackD2Ev, .Lfunc_end26-_ZN4mqtt8callbackD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt8callbackD0Ev,"axG",@progbits,_ZN4mqtt8callbackD0Ev,comdat
	.weak	_ZN4mqtt8callbackD0Ev           # -- Begin function _ZN4mqtt8callbackD0Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt8callbackD0Ev,@function
_ZN4mqtt8callbackD0Ev:                  # @_ZN4mqtt8callbackD0Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZN4mqtt8callbackD2Ev
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_ZN4mqtt8callbackD0Ev, .Lfunc_end27-_ZN4mqtt8callbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end28-_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE,"axG",@progbits,_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE,comdat
	.weak	_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE # -- Begin function _ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE
	.p2align	4, 0x90
	.type	_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE,@function
_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE: # @_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: killed $rsi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE, .Lfunc_end29-_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE,"axG",@progbits,_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE,comdat
	.weak	_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE # -- Begin function _ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE
	.p2align	4, 0x90
	.type	_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE,@function
_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE: # @_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: killed $rsi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE, .Lfunc_end30-_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZTv0_n24_N13mqtt_callbackD0Ev,"axG",@progbits,_ZTv0_n24_N13mqtt_callbackD0Ev,comdat
	.weak	_ZTv0_n24_N13mqtt_callbackD0Ev  # -- Begin function _ZTv0_n24_N13mqtt_callbackD0Ev
	.p2align	4, 0x90
	.type	_ZTv0_n24_N13mqtt_callbackD0Ev,@function
_ZTv0_n24_N13mqtt_callbackD0Ev:         # @_ZTv0_n24_N13mqtt_callbackD0Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	_ZN13mqtt_callbackD0Ev          # TAILCALL
.Lfunc_end31:
	.size	_ZTv0_n24_N13mqtt_callbackD0Ev, .Lfunc_end31-_ZTv0_n24_N13mqtt_callbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-40(%rax), %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # TAILCALL
.Lfunc_end32:
	.size	_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end32-_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv # -- Begin function _ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,@function
_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv: # @_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, .Lfunc_end33-_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK4mqtt7message9get_topicB5cxx11Ev,"axG",@progbits,_ZNK4mqtt7message9get_topicB5cxx11Ev,comdat
	.weak	_ZNK4mqtt7message9get_topicB5cxx11Ev # -- Begin function _ZNK4mqtt7message9get_topicB5cxx11Ev
	.p2align	4, 0x90
	.type	_ZNK4mqtt7message9get_topicB5cxx11Ev,@function
_ZNK4mqtt7message9get_topicB5cxx11Ev:   # @_ZNK4mqtt7message9get_topicB5cxx11Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	cmpb	$0, _ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11
	jne	.LBB34_3
# %bb.1:
	movabsq	$_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, %rdi
	callq	__cxa_guard_acquire@PLT
	cmpl	$0, %eax
	je	.LBB34_3
# %bb.2:
	movabsq	$_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	movabsq	$_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit@PLT
	movabsq	$_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, %rdi
	callq	__cxa_guard_release@PLT
.LBB34_3:
	movq	%rbx, %rdi
	addq	$64, %rdi
	callq	_ZNK4mqtt10buffer_refIcEcvbEv
	testb	$1, %al
	jne	.LBB34_4
	jmp	.LBB34_5
.LBB34_4:
	addq	$64, %rbx
	movq	%rbx, %rdi
	callq	_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev
	jmp	.LBB34_6
.LBB34_5:
	movabsq	$_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, %rax
	jmp	.LBB34_6
.LBB34_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZNK4mqtt7message9get_topicB5cxx11Ev, .Lfunc_end34-_ZNK4mqtt7message9get_topicB5cxx11Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE,"axG",@progbits,_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE,comdat
	.weak	_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE # -- Begin function _ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE
	.p2align	4, 0x90
	.type	_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE,@function
_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE: # @_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-48(%rax), %rax
	addq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE # TAILCALL
.Lfunc_end35:
	.size	_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE, .Lfunc_end35-_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv # -- Begin function _ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,@function
_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv: # @_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .Lfunc_end36-_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.weak	_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv # -- Begin function _ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.p2align	4, 0x90
	.type	_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv,@function
_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv: # @_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv, .Lfunc_end37-_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK4mqtt10buffer_refIcEcvbEv,"axG",@progbits,_ZNK4mqtt10buffer_refIcEcvbEv,comdat
	.weak	_ZNK4mqtt10buffer_refIcEcvbEv   # -- Begin function _ZNK4mqtt10buffer_refIcEcvbEv
	.p2align	4, 0x90
	.type	_ZNK4mqtt10buffer_refIcEcvbEv,@function
_ZNK4mqtt10buffer_refIcEcvbEv:          # @_ZNK4mqtt10buffer_refIcEcvbEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	_ZNK4mqtt10buffer_refIcEcvbEv, .Lfunc_end38-_ZNK4mqtt10buffer_refIcEcvbEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK4mqtt10buffer_refIcE3strB5cxx11Ev,"axG",@progbits,_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev,comdat
	.weak	_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev # -- Begin function _ZNK4mqtt10buffer_refIcE3strB5cxx11Ev
	.p2align	4, 0x90
	.type	_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev,@function
_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev:  # @_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev, .Lfunc_end39-_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv,"axG",@progbits,_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv,comdat
	.weak	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv # -- Begin function _ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.p2align	4, 0x90
	.type	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv,@function
_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv: # @_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	negq	%rax
	sbbl	%eax, %eax
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv, .Lfunc_end40-_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv # -- Begin function _ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv,@function
_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv: # @_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv, .Lfunc_end41-_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv # -- Begin function _ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,@function
_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv: # @_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .Lfunc_end42-_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.weak	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv # -- Begin function _ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.p2align	4, 0x90
	.type	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv,@function
_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv: # @_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv, .Lfunc_end43-_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv,"axG",@progbits,_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv,comdat
	.weak	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv # -- Begin function _ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.p2align	4, 0x90
	.type	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv,@function
_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv: # @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	negq	%rax
	sbbl	%eax, %eax
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv, .Lfunc_end44-_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv # -- Begin function _ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,@function
_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv: # @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, .Lfunc_end45-_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE,"axG",@progbits,_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE,comdat
	.weak	_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE # -- Begin function _ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE
	.p2align	4, 0x90
	.type	_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE,@function
_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE: # @_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-56(%rax), %rax
	addq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE # TAILCALL
.Lfunc_end46:
	.size	_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE, .Lfunc_end46-_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv # -- Begin function _ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,@function
_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv: # @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .Lfunc_end47-_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.weak	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv # -- Begin function _ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.p2align	4, 0x90
	.type	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv,@function
_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv: # @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv, .Lfunc_end48-_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt6to_intEb,"axG",@progbits,_ZN4mqtt6to_intEb,comdat
	.weak	_ZN4mqtt6to_intEb               # -- Begin function _ZN4mqtt6to_intEb
	.p2align	4, 0x90
	.type	_ZN4mqtt6to_intEb,@function
_ZN4mqtt6to_intEb:                      # @_ZN4mqtt6to_intEb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andb	$1, %dil
	movb	%dil, -1(%rbp)
	movb	-1(%rbp), %cl
	xorl	%eax, %eax
	movl	$1, %edx
	testb	$1, %cl
	cmovnel	%edx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZN4mqtt6to_intEb, .Lfunc_end49-_ZN4mqtt6to_intEb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt21name_value_collectionD2Ev,"axG",@progbits,_ZN4mqtt21name_value_collectionD2Ev,comdat
	.weak	_ZN4mqtt21name_value_collectionD2Ev # -- Begin function _ZN4mqtt21name_value_collectionD2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt21name_value_collectionD2Ev,@function
_ZN4mqtt21name_value_collectionD2Ev:    # @_ZN4mqtt21name_value_collectionD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$48, %rdi
	callq	_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev
	movq	%rbx, %rdi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZN4mqtt21name_value_collectionD2Ev, .Lfunc_end50-_ZN4mqtt21name_value_collectionD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev,"axG",@progbits,_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev,comdat
	.weak	_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev # -- Begin function _ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev,@function
_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev: # @_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev, .Lfunc_end51-_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt10buffer_refIcED2Ev,"axG",@progbits,_ZN4mqtt10buffer_refIcED2Ev,comdat
	.weak	_ZN4mqtt10buffer_refIcED2Ev     # -- Begin function _ZN4mqtt10buffer_refIcED2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt10buffer_refIcED2Ev,@function
_ZN4mqtt10buffer_refIcED2Ev:            # @_ZN4mqtt10buffer_refIcED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZN4mqtt10buffer_refIcED2Ev, .Lfunc_end52-_ZN4mqtt10buffer_refIcED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt11ssl_optionsD2Ev,"axG",@progbits,_ZN4mqtt11ssl_optionsD2Ev,comdat
	.weak	_ZN4mqtt11ssl_optionsD2Ev       # -- Begin function _ZN4mqtt11ssl_optionsD2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt11ssl_optionsD2Ev,@function
_ZN4mqtt11ssl_optionsD2Ev:              # @_ZN4mqtt11ssl_optionsD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$384, %rdi                      # imm = 0x180
	callq	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev
	movq	%rbx, %rdi
	addq	$352, %rdi                      # imm = 0x160
	callq	_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev
	movq	%rbx, %rdi
	addq	$320, %rdi                      # imm = 0x140
	callq	_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	movq	%rbx, %rdi
	addq	$288, %rdi                      # imm = 0x120
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	addq	$256, %rdi                      # imm = 0x100
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	addq	$224, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	addq	$192, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	addq	$160, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addq	$128, %rbx
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZN4mqtt11ssl_optionsD2Ev, .Lfunc_end53-_ZN4mqtt11ssl_optionsD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4mqtt12will_optionsD2Ev,"axG",@progbits,_ZN4mqtt12will_optionsD2Ev,comdat
	.weak	_ZN4mqtt12will_optionsD2Ev      # -- Begin function _ZN4mqtt12will_optionsD2Ev
	.p2align	4, 0x90
	.type	_ZN4mqtt12will_optionsD2Ev,@function
_ZN4mqtt12will_optionsD2Ev:             # @_ZN4mqtt12will_optionsD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$80, %rdi
	callq	_ZN4mqtt10propertiesD2Ev
	movq	%rbx, %rdi
	addq	$64, %rdi
	callq	_ZN4mqtt10buffer_refIcED2Ev
	addq	$48, %rbx
	movq	%rbx, %rdi
	callq	_ZN4mqtt10buffer_refIcED2Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZN4mqtt12will_optionsD2Ev, .Lfunc_end54-_ZN4mqtt12will_optionsD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev # -- Begin function _ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev,@function
_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev: # @_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rbx
	movq	(%rbx), %r14
	movq	8(%rbx), %r15
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp88:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E
.Ltmp89:
	jmp	.LBB55_1
.LBB55_1:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB55_2:
	.cfi_def_cfa %rbp, 16
.Ltmp90:
	movq	%rax, -32(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end55:
	.size	_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev, .Lfunc_end55-_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev,"aG",@progbits,_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev,comdat
	.p2align	2
GCC_except_table55:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp88-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin7          #     jumps to .Ltmp90
	.byte	1                               #   On action: 1
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, .Lfunc_end56-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E # -- Begin function _ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E,@function
_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E: # @_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E, .Lfunc_end57-_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end58-_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev # -- Begin function _ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev,@function
_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev: # @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rbx
	movq	(%rbx), %rsi
	movq	16(%rbx), %rdx
	subq	%rsi, %rdx
	sarq	$4, %rdx
.Ltmp91:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m
.Ltmp92:
	jmp	.LBB59_1
.LBB59_1:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB59_2:
	.cfi_def_cfa %rbp, 16
.Ltmp93:
	movq	%rax, -16(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end59:
	.size	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev, .Lfunc_end59-_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev,"aG",@progbits,_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev,comdat
	.p2align	2
GCC_except_table59:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp91-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin8          #     jumps to .Ltmp93
	.byte	1                               #   On action: 1
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_ # -- Begin function _ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_,@function
_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_: # @_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_, .Lfunc_end60-_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_, .Lfunc_end61-_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m,comdat
	.weak	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m # -- Begin function _ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m,@function
_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m: # @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, -8(%rbp)
	je	.LBB62_2
# %bb.1:
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m
.LBB62_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end62:
	.size	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m, .Lfunc_end62-_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaI19MQTTAsync_nameValueED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev, .Lfunc_end63-_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m # -- Begin function _ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m,@function
_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m: # @_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m, .Lfunc_end64-_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m # -- Begin function _ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m, .Lfunc_end65-_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaI19MQTTAsync_nameValueED2Ev,"axG",@progbits,_ZNSaI19MQTTAsync_nameValueED2Ev,comdat
	.weak	_ZNSaI19MQTTAsync_nameValueED2Ev # -- Begin function _ZNSaI19MQTTAsync_nameValueED2Ev
	.p2align	4, 0x90
	.type	_ZNSaI19MQTTAsync_nameValueED2Ev,@function
_ZNSaI19MQTTAsync_nameValueED2Ev:       # @_ZNSaI19MQTTAsync_nameValueED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZNSaI19MQTTAsync_nameValueED2Ev, .Lfunc_end66-_ZNSaI19MQTTAsync_nameValueED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev,@function
_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev: # @_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev, .Lfunc_end67-_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception9
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv
.Ltmp94:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
.Ltmp95:
	jmp	.LBB68_1
.LBB68_1:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB68_2:
	.cfi_def_cfa %rbp, 16
.Ltmp96:
	movq	%rax, -16(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end68:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, .Lfunc_end68-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev,comdat
	.p2align	2
GCC_except_table68:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp94-.Lfunc_begin9          # >> Call Site 1 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin9          #     jumps to .Ltmp96
	.byte	1                               #   On action: 1
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-32(%rbp), %rbx
.LBB69_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB69_3
# %bb.2:                                #   in Loop: Header=BB69_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
	movq	-16(%rbp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB69_1
.LBB69_3:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, .Lfunc_end69-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, .Lfunc_end70-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev, .Lfunc_end71-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end72:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, .Lfunc_end72-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end73:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, .Lfunc_end73-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E
	movq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end74:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, .Lfunc_end74-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception10
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv
	movq	%rax, %rbx
	movq	-16(%rbp), %rdi
.Ltmp97:
	callq	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv
.Ltmp98:
	jmp	.LBB75_1
.LBB75_1:
.Ltmp99:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_
.Ltmp100:
	jmp	.LBB75_2
.LBB75_2:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB75_3:
	.cfi_def_cfa %rbp, 16
.Ltmp101:
                                        # kill: killed $rdx
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end75:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, .Lfunc_end75-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E,comdat
	.p2align	2
GCC_except_table75:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp97-.Lfunc_begin10         # >> Call Site 1 <<
	.uleb128 .Ltmp100-.Ltmp97               #   Call between .Ltmp97 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin10        #     jumps to .Ltmp101
	.byte	1                               #   On action: 1
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception11
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv
	movq	-8(%rbp), %rsi
.Ltmp102:
	movq	%rax, %rdi
	movl	$1, %edx
	callq	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m
.Ltmp103:
	jmp	.LBB76_1
.LBB76_1:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB76_2:
	.cfi_def_cfa %rbp, 16
.Ltmp104:
                                        # kill: killed $rdx
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end76:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, .Lfunc_end76-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E,comdat
	.p2align	2
GCC_except_table76:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp102-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin11        #     jumps to .Ltmp104
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_ # -- Begin function _ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_,@function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_: # @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, .Lfunc_end77-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end78:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, .Lfunc_end78-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv,"axG",@progbits,_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv,comdat
	.weak	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv # -- Begin function _ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv
	.p2align	4, 0x90
	.type	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv,@function
_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv: # @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$32, %rdi
	callq	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end79:
	.size	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, .Lfunc_end79-_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_ # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end80:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_, .Lfunc_end80-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,"axG",@progbits,_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,comdat
	.weak	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev # -- Begin function _ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.p2align	4, 0x90
	.type	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,@function
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev: # @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$32, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, .Lfunc_end81-_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv,@function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv: # @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end82:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, .Lfunc_end82-_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv,@function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv: # @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end83:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv, .Lfunc_end83-_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m # -- Begin function _ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m,@function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m: # @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end84:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, .Lfunc_end84-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m, .Lfunc_end85-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev # -- Begin function _ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev,@function
_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev: # @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end86:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev, .Lfunc_end86-_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev, .Lfunc_end87-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev,comdat
	.weak	_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev # -- Begin function _ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev,@function
_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev: # @_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end88:
	.size	_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev, .Lfunc_end88-_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,comdat
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev # -- Begin function _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,@function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev: # @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB89_2
# %bb.1:
	movq	(%rax), %rdi
	callq	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.LBB89_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, .Lfunc_end89-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.p2align	4, 0x90
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception12
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$8, %rdi
.Ltmp105:
	movl	$-1, %esi
	callq	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
.Ltmp106:
	jmp	.LBB90_1
.LBB90_1:
	cmpl	$1, %eax
	jne	.LBB90_6
# %bb.2:
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movq	%rbx, %rdi
	callq	*%rax
	movq	%rbx, %rdi
	addq	$12, %rdi
.Ltmp107:
	movl	$-1, %esi
	callq	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
.Ltmp108:
	jmp	.LBB90_3
.LBB90_3:
	cmpl	$1, %eax
	jne	.LBB90_5
# %bb.4:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
.LBB90_5:
	jmp	.LBB90_6
.LBB90_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB90_7:
	.cfi_def_cfa %rbp, 16
.Ltmp109:
                                        # kill: killed $rdx
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end90:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .Lfunc_end90-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.cfi_endproc
	.section	.gcc_except_table._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"aG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.p2align	2
GCC_except_table90:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp105-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp109-.Lfunc_begin12        #     jumps to .Ltmp109
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp106-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin12        #     jumps to .Ltmp109
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp108-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Lfunc_end90-.Ltmp108          #   Call between .Ltmp108 and .Lfunc_end90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	.type	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii,@function
_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii: # @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -4(%rbp)
	callq	_ZL18__gthread_active_pv
	cmpl	$0, %eax
	je	.LBB91_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	_ZN9__gnu_cxxL18__exchange_and_addEPVii
	movl	%eax, -8(%rbp)
	jmp	.LBB91_3
.LBB91_2:
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	movl	%eax, -8(%rbp)
.LBB91_3:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end91:
	.size	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii, .Lfunc_end91-_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL18__gthread_active_pv
	.type	_ZL18__gthread_active_pv,@function
_ZL18__gthread_active_pv:               # @_ZL18__gthread_active_pv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__pthread_key_create@GOTPCREL(%rip), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end92:
	.size	_ZL18__gthread_active_pv, .Lfunc_end92-_ZL18__gthread_active_pv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZN9__gnu_cxxL18__exchange_and_addEPVii
	.type	_ZN9__gnu_cxxL18__exchange_and_addEPVii,@function
_ZN9__gnu_cxxL18__exchange_and_addEPVii: # @_ZN9__gnu_cxxL18__exchange_and_addEPVii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	movl	-8(%rbp), %ecx
	lock		xaddl	%ecx, (%rax)
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end93:
	.size	_ZN9__gnu_cxxL18__exchange_and_addEPVii, .Lfunc_end93-_ZN9__gnu_cxxL18__exchange_and_addEPVii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	.type	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii,@function
_ZN9__gnu_cxxL25__exchange_and_add_singleEPii: # @_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end94:
	.size	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii, .Lfunc_end94-_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,comdat
	.weak	_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev # -- Begin function _ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,@function
_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev: # @_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end95:
	.size	_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .Lfunc_end95-_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev,comdat
	.weak	_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev # -- Begin function _ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev,@function
_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev: # @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end96:
	.size	_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, .Lfunc_end96-_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev,comdat
	.weak	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev # -- Begin function _ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev,@function
_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev: # @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception13
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rbx
.Ltmp110:
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv
.Ltmp111:
	jmp	.LBB97_1
.LBB97_1:
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB97_2:
	.cfi_def_cfa %rbp, 16
.Ltmp112:
	movq	%rax, -16(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__cxa_call_unexpected@PLT
.Lfunc_end97:
	.size	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev, .Lfunc_end97-_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev,"aG",@progbits,_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev,comdat
	.p2align	2
GCC_except_table97:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp110-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin13        #     jumps to .Ltmp112
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp111-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end97-.Ltmp111          #   Call between .Ltmp111 and .Lfunc_end97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	127                             # >> Action Record 2 <<
                                        #   Filter TypeInfo -1
	.byte	125                             #   Continue to action 1
	.p2align	2
.Lttbase8:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev,"axG",@progbits,_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev,comdat
	.weak	_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev # -- Begin function _ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev,@function
_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev: # @_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt14_Function_baseD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end98:
	.size	_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev, .Lfunc_end98-_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,"axG",@progbits,_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,comdat
	.weak	_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev # -- Begin function _ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,@function
_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev: # @_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt14_Function_baseD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end99:
	.size	_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, .Lfunc_end99-_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv,comdat
	.weak	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv # -- Begin function _ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv,@function
_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv: # @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv
	testb	$1, %al
	jne	.LBB100_2
# %bb.1:
	movq	16(%rbx), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm
.LBB100_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end100:
	.size	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv, .Lfunc_end100-_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev,comdat
	.weak	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev # -- Begin function _ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev,@function
_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev: # @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaIhED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end101:
	.size	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev, .Lfunc_end101-_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv # -- Begin function _ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv,@function
_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv: # @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv
	cmpq	%rax, %r14
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end102:
	.size	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv, .Lfunc_end102-_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm # -- Begin function _ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm,@function
_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm: # @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception14
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-40(%rbp), %rbx
.Ltmp113:
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv
	movq	%rax, %r14
.Ltmp114:
	jmp	.LBB103_1
.LBB103_1:
	movq	%rbx, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
.Ltmp115:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm
.Ltmp116:
	jmp	.LBB103_2
.LBB103_2:
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB103_3:
	.cfi_def_cfa %rbp, 16
.Ltmp117:
	movq	%rax, -24(%rbp)
	movl	%edx, -44(%rbp)
# %bb.4:
	movq	-24(%rbp), %rdi
	callq	__cxa_call_unexpected@PLT
.Lfunc_end103:
	.size	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm, .Lfunc_end103-_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm,"aG",@progbits,_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm,comdat
	.p2align	2
GCC_except_table103:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp113-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp116-.Ltmp113              #   Call between .Ltmp113 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin14        #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp116-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Lfunc_end103-.Ltmp116         #   Call between .Ltmp116 and .Lfunc_end103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2
.Lttbase9:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv # -- Begin function _ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv,@function
_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv: # @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end104:
	.size	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv, .Lfunc_end104-_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv,comdat
	.weak	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv # -- Begin function _ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv
	.p2align	4, 0x90
	.type	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv,@function
_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv: # @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	_ZNSt14pointer_traitsIPKhE10pointer_toERS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end105:
	.size	_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv, .Lfunc_end105-_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14pointer_traitsIPKhE10pointer_toERS0_,"axG",@progbits,_ZNSt14pointer_traitsIPKhE10pointer_toERS0_,comdat
	.weak	_ZNSt14pointer_traitsIPKhE10pointer_toERS0_ # -- Begin function _ZNSt14pointer_traitsIPKhE10pointer_toERS0_
	.p2align	4, 0x90
	.type	_ZNSt14pointer_traitsIPKhE10pointer_toERS0_,@function
_ZNSt14pointer_traitsIPKhE10pointer_toERS0_: # @_ZNSt14pointer_traitsIPKhE10pointer_toERS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt9addressofIKhEPT_RS1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end106:
	.size	_ZNSt14pointer_traitsIPKhE10pointer_toERS0_, .Lfunc_end106-_ZNSt14pointer_traitsIPKhE10pointer_toERS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9addressofIKhEPT_RS1_,"axG",@progbits,_ZSt9addressofIKhEPT_RS1_,comdat
	.weak	_ZSt9addressofIKhEPT_RS1_       # -- Begin function _ZSt9addressofIKhEPT_RS1_
	.p2align	4, 0x90
	.type	_ZSt9addressofIKhEPT_RS1_,@function
_ZSt9addressofIKhEPT_RS1_:              # @_ZSt9addressofIKhEPT_RS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofIKhEPT_RS1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end107:
	.size	_ZSt9addressofIKhEPT_RS1_, .Lfunc_end107-_ZSt9addressofIKhEPT_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofIKhEPT_RS1_,"axG",@progbits,_ZSt11__addressofIKhEPT_RS1_,comdat
	.weak	_ZSt11__addressofIKhEPT_RS1_    # -- Begin function _ZSt11__addressofIKhEPT_RS1_
	.p2align	4, 0x90
	.type	_ZSt11__addressofIKhEPT_RS1_,@function
_ZSt11__addressofIKhEPT_RS1_:           # @_ZSt11__addressofIKhEPT_RS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end108:
	.size	_ZSt11__addressofIKhEPT_RS1_, .Lfunc_end108-_ZSt11__addressofIKhEPT_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm,"axG",@progbits,_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm,comdat
	.weak	_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm # -- Begin function _ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm,@function
_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm: # @_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end109:
	.size	_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm, .Lfunc_end109-_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv,comdat
	.weak	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv # -- Begin function _ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv,@function
_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv: # @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end110:
	.size	_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv, .Lfunc_end110-_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm # -- Begin function _ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm,@function
_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm: # @_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end111:
	.size	_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm, .Lfunc_end111-_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIhED2Ev,"axG",@progbits,_ZNSaIhED2Ev,comdat
	.weak	_ZNSaIhED2Ev                    # -- Begin function _ZNSaIhED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIhED2Ev,@function
_ZNSaIhED2Ev:                           # @_ZNSaIhED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIhED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end112:
	.size	_ZNSaIhED2Ev, .Lfunc_end112-_ZNSaIhED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIhED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIhED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIhED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIhED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIhED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIhED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIhED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end113:
	.size	_ZN9__gnu_cxx13new_allocatorIhED2Ev, .Lfunc_end113-_ZN9__gnu_cxx13new_allocatorIhED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD2Ev,comdat
	.weak	_ZNSt14_Function_baseD2Ev       # -- Begin function _ZNSt14_Function_baseD2Ev
	.p2align	4, 0x90
	.type	_ZNSt14_Function_baseD2Ev,@function
_ZNSt14_Function_baseD2Ev:              # @_ZNSt14_Function_baseD2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception15
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB114_3
# %bb.1:
	movq	16(%rdi), %rax
.Ltmp118:
	movq	%rdi, %rsi
	movl	$3, %edx
	callq	*%rax
.Ltmp119:
	jmp	.LBB114_2
.LBB114_2:
	jmp	.LBB114_3
.LBB114_3:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB114_4:
	.cfi_def_cfa %rbp, 16
.Ltmp120:
                                        # kill: killed $rdx
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end114:
	.size	_ZNSt14_Function_baseD2Ev, .Lfunc_end114-_ZNSt14_Function_baseD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt14_Function_baseD2Ev,"aG",@progbits,_ZNSt14_Function_baseD2Ev,comdat
	.p2align	2
GCC_except_table114:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp118-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin15        #     jumps to .Ltmp120
	.byte	1                               #   On action: 1
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev,comdat
	.weak	_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev # -- Begin function _ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev,@function
_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev: # @_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end115:
	.size	_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev, .Lfunc_end115-_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13mqtt_callbackD2Ev,"axG",@progbits,_ZN13mqtt_callbackD2Ev,comdat
	.weak	_ZN13mqtt_callbackD2Ev          # -- Begin function _ZN13mqtt_callbackD2Ev
	.p2align	4, 0x90
	.type	_ZN13mqtt_callbackD2Ev,@function
_ZN13mqtt_callbackD2Ev:                 # @_ZN13mqtt_callbackD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end116:
	.size	_ZN13mqtt_callbackD2Ev, .Lfunc_end116-_ZN13mqtt_callbackD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZTv0_n24_N13mqtt_callbackD1Ev,"axG",@progbits,_ZTv0_n24_N13mqtt_callbackD1Ev,comdat
	.weak	_ZTv0_n24_N13mqtt_callbackD1Ev  # -- Begin function _ZTv0_n24_N13mqtt_callbackD1Ev
	.p2align	4, 0x90
	.type	_ZTv0_n24_N13mqtt_callbackD1Ev,@function
_ZTv0_n24_N13mqtt_callbackD1Ev:         # @_ZTv0_n24_N13mqtt_callbackD1Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	jmp	_ZN13mqtt_callbackD1Ev          # TAILCALL
.Lfunc_end117:
	.size	_ZTv0_n24_N13mqtt_callbackD1Ev, .Lfunc_end117-_ZTv0_n24_N13mqtt_callbackD1Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.weak	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv # -- Begin function _ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.p2align	4, 0x90
	.type	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,@function
_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv: # @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end118:
	.size	_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .Lfunc_end118-_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.weak	_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv # -- Begin function _ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.p2align	4, 0x90
	.type	_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv,@function
_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv: # @_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end119:
	.size	_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv, .Lfunc_end119-_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE,"axG",@progbits,_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE,comdat
	.weak	_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE # -- Begin function _ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	.p2align	4, 0x90
	.type	_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE,@function
_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE: # @_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end120:
	.size	_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE, .Lfunc_end120-_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_ZNSt6chrono15duration_valuesIlE4zeroEv
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end121:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv, .Lfunc_end121-_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE # -- Begin function _ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE,@function
_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE: # @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end122:
	.size	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE, .Lfunc_end122-_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE # -- Begin function _ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,@function
_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE: # @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end123:
	.size	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE, .Lfunc_end123-_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ # -- Begin function _ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.p2align	4, 0x90
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,@function
_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_: # @_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	subq	%rax, %rbx
	movq	%rbx, -32(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_
	movq	-56(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end124:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .Lfunc_end124-_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end125:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv, .Lfunc_end125-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end126:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .Lfunc_end126-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE,"axG",@progbits,_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE,comdat
	.weak	_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE # -- Begin function _ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	.p2align	4, 0x90
	.type	_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE,@function
_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE: # @_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	cmpq	%rax, %rbx
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end127:
	.size	_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE, .Lfunc_end127-_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono15duration_valuesIlE4zeroEv,"axG",@progbits,_ZNSt6chrono15duration_valuesIlE4zeroEv,comdat
	.weak	_ZNSt6chrono15duration_valuesIlE4zeroEv # -- Begin function _ZNSt6chrono15duration_valuesIlE4zeroEv
	.p2align	4, 0x90
	.type	_ZNSt6chrono15duration_valuesIlE4zeroEv,@function
_ZNSt6chrono15duration_valuesIlE4zeroEv: # @_ZNSt6chrono15duration_valuesIlE4zeroEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end128:
	.size	_ZNSt6chrono15duration_valuesIlE4zeroEv, .Lfunc_end128-_ZNSt6chrono15duration_valuesIlE4zeroEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end129:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_, .Lfunc_end129-_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE # -- Begin function _ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE,@function
_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE: # @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	movq	%rax, -8(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end130:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE, .Lfunc_end130-_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE # -- Begin function _ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE,@function
_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE: # @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	movq	%rax, -8(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end131:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE, .Lfunc_end131-_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end132:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_, .Lfunc_end132-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_client_subscriber.cpp
	.type	_GLOBAL__sub_I_client_subscriber.cpp,@function
_GLOBAL__sub_I_client_subscriber.cpp:   # @_GLOBAL__sub_I_client_subscriber.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	callq	__cxx_global_var_init.1
	callq	__cxx_global_var_init.2
	callq	__cxx_global_var_init.4
	callq	__cxx_global_var_init.6
	callq	__cxx_global_var_init.8
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end133:
	.size	_GLOBAL__sub_I_client_subscriber.cpp, .Lfunc_end133-_GLOBAL__sub_I_client_subscriber.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZN4mqttL11VERSION_STRB5cxx11E,@object # @_ZN4mqttL11VERSION_STRB5cxx11E
	.local	_ZN4mqttL11VERSION_STRB5cxx11E
	.comm	_ZN4mqttL11VERSION_STRB5cxx11E,32,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Paho MQTT C++ (mqttpp) v. 1.2"
	.size	.L.str, 30

	.type	_ZN4mqttL9COPYRIGHTB5cxx11E,@object # @_ZN4mqttL9COPYRIGHTB5cxx11E
	.local	_ZN4mqttL9COPYRIGHTB5cxx11E
	.comm	_ZN4mqttL9COPYRIGHTB5cxx11E,32,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Copyright (c) 2013-2020 Frank Pagliughi"
	.size	.L.str.3, 40

	.type	_ZL14SERVER_ADDRESSB5cxx11,@object # @_ZL14SERVER_ADDRESSB5cxx11
	.local	_ZL14SERVER_ADDRESSB5cxx11
	.comm	_ZL14SERVER_ADDRESSB5cxx11,32,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"tcp://localhost:1883"
	.size	.L.str.5, 21

	.type	_ZL9CLIENT_IDB5cxx11,@object    # @_ZL9CLIENT_IDB5cxx11
	.local	_ZL9CLIENT_IDB5cxx11
	.comm	_ZL9CLIENT_IDB5cxx11,32,8
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"mqtt_cpp_async_subscriber"
	.size	.L.str.7, 26

	.type	_ZL5TOPICB5cxx11,@object        # @_ZL5TOPICB5cxx11
	.local	_ZL5TOPICB5cxx11
	.comm	_ZL5TOPICB5cxx11,32,8
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"my/topic"
	.size	.L.str.9, 9

	.type	_ZTSN4mqtt9exceptionE,@object   # @_ZTSN4mqtt9exceptionE
	.section	.rodata._ZTSN4mqtt9exceptionE,"aG",@progbits,_ZTSN4mqtt9exceptionE,comdat
	.weak	_ZTSN4mqtt9exceptionE
_ZTSN4mqtt9exceptionE:
	.asciz	"N4mqtt9exceptionE"
	.size	_ZTSN4mqtt9exceptionE, 18

	.type	_ZTIN4mqtt9exceptionE,@object   # @_ZTIN4mqtt9exceptionE
	.section	.rodata._ZTIN4mqtt9exceptionE,"aG",@progbits,_ZTIN4mqtt9exceptionE,comdat
	.weak	_ZTIN4mqtt9exceptionE
	.p2align	3
_ZTIN4mqtt9exceptionE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN4mqtt9exceptionE
	.quad	_ZTISt13runtime_error
	.size	_ZTIN4mqtt9exceptionE, 24

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Connecting to MQTT server: '"
	.size	.L.str.10, 29

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"'..."
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"OK\n"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Subscribing to topic: "
	.size	.L.str.13, 23

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"..."
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Error: "
	.size	.L.str.15, 8

	.type	_ZTV13mqtt_callback,@object     # @_ZTV13mqtt_callback
	.section	.rodata._ZTV13mqtt_callback,"aG",@progbits,_ZTV13mqtt_callback,comdat
	.weak	_ZTV13mqtt_callback
	.p2align	3
_ZTV13mqtt_callback:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZTI13mqtt_callback
	.quad	_ZN13mqtt_callbackD1Ev
	.quad	_ZN13mqtt_callbackD0Ev
	.quad	_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.quad	_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.quad	_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE
	.quad	_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE
	.size	_ZTV13mqtt_callback, 112

	.type	_ZTT13mqtt_callback,@object     # @_ZTT13mqtt_callback
	.section	.rodata._ZTT13mqtt_callback,"aG",@progbits,_ZTT13mqtt_callback,comdat
	.weak	_ZTT13mqtt_callback
	.p2align	3
_ZTT13mqtt_callback:
	.quad	_ZTV13mqtt_callback+64
	.quad	_ZTV13mqtt_callback+64
	.size	_ZTT13mqtt_callback, 16

	.type	_ZTS13mqtt_callback,@object     # @_ZTS13mqtt_callback
	.section	.rodata._ZTS13mqtt_callback,"aG",@progbits,_ZTS13mqtt_callback,comdat
	.weak	_ZTS13mqtt_callback
_ZTS13mqtt_callback:
	.asciz	"13mqtt_callback"
	.size	_ZTS13mqtt_callback, 16

	.type	_ZTSN4mqtt8callbackE,@object    # @_ZTSN4mqtt8callbackE
	.section	.rodata._ZTSN4mqtt8callbackE,"aG",@progbits,_ZTSN4mqtt8callbackE,comdat
	.weak	_ZTSN4mqtt8callbackE
_ZTSN4mqtt8callbackE:
	.asciz	"N4mqtt8callbackE"
	.size	_ZTSN4mqtt8callbackE, 17

	.type	_ZTIN4mqtt8callbackE,@object    # @_ZTIN4mqtt8callbackE
	.section	.rodata._ZTIN4mqtt8callbackE,"aG",@progbits,_ZTIN4mqtt8callbackE,comdat
	.weak	_ZTIN4mqtt8callbackE
	.p2align	3
_ZTIN4mqtt8callbackE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN4mqtt8callbackE
	.size	_ZTIN4mqtt8callbackE, 16

	.type	_ZTI13mqtt_callback,@object     # @_ZTI13mqtt_callback
	.section	.rodata._ZTI13mqtt_callback,"aG",@progbits,_ZTI13mqtt_callback,comdat
	.weak	_ZTI13mqtt_callback
	.p2align	3
_ZTI13mqtt_callback:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS13mqtt_callback
	.long	0                               # 0x0
	.long	1                               # 0x1
	.quad	_ZTIN4mqtt8callbackE
	.quad	-16381                          # 0xffffffffffffc003
	.size	_ZTI13mqtt_callback, 40

	.type	_ZTVN4mqtt8callbackE,@object    # @_ZTVN4mqtt8callbackE
	.section	.rodata._ZTVN4mqtt8callbackE,"aG",@progbits,_ZTVN4mqtt8callbackE,comdat
	.weak	_ZTVN4mqtt8callbackE
	.p2align	3
_ZTVN4mqtt8callbackE:
	.quad	0
	.quad	_ZTIN4mqtt8callbackE
	.quad	_ZN4mqtt8callbackD2Ev
	.quad	_ZN4mqtt8callbackD0Ev
	.quad	_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.quad	_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.quad	_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE
	.quad	_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE
	.size	_ZTVN4mqtt8callbackE, 64

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"\nConnection lost"
	.size	.L.str.16, 17

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"cause: "
	.size	.L.str.17, 8

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"msg topic addr: "
	.size	.L.str.18, 17

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Topic: %s\n"
	.size	.L.str.19, 11

	.type	_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11,@object # @_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11
	.section	.bss._ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11,"aGw",@nobits,_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11,comdat
	.weak	_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11
	.p2align	3
_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11:
	.zero	32
	.size	_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, 32

	.type	_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11,@object # @_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11
	.section	.bss._ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11,"aGw",@nobits,_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11,comdat
	.weak	_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11
	.p2align	3
_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11:
	.quad	0                               # 0x0
	.size	_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, 8

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"\nDelivery complete for token: "
	.size	.L.str.20, 31

	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr,@object # @_ZZL18__gthread_active_pvE20__gthread_active_ptr
	.section	.rodata,"a",@progbits
	.p2align	3
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	__pthread_key_create
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_client_subscriber.cpp
	.weak	__pthread_key_create
	.ident	"Ubuntu clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
