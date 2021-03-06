	.section	.text
	.align	32
	#Procedure 0x4018a9
	.globl sub_4018a9
	.type sub_4018a9, @function
sub_4018a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4018aa
	.globl sub_4018aa
	.type sub_4018aa, @function
sub_4018aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e2
	.globl sub_4018e2
	.type sub_4018e2, @function
sub_4018e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40192a
	.globl sub_40192a
	.type sub_40192a, @function
sub_40192a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40194c
	.globl sub_40194c
	.type sub_40194c, @function
sub_40194c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40195d
	.globl sub_40195d
	.type sub_40195d, @function
sub_40195d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401976
	.globl sub_401976
	.type sub_401976, @function
sub_401976:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401980

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
	mov	r15, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_11
	mov	esi, OFFSET FLAT:label_12
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_11
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	bpl, 1
	movabs	r14, 0x7fffffffffffffff
	mov	eax, OFFSET FLAT:body_fastmap
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	eax, OFFSET FLAT:footer_fastmap
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	eax, OFFSET FLAT:header_fastmap
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x10], xmm0
	jmp	.label_10
.label_22:
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
	nop	dword ptr [rax + rax]
.label_10:
	mov	ebx, ebp
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_17
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_10
	jmp	qword ptr [(rax * 8) + label_27]
.label_2552:
	mov	rax, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	cmp	ecx, 0x13
	ja	.label_29
	jmp	qword ptr [(rcx * 8) + label_33]
.label_2461:
	mov	qword ptr [rip + body_type],  rax
	mov	bpl, bl
	jmp	.label_10
.label_17:
	cmp	eax, -1
	je	.label_34
	cmp	eax, 0xffffff7d
	je	.label_39
	cmp	eax, 0xffffff7e
	jne	.label_10
	jmp	.label_41
.label_2553:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + section_del],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2554:
	mov	rax, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	cmp	ecx, 0x13
	ja	.label_49
	jmp	qword ptr [(rcx * 8) + label_51]
.label_2610:
	mov	qword ptr [rip + footer_type],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2555:
	mov	rax, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	cmp	ecx, 0x13
	ja	.label_56
	jmp	qword ptr [(rcx * 8) + label_50]
.label_2569:
	mov	qword ptr [rip + header_type],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2556:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_9
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [rip + page_incr],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2557:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_9
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [rip + blank_join],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2558:
	mov	rax, qword ptr [rip + optarg]
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x72
	je	.label_40
	cmp	cl, 0x6c
	jne	.label_43
	cmp	byte ptr [rax + 1], 0x6e
	jne	.label_44
	cmp	byte ptr [rax + 2], 0
	je	.label_45
.label_44:
	cmp	cl, 0x72
	jne	.label_43
.label_40:
	cmp	byte ptr [rax + 1], 0x6e
	jne	.label_47
	cmp	byte ptr [rax + 2], 0
	je	.label_48
.label_47:
	cmp	byte ptr [rax + 1], 0x7a
	jne	.label_43
	cmp	byte ptr [rax + 2], 0
	je	.label_52
.label_43:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	jmp	.label_22
.label_2559:
	mov	byte ptr [rip + reset_numbers],  1
	mov	bpl, bl
	jmp	.label_10
.label_2560:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator_str],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2561:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r14 + 1]
	mov	ecx, OFFSET FLAT:label_9
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [rip + starting_line_number],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2562:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_9
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + lineno_width],  eax
	mov	bpl, bl
	jmp	.label_10
.label_29:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	jmp	.label_22
.label_2462:
	lea	rbp, [rax + 1]
	mov	qword ptr [rip + optarg],  rbp
	mov	qword ptr [rip + body_type],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + body_regex],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rip + label_23],  xmm0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:body_regex
	jmp	.label_19
.label_49:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	jmp	.label_22
.label_2611:
	lea	rbp, [rax + 1]
	mov	qword ptr [rip + optarg],  rbp
	mov	qword ptr [rip + footer_type],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + footer_regex],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rip + label_14],  xmm0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:footer_regex
	jmp	.label_19
.label_56:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	jmp	.label_22
.label_2570:
	lea	rbp, [rax + 1]
	mov	qword ptr [rip + optarg],  rbp
	mov	qword ptr [rip + header_type],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + header_regex],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rip + label_25],  xmm0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:header_regex
.label_19:
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	mov	bpl, bl
	je	.label_10
	jmp	.label_42
.label_48:
	mov	qword ptr [rip + lineno_format], OFFSET FLAT:FORMAT_RIGHT_NOLZ
	mov	bpl, bl
	jmp	.label_10
.label_52:
	mov	qword ptr [rip + lineno_format], OFFSET FLAT:FORMAT_RIGHT_LZ
	mov	bpl, bl
	jmp	.label_10
.label_45:
	mov	qword ptr [rip + lineno_format], OFFSET FLAT:FORMAT_LEFT
	mov	bpl, bl
	jmp	.label_10
.label_34:
	test	bl, bl
	je	.label_46
	mov	rdi, qword ptr [rip + section_del]
	call	strlen
	mov	rbp, rax
	lea	rax, [rbp + rbp*2]
	mov	qword ptr [rip + header_del_len],  rax
	lea	rdi, [rbp + rbp*2 + 1]
	call	xmalloc
	mov	qword ptr [rip + header_del],  rax
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	lea	rax, [rbp + rbp]
	mov	qword ptr [rip + body_del_len],  rax
	lea	rdi, [rbp + rbp + 1]
	call	xmalloc
	mov	qword ptr [rip + body_del],  rax
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	qword ptr [rip + footer_del_len],  rbp
	lea	rdi, [rbp + 1]
	call	xmalloc
	mov	qword ptr [rip + footer_del],  rax
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	edi, OFFSET FLAT:line_buf
	call	initbuffer
	mov	rdi, qword ptr [rip + separator_str]
	call	strlen
	mov	r14, rax
	movsxd	rax, dword ptr [rip + lineno_width]
	lea	rdi, [r14 + rax + 1]
	call	xmalloc
	mov	r13, rax
	mov	qword ptr [rip + print_no_line_fmt],  r13
	movsxd	rbp, dword ptr [rip + lineno_width]
	add	rbp, r14
	mov	esi, 0x20
	mov	rdi, r13
	mov	rdx, rbp
	call	memset
	mov	byte ptr [r13 + rbp], 0
	mov	rax, qword ptr [rip + starting_line_number]
	mov	qword ptr [rip + line_no],  rax
	mov	rax, qword ptr [rip + body_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:body_regex
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r12d
	jne	.label_15
	mov	edi, OFFSET FLAT:label_13
	call	nl_file
	mov	ebx, eax
	jmp	.label_20
.label_15:
	jge	.label_20
	nop	dword ptr [rax]
.label_24:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	nl_file
	and	bl, al
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r12d
	jl	.label_24
.label_20:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_28
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_32
.label_28:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_39:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_35
	mov	edx, OFFSET FLAT:label_36
	mov	r8d, OFFSET FLAT:label_37
	mov	r9d, OFFSET FLAT:label_38
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_41:
	xor	edi, edi
	call	usage
.label_46:
	mov	edi, 1
	call	usage
.label_42:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_54
	xor	eax, eax
	call	error
.label_32:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402020

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x18], r8
	mov	qword ptr [rsp + 0x10], r9
	call	parse_branch
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_75
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_62
.label_75:
	cmp	byte ptr [r12 + 8], 0xa
	jne	.label_79
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_74
	jmp	.label_58
.label_79:
	mov	r13, rbx
	jmp	.label_62
.label_77:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_76
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_69
	.section	.text
	.align	32
	#Procedure 0x4020d4
	.globl sub_4020d4
	.type sub_4020d4, @function
sub_4020d4:

	nop	word ptr cs:[rax + rax]
.label_74:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r14d, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_63
	cmp	eax, 9
	mov	r14d, 0
	je	.label_63
	mov	rbp, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r13
	call	parse_branch
	mov	r14, rax
	test	r14, r14
	jne	.label_73
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_61
.label_73:
	or	qword ptr [r15 + 0xa8], rbp
	nop	dword ptr [rax]
.label_63:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_77
	mov	rax, qword ptr [r15 + 0x70]
.label_69:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_60
	mov	qword ptr [rbx], r13
.label_60:
	test	r14, r14
	je	.label_72
	mov	qword ptr [r14], r13
.label_72:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_74
	jmp	.label_62
.label_64:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_76
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_70
	.section	.text
	.align	32
	#Procedure 0x40221a
	.globl sub_40221a
	.type sub_40221a, @function
sub_40221a:

	nop	word ptr [rax + rax]
.label_58:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	mov	ebp, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_68
	mov	r14, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_81
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_61
.label_81:
	or	qword ptr [r15 + 0xa8], r14
.label_68:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_64
	mov	rax, qword ptr [r15 + 0x70]
.label_70:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_67
	mov	qword ptr [rbx], r13
.label_67:
	test	rbp, rbp
	je	.label_80
	mov	qword ptr [rbp], r13
.label_80:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_58
.label_62:
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_61:
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_62
	mov	r14d, 0x400ff
	xor	r13d, r13d
.label_66:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_66
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_66
.label_65:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_71
	cmp	eax, 6
	jne	.label_78
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_59
.label_71:
	mov	rdi, qword ptr [rbp + 0x28]
.label_59:
	call	free
.label_78:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_62
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_65
	test	rbx, rbx
	mov	rbp, rax
	je	.label_65
	jmp	.label_66
.label_76:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x4023c0

	.globl nl_file
	.type nl_file, @function
nl_file:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_105
	cmp	byte ptr [r14 + 1], 0
	je	.label_108
.label_105:
	mov	esi, OFFSET FLAT:label_110
	mov	rdi, r14
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_111
	jmp	.label_95
.label_108:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
.label_111:
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	jmp	.label_83
	.section	.text
	.align	32
	#Procedure 0x40240f
	.globl sub_40240f
	.type sub_40240f, @function
sub_40240f:

	nop	
.label_90:
	mov	rdi, qword ptr [rip + label_87]
	mov	rdx, qword ptr [rip + label_88]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
.label_83:
	mov	edi, OFFSET FLAT:line_buf
	mov	rsi, r15
	call	readlinebuffer
	test	rax, rax
	je	.label_113
	mov	rbp, qword ptr [rip + label_88]
	lea	rbx, [rbp - 1]
	cmp	rbx, 2
	jb	.label_101
	mov	r12, qword ptr [rip + label_87]
	mov	rax, qword ptr [rip + section_del]
	movzx	ecx, word ptr [r12]
	cmp	cx, word ptr [rax]
	jne	.label_101
	cmp	rbx, qword ptr [rip + header_del_len]
	jne	.label_98
	mov	rsi, qword ptr [rip + header_del]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_107
.label_98:
	cmp	rbx, qword ptr [rip + body_del_len]
	jne	.label_92
	mov	rsi, qword ptr [rip + body_del]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_99
.label_92:
	cmp	rbx, qword ptr [rip + footer_del_len]
	jne	.label_101
	mov	rsi, qword ptr [rip + footer_del]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_109
	nop	dword ptr [rax + rax]
.label_101:
	mov	rax, qword ptr [rip + current_type]
	movsx	eax, byte ptr [rax]
	add	eax, -0x61
	cmp	eax, 0x13
	ja	.label_90
	jmp	qword ptr [(rax * 8) + label_115]
.label_2419:
	mov	rax, qword ptr [rip + blank_join]
	cmp	rax, 2
	jl	.label_94
	cmp	rbp, 1
	ja	.label_85
	mov	rcx, qword ptr [rip + proc_text.blank_lines]
	inc	rcx
	mov	qword ptr [rip + proc_text.blank_lines],  rcx
	cmp	rcx, rax
	jne	.label_91
.label_85:
	mov	rsi, qword ptr [rip + lineno_format]
	mov	edx, dword ptr [rip + lineno_width]
	mov	rcx, qword ptr [rip + line_no]
	mov	r8, qword ptr [rip + separator_str]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	mov	rax, qword ptr [rip + page_incr]
	test	rax, rax
	js	.label_89
	add	qword ptr [rip + line_no],  rax
	mov	qword ptr [rip + proc_text.blank_lines],  0
	jmp	.label_90
.label_2420:
	mov	rdi, qword ptr [rip + current_regex]
	mov	rsi, qword ptr [rip + label_87]
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdx, rbx
	mov	r8, rbx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_91
	cmp	rax, -2
	jne	.label_94
	jmp	.label_97
.label_2421:
	cmp	rbp, 2
	jb	.label_91
.label_94:
	mov	rsi, qword ptr [rip + lineno_format]
	mov	edx, dword ptr [rip + lineno_width]
	mov	rcx, qword ptr [rip + line_no]
	mov	r8, qword ptr [rip + separator_str]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	mov	rax, qword ptr [rip + page_incr]
	test	rax, rax
	js	.label_89
	add	qword ptr [rip + line_no],  rax
	jmp	.label_90
	.section	.text
	.align	32
	#Procedure 0x4025f4
	.globl sub_4025f4
	.type sub_4025f4, @function
sub_4025f4:

	nop	word ptr cs:[rax + rax]
.label_91:
	mov	rdi, qword ptr [rip + print_no_line_fmt]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	jmp	.label_90
.label_107:
	mov	rax, qword ptr [rip + header_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:header_regex
	jmp	.label_93
.label_99:
	mov	rax, qword ptr [rip + body_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:body_regex
	jmp	.label_93
.label_109:
	mov	rax, qword ptr [rip + footer_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:footer_regex
.label_93:
	movzx	eax, byte ptr [rip + reset_numbers]
	test	al, al
	jne	.label_112
	mov	rax, qword ptr [rip + starting_line_number]
	mov	qword ptr [rip + line_no],  rax
.label_112:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_102
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_83
.label_102:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_83
.label_113:
	test	byte ptr [r15], 0x20
	jne	.label_95
	cmp	byte ptr [r14], 0x2d
	jne	.label_100
	cmp	byte ptr [r14 + 1], 0
	je	.label_103
.label_100:
	mov	rdi, r15
	call	rpl_fclose
	mov	bl, 1
	cmp	eax, -1
	jne	.label_106
.label_95:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_54
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_106:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_103:
	mov	rdi, r15
	call	clearerr_unlocked
	mov	bl, 1
	jmp	.label_106
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_97:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_125:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_114
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [r14 + 8]
	test	dl, 0x10
	je	.label_123
	test	r12, r12
	je	.label_123
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_86
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_86
.label_123:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	mov	qword ptr [rsp], rbp
	je	.label_124
	mov	rax, qword ptr [rbx + 0x70]
.label_121:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_119
	mov	rax, qword ptr [rbx + 0x70]
.label_117:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_126:
	test	r12, r12
	mov	rbp, r15
	je	.label_118
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_120
	mov	rax, qword ptr [rbx + 0x70]
.label_122:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r12], rbp
	test	r15, r15
	je	.label_118
	mov	qword ptr [r15], rbp
.label_118:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_125
	mov	rax, qword ptr [rbx + 0x70]
.label_84:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r13, r13
	je	.label_82
	mov	qword ptr [r13], r12
.label_82:
	test	rbp, rbp
	je	.label_114
	mov	qword ptr [rbp], r12
.label_114:
	test	r15, r15
	je	.label_96
	test	r13, r13
	je	.label_96
	test	rbp, rbp
	je	.label_96
	test	r12, r12
	je	.label_96
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_86:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_124:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_119
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_121
.label_96:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_86
.label_120:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_118
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_122
	.section	.text
	.align	32
	#Procedure 0x402a2e
	.globl sub_402a2e
	.type sub_402a2e, @function
sub_402a2e:

	nop	
.label_119:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_126
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_117
	.section	.text
	.align	32
	#Procedure 0x402a60
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
	.align	32
	#Procedure 0x402a78
	.globl sub_402a78
	.type sub_402a78, @function
sub_402a78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_127
.label_128:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_132
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_130
.label_132:
	cmp	eax, 6
	sete	cl
.label_130:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_129:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_127:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_129
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_129
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_131
	test	rax, rax
	je	.label_131
	test	r13, r13
	je	.label_131
	test	rbp, rbp
	je	.label_131
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_128
.label_131:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_129
	.section	.text
	.align	32
	#Procedure 0x402c4b
	.globl sub_402c4b
	.type sub_402c4b, @function
sub_402c4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_156
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_208]
.label_2583:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_356
	mov	ecx, OFFSET FLAT:label_755
	jmp	.label_756
.label_2584:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_367
	mov	ecx, OFFSET FLAT:label_9
.label_756:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_790
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_730:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_600
	jmp	.label_156
.label_790:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_600
.label_2574:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_796
	mov	rax, qword ptr [rdi + 0x70]
.label_829:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_798
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_812
	mov	rbp, r14
	jmp	.label_600
.label_855:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_659
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_819
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_843:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_839:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_832
	mov	rax, qword ptr [rsi + 0x70]
.label_850:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_615
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_812
	jmp	.label_600
.label_819:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_839
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_843
.label_832:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_615
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_850
.label_812:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_855
	mov	rbp, r14
	jmp	.label_600
.label_2575:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_859
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_862
	mov	rax, qword ptr [rdi + 0x70]
.label_841:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_600
.label_2576:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_879
	mov	rax, qword ptr [rdi + 0x70]
.label_883:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_600
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_600
.label_2577:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_606
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_156
	cmp	byte ptr [r10 + 8], 9
	jne	.label_617
	mov	r15, rbp
.label_606:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_619
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_619:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_628
	mov	rax, qword ptr [rsi + 0x70]
.label_877:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_810
	mov	qword ptr [rdi], rbp
.label_810:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_600
.label_2580:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_650
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_633
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_653
	movdqa	xmm0, xmmword ptr [rip + label_658]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_653
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_633:
	mov	eax, dword ptr [r10]
.label_650:
	cmp	eax, 0x200
	je	.label_672
	cmp	eax, 0x100
	jne	.label_686
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_783
	mov	rax, qword ptr [rdi + 0x70]
.label_638:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_679
.label_2582:
	test	ebx, 0x1000000
	jne	.label_158
.label_2579:
	test	bl, 0x20
	jne	.label_158
	test	bl, 0x10
	jne	.label_698
.label_2578:
	test	ebx, 0x20000
	jne	.label_700
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_700
	mov	dword ptr [r12], 0x10
	jmp	.label_675
.label_700:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_635
	mov	rax, qword ptr [rdi + 0x70]
.label_692:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_691:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_600
.label_2581:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_724
	test	r15, r15
	je	.label_724
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_718
	cmp	cl, 2
	je	.label_694
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_727
.label_2585:
	mov	dword ptr [r12], 5
	jmp	.label_675
.label_698:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_798:
	mov	rbp, r14
	jmp	.label_600
.label_718:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_818
	or	byte ptr [r14 + 1], 4
.label_818:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_694
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_727:
	cmp	cl, 0x15
	jne	.label_746
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_746:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_614
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_764
.label_644:
	cmp	al, 2
	je	.label_768
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_764
	jmp	.label_614
.label_2470:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_778
	mov	rax, qword ptr [r15]
.label_834:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_781
.label_2471:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_786
	jmp	.label_789
.label_612:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_735
.label_716:
	xor	eax, eax
.label_735:
	cmp	r15d, 3
	je	.label_805
	test	r15d, r15d
	jne	.label_791
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_704
.label_805:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_704
.label_791:
	xor	ebx, ebx
.label_704:
	cmp	ebp, 3
	je	.label_831
	test	ebp, ebp
	jne	.label_794
.label_831:
	test	r12, r12
	movzx	edx, al
	je	.label_795
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_795
.label_794:
	mov	edx, dword ptr [rsp + 0x58]
.label_795:
	cmp	r15d, 3
	je	.label_799
	test	r15d, r15d
	jne	.label_801
.label_799:
	test	r12, r12
	movzx	eax, bl
	je	.label_802
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_802
.label_801:
	mov	eax, dword ptr [rsp + 0xa0]
.label_802:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_599
	cmp	eax, -1
	je	.label_599
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_630
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_599
.label_630:
	test	r12, r12
	je	.label_814
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_815
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_840:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_814:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_741:
	cmp	rdx, rcx
	ja	.label_824
	cmp	rcx, rax
	ja	.label_824
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_824:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_741
	mov	dword ptr [r12], 0
	jmp	.label_781
.label_778:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_712
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_834
.label_815:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_837
	test	rbp, rbp
	je	.label_837
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_840
.label_764:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_848
	cmp	ebp, 4
	jne	.label_849
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_781
	jmp	.label_610
.label_849:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_860
	cmp	al, 2
	jne	.label_863
	jmp	.label_865
.label_860:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_868
	cmp	cl, 2
	je	.label_871
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_884
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_599
	cmp	r15d, 4
	je	.label_599
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_861
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_599
.label_861:
	cmp	r15d, 3
	jne	.label_608
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_599
.label_608:
	cmp	ebp, 3
	je	.label_612
	test	ebp, ebp
	jne	.label_716
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_735
.label_868:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_863:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_622
	jmp	qword ptr [(rax * 8) + label_625]
.label_2469:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_626
.label_848:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_634
.label_786:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_626:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_781:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_644
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_647
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_647:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_609
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_609:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_662
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_662
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_662
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_662
	cmp	eax, 2
	jl	.label_674
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_662
	test	byte ptr [r15 + 0x20], 1
	jne	.label_662
.label_674:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_763
	mov	rax, qword ptr [rsi + 0x70]
.label_714:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_691
.label_662:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_706
	mov	rax, qword ptr [r9 + 0x70]
.label_847:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_709
	cmp	qword ptr [r14 + 8], 0
	jne	.label_709
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_709
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_719
.label_709:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_721
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_858:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_687
	mov	rax, qword ptr [r9 + 0x70]
.label_866:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_600:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_150:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_156
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_156
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_135
	mov	rsi, -1
	jmp	.label_146
	nop	word ptr cs:[rax + rax]
.label_135:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_216:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_138
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_218
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_233
.label_200:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_178
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_184:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_184
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_184
	nop	word ptr cs:[rax + rax]
.label_173:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_188
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_188
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_188:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_178
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_173
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_173
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_178:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_203
	mov	rax, qword ptr [rbp + 0x70]
.label_180:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_212
	mov	qword ptr [r12], r14
.label_212:
	add	r11, 2
	cmp	r11, r15
	jg	.label_227
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_187
.label_148:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_146:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_205
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_167
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_152
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_146
	cmp	eax, 1
	jne	.label_146
	cmp	r13, -2
	je	.label_146
	cmp	dl, 0x39
	ja	.label_146
	cmp	r13, -1
	jne	.label_148
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_146
	nop	dword ptr [rax]
.label_205:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_152:
	cmp	r13, -1
	jne	.label_157
	cmp	sil, 0x2c
	jne	.label_164
	cmp	eax, 1
	mov	r13d, 0
	je	.label_162
	jmp	.label_164
	nop	word ptr [rax + rax]
.label_157:
	cmp	r13, -2
	je	.label_167
.label_162:
	cmp	bl, 0x18
	je	.label_168
	cmp	bl, 1
	jne	.label_167
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_167
	mov	rdx, -1
	jmp	.label_174
.label_168:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_176
.label_206:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_196
	cmp	al, 2
	je	.label_167
	cmp	cl, 0x2c
	je	.label_196
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_174
	cmp	eax, 1
	jne	.label_174
	cmp	r15, -2
	je	.label_174
	cmp	cl, 0x39
	ja	.label_174
	cmp	r15, -1
	jne	.label_206
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_174
.label_196:
	cmp	r15, -2
	je	.label_167
.label_176:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_164
	cmp	eax, 0x18
	jne	.label_164
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_216
	mov	dword ptr [r12], 0xf
	jmp	.label_204
	nop	dword ptr [rax]
.label_164:
	mov	dword ptr [r12], 0xa
	jmp	.label_204
.label_167:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_224
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_138
.label_226:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_234
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_236
.label_145:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_141
.label_182:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_149
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_153
.label_234:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_166
.label_143:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_166:
	xor	r12d, r12d
.label_141:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_149
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_230
	nop	dword ptr [rax + rax]
.label_187:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_226
	mov	rax, qword ptr [rbp + 0x70]
.label_236:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_144
	nop	dword ptr [rax + rax]
.label_139:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_144:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_228
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_232
	nop	dword ptr [rax]
.label_228:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_231:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_237
	test	r12, r12
	jne	.label_241
.label_237:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_231
	jmp	.label_133
.label_241:
	lea	rbx, [r13 + 0x10]
.label_232:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_181
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_139
.label_181:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_143
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_139
.label_133:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_145
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_230:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_149
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_182
	mov	rax, qword ptr [rbp + 0x70]
.label_153:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_187
.label_227:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_209
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_210
	mov	rax, qword ptr [rbp + 0x70]
.label_160:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_215
.label_209:
	mov	r12, qword ptr [rsp + 0x48]
.label_215:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_137
.label_218:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_159:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_159
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_159
.label_155:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_240
	cmp	eax, 6
	jne	.label_242
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_179
.label_240:
	mov	rdi, qword ptr [rbx + 0x28]
.label_179:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_242:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_138
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_155
	test	rax, rax
	mov	rbx, rdx
	je	.label_155
	jmp	.label_159
.label_233:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_161
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_165
.label_203:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_149
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_180
.label_210:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_138
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_160
.label_224:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_204
.label_243:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_213
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_214
.label_219:
	mov	r12, rbx
	jmp	.label_221
.label_213:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_222
.label_220:
	mov	qword ptr [r15], 0
.label_222:
	xor	r12d, r12d
.label_221:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_149
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_238
.label_165:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_243
	mov	rax, qword ptr [rbp + 0x70]
.label_214:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_140
.label_202:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_140:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_177
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_183
.label_177:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_191:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_239
	test	r12, r12
	jne	.label_190
.label_239:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_191
	jmp	.label_197
.label_190:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_183:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_199
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_202
.label_199:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_220
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_202
.label_197:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_219
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_238:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_229
	mov	qword ptr [rbx], rdx
.label_229:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_149
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_165
.label_161:
	cmp	r11, r15
	jne	.label_136
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_138
.label_136:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_142
	mov	rax, qword ptr [rbp + 0x70]
.label_225:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_151
.label_207:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_151:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_185
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_189
.label_185:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_198:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_193
	test	rbx, rbx
	jne	.label_195
.label_193:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_198
	jmp	.label_200
.label_195:
	lea	r15, [r14 + 0x10]
.label_189:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_201
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_207
.label_201:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_211
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_207
.label_142:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_223
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_225
.label_223:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_235
.label_211:
	mov	qword ptr [r15], 0
.label_235:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_149:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_204:
	xor	ecx, ecx
.label_138:
	test	rcx, rcx
	sete	al
	jne	.label_134
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_137
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_137:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_150
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_154
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_150
.label_154:
	test	al, al
	jne	.label_158
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_163:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_163
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_163
	nop	word ptr cs:[rax + rax]
.label_186:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_170
	cmp	eax, 6
	jne	.label_171
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_175
	nop	dword ptr [rax]
.label_170:
	mov	rdi, qword ptr [rbp + 0x28]
.label_175:
	call	free
.label_171:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_158
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_186
	test	rcx, rcx
	mov	rbp, rax
	je	.label_186
	jmp	.label_163
.label_158:
	mov	dword ptr [r12], 0xd
.label_675:
	xor	r15d, r15d
.label_156:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_672:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_726
	mov	rax, qword ptr [rdi + 0x70]
.label_655:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_679:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_734
	mov	rax, qword ptr [rdi + 0x70]
.label_597:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_671:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_749
	mov	rax, qword ptr [rdi + 0x70]
.label_603:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_753
	mov	qword ptr [r14], r15
.label_753:
	test	rbp, rbp
	je	.label_615
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_767
	jmp	.label_615
.label_686:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_770
	mov	rax, qword ptr [rdi + 0x70]
.label_656:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_767:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_156
.label_659:
	mov	rbp, r14
	jmp	.label_600
.label_147:
	xor	r15d, r15d
	test	r9, r9
	je	.label_156
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_169:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_169
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_169
.label_172:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_192
	cmp	eax, 6
	jne	.label_194
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_217
.label_192:
	mov	rdi, qword ptr [rbx + 0x28]
.label_217:
	call	free
.label_194:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_156
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_172
	test	r9, r9
	mov	rbx, rax
	je	.label_172
	jmp	.label_169
.label_719:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_600
.label_614:
	mov	dword ptr [r12], eax
	jmp	.label_610
.label_768:
	mov	dword ptr [r12], 7
	jmp	.label_610
.label_635:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_615
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_692
.label_694:
	mov	dword ptr [r12], 2
	jmp	.label_610
.label_796:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_615
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_829
.label_859:
	mov	dword ptr [r12], 6
	jmp	.label_675
.label_879:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_615
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_883
.label_724:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_615
.label_862:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_615
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_841
.label_706:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_712
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_847
.label_721:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_712
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_858
.label_687:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_712
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_866
.label_634:
	mov	dword ptr [r12], 3
	jmp	.label_610
.label_628:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_615
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_877
.label_734:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_671
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_597
.label_749:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_615
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_603
.label_865:
	mov	dword ptr [r12], 7
	jmp	.label_610
.label_653:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_631:
	mov	rsi, r14
	xor	eax, eax
.label_627:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_731
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_731:
	cmp	esi, 0x5f
	je	.label_618
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_857
.label_618:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_857:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_627
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_631
	jmp	.label_633
.label_783:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_636
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_638
.label_726:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_636
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_655
.label_770:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_615
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_656
.label_615:
	mov	dword ptr [r12], 0xc
	jmp	.label_675
.label_871:
	mov	dword ptr [r12], 7
	jmp	.label_677
.label_636:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_679
.label_617:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_684
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_688:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_688
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_688
.label_708:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_784
	cmp	eax, 6
	jne	.label_728
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_703
.label_784:
	mov	rdi, qword ptr [rbp + 0x28]
.label_703:
	call	free
.label_728:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_684
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_708
	test	rcx, rcx
	mov	rbp, rax
	je	.label_708
	jmp	.label_688
.label_684:
	mov	dword ptr [r12], 8
	jmp	.label_675
.label_884:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_677
.label_789:
	mov	dword ptr [r12], 3
	jmp	.label_610
.label_763:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_712
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_714
.label_712:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_677
.label_622:
	mov	edi, OFFSET FLAT:label_722
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_723
	call	__assert_fail
.label_837:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_599:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_677:
	mov	r15, qword ptr [rsp + 0x30]
.label_610:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_730
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_245
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_246
	.section	.text
	.align	32
	#Procedure 0x4053ab
	.globl sub_4053ab
	.type sub_4053ab, @function
sub_4053ab:

	nop	dword ptr [rax + rax]
.label_250:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_253
.label_256:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_254:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_248
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_248:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_246
	jmp	.label_247
.label_255:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_254
.label_244:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_249
	xor	eax, eax
.label_252:
	cmp	rax, rdx
	jge	.label_251
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_252
	lea	rsi, [rsp + 0x10]
	jmp	.label_249
.label_253:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_256
.label_251:
	lea	rsi, [rsp + 0x10]
	jmp	.label_249
	.section	.text
	.align	32
	#Procedure 0x40547e
	.globl sub_40547e
	.type sub_40547e, @function
sub_40547e:

	nop	
.label_246:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_244
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_249:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_250
	cmp	rax, -2
	jne	.label_255
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_250
	mov	qword ptr [r14], rbp
.label_245:
	mov	rcx, rbx
.label_247:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054ea
	.globl sub_4054ea
	.type sub_4054ea, @function
sub_4054ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_257
	test	rax, rax
	je	.label_258
.label_257:
	pop	rbx
	ret	
.label_258:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40550a
	.globl sub_40550a
	.type sub_40550a, @function
sub_40550a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
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
	.align	32
	#Procedure 0x405564
	.globl sub_405564
	.type sub_405564, @function
sub_405564:

	nop	word ptr cs:[rax + rax]
.label_289:
	mov	r11, qword ptr [r12 + 8]
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_266:
	test	r11, r11
	jle	.label_262
	mov	rbx, qword ptr [r8 + r10*8]
	mov	r9, r11
	dec	r9
	mov	rsi, qword ptr [r12 + 0x10]
	mov	ebp, 0
	je	.label_264
	mov	rax, r9
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_267:
	lea	rcx, [rbp + rax]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rdx, [rcx + 1]
	cmovl	rbp, rdx
	cmovge	rax, rcx
	cmp	rbp, rax
	jb	.label_267
.label_264:
	cmp	qword ptr [rsi + rbp*8], rbx
	mov	rax, -1
	cmove	rax, rbp
	test	rax, rax
	js	.label_262
	cmp	r11, rax
	jle	.label_262
	mov	qword ptr [r12 + 8], r9
	cmp	r9, rax
	mov	r11, r9
	jle	.label_262
	nop	word ptr cs:[rax + rax]
.label_265:
	mov	rax, qword ptr [rsi + rbp*8 + 8]
	mov	qword ptr [rsi + rbp*8], rax
	inc	rbp
	mov	r11, qword ptr [r12 + 8]
	cmp	rbp, r11
	jl	.label_265
	nop	word ptr cs:[rax + rax]
.label_262:
	inc	r10
	cmp	r10, qword ptr [r13]
	jl	.label_266
	jmp	.label_263
	.section	.text
	.align	32
	#Procedure 0x405636

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_279
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_284:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_270
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_270
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_281
	mov	r10, qword ptr [rax + 8]
.label_281:
	test	r9, r9
	jle	.label_272
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_288
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_292:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_292
.label_288:
	cmp	rbp, -1
	je	.label_272
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_274
.label_272:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_274
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_277
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_275:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_275
.label_277:
	cmp	rax, -1
	je	.label_274
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_291
.label_274:
	test	r10, r10
	jle	.label_270
	test	r9, r9
	jle	.label_278
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_268
	xor	esi, esi
	nop	dword ptr [rax]
.label_273:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_273
.label_268:
	cmp	rsi, -1
	je	.label_278
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_270
.label_278:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_270
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_285
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_290:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_290
.label_285:
	cmp	rax, -1
	je	.label_270
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_270
.label_291:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_293
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_270:
	inc	r14
	cmp	r14, r9
	jl	.label_284
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_279
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	r9, r9
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	jle	.label_289
	dec	r9
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_283:
	test	r9, r9
	mov	rsi, qword ptr [r8 + r14*8]
	mov	eax, 0
	je	.label_271
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_276:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], rsi
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_276
.label_271:
	cmp	rax, -1
	je	.label_282
	cmp	qword ptr [rdi + rax*8], rsi
	je	.label_280
