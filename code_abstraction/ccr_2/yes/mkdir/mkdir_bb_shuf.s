	.section	.text
	.align	16
	#Procedure 0x401819
	.globl sub_401819
	.type sub_401819, @function
sub_401819:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40181a
	.globl sub_40181a
	.type sub_40181a, @function
sub_40181a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401852
	.globl sub_401852
	.type sub_401852, @function
sub_401852:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40189a
	.globl sub_40189a
	.type sub_40189a, @function
sub_40189a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018bc
	.globl sub_4018bc
	.type sub_4018bc, @function
sub_4018bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018cd
	.globl sub_4018cd
	.type sub_4018cd, @function
sub_4018cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018e6
	.globl sub_4018e6
	.type sub_4018e6, @function
sub_4018e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_12
	test	rdx, rdx
	je	.label_12
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_12:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40195a
	.globl sub_40195a
	.type sub_40195a, @function
sub_40195a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960

	.globl mkancesdirs
	.type mkancesdirs, @function
mkancesdirs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdi
	xor	ebp, ebp
	mov	r14, r13
	xor	r15d, r15d
.label_19:
	mov	bl, byte ptr [r14]
.label_22:
	mov	r12, r14
	test	bl, bl
	je	.label_24
	mov	r14, r12
	jmp	.label_14
	.section	.text
	.align	16
	#Procedure 0x40198c
	.globl sub_40198c
	.type sub_40198c, @function
sub_40198c:

	nop	dword ptr [rax]
.label_20:
	mov	rax, rbp
	sub	rax, r12
	cmp	rax, 1
	jne	.label_17
	cmp	byte ptr [r12], 0x2e
	je	.label_22
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	jmp	.label_25
.label_13:
	cmp	al, 0x2f
	cmovne	rbp, r14
	mov	bl, 0x2f
.label_14:
	inc	r14
	nop	dword ptr [rax + rax]
.label_21:
	mov	eax, ebx
	movzx	ebx, byte ptr [r14]
	cmp	bl, 0x2f
	je	.label_13
	cmp	al, 0x2f
	jne	.label_15
	test	rbp, rbp
	je	.label_15
	test	bl, bl
	jne	.label_20
.label_15:
	inc	r14
	test	bl, bl
	jne	.label_21
	jmp	.label_24
	.section	.text
	.align	16
	#Procedure 0x4019e7
	.globl sub_4019e7
	.type sub_4019e7, @function
sub_4019e7:

	nop	word ptr cs:[rax + rax]
.label_17:
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	cmp	rax, 2
	jne	.label_25
	cmp	byte ptr [r12], 0x2e
	jne	.label_25
	xor	eax, eax
	cmp	byte ptr [r12 + 1], 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_18
.label_25:
	mov	rbx, rsi
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 8]
	test	eax, eax
	js	.label_27
	mov	dword ptr [rsp + 4], 0
	mov	al, 1
	jmp	.label_28
.label_27:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	al, r15b
.label_28:
	mov	rsi, rbx
.label_18:
	mov	r15d, eax
	and	al, 1
	movzx	edx, al
	xor	ecx, ecx
	mov	rdi, rsi
	mov	rbx, rsi
	mov	rsi, r12
	call	savewd_chdir
	mov	rsi, rbx
	mov	ebx, 0xffffffff
	cmp	eax, -1
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	je	.label_16
	mov	byte ptr [rbp], 0x2f
	test	eax, eax
	mov	ebx, eax
	je	.label_19
.label_16:
	mov	ebp, dword ptr [rsp + 4]
	test	ebp, ebp
	je	.label_23
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_23
	mov	dword ptr [rax], ebp
.label_23:
	movsxd	r12, ebx
	jmp	.label_26
.label_24:
	sub	r12, r13
.label_26:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401abe
	.globl sub_401abe
	.type sub_401abe, @function
sub_401abe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ac0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401ad1
	.globl sub_401ad1
	.type sub_401ad1, @function
sub_401ad1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aef
	.globl sub_401aef
	.type sub_401aef, @function
sub_401aef:

	nop	
.label_29:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401af6
	.globl sub_401af6
	.type sub_401af6, @function
sub_401af6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401afb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_29
	test	rdx, rdx
	je	.label_29
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_552:
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_30
.label_38:
	mov	dword ptr [rsp + 8], 5
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r13d, eax
	jge	.label_40
	movsxd	rax, r13d
	lea	rbp, [r12 + rax*8]
	sub	r15d, r13d
	lea	r12, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r12
	mov	rdx, r14
	call	r13
	cmp	ebx, eax
	cmovl	ebx, eax
	add	rbp, 8
	dec	r15d
	jne	.label_42
.label_40:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_551:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	jmp	.label_38
.label_30:
	mov	edi, OFFSET FLAT:label_33
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:label_35
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401bb0
	.globl sub_401bb0
	.type sub_401bb0, @function
sub_401bb0:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401bb2

	.globl savewd_process_files
	.type savewd_process_files, @function
savewd_process_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	r12, rsi
	mov	r15d, edi
	movabs	rax, 0xffffffff00000000
	mov	dword ptr [rsp + 8], 0
	movsxd	rcx, r15d
	mov	rdi, rcx
	shl	rdi, 0x20
	add	rdi, rax
	lea	rdx, [r12 + rcx*8 - 8]
	mov	esi, ecx
	mov	qword ptr [rsp + 0x20], rsi
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_46:
	mov	rsi, rbp
	mov	r14, rdi
	lea	rdi, [rcx + rsi]
	test	rdi, rdi
	jle	.label_31
	mov	rbx, qword ptr [rdx + rsi*8]
	lea	rbp, [rsi - 1]
	lea	rdi, [r14 + rax]
	cmp	byte ptr [rbx], 0x2f
	je	.label_46
.label_31:
	add	esi, r15d
	xor	r13d, r13d
	cmp	esi, 2
	mov	ebx, 0
	jl	.label_38
	sar	r14, 0x20
	xor	eax, eax
	mov	r13d, 1
	lea	rbp, [rsp + 8]
	xor	ebx, ebx
	jmp	.label_44
	.section	.text
	.align	16
	#Procedure 0x401c4b
	.globl sub_401c4b
	.type sub_401c4b, @function
sub_401c4b:

	nop	dword ptr [rax]
.label_32:
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:label_35
	call	__assert_fail
.label_41:
	mov	ecx, dword ptr [rsp + 0xc]
	inc	r13
.label_44:
	cmp	eax, 3
	jne	.label_43
	test	ecx, ecx
	jg	.label_45
.label_43:
	mov	rdi, qword ptr [r12 + r13*8 - 8]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x18]
	call	qword ptr [rsp + 0x10]
	cmp	ebx, eax
	cmovl	ebx, eax
