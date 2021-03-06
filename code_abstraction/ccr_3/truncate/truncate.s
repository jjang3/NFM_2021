	.section	.text
	.align	16
	#Procedure 0x401590

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_17:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	.align	16
	#Procedure 0x4017f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_37
	call	setlocale
	mov	edi, OFFSET FLAT:label_43
	mov	esi, OFFSET FLAT:label_44
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_43
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r13d, r13d
	movabs	r12, 0x7fffffffffffffff
	xor	ebp, ebp
	jmp	.label_57
.label_523:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
.label_57:
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_73
	add	eax, -0x63
	cmp	eax, 0x10
	ja	.label_76
	jmp	qword ptr [(rax * 8) + label_78]
.label_521:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_57
.label_522:
	mov	byte ptr [rip + block_mode],  1
	jmp	.label_57
.label_524:
	mov	rbx, qword ptr [rip + optarg]
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	je	.label_93
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ebp, byte ptr [rbx]
	mov	rcx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	jne	.label_98
	dec	rbx
.label_93:
	movsx	ecx, bpl
	add	ecx, -0x25
	cmp	ecx, 0x19
	ja	.label_45
	jmp	qword ptr [(rcx * 8) + label_110]
.label_485:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 5
	jmp	.label_45
.label_486:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 4
	jmp	.label_45
.label_487:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 3
	jmp	.label_45
.label_488:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 2
.label_45:
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_88
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	jne	.label_66
	dec	rbx
.label_88:
	cmp	cl, 0x2d
	je	.label_74
	cmp	cl, 0x2b
	jne	.label_90
.label_74:
	test	r13d, r13d
	mov	r13d, 1
	jne	.label_77
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r12 + 1]
	mov	ecx, OFFSET FLAT:label_100
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r12
	mov	r8, rax
	call	xdectoimax
	mov	rbx, rax
	mov	eax, r13d
	or	eax, 1
	mov	bpl, 1
	cmp	eax, 5
	jne	.label_57
	test	rbx, rbx
	jne	.label_57
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_73:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, -1
	jne	.label_32
	movsxd	r13, dword ptr [rip + optind]
	mov	rsi, qword ptr [rip + ref_file]
	test	bpl, bpl
	jne	.label_38
	test	rsi, rsi
	je	.label_46
.label_38:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_51
	test	bpl, bpl
	je	.label_51
	test	rsi, rsi
	jne	.label_55
.label_51:
	test	bpl, bpl
	jne	.label_89
	test	byte ptr [rip + block_mode],  1
	jne	.label_60
.label_89:
	cmp	r13d, r14d
	jge	.label_61
	test	rsi, rsi
	mov	qword ptr [rsp + 0x20], rbx
	je	.label_65
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_96
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_75
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	jns	.label_80
	jmp	.label_81
.label_65:
	mov	rdx, -1
	jmp	.label_86
.label_75:
	mov	rdi, qword ptr [rip + ref_file]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r12d, eax
	test	r12d, r12d
	js	.label_81
	xor	esi, esi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [rsp + 0xc], eax
	mov	edi, r12d
	call	close
	test	rbx, rbx
	js	.label_109
.label_80:
	cmp	bpl, 1
	sbb	rdx, rdx
	or	rdx, rbx
	test	bpl, bpl
	mov	rax, qword ptr [rsp + 0x20]
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x20], rax
.label_86:
	lea	r12, [r15 + r13*8]
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	setne	al
	mov	cl, byte ptr [rip + no_create]
	test	cl, cl
	mov	ecx, 0x801
	mov	r13d, 0x841
	cmovne	r13d, ecx
	mov	qword ptr [rsp + 0x28], rdx
	test	rdx, rdx
	sets	cl
	and	cl, al
	mov	byte ptr [rsp + 0xc], cl
	xor	r14d, r14d
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r14b, 1
.label_41:
	add	r12, 8
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_97:
	mov	r12, rcx
	mov	r15, qword ptr [r12 - 8]
	test	r15, r15
	je	.label_82
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	mov	esi, r13d
	call	open
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_95
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	cmp	bl, 1
	jne	.label_99
	lea	rcx, [r12 + 8]
	cmp	dword ptr [rax], 2
	je	.label_97