.label_282:
	mov	r11, qword ptr [r12 + 8]
	test	r11, r11
	jle	.label_280
	mov	r10, r11
	dec	r10
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_287
	mov	rbx, r10
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_269:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_269
.label_287:
	cmp	qword ptr [rbp + rax*8], rsi
	mov	rsi, -1
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_280
	cmp	r11, rsi
	jle	.label_280
	mov	qword ptr [r12 + 8], r10
	cmp	r10, rsi
	jle	.label_280
	nop	word ptr cs:[rax + rax]
.label_286:
	mov	rcx, qword ptr [rbp + rax*8 + 8]
	mov	qword ptr [rbp + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_286
	nop	word ptr cs:[rax + rax]
.label_280:
	inc	r14
	cmp	r14, qword ptr [r13]
	jl	.label_283
	jmp	.label_263
.label_279:
	mov	rdi, qword ptr [rsp + 0x10]
.label_263:
	call	free
	xor	ebp, ebp
.label_294:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_293:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_294
	.section	.text
	.align	32
	#Procedure 0x4059b1
	.globl sub_4059b1
	.type sub_4059b1, @function
sub_4059b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_295
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_296
.label_297:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_295
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_299
	.section	.text
	.align	32
	#Procedure 0x405a27
	.globl sub_405a27
	.type sub_405a27, @function
sub_405a27:

	nop	word ptr [rax + rax]
.label_296:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_298
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_298
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_298
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_297
.label_299:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_295
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_298:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_296
.label_295:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405aed
	.globl sub_405aed
	.type sub_405aed, @function
sub_405aed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405af0
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
	je	.label_300
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
.label_300:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405b5c
	.globl sub_405b5c
	.type sub_405b5c, @function
sub_405b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b60
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
	je	.label_301
	mov	qword ptr [rax], rbx
.label_301:
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
	.align	32
	#Procedure 0x405c4c
	.globl sub_405c4c
	.type sub_405c4c, @function
sub_405c4c:

	nop	dword ptr [rax]
.label_303:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_302
	.section	.text
	.align	32
	#Procedure 0x405c5e
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_305
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_304
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_303
.label_302:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_304:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_305:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405cca
	.globl sub_405cca
	.type sub_405cca, @function
sub_405cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cd0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_341
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_345
	mov	esi, OFFSET FLAT:label_348
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_341
.label_345:
	mov	r12d, OFFSET FLAT:label_350
.label_341:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_351
.label_314:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_356
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_360
	mov	esi, OFFSET FLAT:label_362
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_347
	mov	esi, OFFSET FLAT:label_348
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_366
	mov	esi, OFFSET FLAT:label_367
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_372
	mov	esi, OFFSET FLAT:label_350
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_376
	mov	esi, OFFSET FLAT:label_377
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_380
	mov	esi, OFFSET FLAT:label_382
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_385
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_387
	mov	esi, OFFSET FLAT:label_371
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_392
	mov	esi, OFFSET FLAT:label_307
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_308
	mov	esi, OFFSET FLAT:label_310
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_313
	mov	esi, OFFSET FLAT:label_315
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_311
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_320
	xor	ecx, ecx
.label_329:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_323
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_323:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_329
	jmp	.label_311
.label_360:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_334
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_342:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_336
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_336:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_342
	jmp	.label_311
.label_347:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_344
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_354:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_306
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_306:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_354
	jmp	.label_311
.label_366:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_358
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_364:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_359
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_359:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_364
	jmp	.label_311
.label_372:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_370
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_383:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_375
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_375:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_383
	jmp	.label_311
.label_376:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_386
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_309:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_391
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_391:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_309
	jmp	.label_311
.label_380:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_316
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_324:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_332
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_332:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_324
	jmp	.label_311
.label_385:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_328
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_337:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_333
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_333:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_337
	jmp	.label_311
.label_387:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_339
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_349:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_343
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_343:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_349
	jmp	.label_311
.label_392:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_352
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_361:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_355
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_355:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_361
	jmp	.label_311
.label_308:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_363
	xor	ecx, ecx
.label_374:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_365
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_365:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_374
	jmp	.label_311
.label_313:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_378
	xor	ecx, ecx
.label_388:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_381
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_381:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_388
.label_311:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_351:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_311
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_314
.label_334:
	xor	esi, esi
.label_322:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_318
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_318:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_322
	jmp	.label_311
.label_344:
	xor	esi, esi
.label_331:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_326
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_326:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_331
	jmp	.label_311
.label_358:
	xor	esi, esi
.label_338:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_335
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_335:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_338
	jmp	.label_311
.label_370:
	xor	esi, esi
.label_369:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_340
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_340:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_369
	jmp	.label_311
.label_386:
	xor	esi, esi
.label_353:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_346
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_346:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_353
	jmp	.label_311
.label_316:
	xor	esi, esi
.label_390:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_357
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_357:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_390
	jmp	.label_311
.label_328:
	xor	esi, esi
.label_368:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_327
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_327:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_368
	jmp	.label_311
.label_339:
	xor	esi, esi
.label_379:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_373
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_373:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_379
	jmp	.label_311
.label_352:
	xor	esi, esi
.label_389:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_384
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_384:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_389
	jmp	.label_311
.label_363:
	xor	esi, esi
.label_312:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_393
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_393:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_312
	jmp	.label_311
.label_378:
	xor	esi, esi
.label_321:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_317
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_317:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_321
	jmp	.label_311
.label_320:
	xor	esi, esi
.label_330:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_325
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_325:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_330
	jmp	.label_311
	.section	.text
	.align	32
	#Procedure 0x406495
	.globl sub_406495
	.type sub_406495, @function
sub_406495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064a0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_399
	test	r12, r12
	jle	.label_402
	xor	r12d, r12d
	jmp	.label_396
	.section	.text
	.align	32
	#Procedure 0x4064fc
	.globl sub_4064fc
	.type sub_4064fc, @function
sub_4064fc:

	nop	dword ptr [rax]
.label_397:
	cmp	rbp, -1
	je	.label_400
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_395
	.section	.text
	.align	32
	#Procedure 0x40651d
	.globl sub_40651d
	.type sub_40651d, @function
sub_40651d:

	nop	dword ptr [rax]
.label_396:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_400
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_401:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_394
	cmp	qword ptr [rbx + rcx], r13
	je	.label_397
.label_394:
	inc	rax
	cmp	rax, r10
	jl	.label_401
.label_400:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_395:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_398
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_396
.label_402:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_399:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_398:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_399
	.section	.text
	.align	32
	#Procedure 0x4065ca
	.globl sub_4065ca
	.type sub_4065ca, @function
sub_4065ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_404
	cmp	byte ptr [rax], 0x43
	jne	.label_406
	cmp	byte ptr [rax + 1], 0
	je	.label_403
.label_406:
	mov	esi, OFFSET FLAT:label_405
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_404
.label_403:
	xor	ebx, ebx
.label_404:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406601
	.globl sub_406601
	.type sub_406601, @function
sub_406601:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406610
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
	je	.label_407
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
.label_407:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406678
	.globl sub_406678
	.type sub_406678, @function
sub_406678:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_408
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_408
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_412
	.section	.text
	.align	32
	#Procedure 0x4066ac
	.globl sub_4066ac
	.type sub_4066ac, @function
sub_4066ac:

	nop	dword ptr [rax]
.label_410:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_412:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_414
	cmp	ecx, 6
	jne	.label_418
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_423
	.section	.text
	.align	32
	#Procedure 0x4066f4
	.globl sub_4066f4
	.type sub_4066f4, @function
sub_4066f4:

	nop	word ptr cs:[rax + rax]
.label_414:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_423:
	call	free
.label_418:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_410
.label_408:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_411
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_416:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_417
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_417:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_420
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_420:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_421
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_421:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_416
	jmp	.label_409
.label_411:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_409:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_413
	xor	r15d, r15d
	jmp	.label_415
.label_425:
	mov	rdi, qword ptr [r14 + 0x40]
.label_415:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_419
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_422:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_422
.label_419:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_425
	mov	rdi, qword ptr [r14 + 0x40]
.label_413:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_424
	call	free
.label_424:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x406848
	.globl sub_406848
	.type sub_406848, @function
sub_406848:

	nop	dword ptr [rax + rax]
.label_428:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406855

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_427
	test	rbx, rbx
	jne	.label_427
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_427:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_426
	test	rax, rax
	je	.label_428
.label_426:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406880

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_429
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_429
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_441
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_429
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_440
.label_441:
	lea	r8, [r12 + 0x10]
.label_440:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_437:
	dec	rcx
	mov	rdi, r11
.label_435:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_445:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_442
	jl	.label_444
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_445
	jmp	.label_430
	.section	.text
	.align	32
	#Procedure 0x406943
	.globl sub_406943
	.type sub_406943, @function
sub_406943:

	nop	word ptr cs:[rax + rax]
.label_444:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_435
	jmp	.label_430
	.section	.text
	.align	32
	#Procedure 0x40695b
	.globl sub_40695b
	.type sub_40695b, @function
sub_40695b:

	nop	dword ptr [rax + rax]
.label_442:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_438
	nop	dword ptr [rax + rax]
.label_432:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_443
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_432
	jmp	.label_438
.label_443:
	je	.label_434
	nop	word ptr cs:[rax + rax]
.label_438:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_434:
	test	rcx, rcx
	jle	.label_430
	cmp	rdi, 2
	jge	.label_437
.label_430:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_431
	test	rax, rax
	js	.label_431
	xor	edx, edx
.label_439:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_446:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_433
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_446
	jmp	.label_431
	.section	.text
	.align	32
	#Procedure 0x406a0f
	.globl sub_406a0f
	.type sub_406a0f, @function
sub_406a0f:

	nop	
.label_433:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_439
	jmp	.label_436
.label_431:
	mov	rdx, r8
.label_436:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_429:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a39
	.globl sub_406a39
	.type sub_406a39, @function
sub_406a39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a40

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_447
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_452
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_455
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_454:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_453
	dec	rsi
	test	rsi, rsi
	jg	.label_454
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_448
.label_455:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_448
	xor	edx, edx
	cmp	al, 0xa
	je	.label_451
	jmp	.label_448
.label_450:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_448
	test	eax, eax
	je	.label_449
	jmp	.label_448
	.section	.text
	.align	32
	#Procedure 0x406acb
	.globl sub_406acb
	.type sub_406acb, @function
sub_406acb:

	nop	
.label_453:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_450
.label_449:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_448
.label_451:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_448:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_452:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_448
.label_447:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_448
	.section	.text
	.align	32
	#Procedure 0x406b00

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r15, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	test	eax, eax
	je	.label_457
	cmp	eax, 1
	je	.label_458
	cmp	eax, 3
	jne	.label_463
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_462
.label_457:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_456
	cmp	rbx, r12
	jle	.label_459
.label_456:
	cmp	rbx, 0x40000000
	jl	.label_461
.label_458:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_462
.label_463:
	call	__errno_location
.label_462:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r15
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_460
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_459:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_464:
	mov	dword ptr [rax], 0x22
	jmp	.label_462
	.section	.text
	.align	32
	#Procedure 0x406bbe
	.globl sub_406bbe
	.type sub_406bbe, @function
sub_406bbe:

	nop	word ptr cs:[rax + rax]
.label_461:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_464
	mov	dword ptr [rax], 0x4b
	jmp	.label_462
	.section	.text
	.align	32
	#Procedure 0x406be0
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
	.align	32
	#Procedure 0x406c16
	.globl sub_406c16
	.type sub_406c16, @function
sub_406c16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_472:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_477
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_468
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_470
	jmp	.label_468
	.section	.text
	.align	32
	#Procedure 0x406d3b
	.globl sub_406d3b
	.type sub_406d3b, @function
sub_406d3b:

	nop	dword ptr [rax + rax]
.label_477:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_473
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_475
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_469
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_469
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_476:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_466
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_474
.label_466:
	dec	rsi
	test	rsi, rsi
	jle	.label_469
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_476
	jmp	.label_469
.label_474:
	cmp	rsi, -1
	je	.label_469
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_471
	jmp	.label_468
	.section	.text
	.align	32
	#Procedure 0x406e1c
	.globl sub_406e1c
	.type sub_406e1c, @function
sub_406e1c:

	nop	dword ptr [rax]
.label_469:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_468
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_468
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_468
.label_471:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_468
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_470
	jmp	.label_468
	.section	.text
	.align	32
	#Procedure 0x406f7e
	.globl sub_406f7e
	.type sub_406f7e, @function
sub_406f7e:

	nop	
.label_475:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_465
	cmp	rbp, r15
	jne	.label_467
.label_465:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_468
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_472
	jmp	.label_468
.label_473:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_478:
	mov	dword ptr [rsp + 8], 0
.label_468:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_467:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_478
	jmp	.label_468
	.section	.text
	.align	32
	#Procedure 0x40708a
	.globl sub_40708a
	.type sub_40708a, @function
sub_40708a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407090
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_479
	mov	eax, r9d
.label_479:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070bb
	.globl sub_4070bb
	.type sub_4070bb, @function
sub_4070bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070c8
	.globl sub_4070c8
	.type sub_4070c8, @function
sub_4070c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070d0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rax, qword ptr [rip + label_519]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_520]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_521
	mov	r14, rdi
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_481
	lea	r13, [rbp - 0xb0]
	mov	rdi, r14
.label_521:
	mov	qword ptr [rbp - 0x98], rdi
	mov	r14, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	mov	qword ptr [rbp - 0x50], rdx
	ja	.label_530
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_541
.label_530:
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_538
	mov	al, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rdx, qword ptr [rbp - 0x50]
.label_541:
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsi, r15
	call	memcpy
	mov	r8, qword ptr [r15]
	xor	edi, edi
	cmp	r8, qword ptr [r15 + 8]
	jg	.label_543
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rbx
	mov	qword ptr [rbp - 0x58], r12
	mov	qword ptr [rbp - 0x40], r15
	jmp	.label_533
.label_538:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_481
	cmp	qword ptr [r13], 0
	jle	.label_504
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_488:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_488
.label_504:
	mov	rdi, qword ptr [r13 + 0x10]
	call	free
	mov	ecx, 0xc
	jmp	.label_481
.label_490:
	mov	r12, rax
	jmp	.label_493
	.section	.text
	.align	32
	#Procedure 0x407244
	.globl sub_407244
	.type sub_407244, @function
sub_407244:

	nop	word ptr cs:[rax + rax]
.label_533:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax]
	mov	rdx, r14
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_496
	cmp	cl, 8
	jne	.label_499
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_499
	shl	rax, 4
	mov	qword ptr [r15 + rax], r8
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_499
	.section	.text
	.align	32
	#Procedure 0x407299
	.globl sub_407299
	.type sub_407299, @function
sub_407299:

	nop	dword ptr [rax]
.label_496:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_499
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r8
	jge	.label_507
	mov	qword ptr [r15 + rax + 8], r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r15
	jmp	.label_508
.label_507:
	test	ecx, 0x80000
	je	.label_503
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + rax], -1
	je	.label_503
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x48]
.label_508:
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], r8
	call	memcpy
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_499
.label_503:
	mov	qword ptr [r15 + rax + 8], r8
	nop	word ptr cs:[rax + rax]
.label_499:
	cmp	r8, qword ptr [r15 + 8]
	jne	.label_524
	cmp	r14, qword ptr [r12 + 0xb0]
	jne	.label_524
	test	r13, r13
	je	.label_526
	test	rbx, rbx
	mov	eax, 0
	je	.label_529
	mov	rcx, qword ptr [rbp - 0x88]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_535:
	cmp	qword ptr [rcx - 8], 0
	js	.label_532
	cmp	qword ptr [rcx], -1
	je	.label_529
.label_532:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_535
.label_529:
	cmp	rax, rbx
	je	.label_536
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_515
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_524:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r14
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	mov	qword ptr [rbp - 0x30], r8
	jne	.label_546
	test	ecx, 0x100000
	jne	.label_550
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_502
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	test	r13, r13
	je	.label_482
	cmp	rax, -1
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_491
	cmp	rdi, -1
	je	.label_491
	test	rdx, rdx
	je	.label_494
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rcx
	cmp	rax, rdx
	jl	.label_491
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, rcx
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0x30]
	test	eax, eax
	jne	.label_491
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_501
	.section	.text
	.align	32
	#Procedure 0x407497
	.globl sub_407497
	.type sub_407497, @function
sub_407497:

	nop	word ptr [rax + rax]