.label_45:
	mov	rax, qword ptr [r12 + r13*8]
	cmp	byte ptr [rax], 0x2f
	je	.label_36
	mov	rdi, rbp
	mov	esi, ebx
	call	savewd_restore
	cmp	ebx, eax
	cmovl	ebx, eax
.label_36:
	mov	eax, dword ptr [rsp + 8]
	cmp	r13, r14
	jl	.label_41
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_32
	jmp	qword ptr [(rcx * 8) + label_39]
	.section	.text
	.align	16
	#Procedure 0x401cc0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d2e
	.globl sub_401d2e
	.type sub_401d2e, @function
sub_401d2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d30
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401da5
	.globl sub_401da5
	.type sub_401da5, @function
sub_401da5:

	nop	word ptr cs:[rax + rax]
.label_48:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_47
	call	__errno_location
	mov	dword ptr [rax], 0
.label_47:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dcb

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_48
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_47
	test	cl, cl
	jne	.label_47
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x401e10
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e18
	.globl sub_401e18
	.type sub_401e18, @function
sub_401e18:

	nop	dword ptr [rax + rax]
.label_49:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e25
	.globl sub_401e25
	.type sub_401e25, @function
sub_401e25:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e29
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_49
	test	rsi, rsi
	je	.label_49
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_54
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401f04
	.globl sub_401f04
	.type sub_401f04, @function
sub_401f04:

	nop	word ptr cs:[rax + rax]
.label_57:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401f15
	.globl sub_401f15
	.type sub_401f15, @function
sub_401f15:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f19

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_56
	test	r15, r15
	je	.label_57
.label_56:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_58
	cmp	r15, -2
	jb	.label_58
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_58
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_58:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fa6
	.globl sub_401fa6
	.type sub_401fa6, @function
sub_401fa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fb0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fe6
	.globl sub_401fe6
	.type sub_401fe6, @function
sub_401fe6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ff0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402003
	.globl sub_402003
	.type sub_402003, @function
sub_402003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_59
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_61:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_61
.label_59:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_62
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_63], OFFSET FLAT:slot0
.label_62:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_60
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_60:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020a1
	.globl sub_4020a1
	.type sub_4020a1, @function
sub_4020a1:

	nop	word ptr cs:[rax + rax]
.label_64:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4020b5
	.globl sub_4020b5
	.type sub_4020b5, @function
sub_4020b5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020bd

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_64
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x402120
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021e1
	.globl sub_4021e1
	.type sub_4021e1, @function
sub_4021e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_65
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_65
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_66
.label_65:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_66:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_67
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_67:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40225e
	.globl sub_40225e
	.type sub_40225e, @function
sub_40225e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_68
	test	rax, rax
	je	.label_69
.label_68:
	pop	rbx
	ret	
.label_69:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40227a
	.globl sub_40227a
	.type sub_40227a, @function
sub_40227a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402280

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_70
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_87:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_77
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_87
	xor	eax, eax
	test	bl, bl
	jne	.label_77
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_77
.label_70:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_75
	.section	.text
	.align	16
	#Procedure 0x40231f
	.globl sub_40231f
	.type sub_40231f, @function
sub_40231f:

	nop	
.label_83:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_75:
	cmp	bl, 0x2c
	jle	.label_79
	cmp	bl, 0x2d
	je	.label_81
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_83
	jmp	.label_86
	.section	.text
	.align	16
	#Procedure 0x40233f
	.globl sub_40233f
	.type sub_40233f, @function
sub_40233f:

	nop	
.label_79:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_83
	test	bl, bl
	je	.label_89
.label_86:
	xor	edx, edx
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x402352
	.globl sub_402352
	.type sub_402352, @function
sub_402352:

	nop	word ptr cs:[rax + rax]
.label_81:
	mov	edx, 1
	jmp	.label_83
.label_89:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_94
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_96
	.section	.text
	.align	16
	#Procedure 0x40238c

	.globl sub_40238c
	.type sub_40238c, @function
sub_40238c:
	inc	r14
	nop	
.label_96:
	xor	esi, esi
	jmp	.label_74
	.section	.text
	.align	16
	#Procedure 0x402394
	.globl sub_402394
	.type sub_402394, @function
sub_402394:

	nop	word ptr cs:[rax + rax]
.label_502:
	or	esi, 0x207
	inc	r14
.label_74:
	movzx	edx, byte ptr [r14]
	movsx	ecx, dl
	lea	edi, [rcx - 0x61]
	cmp	edi, 0x14
	ja	.label_95
	jmp	qword ptr [(rdi * 8) + label_85]
.label_500:
	or	esi, 0xfff
	inc	r14
	jmp	.label_74
	.section	.text
	.align	16
	#Procedure 0x4023ca
	.globl sub_4023ca
	.type sub_4023ca, @function
sub_4023ca:

	nop	word ptr [rax + rax]
.label_501:
	or	esi, 0x438
	inc	r14
	jmp	.label_74
	.section	.text
	.align	16
	#Procedure 0x4023db
	.globl sub_4023db
	.type sub_4023db, @function
sub_4023db:

	nop	dword ptr [rax + rax]
.label_503:
	or	esi, 0x9c0
	inc	r14
	jmp	.label_74
	.section	.text
	.align	16
	#Procedure 0x4023eb
	.globl sub_4023eb
	.type sub_4023eb, @function
sub_4023eb:

	nop	dword ptr [rax + rax]
.label_95:
	mov	edi, ecx
	cmp	ecx, 0x3d
	ja	.label_71
	bt	r8, rdi
	jae	.label_71
.label_493:
	lea	rbx, [r14 + 1]
	movsx	ecx, byte ptr [r14 + 1]
	mov	edi, ecx
	add	edi, -0x30
	cmp	edi, 0x45
	ja	.label_72
	jmp	qword ptr [(rdi * 8) + label_76]