.label_99:
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	al, byte ptr [rip + block_mode]
	or	al, byte ptr [rsp + 0xc]
	test	al, 1
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x30], r14
	je	.label_31
	mov	edi, 1
	mov	esi, ebp
	lea	rdx, [rsp + 0x38]
	call	__fxstat
	test	eax, eax
	je	.label_52
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
.label_58:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_40
.label_52:
	cmp	byte ptr [rip + block_mode],  1
	mov	rcx, rbx
	jne	.label_31
	mov	rax, qword ptr [rsp + 0x70]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	inc	rax
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jg	.label_68
	movabs	rax, 0x7fffffffffffffff
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jge	.label_87
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	mov	qword ptr [rsp + 0x18], rcx
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	r9, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
	call	error
	jmp	.label_40
.label_87:
	imul	rcx, rbx
.label_31:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_39
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	mov	rsi, rax
	jns	.label_50
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_54
	mov	rsi, qword ptr [rsp + 0x68]
	test	rsi, rsi
	jns	.label_50
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	jmp	.label_64
.label_54:
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	mov	rbx, rcx
	call	lseek
	mov	rcx, rbx
	mov	rsi, rax
	test	rsi, rsi
	js	.label_72
.label_50:
	mov	rax, qword ptr [rsp + 0x10]
	lea	eax, [rax - 2]
	cmp	eax, 3
	ja	.label_42
	jmp	qword ptr [(rax * 8) + label_69]
.label_537:
	cmp	rsi, rcx
	cmova	rcx, rsi
	jmp	.label_39
.label_42:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rsi
	cmp	rcx, rax
	jle	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	jmp	.label_64
.label_538:
	cmp	rsi, rcx
	cmovb	rcx, rsi
	jmp	.label_39
.label_539:
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jmp	.label_39
.label_540:
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jns	.label_39
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
.label_64:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_40
.label_102:
	add	rcx, rsi
.label_39:
	xor	ebx, ebx
	test	rcx, rcx
	mov	r14d, 0
	cmovns	r14, rcx
	mov	edi, ebp
	mov	rsi, r14
	call	ftruncate
	cmp	eax, -1
	jne	.label_56
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x18], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x18]
	mov	rdx, rbx
	mov	r8, r14
	call	error
.label_40:
	mov	bl, 1
.label_56:
	mov	r14, qword ptr [rsp + 0x30]
	or	r14b, bl
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_41
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	jmp	.label_85
.label_72:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	jmp	.label_58
.label_82:
	movzx	eax, r14b
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	cmp	eax, 0xffffff7d
	je	.label_101
	cmp	eax, 0xffffff7e
	jne	.label_76
	xor	edi, edi
	call	usage
.label_101:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_18
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_83
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_76:
	mov	edi, 1
	call	usage
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	jmp	.label_49
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_105
	jmp	.label_106
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_34
.label_106:
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	jmp	.label_92
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
.label_92:
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
.label_96:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	jmp	.label_108
.label_109:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [r14], eax
.label_81:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
.label_108:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + ref_file]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	.section	.text
	.align	16
	#Procedure 0x402040
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402050
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_117
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_113
	cmp	dword ptr [rbp], 0x20
	jne	.label_113
.label_117:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_115
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_114
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_115:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_114:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_116
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
	#Procedure 0x402120

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_118
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_120
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_120
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_123
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_123:
	mov	rbx, r14
.label_120:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_118:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_119
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0
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
	#Procedure 0x402210
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
	#Procedure 0x402220
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
	#Procedure 0x402230
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
	#Procedure 0x402270
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
	#Procedure 0x402290
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_124
	test	rdx, rdx
	je	.label_124
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_124:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0
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
	#Procedure 0x402340

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
	jmp	.label_144
	nop	
.label_140:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_136
	or	al, dl
	jne	.label_136
	test	dil, 1
	jne	.label_138
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_136
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_144
	jmp	.label_136
.label_478:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_152
	test	rbp, rbp
	je	.label_157
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_157:
	mov	r14d, 1
	jmp	.label_161
.label_479:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_162
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_163
.label_152:
	xor	r14d, r14d