.label_546:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	r12, qword ptr [rax + r8*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_492
	lea	rax, [r14 + r14*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	test	r10, r10
	jle	.label_512
	mov	r9, qword ptr [r12 + 0x10]
	test	r9, r9
	jle	.label_512
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r12 + 0x18]
	je	.label_522
	mov	r11, -1
	xor	r14d, r14d
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_537:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_528:
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	cmovge	rax, rdi
	cmovge	rdx, rcx
	cmp	rax, rdx
	jb	.label_528
	cmp	rax, -1
	je	.label_531
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_531
	cmp	r11, -1
	mov	r12, r11
	mov	r11, rbx
	jne	.label_534
.label_531:
	inc	r14
	cmp	r14, r10
	jl	.label_537
	mov	r12, r11
	jmp	.label_539
	.section	.text
	.align	32
	#Procedure 0x40756b
	.globl sub_40756b
	.type sub_40756b, @function
sub_40756b:

	nop	dword ptr [rax + rax]
.label_550:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r8
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_480:
	test	rdx, rdx
	jne	.label_542
	jmp	.label_502
.label_522:
	mov	rbx, qword ptr [rsi]
	mov	r12, -1
	xor	ecx, ecx
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_547:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_544
	cmp	r12, -1
	mov	rax, rbx
	je	.label_525
	jmp	.label_534
	.section	.text
	.align	32
	#Procedure 0x4075c1
	.globl sub_4075c1
	.type sub_4075c1, @function
sub_4075c1:

	nop	word ptr cs:[rax + rax]
.label_544:
	mov	rax, r12
.label_525:
	inc	rcx
	cmp	rcx, r10
	mov	r12, rax
	jl	.label_547
	mov	r12, rax
	jmp	.label_539
.label_534:
	mov	r9, qword ptr [rbp - 0x68]
	test	r9, r9
	jle	.label_549
	mov	rcx, r9
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_551
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_485:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_485
.label_551:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_490
	test	r13, r13
	jne	.label_495
	mov	r12, rax
	jmp	.label_493
.label_482:
	test	rdx, rdx
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_494
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_498
.label_494:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_492
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_502
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r14 + r14*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_545
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_514:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_514
.label_545:
	cmp	rcx, -1
	je	.label_480
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_506
	jmp	.label_480
	.section	.text
	.align	32
	#Procedure 0x407705
	.globl sub_407705
	.type sub_407705, @function
sub_407705:

	nop	word ptr cs:[rax + rax]
.label_502:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_512
.label_542:
	add	rdx, qword ptr [rbp - 0x30]
	test	r13, r13
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	je	.label_498
.label_501:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_491
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_491
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_491
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_513
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_505:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_505
.label_513:
	cmp	rbx, -1
	je	.label_512
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_512
.label_498:
	mov	qword ptr [rbp - 0x68], 0
	mov	r8, rdx
	mov	r15, qword ptr [rbp - 0x40]
	jmp	.label_493
.label_549:
	test	r13, r13
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_493
.label_495:
	mov	qword ptr [rbp - 0x80], r9
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_548
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_492
	shl	qword ptr [r13 + 8], 1
	mov	qword ptr [r13 + 0x10], r15
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_486
.label_548:
	mov	r15, qword ptr [r13 + 0x10]
.label_486:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	qword ptr [r15 + r14], r8
	mov	qword ptr [r15 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x50]
	call	malloc
	mov	qword ptr [r15 + r14 + 0x10], rax
	test	rax, rax
	je	.label_492
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	lea	rax, [r15 + r14 + 0x18]
	mov	rbx, qword ptr [rbp - 0x80]
	mov	qword ptr [r15 + r14 + 0x20], rbx
	test	rbx, rbx
	jle	.label_497
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rax], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15 + r14 + 0x28], rax
	test	rax, rax
	je	.label_527
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_506
.label_497:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_506:
	mov	r15, qword ptr [rbp - 0x40]
.label_539:
	mov	r8, qword ptr [rbp - 0x30]
.label_493:
	test	r12, r12
	jns	.label_509
	cmp	r12, -2
	je	.label_492
	nop	dword ptr [rax]
.label_512:
	test	r13, r13
	je	.label_523
.label_491:
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_515
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r15, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + rbx + 8]
.label_509:
	cmp	r8, qword ptr [r15 + 8]
	mov	r14, r12
	mov	rbx, qword ptr [rbp - 0x90]
	mov	r12, qword ptr [rbp - 0x58]
	jle	.label_533
	mov	rdi, qword ptr [rbp - 0x60]
.label_543:
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_540
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_540:
	xor	ecx, ecx
	test	r13, r13
	je	.label_481
	cmp	qword ptr [r13], 0
	jle	.label_489
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_483:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_483
.label_489:
	mov	rdi, qword ptr [r13 + 0x10]
.label_484:
	call	free
	xor	ecx, ecx
.label_481:
	mov	eax, ecx
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_523:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	ecx, 1
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_481
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	mov	ecx, 1
	jmp	.label_481
.label_526:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	ecx, ecx
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_481
	mov	rdi, qword ptr [rbp - 0x48]
	jmp	.label_484
.label_536:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_487
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_487:
	cmp	qword ptr [r13], 0
	jle	.label_489
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_510:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r13]
	jl	.label_510
	jmp	.label_489
.label_527:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x78]
	movups	xmmword ptr [rax], xmm0
.label_492:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_500
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_500:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_481
	cmp	qword ptr [r13], 0
	jle	.label_504
	xor	ebx, ebx
	xor	r15d, r15d
.label_511:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_511
	jmp	.label_504
.label_515:
	mov	edi, OFFSET FLAT:label_516
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_518
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x407af6
	.globl sub_407af6
	.type sub_407af6, @function
sub_407af6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b00

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x407b17
	.globl sub_407b17
	.type sub_407b17, @function
sub_407b17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b20
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
	.align	32
	#Procedure 0x407b53
	.globl sub_407b53
	.type sub_407b53, @function
sub_407b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b60

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_567]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_556
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_561
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_570:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_564
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_568
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_563
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_563
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_566:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_555
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_560
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_562
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_565
.label_560:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_565
	jmp	.label_555
.label_562:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_555
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_555
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_571
	xor	edi, edi
	nop	dword ptr [rax]
.label_559:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_559
.label_571:
	test	eax, eax
	je	.label_555
	cmp	rdi, -1
	je	.label_555
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_565
.label_555:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_553
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_553
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_553
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_554
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_552:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_552
.label_554:
	cmp	rsi, -1
	je	.label_553
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_553
	nop	dword ptr [rax]
.label_565:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_569
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_557
.label_569:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_557:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_561
.label_553:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_566
.label_563:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_570
	jmp	.label_561
.label_564:
	xor	ebp, ebp
	jmp	.label_561
.label_568:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_561:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_558:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_556:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_558
	.section	.text
	.align	32
	#Procedure 0x407eb9
	.globl sub_407eb9
	.type sub_407eb9, @function
sub_407eb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0

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
	je	.label_572
	test	r15, r15
	je	.label_573
.label_572:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_573:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407efc
	.globl sub_407efc
	.type sub_407efc, @function
sub_407efc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_574
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_576:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_576
.label_574:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_578
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_577], OFFSET FLAT:slot0
.label_578:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_575
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_575:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f91
	.globl sub_407f91
	.type sub_407f91, @function
sub_407f91:

	nop	word ptr cs:[rax + rax]
.label_579:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_580:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_581:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fd1
	.globl sub_407fd1
	.type sub_407fd1, @function
sub_407fd1:

	nop	word ptr cs:[rax + rax]
.label_582:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_583:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_579
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_580
	.section	.text
	.align	32
	#Procedure 0x40800a
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_581
	test	bl, 4
	jne	.label_582
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_583
	.section	.text
	.align	32
	#Procedure 0x408040
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_584
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_585
	test	rax, rax
	je	.label_584
.label_585:
	pop	rbx
	ret	
.label_584:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408075
	.globl sub_408075
	.type sub_408075, @function
sub_408075:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408080

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_586
	test	r13, r13
	jle	.label_587
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_590:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_589
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_588
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_592
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_588:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_589:
	inc	rbp
	cmp	rbp, r13
	jl	.label_590
.label_587:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_591
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_593:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_586:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_592:
	mov	ecx, 0xc
	jmp	.label_586
.label_591:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_586
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_593
	.section	.text
	.align	32
	#Procedure 0x4081bb
	.globl sub_4081bb
	.type sub_4081bb, @function
sub_4081bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081c0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_710
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_681
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_681
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_690
.label_681:
	cmp	bl, 0x5c
	jne	.label_787
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_696
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_699
.label_869:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_876:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_702
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_711
.label_710:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_642
.label_787:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_713
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_720
.label_696:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_725
.label_713:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_720:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_642
	jmp	qword ptr [(rcx * 8) + label_740]
.label_2588:
	mov	rcx, r12
	test	ch, 8
	je	.label_642
	jmp	.label_729
.label_702:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_711:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_642
	jmp	qword ptr [(rcx * 8) + label_604]
.label_2622:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_642
.label_690:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_725:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_642:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2589:
	mov	rdx, r12
	test	dl, 8
	jne	.label_752
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_752
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_642
	mov	eax, dword ptr [r15 + 8]
.label_752:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_642
.label_2590:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_642
	jmp	.label_766
.label_2591:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_642
	jmp	.label_769
.label_2592:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2593:
	test	r12w, 0x402
	jne	.label_642
	jmp	.label_772
.label_2594:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2595:
	test	r12w, 0x402
	jne	.label_642
	jmp	.label_779
.label_2596:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2597:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_782
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_782
	test	dh, 8
	je	.label_642
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_642
.label_782:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_642
.label_2598:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_642
	jmp	.label_793
.label_2599:
	mov	rcx, r12
	test	ch, 4
	jne	.label_642
	test	cx, cx
	js	.label_729
	jmp	.label_642
.label_2600:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_642
	jmp	.label_800
.label_2618:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_642
.label_2619:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_642
.label_766:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2620:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_642
.label_769:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2621:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_642
.label_772:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2623:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_642
.label_2624:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_642
.label_2625:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_642
.label_779:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2626:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_642
.label_2627:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2628:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2629:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_642
.label_2630:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_642
.label_2631:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2632:
	test	r12d, 0x80000
	jne	.label_642
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2633:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_642
.label_793:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2634:
	mov	rcx, r12
	test	ch, 4
	jne	.label_642
	test	cx, cx
	js	.label_642
.label_729:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_2635:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_642
.label_800:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_642
.label_699:
	cmp	edx, 2
	jl	.label_867
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_869
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_867
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_869
.label_867:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_874
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_874:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_876
	test	bl, bl
	js	.label_869
	jmp	.label_876
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408800

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_888
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_896
	test	r13, r13
	jle	.label_896
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_896
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_891
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_898:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_895:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_893
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_899
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_895
	jmp	.label_893
.label_899:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_898
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_893:
	sub	r13, rbp
	jle	.label_897
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_890
.label_896:
	test	r13, r13
	jle	.label_888
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_889
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_892
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_894
.label_888:
	test	rbx, rbx
	je	.label_889
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_889
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_889
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_892
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_894
.label_889:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_894
.label_897:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_890
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_890:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_894:
	xor	ecx, ecx
.label_891:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_892:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_891
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a10

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_904
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_904
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_910
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_905
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_910:
	test	rcx, rcx
	je	.label_906
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_900
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_901
.label_909:
	dec	rax
.label_911:
	dec	rcx
	jmp	.label_908
	nop	word ptr [rax + rax]
.label_901:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_909
	jge	.label_911
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_908:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_901
.label_900:
	test	rax, rax
	js	.label_903
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_903:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_904
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_907:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_912:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_913
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_912
	jmp	.label_904
	nop	word ptr cs:[rax + rax]
.label_913:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_907
	lea	rsi, [rdi + r12*8]
.label_902:
	call	memcpy
.label_904:
	xor	eax, eax
.label_905:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_906:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_902
	nop	
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
.label_743:
	call	abort
	nop	word ptr cs:[rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_743
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
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_919
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_921
.label_919:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_921:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_918
	cmp	r10d, 0x29
	jae	.label_917
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_920
.label_917:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_920:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_918
	cmp	r10d, 0x29
	jae	.label_915
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_916
.label_915:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_916:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_918
	cmp	r10d, 0x29
	jae	.label_926
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_914
.label_926:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_914:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_918
	cmp	r10d, 0x29
	jae	.label_924
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_925
.label_924:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_925:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_918
	cmp	r10d, 0x29
	jae	.label_922
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_923
.label_922:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_923:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_918
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_918
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_918
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_918
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_918:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	mov	r9, -1
	nop	word ptr [rax + rax]
.label_826:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_826
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e70

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_933
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_932
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_932
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_938:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_932
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_938
.label_932:
	cmp	r10d, 5
	jne	.label_942
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_929
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_945
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_929
.label_945:
	test	al, al
	jns	.label_950
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_929
.label_950:
	mov	r14d, ebx
	jmp	.label_929
.label_942:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_929
	test	al, al
	je	.label_929
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_928
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_928
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_939
.label_928:
	cmp	r8d, 1
	jne	.label_946
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_939
.label_946:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_939:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_948
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_931:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_927
	inc	rdx
	cmp	rdx, rax
	jl	.label_931
.label_948:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_943
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_935:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_927
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_935
	mov	rsi, qword ptr [r15 + 0x40]
.label_943:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_936
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_937:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_940
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_927
.label_940:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_937
	jmp	.label_936
.label_927:
	mov	ecx, ebx
.label_936:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_949
	mov	r14d, ecx
	jmp	.label_929
.label_949:
	test	ecx, ecx
	jg	.label_929
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_929:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_933:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_929
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_929
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_934
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_929
.label_934:
	cmp	bl, 0xef
	ja	.label_941
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_930
	cmp	dil, 0xa0
	jb	.label_929
	jmp	.label_930
.label_941:
	cmp	bl, 0xf7
	ja	.label_947
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_930
	cmp	dil, 0x90
	jb	.label_929
	jmp	.label_930
.label_947:
	cmp	bl, 0xfb
	ja	.label_951
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_930
	cmp	dil, 0x88
	jb	.label_929
	jmp	.label_930
.label_951:
	cmp	bl, 0xfd
	ja	.label_929
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_930
	cmp	dil, 0x84
	jb	.label_929
.label_930:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_929
	add	rax, rcx
	mov	ecx, 1
.label_944:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_929
	cmp	dl, 0xbf
	ja	.label_929
	inc	rcx
	cmp	rcx, rdi
	jl	.label_944
	mov	r14d, esi
	jmp	.label_929
	nop	word ptr cs:[rax + rax]
.label_640:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_640
	call	rpl_calloc
	test	rax, rax
	je	.label_640
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409130

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_952
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_54
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409160

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_980
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_989
	mov	qword ptr [rbx + 0x20], 0
.label_989:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_997
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_997:
	test	r14, r14
	je	.label_975
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_1014
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1015
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_959
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_959:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_969
.label_1011:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_954:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_975
	add	qword ptr [rbx + 8], r14
.label_975:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_979
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_986
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_990
	jmp	.label_992
.label_979:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_994
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_992
.label_986:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_992:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_990:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_980:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_997
.label_1014:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_1010
.label_1003:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_1013
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_953
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_981:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_953
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_981
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_973
.label_972:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_958
	cmp	rax, -3
	ja	.label_958
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_958:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_1001
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_953:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_1005
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_974
.label_1015:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_957:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1012
	jge	.label_963
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1012:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_957
.label_963:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_968
	cmp	rbp, r14
	jne	.label_968
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_968
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_954
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_970:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_970
	jmp	.label_954
.label_969:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1011
.label_968:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_978:
	mov	rax, rbp
	test	rax, rax
	jle	.label_956
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_978
.label_956:
	cmp	rax, rdi
	jge	.label_960
	mov	rcx, qword ptr [rbx + 0x10]
.label_961:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_960
	inc	rax
	cmp	rax, rdi
	jl	.label_961
.label_960:
	cmp	rax, rdi
	jne	.label_965
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_954
.label_994:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1009
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_977
	jmp	.label_983
.label_999:
	mov	r12, qword ptr [r13]
.label_977:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_985
.label_1004:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_993
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_993:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_999
	jmp	.label_1002
.label_985:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_1004
.label_1013:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1006
	mov	cl, byte ptr [rsi + rdx]
.label_1006:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_955
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_955
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_955:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_954
.label_965:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_976
	jle	.label_967
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_967:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_976:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_954
.label_1005:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_964
.label_1009:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_992
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_987
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_996
.label_1007:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_996:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1007
	mov	rax, rcx
.label_987:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_992
.label_1002:
	mov	r15, r14
.label_983:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_992
.label_971:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_995
	test	rax, rax
	je	.label_995
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_995:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1008
.label_974:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_971
	mov	edx, dword ptr [rsp + 8]
.label_1008:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_974
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_964
.label_1001:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_982
.label_962:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_966
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_966:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_988
.label_964:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_988:
	test	rbp, rbp
	jne	.label_998
.label_991:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_954
.label_1010:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1003
.label_998:
	jle	.label_1000
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1000:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_991
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_991
.label_982:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_966
	test	eax, eax
	je	.label_962
	jmp	.label_966
.label_973:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_972
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_984:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_984
	jmp	.label_972
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098a0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rbx, qword ptr [r13]
	cmp	dword ptr [rbx + 0xb4], 1
	jne	.label_1059
	mov	al, byte ptr [r13 + 0x1a]
	and	al, 0x40
	shr	al, 6
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1065
.label_1059:
	mov	dword ptr [rsp + 0xc], 0
.label_1065:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1074
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax + rax]
.label_1171:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_817
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_1091]
.label_2564:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1092
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1225
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1225:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1092:
	test	byte ptr [r13 + 0x1a], 0x40
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_817
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_817
	mov	rax, qword ptr [rbx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	edx, 0x2000ff
	jae	.label_1106
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_1119:
	mov	rax, qword ptr [rbx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_1106
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rbx + 0x10]
	jb	.label_1119
.label_1106:
	mov	r12, rbx
	mov	qword ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1136
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_1136
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1136:
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1143
	nop	word ptr [rax + rax]
.label_2566:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1149
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1169:
	bt	rbp, rbx
	jae	.label_1155
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_1157
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1162
	nop	word ptr cs:[rax + rax]
.label_1157:
	mov	eax, ebx
.label_1162:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1155:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1169
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1197:
	bt	r13, rbp
	jae	.label_1180
	mov	byte ptr [r15 + rbp + 0x40], 1
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_1184
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_1189
	nop	word ptr [rax + rax]
.label_1184:
	lea	rax, [rbp + 0x40]
.label_1189:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1180:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1197
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 0x10]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1217:
	bt	r13, rbp
	jae	.label_1205
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	cmp	eax, 0x180
	jae	.label_1207
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_1213
	nop	dword ptr [rax]
.label_1207:
	mov	rax, rbp
	sub	rax, -0x80
.label_1213:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1205:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1217
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r12, qword ptr [rax + 0x18]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_1233:
	bt	r12, rbp
	jae	.label_1222
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	jae	.label_1168
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_1229
	nop	dword ptr [rax]
.label_1168:
	lea	rax, [rbp + 0xc0]
.label_1229:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1222:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1233
	jmp	.label_817
	nop	dword ptr [rax]
.label_2567:
	mov	r12, qword ptr [rsi]
	cmp	dword ptr [rbx + 0xb4], 1
	jle	.label_1191
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1241
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1241
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1191
.label_1241:
	mov	r12, rbx
	mov	byte ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	lea	rbx, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1034:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp]
	cmp	rax, -2
	jne	.label_1030
	mov	byte ptr [r15 + rcx], 1
.label_1030:
	inc	cl
	mov	byte ptr [rsp], cl
	jne	.label_1034
.label_1143:
	mov	rbx, r12
	jmp	.label_817
.label_1191:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_817
	mov	eax, dword ptr [rsp + 0xc]
	xor	ebp, ebp
	test	al, al
	je	.label_742
	nop	word ptr cs:[rax + rax]
.label_1135:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1054
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1055
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1055:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
	mov	rbx, qword ptr [rsp + 0x10]
.label_1054:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1064
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1064
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1064
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1064:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1135
	jmp	.label_817
	nop	word ptr cs:[rax + rax]
.label_742:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_804
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_804:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_809
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_809
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_809
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_809:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_742
	jmp	.label_817
.label_1149:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1183:
	bt	rbp, rax
	jae	.label_1115
	mov	byte ptr [r15 + rax], 1
.label_1115:
	lea	rcx, [rax + 1]
	bt	rbp, rcx
	jae	.label_1156
	mov	byte ptr [r15 + rax + 1], 1
.label_1156:
	inc	rcx
	cmp	rcx, 0x40
	mov	rax, rcx
	jne	.label_1183
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1137:
	bt	rax, rcx
	jae	.label_1131
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_1131:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1133
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_1133:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1137
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1153:
	bt	rax, rcx
	jae	.label_1088
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_1088:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1148
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_1148:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1153
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x18]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1167:
	bt	rax, rcx
	jae	.label_1159
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_1159:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1163
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_1163:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1167
	nop	dword ptr [rax + rax]
.label_817:
	inc	r14
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rsi + 0x10]
	jl	.label_1171
	jmp	.label_1074
.label_2565:
	movaps	xmm0, xmmword ptr [rip + label_1175]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	cmp	eax, 2
	jne	.label_1074
	or	byte ptr [r13 + 0x38], 1
.label_1074:
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409f40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1242
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1242:
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
	nop	word ptr cs:[rax + rax]
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_660
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_596
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_641
.label_596:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_641:
	mov	byte ptr [r15 + 0x38], al
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_611
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_639
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_639:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_645
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_645:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_651
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_651:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_660:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_611:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_660
	nop	dword ptr [rax + rax]
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_738
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_738:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_689
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_689:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_695
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_695:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a320

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r11, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r13, qword ptr [rax + r10*8]
	lea	rax, [r13 + 8]
	test	r13, r13
	cmove	rax, r13
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [r11 + 8], 0
	mov	qword ptr [rsp + 8], r10
	je	.label_1297
	test	r13, r13
	je	.label_1260
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], r12
	mov	rsi, r12
	mov	qword ptr [rsp + 0x20], r11
	mov	rdx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_1243
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x20]
	jne	.label_1247
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1299
	xor	ecx, ecx
.label_1299:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_1243
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1247
	xor	ebp, ebp
	nop	
.label_1264:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	mov	rbx, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_1243
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	mov	rdx, rbx
	jl	.label_1264
.label_1247:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_1271
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	mov	r11, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	je	.label_1260
	mov	qword ptr [rsp + 0x48], r13
	jle	.label_1282
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	mov	ebx, 0xfe
	nop	word ptr [rax + rax]
.label_1293:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_1277
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_1277
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsi + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r15, qword ptr [rcx + rdx]
	cmp	qword ptr [rsi + rax*8 + 0x18], r9
	mov	rax, qword ptr [r11 + 8]
	jne	.label_1302
	test	rax, rax
	jle	.label_1277
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	dword ptr [rax + rax]
.label_1274:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	bl, 9
	je	.label_1259
	cmp	bl, 8
	jne	.label_1266
	cmp	r15, qword ptr [rcx + rdi]
	cmove	rsi, rbp
	jmp	.label_1266
	nop	word ptr cs:[rax + rax]
.label_1259:
	cmp	r15, qword ptr [rcx + rdi]
	cmove	r14, rbp
.label_1266:
	add	rdx, 8
	dec	rax
	jne	.label_1274
	test	rsi, rsi
	mov	ebx, 0xfe
	js	.label_1276
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1243
.label_1276:
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x10]
	js	.label_1277
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	jle	.label_1277
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1268:
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rcx + r15*8]
	mov	rdi, qword ptr [r12 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_1273
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebp, 0
	je	.label_1301
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1249:
	lea	rbx, [rbp + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rdx, rbx
	cmp	rbp, rdx
	jb	.label_1249
.label_1301:
	cmp	rbp, -1
	mov	ebx, 0xfe
	je	.label_1273
	cmp	qword ptr [rdi + rbp*8], r14
	je	.label_1257
.label_1273:
	mov	rdi, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_1275
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_1263
	xor	edi, edi
	nop	
.label_1253:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r14
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_1253
.label_1263:
	cmp	rdi, -1
	je	.label_1275
	cmp	qword ptr [rcx + rdi*8], r14
	je	.label_1257
.label_1275:
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1243
	dec	r15
	mov	r8, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_1257:
	inc	r15
	cmp	r15, r8
	jl	.label_1268
	jmp	.label_1277
.label_1302:
	test	rax, rax
	jle	.label_1277
	xor	ebp, ebp
	jmp	.label_1295
	nop	word ptr cs:[rax + rax]
.label_1256:
	mov	rcx, qword ptr [r12]
.label_1295:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_1244
	cmp	r15, qword ptr [rcx + rdx]
	jne	.label_1244
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1243
	mov	rax, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_1244:
	inc	rbp
	cmp	rbp, rax
	jl	.label_1256
	nop	
.label_1277:
	inc	r13
	mov	r14, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [r14 + 0x28]
	jl	.label_1293
.label_1282:
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x48]
.label_1260:
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	r10, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [rcx + r10*8], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	je	.label_1291
	jmp	.label_1271
.label_1297:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rax + r10*8], 0
.label_1291:
	test	r13, r13
	je	.label_1269
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r10*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1269
	mov	rbp, qword ptr [rbx + 0x98]
	mov	rax, qword ptr [rbx + 0xc8]
	xor	r13d, r13d
	test	rax, rax
	jle	.label_1290
	mov	rcx, qword ptr [rbx + 0xd8]
	xor	r13d, r13d
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_1298:
	lea	rsi, [rdx + r13]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r10
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r13, rsi
	cmp	r13, rdx
	jl	.label_1298
.label_1290:
	cmp	r13, rax
	jge	.label_1245
	cmp	r13, -1
	je	.label_1245
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rcx, [r13 + r13*4]
	mov	qword ptr [rsp + 0x88], rcx
	cmp	qword ptr [rax + rcx*8 + 8], r10
	jne	.label_1245
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 8], 0
	jle	.label_1245
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x98], rax
	xor	ecx, ecx
	shl	qword ptr [rsp + 0x88], 3
	mov	qword ptr [rsp + 0x28], r14
	nop	dword ptr [rax]
