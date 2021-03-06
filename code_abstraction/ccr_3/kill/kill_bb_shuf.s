	.section	.text
	.align	16
	#Procedure 0x401579
	.globl sub_401579
	.type sub_401579, @function
sub_401579:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40157a
	.globl sub_40157a
	.type sub_40157a, @function
sub_40157a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015b2
	.globl sub_4015b2
	.type sub_4015b2, @function
sub_4015b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fa
	.globl sub_4015fa
	.type sub_4015fa, @function
sub_4015fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40161c
	.globl sub_40161c
	.type sub_40161c, @function
sub_40161c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40162d
	.globl sub_40162d
	.type sub_40162d, @function
sub_40162d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401646
	.globl sub_401646
	.type sub_401646, @function
sub_401646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_13
	test	rsi, rsi
	je	.label_13
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
.label_13:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4016bc
	.globl sub_4016bc
	.type sub_4016bc, @function
sub_4016bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016c0
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
	#Procedure 0x401735
	.globl sub_401735
	.type sub_401735, @function
sub_401735:

	nop	word ptr cs:[rax + rax]
.label_14:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401745
	.globl sub_401745
	.type sub_401745, @function
sub_401745:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40174b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_14
	test	rdx, rdx
	je	.label_14
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_15:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4017b5
	.globl sub_4017b5
	.type sub_4017b5, @function
sub_4017b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c4
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
	je	.label_15
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
	.section	.text
	.align	16
	#Procedure 0x401820
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401831
	.globl sub_401831
	.type sub_401831, @function
sub_401831:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401840
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401848
	.globl sub_401848
	.type sub_401848, @function
sub_401848:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401850

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_16
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_18
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_16
.label_18:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_16
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_17
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_17:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_16:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4018c4
	.globl sub_4018c4
	.type sub_4018c4, @function
sub_4018c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_22:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_24
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_19
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_19
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_19
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_21
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_22
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_20
	cmp	eax, ebp
	jl	.label_20
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_27
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_26
.label_24:
	mov	rsi, rdx
	jmp	.label_19
.label_21:
	add	rax, 4
	mov	rsi, rax
.label_19:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_25]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_20:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_27:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_26:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_20
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_20
	.section	.text
	.align	16
	#Procedure 0x4019d0
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
	je	.label_29
	test	r14, r14
	je	.label_28
.label_29:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_28:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a06
	.globl sub_401a06
	.type sub_401a06, @function
sub_401a06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_30
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_30
	test	byte ptr [rbx + 1], 1
	je	.label_30
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_30:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401a43
	.globl sub_401a43
	.type sub_401a43, @function
sub_401a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50
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
	#Procedure 0x401a5f
	.globl sub_401a5f
	.type sub_401a5f, @function
sub_401a5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401a60

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
	jne	.label_31
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_31
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_32
.label_31:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_32:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_33
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_33:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ace
	.globl sub_401ace
	.type sub_401ace, @function
sub_401ace:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ad0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_83
	call	setlocale
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_88
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_35
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0xffffffff
	mov	dword ptr [rsp + 8], r13d
	nop	word ptr [rax + rax]
.label_78:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0xf7
	ja	.label_37
	mov	cl, 1
	xor	r15d, r15d
	jmp	qword ptr [(rax * 8) + label_50]
.label_460:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, 2
	jne	.label_53
.label_461:
	mov	rax, qword ptr [rip + optarg]
	movsxd	rbp, dword ptr [rip + optind]
	test	rax, rax
	jne	.label_58
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	mov	rdi, r13
	call	strlen
	add	rax, r13
	mov	r13d, dword ptr [rsp + 8]
	mov	qword ptr [rip + optarg],  rax
.label_58:
	mov	rcx, qword ptr [r12 + rbp*8 - 8]
	add	rcx, 2
	cmp	rax, rcx
	jne	.label_67
	dec	rax
	mov	qword ptr [rip + optarg],  rax
.label_464:
	test	r14d, r14d
	jns	.label_64
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x30]
	call	operand2sig
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_78
	jmp	.label_82
.label_463:
	xor	ecx, ecx
