	.section	.text
	.align	16
	#Procedure 0x401c50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_9
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_14:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x401e50

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1d8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_44
	call	setlocale
	mov	edi, OFFSET FLAT:label_50
	mov	esi, OFFSET FLAT:label_51
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_50
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	getpagesize
	cdqe	
	mov	qword ptr [rip + page_size],  rax
	mov	rdi, qword ptr [rip + stdout]
	xor	r13d, r13d
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	edi, OFFSET FLAT:label_61
	call	getenv
	test	rax, rax
	setne	byte ptr [rip + posixly_correct]
	mov	byte ptr [rip + print_bytes],  0
	mov	byte ptr [rip + print_chars],  0
	mov	byte ptr [rip + print_words],  0
	mov	byte ptr [rip + print_lines],  0
	mov	byte ptr [rip + print_linelength],  0
	mov	qword ptr [rip + max_line_length],  0
	mov	qword ptr [rip + total_bytes],  0
	mov	qword ptr [rip + total_chars],  0
	mov	qword ptr [rip + total_words],  0
	mov	qword ptr [rip + total_lines],  0
	jmp	.label_64
.label_572:
	mov	byte ptr [rip + print_linelength],  1
	nop	dword ptr [rax]
.label_64:
	mov	edx, OFFSET FLAT:label_80
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_82
	add	eax, -0x4c
	cmp	eax, 0x34
	ja	.label_52
	jmp	qword ptr [(rax * 8) + label_87]
.label_573:
	mov	byte ptr [rip + print_bytes],  1
	jmp	.label_64
.label_576:
	mov	byte ptr [rip + print_words],  1
	jmp	.label_64
.label_577:
	mov	r13, qword ptr [rip + optarg]
	jmp	.label_64
.label_574:
	mov	byte ptr [rip + print_lines],  1
	jmp	.label_64
.label_575:
	mov	byte ptr [rip + print_chars],  1
	jmp	.label_64
.label_82:
	cmp	eax, -1
	jne	.label_94
	mov	al, byte ptr [rip + print_lines]
	test	al, al
	jne	.label_96
	mov	al, byte ptr [rip + print_words]
	test	al, al
	jne	.label_96
	mov	al, byte ptr [rip + print_chars]
	test	al, al
	jne	.label_96
	mov	al, byte ptr [rip + print_bytes]
	test	al, al
	jne	.label_96
	mov	al, byte ptr [rip + print_linelength]
	test	al, al
	jne	.label_96
	mov	byte ptr [rip + print_bytes],  1
	mov	byte ptr [rip + print_words],  1
	mov	byte ptr [rip + print_lines],  1
.label_96:
	movsxd	rax, dword ptr [rip + optind]
	test	r13, r13
	je	.label_108
	cmp	eax, ebp
	jl	.label_107
	cmp	byte ptr [r13], 0x2d
	jne	.label_28
	cmp	byte ptr [r13 + 1], 0
	je	.label_29
.label_28:
	mov	esi, OFFSET FLAT:label_31
	mov	rdi, r13
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_34
.label_56:
	mov	rdi, rbx
	call	fileno
	lea	rdx, [rsp + 0x28]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	test	eax, eax
	jne	.label_38
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0x8000
	jne	.label_38
	mov	rax, qword ptr [rsp + 0x58]
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rsp + 8], xmm0
	call	physmem_available
	movapd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_46]
	movsd	xmm0, qword ptr [rip + label_47]
	ucomisd	xmm1, xmm0
	ja	.label_48
	call	physmem_available
	mulsd	xmm0, qword ptr [rip + label_46]
.label_48:
	ucomisd	xmm0, qword ptr [rsp + 8]
	jae	.label_57
.label_38:
	mov	rdi, rbx
	call	argv_iter_init_stream
	mov	r15, rax
	xor	edx, edx
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_45
.label_108:
	sub	ebp, eax
	lea	rax, [rbx + rax*8]
	mov	r14d, OFFSET FLAT:main.stdin_only
	cmovg	r14, rax
	movsxd	rax, ebp
	mov	ebx, 1
	cmovg	rbx, rax
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	r15, rax
	xor	edx, edx
.label_45:
	test	r15, r15
	je	.label_70
	test	rbx, rbx
	mov	eax, 1
	cmovne	rax, rbx
	movabs	rcx, 0xd79435e50d7944
	cmp	rax, rcx
	jae	.label_70
	mov	qword ptr [rsp + 0x20], rdx
	imul	rdi, rax, 0x98
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_72
	cmp	rbx, 1
	jne	.label_76
	movzx	eax, byte ptr [rip + print_lines]
	movzx	ecx, byte ptr [rip + print_words]
	add	ecx, eax
	movzx	eax, byte ptr [rip + print_chars]
	add	eax, ecx
	movzx	ecx, byte ptr [rip + print_bytes]
	add	ecx, eax
	movzx	eax, byte ptr [rip + print_linelength]
	add	eax, ecx
	cmp	eax, 1
	jne	.label_76
.label_72:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 1
	jmp	.label_85
.label_76:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 8]
	nop	word ptr cs:[rax + rax]
.label_101:
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_90
	cmp	byte ptr [rsi], 0x2d
	jne	.label_92
	cmp	byte ptr [rsi + 1], 0
	je	.label_90
.label_92:
	mov	edi, 1
	mov	rdx, rbp
	call	__xstat
	jmp	.label_95
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rbp
	call	__fxstat
.label_95:
	mov	dword ptr [rbp - 8], eax
	add	rbp, 0x98
	add	r14, 8
	dec	rbx
	jne	.label_101
.label_85:
	mov	edi, 1
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_104
	mov	rax, qword ptr [rsp + 8]
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	jg	.label_104
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	esi, 1
	xor	ecx, ecx
	mov	edx, 0xf000
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_109
	nop	