.label_1255:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, qword ptr [rax + rcx*8]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [r14 + 0x10]
	jne	.label_1261
	cmp	eax, 4
	jne	.label_1285
	cmp	qword ptr [r14 + 0x18], r10
	jne	.label_1288
	jmp	.label_1285
	nop	word ptr cs:[rax + rax]
.label_1261:
	cmp	eax, 4
	jne	.label_1285
.label_1288:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, qword ptr [rsp + 0x88]
	mov	rbx, r13
.label_1294:
	cmp	qword ptr [rbp], r15
	jne	.label_1246
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	r9, rax
	sub	r9, rcx
	add	r9, r10
	cmp	rax, rcx
	je	.label_1300
	lea	rcx, [r15*8]
	add	rcx, qword ptr [r12 + 0x18]
	jmp	.label_1270
.label_1300:
	mov	rax, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rcx, qword ptr [rax + rcx*8 + 0x10]
.label_1270:
	cmp	r9, qword ptr [r14 + 0x18]
	jg	.label_1246
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_1246
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_1246
	mov	r8, qword ptr [rcx]
	dec	rax
	mov	rcx, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_1265
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1281:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1281
.label_1265:
	cmp	rdx, -1
	je	.label_1246
	cmp	qword ptr [rcx + rdx*8], r8
	jne	.label_1246
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, r15
	mov	rcx, r10
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 8]
	test	al, al
	jne	.label_1246
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_1258
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, r14
	mov	r14, qword ptr [r14 + 0x28]
	mov	qword ptr [rsp + 0x78], r14
	test	r14, r14
	jle	.label_1296
	mov	qword ptr [rsp + 0x70], r14
	shl	r14, 3
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1284
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, r14
	mov	r14, rbp
	call	memcpy
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1258
.label_1296:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r14, rbp
.label_1258:
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 0x68], r10
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 8]
	mov	r12d, 0xc
	test	al, al
	je	.label_1250
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1250
	mov	r14, qword ptr [r14 + 8]
	test	r14, r14
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_1287
	mov	qword ptr [rsp + 0x90], rbp
	test	r10, r10
	lea	rdi, [rsp + 0xa0]
	js	.label_1283
	mov	rbp, -1
	mov	qword ptr [rsp + 0x48], r15
	nop	dword ptr [rax + rax]
.label_1292:
	mov	rsi, qword ptr [r14 + rbp*8 + 8]
	mov	rdx, qword ptr [rax + rbp*8 + 8]
	test	rsi, rsi
	je	.label_1279
	test	rdx, rdx
	je	.label_1289
	add	rsi, 8
	add	rdx, 8
	mov	r15, rdi
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0x44], r12d
	test	r12d, r12d
	jne	.label_1250
	lea	rdi, [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r15
	call	re_acquire_state
	mov	qword ptr [r14 + rbp*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	r12d, dword ptr [rsp + 0x44]
	test	r12d, r12d
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_1289
	jmp	.label_1250
	nop	word ptr [rax + rax]
.label_1279:
	mov	qword ptr [r14 + rbp*8 + 8], rdx
.label_1289:
	inc	rbp
	cmp	rbp, r10
	jl	.label_1292
.label_1283:
	mov	rbp, qword ptr [rsp + 0x90]
.label_1287:
	mov	qword ptr [rax + r10*8], rbp
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	mov	r14, qword ptr [rsp + 0x28]
	jle	.label_1267
	mov	r12, rsi
	dec	r12
	mov	rcx, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_1252
	mov	rdi, r12
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1280:
	lea	rbp, [rdx + rdi]
	shr	rbp, 1
	cmp	qword ptr [rcx + rbp*8], rbx
	lea	rax, [rbp + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbp
	cmp	rdx, rdi
	jb	.label_1280
.label_1252:
	cmp	qword ptr [rcx + rdx*8], rbx
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_1267
	cmp	rsi, rdi
	jle	.label_1267
	mov	qword ptr [rsp + 0x78], r12
	cmp	r12, rdi
	jle	.label_1267
	lea	r14, [rdx + 1]
	cmp	r12, r14
	mov	r11, r14
	cmovge	r11, r12
	sub	r11, rdx
	cmp	r11, 4
	jae	.label_1278
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1251
.label_1278:
	mov	r8, r11
	and	r8, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_1254
	cmp	r12, r14
	cmovge	r14, r12
	sub	r14, rdx
	add	r14, -4
	shr	r14, 2
	lea	r10d, [r14 + 1]
	and	r10d, 1
	test	r14, r14
	mov	edi, 0
	je	.label_1272
	lea	rbp, [rcx + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r14
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1248:
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbp + rdi*8 - 0x20]
	movups	xmmword ptr [rbp + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbp + rdi*8]
	movups	xmmword ptr [rbp + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_1248
.label_1272:
	test	r10, r10
	je	.label_1286
	add	rdi, rdx
	movups	xmm0, xmmword ptr [rcx + rdi*8 + 8]
	movups	xmm1, xmmword ptr [rcx + rdi*8 + 0x18]
	movups	xmmword ptr [rcx + rdi*8], xmm0
	movups	xmmword ptr [rcx + rdi*8 + 0x10], xmm1
.label_1286:
	cmp	r11, r9
	mov	r10, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_1267
	add	rdx, r8
	jmp	.label_1251
.label_1254:
	mov	r14, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_1251:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, r12
	jl	.label_1251
.label_1267:
	lea	rbp, [rbx + rbx*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_1246:
	inc	rbx
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_1294
.label_1285:
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_1255
.label_1250:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_1262
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_1262:
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	je	.label_1269
	jmp	.label_1271
.label_1245:
	mov	dword ptr [rsp + 4], 0
.label_1269:
	xor	r12d, r12d
.label_1271:
	mov	eax, r12d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1243:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_1271
.label_1284:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_1250
	nop	word ptr cs:[rax + rax]
.label_821:
	call	abort
	nop	dword ptr [rax]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_821
	test	rsi, rsi
	je	.label_821
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
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ae30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1303
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1304
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1304
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1303:
	mov	ecx, 1
.label_1304:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae90

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_887
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1312
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1312
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1312
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_887
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1312:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1310
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1310
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1307:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1306
	test	rcx, rcx
	jne	.label_1311
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1313
	jmp	.label_887
	nop	word ptr [rax + rax]
.label_1311:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1313:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_887
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_882
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1306:
	mov	r15b, 1
.label_882:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1307
	jmp	.label_1309
.label_1310:
	xor	r15d, r15d
.label_1309:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_887
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1305
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1305
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1308
.label_1305:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1308:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_887:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b0a0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_1314
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_1314:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b0c0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_1315
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_1316:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_1316
.label_1315:
	cmp	rax, r8
	jge	.label_1318
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1317
.label_1318:
	mov	rax, -1
.label_1317:
	ret	
	nop	word ptr [rax + rax]
	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b1a0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_1341
	mov	r14, qword ptr [rbp + 0x10]
.label_1349:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_1331
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_567]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1336
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1346
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1348
.label_1331:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_1339
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_1353
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_1354
.label_1339:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_1322
.label_1353:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_1329
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_1336
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_1340
.label_1329:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_1354:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1340:
	test	al, 0x40
	je	.label_1322
.label_1348:
	test	rbp, rbp
	je	.label_1350
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1346
.label_1350:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1325
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1326
.label_1325:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_1322:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_1330
	xor	esi, esi
	nop	
.label_1352:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_1332
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1334
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1326
.label_1334:
	test	rdx, rdx
	je	.label_1343
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_1321
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_1345:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1342
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1327
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_1355
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_1337
.label_1355:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_1323
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_1344
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_1344
	jmp	.label_1337
	nop	
.label_1327:
	test	eax, eax
	jne	.label_1344
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_1342:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_1319
.label_1344:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_1323
.label_1319:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_1345
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_1321:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1343:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_1333
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1326
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1326
.label_1333:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1347
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1326
.label_1347:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_1352
	jmp	.label_1324
.label_1330:
	mov	rbp, rax
	jmp	.label_1324
.label_1332:
	mov	rbp, qword ptr [rsp + 8]
.label_1324:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_1328
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_1328
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_1338
	xor	edx, edx
.label_1335:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1335
.label_1338:
	cmp	rdx, -1
	je	.label_1328
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_1320
.label_1328:
	mov	ebp, 1
.label_1320:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1323:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_1351
.label_1337:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_1351:
	mov	dword ptr [rsp + 4], r12d
.label_1326:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_1320
.label_1341:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_1320
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_1320
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_1320
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1349
.label_1346:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1320
.label_1336:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_1320
	nop	
	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
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
	nop	
	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_643
	test	rsi, rsi
	je	.label_643
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_643:
	call	abort
.label_676:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
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
	je	.label_673
	test	r15, r15
	je	.label_676
.label_673:
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
	.align	32
	#Procedure 0x40b9e0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_1356
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1356:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ba40

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_1357
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_1357:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40baa0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1362
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1365
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1363
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1365:
	test	r15, r15
	jle	.label_1366
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1360
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1360
.label_1366:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1360:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1361
	mov	dword ptr [r13 + 0xe0], edi
.label_1361:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1364
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1358
.label_1364:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1359
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1359
.label_1358:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1362
.label_1359:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1362
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1362:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1363:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1362
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc80

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1367
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1369:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_1368
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_1369
.label_1367:
	xor	eax, eax
.label_1368:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1371:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
.label_1370:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_637
	mov	qword ptr [rsi], rbx
.label_1372:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_670
	test	rax, rax
	je	.label_637
.label_670:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bda9

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1370
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1371
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1372
	call	free
	xor	eax, eax
	jmp	.label_670
.label_637:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40bde0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1373
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1376:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1374
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1377:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1377
.label_1374:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1375
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1375:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1376
.label_1373:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
.label_1381:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_838
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40becf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1381
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1379
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1382
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1379
	mov	esi, OFFSET FLAT:label_1380
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1378
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1378:
	mov	rbx, r14
.label_1379:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bf60

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
	je	.label_1395
	mov	edx, OFFSET FLAT:label_1386
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1392
.label_1395:
	mov	edx, OFFSET FLAT:label_1393
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1397
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
	mov	esi, OFFSET FLAT:label_1394
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1398
	jmp	qword ptr [(r12 * 8) + label_1399]
.label_2537:
	add	rsp, 8
	jmp	.label_1385
.label_1398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1389
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
	jmp	.label_1385
.label_2538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1384
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
.label_2539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1390
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
.label_2540:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1387
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
.label_2541:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1401
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
	jmp	.label_1385
.label_2542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1400
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
	jmp	.label_1385
.label_2543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1383
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
	jmp	.label_1385
.label_2544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1388
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
	jmp	.label_1385
.label_2546:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1391
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
	jmp	.label_1385
.label_2545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1396
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
.label_1385:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2c0

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c2d0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1402
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1402
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_1405:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_1403
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_1405
.label_1403:
	cmp	edi, 2
	jl	.label_1402
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1406
.label_1402:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_792
	jmp	qword ptr [(rax * 8) + label_1404]
.label_2475:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_732
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_733
	nop	word ptr cs:[rax + rax]
.label_754:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_733:
	cmp	dil, 0x1e
	jne	.label_736
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_737
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_774
	nop	dword ptr [rax]
.label_736:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_776:
	mov	bl, byte ptr [rbx + rdx]
.label_774:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_732
	cmp	bl, r11b
	jne	.label_748
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_750
.label_748:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_754
	jmp	.label_732
.label_737:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_759
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_760
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_762
.label_760:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_762
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_661
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_661
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_771:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_661
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_771
.label_661:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_774
.label_759:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_776
.label_762:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_774
.label_750:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_785
	cmp	cl, 0x1c
	je	.label_788
	cmp	cl, 0x1a
	jne	.label_732
	mov	dword ptr [r14], 3
	jmp	.label_732
.label_785:
	mov	dword ptr [r14], 4
	jmp	.label_732
.label_788:
	mov	dword ptr [r14], 2
	jmp	.label_732
.label_2474:
	test	r9b, r9b
	jne	.label_792
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_732
.label_792:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1406:
	xor	eax, eax
.label_732:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c550

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c580

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
.label_825:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_822
	test	r14, r14
	je	.label_825
.label_822:
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
	.align	32
	#Procedure 0x40c5f0

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
	jne	.label_1408
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1407
	test	cl, cl
	jne	.label_1407
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1407
.label_1408:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1407
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1407:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_835
	call	free_dfa_content
.label_835:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_856
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_851:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_845
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_854:
	cmp	r13, r14
	jne	.label_846
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_846:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_851
	jmp	.label_853
.label_845:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_854
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_856
	test	byte ptr [rbp], 0x20
	jne	.label_856
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_854
.label_853:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_856:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c760

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_1410
	mov	r15, r8
	jle	.label_1411
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1414
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_1414
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	eax, [rbx + 1]
	and	eax, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1419
	pxor	xmm1, xmm1
	jmp	.label_1430
.label_1419:
	lea	rbp, [rax - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1418:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1418
.label_1430:
	test	rax, rax
	je	.label_1424
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_1413:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rax
	jne	.label_1413
.label_1424:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1411
.label_1414:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	
.label_1417:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1417
.label_1411:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_1421
	test	r12, r12
	je	.label_1428
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1422:
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_1436
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1436
	mov	rdi, r8
	nop	word ptr cs:[rax + rax]
.label_1434:
	test	rdi, rdi
	jle	.label_1409
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_1434
	nop	word ptr cs:[rax + rax]
.label_1436:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_1422
	jmp	.label_1421
.label_1428:
	lea	rdx, [rcx - 1]
	mov	eax, ecx
	and	eax, 7
	cmp	rdx, 7
	jb	.label_1425
	mov	rdx, rax
	sub	rdx, rcx
	nop	
.label_1437:
	add	rdx, 8
	jne	.label_1437
.label_1425:
	test	rax, rax
	je	.label_1421
	neg	rax
	nop	
.label_1427:
	inc	rax
	jne	.label_1427
.label_1421:
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1426
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	jle	.label_1412
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1423
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1431
.label_1412:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_1438
	lea	r14, [r12 + 0x10]
.label_1431:
	xor	eax, eax
	nop	
.label_1433:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ecx, dword ptr [r8 + rsi + 8]
	mov	edx, ecx
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_1415
	mov	ebp, ecx
	shr	ebp, 0x14
	movzx	ebx, byte ptr [r13 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, ebp
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r13 + 0x68], bl
	cmp	cl, 0xc
	je	.label_1439
	cmp	cl, 4
	je	.label_1432
	cmp	cl, 2
	jne	.label_1435
	or	bl, 0x10
	jmp	.label_1429
.label_1432:
	or	bl, 0x40
	jmp	.label_1429
.label_1435:
	lea	rcx, [r8 + rsi + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1415
.label_1439:
	or	bl, 0x80
.label_1429:
	mov	byte ptr [r13 + 0x68], bl
.label_1415:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1433
.label_1438:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_1416
.label_1409:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1410:
	mov	dword ptr [r14], 0
	jmp	.label_1420
.label_1416:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1426
.label_1423:
	mov	rdi, r13
	call	free
.label_1426:
	mov	dword ptr [r14], 0xc
.label_1420:
	xor	r13d, r13d
	jmp	.label_1409
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	test	rbx, rbx
	mov	rbp, -1
	js	.label_1440
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], r9
	cmp	rbx, rdx
	jg	.label_1440
	xor	r12d, r12d
	add	r8, rbx
	js	.label_1448
	mov	r12, r8
.label_1448:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rbx
	mov	eax, r13d
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_1450
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1450
	mov	rbp, qword ptr [rdi + 0x20]
	test	rbp, rbp
	mov	eax, r13d
	je	.label_1450
	mov	r14, rbx
	mov	rbx, qword ptr [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdx, rbp
	mov	r15, rdi
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1474
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1474:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1473
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1473:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1445
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rdi, qword ptr [rsp + 8]
.label_1445:
	mov	al, byte ptr [rdi + 0x38]
	or	al, 8
	mov	byte ptr [rdi + 0x38], al
	mov	rbx, r14
	mov	rsi, qword ptr [rsp + 0x60]
.label_1450:
	xor	r14d, r14d
	test	rsi, rsi
	mov	r15d, 1
	je	.label_1456
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1456
	and	al, 6
	cmp	al, 4
	jne	.label_1463
	mov	rax, qword ptr [rsi]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1466
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1469
	mov	r14, rsi
.label_1469:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1456
	mov	r15, rax
	jmp	.label_1456
.label_1463:
	mov	r15, qword ptr [rdi + 0x30]
.label_1466:
	inc	r15
	mov	r14, rsi
.label_1456:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1440
	mov	ecx, r13d
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x20]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1468
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1458:
	call	free
.label_1440:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1468:
	test	r14, r14
	mov	rdi, r12
	je	.label_1475
	mov	qword ptr [rsp + 0x10], rbx
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1449
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1452
	test	al, al
	jne	.label_1455
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1464
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1472
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1447:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1443
.label_1449:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1443
	mov	edi, OFFSET FLAT:label_1476
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1461
	call	__assert_fail
.label_1452:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1453
	mov	rbx, rax
.label_1443:
	test	r15, r15
	jle	.label_1459
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1465
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1441:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1441
.label_1465:
	test	r9, r9
	je	.label_1454
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1454:
	mov	rbx, qword ptr [r14]
	jmp	.label_1442
.label_1459:
	xor	r15d, r15d
.label_1442:
	cmp	r15, rbx
	jae	.label_1467
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1451:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1451
	mov	ebp, r13d
	jmp	.label_1444
.label_1467:
	mov	ebp, r13d
	mov	rbx, qword ptr [rsp + 0x10]
.label_1444:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1458
.label_1475:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1458
	cmp	rbp, rbx
	jne	.label_1457
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rbx
	jmp	.label_1458
.label_1453:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x18], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1464
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	test	rax, rax
	je	.label_1446
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1447
.label_1472:
	mov	rdi, qword ptr [rsp + 0x18]
.label_1462:
	call	free
.label_1464:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1444
.label_1455:
	mov	edi, OFFSET FLAT:label_1460
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1461
	call	__assert_fail
.label_1457:
	mov	edi, OFFSET FLAT:label_1470
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1471
	call	__assert_fail
.label_1446:
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1462
	nop	dword ptr [rax]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_777
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_875
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_777
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_598
	xor	r12d, r12d
	test	r14, r14
	jle	.label_881
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_777
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_598
.label_875:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_601
.label_777:
	mov	rax, -2
	jmp	.label_649
.label_601:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_598
.label_881:
	mov	r13, r15
.label_598:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_649:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_613
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_623
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_613
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_629
	xor	r12d, r12d
	test	r14, r14
	jle	.label_807
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_613
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_629
.label_623:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_864
.label_613:
	mov	rax, -2
	jmp	.label_652
.label_807:
	mov	r13, r15
.label_629:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_652:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_864:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_629
.label_682:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_667
	test	rax, rax
	je	.label_669
.label_667:
	pop	rbx
	ret	
.label_773:
	test	rcx, rcx
	jne	.label_668
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_668:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_678
.label_697:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_682
	test	rbx, rbx
	jne	.label_682
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_678:
	call	xalloc_die
	nop	word ptr [rax + rax]
.label_669:
	call	xalloc_die
	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_773
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_669
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_697
	.section	.text
	.align	32
	#Procedure 0x40d240

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1493
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1480
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1486
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1487
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1490:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1490
.label_1487:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1481
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1481:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1484
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1484:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1491
	mov	rax, qword ptr [r12 + 0x70]
.label_1485:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1477
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1488
	mov	rbp, qword ptr [r12 + 0x70]
.label_1479:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1494
	mov	rcx, qword ptr [r12 + 0x70]
.label_1492:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1478
.label_1477:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_1478:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1493:
	mov	dword ptr [r15], 0xc
	jmp	.label_1482
.label_1480:
	mov	rdi, rbx
	jmp	.label_1489
.label_1486:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_1482
.label_1491:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1483
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1485
.label_1488:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1483
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1479
.label_1483:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1489:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1482:
	xor	eax, eax
	jmp	.label_1478
.label_1494:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1478
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1492
	nop	word ptr cs:[rax + rax]
	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d640

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_1518
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1518
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1533
.label_1518:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1526
.label_1533:
	cmp	rdx, r15
	jle	.label_1539
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1506
.label_870:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_885
	cmp	rbp, -2
	jne	.label_842
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_842
.label_885:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_844
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_844
	nop	
.label_1506:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1495
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1495
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_844:
	mov	rax, r15
	jmp	.label_820
	nop	dword ptr [rax]
.label_1495:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_870
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_873
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_806
	nop	word ptr cs:[rax + rax]
.label_873:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_886
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_806:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_820
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_820:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1506
	jmp	.label_1516
.label_886:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_602
.label_842:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1539:
	mov	rax, r15
.label_1516:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1528
.label_1526:
	cmp	r15, rdx
	jge	.label_1531
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_602:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1534
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1496:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1544
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1540
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1551
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1553
.label_1534:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1496
	xor	esi, esi
.label_1542:
	cmp	rsi, rdx
	jge	.label_1496
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1542
	jmp	.label_1496
.label_1544:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1517
	cmp	r14, -2
	jne	.label_1521
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1521
.label_1517:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1529
.label_1523:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1554
.label_1514:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1505
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1505
.label_1551:
	cmp	rcx, -1
	je	.label_1540
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1545
.label_1521:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1531:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1528:
	xor	eax, eax
.label_1504:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1540:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1553:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1502
.label_1503:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1505
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1532
.label_1505:
	mov	rbp, r15
.label_1532:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1526
.label_1502:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1527
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1527
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1537
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1501]
	movdqa	xmm3, xmmword ptr [rip + label_1500]
	movdqa	xmm4, xmmword ptr [rip + label_1508]
	movdqa	xmm5, xmmword ptr [rip + label_1507]
.label_1550:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_1550
	jmp	.label_1513
.label_1545:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1519
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1524
.label_1519:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1530
	test	r15, r15
	je	.label_1522
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1525
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1525
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1541
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1515
.label_1537:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1513:
	test	rdx, rdx
	je	.label_1549
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1500]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1549:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1503
.label_1527:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1498:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1498
	jmp	.label_1503
.label_1524:
	mov	eax, 0xc
	jmp	.label_1504
.label_1541:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1500]
	movdqa	xmm9, xmmword ptr [rip + label_1501]
	movdqa	xmm10, xmmword ptr [rip + label_1507]
	movdqa	xmm11, xmmword ptr [rip + label_1508]
	movdqa	xmm5, xmmword ptr [rip + label_1509]
	movdqa	xmm6, xmmword ptr [rip + label_1510]
	movdqa	xmm7, xmmword ptr [rip + label_1511]
	movdqa	xmm1, xmmword ptr [rip + label_1512]
.label_1538:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1538
.label_1515:
	test	rdx, rdx
	je	.label_1499
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1500]
	movdqa	xmm2, xmmword ptr [rip + label_1501]
.label_1536:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1536
.label_1499:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1522
.label_1525:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1525
.label_1522:
	mov	byte ptr [r13 + 0x8c], 1
.label_1530:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_1535
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1543
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1543
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1546]
	movdqa	xmm8, xmmword ptr [rip + label_1500]
	movdqa	xmm9, xmmword ptr [rip + label_1501]
	movdqa	xmm10, xmmword ptr [rip + label_1547]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1548],  0xe8
	mov	rdi, r8
.label_1497:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_1497
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1535
.label_1543:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1552:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1552
.label_1535:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1520
	add	qword ptr [r13 + 0x68], rcx
.label_1520:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1526
.label_1529:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1523
.label_1554:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1514
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df70

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1560
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1556
.label_1560:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1561
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1562
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1558
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1559
.label_1561:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1556
.label_1562:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1559:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_1556
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1556:
	test	rbx, rbx
	je	.label_1555
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1555
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1557
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1557
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1557
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1557
.label_1555:
	mov	rax, rbx
.label_1557:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1558:
	xor	eax, eax
	jmp	.label_1557
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e0c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_9
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1563
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0f0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_1564
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_1564
	push	rbx
	xor	ebx, ebx
	cmp	r11, r8
	sete	bl
	xor	esi, esi
	cmp	r10, r8
	sete	sil
	add	esi, esi
	xor	eax, eax
	or	esi, ebx
	pop	rbx
	je	.label_1564
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1564:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e140

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r9, rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rdi + 0x30]
	lea	rcx, [r9 + r9*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1578
	lea	r10, [rax + rcx*8 + 8]
	mov	edx, 1
	mov	rcx, qword ptr [rsp + 0x10]
	shl	rdx, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	esi, eax
	shl	esi, 0x1f
	sar	esi, 0x1f
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x60], rdx
	xor	rdx, 0xffff
	mov	qword ptr [rsp + 0x58], rdx
	mov	edx, eax
	and	edx, 2
	mov	dword ptr [rsp + 0x18], edx
	shr	edx, 1
	cmp	rcx, 0x3f
	setg	cl
	mov	dword ptr [rsp + 0x2c], edx
	or	cl, dl
	mov	byte ptr [rsp + 0xb], cl
	and	eax, 1
	mov	dword ptr [rsp + 0x54], eax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x38], r10
	nop	word ptr [rax + rax]
.label_1582:
	mov	rax, qword ptr [r10 + 8]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rdi]
	mov	rsi, r15
	shl	rsi, 4
	lea	rdx, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_1587
	cmp	al, 8
	je	.label_1570
	cmp	al, 4
	jne	.label_1565
	cmp	r8, -1
	je	.label_1565
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x30]
	add	r13, qword ptr [rax + 0xd8]
	cmp	qword ptr [rsp + 0x10], 0x3f
	jg	.label_1574
	mov	r12d, ecx
	nop	