.label_161:
	mov	eax, OFFSET FLAT:label_162
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_242
	nop	
.label_144:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_164
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_247]
.label_480:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_193
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_199
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_481:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_207
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_207
	xor	r14d, r14d
	nop	
.label_220:
	cmp	r14, rbp
	jae	.label_216
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_216:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_220
.label_207:
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
	jmp	.label_163
.label_473:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_163
.label_476:
	mov	al, 1
.label_474:
	mov	r12b, 1
.label_477:
	test	r12b, 1
	mov	cl, 1
	je	.label_235
	mov	ecx, eax
.label_235:
	mov	al, cl
.label_475:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_236
	test	rbp, rbp
	je	.label_241
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_241:
	mov	r14d, 1
	jmp	.label_244
.label_236:
	xor	r14d, r14d
.label_244:
	mov	ecx, OFFSET FLAT:label_199
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_242:
	mov	sil, r12b
.label_163:
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
	jmp	.label_251
	nop	word ptr cs:[rax + rax]
.label_126:
	inc	r12
.label_251:
	cmp	r11, -1
	je	.label_169
	cmp	r12, r11
	jne	.label_172
	jmp	.label_174
	nop	word ptr cs:[rax + rax]
.label_169:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_177
.label_172:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_184
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_187
	cmp	r11, -1
	jne	.label_187
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_187:
	cmp	rbx, r11
	jbe	.label_197
.label_184:
	xor	esi, esi
.label_153:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_200
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_204]
.label_497:
	test	r12, r12
	jne	.label_156
	jmp	.label_209
	nop	word ptr cs:[rax + rax]
.label_197:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_219
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_153
	jmp	.label_127
.label_219:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_153
.label_501:
	xor	eax, eax
	cmp	r11, -1
	je	.label_230
	test	r12, r12
	jne	.label_234
	cmp	r11, 1
	je	.label_209
	xor	r13d, r13d
	jmp	.label_134
.label_490:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_238
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_127
	cmp	r8d, 2
	jne	.label_170
	mov	eax, r9d
	and	al, 1
	jne	.label_170
	cmp	r14, rbp
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_128
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_128:
	add	r14, 3
	mov	r9b, 1
.label_170:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_137
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_137:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_147
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_147
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_147
	cmp	r14, rbp
	jae	.label_149
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_149:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_159
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_159:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_134
.label_491:
	mov	bl, 0x62
	jmp	.label_171
.label_492:
	mov	cl, 0x74
	jmp	.label_130
.label_493:
	mov	bl, 0x76
	jmp	.label_171
.label_494:
	mov	bl, 0x66
	jmp	.label_171
.label_495:
	mov	cl, 0x72
	jmp	.label_130
.label_498:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_181
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_168
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
	jae	.label_188
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_203:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_206
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_206:
	add	r14, 3
	xor	r9d, r9d
.label_181:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_134
.label_499:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_212
	cmp	r8d, 2
	jne	.label_156
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_156
	jmp	.label_168
.label_500:
	cmp	r8d, 2
	jne	.label_222
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_168
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_226
.label_200:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_228
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_233
.label_230:
	test	r12, r12
	jne	.label_245
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_245
.label_209:
	mov	dl, 1
.label_496:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_168
	xor	eax, eax
	mov	r13b, dl
.label_134:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_125
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_129
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
.label_125:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_132
.label_129:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_248
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_145
	nop	dword ptr [rax]
.label_132:
	test	sil, sil
.label_145:
	mov	ebx, r15d
	je	.label_165
	jmp	.label_155
.label_248:
	mov	ebx, r15d
	jmp	.label_155
.label_238:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_126
	xor	r15d, r15d
	jmp	.label_156
.label_222:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_130
	xor	eax, eax
	mov	r15b, 0x5c
.label_226:
	xor	r13d, r13d
	jmp	.label_165
.label_130:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_168
.label_171:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_134
	nop	
.label_155:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_127
	cmp	r8d, 2
	jne	.label_182
	mov	eax, r9d
	and	al, 1
	jne	.label_182
	cmp	r14, rbp
	jae	.label_186
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_189
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_189:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_191
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	add	r14, 3
	mov	r9b, 1