.label_35:
	mov	ebp, dword ptr [rax + 0x78]
	add	rax, 0x98
.label_109:
	test	ebp, ebp
	jne	.label_32
	mov	ebp, dword ptr [rax]
	and	ebp, edx
	cmp	ebp, 0x8000
	jne	.label_33
	add	rcx, qword ptr [rax + 0x18]
	jmp	.label_32
.label_33:
	mov	esi, 7
	nop	word ptr cs:[rax + rax]
.label_32:
	dec	rdi
	jne	.label_35
	mov	edi, 1
	cmp	rcx, 0xa
	jb	.label_37
	mov	edi, 1
	movabs	rbp, 0xcccccccccccccccd
	nop	
.label_42:
	inc	edi
	mov	rax, rcx
	mul	rbp
	shr	rdx, 3
	cmp	rcx, 0x63
	mov	rcx, rdx
	ja	.label_42
.label_37:
	cmp	edi, esi
	cmovl	edi, esi
.label_104:
	mov	dword ptr [rip + number_width],  edi
	lea	rsi, [rsp + 0x28]
	mov	rdi, r15
	call	argv_iter
	mov	rbx, rax
	mov	r14b, 1
	test	rbx, rbx
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_53
	mov	r14b, 1
	xor	r12d, r12d
	jmp	.label_58
.label_77:
	xor	eax, eax
	jmp	.label_59
.label_111:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	jmp	.label_63
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	error
	mov	al, 1
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_58:
	test	r13, r13
	je	.label_60
	cmp	byte ptr [r13], 0x2d
	jne	.label_60
	cmp	byte ptr [r13 + 1], 0
	jne	.label_60
	movzx	ecx, byte ptr [rbx]
	cmp	cl, 0x2d
	jne	.label_77
	cmp	byte ptr [rbx + 1], 0
	je	.label_79
	nop	word ptr cs:[rax + rax]
.label_60:
	xor	eax, eax
.label_41:
	movzx	ecx, byte ptr [rbx]
.label_59:
	test	cl, cl
	je	.label_81
	test	al, al
	je	.label_83
	xor	r14d, r14d
	jmp	.label_43
	nop	dword ptr [rax]
.label_81:
	test	r13, r13
	je	.label_88
	mov	rdi, r15
	call	argv_iter_n_args
	mov	r15, rax
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_97
	xor	eax, eax
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r15, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	error
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_83:
	test	rbp, rbp
	mov	rax, r12
	cmove	rax, rbp
	imul	rbp, rax, 0x98
	add	rbp, qword ptr [rsp + 8]
	cmp	cl, 0x2d
	jne	.label_105
	cmp	byte ptr [rbx + 1], 0
	je	.label_111
.label_105:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r15d, eax
	cmp	r15d, -1
	je	.label_30
	xor	ecx, ecx
	mov	edi, r15d
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_84
.label_30:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_84:
	mov	r15, qword ptr [rsp + 0x18]
.label_63:
	and	r14b, bpl
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_43
.label_88:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
.label_43:
	test	rbp, rbp
	jne	.label_102
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 1
.label_102:
	inc	r12
	mov	rdi, r15
	lea	rsi, [rsp + 0x28]
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_58
.label_53:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	eax, 2
	je	.label_62
	cmp	eax, 4
	jne	.label_65
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_73
.label_62:
	test	r13, r13
	jne	.label_73
	test	r14b, r14b
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_75
	mov	rdi, r15
	call	argv_iter_n_args
	test	rax, rax
	jne	.label_75
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	xor	esi, esi
	mov	rcx, -1
	mov	rdx, qword ptr [rsp + 8]
	call	wc
	and	al, r14b
	mov	r14b, al
	jmp	.label_75
.label_73:
	mov	rbx, qword ptr [rsp + 0x20]
.label_75:
	test	bl, bl
	je	.label_86
	lea	rdi, [rsp + 0xb8]
	call	readtokens0_free
.label_86:
	mov	rdi, r15
	call	argv_iter_n_args
	cmp	rax, 2
	jb	.label_89
	mov	rbx, qword ptr [rip + total_lines]
	mov	rbp, qword ptr [rip + total_words]
	mov	r15, qword ptr [rip + total_chars]
	mov	r12, qword ptr [rip + total_bytes]
	mov	r13, qword ptr [rip + max_line_length]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r15
	mov	r15, qword ptr [rsp + 0x18]
	mov	rcx, r12
	mov	r8, r13
	mov	r9, rax
	call	write_counts
.label_89:
	mov	rdi, r15
	call	argv_iter_free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_106
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_110
.label_106:
	not	r14b
	and	r14b, 1
	movzx	eax, r14b
	add	rsp, 0x1d8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_29:
	mov	rbx, qword ptr [rip + stdin]
	jmp	.label_56
.label_57:
	lea	rbp, [rsp + 0xb8]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	je	.label_39
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_39
	mov	rbx, qword ptr [rsp + 0xb8]
	mov	r14, qword ptr [rsp + 0xc0]
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	r15, rax
	mov	dl, 1
	jmp	.label_45
.label_94:
	cmp	eax, 0xffffff7d
	je	.label_67
	cmp	eax, 0xffffff7e
	jne	.label_52
	xor	edi, edi
	call	usage
.label_67:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_13
	mov	edx, OFFSET FLAT:label_18
	mov	r8d, OFFSET FLAT:label_54
	mov	r9d, OFFSET FLAT:label_55
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_52:
	mov	edi, 1
	call	usage
.label_70:
	call	xalloc_die