.label_462:
	mov	r15b, cl
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0xf7
	ja	.label_37
	mov	bpl, 1
	jmp	qword ptr [(rax * 8) + label_42]
.label_456:
	mov	eax, dword ptr [rip + optind]
	mov	bpl, 1
	cmp	eax, 2
	jne	.label_44
.label_457:
	mov	rax, qword ptr [rip + optarg]
	movsxd	rbp, dword ptr [rip + optind]
	test	rax, rax
	jne	.label_46
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	mov	rdi, r13
	call	strlen
	add	rax, r13
	mov	r13d, dword ptr [rsp + 8]
	mov	qword ptr [rip + optarg],  rax
.label_46:
	mov	rcx, qword ptr [r12 + rbp*8 - 8]
	add	rcx, 2
	cmp	rax, rcx
	jne	.label_67
	dec	rax
	mov	qword ptr [rip + optarg],  rax
.label_459:
	test	r14d, r14d
	jns	.label_64
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x30]
	call	operand2sig
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_69
.label_82:
	mov	edi, 1
	call	usage
.label_53:
	xor	ebp, ebp
	xor	r15d, r15d
.label_44:
	dec	eax
	mov	dword ptr [rip + optind],  eax
.label_455:
	mov	ecx, 0xf
	test	r14d, r14d
	js	.label_75
	test	bpl, bpl
	mov	ecx, r14d
	jne	.label_77
.label_75:
	test	bpl, bpl
	mov	eax, dword ptr [rip + optind]
	jne	.label_51
	cmp	eax, r13d
	jge	.label_84