.label_182:
	cmp	r14, rbp
	jae	.label_131
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_131:
	inc	r14
	jmp	.label_158
.label_228:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_205
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_205:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_217
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_210:
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
	je	.label_223
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_231
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_214
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_240
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_135:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_227
	bt	rsi, rdx
	jb	.label_168
.label_227:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_135
.label_240:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_133
	xor	r13d, r13d
.label_133:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_210
	jmp	.label_148
.label_147:
	xor	r13d, r13d
	jmp	.label_134
.label_245:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_134
.label_212:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_156
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_156
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_156
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_166
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_229
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_176
	cmp	r14, rbp
	jae	.label_179
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_185
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_202
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_202:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_198
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_198:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_229:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_134
.label_156:
	xor	eax, eax
.label_234:
	xor	r13d, r13d
	jmp	.label_134
.label_217:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_208:
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
	je	.label_141
	cmp	rbp, -1
	je	.label_221
	cmp	rbp, -2
	je	.label_223
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_225
	xor	r13d, r13d
.label_225:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_208
	jmp	.label_148
.label_223:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_239
	lea	rax, [r10 + r12]
.label_142:
	cmp	byte ptr [rax + rsi], 0
	je	.label_239
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_142
.label_239:
	mov	qword ptr [rsp + 0x40], rsi
.label_231:
	xor	r13d, r13d
	jmp	.label_214
.label_221:
	xor	r13d, r13d
.label_141:
	mov	r10, qword ptr [rsp + 0x28]
.label_214:
	mov	r12, qword ptr [rsp + 0x40]
.label_148:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_233:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_139
	test	al, al
	je	.label_139
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_134
.label_139:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_143
	nop	word ptr [rax + rax]
.label_232:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_143:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_154
	test	sil, 1
	je	.label_151
	cmp	r14, rbp
	jae	.label_160
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_160:
	inc	r14
	xor	esi, esi
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_154:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_127
	cmp	r8d, 2
	jne	.label_173
	mov	eax, r9d
	and	al, 1
	jne	.label_173
	cmp	r14, rbp
	jae	.label_175
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_192
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_201
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_201:
	add	r14, 3
	mov	r9b, 1
.label_173:
	cmp	r14, rbp
	jae	.label_190
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_190:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_178
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_178:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_150
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_150:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_151:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_165
	test	r9b, 1
	je	.label_213
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_243
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_218
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_218:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_224
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_224:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_243:
	mov	rbx, rcx
.label_213:
	cmp	r14, rbp
	jae	.label_232
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_232
	nop	
.label_165:
	test	r9b, 1
	je	.label_237
	and	al, 1
	jne	.label_237
	cmp	r14, rbp
	jae	.label_183
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_183:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_195
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_195:
	add	r14, 2
	xor	r9d, r9d
.label_237:
	mov	ebx, r15d
.label_158:
	cmp	r14, rbp
	jae	.label_250
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_250:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_126
.label_166:
	xor	r13d, r13d
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	rcx, r12
.label_177:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_140
	or	al, dl
	jne	.label_140
	mov	r11, rcx
	jmp	.label_127
.label_168:
	mov	eax, 2
.label_167:
	mov	qword ptr [rsp + 0x38], rax
.label_127:
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
.label_211:
	mov	r14, rax
.label_215:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_180
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_146
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_146
	inc	rdx
	nop	dword ptr [rax + rax]
.label_196:
	cmp	r14, rbp
	jae	.label_194
	mov	byte ptr [rcx + r14], al
.label_194:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_196
	jmp	.label_146
.label_138:
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
	jmp	.label_211
.label_180:
	mov	rcx, qword ptr [rsp + 0x10]
.label_146:
	cmp	r14, rbp
	jae	.label_215
	mov	byte ptr [rcx + r14], 0
	jmp	.label_215
.label_176:
	mov	eax, 5
	jmp	.label_167
.label_164:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403170
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
	#Procedure 0x403240
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
	je	.label_252
	mov	qword ptr [rax], rbx
.label_252:
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
	#Procedure 0x403330
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_253
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_256:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_256
.label_253:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_257
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_255], OFFSET FLAT:slot0
.label_257:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_254
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_254:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033e0

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
	js	.label_258
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_261
	cmp	r12d, 0x7fffffff
	je	.label_263
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
	jne	.label_259
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_259:
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
.label_261:
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
	jbe	.label_264
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_260
.label_264:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_262
	mov	rdi, r14
	call	free