.label_553:
	xor	edi, edi
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_88:
	movsx	ecx, cl
	lea	edi, [rcx + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_71
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	ebx, ecx
	and	bl, 0xf8
	cmp	bl, 0x30
	je	.label_88
	test	esi, esi
	jne	.label_71
	mov	r11b, 1
	mov	esi, 0xfff
	test	cl, cl
	je	.label_93
	cmp	cl, 0x2c
	mov	r10d, 0xfff
	je	.label_73
	jmp	.label_71
.label_93:
	mov	r10d, 0xfff
	jmp	.label_73
.label_72:
	mov	r11b, 1
	xor	r10d, r10d
	mov	r14, rbx
	xor	edi, edi
	jmp	.label_80
	.section	.text
	.align	16
	#Procedure 0x402494
	.globl sub_402494
	.type sub_402494, @function
sub_402494:

	nop	word ptr cs:[rax + rax]
.label_90:
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	r11d, ebx
.label_80:
	movsx	ecx, cl
	add	ecx, -0x58
	cmp	ecx, 0x20
	ja	.label_73
	mov	bl, 2
	jmp	qword ptr [(rcx * 8) + label_84]
.label_557:
	or	edi, 0x124
	jmp	.label_78
.label_558:
	or	edi, 0xc00
	jmp	.label_78
.label_559:
	or	edi, 0x200
	jmp	.label_78
.label_560:
	or	edi, 0x92
	jmp	.label_78
.label_561:
	or	edi, 0x49
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	ebx, r11d
	jmp	.label_90
.label_554:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x38
	jmp	.label_73
.label_555:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 7
	jmp	.label_73
.label_556:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x1c0
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	rcx, r9
	shl	rcx, 4
	mov	byte ptr [rax + rcx], dl
	mov	byte ptr [rax + rcx + 1], r11b
	mov	dword ptr [rax + rcx + 4], esi
	mov	dword ptr [rax + rcx + 8], edi
	test	r10d, r10d
	jne	.label_82
	cmp	esi, 1
	sbb	r10d, r10d
	or	r10d, esi
	and	r10d, edi
.label_82:
	inc	r9
	mov	dword ptr [rax + rcx + 0xc], r10d
	mov	dl, byte ptr [r14]
	mov	ecx, edx
	add	cl, 0xd5
	movzx	ecx, cl
	cmp	cl, 0x12
	ja	.label_92
	jmp	qword ptr [(rcx * 8) + label_91]
.label_92:
	test	dl, dl
	jne	.label_71
	shl	r9, 4
	mov	byte ptr [rax + r9 + 1], 0
	jmp	.label_77
.label_71:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_77:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_94:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40259c
	.globl sub_40259c
	.type sub_40259c, @function
sub_40259c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025a0

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r14, rdi
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_97
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_97:
	mov	edi, dword ptr [r15 + 8]
	test	dil, 0xc0
	je	.label_98
	and	edi, 0xffffff3f
	call	umask
	mov	esi, 0x1ff
	mov	rdi, rbp
	call	mkdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	mov	edi, dword ptr [r15 + 8]
	call	umask
	mov	dword ptr [rbx], r12d
	jmp	.label_100
.label_98:
	mov	esi, 0x1ff
	mov	rdi, rbp
	call	mkdir
	mov	ebp, eax
.label_100:
	test	ebp, ebp
	jne	.label_99
	mov	ebp, dword ptr [r15 + 8]
	shr	ebp, 8
	and	ebp, 1
	mov	rbx, qword ptr [r15 + 0x18]
	test	rbx, rbx
	je	.label_99
	mov	r15, qword ptr [rip + stdout]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rcx
	call	prog_fprintf
.label_99:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402658
	.globl sub_402658
	.type sub_402658, @function
sub_402658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40266a
	.globl sub_40266a
	.type sub_40266a, @function
sub_40266a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_101
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_101:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026f3
	.globl sub_4026f3
	.type sub_4026f3, @function
sub_4026f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402700
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40270f
	.globl sub_40270f
	.type sub_40270f, @function
sub_40270f:

	nop	
.label_102:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402715
	.globl sub_402715
	.type sub_402715, @function
sub_402715:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402720
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_102
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027b0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_104
	test	r15, r15
	je	.label_103
.label_104:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_103:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4027f2
	.globl sub_4027f2
	.type sub_4027f2, @function
sub_4027f2:

	nop	word ptr cs:[rax + rax]
.label_105:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402805
	.globl sub_402805
	.type sub_402805, @function
sub_402805:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40280f
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_106
	test	r14, r14
	je	.label_105
.label_106:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402840
	.globl savewd_init
	.type savewd_init, @function
savewd_init:

	mov	dword ptr [rdi], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402847
	.globl sub_402847
	.type sub_402847, @function
sub_402847:

	nop	word ptr [rax + rax]
.label_113:
	test	rcx, rcx
	jne	.label_109
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_109:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_108
.label_112:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_107
	test	rbx, rbx
	jne	.label_107
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40289c
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_113
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_111
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_112
.label_107:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_110
	test	rax, rax
	je	.label_111
.label_110:
	pop	rbx
	ret	
.label_108:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4028e2
	.globl sub_4028e2
	.type sub_4028e2, @function
sub_4028e2:

	nop	word ptr [rax + rax]
.label_111:
	call	xalloc_die
.label_114:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4028f5
	.globl sub_4028f5
	.type sub_4028f5, @function
sub_4028f5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028f9
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_114
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x402960
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_115
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_115:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4029c8
	.globl sub_4029c8
	.type sub_4029c8, @function
sub_4029c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4029de
	.globl sub_4029de
	.type sub_4029de, @function
sub_4029de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_116
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_119
	cmp	r12d, 0x7fffffff
	je	.label_121
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_117
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_117:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_119:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_122
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_118
.label_122:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_120
	mov	rdi, r14
	call	free
.label_120:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_118:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_116:
	call	abort
.label_121:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b9d
	.globl sub_402b9d
	.type sub_402b9d, @function
sub_402b9d:

	nop	dword ptr [rax]
.label_124:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_126
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_124
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402c12

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_128
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_127
	cmp	dword ptr [rbp], 0x20
	jne	.label_127
.label_128:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_129
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_129:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402c60

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_205:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_203
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_207]
.label_628:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_212
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_144
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_629:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_208
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_208
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	r14, r11
	jae	.label_235
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_235:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_237
.label_208:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_145
.label_621:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_145
.label_624:
	mov	al, 1
.label_622:
	mov	r12b, 1
.label_625:
	test	r12b, 1
	mov	cl, 1
	je	.label_132
	mov	ecx, eax
.label_132:
	mov	al, cl
.label_623:
	test	r12b, 1
	jne	.label_134
	test	r11, r11
	je	.label_135
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_135:
	mov	r14d, 1
	jmp	.label_140
.label_134:
	xor	r14d, r14d
.label_140:
	mov	ecx, OFFSET FLAT:label_144
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_145
.label_626:
	test	r12b, 1
	jne	.label_156
	test	r11, r11
	je	.label_158
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_158:
	mov	r14d, 1
	jmp	.label_162
.label_627:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_164
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_145
.label_156:
	xor	r14d, r14d
.label_162:
	mov	eax, OFFSET FLAT:label_164
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_145:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x402f4d
	.globl sub_402f4d
	.type sub_402f4d, @function
sub_402f4d:

	nop	dword ptr [rax]
.label_137:
	inc	rsi