.label_51:
	movsxd	rdx, eax
	test	bpl, bpl
	je	.label_87
	cmp	eax, r13d
	mov	ebp, 0
	lea	r14, [r12 + rdx*8]
	cmovge	r14, rbp
	test	r15b, r15b
	jne	.label_34
	test	r14, r14
	je	.label_38
	mov	rdi, qword ptr [r14]
	xor	r13d, r13d
	test	rdi, rdi
	je	.label_40
	lea	rbp, [r12 + rdx*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rsi, r14
	call	operand2sig
	mov	ecx, eax
	test	ecx, ecx
	mov	r13d, 1
	js	.label_49
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_52
	mov	rdi, r14
	call	puts
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x401d7d
	.globl sub_401d7d
	.type sub_401d7d, @function
sub_401d7d:

	nop	dword ptr [rax]
.label_52:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_60
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
.label_59:
	mov	r13d, ebx
.label_49:
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	mov	ebx, r13d
	jne	.label_65
	jmp	.label_40
.label_87:
	mov	dword ptr [rsp + 8], ecx
	mov	rbx, qword ptr [r12 + rdx*8]
	lea	r15, [r12 + rdx*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	r13d, r13d
	jmp	.label_48
.label_41:
	mov	edi, eax
	mov	esi, dword ptr [rsp + 8]
	call	kill
	test	eax, eax
	je	.label_74
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_81
.label_48:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	edx, 0xa
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r14
	call	__strtol_internal
	cmp	dword ptr [rbp], 0x22
	je	.label_36
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_36
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rbx, rcx
	je	.label_36
	cmp	byte ptr [rcx], 0
	je	.label_41
	nop	
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
.label_81:
	call	error
	mov	r13d, 1
.label_74:
	mov	rbx, qword ptr [r15]
	add	r15, 8
	test	rbx, rbx
	jne	.label_48
	jmp	.label_40
.label_34:
	mov	qword ptr [rsp + 8], rdx
	mov	ebx, 1
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	test	eax, eax
	jne	.label_66
	mov	rdi, r15
	call	strlen
	mov	ecx, ebp
	cmp	rcx, rax
	cmovae	eax, ebp
	mov	ebp, eax
.label_66:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_70
	mov	r15, rbp
	test	r14, r14
	je	.label_71
	mov	rdi, qword ptr [r14]
	xor	r13d, r13d
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 8]
	je	.label_40
	lea	rbx, [r12 + rax*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_45:
	mov	rsi, r14
	call	operand2sig
	mov	ebp, eax
	test	ebp, ebp
	mov	r13d, 1
	js	.label_86
	mov	edi, ebp
	call	strsignal
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_55
	cmove	rax, rcx
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 2
	xor	eax, eax
	mov	ecx, ebp
	mov	r8d, r15d
	mov	r9, r14
	call	__printf_chk
	mov	r13d, r12d
.label_86:
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	mov	r12d, r13d
	jne	.label_45
	jmp	.label_40
.label_38:
	mov	ebx, 1
	lea	rbp, [rsp + 0x10]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_57:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_54
	mov	rdi, rbp
	call	puts
.label_54:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_57
	jmp	.label_40
.label_71:
	mov	ebx, 1
	lea	r14, [rsp + 0x10]
	mov	ebp, OFFSET FLAT:label_55
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	edi, ebx
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	jne	.label_68
	mov	edi, ebx
	call	strsignal
	test	rax, rax
	cmove	rax, rbp
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 2
	xor	eax, eax
	mov	ecx, ebx
	mov	r8d, r15d
	mov	r9, r14
	call	__printf_chk
.label_68:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_79
.label_40:
	mov	eax, r13d
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	edi, 1
	call	usage
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
.label_73:
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
.label_453:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_61
	mov	edx, OFFSET FLAT:label_62
	mov	r8d, OFFSET FLAT:label_63
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_454:
	xor	edi, edi
	call	usage
.label_37:
	mov	edi, 1
	call	usage
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	jmp	.label_73
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	jmp	.label_73
	.section	.text
	.align	16
	#Procedure 0x4020de
	.globl sub_4020de
	.type sub_4020de, @function
sub_4020de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_90
	cmp	byte ptr [rax], 0x43
	jne	.label_92
	cmp	byte ptr [rax + 1], 0
	je	.label_89
.label_92:
	mov	esi, OFFSET FLAT:label_91
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_90
.label_89:
	xor	ebx, ebx
.label_90:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402111
	.globl sub_402111
	.type sub_402111, @function
sub_402111:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402120

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_93
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_93:
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
	#Procedure 0x4021a3
	.globl sub_4021a3
	.type sub_4021a3, @function
sub_4021a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_105
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_107
.label_105:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_107:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_96
	cmp	r10d, 0x29
	jae	.label_104
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_106
.label_104:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_106:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_96
	cmp	r10d, 0x29
	jae	.label_102
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_103
.label_102:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_103:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_96
	cmp	r10d, 0x29
	jae	.label_100
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_101
.label_100:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_101:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_96
	cmp	r10d, 0x29
	jae	.label_98
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_99
.label_98:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_99:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_96
	cmp	r10d, 0x29
	jae	.label_95
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_97
.label_95:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_97:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_96
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_96
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_96
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_96
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_96:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023c2
	.globl sub_4023c2
	.type sub_4023c2, @function
sub_4023c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_109
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:label_112
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402444
	.globl sub_402444
	.type sub_402444, @function
sub_402444:

	nop	word ptr cs:[rax + rax]
.label_114:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402455
	.globl sub_402455
	.type sub_402455, @function
sub_402455:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402459

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
	je	.label_113
	test	r15, r15
	je	.label_114
.label_113:
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
	#Procedure 0x402490
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
	#Procedure 0x4024a8
	.globl sub_4024a8
	.type sub_4024a8, @function
sub_4024a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0
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
	#Procedure 0x4024c3
	.globl sub_4024c3
	.type sub_4024c3, @function
sub_4024c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024d0

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
	jne	.label_116
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_115
	test	cl, cl
	jne	.label_115
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_115
.label_116:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_115
	call	__errno_location
	mov	dword ptr [rax], 0
.label_115:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402530
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
	#Procedure 0x4025f1
	.globl sub_4025f1
	.type sub_4025f1, @function
sub_4025f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_83
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_117
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402625
	.globl sub_402625
	.type sub_402625, @function
sub_402625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_120
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_122
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_119
	call	free
	xor	eax, eax
	jmp	.label_121
.label_120:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_118
	mov	qword ptr [rsi], rbx
.label_119:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_121
	test	rax, rax
	je	.label_118
.label_121:
	pop	rbx
	ret	
.label_122:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40268f
	.globl sub_40268f
	.type sub_40268f, @function
sub_40268f:

	nop	word ptr cs:[rax + rax]
.label_118:
	call	xalloc_die
.label_123:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4026a5
	.globl sub_4026a5
	.type sub_4026a5, @function
sub_4026a5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4026a7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_123
	test	rdx, rdx
	je	.label_123
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x402765
	.globl sub_402765
	.type sub_402765, @function
sub_402765:

	nop	word ptr cs:[rax + rax]
.label_124:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402775
	.globl sub_402775
	.type sub_402775, @function
sub_402775:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40277b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_125
	test	rax, rax
	je	.label_124
.label_125:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402790

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_126
	test	rbx, rbx
	jne	.label_126
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_128:
	call	xalloc_die
.label_126:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_127
	test	rax, rax
	je	.label_128
.label_127:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_129
	call	rpl_calloc
	test	rax, rax
	je	.label_129
	pop	rcx
	ret	
.label_129:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4027e6
	.globl sub_4027e6
	.type sub_4027e6, @function
sub_4027e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0
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
	#Procedure 0x402826
	.globl sub_402826
	.type sub_402826, @function
sub_402826:

	nop	word ptr cs:[rax + rax]
.label_132:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402835
	.globl sub_402835
	.type sub_402835, @function
sub_402835:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40283d
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_132
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_131
	test	rbx, rbx
	jne	.label_131
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_131:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_130
	test	rax, rax
	je	.label_132
.label_130:
	pop	rbx
	ret	
.label_135:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_133
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4028a0
	.globl sub_4028a0
	.type sub_4028a0, @function
sub_4028a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028af

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_135
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_136
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_136
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_134
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_134:
	mov	rbx, r14
.label_136:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402930
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
	je	.label_139
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
.label_139:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402998
	.globl sub_402998
	.type sub_402998, @function
sub_402998:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x402a0f
	.globl sub_402a0f
	.type sub_402a0f, @function
sub_402a0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402a10

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
	je	.label_140
	cmp	r15, -2
	jb	.label_140
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_140
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_140:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a66
	.globl sub_402a66
	.type sub_402a66, @function
sub_402a66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x402ac4
	.globl sub_402ac4
	.type sub_402ac4, @function
sub_402ac4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_145
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_143
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_141
.label_145:
	test	rcx, rcx
	jne	.label_147
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_147:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_142
.label_141:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_144
	test	rbx, rbx
	jne	.label_144
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_142:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b4e
	.globl sub_402b4e
	.type sub_402b4e, @function
sub_402b4e:

	nop	word ptr [rax + rax]
.label_143:
	call	xalloc_die
.label_144:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_146
	test	rax, rax
	je	.label_143
.label_146:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b70
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
	#Procedure 0x402b89
	.globl sub_402b89
	.type sub_402b89, @function
sub_402b89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b90
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402b9a
	.globl sub_402b9a
	.type sub_402b9a, @function
sub_402b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
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
	je	.label_148
	mov	qword ptr [rax], rbx
.label_148:
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
	#Procedure 0x402c8c
	.globl sub_402c8c
	.type sub_402c8c, @function
sub_402c8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_149
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_151:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_151
.label_149:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_152
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_153], OFFSET FLAT:slot0
.label_152:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_150
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_150:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d21
	.globl sub_402d21
	.type sub_402d21, @function
sub_402d21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_154:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_154
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402d51
	.globl sub_402d51
	.type sub_402d51, @function
sub_402d51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d60
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
	je	.label_155
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
.label_155:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402dc8
	.globl sub_402dc8
	.type sub_402dc8, @function
sub_402dc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dd0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402dda
	.globl sub_402dda
	.type sub_402dda, @function
sub_402dda:

	nop	word ptr [rax + rax]
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_157
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_160:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402e2c

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_161
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_159
	cmp	dword ptr [rbp], 0x20
	jne	.label_159
.label_161:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_160
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_157:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_158
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_162:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ea5
	.globl sub_402ea5
	.type sub_402ea5, @function
sub_402ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402eb3

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
	je	.label_163
	test	r15, r15
	je	.label_162
.label_163:
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
	#Procedure 0x402ef0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ef8
	.globl sub_402ef8
	.type sub_402ef8, @function
sub_402ef8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00

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
	jne	.label_165
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_172
	cmp	ecx, 0x55
	jne	.label_164
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_164
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_164
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_164
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_164
	cmp	byte ptr [rax + 5], 0
	jne	.label_164
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_169
	mov	eax, OFFSET FLAT:label_170
	jmp	.label_171
.label_172:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_164
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_164
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_164
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_164
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_164
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_164
	cmp	byte ptr [rax + 7], 0
	je	.label_166
.label_164:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_167
	mov	eax, OFFSET FLAT:label_168
.label_171:
	cmove	rax, rcx
.label_165:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_166:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_173
	mov	eax, OFFSET FLAT:label_174
	jmp	.label_171
	.section	.text
	.align	16
	#Procedure 0x402fc5
	.globl sub_402fc5
	.type sub_402fc5, @function
sub_402fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0
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
	#Procedure 0x402fe8
	.globl sub_402fe8
	.type sub_402fe8, @function
sub_402fe8:

	nop	dword ptr [rax + rax]
.label_175:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ff5
	.globl sub_402ff5
	.type sub_402ff5, @function
sub_402ff5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ff9
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
	je	.label_175
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
	#Procedure 0x403060
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_176
	test	rdx, rdx
	je	.label_176
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_176:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40308b
	.globl sub_40308b
	.type sub_40308b, @function
sub_40308b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40309e
	.globl sub_40309e
	.type sub_40309e, @function
sub_40309e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4030a0

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
	js	.label_177
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_180
	cmp	r12d, 0x7fffffff
	je	.label_182
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
	jne	.label_178
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_178:
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
.label_180:
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
	jbe	.label_183
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_179
.label_183:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_181
	mov	rdi, r14
	call	free
.label_181:
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
.label_179:
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
.label_177:
	call	abort
.label_182:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40325d
	.globl sub_40325d
	.type sub_40325d, @function
sub_40325d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403260
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
	#Procedure 0x403293
	.globl sub_403293
	.type sub_403293, @function
sub_403293:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0

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
	#Procedure 0x4032b7
	.globl sub_4032b7
	.type sub_4032b7, @function
sub_4032b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_61
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:label_112
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_192
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_192
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_192:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_112
	mov	ecx, OFFSET FLAT:label_61
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_61
	mov	ecx, OFFSET FLAT:label_190
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_184:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
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
	#Procedure 0x4034e9
	.globl sub_4034e9
	.type sub_4034e9, @function
sub_4034e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034f0
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
	#Procedure 0x4034ff
	.globl sub_4034ff
	.type sub_4034ff, @function
sub_4034ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403500

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
	#Procedure 0x403519
	.globl sub_403519
	.type sub_403519, @function
sub_403519:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403520

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_201
	test	rax, rax
	je	.label_202
.label_201:
	pop	rbx
	ret	
.label_202:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40353a
	.globl sub_40353a
	.type sub_40353a, @function
sub_40353a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403540

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_203
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_206
	cmp	byte ptr [rcx], 0
	jne	.label_206
	cmp	dword ptr [rbx], 0
	jne	.label_206
	cmp	eax, -1
	je	.label_206
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_206
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_206:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_207
.label_203:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_205
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_215:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_210
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_214
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_214:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_215
.label_205:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_204
	cmp	byte ptr [r12], 0x53
	jne	.label_208
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_208
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_208
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_204
.label_208:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_204:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_207:
	test	edi, edi
	js	.label_212
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_211
.label_212:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_209
.label_211:
	mov	eax, dword ptr [rsp + 4]
.label_209:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036b1
	.globl sub_4036b1
	.type sub_4036b1, @function
sub_4036b1:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_216
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_218
	jmp	.label_217
.label_216:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_25
	nop	word ptr cs:[rax + rax]
.label_225:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_223
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_225
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_219
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_222
.label_219:
	test	r15d, r15d
	jle	.label_217
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_217
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_217
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_217
	test	rax, rax
	jg	.label_217
	mov	ecx, r15d
	jmp	.label_220
.label_226:
	mov	ecx, ebp
.label_220:
	add	rax, rcx
	jmp	.label_218
	.section	.text
	.align	16
	#Procedure 0x4037c4
	.globl sub_4037c4
	.type sub_4037c4, @function
sub_4037c4:

	nop	word ptr cs:[rax + rax]
.label_222:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_217
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_226
.label_217:
	mov	eax, 0xffffffff
.label_218:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_223:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_218
.label_227:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403825
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_227
	test	rsi, rsi
	je	.label_227
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403890

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x40393f
	.globl sub_40393f
	.type sub_40393f, @function
sub_40393f:

	nop	
.label_332:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_293
	or	al, dl
	jne	.label_293
	test	dil, 1
	jne	.label_331
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_293
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_295
	jmp	.label_293
.label_414:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_337
	test	rbp, rbp
	je	.label_249
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_249:
	mov	r14d, 1
	jmp	.label_342
.label_415:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_167
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_290
.label_337:
	xor	r14d, r14d
.label_342:
	mov	eax, OFFSET FLAT:label_167
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_350
	.section	.text
	.align	16
	#Procedure 0x403a0f
	.globl sub_403a0f
	.type sub_403a0f, @function
sub_403a0f:

	nop	
.label_295:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_235
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_242]
.label_416:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_252
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_168
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_417:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_266
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_266
	xor	r14d, r14d
	nop	