.label_262:
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
.label_260:
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
.label_258:
	call	abort
.label_263:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0
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
	#Procedure 0x4035d0
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
	#Procedure 0x4035f0
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
	je	.label_265
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
.label_265:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403660
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
	je	.label_266
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
.label_266:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

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
	je	.label_267
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
.label_267:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403740
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
	je	.label_268
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
.label_268:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
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
	#Procedure 0x403820
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
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
	#Procedure 0x403890

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
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
	#Procedure 0x4038f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
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
	#Procedure 0x403950
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
	je	.label_272
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
.label_272:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_273
	test	rdx, rdx
	je	.label_273
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_273:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a60
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_274
	test	rdx, rdx
	je	.label_274
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_274:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_275
	test	rsi, rsi
	je	.label_275
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_275:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b40
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_269]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_270]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_276
	test	rsi, rsi
	je	.label_276
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
.label_276:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0
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
	#Procedure 0x403be0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00

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
	#Procedure 0x403c20

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
	jne	.label_282
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_278
	cmp	ecx, 0x55
	jne	.label_277
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_277
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_277
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_277
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_277
	cmp	byte ptr [rax + 5], 0
	jne	.label_277
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_284
	mov	eax, OFFSET FLAT:label_285
	jmp	.label_281
.label_278:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_277
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_277
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_277
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_277
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_277
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_277
	cmp	byte ptr [rax + 7], 0
	je	.label_283
.label_277:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_162
	mov	eax, OFFSET FLAT:label_199
.label_281:
	cmove	rax, rcx
.label_282:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_283:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_279
	mov	eax, OFFSET FLAT:label_280
	jmp	.label_281
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

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
	je	.label_301
	mov	edx, OFFSET FLAT:label_292
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_298
.label_301:
	mov	edx, OFFSET FLAT:label_299
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_298:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_287
	jmp	qword ptr [(r12 * 8) + label_288]
.label_440:
	add	rsp, 8
	jmp	.label_286
.label_287:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_286
.label_441:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
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
.label_444:
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
	jmp	.label_286
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
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
	jmp	.label_286
.label_446:
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
	jmp	.label_286
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
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
	jmp	.label_286
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	jmp	.label_286
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_286:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_305:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_305
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_306
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_308
.label_306:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_308:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_318
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_307
.label_318:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_307:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_316
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_317
.label_316:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_317:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_314
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_315
.label_314:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_315:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_312
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_313
.label_312:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_313:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_310
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_311
.label_310:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_311:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_309:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_319
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_319:
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
	#Procedure 0x404300
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_321
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_324
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	je	.label_324
.label_325:
	pop	rbx
	ret	
.label_324:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_326
	test	rax, rax
	je	.label_327
.label_326:
	pop	rbx
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_328
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_329
	test	rbx, rbx
	jne	.label_329
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_329:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	je	.label_328
.label_330:
	pop	rbx
	ret	
.label_328:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404430

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_331
	test	rbx, rbx
	jne	.label_331
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_331:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_333
	test	rax, rax
	je	.label_332
.label_333:
	pop	rbx
	ret	
.label_332:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_334
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_337
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_335
.label_334:
	test	rcx, rcx
	jne	.label_340
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_340:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_336
.label_335:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_339
	test	rbx, rbx
	jne	.label_339
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_339:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_338
	test	rax, rax
	je	.label_337
.label_338:
	pop	rbx
	ret	
.label_337:
	call	xalloc_die
.label_336:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404500
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_341
	test	rax, rax
	je	.label_342
.label_341:
	pop	rbx
	ret	
.label_342:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_343
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_346
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_347
	call	free
	xor	eax, eax
	jmp	.label_344
.label_343:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_345
	mov	qword ptr [rsi], rbx
.label_347:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_344
	test	rax, rax
	je	.label_345
.label_344:
	pop	rbx
	ret	
.label_345:
	call	xalloc_die
.label_346:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590
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
	je	.label_349
	test	r14, r14
	je	.label_348