.label_182:
	cmp	rbp, -1
	je	.label_221
	cmp	rsi, rbp
	jne	.label_222
	jmp	.label_224
	.section	.text
	.align	16
	#Procedure 0x402f63
	.globl sub_402f63
	.type sub_402f63, @function
sub_402f63:

	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_227
.label_222:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_177
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_213
	cmp	rbp, -1
	jne	.label_213
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_213:
	cmp	rbx, rbp
	jbe	.label_241
.label_177:
	xor	r8d, r8d
.label_226:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_243
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_246]
.label_584:
	test	rsi, rsi
	jne	.label_153
	jmp	.label_130
	.section	.text
	.align	16
	#Procedure 0x403005
	.globl sub_403005
	.type sub_403005, @function
sub_403005:

	nop	word ptr cs:[rax + rax]
.label_241:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_146
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_226
	jmp	.label_161
.label_146:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_226
.label_588:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_172
	test	rsi, rsi
	jne	.label_173
	cmp	rbp, 1
	je	.label_130
	xor	r13d, r13d
	jmp	.label_138
.label_577:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_181
	cmp	byte ptr [rsp + 6], 0
	jne	.label_159
	cmp	r12d, 2
	jne	.label_186
	mov	eax, r9d
	and	al, 1
	jne	.label_186
	cmp	r14, r11
	jae	.label_191
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_191:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_195
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_242
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	add	r14, 3
	mov	r9b, 1
.label_186:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_206:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_209
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_209
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_209
	cmp	r14, r11
	jae	.label_247
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_247:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_190
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_190:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_138
.label_578:
	mov	bl, 0x62
	jmp	.label_230
.label_579:
	mov	cl, 0x74
	jmp	.label_231
.label_580:
	mov	bl, 0x76
	jmp	.label_230
.label_581:
	mov	bl, 0x66
	jmp	.label_230
.label_582:
	mov	cl, 0x72
	jmp	.label_231
.label_585:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 6], 0
	jne	.label_155
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_240
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_250
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_133
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_133:
	add	r14, 3
	xor	r9d, r9d
.label_236:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_138
.label_586:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_142
	cmp	r12d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 6], 0
	je	.label_153
	jmp	.label_155
.label_587:
	cmp	r12d, 2
	jne	.label_157
	cmp	byte ptr [rsp + 6], 0
	jne	.label_155
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_163
.label_243:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_187
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_150:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_185
	test	r8b, r8b
	je	.label_185
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_138
.label_172:
	test	rsi, rsi
	jne	.label_175
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_175
.label_130:
	mov	dl, 1
.label_583:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_155
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_138:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_216
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_249
	jmp	.label_220
	.section	.text
	.align	16
	#Procedure 0x403354
	.globl sub_403354
	.type sub_403354, @function
sub_403354:

	nop	word ptr cs:[rax + rax]
.label_216:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_220
.label_249:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_225
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_163
	jmp	.label_234
	.section	.text
	.align	16
	#Procedure 0x40339d
	.globl sub_40339d
	.type sub_40339d, @function
sub_40339d:

	nop	dword ptr [rax]
.label_220:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_234
	jmp	.label_163
.label_225:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_234
.label_181:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_137
	xor	r15d, r15d
	jmp	.label_153
.label_157:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_231
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_163
.label_231:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_155
.label_230:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_138
	nop	word ptr cs:[rax + rax]
.label_234:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_159
	cmp	r12d, 2
	jne	.label_136
	mov	eax, r9d
	and	al, 1
	jne	.label_136
	cmp	r14, r11
	jae	.label_199
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_199:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_148:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_147
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_147:
	add	r14, 3
	mov	r9b, 1
.label_136:
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_160:
	inc	r14
	jmp	.label_165
.label_187:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_168
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_168:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_211:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_193
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_197
	cmp	rbp, -2
	je	.label_202
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_141
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_131:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_251
	bt	rsi, rdx
	jb	.label_219
.label_251:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_131
.label_141:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_176
	xor	r13d, r13d
.label_176:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_211
	jmp	.label_150
.label_209:
	xor	r13d, r13d
	jmp	.label_138
.label_175:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_138
.label_142:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_153
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_153
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_153
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_245
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_178
	cmp	byte ptr [rsp + 6], 0
	jne	.label_139
	cmp	r14, r11
	jae	.label_238
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_238:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_183
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_183:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_143
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_143:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_233
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_233:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_138
.label_153:
	xor	eax, eax
.label_173:
	xor	r13d, r13d
	jmp	.label_138
.label_185:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x403682
	.globl sub_403682
	.type sub_403682, @function
sub_403682:

	nop	word ptr cs:[rax + rax]
.label_239:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_166:
	test	r8b, r8b
	je	.label_174
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_169
	cmp	r14, r11
	jae	.label_179
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_179:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x4036cc
	.globl sub_4036cc
	.type sub_4036cc, @function
sub_4036cc:

	nop	dword ptr [rax]
.label_174:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_161
	cmp	r12d, 2
	jne	.label_192
	mov	eax, r9d
	and	al, 1
	jne	.label_192
	cmp	r14, r11
	jae	.label_196
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_196:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_200
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_200:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_204:
	add	r14, 3
	mov	r9b, 1
.label_192:
	cmp	r14, r11
	jae	.label_188
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_228
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_228:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_218
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_218:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_169:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_163
	test	r9b, 1
	je	.label_194
	mov	ebx, eax
	and	bl, 1
	jne	.label_194
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_232
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_232:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_223:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_194:
	cmp	r14, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x4037d3
	.globl sub_4037d3
	.type sub_4037d3, @function
sub_4037d3:

	nop	word ptr cs:[rax + rax]
.label_163:
	test	r9b, 1
	je	.label_217
	and	al, 1
	jne	.label_217
	cmp	r14, r11
	jae	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_244
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	add	r14, 2
	xor	r9d, r9d
.label_217:
	mov	ebx, r15d
.label_165:
	cmp	r14, r11
	jae	.label_170
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_170:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_137
.label_197:
	xor	r13d, r13d
.label_193:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_150
.label_202:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_154
	mov	rsi, qword ptr [rsp + 0x58]
.label_171:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_198
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_171
	xor	r13d, r13d
	jmp	.label_150
.label_154:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_150
.label_198:
	xor	r13d, r13d
	jmp	.label_150
.label_245:
	xor	r13d, r13d
	jmp	.label_138
.label_178:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x4038a8
	.globl sub_4038a8
	.type sub_4038a8, @function
sub_4038a8:

	nop	dword ptr [rax + rax]
.label_224:
	mov	rcx, rsi
.label_227:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_180
	or	al, dl
	je	.label_184