.label_237:
	cmp	r14, rbp
	jae	.label_278
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_278:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_237
.label_266:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_290
.label_409:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_290
.label_412:
	mov	al, 1
.label_410:
	mov	r12b, 1
.label_413:
	test	r12b, 1
	mov	cl, 1
	je	.label_303
	mov	ecx, eax
.label_303:
	mov	al, cl
.label_411:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_306
	test	rbp, rbp
	je	.label_313
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_313:
	mov	r14d, 1
	jmp	.label_272
.label_306:
	xor	r14d, r14d
.label_272:
	mov	ecx, OFFSET FLAT:label_168
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_350:
	mov	sil, r12b
.label_290:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x403bd1
	.globl sub_403bd1
	.type sub_403bd1, @function
sub_403bd1:

	nop	word ptr cs:[rax + rax]
.label_322:
	inc	r12
.label_320:
	cmp	r11, -1
	je	.label_345
	cmp	r12, r11
	jne	.label_347
	jmp	.label_336
	.section	.text
	.align	16
	#Procedure 0x403bf3
	.globl sub_403bf3
	.type sub_403bf3, @function
sub_403bf3:

	nop	word ptr cs:[rax + rax]
.label_345:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_228
.label_347:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_236
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_239
	cmp	r11, -1
	jne	.label_239
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_239:
	cmp	rbx, r11
	jbe	.label_258