.label_1571:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_1581
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x60], rax
	je	.label_1581
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_1586
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_1568
.label_1586:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_1568
	test	eax, eax
	jne	.label_1579
	cmp	dword ptr [rsp + 0x18], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_1568
.label_1579:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1581:
	mov	ecx, r12d
.label_1568:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_1567
	test	al, al
	jne	.label_1569
.label_1567:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_1571
	jmp	.label_1565
	nop	word ptr [rax + rax]
.label_1587:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_1565
	xor	eax, eax
	jmp	.label_1584
	nop	
.label_1570:
	cmp	dword ptr [rsp + 0x54], 0
	je	.label_1565
	mov	eax, 0xffffffff
.label_1584:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx], rsi
	jne	.label_1565
	jmp	.label_1580
.label_1574:
	cmp	byte ptr [rsp + 0xb], 0
	je	.label_1583
	mov	ebx, ecx
.label_1585:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_1573
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_1588
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_747
	nop	
.label_1588:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_747
	test	eax, eax
	jne	.label_745
	cmp	dword ptr [rsp + 0x18], 0
	mov	eax, 0
	cmovne	ebx, eax
	mov	ecx, ebx
	mov	ebp, dword ptr [rsp + 0x2c]
	jmp	.label_747
.label_745:
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1573:
	mov	ecx, ebx
.label_747:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_1566
	test	al, al
	jne	.label_1569
.label_1566:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_1585
	jmp	.label_1565
.label_1583:
	mov	ebx, ecx
	nop	word ptr [rax + rax]
.label_1572:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_1576
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_1577
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_717
	nop	dword ptr [rax + rax]
.label_1577:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_717
	test	eax, eax
	jne	.label_780
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
.label_780:
	xor	ebp, ebp
.label_1576:
	mov	ecx, ebx
.label_717:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_1575
	test	al, al
	jne	.label_1569
.label_1575:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_1572
	jmp	.label_1565
.label_1569:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_1580
	nop	word ptr cs:[rax + rax]
.label_1565:
	inc	r14
	cmp	r14, qword ptr [r10]
	jl	.label_1582
.label_1578:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_1580:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_797
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_808
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
.label_816:
	call	abort
	nop	
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_816
	test	rdx, rdx
	je	.label_816
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
	.align	32
	#Procedure 0x40e600

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1589
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_1637:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_1614
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1623
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1635
	test	ecx, ecx
	je	.label_1614
.label_1635:
	test	bh, 8
	je	.label_1642
	test	ecx, ecx
	jne	.label_1614
.label_1642:
	test	bh, 0x20
	je	.label_1645
	mov	ecx, eax
	and	ecx, 2
	je	.label_1614
.label_1645:
	test	bpl, bpl
	jns	.label_1623
	and	eax, 8
	je	.label_1614
	nop	word ptr [rax + rax]
.label_1623:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_1653
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_1599:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1599
.label_1653:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_1612
	cmp	rax, -1
	je	.label_1612
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_1612
	lea	rax, [rcx + rax*8]
	nop	
.label_1624:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_1620
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1624
.label_1612:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_1620
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_1634
	nop	word ptr cs:[rax + rax]
.label_1616:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_1634:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_1606
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_1654
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_1643
.label_1654:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1590
.label_1591:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_1598
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_1605
	and	r9b, sil
	je	.label_1613
.label_1605:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_1613
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1598
.label_1630:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1631
.label_1613:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_1639
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_1639:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1650
	nop	word ptr cs:[rax + rax]
.label_1643:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_1615
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_1591
	mov	r12, rbp
.label_1650:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_1598
.label_1615:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_1621
	test	eax, eax
	jne	.label_1630
	xor	r10d, r10d
.label_1621:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_1631:
	mov	r9, qword ptr [rsp + 0x10]
.label_1598:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1638
	cmp	al, 9
	jne	.label_1641
.label_1638:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_1643
	jmp	.label_1590
.label_1641:
	cmp	al, 7
	jne	.label_1647
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_1590:
	cmp	r14, rax
	jge	.label_1649
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1606
	nop	word ptr cs:[rax + rax]
.label_1649:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_1656
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1606
.label_1656:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1594
.label_1658:
	cmp	r13, -1
	je	.label_1596
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_1601
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_1611
.label_1601:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_1619
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_1595
.label_1619:
	test	eax, eax
	mov	r8, rbp
	jne	.label_1636
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_1632
.label_1593:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_1651
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_1660
	mov	r10d, 0xc
	jmp	.label_1626
.label_1660:
	test	eax, eax
	jne	.label_1602
	xor	r10d, r10d
.label_1626:
	mov	rcx, r15
.label_1640:
	mov	r15, qword ptr [rsp + 8]
.label_1657:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1595
.label_1611:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_1595
.label_1604:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_1595
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_1629
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1617
.label_1636:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1640
.label_1632:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_1610
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1593
.label_1651:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1657
.label_1602:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_1595
.label_1629:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1595
.label_1610:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_1595
	nop	word ptr [rax + rax]
.label_1594:
	cmp	rbx, qword ptr [r9]
	jle	.label_1633
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1604
	lea	r15, [rcx + 1]
.label_1617:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_1627
	jmp	.label_1596
	nop	word ptr cs:[rax + rax]
.label_1633:
	mov	r15, rcx
.label_1627:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_1596
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1596
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_1659:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_1646
	cmp	qword ptr [rdx + rbp], r14
	je	.label_1658
.label_1646:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1659
.label_1596:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_1595:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1597
	cmp	al, 0xc
	jne	.label_1600
.label_1597:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_1594
	jmp	.label_1606
.label_1647:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1607
.label_1600:
	cmp	al, 0xa
	je	.label_1606
.label_1607:
	cmp	r10d, 6
	je	.label_1606
	test	r10d, r10d
	jne	.label_1628
	nop	word ptr cs:[rax + rax]
.label_1606:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_1616
.label_1620:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_1608:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_1614
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_1625:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1592
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_1592
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_1609
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1652
.label_1609:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_1652:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1648
	mov	rdx, qword ptr [rcx + 0x10]
.label_1648:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_1618
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1622
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_1644
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_1644
	jmp	.label_1603
.label_1618:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1644
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1655
	jmp	.label_1603
.label_1644:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1655:
	cmp	rsi, rdx
	jne	.label_1592
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1592
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1603
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1603
	nop	
.label_1592:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_1625
	nop	word ptr cs:[rax + rax]
.label_1614:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_1637
	jmp	.label_1589
.label_1628:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1608
	jmp	.label_1603
.label_1589:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_1603:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1622:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_1603
	nop	word ptr [rax + rax]
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
.label_1661:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f020

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
	je	.label_1661
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
.label_707:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_620
	test	rax, rax
	je	.label_624
.label_620:
	pop	rbx
	ret	
	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_624
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_707
	test	rbx, rbx
	jne	.label_707
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_624:
	call	xalloc_die
	nop	dword ptr [rax + rax]
.label_1681:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_830
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f13d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_1681
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1665
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1670
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1667
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1680
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1668
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1671
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1672
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1677
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1673
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1674
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1675
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1676
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1663
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_808
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_1669
	mov	esi, OFFSET FLAT:label_1666
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_1669
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1678
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_1669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1679
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_808
	mov	ecx, OFFSET FLAT:label_35
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1664
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_1662
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_739:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_607
	shr	esi, 8
	test	si, 0x3ff
	je	.label_621
	test	sil, 8
	jne	.label_607
	test	eax, eax
	jne	.label_621
	test	sil, sil
	jns	.label_621
.label_607:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_739
.label_621:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
.label_1686:
	test	ecx, ecx
	jne	.label_739
.label_765:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_757
	shr	esi, 8
	test	si, 0x3ff
	je	.label_621
	test	sil, 0x28
	jne	.label_757
	test	eax, eax
	jne	.label_621
	test	sil, sil
	jns	.label_621
	nop	
.label_757:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_765
	jmp	.label_621
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f434

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	rdx, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	rdx, rdx
	jle	.label_621
	mov	esi, eax
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r8, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	ecx, eax
	and	ecx, 2
	and	eax, 8
	xor	ebx, ebx
	test	sil, 1
	jne	.label_1686
	test	ecx, ecx
	jne	.label_1682
	nop	word ptr cs:[rax + rax]
.label_1683:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1685
	shr	esi, 8
	test	si, 0x3ff
	je	.label_621
	test	sil, 0x24
	jne	.label_1685
	test	eax, eax
	jne	.label_621
	test	sil, sil
	jns	.label_621
	nop	word ptr [rax + rax]
.label_1685:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1683
	jmp	.label_621
	nop	word ptr cs:[rax + rax]
.label_1682:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1684
	shr	esi, 8
	test	si, 0x3ff
	je	.label_621
	test	sil, 4
	jne	.label_1684
	test	eax, eax
	jne	.label_621
	test	sil, sil
	jns	.label_621
.label_1684:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1682
	jmp	.label_621
.label_813:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_460
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_827:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_811
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_813
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_54
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_828:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4070c0
	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_823
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_827
	cmp	dword ptr [rbp], 0x20
	jne	.label_827
.label_823:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_828
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f690

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_1722
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_1706
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1737
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_1696
	mov	r13d, 1
.label_1737:
	test	r14, r14
	je	.label_1691
	mov	r15d, r13d
	jmp	.label_1695
.label_1706:
	mov	r13d, 4
	test	r14, r14
	je	.label_1696
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1696
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_1696
.label_1695:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1709
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1687
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1716
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1716
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_1716
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_1726
	cmp	eax, 0x44
	je	.label_1726
	cmp	eax, 0x69
	jne	.label_1716
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_1716
.label_1691:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_1696
.label_1726:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_1716:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1687
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_1692]
.label_2439:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_1700
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_1700:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1712
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1712:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_1718
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1718:
	or	ecx, r14d
	jmp	.label_1699
.label_1687:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_1728
.label_2440:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_1699
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_1699
.label_2441:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_1688
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_1688:
	cmp	rsi, rdi
	jl	.label_1705
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1705:
	or	ecx, r11d
	jmp	.label_1699
.label_2443:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_1713
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_1713:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_1724
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_1724:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_1731
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_1731:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_1740
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1740:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_1699
.label_2437:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_1702
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1690
.label_2438:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_1738
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_1738:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_1703
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_1703:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_1708
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1708:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1735
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1735:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_1693
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_1693:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_1704
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1704:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_1699
.label_2442:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_1715
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_1715:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_1727
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_1727:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_1732
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1732:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1734
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1734:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_1701
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1701:
	or	ecx, r14d
	jmp	.label_1699
.label_2444:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1711
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_1711:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1723
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1723:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1730
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1730:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1736
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_1736:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_1694
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_1694:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_1707
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_1707:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_1714
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_1714:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_1689
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_1733
.label_2445:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1729
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_1729:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1739
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1739:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1698
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1698:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1710
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_1710:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1717
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1717:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1725
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1725:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_1689
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_1733:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1689:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_1699
.label_2446:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_1702
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1690
.label_2447:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_1697
.label_1702:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_1699
.label_1697:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_1690:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_1699:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_1709:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_1728:
	mov	r13d, r15d
.label_1696:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1722:
	mov	edi, OFFSET FLAT:label_1719
	mov	esi, OFFSET FLAT:label_1720
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1721
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ffb0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, rsi
	mov	qword ptr [rbp - 0x70], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1856
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xd0], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
.label_2568:
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1818
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	xor	r15d, r15d
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0xc0], r13
	nop	word ptr [rax + rax]
.label_1831:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax]
	shl	rsi, 4
	lea	r8, [rdi + rsi]
	mov	edx, dword ptr [rdi + rsi + 8]
	movzx	eax, dl
	cmp	eax, 1
	jne	.label_1835
	mov	cl, byte ptr [r8]
	mov	ebx, 1
	shl	rbx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x60], rbx
	jmp	.label_1767
	nop	
.label_1835:
	cmp	dl, 7
	je	.label_1778
	cmp	dl, 5
	je	.label_1841
	cmp	dl, 3
	jne	.label_1782
	mov	rcx, qword ptr [r8]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_1767
.label_1778:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xd8]
	mov	rbx, -2
	test	cl, 0x40
	jne	.label_1795
	mov	qword ptr [rbp - 0x60], -0x401
	mov	rbx, -0x402
.label_1795:
	test	cl, cl
	jns	.label_1767
	mov	qword ptr [rbp - 0x60], rbx
	jmp	.label_1767
.label_1841:
	mov	rbx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1805
	mov	rcx, qword ptr [rbx + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm0
	jmp	.label_1809
.label_1805:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, -1
.label_1809:
	mov	rbx, qword ptr [rbx + 0xd8]
	test	bl, 0x40
	jne	.label_1826
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x60], rcx
.label_1826:
	test	bl, bl
	jns	.label_1767
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x60], rcx
	nop	dword ptr [rax + rax]
.label_1767:
	shr	edx, 8
	mov	ecx, edx
	and	ecx, 0x3ff
	je	.label_1786
	test	dl, 0x20
	je	.label_1832
	mov	rcx, qword ptr [rbp - 0x60]
	test	ch, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	je	.label_1782
	mov	qword ptr [rbp - 0x60], 0x400
.label_1832:
	test	dl, dl
	js	.label_1790
	lea	rcx, [rdi + rsi + 8]
	test	dl, 4
	je	.label_1807
	cmp	eax, 1
	jne	.label_1846
	test	byte ptr [rcx + 2], 0x40
	je	.label_1790
.label_1846:
	mov	r9, r8
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_1773
	mov	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x78]
	movdqu	xmm0, xmmword ptr [rdi + 0xb8]
	movdqu	xmm1, xmmword ptr [rsi]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rbx, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rsi + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, r8
	or	rdi, rbx
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rsi, xmm0
	or	rsi, rdi
	jmp	.label_1853
.label_1773:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	r8, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdi, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movq	rbx, xmm0
	or	rbx, r8
	or	rbx, rdi
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rsi, xmm0
	or	rsi, rbx
.label_1853:
	test	rsi, rsi
	mov	r8, r9
	je	.label_1782
.label_1807:
	test	dl, 8
	je	.label_1786
	cmp	eax, 1
	jne	.label_1848
	test	byte ptr [rcx + 2], 0x40
	jne	.label_1790
.label_1848:
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_1861
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rcx]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	rdx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	mov	rdi, rsi
	movq	rsi, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, rdx
	or	rdi, rsi
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rcx, xmm0
	or	rcx, rdi
	jmp	.label_1796
	nop	dword ptr [rax]
.label_1790:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	jmp	.label_1782
.label_1861:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movq	rsi, xmm0
	or	rsi, rcx
	or	rsi, rdx
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	or	rcx, rsi
.label_1796:
	test	rcx, rcx
	je	.label_1782
	nop	word ptr [rax + rax]
.label_1786:
	test	r15, r15
	mov	qword ptr [rbp - 0x90], r14
	jle	.label_1813
	cmp	eax, 1
	jne	.label_1839
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rsi, r12
	xor	edi, edi
	mov	qword ptr [rbp - 0xc8], r8
	jmp	.label_1819
.label_1813:
	xor	edi, edi
	jmp	.label_1784
.label_1839:
	mov	r9, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x50]
	mov	r14, qword ptr [rbp - 0x48]
	mov	rbx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x38], r12
	xor	edi, edi
	jmp	.label_1775
.label_1750:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	mov	r9, r14
	jmp	.label_1747
.label_1834:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xb0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	jmp	.label_1747
.label_1775:
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdx, qword ptr [rbx - 0x18]
	mov	rax, qword ptr [rbx - 0x10]
	mov	rdi, rdx
	and	rdi, r9
	mov	r8, rax
	and	r8, rsi
	mov	rcx, r8
	mov	qword ptr [rbp - 0xb0], rdi
	or	rcx, rdi
	mov	r10, qword ptr [rbx - 8]
	mov	r15, r10
	and	r15, r11
	or	rcx, r15
	mov	qword ptr [rbp - 0x88], rbx
	mov	rdi, qword ptr [rbx]
	mov	r12, r11
	mov	r11, rdi
	and	r11, r14
	mov	r13d, 0x13
	or	rcx, r11
	je	.label_1754
	mov	rcx, r9
	not	rcx
	and	rcx, rdx
	not	rdx
	and	r9, rdx
	mov	qword ptr [rbp - 0xa0], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	rbx, rsi
	not	rbx
	and	rbx, rax
	mov	rdx, rbx
	or	rdx, rcx
	not	rax
	and	rsi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rax, r12
	not	rax
	and	rax, r10
	or	rdx, rax
	not	r10
	and	r12, r10
	mov	qword ptr [rbp - 0xb8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r14
	not	rsi
	and	rsi, rdi
	not	rdi
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	r12, r14
	je	.label_1781
	mov	r10, qword ptr [rbp - 0x30]
	mov	rdx, r10
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], rbx
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx - 0x18], rax
	mov	qword ptr [rbx - 0x10], r8
	mov	qword ptr [rbx - 8], r15
	mov	qword ptr [rbx], r11
	lea	r14, [r10 + r10*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r14*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r14*8 + 8], rdi
	mov	r15, qword ptr [rax + 8]
	test	r15, r15
	jle	.label_1811
	mov	qword ptr [rbp - 0xb0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r14*8 + 0x10], rax
	test	rax, rax
	je	.label_1834
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rcx + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1840
	nop	word ptr cs:[rax + rax]
.label_1754:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
	mov	r11, r12
	mov	r12, r14
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_1747
	nop	word ptr [rax + rax]
.label_1781:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_1854
.label_1811:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_1840:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	inc	r15
	mov	rax, qword ptr [rbp - 0xc0]
.label_1854:
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	je	.label_1750
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rax, rsi
	mov	r9, r14
	or	rax, r9
	mov	r11, qword ptr [rbp - 0xb8]
	mov	rcx, r11
	or	rcx, r12
	or	rcx, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
	mov	rdi, qword ptr [rbp - 0x68]
.label_1747:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_1769
	cmp	al, 0x13
	jne	.label_1771
.label_1769:
	mov	r14, r12
	inc	rdi
	add	qword ptr [rbp - 0x38], 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_1775
	jmp	.label_1784
.label_1761:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xa0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_1785
	nop	word ptr cs:[rax + rax]
.label_1819:
	movzx	eax, byte ptr [r8]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rbx + rcx*8]
	mov	r13d, 0x13
	bt	rdx, rax
	jae	.label_1785
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x30], r15
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	rax, r9
	and	rax, rdx
	mov	rsi, rcx
	and	rsi, r11
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xb0], rax
	or	rsi, rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r12, qword ptr [rbx + 0x10]
	mov	r15, r12
	mov	qword ptr [rbp - 0x88], rax
	and	r15, rax
	or	rsi, r15
	mov	rax, qword ptr [rbp - 0x48]
	mov	r14, qword ptr [rbx + 0x18]
	mov	r10, r14
	and	r10, rax
	or	rsi, r10
	je	.label_1765
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsi, rcx
	mov	rcx, rdx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdx
	mov	qword ptr [rbp - 0xb8], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	r8, r11
	not	r8
	and	r8, rsi
	mov	rdx, r8
	or	rdx, rcx
	not	rsi
	and	rsi, r11
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, rsi
	not	rax
	and	rax, r12
	or	rdx, rax
	not	r12
	and	r12, rsi
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, rdi
	not	rsi
	and	rsi, r14
	not	r14
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	qword ptr [rbp - 0x88], r14
	je	.label_1749
	mov	r11, qword ptr [rbp - 0x30]
	mov	rdx, r11
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], r8
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r15
	mov	qword ptr [rbx + 0x18], r10
	lea	r15, [r11 + r11*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r15*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r15*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_1814
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r15*8 + 0x10], rax
	test	rax, rax
	mov	r14, qword ptr [rbp - 0x90]
	je	.label_1761
	mov	r15, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	inc	qword ptr [rbp - 0x30]
	jmp	.label_1780
	nop	dword ptr [rax]
.label_1765:
	mov	r15, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_1785
.label_1814:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	inc	r11
	mov	qword ptr [rbp - 0x30], r11
.label_1749:
	mov	r14, qword ptr [rbp - 0x90]
	mov	r15, qword ptr [rbp - 0x38]
.label_1780:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rdi, r15
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	mov	rsi, r15
	je	.label_1800
	mov	rax, qword ptr [rbp - 0x98]
	or	rax, qword ptr [rbp - 0xb8]
	or	r12, qword ptr [rbp - 0x88]
	or	r12, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
.label_1800:
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
.label_1785:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_1816
	cmp	al, 0x13
	jne	.label_1771
.label_1816:
	inc	rdi
	add	rsi, 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_1819
	jmp	.label_1784
.label_1771:
	cmp	al, 0x11
	jne	.label_1825
	nop	
.label_1784:
	cmp	rdi, r15
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0x90]
	jne	.label_1782
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmm1, xmmword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	lea	r15, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r14*8]
	movdqa	xmm0, xmmword ptr [rip + label_567]
	movdqu	xmmword ptr [r12 + r15*8], xmm0
	mov	rbx, rdi
	mov	edi, 8
	call	malloc
	mov	qword ptr [r12 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1842
	mov	qword ptr [rax], r14
	inc	rbx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	r15, rbx
	jmp	.label_1847
.label_1825:
	and	r13b, 0x1f
	jne	.label_1852
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
.label_1847:
	mov	r14, qword ptr [rbp - 0x90]
.label_1782:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_1831
	test	r15, r15
	jle	.label_1860
.label_1815:
	lea	rax, [r15 + 1]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1745
	xor	ecx, ecx
.label_1745:
	mov	dword ptr [rbp - 0x74], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	ja	.label_1751
	test	rax, rax
	je	.label_1751
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1757
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xb8], 0
	jmp	.label_1768
.label_1757:
	call	malloc
	mov	rsi, qword ptr [rbp - 0x70]
	test	rax, rax
	je	.label_1751
	mov	cl, 1
	mov	dword ptr [rbp - 0xb8], ecx
.label_1768:
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0xb0], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	lea	rbx, [rbp - 0x60]
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	nop	dword ptr [rax + rax]
.label_1759:
	mov	qword ptr [rbp - 0x58], 0
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	test	rax, rax
	jle	.label_1806
	mov	rdx, qword ptr [rbp - 0x80]
	lea	r14, [rdx + rcx*8 + 8]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1830:
	mov	rcx, qword ptr [r14 + 8]
	mov	rcx, qword ptr [rcx + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_1798
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x74], eax
	test	eax, eax
	jne	.label_594
	mov	rax, qword ptr [r14]
	mov	rsi, qword ptr [rbp - 0x70]
.label_1798:
	inc	r12
	cmp	r12, rax
	jl	.label_1830
.label_1806:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x74]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_1833
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_594
.label_1833:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1836
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + r13*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	jmp	.label_833
	nop	word ptr cs:[rax + rax]
.label_1836:
	mov	ecx, 1
	lea	rdi, [rbp - 0x74]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_744
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_594
.label_744:
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + r13*8], rax
	je	.label_663
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	al, 1
	jg	.label_758
	mov	rax, qword ptr [rbp - 0x98]
.label_758:
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_761
.label_663:
	mov	rdx, qword ptr [rbp - 0x70]
.label_761:
	mov	ecx, 2
	lea	rdi, [rbp - 0x74]
	mov	rsi, rdx
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_833
	mov	eax, dword ptr [rbp - 0x74]
	test	eax, eax
	jne	.label_594
	nop	dword ptr [rax]
.label_833:
	mov	rax, r13
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x68]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x68], rdx
	or	r15, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0x88], rdx
	inc	r13
	cmp	r13, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	jl	.label_1759
	mov	rax, qword ptr [rbp - 0x98]
	and	al, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	edi, 8
	jne	.label_1791
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_594
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_1803
	lea	r8, [rdi - 8]
	mov	r10d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1810
.label_1852:
	cmp	r13b, 0x1a
	mov	r12, qword ptr [rbp - 0x80]
	jne	.label_1815
.label_1844:
	mov	r14, -1
	test	r15, r15
	jle	.label_1818
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1828:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1828
.label_1818:
	mov	r15, r14
.label_1860:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_1764
	xor	eax, eax
	jmp	.label_1763
.label_1764:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_1763
.label_1850:
	mov	rbx, r9
	mov	rcx, r8
.label_1837:
	add	rcx, 8
	test	qword ptr [rbx], r10
	lea	rbx, [rbx + 0x20]
	je	.label_1837
	mov	rbx, qword ptr [rbp - 0x70]
	test	qword ptr [rbx + 0xb8], r10
	je	.label_1843
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	jmp	.label_1845
.label_1843:
	mov	rcx, qword ptr [rcx]
.label_1845:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_1762
	nop	
.label_1810:
	test	dl, 1
	jne	.label_1850
.label_1762:
	add	r10, r10
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_1810
.label_1803:
	test	r15, r15
	mov	r11, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_1855
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_1827
.label_1744:
	mov	rdx, r10
	mov	rcx, r8
.label_1741:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1741
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_1766
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	jmp	.label_1746
.label_1766:
	mov	rcx, qword ptr [rcx]
.label_1746:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_1752
.label_1827:
	test	r15b, 1
	jne	.label_1744
.label_1752:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_1827
.label_1855:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x30]
	je	.label_1755
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_1758
.label_1789:
	mov	rdx, r10
	mov	rcx, r8
.label_1777:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1777
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_1799
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_1779
.label_1799:
	mov	rcx, qword ptr [rcx]
.label_1779:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_1783
	nop	word ptr cs:[rax + rax]
.label_1758:
	test	r12b, 1
	jne	.label_1789
.label_1783:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_1758
.label_1755:
	test	r11, r11
	je	.label_1794
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_1797
.label_1812:
	mov	rdx, r10
	mov	rcx, r8