.label_65:
	cmp	eax, 3
	jne	.label_71
	call	xalloc_die
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [rbx + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_34:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_110:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_93
	xor	eax, eax
	call	error
.label_71:
	mov	edi, OFFSET FLAT:label_98
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 0x33f
	mov	ecx, OFFSET FLAT:label_100
	call	__assert_fail
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl write_counts
	.type write_counts, @function
write_counts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	r14, r8
	mov	r12, rcx
	mov	rbp, rdx
	mov	rax, rsi
	mov	ebx, OFFSET FLAT:label_112
	cmp	byte ptr [rip + print_lines],  1
	jne	.label_113
	mov	r15d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rbx, rax
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_112
	xor	eax, eax
	mov	edx, r15d
	call	__printf_chk
	mov	rax, rbx
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_113:
	cmp	byte ptr [rip + print_words],  1
	jne	.label_117
	mov	r15, r13
	mov	r13, r12
	mov	r12, r14
	mov	r14d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, r14d
	mov	r14, r12
	mov	r12, r13
	mov	r13, r15
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_117:
	cmp	byte ptr [rip + print_chars],  1
	jne	.label_118
	mov	r15d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, r15d
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_118:
	cmp	byte ptr [rip + print_bytes],  1
	jne	.label_116
	mov	ebp, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, r12
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_116:
	cmp	byte ptr [rip + print_linelength],  1
	jne	.label_114
	mov	ebp, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, r14
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
.label_114:
	test	r13, r13
	je	.label_122
	mov	esi, 0xa
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_115
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	r13, rax
.label_115:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_119
	xor	eax, eax
	mov	rdx, r13
	call	__printf_chk
.label_122:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_121
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_120:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_121:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_120
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029c0

	.globl wc
	.type wc, @function
wc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4068
	mov	r14, rcx
	mov	rbp, rdx
	mov	r13, rsi
	mov	dword ptr [rsp + 4], edi
	test	r13, r13
	mov	rax, r13
	jne	.label_174
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
.label_174:
	mov	qword ptr [rsp + 0x40], rax
	call	__ctype_get_mb_cur_max
	mov	cl, byte ptr [rip + print_bytes]
	cmp	rax, 2
	jb	.label_123
	mov	r12b, byte ptr [rip + print_chars]
	jmp	.label_128
.label_123:
	or	cl, byte ptr [rip + print_chars]
	and	cl, 1
	xor	r12d, r12d
.label_128:
	mov	bl, byte ptr [rip + print_linelength]
	or	bl, byte ptr [rip + print_words]
	test	cl, cl
	sete	al
	test	r12b, r12b
	setne	r15b
	or	r15b, al
	mov	al, byte ptr [rip + print_lines]
	test	al, al
	jne	.label_136
	test	bl, 1
	jne	.label_136
	test	r15b, r15b
	jne	.label_136
	xor	eax, eax
	jmp	.label_148
.label_136:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 4]
	call	fdadvise
	mov	al, byte ptr [rip + print_lines]
.label_148:
	or	al, bl
	or	al, r15b
	test	al, 1
	je	.label_155
	test	r12b, r12b
	setne	al
	or	bl, al
	test	bl, 1
	mov	qword ptr [rsp + 0x38], r13
	mov	dword ptr [rsp + 0x24], r12d
	je	.label_161
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_169
	mov	qword ptr [rsp + 0x50], 0
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_184:
	xor	ebx, ebx
	jmp	.label_137
	nop	word ptr cs:[rax + rax]
.label_126:
	lea	rsi, [r13 + 1]
	xor	eax, eax
	cmp	r15, 0x4000
	sete	al
	cmovne	rsi, r13
	sub	r15, rax
	lea	rdi, [rsp + 0x60]
	mov	rdx, r15
	call	memmove
	mov	rbx, r15
	jmp	.label_137
	nop	dword ptr [rax]
.label_141:
	mov	qword ptr [rsp + 0x50], rbp
	mov	r12b, 1
	test	r15, r15
	mov	ebx, 0
	jne	.label_126
	nop	word ptr cs:[rax + rax]
.label_137:
	lea	rsi, [rsp + rbx + 0x60]
	mov	edx, 0x4000
	sub	rdx, rbx
	mov	edi, dword ptr [rsp + 4]
	call	safe_read
	cmp	rax, -1
	je	.label_153
	mov	bpl, 1
	test	rax, rax
	je	.label_156
	add	qword ptr [rsp + 0x48], rax
	add	rbx, rax
	mov	r15, rbx
	lea	r13, [rsp + 0x60]
	jmp	.label_158
.label_177:
	movzx	ebp, byte ptr [r13]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	je	.label_132
	inc	qword ptr [rsp + 0x28]
	test	ah, 0x20
	jne	.label_129
.label_144:
	mov	r14b, 1
	jmp	.label_132
.label_175:
	cmp	eax, 0x202f
	je	.label_129
	cmp	eax, 0x2060
	je	.label_129
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_158:
	test	r12b, 1
	jne	.label_152
	movzx	eax, byte ptr [r13]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_152
	movsx	edi, al
	mov	dword ptr [rsp + 0x14], edi
	xor	eax, eax
	mov	ebx, 1
	jmp	.label_185
	nop	
.label_152:
	mov	rbp, qword ptr [rsp + 0x50]
	lea	rdi, [rsp + 0x14]
	mov	rsi, r13
	mov	rdx, r15
	lea	rcx, [rsp + 0x50]
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_139
	cmp	rbx, -2
	je	.label_141
	lea	rdi, [rsp + 0x50]
	call	mbsinit
	test	eax, eax
	sete	r12b
	test	rbx, rbx
	je	.label_172
	mov	al, 1
	mov	edi, dword ptr [rsp + 0x14]
.label_185:
	lea	ecx, [rdi - 9]
	cmp	ecx, 0x17
	ja	.label_149
	jmp	qword ptr [(rcx * 8) + label_150]
.label_582:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	and	eax, 7
	neg	rax
	lea	rcx, [rcx + rax + 8]
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_129
	nop	word ptr cs:[rax + rax]
.label_139:
	inc	r13
	dec	r15
	mov	r12b, 1
	jmp	.label_147