.label_236:
	xor	esi, esi
.label_250:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_259
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_262]
.label_392:
	test	r12, r12
	jne	.label_268
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x403c86
	.globl sub_403c86
	.type sub_403c86, @function
sub_403c86:

	nop	word ptr cs:[rax + rax]
.label_258:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_280
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_250
	jmp	.label_229
.label_280:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_250
.label_396:
	xor	eax, eax
	cmp	r11, -1
	je	.label_297
	test	r12, r12
	jne	.label_301
	cmp	r11, 1
	je	.label_270
	xor	r13d, r13d
	jmp	.label_251
.label_385:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_308
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_229
	cmp	r8d, 2
	jne	.label_314
	mov	eax, r9d
	and	al, 1
	jne	.label_314
	cmp	r14, rbp
	jae	.label_316
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_316:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_317
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_317:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_324
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_324:
	add	r14, 3
	mov	r9b, 1
.label_314:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_330
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_330:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_298
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_298
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_298
	cmp	r14, rbp
	jae	.label_333
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_333:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_267
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_267:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_251
.label_386:
	mov	bl, 0x62
	jmp	.label_265
.label_387:
	mov	cl, 0x74
	jmp	.label_232
.label_388:
	mov	bl, 0x76
	jmp	.label_265
.label_389:
	mov	bl, 0x66
	jmp	.label_265