.label_1801:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1801
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_1804
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_1822
.label_1804:
	mov	rcx, qword ptr [rcx]
.label_1822:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_1808
	nop	
.label_1797:
	test	r11b, 1
	jne	.label_1812
.label_1808:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_1797
.label_1794:
	mov	rcx, qword ptr [rbp - 0x68]
	test	ch, 4
	je	.label_1776
	xor	ecx, ecx
	nop	
.label_1820:
	test	byte ptr [r9 + 1], 4
	jne	.label_1862
	inc	rcx
	add	r9, 0x20
	cmp	rcx, r15
	jl	.label_1820
	jmp	.label_1776
.label_1862:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x98]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_1776
	mov	qword ptr [rax + 0x850], rcx
.label_1776:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_1829
	call	free
.label_1829:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1823:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1823
	mov	rdi, r14
	call	free
	mov	al, 1
.label_1763:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1842:
	lea	rax, [r12 + r15*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r15, rbx
	jmp	.label_1844
.label_1751:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	jmp	.label_1851
.label_1856:
	xor	eax, eax
	jmp	.label_1763
.label_1791:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_594
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_1859
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1788
.label_594:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_1742
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1742:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r15, qword ptr [rbp - 0x30]
	test	r15, r15
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_1753
.label_1851:
	mov	rbx, r12
	add	rbx, 0x10
	nop	
.label_1756:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1756
.label_1753:
	mov	rdi, r12
	call	free
	xor	eax, eax
	jmp	.label_1763
.label_1787:
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, r8
.label_1770:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_1770
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	jmp	.label_1774
.label_1788:
	test	dl, 1
	jne	.label_1787
.label_1774:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_1788
.label_1859:
	test	r15, r15
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_1792
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_1793
.label_1817:
	mov	rdx, r9
	mov	rcx, r8
.label_1802:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1802
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	jmp	.label_1849
.label_1793:
	test	r15b, 1
	jne	.label_1817
.label_1849:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_1793
.label_1792:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0xa8]
	je	.label_1821
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_1824
.label_1838:
	mov	r11, rdx
	mov	rdx, r10
	mov	rcx, r8
.label_1748:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1748
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, r11
	jmp	.label_1772
.label_1824:
	test	dl, 1
	jne	.label_1838
.label_1772:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_1824
.label_1821:
	test	rcx, rcx
	je	.label_1794
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_1743
.label_1760:
	mov	r11, rcx
	mov	rdx, r10
	mov	rcx, r8
.label_1857:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1857
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r11
	jmp	.label_1858
.label_1743:
	test	cl, 1
	jne	.label_1760
.label_1858:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_1743
	jmp	.label_1794
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411230

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1875
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1864
	cmp	rsi, rcx
	jne	.label_1867
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1871
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1874
.label_1875:
	movaps	xmm0, xmmword ptr [rip + label_567]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1868
	mov	qword ptr [rax], rbx
	jmp	.label_1876
.label_1864:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1870
.label_1867:
	mov	rax, qword ptr [r14 + 0x10]
.label_1874:
	cmp	qword ptr [rax], rbx
	jle	.label_1872
	test	rcx, rcx
	jle	.label_1865
	nop	word ptr cs:[rax + rax]
.label_1863:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1863
	jmp	.label_1865
.label_1872:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1869
	nop	dword ptr [rax]
.label_1873:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1869:
	cmp	rdx, rbx
	jg	.label_1873
.label_1865:
	mov	qword ptr [rax + rcx*8], rbx
.label_1870:
	inc	qword ptr [r14 + 8]
.label_1876:
	mov	al, 1
.label_1866:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1868:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1871:
	xor	eax, eax
	jmp	.label_1866
	nop	
.label_836:
	call	abort
	nop	dword ptr [rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_836
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
	.align	32
	#Procedure 0x411380

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
	jmp	.label_1915
	nop	
.label_1920:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_1907
	or	al, dl
	jne	.label_1907
	test	dil, 1
	jne	.label_1910
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1907
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_1915
	jmp	.label_1907
.label_2491:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_1923
	test	rbp, rbp
	je	.label_1991
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_1991:
	mov	r14d, 1
	jmp	.label_1929
.label_2492:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1926
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_1930
.label_1923:
	xor	r14d, r14d
.label_1929:
	mov	eax, OFFSET FLAT:label_1926
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_1927
	nop	
.label_1915:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1946
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_1951]
.label_2493:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_1957
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_1892
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_2494:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_1969
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1969
	xor	r14d, r14d
	nop	
.label_1986:
	cmp	r14, rbp
	jae	.label_1976
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_1976:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1986
.label_1969:
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
	jmp	.label_1930
.label_2486:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1930
.label_2489:
	mov	al, 1
.label_2487:
	mov	r12b, 1
.label_2490:
	test	r12b, 1
	mov	cl, 1
	je	.label_1998
	mov	ecx, eax
.label_1998:
	mov	al, cl
.label_2488:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_2000
	test	rbp, rbp
	je	.label_1883
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_1883:
	mov	r14d, 1
	jmp	.label_1887
.label_2000:
	xor	r14d, r14d
.label_1887:
	mov	ecx, OFFSET FLAT:label_1892
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_1927:
	mov	sil, r12b
.label_1930:
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
	jmp	.label_1900
	nop	word ptr cs:[rax + rax]
.label_1902:
	inc	r12
.label_1900:
	cmp	r11, -1
	je	.label_1935
	cmp	r12, r11
	jne	.label_1937
	jmp	.label_1939
	nop	word ptr cs:[rax + rax]
.label_1935:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_1981
.label_1937:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_1947
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_1950
	cmp	r11, -1
	jne	.label_1950
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1950:
	cmp	rbx, r11
	jbe	.label_1961
.label_1947:
	xor	esi, esi
.label_701:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_1962
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1966]
.label_2518:
	test	r12, r12
	jne	.label_1912
	jmp	.label_1971
	nop	word ptr cs:[rax + rax]
.label_1961:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_872
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_701
	jmp	.label_878
.label_872:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_701
.label_2522:
	xor	eax, eax
	cmp	r11, -1
	je	.label_1993
	test	r12, r12
	jne	.label_1970
	cmp	r11, 1
	je	.label_1971
	xor	r13d, r13d
	jmp	.label_1906
.label_2511:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1878
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_878
	cmp	r8d, 2
	jne	.label_1890
	mov	eax, r9d
	and	al, 1
	jne	.label_1890
	cmp	r14, rbp
	jae	.label_1894
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1894:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1896
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1896:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1903
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1903:
	add	r14, 3
	mov	r9b, 1
.label_1890:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_1908
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_1908:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_1893
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_1893
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1893
	cmp	r14, rbp
	jae	.label_1922
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_1922:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_1891
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_1891:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1906
.label_2512:
	mov	bl, 0x62
	jmp	.label_1936
.label_2513:
	mov	cl, 0x74
	jmp	.label_1931
.label_2514:
	mov	bl, 0x76
	jmp	.label_1936
.label_2515:
	mov	bl, 0x66
	jmp	.label_1936
.label_2516:
	mov	cl, 0x72
	jmp	.label_1931
.label_2519:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_1944
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1895
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
	jae	.label_1952
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1952:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1963
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_1963:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1968
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1968:
	add	r14, 3
	xor	r9d, r9d
.label_1944:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1906
.label_2520:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_1972
	cmp	r8d, 2
	jne	.label_1912
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1912
	jmp	.label_1895
.label_2521:
	cmp	r8d, 2
	jne	.label_1983
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1895
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_1989
.label_1962:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_1990
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_1994
.label_1993:
	test	r12, r12
	jne	.label_1888
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_1888
.label_1971:
	mov	dl, 1
.label_2517:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_1895
	xor	eax, eax
	mov	r13b, dl
.label_1906:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_1901
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_1904
	jmp	.label_1905
	nop	word ptr cs:[rax + rax]
.label_1901:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_1905
.label_1904:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1911
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_1916
	nop	dword ptr [rax]
.label_1905:
	test	sil, sil
.label_1916:
	mov	ebx, r15d
	je	.label_1921
	jmp	.label_1925
.label_1911:
	mov	ebx, r15d
	jmp	.label_1925
.label_1878:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_1902
	xor	r15d, r15d
	jmp	.label_1912
.label_1983:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_1931
	xor	eax, eax
	mov	r15b, 0x5c
.label_1989:
	xor	r13d, r13d
	jmp	.label_1921
.label_1931:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_1895
.label_1936:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_1906
	nop	
.label_1925:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_878
	cmp	r8d, 2
	jne	.label_1945
	mov	eax, r9d
	and	al, 1
	jne	.label_1945
	cmp	r14, rbp
	jae	.label_1949
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1949:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1886
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1886:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1943
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1943:
	add	r14, 3
	mov	r9b, 1
.label_1945:
	cmp	r14, rbp
	jae	.label_1974
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1974:
	inc	r14
	jmp	.label_1965
.label_1990:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_1967
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1967:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_1934
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_1909:
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
	je	.label_1984
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_1995
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1889
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_1881
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_1955:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1919
	bt	rsi, rdx
	jb	.label_1895
.label_1919:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_1955
.label_1881:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_1954
	xor	r13d, r13d
.label_1954:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1909
	jmp	.label_1917
.label_1893:
	xor	r13d, r13d
	jmp	.label_1906
.label_1888:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_1906
.label_1972:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_1912
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_1912
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_1912
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1933
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1953
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1941
	cmp	r14, rbp
	jae	.label_1942
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_1942:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1948
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1948:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1980
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1980:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_1988
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_1988:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_1953:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_1906
.label_1912:
	xor	eax, eax
.label_1970:
	xor	r13d, r13d
	jmp	.label_1906
.label_1934:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1992:
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
	je	.label_1978
	cmp	rbp, -1
	je	.label_1982
	cmp	rbp, -2
	je	.label_1984
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_1987
	xor	r13d, r13d
.label_1987:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1992
	jmp	.label_1917
.label_1984:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_1880
	lea	rax, [r10 + r12]
.label_1879:
	cmp	byte ptr [rax + rsi], 0
	je	.label_1880
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_1879
.label_1880:
	mov	qword ptr [rsp + 0x40], rsi
.label_1995:
	xor	r13d, r13d
	jmp	.label_1889
.label_1982:
	xor	r13d, r13d
.label_1978:
	mov	r10, qword ptr [rsp + 0x28]
.label_1889:
	mov	r12, qword ptr [rsp + 0x40]
.label_1917:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_1994:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_1899
	test	al, al
	je	.label_1899
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1906
.label_1899:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1914
	nop	word ptr [rax + rax]
.label_1979:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_1914:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_1924
	test	sil, 1
	je	.label_1932
	cmp	r14, rbp
	jae	.label_1928
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_1928:
	inc	r14
	xor	esi, esi
	jmp	.label_1932
	nop	word ptr cs:[rax + rax]
.label_1924:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_878
	cmp	r8d, 2
	jne	.label_1938
	mov	eax, r9d
	and	al, 1
	jne	.label_1938
	cmp	r14, rbp
	jae	.label_1940
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1940:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1996
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_1996:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1884
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_1884:
	add	r14, 3
	mov	r9b, 1
.label_1938:
	cmp	r14, rbp
	jae	.label_1956
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1956:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1959
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1959:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1964
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1964:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1932:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_1921
	test	r9b, 1
	je	.label_1973
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_1918
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_1977
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_1977:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_1985
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_1985:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_1973
	nop	word ptr cs:[rax + rax]
.label_1918:
	mov	rbx, rcx
.label_1973:
	cmp	r14, rbp
	jae	.label_1979
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_1979
	nop	
.label_1921:
	test	r9b, 1
	je	.label_1877
	and	al, 1
	jne	.label_1877
	cmp	r14, rbp
	jae	.label_1882
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1882:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1999
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1999:
	add	r14, 2
	xor	r9d, r9d
.label_1877:
	mov	ebx, r15d
.label_1965:
	cmp	r14, rbp
	jae	.label_1897
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_1897:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_1902
.label_1933:
	xor	r13d, r13d
	jmp	.label_1906
	nop	word ptr cs:[rax + rax]
.label_1939:
	mov	rcx, r12
.label_1981:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1920
	or	al, dl
	jne	.label_1920
	mov	r11, rcx
	jmp	.label_878
.label_1895:
	mov	eax, 2
.label_1997:
	mov	qword ptr [rsp + 0x38], rax
.label_878:
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
.label_1885:
	mov	r14, rax
.label_1975:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1907:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_1898
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_1913
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1913
	inc	rdx
	nop	dword ptr [rax + rax]
.label_1960:
	cmp	r14, rbp
	jae	.label_1958
	mov	byte ptr [rcx + r14], al
.label_1958:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1960
	jmp	.label_1913
.label_1910:
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
	jmp	.label_1885
.label_1898:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1913:
	cmp	r14, rbp
	jae	.label_1975
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1975
.label_1941:
	mov	eax, 5
	jmp	.label_1997
.label_1946:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4121b0

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_2006
	nop	dword ptr [rax]
.label_616:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2006:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2007
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2002
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2001:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2001
.label_2002:
	cmp	rdx, -1
	je	.label_2007
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2003
.label_2007:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2005
	cmp	qword ptr [rax + rcx], r14
	je	.label_2004
.label_2005:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_715
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2008
	test	rcx, rcx
	jne	.label_616
	jmp	.label_2003
	nop	dword ptr [rax]
.label_2004:
	cmp	r15d, 9
	jne	.label_2003
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_715
.label_2003:
	xor	eax, eax
.label_715:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
.label_2008:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_715
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_616
	.section	.text
	.align	32
	#Procedure 0x4122d0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r12, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_2048
	mov	r15d, ecx
	add	r15, r8
	test	r8, r8
	jle	.label_2049
	mov	rbx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_2065
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_2058
	movq	xmm0, r15
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2060
	pxor	xmm1, xmm1
	jmp	.label_2062
.label_2048:
	mov	dword ptr [r12], 0
.label_2026:
	xor	r13d, r13d
	jmp	.label_2010
.label_2058:
	xor	r9d, r9d
	jmp	.label_2065
.label_2060:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2037:
	movdqu	xmm2, xmmword ptr [rbx + rdi*8]
	movdqu	xmm3, xmmword ptr [rbx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rbx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rbx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2037
.label_2062:
	test	rsi, rsi
	je	.label_2039
	lea	rdi, [rbx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2084:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2084
.label_2039:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, r9
	je	.label_2049
.label_2065:
	mov	rsi, r8
	sub	rsi, r9
	lea	rax, [rbx + r9*8]
	nop	dword ptr [rax + rax]
.label_2014:
	add	r15, qword ptr [rax]
	add	rax, 8
	dec	rsi
	jne	.label_2014
.label_2049:
	mov	rsi, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x88]
	and	rax, r15
	lea	rax, [rax + rax*2]
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	jle	.label_2043
	test	rdx, rdx
	je	.label_2023
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_2042:
	mov	r13, qword ptr [r10 + rsi*8]
	cmp	qword ptr [r13], r15
	jne	.label_2028
	movzx	eax, byte ptr [r13 + 0x68]
	and	eax, 0xf
	cmp	eax, ecx
	jne	.label_2028
	mov	rdi, qword ptr [r13 + 0x50]
	test	rdi, rdi
	je	.label_2028
	cmp	qword ptr [rdi + 8], r8
	jne	.label_2028
	mov	rax, r8
	nop	dword ptr [rax + rax]
.label_2035:
	test	rax, rax
	jle	.label_2010
	mov	rbp, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	mov	rbx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rbx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_2035
	nop	word ptr cs:[rax + rax]
.label_2028:
	inc	rsi
	cmp	rsi, r9
	jl	.label_2042
	jmp	.label_2043
.label_2023:
	lea	rsi, [r9 - 1]
	mov	eax, r9d
	and	eax, 7
	cmp	rsi, 7
	jb	.label_2040
	mov	rsi, rax
	sub	rsi, r9
.label_2047:
	add	rsi, 8
	jne	.label_2047
.label_2040:
	test	rax, rax
	je	.label_2043
	neg	rax
	nop	
.label_2075:
	inc	rax
	jne	.label_2075
.label_2043:
	mov	qword ptr [rsp], rdx
	mov	ebx, ecx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2029
	mov	qword ptr [rsp + 0x10], r14
	mov	r10, r13
	add	r10, 8
	mov	rsi, qword ptr [rsp]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	r14, qword ptr [rsi + 8]
	test	r14, r14
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], r12
	jle	.label_2081
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2066
	mov	rbp, qword ptr [rsp]
	mov	rsi, qword ptr [rbp + 0x10]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	rsi, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_2069
.label_2081:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
.label_2069:
	mov	al, byte ptr [r13 + 0x68]
	mov	r9d, ebx
	mov	ecx, r9d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r13 + 0x68], al
	mov	qword ptr [r13 + 0x50], r10
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2036
	mov	ecx, r9d
	mov	eax, r9d
	and	eax, 2
	and	r9d, 4
	test	cl, 1
	mov	dword ptr [rsp + 0xc], r9d
	jne	.label_2079
	xor	ebp, ebp
	xor	r8d, r8d
	test	eax, eax
	jne	.label_2051
	nop	word ptr cs:[rax + rax]
.label_2068:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2089
	test	ecx, ecx
	je	.label_2013
.label_2089:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2052
	cmp	dl, 4
	jne	.label_2021
	or	bl, 0x40
	jmp	.label_2009
.label_2052:
	or	bl, 0x10
.label_2009:
	mov	byte ptr [r13 + 0x68], bl
.label_2021:
	test	ecx, ecx
	je	.label_2025
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2027
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2016
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2053
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2018
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2041
.label_2025:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2013
.label_2053:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2041:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2027:
	test	r12b, 0x11
	mov	rsi, qword ptr [rsp]
	jne	.label_2050
	test	r9d, r9d
	jne	.label_2013
	and	r12d, 0x40
	je	.label_2013
.label_2050:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2056
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2056
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2056
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2064:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2064
	nop	word ptr [rax + rax]
.label_2056:
	inc	r8
.label_2013:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2068
	jmp	.label_2036
	nop	word ptr cs:[rax + rax]
.label_2051:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2020
	test	ecx, ecx
	je	.label_2024
.label_2020:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2078
	cmp	dl, 4
	jne	.label_2082
	or	bl, 0x40
	jmp	.label_2083
.label_2078:
	or	bl, 0x10
.label_2083:
	mov	byte ptr [r13 + 0x68], bl
.label_2082:
	test	ecx, ecx
	je	.label_2086
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2087
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2016
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2011
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2018
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2032
.label_2086:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2024
.label_2011:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2032:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2087:
	test	r12b, 1
	mov	rsi, qword ptr [rsp]
	jne	.label_2031
	test	r9d, r9d
	jne	.label_2024
	and	r12d, 0x40
	je	.label_2024
.label_2031:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2034
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2034
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2034
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2044:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2044
	nop	word ptr [rax + rax]
.label_2034:
	inc	r8
.label_2024:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2051
	jmp	.label_2036
.label_2079:
	test	eax, eax
	jne	.label_2055
	xor	ebp, ebp
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_2033:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2061
	test	ecx, ecx
	je	.label_2017
.label_2061:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2067
	cmp	dl, 4
	jne	.label_2070
	or	bl, 0x40
	jmp	.label_2072
.label_2067:
	or	bl, 0x10
.label_2072:
	mov	byte ptr [r13 + 0x68], bl
.label_2070:
	test	ecx, ecx
	je	.label_2073
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2074
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2016
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2077
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2018
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2088
.label_2073:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2017
.label_2077:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2088:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2074:
	test	r12b, 0x12
	mov	rsi, qword ptr [rsp]
	jne	.label_2015
	test	r9d, r9d
	jne	.label_2017
	and	r12d, 0x40
	je	.label_2017
.label_2015:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2019
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2019
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2019
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2030:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2030
	nop	word ptr [rax + rax]
.label_2019:
	inc	r8
.label_2017:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2033
	jmp	.label_2036
.label_2055:
	xor	r12d, r12d
	xor	r8d, r8d
	nop	dword ptr [rax + rax]
.label_2012:
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rdx + r12*8]
	shl	rdx, 4
	mov	edx, dword ptr [rcx + rdx + 8]
	mov	ebp, edx
	shr	ebp, 8
	mov	ecx, ebp
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2038
	test	ecx, ecx
	je	.label_2045
.label_2038:
	mov	esi, edx
	shr	esi, 0x14
	mov	al, byte ptr [r13 + 0x68]
	mov	ebx, eax
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, esi
	shl	bl, 5
	and	bl, 0x20
	and	al, 0xdf
	or	al, bl
	mov	byte ptr [r13 + 0x68], al
	cmp	dl, 4
	je	.label_2046
	cmp	dl, 2
	jne	.label_2054
	or	al, 0x10
	jmp	.label_2057
.label_2046:
	or	al, 0x40
.label_2057:
	mov	byte ptr [r13 + 0x68], al
.label_2054:
	test	ecx, ecx
	je	.label_2059
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2090
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2016
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2063
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2018
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2071
.label_2059:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2045
.label_2063:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2071:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2090:
	test	bpl, 2
	mov	rsi, qword ptr [rsp]
	jne	.label_2076
	test	r9d, r9d
	jne	.label_2045
	and	ebp, 0x40
	je	.label_2045
.label_2076:
	mov	rcx, r12
	sub	rcx, r8
	js	.label_2080
	mov	rdx, qword ptr [r13 + 0x10]
	cmp	rdx, rcx
	jle	.label_2080
	dec	rdx
	mov	qword ptr [r13 + 0x10], rdx
	cmp	rdx, rcx
	jle	.label_2080
	lea	rcx, [r12*8]
	add	rcx, qword ptr [r13 + 0x18]
	mov	rdx, r8
	neg	rdx
.label_2085:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rax, [r12 + rdx + 1]
	inc	rdx
	cmp	rax, qword ptr [r13 + 0x10]
	jl	.label_2085
	nop	word ptr [rax + rax]
.label_2080:
	inc	r8
.label_2045:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_2012
.label_2036:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_2016
.label_2010:
	mov	rax, r13
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2016:
	mov	rdi, r13
	call	free_state
	jmp	.label_2022
.label_2018:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
.label_2022:
	mov	r12, qword ptr [rsp + 0x20]
.label_2029:
	mov	dword ptr [r12], 0xc
	jmp	.label_2026
.label_2066:
	mov	rdi, r13
	call	free
	jmp	.label_2029
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c80

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_2091
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_2109:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_2109
.label_2091:
	cmp	r11, r9
	jge	.label_2111
	cmp	r11, -1
	je	.label_2111
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2111
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_2101
.label_2108:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_2101:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2098:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_2094
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_2116
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2092:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2092
.label_2116:
	cmp	rax, -1
	je	.label_2094
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_2094
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2104
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2110
	xor	edx, edx
.label_2117:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2117
.label_2110:
	cmp	rdx, -1
	je	.label_2122
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_2095
.label_2122:
	movaps	xmm0, xmmword ptr [rip + label_567]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2103
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_2102:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_2095
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2095
.label_2104:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_2105
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_2113
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_2115
	xor	edx, edx
	nop	
.label_2120:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_2120
.label_2115:
	cmp	rdx, -1
	je	.label_2097
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2095
.label_2097:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_2099
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2107
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2100
.label_2105:
	movaps	xmm0, xmmword ptr [rip + label_567]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2121
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_2093
.label_2113:
	mov	qword ptr [rsp + 0x18], r8
.label_2099:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_2100:
	xor	ebx, ebx
.label_2114:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2118
	xor	al, 1
	jne	.label_2118
.label_2093:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_2106
	mov	eax, dword ptr [rsp + 0xc]
.label_2106:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_2119
.label_2103:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_2102
.label_2118:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2112
.label_2121:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_2112:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_2095:
	mov	r14, qword ptr [rsp + 0x28]
.label_2119:
	test	ecx, ecx
	je	.label_2094
	cmp	ecx, 4
	jne	.label_2096
.label_2094:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2098
	jmp	.label_2111
.label_2107:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_2114
.label_2096:
	cmp	ecx, 2
	je	.label_2108
	mov	eax, dword ptr [rsp + 0xc]
.label_2111:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_632
	test	rdx, rdx
	je	.label_632
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_632:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413110

	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_2126
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_2128:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_2123
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_2125:
	cmp	rbx, r12
	jne	.label_2127
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_2127:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_2128
	jmp	.label_2124
.label_2123:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_2125
	cmp	rbx, r15
	mov	eax, 0
	je	.label_2126
	test	byte ptr [r13], 0x20
	jne	.label_2126
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_2125
.label_2124:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_2126:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4131d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2129
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2129
	test	byte ptr [rbx + 1], 1
	je	.label_2129
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2129:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
.label_2131:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413228

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2131
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2130
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2131
.label_2130:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2131
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2132
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2132:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413290

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_2135
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_2139
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_2139
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_2138
.label_2139:
	test	dl, 1
	je	.label_2133
	cmp	al, 0x5c
	jne	.label_2133
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_2133
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_2138
.label_2135:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_2133:
	cmp	al, 0x5c
	jg	.label_2141
	cmp	al, 0x2d
	je	.label_2142
	cmp	al, 0x5b
	jne	.label_2138
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_2143
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_2134
	cmp	al, 0x3a
	je	.label_2136
	cmp	al, 0x2e
	jne	.label_2137
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_2141:
	cmp	al, 0x5d
	je	.label_2140
	cmp	al, 0x5e
	jne	.label_2138
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_2138:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_2142:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_2140:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_2143:
	mov	byte ptr [rdi], 0