.label_172:
	mov	dword ptr [rsp + 0x14], 0
	xor	edi, edi
	mov	ebx, 1
	jmp	.label_170
.label_583:
	inc	qword ptr [rsp + 0x30]
.label_584:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_129
.label_149:
	test	al, al
	je	.label_177
.label_170:
	call	iswprint
	test	eax, eax
	je	.label_132
	cmp	byte ptr [rip + print_linelength],  1
	jne	.label_138
	mov	edi, dword ptr [rsp + 0x14]
	call	wcwidth
	test	eax, eax
	mov	ecx, 0
	cmovs	eax, ecx
	cdqe	
	add	qword ptr [rsp + 0x28], rax
.label_138:
	mov	edi, dword ptr [rsp + 0x14]
	call	iswspace
	test	eax, eax
	jne	.label_129
	cmp	byte ptr [rip + posixly_correct],  0
	jne	.label_144
	mov	eax, dword ptr [rsp + 0x14]
	cmp	eax, 0x202e
	jg	.label_175
	cmp	eax, 0xa0
	je	.label_129
	cmp	eax, 0x2007
	je	.label_129
	jmp	.label_144
.label_585:
	inc	qword ptr [rsp + 0x28]
	nop	dword ptr [rax + rax]
.label_129:
	and	r14b, 1
	movzx	eax, r14b
	add	qword ptr [rsp + 0x58], rax
	xor	r14d, r14d
.label_132:
	mov	rax, qword ptr [rsp + 0x18]
	add	r13, rbx
	sub	r15, rbx
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_147:
	test	r15, r15
	jne	.label_158
	jmp	.label_184
.label_155:
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jle	.label_163
	lea	rdx, [rbp + 8]
	mov	edi, 1
	mov	esi, dword ptr [rsp + 4]
	call	__fxstat
	mov	dword ptr [rbp], eax
.label_163:
	xor	r15d, r15d
	test	eax, eax
	jne	.label_125
	movzx	eax, word ptr [rbp + 0x20]
	or	eax, 0x2000
	xor	r15d, r15d
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_125
	mov	rbx, qword ptr [rbp + 0x38]
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_125
	test	r14, r14
	jns	.label_178
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp + 4]
	call	lseek
	mov	r14, rax
.label_178:
	xor	edx, edx
	mov	rax, rbx
	div	qword ptr [rip + page_size]
	test	rdx, rdx
	je	.label_164
	xor	r8d, r8d
	sub	rbx, r14
	cmovb	rbx, r8
	mov	bpl, 1
	mov	r15, rbx
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_127
.label_161:
	lea	r14, [rsp + 0x60]
	xor	r15d, r15d
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_135
.label_160:
	add	r15, r12
	mov	rcx, rbp
	sub	rcx, r13
	mov	rax, r12
	movabs	rdx, 0x8888888888888889
	mul	rdx
	shr	rdx, 3
	cmp	rcx, rdx
	setbe	bl
	mov	r13, rbp
.label_135:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r14
	call	safe_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_154
	cmp	r12, -1
	je	.label_159
	test	bl, bl
	je	.label_162
	mov	esi, 0xa
	mov	rdi, r14
	mov	rdx, r12
	call	memchr
	test	rax, rax
	mov	rbp, r13
	je	.label_160
	lea	rbx, [rsp + r12 + 0x60]
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_176:
	inc	rax
	inc	rbp
	mov	rdx, rbx
	sub	rdx, rax
	mov	esi, 0xa
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_176
	jmp	.label_160
	nop	word ptr cs:[rax + rax]
.label_162:
	lea	rcx, [r12 - 1]
	mov	eax, r12d
	and	eax, 7
	cmp	rcx, 7
	mov	rsi, r14
	mov	rbp, r13
	jb	.label_145
	mov	rcx, rax
	sub	rcx, r12
	mov	rdx, r14
	mov	rbp, r13
	nop	word ptr [rax + rax]
.label_130:
	xor	esi, esi
	cmp	byte ptr [rdx], 0xa
	sete	sil
	add	rsi, rbp
	xor	edi, edi
	cmp	byte ptr [rdx + 1], 0xa
	sete	dil
	add	rdi, rsi
	xor	esi, esi
	cmp	byte ptr [rdx + 2], 0xa
	sete	sil
	add	rsi, rdi
	xor	edi, edi
	cmp	byte ptr [rdx + 3], 0xa
	sete	dil
	add	rdi, rsi
	xor	esi, esi
	cmp	byte ptr [rdx + 4], 0xa
	sete	sil
	add	rsi, rdi
	xor	edi, edi
	cmp	byte ptr [rdx + 5], 0xa
	sete	dil
	add	rdi, rsi
	xor	ebx, ebx
	cmp	byte ptr [rdx + 6], 0xa
	sete	bl
	add	rbx, rdi
	xor	ebp, ebp
	cmp	byte ptr [rdx + 7], 0xa
	lea	rsi, [rdx + 8]
	sete	bpl
	add	rbp, rbx
	add	rcx, 8
	mov	rdx, rsi
	jne	.label_130
.label_145:
	test	rax, rax
	je	.label_160
	neg	rax
	nop	
.label_166:
	xor	ecx, ecx
	cmp	byte ptr [rsi], 0xa
	lea	rsi, [rsi + 1]
	sete	cl
	add	rbp, rcx
	inc	rax
	jne	.label_166
	jmp	.label_160
.label_169:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	r14, [rsp + 0x60]
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_171
	nop	dword ptr [rax]
.label_181:
	mov	qword ptr [rsp + 8], rcx
	mov	r15, qword ptr [rsp + 0x48]
	add	r15, qword ptr [rsp + 0x18]
	lea	r14, [rsp + 0x60]
.label_171:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r14
	call	safe_read
	cmp	rax, -1
	je	.label_183
	mov	bpl, 1
	test	rax, rax
	je	.label_186
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_179:
	movsx	eax, byte ptr [r14]
	movzx	ebp, al
	add	eax, -9
	cmp	eax, 0x17
	ja	.label_134
	jmp	qword ptr [(rax * 8) + label_140]