.label_390:
	mov	cl, 0x72
	jmp	.label_232
.label_393:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_233
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_240
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_244
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_244:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_260:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	add	r14, 3
	xor	r9d, r9d
.label_233:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_251
.label_394:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_274
	cmp	r8d, 2
	jne	.label_268
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_268
	jmp	.label_240
.label_395:
	cmp	r8d, 2
	jne	.label_286
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_240
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_292
.label_259:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_294
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_304
.label_297:
	test	r12, r12
	jne	.label_315
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_315
.label_270:
	mov	dl, 1
.label_391:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_240
	xor	eax, eax
	mov	r13b, dl
.label_251:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_321
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_325
	jmp	.label_326
	.section	.text
	.align	16
	#Procedure 0x403f64
	.globl sub_403f64
	.type sub_403f64, @function
sub_403f64:

	nop	word ptr cs:[rax + rax]
.label_321:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_326
.label_325:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_291
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_335
	.section	.text
	.align	16
	#Procedure 0x403f9d
	.globl sub_403f9d
	.type sub_403f9d, @function
sub_403f9d:

	nop	dword ptr [rax]
.label_326:
	test	sil, sil
.label_335:
	mov	ebx, r15d
	je	.label_323
	jmp	.label_339
.label_291:
	mov	ebx, r15d
	jmp	.label_339