.label_349:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_348:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_350
	call	rpl_calloc
	test	rax, rax
	je	.label_350
	pop	rcx
	ret	
.label_350:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404600

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
	je	.label_351
	test	r15, r15
	je	.label_352
.label_351:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_352:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404640
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
	je	.label_354
	test	r15, r15
	je	.label_353
.label_354:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_353:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4046c0

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
	je	.label_359
	cmp	eax, 1
	je	.label_361
	cmp	eax, 3
	jne	.label_363
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_360
.label_359:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_356
	cmp	rbx, r12
	jle	.label_358
.label_356:
	cmp	rbx, 0x40000000
	jl	.label_362
.label_361:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_360
.label_363:
	call	__errno_location
.label_360:
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
	mov	edx, OFFSET FLAT:label_116
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_358:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_362:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_357
	mov	dword ptr [rax], 0x4b
	jmp	.label_360
.label_357:
	mov	dword ptr [rax], 0x22
	jmp	.label_360
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

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
	.align	16
	#Procedure 0x4047d0

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
	jae	.label_401
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
	je	.label_369
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_374
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_372
	mov	r13d, 1
.label_374:
	test	r14, r14
	je	.label_380
	mov	r15d, r13d
	jmp	.label_385
.label_369:
	mov	r13d, 4
	test	r14, r14
	je	.label_372
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_372
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_372
.label_385:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_396
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_394
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_366
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_366
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_366
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_365
	cmp	eax, 0x44
	je	.label_365
	cmp	eax, 0x69
	jne	.label_366
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_366
.label_380:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_372
.label_365:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_366:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_394
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_381]
.label_454:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_388
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_388:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_400
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_400:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_405
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_405:
	or	ecx, r14d
	jmp	.label_370
.label_394:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_406
.label_455:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_370
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_370
.label_456:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_378
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_378:
	cmp	rsi, rdi
	jl	.label_393
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_393:
	or	ecx, r11d
	jmp	.label_370
.label_458:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_402
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_402:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_412
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_412:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_367
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_367:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_376
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_376:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_370
.label_452:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_375
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_379
.label_453:
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
	jl	.label_398
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_398:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_410
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_410:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_415
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_415:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_371
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_371:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_382
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_382:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_392
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_392:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_370
.label_457:
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
	jl	.label_403
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_403:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_414
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_414:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_368
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_368:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_377
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_377:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_389
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_389:
	or	ecx, r14d
	jmp	.label_370
.label_459:
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
	jl	.label_399
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_399:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_411
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_411:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_417
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_417:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_373
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_373:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_384
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_384:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_395
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_395:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_364
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_364:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_383
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_391
.label_460:
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
	jl	.label_416
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_416:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_390
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_390:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_387
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_387:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_397
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_397:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_404
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_404:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_413
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_413:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_383
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_391:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_383:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_370
.label_461:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_375
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_379
.label_462:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_386
.label_375:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_370
.label_386:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_379:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_370:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_396:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_406:
	mov	r13d, r15d
.label_372:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_401:
	mov	edi, OFFSET FLAT:label_407
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_409
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_418
	test	rsi, rsi
	mov	ecx, 1
	je	.label_419
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_419
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_418:
	mov	ecx, 1
.label_419:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140

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
	je	.label_420
	cmp	r15, -2
	jb	.label_420
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_420
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_420:
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
	#Procedure 0x4051a0

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
	jne	.label_422
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_421
	test	cl, cl
	jne	.label_421
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_421
.label_422:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_421
	call	__errno_location
	mov	dword ptr [rax], 0
.label_421:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405200

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_424
	cmp	byte ptr [rax], 0x43
	jne	.label_426
	cmp	byte ptr [rax + 1], 0
	je	.label_423
.label_426:
	mov	esi, OFFSET FLAT:label_425
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_424
.label_423:
	xor	ebx, ebx
.label_424:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_37
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_427
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_428
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_430
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_428
.label_430:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_428
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_429
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_429:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_428:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_431
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_431
	test	byte ptr [rbx + 1], 1
	je	.label_431
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_431:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

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
	jne	.label_432
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_432
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_433
.label_432:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_433:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_434
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_434:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4053a0

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