.label_180:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_189
	or	al, dl
	jne	.label_189
	test	r10b, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_189
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_205
.label_189:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_210
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_214
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_214
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	r14, r11
	jae	.label_151
	mov	byte ptr [rcx + r14], al
.label_151:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_167
	jmp	.label_214
.label_159:
	mov	qword ptr [rsp + 0x20], rbp
.label_161:
	mov	rdx, rdi
	jmp	.label_229
.label_155:
	mov	qword ptr [rsp + 0x20], rbp
.label_219:
	mov	rdx, rdi
	mov	eax, 2
.label_215:
	mov	qword ptr [rsp + 0x38], rax
.label_229:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_149:
	mov	r14, rax
.label_152:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_184:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_229
.label_201:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_149
.label_210:
	mov	rcx, qword ptr [rsp + 8]
.label_214:
	cmp	r14, r11
	jae	.label_152
	mov	byte ptr [rcx + r14], 0
	jmp	.label_152
.label_139:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_215
.label_203:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a67
	.globl sub_403a67
	.type sub_403a67, @function
sub_403a67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_252
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_252:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_254
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_255
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_253
.label_255:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_253:
	mov	edx, dword ptr [rax]
.label_254:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b34
	.globl sub_403b34
	.type sub_403b34, @function
sub_403b34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40
	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:

	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_256
	mov	eax, dword ptr [rdi + 4]
.label_256:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b4b
	.globl sub_403b4b
	.type sub_403b4b, @function
sub_403b4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_257
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_257:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ba7
	.globl sub_403ba7
	.type sub_403ba7, @function
sub_403ba7:

	nop	word ptr [rax + rax]
.label_260:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_258
	test	rax, rax
	je	.label_259
.label_258:
	pop	rbx
	ret	
.label_259:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403bc9
	.globl sub_403bc9
	.type sub_403bc9, @function
sub_403bc9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bd1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_259
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_260
	test	rbx, rbx
	jne	.label_260
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c00

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	mov	rbx, qword ptr [rsi + 0x18]
	test	rbx, rbx
	je	.label_261
	mov	r14, qword ptr [rip + stdout]
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	prog_fprintf
.label_261:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c46
	.globl sub_403c46
	.type sub_403c46, @function
sub_403c46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c50
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_262
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_262:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403cb1
	.globl sub_403cb1
	.type sub_403cb1, @function
sub_403cb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_263
	test	rax, rax
	je	.label_264
.label_263:
	pop	rbx
	ret	
.label_264:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403cda
	.globl sub_403cda
	.type sub_403cda, @function
sub_403cda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ce0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_265
	test	rdx, rdx
	je	.label_265
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_265:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d4e
	.globl sub_403d4e
	.type sub_403d4e, @function
sub_403d4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_266
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_267
	test	rax, rax
	je	.label_266
.label_267:
	pop	rbx
	ret	
.label_266:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403d85
	.globl sub_403d85
	.type sub_403d85, @function
sub_403d85:

	nop	word ptr cs:[rax + rax]
.label_271:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403dc8
	.globl sub_403dc8
	.type sub_403dc8, @function
sub_403dc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dcd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_271
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_54
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_272
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_272
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_272:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_55
	mov	ecx, OFFSET FLAT:label_270
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_270
	mov	ecx, OFFSET FLAT:label_278
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403f90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_285
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_286
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fb5
	.globl sub_403fb5
	.type sub_403fb5, @function
sub_403fb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x40402f
	.globl sub_40402f
	.type sub_40402f, @function
sub_40402f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_303
	mov	edx, OFFSET FLAT:label_292
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_299
.label_303:
	mov	edx, OFFSET FLAT:label_300
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_288
	jmp	qword ptr [(r12 * 8) + label_289]
.label_562:
	add	rsp, 8
	jmp	.label_287
.label_288:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_287
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_287
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_287
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_287
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_287
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_287
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_287:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404388
	.globl sub_404388
	.type sub_404388, @function
sub_404388:

	nop	dword ptr [rax + rax]
.label_309:
	mov	edi, OFFSET FLAT:label_33
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:label_35
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4043a9
	.globl sub_4043a9
	.type sub_4043a9, @function
sub_4043a9:

	nop	dword ptr [rax]
.label_535:
	mov	edi, dword ptr [rbx + 4]
	call	close
	jmp	.label_306
.label_536:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_309
.label_306:
	mov	dword ptr [rbx], 5
	pop	rbx
	ret	
.label_308:
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:label_35
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4043dd
	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:

	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	ja	.label_308
	jmp	qword ptr [(rax * 8) + label_307]
	.section	.text
	.align	16
	#Procedure 0x4043f0

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [rbx]
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_310
	test	rdx, rdx
	jne	.label_310
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edx, edx
.label_310:
	mov	r8d, dword ptr [rbx + 0xc]
	mov	eax, dword ptr [rbx + 0x10]
	mov	r9d, OFFSET FLAT:announce_mkdir
	mov	rdi, r15
	mov	rsi, r14
	mov	rcx, rbx
	push	1
	push	-1
	push	-1
	push	rax
	call	make_dir_parents
	add	rsp, 0x20
	movzx	eax, al
	mov	ebp, eax
	xor	ebp, 1
	test	al, al
	je	.label_311
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_311
	cmp	qword ptr [rbx], 0
	je	.label_311
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_311:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404471
	.globl sub_404471
	.type sub_404471, @function
sub_404471:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40448e
	.globl sub_40448e
	.type sub_40448e, @function
sub_40448e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404490
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_312
	mov	qword ptr [rax], rbx
.label_312:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40457c
	.globl sub_40457c
	.type sub_40457c, @function
sub_40457c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404580

	.globl savewd_chdir
	.type savewd_chdir, @function
savewd_chdir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	rbx, rsi
	mov	r14, rdi
	test	r12, r12
	sete	al
	test	bpl, 1
	jne	.label_313
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_322
.label_313:
	mov	esi, ebp
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r13d, eax
	test	r12, r12
	je	.label_331
	mov	dword ptr [r12], r13d
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 4], eax
.label_331:
	test	r13d, r13d
	js	.label_335
	xor	r15d, r15d
	test	bpl, 2
	je	.label_322
	jmp	.label_315
.label_335:
	call	__errno_location
	mov	r15d, 0xffffffff
	cmp	dword ptr [rax], 0xd
	jne	.label_321
.label_322:
	mov	eax, dword ptr [r14]
	cmp	eax, 5
	ja	.label_314
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_317
	test	eax, eax
	jne	.label_320
	mov	edi, OFFSET FLAT:label_326
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	test	eax, eax
	js	.label_325
	mov	dword ptr [r14], 1
.label_318:
	mov	dword ptr [r14 + 4], eax
	jmp	.label_317