.label_308:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_322
	xor	r15d, r15d
	jmp	.label_268
.label_286:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_232
	xor	eax, eax
	mov	r15b, 0x5c
.label_292:
	xor	r13d, r13d
	jmp	.label_323
.label_232:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_240
.label_265:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_251
	nop	
.label_339:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_229
	cmp	r8d, 2
	jne	.label_234
	mov	eax, r9d
	and	al, 1
	jne	.label_234
	cmp	r14, rbp
	jae	.label_238
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_238:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_283
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	add	r14, 3
	mov	r9b, 1
.label_234:
	cmp	r14, rbp
	jae	.label_349
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_349:
	inc	r14
	jmp	.label_256
.label_294:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_263
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_263:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_271
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_329:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_287
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_241
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_255
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_311
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_243:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_344
	bt	rsi, rdx
	jb	.label_240
.label_344:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_243
.label_311:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_328
	xor	r13d, r13d
.label_328:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_329
	jmp	.label_300
.label_298:
	xor	r13d, r13d
	jmp	.label_251
.label_315:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_251
.label_274:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_268
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_268
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_268
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_343
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_327
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_352
	cmp	r14, rbp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_269
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_269:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_285
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_285:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_289
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_289:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_327:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_251
.label_268:
	xor	eax, eax
.label_301:
	xor	r13d, r13d
	jmp	.label_251
.label_271:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_281
	cmp	rbp, -1
	je	.label_284
	cmp	rbp, -2
	je	.label_287
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_346
	xor	r13d, r13d
.label_346:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_296
	jmp	.label_300
.label_287:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_309
	lea	rax, [r10 + r12]
.label_305:
	cmp	byte ptr [rax + rsi], 0
	je	.label_309
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_305
.label_309:
	mov	qword ptr [rsp + 0x40], rsi
.label_241:
	xor	r13d, r13d
	jmp	.label_255
.label_284:
	xor	r13d, r13d
.label_281:
	mov	r10, qword ptr [rsp + 0x28]
.label_255:
	mov	r12, qword ptr [rsp + 0x40]
.label_300:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_304:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_319
	test	al, al
	je	.label_319
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_251
.label_319:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_334
	.section	.text
	.align	16
	#Procedure 0x404397
	.globl sub_404397
	.type sub_404397, @function
sub_404397:

	nop	word ptr [rax + rax]
.label_299:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_334:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_338
	test	sil, 1
	je	.label_247
	cmp	r14, rbp
	jae	.label_341
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_341:
	inc	r14
	xor	esi, esi
	jmp	.label_247
	.section	.text
	.align	16
	#Procedure 0x4043d5
	.globl sub_4043d5
	.type sub_4043d5, @function
sub_4043d5:

	nop	word ptr cs:[rax + rax]