.label_527:
	mov	eax, r13d
	and	eax, 7
	neg	rax
	lea	r13, [r13 + rax + 8]
	jmp	.label_143
.label_528:
	inc	qword ptr [rsp + 0x30]
.label_529:
	cmp	r13, rcx
	cmova	rcx, r13
	xor	r13d, r13d
	jmp	.label_143
.label_134:
	mov	qword ptr [rsp + 8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_151
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_146
.label_530:
	inc	r13
	jmp	.label_143
.label_151:
	inc	r13
	test	ah, 0x20
	jne	.label_131
	mov	edi, ebp
	call	btowc
	cmp	byte ptr [rip + posixly_correct],  0
	je	.label_165
	mov	bl, 1
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_146
.label_165:
	cmp	eax, 0x202e
	jg	.label_173
	cmp	eax, 0xa0
	je	.label_131
	cmp	eax, 0x2007
	jmp	.label_124
.label_173:
	cmp	eax, 0x202f
	je	.label_131
	cmp	eax, 0x2060
.label_124:
	mov	rcx, qword ptr [rsp + 8]
	je	.label_143
	mov	bl, 1
	jmp	.label_146
.label_131:
	mov	rcx, qword ptr [rsp + 8]
	nop	
.label_143:
	and	bl, 1
	movzx	eax, bl
	add	r12, rax
	xor	ebx, ebx
.label_146:
	inc	r14
	dec	r15
	jne	.label_179
	jmp	.label_181
.label_154:
	xor	r12d, r12d
	xor	r14d, r14d
	mov	eax, dword ptr [rsp + 0x24]
	xor	r8d, r8d
	jmp	.label_182
.label_159:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r8d, r8d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebp, ebp
	mov	eax, dword ptr [rsp + 0x24]
.label_182:
	mov	rbx, r13
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_142
.label_153:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_156:
	mov	r8, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rax, r8
	cmova	r8, rax
	and	r14b, 1
	movzx	r14d, r14b
	add	r14, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x24]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_142
.label_183:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_186:
	mov	r8, qword ptr [rsp + 8]
	cmp	r13, r8
	cmova	r8, r13
	and	bl, 1
	movzx	r14d, bl
	add	r14, r12
	xor	r12d, r12d
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x24]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_142
.label_164:
	mov	rax, qword ptr [rbp + 0x40]
	lea	rcx, [rax + 1]
	movabs	rdx, 0x2000000000000001
	cmp	rax, rdx
	mov	edx, 0x201
	cmovae	rcx, rdx
	test	rax, rax
	cmovle	rcx, rdx
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	xor	r15d, r15d
	test	r14, r14
	js	.label_125
	sub	rbx, rdx
	mov	rbp, rbx
	sub	rbp, r14
	jle	.label_125
	mov	edx, 1
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, rbx
	call	lseek
	xor	r15d, r15d
	test	rax, rax
	cmovns	r15, rbp
.label_125:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 4]
	call	fdadvise
	lea	rbx, [rsp + 0x60]
	jmp	.label_157
	nop	dword ptr [rax]
.label_168:
	add	r15, rax
.label_157:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, rbx
	call	safe_read
	mov	bpl, 1
	test	rax, rax
	je	.label_167
	cmp	rax, -1
	jne	.label_168
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r8d, r8d
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	jmp	.label_127
.label_167:
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	xor	r8d, r8d
.label_127:
	mov	r9, r13
.label_142:
	movzx	eax, al
	movzx	ecx, byte ptr [rip + print_chars]
	cmp	eax, ecx
	cmovb	r12, r15
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r15
	mov	r13, r8
	call	write_counts
	add	qword ptr [rip + total_lines],  rbx
	add	qword ptr [rip + total_words],  r14
	add	qword ptr [rip + total_chars],  r12
	add	qword ptr [rip + total_bytes],  r15
	cmp	r13, qword ptr [rip + max_line_length]
	jbe	.label_133
	mov	qword ptr [rip + max_line_length],  r13
.label_133:
	mov	eax, ebp
	add	rsp, 0x4068
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403360

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_187
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_187:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_188
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_188:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_189
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_191
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_190
.label_189:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_193
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_190
.label_191:
	mov	rdi, qword ptr [rbx]
	call	feof
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx + 2]
	mov	dword ptr [r14], eax
	jmp	.label_192
.label_193:
	mov	dword ptr [r14], 2
.label_192:
	xor	eax, eax
.label_190:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403450

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_194
	mov	rax, qword ptr [rdi + 8]
	ret	
.label_194:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403470

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_195
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_195:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403490
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_201
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_198
	cmp	dword ptr [rbp], 0x20
	jne	.label_198
.label_201:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_197
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_198:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_196
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_197:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_196:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_200
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403570

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403580
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_202
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_202:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035a0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_203
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_204
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_204:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403610
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_205
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_205:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_206
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_206:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403660
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680
	.globl physmem_total
	.type physmem_total, @function
physmem_total:

	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_211
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_210:
	mulsd	xmm0, xmm1
	jmp	.label_213
.label_211:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_212
	movsd	xmm0, qword ptr [rip + label_207]
.label_213:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_212:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_208]
	subpd	xmm0, xmmword ptr [rip + label_209]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_210
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_221
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_215
.label_221:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_214
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_220
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_217:
	mulsd	xmm0, xmm1
	jmp	.label_218
.label_214:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1, xmmword ptr [rip + label_208]
	punpckldq	xmm0, xmm1
	movapd	xmm2, xmmword ptr [rip + label_209]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
	jmp	.label_215
.label_220:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_219
	movsd	xmm0, qword ptr [rip + label_207]
.label_218:
	mulsd	xmm0, qword ptr [rip + label_216]