.label_320:
	cmp	dword ptr [r14 + 4], 0
	jns	.label_317
	jmp	.label_330
.label_325:
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0xd
	je	.label_328
	cmp	eax, 0x74
	jne	.label_333
.label_328:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [r14], rax
.label_330:
	lea	rbp, [r14 + 4]
	call	fork
	mov	dword ptr [rbp], eax
	test	eax, eax
	je	.label_317
	mov	r15d, 0xfffffffe
	test	eax, eax
	jle	.label_336
	xor	r12d, r12d
	jmp	.label_315
.label_317:
	test	r13d, r13d
	js	.label_316
	mov	edi, r13d
	call	fchdir
	jmp	.label_319
.label_316:
	mov	rdi, rbx
	call	chdir
.label_319:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_315
	mov	eax, dword ptr [r14]
	dec	eax
	cmp	eax, 4
	ja	.label_324
	xor	r15d, r15d
	jmp	qword ptr [(rax * 8) + label_327]
.label_497:
	mov	dword ptr [r14], 2
	jmp	.label_315
.label_498:
	cmp	dword ptr [r14 + 4], 0
	jne	.label_332
.label_315:
	test	r13d, r13d
	js	.label_321
	test	r12, r12
	jne	.label_321
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	dword ptr [rbp], ebx
.label_321:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_336:
	mov	dword ptr [r14], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_318
.label_333:
	mov	dword ptr [r14], 4
	jmp	.label_318
.label_314:
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:label_323
	call	__assert_fail
.label_324:
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:label_329
	call	__assert_fail
.label_332:
	mov	edi, OFFSET FLAT:label_334
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0x9b
	mov	ecx, OFFSET FLAT:label_329
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404771
	.globl sub_404771
	.type sub_404771, @function
sub_404771:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404780

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047d5
	.globl sub_4047d5
	.type sub_4047d5, @function
sub_4047d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_347
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_349
.label_347:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_349:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_338
	cmp	r10d, 0x29
	jae	.label_346
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_348
.label_346:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_348:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_338
	cmp	r10d, 0x29
	jae	.label_344
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_345
.label_344:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_345:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_338
	cmp	r10d, 0x29
	jae	.label_342
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_343
.label_342:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_343:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_338
	cmp	r10d, 0x29
	jae	.label_340
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_341
.label_340:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_341:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_338
	cmp	r10d, 0x29
	jae	.label_337
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_339
.label_337:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_339:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_338
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_338
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_338
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_338
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_338:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049c2
	.globl sub_4049c2
	.type sub_4049c2, @function
sub_4049c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	ebx, edi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0x14], 0x1ff
	lea	r15, [rsp + 0x18]
	mov	dword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x20], 0
	mov	byte ptr [rsp + 0x1c], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_285
	call	setlocale
	mov	edi, OFFSET FLAT:label_358
	mov	esi, OFFSET FLAT:label_359
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_358
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_356
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	edx, OFFSET FLAT:label_367
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_352
	add	eax, -0x5a
	cmp	eax, 0x1c
	ja	.label_353
	jmp	qword ptr [(rax * 8) + label_355]
.label_511:
	cmp	qword ptr [rip + optarg],  0
	je	.label_356
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_356
.label_512:
	mov	r12, qword ptr [rip + optarg]
	jmp	.label_356
.label_513:
	mov	qword ptr [rsp + 8], OFFSET FLAT:make_ancestor
	mov	ebp, OFFSET FLAT:make_ancestor
	jmp	.label_356
.label_352:
	cmp	eax, -1
	jne	.label_365
	cmp	dword ptr [rip + optind],  ebx
	je	.label_366
	test	r12, r12
	jne	.label_368
	test	rbp, rbp
	je	.label_350
.label_368:
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_354
	mov	rdi, r12
	call	mode_compile
	mov	r13, rax
	test	r13, r13
	je	.label_364
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rcx, r13
	mov	r8, r15
	call	mode_adjust
	mov	dword ptr [rsp + 0x14], eax
	mov	rdi, r13
	call	free
	jmp	.label_350
.label_354:
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_350:
	movsxd	rax, dword ptr [rip + optind]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	lea	rcx, [rsp + 8]
	mov	edx, OFFSET FLAT:process_dir
	mov	edi, ebx
	call	savewd_process_files
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_365:
	cmp	eax, 0xffffff7d
	je	.label_362
	cmp	eax, 0xffffff7e
	jne	.label_353
	xor	edi, edi
	call	usage
.label_362:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_270
	mov	edx, OFFSET FLAT:label_54
	mov	r8d, OFFSET FLAT:label_357
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_353:
	mov	edi, 1
	call	usage
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_382
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_382:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_371
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_383
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_372
	test	esi, esi
	jne	.label_371
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_386
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_387
.label_371:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_369
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_372
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_375
.label_383:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_378
.label_372:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_379
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_380
.label_379:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_380:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_381:
	call	fcntl
.label_378:
	mov	ebp, eax
.label_374:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_375:
	cmp	eax, 6
	jne	.label_369
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_389
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_370
.label_369:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_373
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_377
.label_386:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_387:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_381
.label_389:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_370:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_384
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_388
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_388
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_374
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_376
.label_388:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_374
.label_373:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_377:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_378
.label_384:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_376:
	test	al, al
	je	.label_374
	test	ebp, ebp
	js	.label_374
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_385
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_374
.label_385:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_374
	.section	.text
	.align	16
	#Procedure 0x404ed1
	.globl sub_404ed1
	.type sub_404ed1, @function
sub_404ed1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl dirchownmod
	.type dirchownmod, @function
dirchownmod:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0xc], r9d
	mov	r12d, r8d
	mov	r13d, ecx
	mov	r15d, edx
	mov	r14d, edi
	test	r14d, r14d
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	js	.label_400
	mov	esi, r14d
	call	__fxstat
	jmp	.label_399
.label_400:
	call	__xstat
.label_399:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_396
	mov	rbx, qword ptr [rsp + 0x30]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_402
	cmp	r13d, -1
	je	.label_390
	mov	rax, rbx
	shr	rax, 0x20
	cmp	eax, r13d
	jne	.label_394
.label_390:
	xor	eax, eax
	cmp	r12d, -1
	je	.label_397
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_397
.label_394:
	test	r14d, r14d
	js	.label_401
	mov	edi, r14d
	mov	esi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_391
.label_402:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	jmp	.label_396
.label_401:
	cmp	r15d, -1
	je	.label_404
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	lchown
	jmp	.label_391