.label_338:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_229
	cmp	r8d, 2
	jne	.label_348
	mov	eax, r9d
	and	al, 1
	jne	.label_348
	cmp	r14, rbp
	jae	.label_351
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_351:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_246
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_246:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_310
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_310:
	add	r14, 3
	mov	r9b, 1
.label_348:
	cmp	r14, rbp
	jae	.label_248
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_254
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_254:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_261
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_261:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_247:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_323
	test	r9b, 1
	je	.label_264
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_340
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_279
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_279:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_288
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_288:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_264
	.section	.text
	.align	16
	#Procedure 0x4044e6
	.globl sub_4044e6
	.type sub_4044e6, @function
sub_4044e6:

	nop	word ptr cs:[rax + rax]
.label_340:
	mov	rbx, rcx
.label_264:
	cmp	r14, rbp
	jae	.label_299
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x40450e
	.globl sub_40450e
	.type sub_40450e, @function
sub_40450e:

	nop	
.label_323:
	test	r9b, 1
	je	.label_307
	and	al, 1
	jne	.label_307
	cmp	r14, rbp
	jae	.label_312
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_312:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_302
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_302:
	add	r14, 2
	xor	r9d, r9d
.label_307:
	mov	ebx, r15d
.label_256:
	cmp	r14, rbp
	jae	.label_318
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_318:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_322
.label_343:
	xor	r13d, r13d
	jmp	.label_251
	.section	.text
	.align	16
	#Procedure 0x404571
	.globl sub_404571
	.type sub_404571, @function
sub_404571:

	nop	word ptr cs:[rax + rax]
.label_336:
	mov	rcx, r12
.label_228:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_332
	or	al, dl
	jne	.label_332
	mov	r11, rcx
	jmp	.label_229
.label_240:
	mov	eax, 2
.label_282:
	mov	qword ptr [rsp + 0x38], rax
.label_229:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_273:
	mov	r14, rax
.label_277:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_293:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_275
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_230
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_230
	inc	rdx
	nop	dword ptr [rax + rax]
.label_257:
	cmp	r14, rbp
	jae	.label_253
	mov	byte ptr [rcx + r14], al
.label_253:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_257
	jmp	.label_230
.label_331:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_273
.label_275:
	mov	rcx, qword ptr [rsp + 0x10]
.label_230:
	cmp	r14, rbp
	jae	.label_277
	mov	byte ptr [rcx + r14], 0
	jmp	.label_277
.label_352:
	mov	eax, 5
	jmp	.label_282
.label_235:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4046c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_353
	test	rsi, rsi
	mov	ecx, 1
	je	.label_354
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_354
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_353:
	mov	ecx, 1
.label_354:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40470b
	.globl sub_40470b
	.type sub_40470b, @function
sub_40470b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_355
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_356
	test	rax, rax
	je	.label_355
.label_356:
	pop	rbx
	ret	
.label_355:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404745
	.globl sub_404745
	.type sub_404745, @function
sub_404745:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404750

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
	je	.label_363
	mov	edx, OFFSET FLAT:label_372
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_359
.label_363:
	mov	edx, OFFSET FLAT:label_361
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
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
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_368
	jmp	qword ptr [(r12 * 8) + label_369]
.label_441:
	add	rsp, 8
	jmp	.label_360
.label_368:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
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
	jmp	.label_360
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
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
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
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
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	jmp	.label_360
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
	jmp	.label_360
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
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
	jmp	.label_360
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	jmp	.label_360
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
	jmp	.label_360
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
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
.label_360:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404aa8
	.globl sub_404aa8
	.type sub_404aa8, @function
sub_404aa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x404b1e
	.globl sub_404b1e
	.type sub_404b1e, @function
sub_404b1e:

	nop	
.label_376:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b25
	.globl sub_404b25
	.type sub_404b25, @function
sub_404b25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30
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
	je	.label_376
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
	#Procedure 0x404c25
	.globl sub_404c25
	.type sub_404c25, @function
sub_404c25:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c32
	.globl sub_404c32
	.type sub_404c32, @function
sub_404c32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c56
	.globl sub_404c56
	.type sub_404c56, @function
sub_404c56:

	nop	word ptr cs:[rax + rax]