.label_215:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_219:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_208]
	subpd	xmm0, xmmword ptr [rip + label_209]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_217
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_222
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_224
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_224
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_227
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_227:
	mov	rbx, r14
.label_224:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_222:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_223
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038d0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403920
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403930
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_228
	test	rdx, rdx
	je	.label_228
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_228:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

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
.label_298:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_295
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_345]
.label_653:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_305
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_237
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_654:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_263
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_263
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_332:
	cmp	r14, r11
	jae	.label_302
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_302:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_332
.label_263:
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
	jmp	.label_230
.label_646:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_230
.label_649:
	mov	al, 1
.label_647:
	mov	r12b, 1
.label_650:
	test	r12b, 1
	mov	cl, 1
	je	.label_348
	mov	ecx, eax
.label_348:
	mov	al, cl
.label_648:
	test	r12b, 1
	jne	.label_350
	test	r11, r11
	je	.label_347
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_347:
	mov	r14d, 1
	jmp	.label_233
.label_350:
	xor	r14d, r14d
.label_233:
	mov	ecx, OFFSET FLAT:label_237
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_230
.label_651:
	test	r12b, 1
	jne	.label_249
	test	r11, r11
	je	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_251:
	mov	r14d, 1
	jmp	.label_255
.label_652:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_257
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_230
.label_249:
	xor	r14d, r14d
.label_255:
	mov	eax, OFFSET FLAT:label_257
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_230:
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
	jmp	.label_277
	nop	dword ptr [rax]
.label_294:
	inc	rsi
.label_277:
	cmp	rbp, -1
	je	.label_315
	cmp	rsi, rbp
	jne	.label_317
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_322
.label_317:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_321
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_267
	cmp	rbp, -1
	jne	.label_267
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
.label_267:
	cmp	rbx, rbp
	jbe	.label_337
.label_321:
	xor	r8d, r8d
.label_242:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_311
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_340]
.label_541:
	test	rsi, rsi
	jne	.label_241
	jmp	.label_272
	nop	word ptr cs:[rax + rax]
.label_337:
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
	jne	.label_238
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_242
	jmp	.label_243
.label_238:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_242
.label_545:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_266
	test	rsi, rsi
	jne	.label_268
	cmp	rbp, 1
	je	.label_272
	xor	r13d, r13d
	jmp	.label_231
.label_534:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_275
	cmp	byte ptr [rsp + 6], 0
	jne	.label_276
	cmp	r12d, 2
	jne	.label_280
	mov	eax, r9d
	and	al, 1
	jne	.label_280
	cmp	r14, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_285
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_285:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_306
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_306:
	add	r14, 3
	mov	r9b, 1
.label_280:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_299
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_299:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_303
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_303
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_303
	cmp	r14, r11
	jae	.label_254
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_254:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_333
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_333:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_231
.label_535:
	mov	bl, 0x62
	jmp	.label_324
.label_536:
	mov	cl, 0x74
	jmp	.label_326
.label_537:
	mov	bl, 0x76
	jmp	.label_324
.label_538:
	mov	bl, 0x66
	jmp	.label_324
.label_539:
	mov	cl, 0x72
	jmp	.label_326
.label_542:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_331
	cmp	byte ptr [rsp + 6], 0
	jne	.label_247
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
	jae	.label_336
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_336:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_344
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_344:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_349
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_349:
	add	r14, 3
	xor	r9d, r9d
.label_331:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_231
.label_543:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_235
	cmp	r12d, 2
	jne	.label_241
	cmp	byte ptr [rsp + 6], 0
	je	.label_241
	jmp	.label_247
.label_544:
	cmp	r12d, 2
	jne	.label_250
	cmp	byte ptr [rsp + 6], 0
	jne	.label_247
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_232
.label_311:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_261
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
.label_253:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_279
	test	r8b, r8b
	je	.label_279
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_231
.label_266:
	test	rsi, rsi
	jne	.label_301
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_301
.label_272:
	mov	dl, 1
.label_540:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_247
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_231:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_309
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_297
	jmp	.label_314
	nop	word ptr cs:[rax + rax]
.label_309:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_314
.label_297:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_319
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_232
	jmp	.label_329
	nop	dword ptr [rax]
.label_314:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_329
	jmp	.label_232
.label_319:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_329
.label_275:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_294
	xor	r15d, r15d
	jmp	.label_241
.label_250:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_326
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_232
.label_326:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_247
.label_324:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_231
	nop	word ptr cs:[rax + rax]
.label_329:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_276
	cmp	r12d, 2
	jne	.label_229
	mov	eax, r9d
	and	al, 1
	jne	.label_229
	cmp	r14, r11
	jae	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_239:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_300
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_300:
	add	r14, 3
	mov	r9b, 1
.label_229:
	cmp	r14, r11
	jae	.label_343
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_343:
	inc	r14
	jmp	.label_259
.label_261:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_262
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_262:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_341:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_284
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_287
	cmp	rbp, -2
	je	.label_293
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_327
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_258:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_346
	bt	rsi, rdx
	jb	.label_313
.label_346:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_258
.label_327:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_288
	xor	r13d, r13d
.label_288:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_341
	jmp	.label_253
.label_303:
	xor	r13d, r13d
	jmp	.label_231
.label_301:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_231
.label_235:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_241
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_241
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_241
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_271
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_291
	cmp	byte ptr [rsp + 6], 0
	jne	.label_308
	cmp	r14, r11
	jae	.label_264
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_264:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_236
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_236:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_290
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_290:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_231
.label_241:
	xor	eax, eax
.label_268:
	xor	r13d, r13d
	jmp	.label_231
.label_279:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_260
	nop	word ptr cs:[rax + rax]
.label_335:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_260:
	test	r8b, r8b
	je	.label_269
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_270
	cmp	r14, r11
	jae	.label_273
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_273:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_270
	nop	dword ptr [rax]