.label_404:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	chown
.label_391:
	mov	ebp, eax
	mov	ecx, ebx
	and	ecx, 0x49
	mov	edx, ebx
	and	edx, 0xc00
	xor	eax, eax
	test	ebp, ebp
	cmove	eax, edx
	test	ecx, ecx
	cmove	eax, ecx
	test	ebp, ebp
	jne	.label_396
.label_397:
	mov	esi, dword ptr [rsp + 0xe0]
	mov	ecx, ebx
	xor	ecx, dword ptr [rsp + 0xc]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_396
	not	esi
	and	esi, ebx
	and	esi, 0xfff
	or	esi, dword ptr [rsp + 0xc]
	test	r14d, r14d
	js	.label_403
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	jmp	.label_393
.label_396:
	test	r14d, r14d
	js	.label_392
.label_393:
	test	ebp, ebp
	je	.label_395
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, r14d
	call	close
	mov	dword ptr [rbx], r15d
	jmp	.label_392
.label_395:
	mov	edi, r14d
	call	close
.label_398:
	mov	ebp, eax
.label_392:
	mov	eax, ebp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_403:
	mov	rdi, qword ptr [rsp + 0x10]
	call	chmod
	jmp	.label_398
	.section	.text
	.align	16
	#Procedure 0x405050

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_405
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_405
	test	byte ptr [rbx + 1], 1
	je	.label_405
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_405:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x405083
	.globl sub_405083
	.type sub_405083, @function
sub_405083:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050e4
	.globl sub_4050e4
	.type sub_4050e4, @function
sub_4050e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_406
	test	rsi, rsi
	mov	ecx, 1
	je	.label_407
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_407
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_406:
	mov	ecx, 1
.label_407:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40513b
	.globl sub_40513b
	.type sub_40513b, @function
sub_40513b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_408
	call	rpl_calloc
	test	rax, rax
	je	.label_408
	pop	rcx
	ret	
.label_408:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405166
	.globl sub_405166
	.type sub_405166, @function
sub_405166:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405170
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405188
	.globl sub_405188
	.type sub_405188, @function
sub_405188:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_410
	cmp	byte ptr [rax], 0x43
	jne	.label_412
	cmp	byte ptr [rax + 1], 0
	je	.label_409
.label_412:
	mov	esi, OFFSET FLAT:label_411
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_410
.label_409:
	xor	ebx, ebx
.label_410:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051c1
	.globl sub_4051c1
	.type sub_4051c1, @function
sub_4051c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x4051e7
	.globl sub_4051e7
	.type sub_4051e7, @function
sub_4051e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051f8
	.globl sub_4051f8
	.type sub_4051f8, @function
sub_4051f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405218
	.globl sub_405218
	.type sub_405218, @function
sub_405218:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40522a
	.globl sub_40522a
	.type sub_40522a, @function
sub_40522a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_413
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_415
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_413
.label_415:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_413
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_414
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_414:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_413:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4052a4
	.globl sub_4052a4
	.type sub_4052a4, @function
sub_4052a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_419
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_421
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_421
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_417
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_417:
	mov	rbx, r14
.label_421:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_419:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_420
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405351
	.globl sub_405351
	.type sub_405351, @function
sub_405351:

	nop	word ptr cs:[rax + rax]
.label_426:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405365
	.globl sub_405365
	.type sub_405365, @function
sub_405365:

	nop	word ptr cs:[rax + rax]
.label_425:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_422
	mov	qword ptr [rsi], rbx
.label_424:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_423
	test	rax, rax
	je	.label_422
.label_423:
	pop	rbx
	ret	
.label_422:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40539e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_425
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_426
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_424
	call	free
	xor	eax, eax
	jmp	.label_423
	.section	.text
	.align	16
	#Procedure 0x4053d0

	.globl make_dir_parents
	.type make_dir_parents, @function
make_dir_parents:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, r9
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2f
	je	.label_443
	cmp	dword ptr [rbx], 4
	jne	.label_443
	mov	r14d, dword ptr [rbx + 4]
	test	r14d, r14d
	jne	.label_427
.label_443:
	xor	r12d, r12d
	test	rbp, rbp
	mov	dword ptr [rsp + 0x1c], r8d
	je	.label_428
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	call	mkancesdirs
	mov	r8d, dword ptr [rsp + 0x1c]
	mov	r12, rax
	test	r12, r12
	js	.label_435
.label_428:
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x30], rbp
	mov	r13d, dword ptr [rsp + 0x120]
	mov	eax, dword ptr [rsp + 0x110]
	and	r13d, dword ptr [rsp + 0x118]
	and	eax, 0xc00
	mov	ebp, r8d
	and	ebp, 0x200
	mov	ecx, r8d
	and	ecx, 0xffffffc0
	mov	r14d, r8d
	and	r14d, 0xffffffed
	or	ebp, eax
	cmove	r14d, r8d
	cmp	r13d, -1
	cmovne	r14d, ecx
	add	r12, r15
	mov	rdi, r12
	mov	esi, r14d
	mov	ebx, r8d
	call	mkdir
	test	eax, eax
	mov	qword ptr [rsp + 0x20], r15
	mov	dword ptr [rsp + 0x2c], r13d
	je	.label_431
	mov	bl, byte ptr [rsp + 0x128]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x10], eax
	mov	r14d, 0xffffffff
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, dword ptr [rsp + 0x110]
	jmp	.label_440
.label_431:
	cmp	r13d, -1
	sete	r13b
	mov	rdi, r15
	mov	eax, dword ptr [rsp + 0x110]
	mov	r15d, eax
	and	ebx, r15d
	and	ebx, 0x1ff
	mov	rsi, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 0x40]
	or	ebx, ebp
	sete	bl
	and	bl, r13b
	mov	dword ptr [rsp + 0x10], 0
	mov	edx, 3
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, r15d
.label_440:
	test	bl, bl
	je	.label_430
	mov	bpl, 1
	mov	r14d, dword ptr [rsp + 0x10]
	test	r14d, r14d
	mov	r15, qword ptr [rsp + 0x20]
	je	.label_433
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_427
	cmp	r14d, 2
	je	.label_427
	mov	rbx, r15
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	mov	rsi, r12
	call	__xstat
	test	eax, eax
	je	.label_444
	cmp	r14d, 0x11
	jne	.label_432
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	je	.label_432
	cmp	r15d, 0x14
	je	.label_432
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r14
	jmp	.label_436
.label_430:
	lea	rcx, [rsp + 0x48]
	mov	rsi, r12
	call	savewd_chdir
	cmp	eax, -2
	jg	.label_442
	mov	bpl, 1
	jmp	.label_433