.label_2137:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_2134:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_2136:
	test	dl, 4
	je	.label_2137
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413380

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_2294
.label_2203:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_2200
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_2148:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_2148
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_2181
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_2181
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_2181
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_2181
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_2181
	or	byte ptr [r12 + 0xb0], 4
.label_2181:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_2188
	test	al, 4
	jne	.label_2195
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_2200
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2217:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_2208
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_2208:
	cmp	ebp, 0x7f
	ja	.label_2213
	cmp	ebp, eax
	je	.label_2213
	or	byte ptr [r12 + 0xb0], 8
.label_2213:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2217
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2232:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_2227
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_2227:
	cmp	ebx, eax
	je	.label_2288
	or	byte ptr [r12 + 0xb0], 8
.label_2288:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2232
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2244:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_2239
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_2239:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2244
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2251:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_2247
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_2247:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2251
	jmp	.label_2188
.label_2195:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_2188:
	cmp	qword ptr [r12], 0
	je	.label_2200
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_2200
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_2256
	cmp	edx, 2
	jl	.label_2292
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_2160
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_2160
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_2292:
	xor	eax, eax
	test	bpl, bpl
	mov	edx, 0
	je	.label_2298
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_2160
	mov	qword ptr [rsp + 0x50], rax
	mov	dl, bpl
	mov	r12, qword ptr [rsp + 0x18]
.label_2298:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	mov	ebp, edx
	jmp	.label_2305
.label_2200:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_2146
.label_2256:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_2305:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_2153
	cmp	ecx, 2
	jl	.label_2156
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2160
	lea	rbx, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_2192:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_2201
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_2201
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_2168
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_2160
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_2160
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_2168
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2160
	mov	qword ptr [rsp + 0x60], rax
.label_2168:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2185
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_2160
	mov	qword ptr [rsp + 0x50], rax
.label_2185:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_2192
.label_2160:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_2194
.label_2153:
	cmp	ecx, 2
	jl	.label_2197
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_2201
.label_2156:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_2202
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_2211
	nop	dword ptr [rax]
.label_2282:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_2211:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_2249
.label_2306:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2225
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2225:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_2282
	jmp	.label_2231
.label_2249:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_2306
.label_2197:
	test	rbx, rbx
	je	.label_2299
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_2237
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_2237
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_2246:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_2246
	mov	rcx, rdi
.label_2237:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_2201
.label_2231:
	mov	rax, r13
	jmp	.label_2202
.label_2299:
	mov	rax, qword ptr [rsp + 8]
.label_2202:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_2201:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_2268
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2209
.label_2268:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_2273
	mov	rax, qword ptr [rbx + 0x70]
.label_2222:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2205:
	test	r14, r14
	mov	rcx, rbp
	je	.label_2285
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_2287
	mov	rax, qword ptr [rbx + 0x70]
.label_2226:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_2224
	mov	qword ptr [rbp], rcx
.label_2285:
	test	rbp, rbp
	je	.label_2224
	test	rcx, rcx
	je	.label_2224
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_595
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_595
	test	rax, rax
	je	.label_595
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_595
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	r8, rbx
	mov	qword ptr [rsp + 8], r8
	je	.label_2158
	test	rbp, rbp
	je	.label_2161
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_2159
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_2159
	lea	rbx, [rcx - 4]
	mov	rdi, rbx
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	esi, 1
	cmp	rbx, 0xc
	jae	.label_2164
	movq	xmm0, rsi
	pslldq	xmm0, 8
	jmp	.label_2167
.label_2158:
	lea	r12, [r8 + 0x68]
	jmp	.label_2172
.label_2164:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1500]
	movdqa	xmm9, xmmword ptr [rip + label_1501]
	movdqa	xmm10, xmmword ptr [rip + label_1507]
	movdqa	xmm11, xmmword ptr [rip + label_1508]
	movdqa	xmm5, xmmword ptr [rip + label_1509]
	movdqa	xmm6, xmmword ptr [rip + label_1510]
	movdqa	xmm7, xmmword ptr [rip + label_1511]
	movdqa	xmm1, xmmword ptr [rip + label_1512]
	nop	word ptr cs:[rax + rax]
.label_2210:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_2210
.label_2167:
	test	rdx, rdx
	je	.label_2184
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1500]
	movdqa	xmm2, xmmword ptr [rip + label_1501]
	nop	word ptr cs:[rax + rax]
.label_2229:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_2229
.label_2184:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_2161
	nop	dword ptr [rax]
.label_2159:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_2159
.label_2161:
	mov	rdx, qword ptr [r8 + 0x68]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_2243
	cmp	cl, 4
	jne	.label_2245
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r8 + 0xa0], rcx
	jmp	.label_2245
.label_2243:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_2245
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_2245
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_2254
	mov	qword ptr [rsi], rdx
.label_2254:
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_2245
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_2245:
	lea	r12, [r8 + 0x68]
	jmp	.label_2257
.label_2264:
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_2257:
	mov	rsi, rax
.label_2169:
	test	rsi, rsi
	jne	.label_2260
	mov	rdi, rdx
.label_2274:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jne	.label_2263
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2196:
	mov	rsi, rcx
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rsi
	je	.label_2178
	test	rdx, rdx
	jne	.label_2263
.label_2178:
	mov	rdi, qword ptr [rcx]
	test	rdi, rdi
	jne	.label_2196
	jmp	.label_2214
.label_2263:
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_2272
	cmp	cl, 4
	mov	esi, 0
	mov	rdi, rdx
	jne	.label_2274
	jmp	.label_2169
.label_2272:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rdi, rdx
	je	.label_2274
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rdi, rdx
	jne	.label_2274
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_2261
.label_2295:
	movsxd	rcx, dword ptr [rdi]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	movsxd	rcx, edi
	or	qword ptr [r8 + 0xa0], rcx
.label_2260:
	mov	rbp, rdx
.label_2293:
	mov	rdx, qword ptr [rbp + 8]
	test	rdx, rdx
	jne	.label_2283
	xor	ecx, ecx
.label_2289:
	mov	rdi, rcx
	mov	rcx, rbp
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rdi
	je	.label_2286
	test	rdx, rdx
	jne	.label_2283
.label_2286:
	mov	rbp, qword ptr [rcx]
	test	rbp, rbp
	jne	.label_2289
	jmp	.label_2214
	nop	
.label_2283:
	lea	rdi, [rdx + 0x28]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_2290
	cmp	cl, 4
	mov	rbp, rdx
	jne	.label_2293
	jmp	.label_2295
.label_2290:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rbp, rdx
	je	.label_2293
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rbp, rdx
	jne	.label_2293
	lea	rsi, [rdx + 8]
.label_2261:
	mov	rbp, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	test	rbp, rbp
	je	.label_2297
	mov	qword ptr [rbp], rdx
.label_2297:
	mov	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_2169
	jmp	.label_2264
.label_2214:
	mov	rcx, qword ptr [r15 + 0x30]
	xor	edx, edx
	test	rcx, rcx
	je	.label_2301
	xor	edx, edx
	nop	dword ptr [rax]
.label_2302:
	cmp	rdx, qword ptr [rax + rdx*8]
	jne	.label_2301
	inc	rdx
	cmp	rdx, rcx
	jb	.label_2302
.label_2301:
	cmp	rdx, rcx
	jne	.label_2172
	mov	rdi, rax
	call	free
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0xe0], 0
.label_2172:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_2147:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_2147
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_2147
	xor	ecx, ecx
	jmp	.label_2152
	nop	dword ptr [rax]
.label_2174:
	mov	rcx, qword ptr [rdx + 8]
	mov	rbx, rdx
.label_2152:
	mov	dword ptr [rsp + 0x20], 0
	test	rcx, rcx
	je	.label_2154
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_2154
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_2154
	mov	qword ptr [rax], rbx
	nop	word ptr [rax + rax]
.label_2154:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_2162
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_2162
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_2162
	mov	qword ptr [rax], rbx
	nop	
.label_2162:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_657
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	je	.label_2170
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	je	.label_2174
	test	rax, rax
	je	.label_2174
	jmp	.label_2147
.label_2170:
	mov	rax, qword ptr [r12]
	mov	ebx, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_2182:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_2182
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_2182
	nop	word ptr cs:[rax + rax]
.label_2207:
	cmp	byte ptr [rbp + 0x30], 0x10
	jne	.label_2236
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_654
	nop	dword ptr [rax]
.label_2236:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r8
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_595
	cmp	byte ptr [rbp + 0x30], 0xc
	mov	r8, qword ptr [rsp + 8]
	jne	.label_654
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r8]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_654:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_2204
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_2207
	test	rax, rax
	mov	rbp, rcx
	je	.label_2207
	jmp	.label_2182
.label_2204:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_2215
	cmp	al, 0xb
	jne	.label_2218
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_2219
.label_2215:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_2255
.label_2218:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_2228
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_2228:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_2219
.label_2255:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_2219:
	mov	rdx, rbp
	jmp	.label_2233
.label_2206:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_2233:
	test	rax, rax
	mov	rcx, rax
	jne	.label_2241
	xor	eax, eax
	nop	dword ptr [rax]
.label_2189:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_2173
	test	rcx, rcx
	jne	.label_2241
.label_2173:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_2189
	jmp	.label_2248
	nop	
.label_2241:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_2206
	cmp	al, 0xb
	jne	.label_2250
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_2233
.label_2250:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_2252
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_2252:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_2233
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_2233
.label_2248:
	mov	rdi, r8
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_657
	nop	word ptr [rax + rax]
.label_880:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2259
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2265:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_2262
	test	rbx, rbx
	jne	.label_2259
.label_2262:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_2265
	jmp	.label_2266
	nop	
.label_2259:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_880
	jmp	.label_657
.label_2266:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_2270
	nop	dword ptr [rax + rax]
.label_2278:
	inc	rbp
	mov	rax, rbp
.label_2270:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_2275
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_2276
	jmp	.label_2277
	nop	dword ptr [rax]
.label_2275:
	mov	rbp, rax
.label_2276:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_2278
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_657
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_2278
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_2278
.label_2277:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_2291
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_2291
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_2296
.label_2291:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_2144
.label_2296:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_595
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_2144
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_2300
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_2304:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_2304
.label_2300:
	test	rax, rax
	je	.label_2144
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2303:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_2151
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_2166:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_2155
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_2163
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_2165
	nop	word ptr cs:[rax + rax]
.label_2155:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_2165:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_2166
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_2151:
	inc	rbp
	cmp	rbp, rax
	jb	.label_2303
.label_2144:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_2179
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_2179
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_2179
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_2187
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_2220:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_2193
	jmp	qword ptr [(rsi * 8) + label_2198]
.label_2479:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_2199
	mov	esi, r10d
.label_2199:
	mov	r10b, sil
	jmp	.label_2175
.label_2480:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_2179
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_2175
	jmp	.label_2179
.label_2481:
	mov	r9b, 1
	jmp	.label_2175
.label_2482:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_2212
	bt	r8, rbx
	jb	.label_2175
.label_2212:
	cmp	esi, 0x80
	jne	.label_2179
.label_2175:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_2220
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_2223
	xor	eax, eax
	mov	edx, 8
	jmp	.label_2269
.label_595:
	mov	eax, 0xc
.label_657:
	mov	dword ptr [rsp + 4], eax
.label_2194:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2230
.label_2280:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_2269:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_2234
	cmp	sil, 1
	jne	.label_2238
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_2238
	and	esi, 0xffdfffff
	jmp	.label_2240
.label_2234:
	and	esi, 0xffffff00
	or	esi, 7
.label_2240:
	mov	dword ptr [rbp + rdx], esi
.label_2238:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_2280
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_2223
.label_2187:
	xor	ecx, ecx
.label_2223:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_2179:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_2253
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_2258
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_2221
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_2221
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_2271
	nop	dword ptr [rax + rax]
.label_2267:
	mov	rbp, qword ptr [rsp + 0x30]
.label_2271:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_2176
	test	r13, r13
	mov	edi, 0
	jle	.label_2281
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_2284:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_2279
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_2281
.label_2279:
	inc	rdi
	cmp	rdi, r13
	jl	.label_2284
.label_2281:
	cmp	rdi, r13
	je	.label_2176
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_2216
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_2180
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_2183:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_2183
.label_2180:
	cmp	rsi, -1
	je	.label_2216
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_2176
.label_2216:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2191
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_2176:
	inc	rax
	cmp	rax, r13
	jl	.label_2267
	jmp	.label_2221
.label_2253:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_2221:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_2145
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2149
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_2150
.label_2149:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_2157
	test	rax, rax
	je	.label_2157
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_2157
.label_2150:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_2191:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_2171
	nop	dword ptr [rax]
.label_2177:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_2177
.label_2171:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2186
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2186:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_2146
	jmp	.label_2190
.label_2157:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_2191
.label_2163:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_657
.label_2294:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_2146
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_2203
.label_2273:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_2205
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2222
.label_2287:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2224
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2226
.label_2224:
	mov	dword ptr [rsp + 4], 0xc
.label_2209:
	mov	qword ptr [r12 + 0x68], 0
.label_2230:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_2235
	nop	word ptr cs:[rax + rax]
.label_2242:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_2242
.label_2235:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2190
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2190:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_2146:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2145:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_2191
.label_2258:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2191
.label_2193:
	call	abort
	nop	
	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414af0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	ja	.label_2307
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	cmovle	rbp, rcx
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	jl	.label_2312
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2307
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	call	realloc
	test	rax, rax
	je	.label_2307
	mov	qword ptr [r15 + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_2312
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_2307
	mov	qword ptr [r15 + 0x18], rax
.label_2312:
	cmp	byte ptr [r15 + 0x8b], 0
	je	.label_2309
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2307
	mov	qword ptr [r15 + 8], rax
.label_2309:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	test	rdi, rdi
	je	.label_2315
	lea	rsi, [rbp*8 + 8]
	call	realloc
	test	rax, rax
	je	.label_2307
	mov	qword ptr [r15 + 0xb8], rax
.label_2315:
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	je	.label_2311
	cmp	eax, 2
	jl	.label_2322
	mov	rdi, r15
	call	build_wcs_upper_buffer
	mov	r14d, eax
	test	r14d, r14d
	je	.label_2310
	jmp	.label_2307
.label_2311:
	cmp	eax, 2
	jl	.label_2308
	mov	rdi, r15
	call	build_wcs_buffer
	jmp	.label_2310
.label_2322:
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	cmovg	r14, rax
	cmp	rbp, r14
	jl	.label_2313
	jmp	.label_2317
.label_2308:
	mov	rdx, qword ptr [r15 + 0x78]
	test	rdx, rdx
	je	.label_2310
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2319
	mov	rsi, qword ptr [r15 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2321
	nop	dword ptr [rax]
.label_2314:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2321:
	inc	rax
	cmp	rax, rcx
	jl	.label_2314
	mov	rax, rcx
.label_2319:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_2310
.label_2318:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_2316
	nop	word ptr cs:[rax + rax]
.label_2313:
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	movzx	ecx, byte ptr [rbp + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2318
.label_2316:
	movzx	ebx, cl
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2320
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2320:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	cmp	rbp, r14
	jl	.label_2313
	mov	rbp, r14
.label_2317:
	mov	qword ptr [r15 + 0x30], rbp
	mov	qword ptr [r15 + 0x38], rbp
.label_2310:
	xor	r14d, r14d
.label_2307:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414d20

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x228
	mov	r14, r9
	mov	rbp, rcx
	mov	r11, qword ptr [rsp + 0x260]
	mov	r10, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xf8], r10
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_2331
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_2331:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r11 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r11
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1240
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_1240
	mov	rcx, qword ptr [r10 + 0x50]
	test	rcx, rcx
	je	.label_1240
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_1240
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_1240
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x160], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2332
	mov	qword ptr [rsp + 8], r8
	mov	r14, rsi
	jmp	.label_2327
.label_2332:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_2336
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_2337
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_2336
.label_2337:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbp, rbp
	je	.label_2323
	test	r8, r8
	mov	ebp, 0
	jne	.label_1240
	jmp	.label_2327
.label_2336:
	mov	qword ptr [rsp + 8], r8
.label_2327:
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	sub	r11, r12
	mov	qword ptr [rsp + 0x38], r11
	mov	byte ptr [rsp + 3], 1
	jne	.label_2328
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 3]
.label_2328:
	mov	r15, qword ptr [r10 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x58], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r10 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0xb8], rbx
	mov	qword ptr [rsp + 0xb0], rbx
	mov	rsi, qword ptr [rsp + 0x160]
	mov	qword ptr [rsp + 0xd8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0xe8], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0xeb], r12b
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, byte ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0xe9], dl
	mov	byte ptr [rsp + 0xea], cl
	mov	qword ptr [rsp + 0xc8], rsi
	mov	qword ptr [rsp + 0x170], rsi
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x28], r10
	jl	.label_2334
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_1016
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1016
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, qword ptr [rsp + 0x28]
.label_2334:
	mov	al, 1
	test	r12b, r12b
	je	.label_2335
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1016
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
.label_2335:
	mov	qword ptr [rsp + 0xa0], r15
	lea	rcx, [r10 + 0xb8]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0xee], dl
	xor	edx, edx
	test	al, al
	je	.label_2325
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x68], rax
	xor	edx, edx
	cmp	ecx, 1
	cmovle	rdx, qword ptr [rsp + 0x170]
.label_2325:
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x98], rdx
	mov	qword ptr [rsp + 0xc8], r14
	mov	qword ptr [rsp + 0xc0], r14
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0xed], al
	mov	r14, qword ptr [r10 + 0x98]
	lea	r13, [r14 + r14]
	mov	eax, dword ptr [rsp + 0x270]
	mov	dword ptr [rsp + 0x100], eax
	mov	qword ptr [rsp + 0x108], -1
	test	r14, r14
	jle	.label_2333
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_1016
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x138], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x158], rax
	test	r12, r12
	je	.label_1016
	test	rax, rax
	je	.label_1016
.label_2333:
	mov	qword ptr [rsp + 0x130], r13
	mov	dword ptr [rsp + 0x140], 1
	mov	qword ptr [rsp + 0x150], r13
	cmp	qword ptr [rsp + 0x38], 1
	ja	.label_2324
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_2324
	mov	qword ptr [rsp + 0x118], 0
	jmp	.label_2329
.label_2324:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_1016
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x118], rax
	test	rax, rax
	je	.label_1016
.label_2329:
	mov	qword ptr [rsp + 0x20], rbp
	mov	eax, dword ptr [rsp + 0x270]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xd0], eax
	mov	rdi, qword ptr [rsp + 8]
	cmp	rdi, rbp
	mov	r14, rbp
	cmovle	r14, rdi
	mov	r12, rdi
	cmovl	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	eax, dword ptr [rax + 0xb4]
	mov	dword ptr [rsp + 0x17c], eax
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_2338
	cmp	dword ptr [rsp + 0x17c], 1
	mov	rsi, qword ptr [rsp + 0x160]
	je	.label_2330
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_2326
	mov	rdx, qword ptr [rsp + 0x58]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_2326
.label_2330:
	mov	eax, 4
.label_2326:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rdi
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_2338:
	lea	r15, [rsp + 0x98]
	cmp	rdi, rbp
	mov	eax, 1
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x1f0], rdx
	xor	edx, edx
	cmp	rbp, rdi
	setle	byte ptr [rsp + 2]
	lea	rsi, [rsp + 0x20]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1e8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x210], rsi
	add	ecx, -4
	mov	qword ptr [rsp + 0x218], rcx
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x198], r14
	jmp	.label_1025
.label_2323:
	xor	ebp, ebp
	jmp	.label_2327
.label_1066:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_1110
	cmp	ebx, 1
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_1090
	jmp	.label_1016
.label_1056:
	test	al, al
	js	.label_1178
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbx
	mov	ecx, 1
	jne	.label_1179
	mov	rbp, rbx
	jmp	.label_1038
.label_1048:
	mov	rax, qword ptr [r14 + 0x10]
	test	rax, rax
	jle	.label_1188
	mov	r15, qword ptr [rsp + 0xf8]
	xor	ebx, ebx
	jmp	.label_1101
.label_1178:
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbx
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 3]
	je	.label_1199
	or	rdx, rbx
	jmp	.label_1179
.label_1199:
	mov	rbp, rbx
	jmp	.label_1038
.label_1098:
	mov	r12, qword ptr [rsp + 0x168]
	jmp	.label_1063
.label_1227:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1232
	add	r12, r12
	mov	qword ptr [rsp + 0x158], rax
	mov	qword ptr [rsp + 0x150], r12
	jmp	.label_1216
.label_1101:
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r13, qword ptr [rcx + rbx*8]
	mov	rcx, qword ptr [r15]
	mov	rdx, r13
	shl	rdx, 4
	cmp	byte ptr [rcx + rdx + 8], 8
	jne	.label_1220
	mov	rcx, qword ptr [rcx + rdx]
	cmp	rcx, 0x3f
	jg	.label_1220
	mov	rdx, qword ptr [r15 + 0xa0]
	bt	rdx, rcx
	jae	.label_1220
	mov	r12, qword ptr [rsp + 0x148]
	cmp	r12, qword ptr [rsp + 0x150]
	je	.label_1227
.label_1216:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rsp + 0x158]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_1232
	mov	qword ptr [rax + 8], r13
	inc	rcx
	mov	qword ptr [rsp + 0x148], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
.label_1220:
	inc	rbx
	cmp	rbx, rax
	jl	.label_1101
.label_1188:
	mov	dword ptr [rsp + 4], 0
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_1022
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x60]
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1027
.label_1022:
	mov	dword ptr [rsp + 8], 0
	lea	r15, [rsp + 0x98]
	jmp	.label_1032
.label_1232:
	mov	ebp, 0xc
	jmp	.label_1035
.label_1027:
	movsxd	rbp, eax
	lea	r15, [rsp + 0x98]
	jmp	.label_1038
	nop	
.label_1025:
	mov	rax, qword ptr [rsp + 0x218]
	cmp	eax, 4
	ja	.label_1128
	jmp	qword ptr [(rax * 8) + label_1045]
.label_2483:
	cmp	rbp, r14
	jl	.label_1047
	mov	rdi, qword ptr [rsp + 0x160]
	test	rdi, rdi
	je	.label_1051
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_1069:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_1060
	movzx	eax, byte ptr [rdx + rbp]
.label_1060:
	movzx	eax, byte ptr [rdi + rax]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1047
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1069
	jmp	.label_1075
.label_2485:
	cmp	rbp, r12
	jge	.label_1076
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x160]
	nop	dword ptr [rax]
.label_1083:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1076
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_1083
	jmp	.label_1076
.label_2484:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	jge	.label_1076
	nop	dword ptr [rax]
.label_1093:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1076
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_1093
	nop	word ptr [rax + rax]
.label_1076:
	cmp	rbp, r12
	jne	.label_1096
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_1099
	movzx	eax, byte ptr [rcx + r12]
.label_1099:
	mov	rcx, qword ptr [rsp + 0x160]
	test	rcx, rcx
	je	.label_1103
	movzx	eax, byte ptr [rcx + rax]
.label_1103:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_1096
	jmp	.label_1016
.label_1128:
	mov	rax, qword ptr [rsp + 0x88]
	jmp	.label_1112
	nop	word ptr cs:[rax + rax]
.label_1147:
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_1016
	cmp	rbp, r12
	jle	.label_1112
	jmp	.label_1016
.label_1138:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1016
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1132
	nop	dword ptr [rax + rax]
.label_1112:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x98]
	jae	.label_1138
.label_1132:
	cmp	rbp, qword ptr [rsp + 0x170]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x48]
	jge	.label_1236
	mov	rdx, qword ptr [rsp + 0x68]
	movzx	edx, byte ptr [rdx + rcx]
.label_1236:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_1147
	jmp	.label_1096
.label_1051:
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_1160:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_1150
	movzx	eax, byte ptr [rdx + rbp]
.label_1150:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1047
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1160
	jmp	.label_1075
	nop	word ptr [rax + rax]
.label_1047:
	mov	rax, rbp
.label_1075:
	mov	ebx, 1
	cmp	rax, r14
	mov	rbp, rax
	jl	.label_1016
.label_1096:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1016
	cmp	dword ptr [rsp + 0x17c], 1
	je	.label_1182
	mov	rax, qword ptr [rsp + 0x90]
	test	rax, rax
	je	.label_1182
	mov	rax, qword ptr [rsp + 0x70]
	cmp	dword ptr [rax], -1
	je	.label_1029