.label_269:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_243
	cmp	r12d, 2
	jne	.label_283
	mov	eax, r9d
	and	al, 1
	jne	.label_283
	cmp	r14, r11
	jae	.label_286
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_286:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_289
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_289:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_296
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_296:
	add	r14, 3
	mov	r9b, 1
.label_283:
	cmp	r14, r11
	jae	.label_316
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_316:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_265
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_265:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_312
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_312:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_270:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_232
	test	r9b, 1
	je	.label_325
	mov	ebx, eax
	and	bl, 1
	jne	.label_325
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_328
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_328:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_234
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_234:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_325:
	cmp	r14, r11
	jae	.label_335
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_335
	nop	word ptr cs:[rax + rax]
.label_232:
	test	r9b, 1
	je	.label_339
	and	al, 1
	jne	.label_339
	cmp	r14, r11
	jae	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_342:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_252
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	r14, 2
	xor	r9d, r9d
.label_339:
	mov	ebx, r15d
.label_259:
	cmp	r14, r11
	jae	.label_338
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_338:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_294
.label_287:
	xor	r13d, r13d
.label_284:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_253
.label_293:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_246
	mov	rsi, qword ptr [rsp + 0x58]
.label_256:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_334
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_256
	xor	r13d, r13d
	jmp	.label_253
.label_246:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_253
.label_334:
	xor	r13d, r13d
	jmp	.label_253
.label_271:
	xor	r13d, r13d
	jmp	.label_231
.label_291:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_231
	nop	dword ptr [rax + rax]
.label_318:
	mov	rcx, rsi
.label_322:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_274
	or	al, dl
	je	.label_278
.label_274:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_281
	or	al, dl
	jne	.label_281
	test	r10b, 1
	jne	.label_292
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_281
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_298
.label_281:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_304
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_307
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_307
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_320:
	cmp	r14, r11
	jae	.label_330
	mov	byte ptr [rcx + r14], al
.label_330:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_320
	jmp	.label_307
.label_276:
	mov	qword ptr [rsp + 0x20], rbp
.label_243:
	mov	rdx, rdi
	jmp	.label_323
.label_247:
	mov	qword ptr [rsp + 0x20], rbp
.label_313:
	mov	rdx, rdi
	mov	eax, 2
.label_310:
	mov	qword ptr [rsp + 0x38], rax
.label_323:
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
.label_240:
	mov	r14, rax
.label_244:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_278:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_323
.label_292:
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
	jmp	.label_240
.label_304:
	mov	rcx, qword ptr [rsp + 8]
.label_307:
	cmp	r14, r11
	jae	.label_244
	mov	byte ptr [rcx + r14], 0
	jmp	.label_244
.label_308:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_310
.label_295:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404850
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920
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
	je	.label_351
	mov	qword ptr [rax], rbx
.label_351:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_352
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_354:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_354
.label_352:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_355
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_356], OFFSET FLAT:slot0
.label_355:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_353
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_353:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ac0

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
	js	.label_357
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_360
	cmp	r12d, 0x7fffffff
	je	.label_362
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
	jne	.label_358
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_358:
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
.label_360:
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
	jbe	.label_363
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_359
.label_363:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_361
	mov	rdi, r14
	call	free
.label_361:
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
.label_359:
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
.label_357:
	call	abort
.label_362:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cb0
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0
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
	je	.label_364
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
.label_364:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
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
	je	.label_365
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
.label_365:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0

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
	je	.label_366
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
.label_366:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20
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
	je	.label_367
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
.label_367:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
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
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
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
	.align	16
	#Procedure 0x404f70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
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
	.align	16
	#Procedure 0x404fd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030

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
	je	.label_371
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
.label_371:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_372
	test	rdx, rdx
	je	.label_372
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_372:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_373
	test	rdx, rdx
	je	.label_373
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_373:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_374
	test	rsi, rsi
	je	.label_374
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_374:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405220
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_368]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_369]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_370]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_375
	test	rsi, rsi
	je	.label_375
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
.label_375:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405290
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052a0
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0
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
	.section	.text
	.align	16
	#Procedure 0x405300

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
	jne	.label_377
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_382
	cmp	ecx, 0x55
	jne	.label_376
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_376
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_376
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_376
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_376
	cmp	byte ptr [rax + 5], 0
	jne	.label_376
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_379
	mov	eax, OFFSET FLAT:label_380
	jmp	.label_381
.label_382:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_376
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_376
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_376
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_376
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_376
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_376
	cmp	byte ptr [rax + 7], 0
	je	.label_378
.label_376:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_257
	mov	eax, OFFSET FLAT:label_237
.label_381:
	cmove	rax, rcx
.label_377:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_378:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_383
	mov	eax, OFFSET FLAT:label_384
	jmp	.label_381
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053d0

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_begin
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405440

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	call	_obstack_free
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405470

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_385
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_391
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_391:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_387
	mov	rdi, rbx
	call	save_token
.label_387:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_389
	jmp	.label_386
.label_385:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_386:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_392
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_394
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_394:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_392:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_390
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_390:
	mov	qword ptr [rax], 0
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rdx, rax
	jne	.label_396
	or	byte ptr [rbx + 0xc0], 2
.label_396:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_395
	mov	qword ptr [rbx + 0x88], rbp
	mov	rcx, rbp
.label_395:
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	mov	rdx, qword ptr [rbx + 0xe0]
	cmp	rdx, rax
	jne	.label_393
	or	byte ptr [rbx + 0x118], 2
.label_393:
	mov	rcx, qword ptr [rbx + 0xf8]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_388
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_388:
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405640

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	r14, r15
	jne	.label_397
	or	byte ptr [rbx + 0x68], 2
.label_397:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + r14]
	not	rax
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	sub	rdi, rdx
	cmp	rsi, rdi
	jbe	.label_398
	mov	qword ptr [rbx + 0x30], rcx
	mov	rax, rcx