.label_435:
	mov	bpl, 1
	cmp	r12, -1
	jne	.label_433
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_427
.label_442:
	test	eax, eax
	mov	eax, OFFSET FLAT:label_326
	cmove	r12, rax
	mov	edi, dword ptr [rsp + 0x48]
	mov	dword ptr [rsp], ebp
	mov	rsi, r12
	mov	edx, r14d
	mov	ecx, dword ptr [rsp + 0x118]
	mov	r8d, dword ptr [rsp + 0x120]
	mov	r9d, dword ptr [rsp + 0x1c]
	call	dirchownmod
	mov	bpl, 1
	test	eax, eax
	je	.label_433
	mov	r14d, dword ptr [rsp + 0x10]
	test	r14d, r14d
	je	.label_434
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_439
	cmp	r14d, 2
	je	.label_439
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	jne	.label_441
.label_439:
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_427
.label_444:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	mov	bpl, 1
	cmp	eax, 0x4000
	je	.label_433
.label_432:
	mov	r15, rbx
.label_427:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
.label_446:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_436:
	call	error
.label_433:
	mov	eax, ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_434:
	call	__errno_location
.label_441:
	cmp	dword ptr [rsp + 0x2c], -1
	mov	r14d, dword ptr [rax]
	mov	eax, OFFSET FLAT:label_437
	mov	esi, OFFSET FLAT:label_438
	cmove	rsi, rax
	xor	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_446
	.section	.text
	.align	16
	#Procedure 0x4056de
	.globl sub_4056de
	.type sub_4056de, @function
sub_4056de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4056e0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4056f9
	.globl sub_4056f9
	.type sub_4056f9, @function
sub_4056f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405700
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405733
	.globl sub_405733
	.type sub_405733, @function
sub_405733:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_447
	test	rbx, rbx
	jne	.label_447
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_449:
	call	xalloc_die
.label_447:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_448
	test	rax, rax
	je	.label_449
.label_448:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405770
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_450:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_450
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x405791
	.globl sub_405791
	.type sub_405791, @function
sub_405791:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_451
	test	rsi, rsi
	je	.label_451
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_451:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405810

	.globl savewd_restore
	.type savewd_restore, @function
savewd_restore:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	mov	eax, dword ptr [r14]
	cmp	rax, 4
	ja	.label_453
	xor	ebp, ebp
	jmp	qword ptr [(rax * 8) + label_458]
.label_574:
	mov	ebx, dword ptr [r14 + 4]
	test	ebx, ebx
	je	.label_459
	jle	.label_454
	lea	rbp, [rsp + 0xc]
	nop	word ptr [rax + rax]
.label_462:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	jns	.label_455
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_462
	mov	edi, OFFSET FLAT:label_457
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0xd8
	mov	ecx, OFFSET FLAT:label_452
	call	__assert_fail
.label_456:
	mov	dword ptr [r14], 1
.label_454:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_459:
	mov	edi, esi
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_575:
	mov	ebp, dword ptr [r14 + 4]
	call	__errno_location
	mov	rbx, rax
.label_461:
	mov	dword ptr [rbx], ebp
	mov	ebp, 0xffffffff
	jmp	.label_454
.label_455:
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	eax, dword ptr [rsp + 0xc]
	mov	edi, eax
	and	edi, 0x7f
	je	.label_460
	call	raise
	mov	eax, dword ptr [rsp + 0xc]
.label_460:
	movzx	ebp, ah
	jmp	.label_454
.label_573:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	test	eax, eax
	je	.label_456
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	edi, dword ptr [r14 + 4]
	call	close
	mov	dword ptr [r14], 4
	mov	dword ptr [r14 + 4], ebp
	jmp	.label_461
.label_453:
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 0xe2
	mov	ecx, OFFSET FLAT:label_452
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405920

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_463
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_470:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_468
	cmp	ebp, 3
	jne	.label_464
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_464
	.section	.text
	.align	16
	#Procedure 0x4059b8
	.globl sub_4059b8
	.type sub_4059b8, @function
sub_4059b8:

	nop	dword ptr [rax + rax]
.label_468:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_464:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_469
	cmp	esi, 0x2d
	je	.label_466
	cmp	esi, 0x3d
	jne	.label_467
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_467
	.section	.text
	.align	16
	#Procedure 0x405a1a
	.globl sub_405a1a
	.type sub_405a1a, @function
sub_405a1a:

	nop	word ptr [rax + rax]
.label_466:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_467
	.section	.text
	.align	16
	#Procedure 0x405a29
	.globl sub_405a29
	.type sub_405a29, @function
sub_405a29:

	nop	dword ptr [rax]
.label_469:
	or	r13d, ebp
	or	edi, ebp
.label_467:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_470
.label_463:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_465
	mov	dword ptr [rax], r13d
.label_465:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a5f
	.globl sub_405a5f
	.type sub_405a5f, @function
sub_405a5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405a60

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_471
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_472
.label_471:
	mov	eax, ebx
.label_472:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405aa1
	.globl sub_405aa1
	.type sub_405aa1, @function
sub_405aa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ab0

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_473
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_473:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdi, qword ptr [rip + program_name]
	mov	rsi, rbx
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:label_476
	mov	rsi, rbx
	call	fputs_unlocked
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r14
	call	__vfprintf_chk
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x30]
	jae	.label_475
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_474:
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	ret	
.label_475:
	mov	esi, 0xa
	mov	rdi, rbx
	call	__overflow
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x405b94
	.globl sub_405b94
	.type sub_405b94, @function
sub_405b94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ba0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405bd0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405be9
	.globl sub_405be9
	.type sub_405be9, @function
sub_405be9:

	nop	dword ptr [rax]
.label_482:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_478
	mov	eax, OFFSET FLAT:label_479
	jmp	.label_480
	.section	.text
	.align	16
	#Procedure 0x405bff
	.globl sub_405bff
	.type sub_405bff, @function
sub_405bff:

	nop	word ptr cs:[rax + rax]
.label_483:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_481
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_481
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_481
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_481
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_481
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_481
	cmp	byte ptr [rax + 7], 0
	je	.label_482
.label_481:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_164
	mov	eax, OFFSET FLAT:label_144
.label_480:
	cmove	rax, rcx
.label_484:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c52

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_484
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_483
	cmp	ecx, 0x55
	jne	.label_481
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_481
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_481
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_481
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_481
	cmp	byte ptr [rax + 5], 0
	jne	.label_481
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_485
	mov	eax, OFFSET FLAT:label_486
	jmp	.label_480
	.section	.text
	.align	16
	#Procedure 0x405d25
	.globl sub_405d25
	.type sub_405d25, @function
sub_405d25:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d32
	.globl sub_405d32
	.type sub_405d32, @function
sub_405d32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d56
	.globl sub_405d56
	.type sub_405d56, @function
sub_405d56:

	nop	word ptr cs:[rax + rax]