.label_1182:
	mov	dword ptr [rsp + 0x140], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x88], xmm0
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [r13 + 0x48]
	cmp	byte ptr [r14 + 0x68], 0
	jns	.label_1194
	test	rbx, rbx
	jle	.label_1206
	lea	rax, [rbx - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_1210
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1212
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_1046:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1042
	dec	rcx
	jg	.label_1046
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1028
.label_1212:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_1036
	cmp	al, 0xa
	je	.label_1228
	jmp	.label_1194
.label_1042:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1230
.label_1037:
	cmp	ebp, 0xa
	jne	.label_1194
.label_1228:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_1028:
	test	cl, 1
	jne	.label_1036
	mov	rbp, rbx
	test	ecx, ecx
	je	.label_1017
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	mov	bl, byte ptr [rsp + 2]
	je	.label_1239
	test	sil, sil
	jne	.label_1239
	mov	r14, qword ptr [r13 + 0x60]
	jmp	.label_1021
	nop	dword ptr [rax]
.label_1194:
	mov	rbp, rbx
	jmp	.label_1017
.label_1239:
	test	edx, edx
	jne	.label_1019
	test	eax, eax
	je	.label_1021
	mov	rdx, qword ptr [r14 + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r13
	call	re_acquire_state_context
	mov	r14, rax
	jmp	.label_1021
.label_1019:
	mov	r14, qword ptr [r13 + 0x58]
	jmp	.label_1021
.label_1206:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1028
.label_1210:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_1028
.label_1230:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_1036
	test	eax, eax
	je	.label_1037
.label_1036:
	mov	rbp, rbx
	mov	r14, qword ptr [r13 + 0x50]
.label_1017:
	mov	bl, byte ptr [rsp + 2]
.label_1021:
	test	r14, r14
	je	.label_1043
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	mov	cl, bl
	mov	dword ptr [rsp + 8], ecx
	je	.label_1032
	mov	qword ptr [rax + rbp*8], r14
	cmp	qword ptr [r13 + 0x98], 0
	mov	al, bl
	mov	dword ptr [rsp + 8], eax
	jne	.label_1048
.label_1032:
	mov	al, byte ptr [r14 + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	mov	rbx, rbp
	jne	.label_1056
.label_1179:
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0x210]
.label_1071:
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x168], rdx
	mov	qword ptr [rsp + 0x180], rbx
	cmp	qword ptr [rsp + 0xc8], rbp
	jle	.label_1062
	test	rcx, rcx
	sete	bl
	or	bl, byte ptr [rsp + 3]
	mov	r13, r14
	jmp	.label_1052
.label_1203:
	add	ebp, 2
	lea	rdi, [rsp + 0x60]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1081
	jmp	.label_1084
.label_1211:
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1086
	mov	r8, qword ptr [rsp + 0xf8]
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r8
	jmp	.label_1089
.label_1219:
	mov	rax, qword ptr [rsp + 0xa8]
	test	rax, rax
	jle	.label_1215
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0xb8], rdx
	je	.label_1070
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1100
	mov	rcx, qword ptr [rsp + 0x70]
.label_1073:
	mov	r14d, dword ptr [rcx + rax*4 - 4]
	cmp	r14d, -1
	jne	.label_1102
	dec	rax
	jg	.label_1073
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1070
.label_1172:
	cmp	r13, r14
	je	.label_1108
	mov	dword ptr [rsp + 8], 0
.label_1108:
	mov	rax, qword ptr [rsp + 0x180]
	cmove	rax, r12
	mov	qword ptr [rsp + 0x180], rax
	jmp	.label_1105
.label_1100:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rdx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1070
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_1125
	jmp	.label_1070
.label_1102:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1127
.label_1068:
	xor	ecx, ecx
	cmp	r14d, 0xa
	jne	.label_1070
.label_1125:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_1070:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	r14, qword ptr [rsi + rcx*8]
	jmp	.label_1117
.label_1078:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1050
.label_1109:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_1050
.label_1139:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1146
	test	eax, eax
	lea	r15, [rsp + 0x98]
	je	.label_1151
	jmp	.label_1050
.label_1146:
	lea	r15, [rsp + 0x98]
	jmp	.label_1050
.label_1089:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_1020
	mov	edi, eax
	shr	edi, 8
	test	di, 0x3ff
	mov	rcx, qword ptr [rsp + 0xa8]
	je	.label_1164
	test	rcx, rcx
	mov	dword ptr [rsp + 0x10], eax
	js	.label_1170
	cmp	qword ptr [rsp + 0xb8], rcx
	je	.label_1173
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1177
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdx, [rcx + 1]
.label_1187:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_1185
	dec	rdx
	test	rdx, rdx
	jg	.label_1187
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_1049
.label_1177:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rcx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rbp + rdx*8]
	xor	r9d, r9d
	bt	rdx, rax
	jae	.label_1195
	mov	r9d, 1
	xor	edx, edx
	jmp	.label_1202
.label_1185:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1204
.label_1231:
	xor	r9d, r9d
	cmp	ebp, 0xa
	je	.label_1193
	jmp	.label_1049
.label_1195:
	cmp	al, 0xa
	jne	.label_1049
.label_1193:
	xor	r9d, r9d
	cmp	byte ptr [rsp + 0xed], 0
	setne	r9b
	add	r9d, r9d
.label_1049:
	mov	eax, r9d
	and	eax, 1
	sete	dl
	test	dil, 4
	je	.label_1202
	test	eax, eax
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_1020
	jmp	.label_1166
.label_1170:
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_1049
.label_1173:
	mov	r9d, dword ptr [rsp + 0x100]
	and	r9d, 2
	xor	r9d, 0xa
	jmp	.label_1049
.label_1204:
	mov	dword ptr [rsp + 0x178], edi
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebp
	call	iswalnum
	xor	edx, edx
	cmp	ebp, 0x5f
	mov	r9d, 1
	je	.label_1122
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_1231
	jmp	.label_1166
.label_1122:
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
.label_1202:
	mov	eax, dword ptr [rsp + 0x10]
.label_1166:
	test	ah, 8
	je	.label_1018
	test	dl, dl
	je	.label_1020
.label_1018:
	test	ah, 0x20
	je	.label_1023
	mov	eax, r9d
	and	eax, 2
	je	.label_1020
.label_1023:
	test	dil, dil
	jns	.label_1164
	and	r9d, 8
	je	.label_1020
.label_1164:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x60]
	call	check_node_accept_bytes
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	je	.label_1020
	movsxd	rbp, eax
	add	rbp, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rsp + 0x140]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x140], ecx
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	rcx, rbp
	mov	qword ptr [rsp + 0x10], rbp
	jg	.label_1134
	cmp	rcx, rax
	jl	.label_1057
.label_1134:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	rcx, rbp
	jg	.label_1058
	cmp	rcx, rax
	jge	.label_1058
.label_1057:
	lea	esi, [rbp + 1]
	mov	rbp, rdi
	lea	rdi, [rsp + 0x60]
	call	extend_buffers
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_1061
.label_1058:
	mov	rdx, rbp
	sub	rdx, rdi
	jle	.label_1072
	mov	rax, qword ptr [rsp + 0x118]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x120], rbp
.label_1072:
	mov	dword ptr [rsp + 0x1f8], 0
	mov	rax, qword ptr [r8 + 0x18]
	mov	rax, qword ptr [rax + rsi*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [r8 + 0x30]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x30], rax
	je	.label_1152
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rsp + 0x1a0]
	call	re_node_set_init_union
	mov	rbp, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0x1f8], eax
	test	eax, eax
	je	.label_1097
	jmp	.label_1024
.label_1152:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
.label_1097:
	test	rbp, rbp
	jle	.label_1078
	lea	rax, [rbp - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_1109
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1111
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbp
.label_1116:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1114
	dec	rcx
	jg	.label_1116
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1050
.label_1111:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1050
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_1130
	jmp	.label_1050
.label_1114:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1139
.label_1151:
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_1050
.label_1130:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_1050:
	lea	rdi, [rsp + 0x1f8]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x1a0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x118]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_1144
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
	mov	rdx, qword ptr [rsp + 0x10]
.label_1144:
	mov	rax, qword ptr [rsp + 0x118]
	cmp	qword ptr [rax + rdx*8], 0
	mov	r8, qword ptr [rsp + 0x18]
	jne	.label_1020
	mov	eax, dword ptr [rsp + 0x1f8]
	test	eax, eax
	jne	.label_1024
.label_1020:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_1089
.label_1086:
	mov	dword ptr [rsp + 4], 0
	jmp	.label_1165
.label_1061:
	mov	dword ptr [rsp + 0x1f8], eax
.label_1024:
	mov	dword ptr [rsp + 4], eax
.label_1224:
	xor	r14d, r14d
	jmp	.label_1117
.label_1215:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1070
.label_1127:
	mov	qword ptr [rsp + 0x18], rsi
	mov	edi, r14d
	call	iswalnum
	cmp	r14d, 0x5f
	mov	ecx, 1
	je	.label_1181
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	je	.label_1068
	jmp	.label_1070
.label_1181:
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	jmp	.label_1070
	nop	dword ptr [rax + rax]
.label_1052:
	lea	r12, [rbp + 1]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	r12, rcx
	jl	.label_1198
	cmp	rcx, rax
	jl	.label_1203
.label_1198:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	r12, rcx
	jl	.label_1084
	cmp	rcx, rax
	jl	.label_1203
.label_1084:
	test	byte ptr [r13 + 0x68], 0x20
	jne	.label_1211
.label_1165:
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xa8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	movzx	ebp, byte ptr [rcx + rax]
.label_1223:
	mov	rax, qword ptr [r13 + 0x58]
	test	rax, rax
	jne	.label_1218
	mov	rsi, qword ptr [r13 + 0x60]
	test	rsi, rsi
	jne	.label_1219
	mov	rdi, qword ptr [rsp + 0xf8]
	mov	rsi, r13
	call	build_trtable
	test	al, al
	jne	.label_1223
	mov	dword ptr [rsp + 4], 0xc
	jmp	.label_1224
	nop	word ptr [rax + rax]
.label_1218:
	mov	r14, qword ptr [rax + rbp*8]
.label_1117:
	cmp	qword ptr [rsp + 0x118], 0
	je	.label_1126
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r14
	call	merge_state_with_log
	mov	r14, rax
.label_1126:
	test	r14, r14
	jne	.label_1234
	cmp	dword ptr [rsp + 4], 0
	jne	.label_1129
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	setne	cl
	and	cl, bl
	cmp	cl, 1
	je	.label_1238
	jmp	.label_1158
	nop	word ptr cs:[rax + rax]
.label_1041:
	mov	rax, qword ptr [rsp + 0x118]
.label_1238:
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x120]
	nop	dword ptr [rax + rax]
.label_1237:
	cmp	rdx, rcx
	jge	.label_1158
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xa8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_1237
	xor	edx, edx
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	call	merge_state_with_log
	mov	r14, rax
	test	r14, r14
	jne	.label_1039
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	je	.label_1041
.label_1039:
	test	r14, r14
	je	.label_1158
	nop	word ptr [rax + rax]
.label_1234:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_1172
.label_1105:
	mov	r12, qword ptr [rsp + 0x40]
	mov	al, byte ptr [r14 + 0x68]
	test	al, 0x10
	jne	.label_1196
	mov	rbp, qword ptr [rsp + 0xa8]
	jmp	.label_1053
	nop	word ptr cs:[rax + rax]
.label_1196:
	mov	rbp, qword ptr [rsp + 0xa8]
	test	al, al
	jns	.label_1085
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1085
.label_1053:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	r13, r14
	jg	.label_1052
	jmp	.label_1062
.label_1085:
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbp
	mov	ecx, 1
	mov	eax, 0
	mov	rbx, qword ptr [rsp + 0x180]
	jne	.label_1071
	jmp	.label_1038
	nop	word ptr cs:[rax + rax]
.label_1158:
	mov	r12, qword ptr [rsp + 0x40]
.label_1062:
	mov	rcx, qword ptr [rsp + 0x220]
	test	rcx, rcx
	je	.label_1080
	mov	rax, qword ptr [rsp + 0x180]
	add	qword ptr [rcx], rax
.label_1080:
	mov	rbp, qword ptr [rsp + 0x168]
.label_1038:
	cmp	rbp, -1
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_1090
	mov	ebx, 0xc
	cmp	rbp, -2
	je	.label_1016
.label_1035:
	mov	r15, qword ptr [rsp + 0x38]
	cmp	r15, 1
	seta	al
	mov	qword ptr [rsp + 0x108], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r14b
	and	r14b, al
	je	.label_1095
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_1087
.label_1095:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1110
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	test	r14b, 1
	je	.label_1118
.label_1087:
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_1123
.label_1118:
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1110
.label_1123:
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_1129
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r12, qword ptr [rsp + 0x110]
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	mov	r13d, 0
	je	.label_1140
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1142
	mov	qword ptr [rsp + 8], r15
	mov	rdi, rbx
	call	malloc
	mov	r13, rax
	test	r13, r13
	je	.label_1176
	xor	esi, esi
	mov	rdi, r13
	mov	rdx, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	jmp	.label_1154
.label_1142:
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1066
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	je	.label_1113
	jmp	.label_1200
.label_1161:
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	r12, rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r13
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
.label_1154:
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1066
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	jne	.label_1079
	cmp	qword ptr [r13], 0
	mov	esi, 0
	jne	.label_1079
	test	rbp, rbp
	jle	.label_1113
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_1174:
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rax + rcx*8 - 8]
	test	rsi, rsi
	je	.label_1221
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1161
.label_1221:
	cmp	rcx, 2
	mov	rcx, rbp
	jge	.label_1174
.label_1113:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	mov	r12, qword ptr [rsp + 0x40]
.label_1090:
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
.label_1029:
	mov	rbp, qword ptr [rsp + 0x20]
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_1016
	cmp	r12, rbp
	jge	.label_1025
	jmp	.label_1016
.label_1079:
	test	rbp, rbp
	js	.label_1031
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x168], r12
	jmp	.label_1033
	nop	word ptr cs:[rax + rax]
.label_1067:
	mov	rsi, qword ptr [r14 + r15*8 + 8]
	inc	r15
.label_1033:
	mov	rdx, qword ptr [r13 + r15*8]
	test	rsi, rsi
	je	.label_1040
	test	rdx, rdx
	je	.label_1026
	add	rsi, 8
	add	rdx, 8
	lea	r12, [rsp + 0x1f8]
	mov	rdi, r12
	call	re_node_set_init_union
	mov	ebx, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	jne	.label_1098
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	call	re_acquire_state
	mov	qword ptr [r14 + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x208]
	call	free
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x168]
	je	.label_1026
	jmp	.label_1063
.label_1040:
	mov	qword ptr [r14 + r15*8], rdx
.label_1026:
	cmp	r15, rbp
	jl	.label_1067
.label_1031:
	xor	ebx, ebx
.label_1063:
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1066
.label_1200:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	qword ptr [rsp + 0x118], r14
	mov	qword ptr [rsp + 0x110], r12
	mov	qword ptr [rsp + 0x108], rbp
	mov	r15, qword ptr [rsp + 0x38]
.label_1110:
	test	r15, r15
	je	.label_1082
	cmp	r15, 1
	je	.label_1214
	mov	rax, qword ptr [rsp + 0x268]
	lea	rdi, [rax + 0x10]
	cmp	r15, 2
	mov	edx, 2
	cmova	rdx, r15
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_1214:
	mov	rax, qword ptr [rsp + 0x268]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rcx + 8], rax
	cmp	r15, 2
	jb	.label_1094
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1094
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1104
	xor	eax, eax
	jmp	.label_1107
.label_1082:
	xor	ebx, ebx
	jmp	.label_1016
.label_1104:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1107:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rcx]
	movzx	r8d, al
	lea	rsi, [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x268]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1016
.label_1094:
	cmp	byte ptr [rsp + 0xec], 0
	jne	.label_1121
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	mov	edx, r15d
	and	edx, 1
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x190], rbx
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_1124
	mov	rsi, r15
	sub	rsi, rdx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rdi, [rcx + 0x18]
	xor	ecx, ecx
	nop	
.label_1145:
	mov	rbp, qword ptr [rdi - 0x18]
	cmp	rbp, -1
	je	.label_1044
	add	rbp, rax
	mov	qword ptr [rdi - 0x18], rbp
	add	qword ptr [rdi - 0x10], rax
.label_1044:
	mov	rbp, qword ptr [rdi - 8]
	cmp	rbp, -1
	je	.label_1141
	add	rbp, rax
	mov	qword ptr [rdi - 8], rbp
	add	qword ptr [rdi], rax
.label_1141:
	add	rcx, 2
	add	rdi, 0x20
	cmp	rsi, rcx
	jne	.label_1145
.label_1124:
	test	rdx, rdx
	je	.label_1120
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rdx + rcx]
	cmp	rdx, -1
	je	.label_1120
	mov	rsi, qword ptr [rsp + 0x268]
	mov	rdi, rsi
	lea	rsi, [rdi + rcx]
	add	rdx, rax
	mov	qword ptr [rsi], rdx
	add	qword ptr [rdi + rcx + 8], rax
.label_1120:
	test	rbx, rbx
	jle	.label_1192
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x268]
	mov	rdx, rbx
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_1192:
	mov	rax, qword ptr [r14 + 0xe0]
	test	rax, rax
	je	.label_1235
	cmp	r15, 2
	mov	ebx, 0
	jb	.label_1016
	mov	rcx, qword ptr [rsp + 0x188]
	sub	qword ptr [rsp + 0x190], rcx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1201:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1190
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1190:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x190], rdx
	jne	.label_1201
	jmp	.label_1016
.label_1235:
	xor	ebx, ebx
	jmp	.label_1016
.label_1081:
	cmp	eax, 0xc
	je	.label_1129
	mov	edi, OFFSET FLAT:label_1208
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_1209
	call	__assert_fail
.label_1043:
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_1129
	mov	edi, OFFSET FLAT:label_1208
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_1209
	call	__assert_fail
.label_1176:
	mov	qword ptr [rsp + 0x1e8], r14
.label_1140:
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, r13
	call	free
.label_1129:
	mov	ebx, 0xc
.label_1016:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1226
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
.label_1226:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	free
	cmp	byte ptr [rsp + 0xeb], 0
	je	.label_1240
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
.label_1240:
	mov	eax, ebx
	add	rsp, 0x228
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1121:
	mov	r8, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 8]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x188]
.label_1186:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	je	.label_1077
	mov	rdi, qword ptr [rsp + 0x90]
	cmp	rsi, rdi
	lea	rsi, [r8 + rsi*8]
	lea	rbp, [rsp + 0x98]
	mov	rax, rbp
	cmove	rsi, rax
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx - 8], rsi
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	lea	rdi, [r8 + rbp*8]
	cmove	rdi, rax
	mov	rbp, qword ptr [rsp + 0x20]
	add	rsi, rbp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	qword ptr [rcx], rbp
.label_1077:
	add	rcx, 0x10
	dec	rdx
	jne	.label_1186
	jmp	.label_1120
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416890

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4168f0

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
	jne	.label_2339
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2339
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2340
.label_2339:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_2340:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_2341
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2341:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
.label_2342:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41696b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_2343
	test	rax, rax
	je	.label_2342
.label_2343:
	pop	rbx
	ret	
	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
.label_2495:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_646
	mov	edi, OFFSET FLAT:label_664
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_666
	call	__assert_fail
.label_2497:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_567]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_680
	mov	qword ptr [rax], r15
	jmp	.label_683
.label_2348:
	test	dl, 8
	jne	.label_685
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_683
.label_2346:
	mov	qword ptr [rax], 2
	jge	.label_648
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_683
.label_705:
	lea	rax, [r14 + r15*8]
	jmp	.label_693
.label_2496:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_683
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_567]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_705
	mov	qword ptr [rax], rbx
	jmp	.label_683
.label_2345:
	mov	edi, OFFSET FLAT:label_751
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_666
	call	__assert_fail
.label_648:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_683:
	xor	eax, eax
.label_646:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_680:
	lea	rax, [r14 + rbx*8]
.label_693:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_646
	.section	.text
	.align	32
	#Procedure 0x416aaa

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_2348
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_2347]
.label_2349:
	mov	edi, OFFSET FLAT:label_2344
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_666
	call	__assert_fail
.label_2498:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_2349
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_2345
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_646
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_2346
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_683
.label_685:
	mov	edi, OFFSET FLAT:label_775
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_666
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x416b9a
	.globl sub_416b9a
	.type sub_416b9a, @function
sub_416b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416ba0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_2353
	jmp	qword ptr [(rbp * 8) + label_2352]
.label_2507:
	cmp	byte ptr [rsi], cl
	je	.label_2350
	xor	eax, eax
	jmp	.label_2353
.label_2508:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2350
	xor	eax, eax
	jmp	.label_2353
.label_2510:
	test	cl, cl
	js	.label_2356
.label_2509:
	test	cl, cl
	je	.label_2357
	cmp	cl, 0xa
	jne	.label_2350
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2350
	xor	eax, eax
	jmp	.label_2353
.label_2357:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2358
.label_2350:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2353
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2354
	test	ecx, ecx
	jne	.label_2354
	xor	eax, eax
	jmp	.label_2353
.label_2354:
	mov	edx, r14d
	test	dh, 8
	je	.label_2351
	test	ecx, ecx
	je	.label_2351
.label_2356:
	xor	eax, eax
	jmp	.label_2353
.label_2351:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2355
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2355
.label_2358:
	xor	eax, eax
	jmp	.label_2353
.label_2355:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2353:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416c8e
	.globl sub_416c8e
	.type sub_416c8e, @function
sub_416c8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x416c90

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
	jne	.label_2363
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_2367
	cmp	ecx, 0x55
	jne	.label_2359
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_2359
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_2359
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_2359
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_2359
	cmp	byte ptr [rax + 5], 0
	jne	.label_2359
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_2365
	mov	eax, OFFSET FLAT:label_2366
	jmp	.label_2362
.label_2367:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_2359
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_2359
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_2359
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_2359
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_2359
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_2359
	cmp	byte ptr [rax + 7], 0
	je	.label_2364
.label_2359:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1926
	mov	eax, OFFSET FLAT:label_1892
.label_2362:
	cmove	rax, rcx
.label_2363:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2364:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_2360
	mov	eax, OFFSET FLAT:label_2361
	jmp	.label_2362
	.section	.text
	.align	32
	#Procedure 0x416d55
	.globl sub_416d55
	.type sub_416d55, @function
sub_416d55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416d60

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, r9
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, qword ptr [r13]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], r8
	call	parse_expression
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_2390
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_2377
.label_2390:
	cmp	qword ptr [rsp], 0
	jne	.label_2375
	jmp	.label_2376
	.section	.text
	.align	32
	#Procedure 0x416db1
	.globl sub_416db1
	.type sub_416db1, @function
sub_416db1:

	nop	word ptr cs:[rax + rax]
.label_2371:
	test	rbx, rbx
	cmove	rbx, r14
.label_2376:
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	je	.label_2393
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_2398
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_2368
.label_2398:
	test	rbx, rbx
	je	.label_2371
	test	r14, r14
	je	.label_2371
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_2373
	mov	rax, qword ptr [r15 + 0x70]
.label_2389:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_2376
.label_2373:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2387
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2389
	.section	.text
	.align	32
	#Procedure 0x416ea4
	.globl sub_416ea4
	.type sub_416ea4, @function
sub_416ea4:

	nop	word ptr cs:[rax + rax]
.label_2370:
	test	rbx, rbx
	cmove	rbx, r14
.label_2375:
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_2393
	cmp	eax, 9
	je	.label_2393
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_2397
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_2368
.label_2397:
	test	rbx, rbx
	je	.label_2370
	test	r14, r14
	je	.label_2370
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_2372
	mov	rax, qword ptr [r15 + 0x70]
.label_2388:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_2375
.label_2372:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2387
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2388
.label_2393:
	mov	r14, rbx
.label_2377:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2368:
	xor	r14d, r14d
	test	al, al
	je	.label_2377
	mov	r15d, 0x400ff
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2382:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2382
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_2382
.label_2380:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_2396
	cmp	eax, 6
	jne	.label_2391
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2374
.label_2396:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2374:
	call	free
.label_2391:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2377
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_2380
	test	rbx, rbx
	mov	rbp, rax
	je	.label_2380
	jmp	.label_2382
.label_2387:
	mov	rcx, rbp
	mov	r15d, 0x400ff
.label_2383:
	mov	r12, r14
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jne	.label_2383
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	jne	.label_2383
.label_2395:
	mov	eax, dword ptr [r12 + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_2385
	cmp	eax, 6
	jne	.label_2386
	mov	r14, qword ptr [r12 + 0x28]
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 8]
	call	free
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	jmp	.label_2392
.label_2385:
	mov	rdi, qword ptr [r12 + 0x28]
.label_2392:
	call	free
	mov	rcx, rbp
.label_2386:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_2394
	mov	r14, qword ptr [rax + 0x10]
	cmp	r14, r12
	mov	r12, rax
	je	.label_2395
	test	r14, r14
	mov	r12, rax
	je	.label_2395
	jmp	.label_2383
.label_2394:
	mov	r14d, 0x400ff
.label_2384:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_2384
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_2384
.label_2381:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2399
	cmp	eax, 6
	jne	.label_2369
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2378
.label_2399:
	mov	rdi, qword ptr [r15 + 0x28]
.label_2378:
	call	free
	mov	rcx, rbp
.label_2369:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_2379
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_2381
	test	rbx, rbx
	mov	r15, rax
	je	.label_2381
	jmp	.label_2384
.label_2379:
	mov	dword ptr [rcx], 0xc
	xor	r14d, r14d
	jmp	.label_2377
	.section	.text
	.align	32
	#Procedure 0x41716b
	.globl sub_41716b
	.type sub_41716b, @function
sub_41716b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417170
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_259]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_260]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_2400
	test	rdx, rdx
	je	.label_2400
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_2400:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4171da
	.globl sub_4171da
	.type sub_4171da, @function
sub_4171da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4171e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4171ee
	.globl sub_4171ee
	.type sub_4171ee, @function
sub_4171ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4171f0

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
	js	.label_2404
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_2407
	cmp	r12d, 0x7fffffff
	je	.label_2402
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
	jne	.label_2405
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_2405:
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
.label_2407:
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
	jbe	.label_2403
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_2406
.label_2403:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_2401
	mov	rdi, r14
	call	free
.label_2401:
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
.label_2406:
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
.label_2404:
	call	abort
.label_2402:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4173ad
	.globl sub_4173ad
	.type sub_4173ad, @function
sub_4173ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4173b0

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
	je	.label_2408
	cmp	r15, -2
	jb	.label_2408
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_2408
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_2408:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x417406
	.globl sub_417406
	.type sub_417406, @function
sub_417406:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417475
	.globl sub_417475
	.type sub_417475, @function
sub_417475:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417482
	.globl sub_417482
	.type sub_417482, @function
sub_417482:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4174a6
	.globl sub_4174a6
	.type sub_4174a6, @function
sub_4174a6:

	nop	word ptr cs:[rax + rax]