.label_398:
	dec	r14
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_399
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_399:
	sub	r14, r15
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_400
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_400:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_402:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_401
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_402
	cmp	rbx, 0x7ff00001
	jb	.label_401
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_402
.label_401:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770

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
	je	.label_413
	mov	edx, OFFSET FLAT:label_408
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_415
.label_413:
	mov	edx, OFFSET FLAT:label_416
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
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
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_404
	jmp	qword ptr [(r12 * 8) + label_405]
.label_601:
	add	rsp, 8
	jmp	.label_403
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
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
	jmp	.label_403
.label_602:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
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
.label_603:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
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
.label_604:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
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
.label_605:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
	jmp	.label_403
.label_606:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
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
	jmp	.label_403
.label_607:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
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
	jmp	.label_403
.label_608:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
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
	jmp	.label_403
.label_610:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
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
	jmp	.label_403
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
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
.label_403:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_422:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_422
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_423
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_425
.label_423:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_425:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_426
	cmp	r10d, 0x29
	jae	.label_435
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_424
.label_435:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_424:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_426
	cmp	r10d, 0x29
	jae	.label_433
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_434
.label_433:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_434:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_426
	cmp	r10d, 0x29
	jae	.label_431
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_432
.label_431:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_432:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_426
	cmp	r10d, 0x29
	jae	.label_429
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_430
.label_429:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_430:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_426
	cmp	r10d, 0x29
	jae	.label_427
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_428
.label_427:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_428:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_426
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_426
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_426
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_426
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_426:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_436
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_436:
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
	.section	.text
	.align	16
	#Procedure 0x405d80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_438
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_441
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_442
	test	rax, rax
	je	.label_441
.label_442:
	pop	rbx
	ret	
.label_441:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_443
	test	rax, rax
	je	.label_444
.label_443:
	pop	rbx
	ret	
.label_444:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e60
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_445
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_446
	test	rbx, rbx
	jne	.label_446
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_446:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_447
	test	rax, rax
	je	.label_445
.label_447:
	pop	rbx
	ret	
.label_445:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_448
	test	rbx, rbx
	jne	.label_448
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_448:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_450
	test	rax, rax
	je	.label_449
.label_450:
	pop	rbx
	ret	
.label_449:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405ee0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_451
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_454
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_452
.label_451:
	test	rcx, rcx
	jne	.label_456
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_456:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_453
.label_452:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_455
	test	rbx, rbx
	jne	.label_455
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_455:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_457
	test	rax, rax
	je	.label_454
.label_457:
	pop	rbx
	ret	
.label_454:
	call	xalloc_die
.label_453:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f80
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_458
	test	rax, rax
	je	.label_459
.label_458:
	pop	rbx
	ret	
.label_459:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fa0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_460
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_463
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_464
	call	free
	xor	eax, eax
	jmp	.label_461
.label_460:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_462
	mov	qword ptr [rsi], rbx
.label_464:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_461
	test	rax, rax
	je	.label_462
.label_461:
	pop	rbx
	ret	
.label_462:
	call	xalloc_die
.label_463:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010
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
	je	.label_466
	test	r14, r14
	je	.label_465
.label_466:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_465:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406050
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_467
	call	rpl_calloc
	test	rax, rax
	je	.label_467
	pop	rcx
	ret	
.label_467:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

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
	je	.label_468
	test	r15, r15
	je	.label_469
.label_468:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_469:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0
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
	je	.label_471
	test	r15, r15
	je	.label_470
.label_471:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_470:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406110

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406140

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_473
	test	rsi, rsi
	mov	ecx, 1
	je	.label_474
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_474
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_473:
	mov	ecx, 1
.label_474:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406190

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_475
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_477
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_475
.label_477:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_475
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_476
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_476:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_475:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_478
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_478
	test	byte ptr [rbx + 1], 1
	je	.label_478
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_478:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250

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
	jne	.label_479
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_479
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_480
.label_479:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_480:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_481
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_481:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062c0

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
	je	.label_482
	cmp	r15, -2
	jb	.label_482
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_482
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_482:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406320

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_483
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_483:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063b0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_484
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_484:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406440

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_485
	test	al, al
	jne	.label_485
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_489
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_488
.label_489:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_488:
	mov	r13, rax
	test	r13, r13
	je	.label_485
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [rbp + r13 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_487
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_487
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_486
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_487
.label_486:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_487:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_485:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406580

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_490
	nop	word ptr cs:[rax + rax]
.label_493:
	mov	rcx, qword ptr [rcx + 8]
.label_490:
	test	rcx, rcx
	je	.label_491
	cmp	rcx, rsi
	jae	.label_493
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_493
	jmp	.label_492
.label_491:
	xor	eax, eax
.label_492:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065b0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_498
	nop	word ptr cs:[rax + rax]
.label_499:
	cmp	rsi, r14
	jae	.label_494
	cmp	qword ptr [rsi], r14
	jae	.label_497
.label_494:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_500
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_496
	nop	
.label_500:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_496:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_499
.label_498:
	test	r14, r14
	je	.label_495
	call	abort
.label_497:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_495:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406630

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_501
	xor	eax, eax
	nop	dword ptr [rax]
.label_502:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_502
.label_501:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, dword ptr [rip + exit_failure]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690

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
	jne	.label_504
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_503
	test	cl, cl
	jne	.label_503
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_503
.label_504:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_503
	call	__errno_location
	mov	dword ptr [rax], 0
.label_503:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_506
	cmp	byte ptr [rax], 0x43
	jne	.label_508
	cmp	byte ptr [rax + 1], 0
	je	.label_505
.label_508:
	mov	esi, OFFSET FLAT:label_507
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_506
.label_505:
	xor	ebx, ebx
.label_506:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406730

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_44
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_509
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x406760

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
