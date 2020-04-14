	.section	.text
	.align	16
	#Procedure 0x402770

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
	mov	esi, OFFSET FLAT:label_9
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
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_27
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
	mov	esi, OFFSET FLAT:label_28
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
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	mov	esi, OFFSET FLAT:label_33
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
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_36
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_36
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_20:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_58
	call	setlocale
	mov	edi, OFFSET FLAT:label_64
	mov	esi, OFFSET FLAT:label_65
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_64
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 8]
	call	cp_options_default
	mov	byte ptr [rsp + 0x1c], 1
	mov	dword ptr [rsp + 0xc], 1
	mov	byte ptr [rsp + 0x1d], 0
	mov	byte ptr [rsp + 0x1e], 0
	mov	byte ptr [rsp + 0x1f], 0
	mov	dword ptr [rsp + 0x10], 4
	mov	byte ptr [rsp + 0x20], 0
	mov	byte ptr [rsp + 0x21], 0
	mov	dword ptr [rsp + 0x40], 0
	mov	byte ptr [rsp + 0x2a], 0
	mov	word ptr [rsp + 0x28], 0
	mov	dword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x31], 0
	mov	dword ptr [rsp + 0x2d], 0
	mov	byte ptr [rsp + 0x2b], 1
	mov	byte ptr [rsp + 0x2c], 0
	mov	byte ptr [rsp + 0x32], 0
	mov	qword ptr [rsp + 0x14], 2
	mov	byte ptr [rsp + 0x37], 0
	mov	dword ptr [rsp + 0x33], 0
	mov	edi, OFFSET FLAT:label_73
	call	getenv
	test	rax, rax
	setne	byte ptr [rsp + 0x38]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x48], xmm0
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	r13d, r13d
	xor	ecx, ecx
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_44
.label_56:
	mov	byte ptr [rsp + 0x32], 1
	mov	cl, r12b
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	r12d, ecx
	mov	edx, OFFSET FLAT:label_60
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x10b
	ja	.label_67
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_68]
.label_1536:
	mov	dword ptr [rsp + 0xc], 3
	mov	cl, r12b
	jmp	.label_44
.label_1537:
	mov	dword ptr [rsp + 0xc], 4
	mov	cl, r12b
	jmp	.label_44
.label_1541:
	cmp	qword ptr [rip + optarg],  0
	mov	cl, r12b
	je	.label_44
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	cl, r12b
	jmp	.label_44
.label_1542:
	mov	dword ptr [rsp + 0xc], 2
	mov	byte ptr [rsp + 0x2a], 1
	mov	word ptr [rsp + 0x25], 0x101
	mov	byte ptr [rsp + 0x27], 1
	mov	byte ptr [rsp + 0x2c], 1
	mov	byte ptr [rsp + 0x2f], 1
	mov	byte ptr [rsp + 0x31], 1
	jmp	.label_56
.label_1543:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	cmovne	r13, rax
	mov	bpl, 1
	mov	cl, r12b
	jmp	.label_44
.label_1545:
	mov	byte ptr [rsp + 0x1e], 1
	mov	cl, r12b
	jmp	.label_44
.label_1549:
	mov	byte ptr [rsp + 0x34], 1
	mov	cl, r12b
	jmp	.label_44
.label_1550:
	test	r15, r15
	jne	.label_51
	mov	rsi, qword ptr [rip + optarg]
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_61
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x80]
	cmp	eax, 0x4000
	jne	.label_63
	mov	r15, qword ptr [rip + optarg]
	mov	cl, r12b
	jmp	.label_44
.label_1553:
	mov	byte ptr [rsp + 0x24], 1
	mov	cl, r12b
	jmp	.label_44
.label_1557:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	je	.label_74
	lea	rsi, [rsp + 8]
	mov	edx, 1
	call	decode_preserve_arg
	jmp	.label_77
.label_74:
	mov	word ptr [rsp + 0x25], 0x101
	mov	byte ptr [rsp + 0x27], 1
.label_77:
	mov	byte ptr [rsp + 0x2c], 1
	mov	cl, r12b
	jmp	.label_44
.label_1558:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_83
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_87
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + reflink_type]
	mov	dword ptr [rsp + 0x40], eax
	mov	cl, r12b
	jmp	.label_44
.label_1539:
	mov	bpl, 1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x60], rax
	mov	cl, r12b
	jmp	.label_44
.label_1540:
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	mov	cl, r12b
	jmp	.label_44
.label_1544:
	mov	byte ptr [rsp + 0x2a], 1
.label_1538:
	mov	dword ptr [rsp + 0xc], 2
	mov	cl, r12b
	jmp	.label_44
.label_1546:
	mov	dword ptr [rsp + 0x10], 3
	mov	cl, r12b
	jmp	.label_44
.label_1547:
	mov	byte ptr [rsp + 0x1f], 1
	mov	cl, r12b
	jmp	.label_44
.label_1548:
	mov	dword ptr [rsp + 0x10], 2
	mov	cl, r12b
	jmp	.label_44
.label_1551:
	mov	byte ptr [rsp + 0x35], 1
	mov	cl, r12b
	jmp	.label_44
.label_1552:
	mov	byte ptr [rsp + 0x36], 1
	mov	cl, r12b
	jmp	.label_44
.label_1554:
	mov	byte ptr [rsp + 0x2b], 0
	mov	cl, r12b
	jmp	.label_44
.label_1555:
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 8]
	xor	edx, edx
	call	decode_preserve_arg
	mov	cl, r12b
	jmp	.label_44
.label_1556:
	mov	byte ptr [rip + parents_option],  1
	mov	cl, r12b
	jmp	.label_44
.label_1559:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_88
	mov	edx, OFFSET FLAT:sparse_type_string
	mov	ecx, OFFSET FLAT:sparse_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + sparse_type]
	mov	dword ptr [rsp + 0x14], eax
	mov	cl, r12b
	jmp	.label_44
.label_1560:
	mov	byte ptr [rip + remove_trailing_slashes],  1
	mov	cl, r12b
	jmp	.label_44
.label_1561:
	mov	byte ptr [rsp + 0x1d], 1
	mov	cl, r12b
	jmp	.label_44
.label_83:
	mov	dword ptr [rsp + 0x40], 2
	mov	cl, r12b
	jmp	.label_44
.label_1535:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_49
	mov	al, byte ptr [rsp + 0x34]
	test	al, al
	jne	.label_50
.label_49:
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	jne	.label_52
	mov	byte ptr [rsp + 0x35], 0
	test	bpl, bpl
	setne	cl
	je	.label_53
	cmp	eax, 2
	jne	.label_53
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	jmp	.label_55
.label_52:
	test	bpl, bpl
	setne	cl
.label_53:
	cmp	dword ptr [rsp + 0x40], 2
	jne	.label_66
	movabs	rdx, 0xffffffff00000000
	and	rax, rdx
	movabs	rdx, 0x200000000
	cmp	rax, rdx
	jne	.label_42
.label_66:
	xor	eax, eax
	test	cl, cl
	je	.label_81
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	xget_version
.label_81:
	mov	dword ptr [rsp + 8], eax
	mov	rdi, qword ptr [rsp + 0x60]
	call	set_simple_backup_suffix
	mov	al, byte ptr [rsp + 0x32]
	cmp	dword ptr [rsp + 0xc], 1
	jne	.label_72
	test	al, al
	je	.label_85
	mov	cl, byte ptr [rsp + 0x1f]
	test	cl, cl
	jne	.label_85
	mov	dword ptr [rsp + 0xc], 2
	jmp	.label_72
.label_85:
	mov	dword ptr [rsp + 0xc], 4
.label_72:
	test	al, al
	je	.label_84
	mov	byte ptr [rsp + 0x1c], r12b
.label_84:
	mov	al, byte ptr [rsp + 0x29]
	test	al, al
	je	.label_43
	cmp	byte ptr [rsp + 0x2e], 0
	jne	.label_45
	mov	byte ptr [rsp + 0x2d], 0
.label_45:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_43
	test	al, al
	jne	.label_76
.label_43:
	cmp	byte ptr [rsp + 0x2e], 0
	jne	.label_47
	cmp	byte ptr [rsp + 0x30], 0
	jne	.label_48
	call	hash_init
	movsxd	rax, dword ptr [rip + optind]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x58]
	test	al, al
	setne	cl
	lea	r8, [rsp + 8]
	mov	edi, ebx
	mov	rdx, r15
	call	do_copy
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1533:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_30
	mov	edx, OFFSET FLAT:label_12
	mov	r8d, OFFSET FLAT:label_78
	mov	r9d, OFFSET FLAT:label_79
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_80
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_1534:
	xor	edi, edi
	call	usage
.label_67:
	mov	edi, 1
	call	usage
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	jmp	.label_70
.label_61:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	jmp	.label_55
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
.label_55:
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
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_70
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	jmp	.label_70
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
.label_70:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl decode_preserve_arg
	.type decode_preserve_arg, @function
decode_preserve_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbx, rsi
	call	xstrdup
	mov	r14, rax
	mov	ecx, OFFSET FLAT:label_93
	mov	r15d, OFFSET FLAT:label_94
	test	r12b, r12b
	cmovne	r15, rcx
	mov	r13d, r12d
	xor	r13b, 1
	mov	qword ptr [rsp], r14
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	rbp, r14
	mov	esi, 0x2c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_90
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_90:
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	rdi, r15
	mov	rsi, rbp
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + decode_preserve_arg.preserve_vals]
	cmp	rax, 6
	ja	.label_95
	jmp	qword ptr [(rax * 8) + label_91]
.label_1503:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x20], r13b
	jmp	.label_92
.label_1504:
	mov	byte ptr [rbx + 0x1f], r12b
	jmp	.label_92
.label_1505:
	mov	byte ptr [rbx + 0x1d], r12b
	jmp	.label_92
.label_1506:
	mov	byte ptr [rbx + 0x22], r12b
	jmp	.label_92
.label_1507:
	mov	byte ptr [rbx + 0x26], r12b
	mov	byte ptr [rbx + 0x25], r12b
	jmp	.label_92
.label_1508:
	mov	byte ptr [rbx + 0x27], r12b
	mov	byte ptr [rbx + 0x28], r12b
	jmp	.label_92
.label_1509:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x1f], r12b
	mov	byte ptr [rbx + 0x1d], r12b
	mov	byte ptr [rbx + 0x22], r12b
	mov	byte ptr [rbx + 0x20], r13b
	mov	byte ptr [rbx + 0x27], r12b
	nop	word ptr cs:[rax + rax]
.label_92:
	test	r14, r14
	jne	.label_96
	mov	rdi, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_95:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	rbx, rsi
	mov	r12d, edi
	mov	byte ptr [rbp - 0x2a], 0
	mov	al, 1
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_127
	cmp	byte ptr [r14 + 0x16], 0
	setne	al
.label_127:
	xor	esi, esi
	test	rdx, rdx
	sete	sil
	cmp	esi, r12d
	jge	.label_104
	test	cl, cl
	mov	rcx, r14
	mov	qword ptr [rbp - 0x38], rcx
	je	.label_112
	test	rdx, rdx
	jne	.label_114
	cmp	r12d, 3
	jge	.label_118
	movsxd	rcx, r12d
	mov	rdi, qword ptr [rbx + rcx*8 - 8]
	movzx	ecx, al
	lea	rsi, [rbp - 0xf8]
	lea	rdx, [rbp - 0x2a]
	call	target_directory_operand
.label_111:
	cmp	byte ptr [rip + parents_option],  1
	je	.label_107
	mov	r14, qword ptr [rbx]
	mov	r15, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x16], 0
	je	.label_103
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_103
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	jne	.label_103
	mov	al, byte ptr [rbp - 0x2a]
	test	al, al
	jne	.label_103
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xe0]
	cmp	eax, 0x8000
	jne	.label_103
	mov	edi, 0xffffff9c
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0x38]
	movups	xmm0, xmmword ptr [rax + 0x40]
	movups	xmmword ptr [rip + label_121],  xmm0
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 0x10]
	movups	xmm2, xmmword ptr [rax + 0x20]
	movups	xmm3, xmmword ptr [rax + 0x30]
	movups	xmmword ptr [rip + label_122],  xmm3
	movups	xmmword ptr [rip + label_123],  xmm2
	movups	xmmword ptr [rip + label_124],  xmm1
	movups	xmmword ptr [rip + do_copy.x_tmp],  xmm0
	mov	eax, OFFSET FLAT:do_copy.x_tmp
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rip + do_copy.x_tmp],  0
.label_103:
	lea	r8, [rbp - 0x40]
	xor	edx, edx
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, qword ptr [rbp - 0x38]
	call	copy
	mov	byte ptr [rbp - 0x29], al
	jmp	.label_106
.label_112:
	test	rdx, rdx
	jne	.label_115
	cmp	r12d, 2
	jl	.label_111
	movsxd	r15, r12d
	mov	rdi, qword ptr [rbx + r15*8 - 8]
	dec	r15
	movzx	ecx, al
	lea	rsi, [rbp - 0xf8]
	lea	rdx, [rbp - 0x2a]
	call	target_directory_operand
	test	al, al
	je	.label_128
	mov	rdx, qword ptr [rbx + r15*8]
	test	rdx, rdx
	je	.label_111
	dec	r12d
.label_115:
	cmp	r12d, 2
	mov	qword ptr [rbp - 0x48], rdx
	jl	.label_100
	mov	rdi, r14
	call	dest_info_init
	mov	rdi, r14
	call	src_info_init
	jmp	.label_105
.label_100:
	mov	byte ptr [rbp - 0x29], 1
	cmp	r12d, 1
	jne	.label_106
.label_105:
	mov	byte ptr [rbp - 0x29], 1
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x68], rbx
	mov	dword ptr [rbp - 0x54], r12d
	jmp	.label_109
.label_116:
	mov	rdi, qword ptr [rbp - 0x48]
	call	xstrdup
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_109:
	mov	qword ptr [rbp - 0x50], 0
	mov	r15, qword ptr [rbx + r13*8]
	cmp	byte ptr [rip + remove_trailing_slashes],  1
	jne	.label_125
	mov	rdi, r15
	call	strip_trailing_slashes
.label_125:
	mov	al, byte ptr [rip + parents_option]
	test	al, al
	je	.label_130
	mov	rdi, r15
	call	strlen
	mov	rbx, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r15
	call	memcpy
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x50]
	call	file_name_concat
	mov	rbx, r15
	mov	r15, rax
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, r15
	xor	r12d, r12d
	cmp	byte ptr [r14 + 0x2e], 0
	mov	edx, 0
	mov	eax, OFFSET FLAT:label_129
	cmovne	rdx, rax
	mov	rdi, r15
	lea	rcx, [rbp - 0x40]
	lea	r8, [rbp - 0x2a]
	mov	r9, r14
	call	make_dir_parents_private
	test	al, al
	jne	.label_97
	jmp	.label_108
	nop	
.label_130:
	mov	qword ptr [rbp - 0x60], r15
	mov	rdi, r15
	call	last_component
	mov	r15, rax
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	r14, rsp
	lea	rdx, [rbx + 1]
	add	rbx, 0x10
	and	rbx, 0xfffffffffffffff0
	mov	r12, r14
	sub	r12, rbx
	mov	rsp, r12
	neg	rbx
	mov	rdi, r12
	mov	rsi, r15
	call	memcpy
	mov	rdi, r12
	call	strip_trailing_slashes
	cmp	byte ptr [r14 + rbx], 0x2e
	jne	.label_98
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_98
	cmp	byte ptr [r12 + 2], 0
	je	.label_116
	nop	word ptr cs:[rax + rax]
.label_98:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r12
	call	file_name_concat
.label_119:
	mov	r15, rax
	mov	r14, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbp - 0x60]
.label_97:
	movzx	edx, byte ptr [rbp - 0x2a]
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rsi, r15
	mov	rcx, r14
	lea	r8, [rbp - 0x2b]
	call	copy
	mov	r12b, al
	and	r12b, byte ptr [rbp - 0x29]
	cmp	byte ptr [rip + parents_option],  1
	jne	.label_108
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rcx, r14
	call	re_protect
	and	al, r12b
	mov	r12b, al
.label_108:
	mov	eax, r12d
	mov	byte ptr [rbp - 0x29], al
	cmp	byte ptr [rip + parents_option],  1
	jne	.label_110
	mov	rdi, qword ptr [rbp - 0x40]
	test	rdi, rdi
	je	.label_110
	nop	word ptr cs:[rax + rax]
.label_120:
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rbp - 0x40], rbx
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_120
.label_110:
	mov	rdi, r15
	call	free
	inc	r13
	mov	r12d, dword ptr [rbp - 0x54]
	cmp	r13d, r12d
	mov	rbx, qword ptr [rbp - 0x68]
	jne	.label_109
.label_106:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_128:
	cmp	r12d, 3
	jl	.label_111
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx + r15*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_104:
	xor	edi, edi
	test	r12d, r12d
	jg	.label_99
	mov	esi, OFFSET FLAT:label_102
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
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
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
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_99:
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403810

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, rbp
	call	__xstat
	test	eax, eax
	je	.label_135
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	je	.label_136
	test	r14d, r14d
	jne	.label_132
.label_135:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_133
.label_136:
	mov	byte ptr [r12], 1
	jmp	.label_134
.label_132:
	test	r15b, r15b
	je	.label_131
	mov	dword ptr [rbp + 0x18], 0
.label_134:
	xor	eax, eax
.label_133:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	r13, rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r12
	call	dir_len
	mov	r15, rax
	lea	rax, [r15 + 0x10]
	and	rax, 0xfffffffffffffff0
	mov	rbx, rsp
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r15 + rbx], 0
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [r13], 0
	lea	rdx, [rbp - 0xe0]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_151
	lea	rax, [r12 + r14]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [r12 + r14 - 1]
	nop	word ptr cs:[rax + rax]
.label_158:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_158
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_156
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	byte ptr [r15], 0
	mov	edi, 1
	mov	rsi, r12
	lea	rdx, [rbp - 0xe0]
	call	__xstat
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_164
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_164
	mov	rax, qword ptr [rbp - 0x30]
	movzx	eax, word ptr [rax + 0x1e]
	test	al, al
	jne	.label_164
	xor	edx, edx
	movzx	eax, ax
	cmp	eax, 0x100
	jb	.label_165
	nop	word ptr cs:[rax + rax]
.label_164:
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdx, [rbp - 0x170]
	call	__xstat
	test	eax, eax
	je	.label_140
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_142
	jmp	.label_144
	nop	dword ptr [rax]
.label_140:
	mov	eax, dword ptr [rbp - 0x158]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	ebx, 0x14
	cmp	eax, 0x4000
	jne	.label_144
.label_142:
	mov	edi, 0xa8
	call	xmalloc
	mov	r13, rax
	mov	edx, 0x90
	mov	rdi, r13
	lea	rsi, [rbp - 0x170]
	call	memcpy
	mov	rax, r15
	sub	rax, r12
	mov	qword ptr [r13 + 0x98], rax
	mov	byte ptr [r13 + 0x90], 0
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r13 + 0xa0], rax
	mov	qword ptr [rcx], r13
	test	r14d, r14d
	je	.label_159
	mov	edx, dword ptr [r13 + 0x18]
	jmp	.label_165
	nop	
.label_159:
	xor	edx, edx
.label_165:
	xor	ecx, ecx
	test	r14d, r14d
	setne	cl
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r12
	mov	r8, qword ptr [rbp - 0x30]
	call	set_process_security_ctx
	test	al, al
	je	.label_160
	test	r14d, r14d
	je	.label_162
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	eax, dword ptr [r13 + 0x18]
	mov	ebx, 0x3f
	mov	r14, qword ptr [rbp - 0x30]
	cmp	byte ptr [r14 + 0x1d], 0
	jne	.label_166
	cmp	byte ptr [r14 + 0x1e], 0
	mov	ebx, 0
	mov	ecx, 0x12
	cmovne	ebx, ecx
.label_166:
	and	ebx, eax
	cmp	byte ptr [r14 + 0x20], 0
	mov	ecx, 0x1ff
	cmovne	eax, ecx
	mov	esi, ebx
	xor	esi, 0xfff
	and	esi, eax
	mov	rdi, r12
	call	mkdir
	test	eax, eax
	jne	.label_167
	mov	rsi, qword ptr [rbp - 0x48]
	test	rsi, rsi
	je	.label_163
	mov	edi, 1
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, r12
	call	__printf_chk
.label_163:
	mov	edi, 1
	mov	rsi, r12
	lea	rdx, [rbp - 0xe0]
	call	__lxstat
	test	eax, eax
	jne	.label_171
	cmp	byte ptr [r14 + 0x1e], 0
	jne	.label_150
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, eax
	not	ecx
	test	ebx, ecx
	je	.label_152
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	eax, dword ptr [rbp - 0xc8]
.label_152:
	mov	ecx, eax
	not	ecx
	test	ebx, ecx
	jne	.label_157
	mov	ecx, eax
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	je	.label_150
.label_157:
	or	eax, ebx
	mov	dword ptr [r13 + 0x18], eax
	mov	byte ptr [r13 + 0x90], 1
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	esi, dword ptr [rbp - 0xc8]
	mov	eax, esi
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_143
	or	esi, 0x1c0
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_168
.label_143:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	jne	.label_146
	jmp	.label_170
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	mov	r14, qword ptr [rbp - 0x30]
	jne	.label_172
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_170:
	mov	al, byte ptr [r14 + 0x25]
	cmp	byte ptr [r14 + 0x21], 0
	jne	.label_139
	test	al, al
	mov	al, 1
	je	.label_146
.label_139:
	movzx	esi, al
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r14
	call	set_file_security_ctx
	test	al, al
	jne	.label_146
	cmp	byte ptr [r14 + 0x26], 0
	jne	.label_149
.label_146:
	mov	byte ptr [r15], 0x2f
	nop	word ptr [rax + rax]
.label_148:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_148
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_153
	jmp	.label_154
.label_151:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xc8]
	cmp	eax, 0x4000
	jne	.label_155
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_154:
	mov	r13b, 1
	jmp	.label_156
.label_155:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_161
.label_160:
	xor	r13d, r13d
	jmp	.label_156
.label_144:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_161:
	mov	rdx, r14
	jmp	.label_173
.label_167:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	jmp	.label_138
.label_171:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	jmp	.label_138
.label_172:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_169
.label_168:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
.label_138:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_169:
	mov	rdx, rbx
.label_173:
	call	error
.label_156:
	mov	eax, r13d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_149:
	xor	r13d, r13d
	jmp	.label_156
	.section	.text
	.align	16
	#Procedure 0x403db0

	.globl re_protect
	.type re_protect, @function
re_protect:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, r14
	call	memcpy
	mov	al, 1
	test	rbx, rbx
	je	.label_181
	add	r13, r12
	lea	r14, [rbp - 0x50]
	nop	word ptr cs:[rax + rax]
.label_175:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_177
	movups	xmm0, xmmword ptr [rbx + 0x48]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movups	xmm0, xmmword ptr [rbx + 0x58]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	rdi, r12
	mov	rsi, r14
	call	utimens
	test	eax, eax
	jne	.label_186
.label_177:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_179
	mov	esi, dword ptr [rbx + 0x1c]
	mov	edx, dword ptr [rbx + 0x20]
	mov	rdi, r12
	call	lchown
	test	eax, eax
	je	.label_179
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_182
	mov	edx, dword ptr [rbx + 0x20]
	mov	esi, 0xffffffff
	mov	rdi, r12
	call	lchown
.label_179:
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_187
	mov	r8d, dword ptr [rbx + 0x18]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r12
	call	copy_acl
	test	eax, eax
	je	.label_180
	jmp	.label_178
	nop	dword ptr [rax + rax]
.label_187:
	cmp	byte ptr [rbx + 0x90], 0
	je	.label_180
	mov	esi, dword ptr [rbx + 0x18]
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_174
.label_180:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0x2f
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	jne	.label_175
	mov	al, 1
	jmp	.label_181
.label_186:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	jmp	.label_184
.label_182:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	jmp	.label_184
.label_174:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
.label_184:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_178:
	xor	eax, eax
.label_181:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x403f60

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	r15
	push	r14
	push	rbx
	mov	rbx, r8
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_188
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_191
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_192
.label_191:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r15
	call	error
	cmp	byte ptr [rbx + 0x26], 0
	sete	bl
	jmp	.label_190
.label_188:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_190
	xor	cl, 1
	jne	.label_190
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	jmp	.label_190
.label_192:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	bl, 1
.label_190:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404000

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_193
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_196
.label_193:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_194
.label_196:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_194:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404070

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0

	.globl src_info_init
	.type src_info_init, @function
src_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl copy
	.type copy, @function
copy:
	push	rbx
	sub	rsp, 0x10
	mov	r11, r9
	mov	r10, r8
	mov	rax, rcx
	mov	qword ptr [rip + top_level_src_name],  rdi
	mov	qword ptr [rip + top_level_dst_name],  rsi
	mov	byte ptr [rsp + 0xf], 0
	lea	rbx, [rsp + 0xf]
	movzx	edx, dl
	mov	ecx, 0
	mov	r8d, 0
	mov	r9, rax
	push	r11
	push	r10
	push	rbx
	push	1
	call	copy_internal
	add	rsp, 0x30
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404120

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3a8
	mov	r13, r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x88], rcx
	mov	r8d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 0
	mov	ecx, dword ptr [r13 + 0x34]
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_267
	test	ecx, ecx
	jns	.label_215
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, rbx
	mov	rcx, r14
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_215
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_215:
	test	ecx, ecx
	sete	r8b
	test	r15, r15
	je	.label_267
	mov	byte ptr [r15], r8b
.label_267:
	test	ecx, ecx
	mov	qword ptr [rbp - 0x48], rbx
	je	.label_284
	cmp	ecx, 0x11
	jne	.label_287
	cmp	dword ptr [r13 + 8], 2
	jne	.label_287
	jmp	.label_290
.label_284:
	cmp	byte ptr [r13 + 0x31], 0
	jne	.label_290
.label_287:
	mov	rax, r13
	mov	r13, r8
	mov	r12d, ecx
	test	ecx, ecx
	mov	r15, r14
	cmove	rbx, r14
	mov	r14, rax
	cmp	dword ptr [rax + 4], 2
	jne	.label_294
	lea	rdx, [rbp - 0x178]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	jmp	.label_302
.label_294:
	lea	rdx, [rbp - 0x178]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
.label_302:
	test	eax, eax
	je	.label_406
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
.label_487:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
.label_459:
	call	error
.label_223:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_406:
	mov	esi, dword ptr [rbp - 0x160]
	mov	eax, esi
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_315
	cmp	byte ptr [r14 + 0x2a], 0
	mov	r8, r13
	mov	r13, r14
	mov	r14, r15
	mov	ecx, r12d
	mov	rbx, qword ptr [rbp - 0x48]
	jne	.label_290
	cmp	byte ptr [r13 + 0x19], 0
	je	.label_325
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	jmp	.label_330
.label_315:
	mov	r8, r13
	mov	r13, r14
	mov	r14, r15
	mov	ecx, r12d
	mov	rbx, qword ptr [rbp - 0x48]
.label_290:
	mov	dl, byte ptr [rbp + 0x10]
	test	dl, dl
	mov	dword ptr [rbp - 0x3c], esi
	je	.label_338
	mov	rdi, qword ptr [r13 + 0x48]
	test	rdi, rdi
	je	.label_338
	mov	r12, rbx
	mov	rbx, r13
	mov	eax, esi
	and	eax, 0xf000
	mov	r15d, ecx
	mov	r13, r8
	cmp	eax, 0x4000
	je	.label_345
	cmp	dword ptr [rbx], 0
	jne	.label_345
	lea	rdx, [rbp - 0x178]
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_282
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r14b, 1
	jmp	.label_223
.label_282:
	mov	rdi, qword ptr [rbx + 0x48]
.label_345:
	lea	rdx, [rbp - 0x178]
	mov	rsi, r12
	call	record_file
	mov	dl, byte ptr [rbp + 0x10]
	mov	r8, r13
	mov	r13, rbx
	mov	ecx, r15d
	mov	esi, dword ptr [rbp - 0x3c]
.label_338:
	mov	qword ptr [rbp - 0x30], r14
	mov	eax, dword ptr [r13 + 4]
	mov	r15b, 1
	cmp	eax, 4
	je	.label_370
	cmp	eax, 3
	sete	r15b
	and	r15b, dl
.label_370:
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	test	r8b, r8b
	jne	.label_337
	cmp	ecx, 0x11
	jne	.label_378
	cmp	dword ptr [r13 + 8], 2
	jne	.label_378
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r8d, r8d
	jmp	.label_380
.label_378:
	mov	eax, esi
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	r14, qword ptr [rbp - 0x30]
	je	.label_383
	mov	dl, 1
	mov	qword ptr [rbp - 0x68], rdx
	cmp	byte ptr [r13 + 0x14], 0
	je	.label_386
	cmp	eax, 0xa000
	je	.label_386
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_386
.label_383:
	mov	al, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	byte ptr [r13 + 0x18], 0
	jne	.label_386
	cmp	byte ptr [r13 + 0x2c], 0
	jne	.label_386
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_386
	cmp	dword ptr [r13], 0
	jne	.label_386
	cmp	byte ptr [r13 + 0x15], 0
	setne	al
	mov	qword ptr [rbp - 0x68], rax
.label_386:
	mov	r12d, esi
	mov	ebx, ecx
	mov	rax, qword ptr [rbp - 0x68]
	movzx	r8d, al
	shl	r8d, 8
	lea	rcx, [rbp - 0x2a8]
	mov	edi, 1
	mov	esi, 0xffffff9c
	mov	rdx, r14
	call	__fxstatat
	test	eax, eax
	je	.label_407
	mov	r12d, r15d
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	r8b, 1
	cmp	r15d, 2
	mov	dl, byte ptr [rbp + 0x10]
	mov	ecx, ebx
	je	.label_410
	cmp	r15d, 0x28
	jne	.label_413
	cmp	byte ptr [r13 + 0x16], 0
	je	.label_413
	xor	r8d, r8d
.label_410:
	cmp	ecx, 0x11
	mov	r14d, 0
	mov	esi, dword ptr [rbp - 0x3c]
	mov	r15d, r12d
	mov	eax, 0
	mov	qword ptr [rbp - 0x68], rax
	je	.label_380
	jmp	.label_337
.label_407:
	xor	r8d, r8d
	mov	dl, byte ptr [rbp + 0x10]
	mov	esi, r12d
.label_380:
	mov	qword ptr [rbp - 0x60], r8
	cmp	dword ptr [r13 + 8], 2
	mov	byte ptr [rbp - 0x78], r15b
	jne	.label_425
	xor	r15d, r15d
	jmp	.label_228
.label_425:
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x2a0]
	mov	rbx, qword ptr [rbp - 0x30]
	jne	.label_430
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x2a8]
	jne	.label_430
	mov	r15b, 1
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_221
	jmp	.label_437
.label_430:
	xor	r15d, r15d
.label_437:
	cmp	dword ptr [r13 + 4], 2
	jne	.label_438
	mov	eax, dword ptr [rbp - 0x160]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	r12, [rbp - 0x178]
	lea	r14, [rbp - 0x2a8]
	cmp	ecx, 0xa000
	jne	.label_441
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x290]
	cmp	ecx, 0xa000
	jne	.label_441
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	same_name
	test	al, al
	jne	.label_206
	cmp	dword ptr [r13], 0
	mov	dl, byte ptr [rbp + 0x10]
	je	.label_448
	xor	r15d, r15d
	jmp	.label_221
.label_413:
	mov	r12, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
.label_495:
	mov	rdx, rbx
	jmp	.label_459
.label_438:
	test	r15b, r15b
	je	.label_462
	lea	r14, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	jne	.label_219
	lea	r12, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, r12
	call	__lxstat
	test	eax, eax
	jne	.label_219
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x208]
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_328
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x210]
	sete	r15b
	jmp	.label_474
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
.label_330:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	r14d, r14d
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_408:
	mov	rdx, r15
	jmp	.label_459
.label_462:
	xor	r15d, r15d
	jmp	.label_221
.label_448:
	test	r15b, r15b
	je	.label_442
	cmp	byte ptr [r13 + 0x18], 0
	mov	r15b, 1
	mov	esi, dword ptr [rbp - 0x3c]
	jne	.label_206
	jmp	.label_228
.label_328:
	xor	r15d, r15d
.label_474:
	mov	eax, dword ptr [rbp - 0x3b8]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_441
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x1f8]
	cmp	ecx, 0xa000
	jne	.label_441
	cmp	byte ptr [r13 + 0x15], 0
	je	.label_441
	xor	r15d, r15d
	jmp	.label_221
.label_441:
	mov	rcx, qword ptr [r13]
	test	ecx, ecx
	je	.label_506
	test	r15b, r15b
	je	.label_509
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	same_name
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	mov	esi, dword ptr [rbp - 0x3c]
	jne	.label_206
	xor	r15d, r15d
	jmp	.label_228
.label_506:
	cmp	byte ptr [r13 + 0x18], 0
	jne	.label_514
	cmp	byte ptr [r13 + 0x15], 0
	je	.label_515
.label_514:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x18]
	cmp	ecx, 0xa000
	jne	.label_516
	xor	r15d, r15d
	jmp	.label_221
.label_509:
	and	eax, 0xf000
	xor	r15d, r15d
	cmp	eax, 0xa000
	jne	.label_221
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	je	.label_221
	mov	al, byte ptr [r13 + 0x18]
	test	al, al
	jne	.label_221
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_206
	xor	r15d, r15d
	jmp	.label_221
.label_516:
	test	r15b, r15b
	je	.label_515
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_515
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	same_name
	test	al, al
	je	.label_537
	mov	eax, dword ptr [r12 + 0x18]
	mov	dl, byte ptr [rbp + 0x10]
.label_515:
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_539
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	je	.label_539
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, qword ptr [r14 + 8]
	jne	.label_544
	mov	rax, qword ptr [r12]
	cmp	rax, qword ptr [r14]
	jne	.label_417
	mov	r15b, 1
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_221
.label_539:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_554
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x160]
	cmp	eax, 0xa000
	jne	.label_554
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_554
	mov	rdi, qword ptr [rbp - 0x48]
	call	canonicalize_file_name
	mov	dl, byte ptr [rbp + 0x10]
	mov	r15, rax
	test	r15, r15
	je	.label_554
	mov	rdi, r15
	mov	rsi, rbx
	call	same_name
	mov	r14d, eax
	mov	rdi, r15
	call	free
	mov	dl, byte ptr [rbp + 0x10]
	test	r14b, r14b
	mov	esi, dword ptr [rbp - 0x3c]
	jne	.label_206
	xor	r15d, r15d
	jmp	.label_228
.label_554:
	cmp	byte ptr [r13 + 0x2c], 0
	je	.label_197
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_197
	xor	r15d, r15d
	jmp	.label_221
.label_197:
	cmp	dword ptr [r13 + 4], 2
	jne	.label_206
	mov	eax, 0xf000
	and	eax, dword ptr [r12 + 0x18]
	cmp	eax, 0xa000
	jne	.label_209
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x48]
	call	__xstat
	test	eax, eax
	jne	.label_219
	jmp	.label_220
.label_442:
	xor	r15d, r15d
	jmp	.label_221
.label_537:
	cmp	byte ptr [r13 + 0x18], 0
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_206
	xor	r15d, r15d
	jmp	.label_228
.label_544:
	xor	r15d, r15d
	jmp	.label_221
.label_209:
	lea	rdi, [rbp - 0x3d0]
	mov	edx, 0x90
	mov	rsi, r12
	call	memcpy
.label_220:
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_233
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_244
.label_219:
	xor	r15d, r15d
	mov	dl, byte ptr [rbp + 0x10]
.label_221:
	mov	esi, dword ptr [rbp - 0x3c]
.label_228:
	mov	ebx, esi
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	mov	r14, qword ptr [rbp + 0x28]
	je	.label_247
	mov	al, byte ptr [r13 + 0x2d]
	test	al, al
	je	.label_247
	cmp	byte ptr [r13 + 0x1f], 0
	je	.label_255
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_258
	mov	rax, qword ptr [rbp - 0x2a8]
	cmp	rax, qword ptr [rbp - 0x178]
	sete	al
	jmp	.label_261
.label_255:
	xor	eax, eax
	jmp	.label_263
.label_258:
	xor	eax, eax
.label_261:
	xor	al, 1
.label_263:
	movzx	ecx, al
	lea	rsi, [rbp - 0x2a8]
	lea	rdx, [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x30]
	call	utimecmp
	test	eax, eax
	mov	dl, byte ptr [rbp + 0x10]
	js	.label_247
	test	r14, r14
	je	.label_272
	mov	byte ptr [r14], 1
.label_272:
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdi, rbx
	call	remember_copied
	mov	rsi, rbx
	mov	r14b, 1
	test	rax, rax
	mov	dl, byte ptr [rbp - 0x78]
	je	.label_223
	movzx	ecx, byte ptr [r13 + 0x2e]
	movzx	r8d, dl
	mov	edx, 1
	mov	rbx, rax
	mov	rdi, rbx
	call	create_hard_link
	mov	rsi, rbx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0xc8], rcx
	test	al, al
	jne	.label_223
	jmp	.label_274
.label_247:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_285
	mov	eax, dword ptr [r13 + 8]
	cmp	eax, 2
	je	.label_289
	cmp	eax, 3
	je	.label_291
	cmp	eax, 4
	jne	.label_293
	cmp	byte ptr [r13 + 0x2f], 0
	je	.label_293
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0xa000
	je	.label_293
	call	can_write_any_file
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	jne	.label_293
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x30]
	call	euidaccess
	mov	dl, byte ptr [rbp + 0x10]
	test	eax, eax
	je	.label_293
.label_291:
	lea	rdx, [rbp - 0x2a8]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x30]
	call	overwrite_ok
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	jne	.label_293
.label_289:
	mov	r14b, 1
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_223
	mov	byte ptr [rax], 1
	jmp	.label_223
.label_285:
	cmp	ebx, 0x4000
	je	.label_293
	mov	eax, dword ptr [r13 + 8]
	mov	r14b, 1
	cmp	eax, 2
	je	.label_223
	cmp	eax, 3
	jne	.label_293
	lea	rdx, [rbp - 0x2a8]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x30]
	call	overwrite_ok
	test	r15b, r15b
	jne	.label_223
	test	al, al
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_320
	jmp	.label_223
.label_293:
	mov	r14b, 1
	test	r15b, r15b
	jne	.label_223
.label_320:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	je	.label_327
	cmp	ebx, 0x4000
	jne	.label_333
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_339
	cmp	dword ptr [r13], 0
	je	.label_339
.label_333:
	test	dl, dl
	je	.label_327
	cmp	dword ptr [r13], 3
	je	.label_327
	mov	rdi, qword ptr [r13 + 0x40]
	lea	rdx, [rbp - 0x2a8]
	mov	rsi, qword ptr [rbp - 0x30]
	call	seen_file
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_327
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	jmp	.label_271
.label_327:
	cmp	ebx, 0x4000
	je	.label_349
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	jne	.label_349
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_354
	cmp	dword ptr [r13], 0
	je	.label_354
.label_349:
	mov	bl, byte ptr [r13 + 0x18]
	test	bl, bl
	je	.label_237
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x160]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_237
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	je	.label_237
	cmp	dword ptr [r13], 0
	je	.label_367
.label_237:
	mov	r14, qword ptr [r13]
	test	r14d, r14d
	je	.label_368
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	dl, byte ptr [rbp + 0x10]
	mov	r15, rax
	cmp	byte ptr [r15], 0x2e
	jne	.label_373
	xor	eax, eax
	cmp	byte ptr [r15 + 1], 0x2e
	sete	al
	mov	al, byte ptr [r15 + rax + 1]
	test	al, al
	je	.label_368
	cmp	al, 0x2f
	je	.label_368
.label_373:
	test	bl, bl
	jne	.label_379
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	jne	.label_379
.label_368:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	mov	ecx, 0x11
	cmp	eax, 0x4000
	jne	.label_384
	mov	esi, dword ptr [rbp - 0x3c]
	mov	r8, qword ptr [rbp - 0x60]
	xor	r14d, r14d
	mov	r15b, byte ptr [rbp - 0x78]
	jmp	.label_337
.label_379:
	cmp	r14d, 3
	je	.label_280
	mov	rdi, r15
	call	strlen
	mov	qword ptr [rbp - 0xc8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	rdi, qword ptr [rip + simple_backup_suffix]
	mov	qword ptr [rbp - 0x60], rdi
	call	strlen
	mov	r12, rax
	lea	rax, [r12 + r14]
	cmp	qword ptr [rbp - 0xc8], rax
	jne	.label_280
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_280
	add	r15, r14
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x60]
	call	strcmp
	test	eax, eax
	jne	.label_280
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	strlen
	mov	r14, rax
	lea	rdi, [r12 + r14 + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rcx, -1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	__mempcpy_chk
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdi, rax
	call	strcpy
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	mov	r14d, eax
	mov	rdi, rbx
	call	free
	test	r14d, r14d
	jne	.label_280
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x208]
	jne	.label_280
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x210]
	jne	.label_280
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_439
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
	jmp	.label_447
.label_280:
	mov	edx, dword ptr [r13]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x30]
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_473
	mov	rdi, rbx
	call	strlen
	mov	r14, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r14, rax
	mov	rsp, r14
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	ecx, 0x11
	mov	r8b, 1
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	mov	r15b, byte ptr [rbp - 0x78]
	jmp	.label_337
.label_384:
	test	bl, bl
	mov	r8, qword ptr [rbp - 0x60]
	mov	r15b, byte ptr [rbp - 0x78]
	jne	.label_454
	cmp	byte ptr [r13 + 0x15], 0
	jne	.label_234
	cmp	byte ptr [r13 + 0x22], 0
	je	.label_457
	cmp	qword ptr [rbp - 0x298], 1
	ja	.label_234
.label_457:
	movabs	rax, 0xffffffff00000000
	and	r14, rax
	movabs	rax, 0x200000000
	cmp	r14, rax
	jne	.label_454
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x160]
	xor	r14d, r14d
	cmp	eax, 0x8000
	jne	.label_234
	mov	esi, dword ptr [rbp - 0x3c]
	jmp	.label_337
.label_339:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
.label_271:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_510:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_478
.label_454:
	mov	esi, dword ptr [rbp - 0x3c]
	xor	r14d, r14d
	jmp	.label_337
.label_354:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_495
.label_473:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	cmp	ebx, 2
	mov	r15b, byte ptr [rbp - 0x78]
	jne	.label_499
	mov	ecx, 0x11
	mov	r8b, 1
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	jmp	.label_337
.label_234:
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_502
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 2
	jne	.label_503
.label_502:
	mov	r8b, 1
	xor	r14d, r14d
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_504
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_508
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	r8b, 1
.label_504:
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	mov	ecx, 0x11
.label_337:
	test	dl, dl
	je	.label_278
	cmp	qword ptr [r13 + 0x40], 0
	je	.label_278
	cmp	byte ptr [r13 + 0x18], 0
	jne	.label_278
	cmp	dword ptr [r13], 0
	jne	.label_278
	mov	rax, qword ptr [rbp - 0x68]
	test	al, al
	jne	.label_298
	lea	rbx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	r12, r8
	mov	byte ptr [rbp - 0x78], r15b
	mov	r15d, ecx
	call	__lxstat
	mov	ecx, r15d
	mov	r15b, byte ptr [rbp - 0x78]
	mov	r8, r12
	mov	dl, byte ptr [rbp + 0x10]
	test	eax, eax
	jne	.label_528
	jmp	.label_531
.label_298:
	lea	rbx, [rbp - 0x2a8]
.label_531:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_528
	mov	rdi, qword ptr [r13 + 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	r12d, r15d
	mov	r15, r8
	mov	ebx, ecx
	call	seen_file
	mov	ecx, ebx
	mov	r8, r15
	mov	r15d, r12d
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_528
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_542
	jmp	.label_543
.label_528:
	mov	esi, dword ptr [rbp - 0x3c]
.label_278:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_545
	mov	eax, esi
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_545
	mov	al, byte ptr [r13 + 0x18]
	test	al, al
	jne	.label_545
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r14
	mov	r12d, r15d
	mov	r15, r8
	mov	ebx, ecx
	call	emit_verbose
	mov	ecx, ebx
	mov	r8, r15
	mov	r15d, r12d
	mov	dl, byte ptr [rbp + 0x10]
.label_545:
	xor	edi, edi
	test	ecx, ecx
	mov	qword ptr [rbp - 0xc8], r14
	je	.label_217
	mov	ebx, dword ptr [rbp - 0x3c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	mov	byte ptr [rbp - 0x78], r15b
	jne	.label_559
	mov	al, byte ptr [r13 + 0x2a]
	test	al, al
	je	.label_559
	mov	r15d, ecx
	mov	r14, r13
	mov	r13, r8
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rbp - 0x170]
	test	dl, dl
	je	.label_555
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rax
.label_232:
	call	remember_copied
	jmp	.label_205
.label_559:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_207
	cmp	qword ptr [rbp - 0x168], 1
	jne	.label_207
	mov	r15d, ecx
	mov	r14, r13
	mov	r13, r8
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x170]
	jmp	.label_212
.label_207:
	xor	edi, edi
	cmp	byte ptr [r13 + 0x22], 0
	je	.label_217
	xor	edi, edi
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_217
	cmp	qword ptr [rbp - 0x168], 1
	ja	.label_226
	mov	esi, dword ptr [r13 + 4]
	cmp	esi, 3
	sete	al
	xor	edi, edi
	cmp	esi, 4
	je	.label_226
	and	al, dl
	je	.label_217
.label_226:
	mov	r15d, ecx
	mov	r14, r13
	mov	r13, r8
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdi, qword ptr [rbp - 0x30]
	jmp	.label_232
.label_555:
	mov	rdi, rcx
	mov	rsi, rax
.label_212:
	call	src_to_dest_lookup
.label_205:
	xor	edi, edi
	test	rax, rax
	mov	r8, r13
	mov	r13, r14
	mov	ecx, r15d
	mov	r15b, byte ptr [rbp - 0x78]
	je	.label_217
	cmp	ebx, 0x4000
	jne	.label_251
	mov	r15d, ecx
	mov	rbx, r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	r12, rax
	call	same_name
	test	al, al
	je	.label_465
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [rip + top_level_src_name]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [rip + top_level_dst_name]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	rsi, r12
	jmp	.label_274
.label_251:
	movzx	ecx, byte ptr [r13 + 0x2e]
	movzx	r8d, r15b
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbx, rax
	call	create_hard_link
	mov	r14b, 1
	test	al, al
	mov	rsi, rbx
	jne	.label_223
	jmp	.label_274
.label_465:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], r12
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_286
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + top_level_src_name]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r14b, 1
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_223
	mov	al, byte ptr [r13 + 0x18]
	test	al, al
	je	.label_223
	mov	rax, qword ptr [rbp + 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_223
.label_286:
	mov	ecx, dword ptr [r13 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_305
	and	al, byte ptr [rbp + 0x10]
	mov	r8, rbx
	mov	ecx, r15d
	jne	.label_306
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rbx, qword ptr [rbp - 0x68]
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	call	error
	mov	rsi, rbx
	jmp	.label_274
.label_305:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r8, rbx
	mov	ecx, r15d
	jmp	.label_322
.label_306:
	mov	rdi, qword ptr [rbp - 0x68]
.label_322:
	mov	r15b, byte ptr [rbp - 0x78]
.label_217:
	mov	qword ptr [rbp - 0x68], rdi
	cmp	byte ptr [r13 + 0x18], 0
	mov	rbx, qword ptr [rbp - 0x48]
	mov	r14d, dword ptr [rbp - 0x3c]
	je	.label_326
	cmp	ecx, 0x11
	jne	.label_334
	mov	rdi, rbx
	mov	rsi, qword ptr [rbp - 0x30]
	call	rename
	test	eax, eax
	je	.label_340
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_334:
	cmp	ecx, 0x16
	je	.label_218
	cmp	ecx, 0x12
	je	.label_344
	test	ecx, ecx
	jne	.label_346
.label_340:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_347
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, rbx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0xc8]
	call	emit_verbose
.label_347:
	cmp	byte ptr [r13 + 0x21], 0
	mov	r14, qword ptr [rbp + 0x28]
	je	.label_355
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_358
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_361
.label_358:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_355
.label_218:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [rip + top_level_src_name]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [rip + top_level_dst_name]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r14b, 1
	jmp	.label_223
.label_344:
	mov	r12d, r15d
	and	r14d, 0xf000
	cmp	r14d, 0x4000
	jne	.label_396
	mov	rdi, qword ptr [rbp - 0x30]
	call	rmdir
	jmp	.label_399
.label_346:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	mov	r15d, ecx
	call	dcgettext
	mov	rdx, rbx
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	jmp	.label_411
.label_396:
	mov	rdi, qword ptr [rbp - 0x30]
	call	unlink
.label_399:
	test	eax, eax
	je	.label_418
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	jne	.label_420
.label_418:
	cmp	r14d, 0x4000
	mov	r8b, 1
	je	.label_423
	mov	al, byte ptr [r13 + 0x2e]
	test	al, al
	mov	r14d, dword ptr [rbp - 0x3c]
	mov	r15d, r12d
	je	.label_326
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0xc8]
	call	emit_verbose
	mov	r8b, 1
	jmp	.label_326
.label_420:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r13
	mov	rcx, r12
.label_411:
	call	error
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x170]
	call	forget_created
	jmp	.label_223
.label_361:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_355:
	mov	rsi, qword ptr [rbp - 0x30]
	test	r14, r14
	je	.label_452
	mov	byte ptr [r14], 1
.label_452:
	mov	r14b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_223
	cmp	byte ptr [r13 + 0x31], 0
	jne	.label_223
	mov	rdi, qword ptr [r13 + 0x40]
	lea	rdx, [rbp - 0x178]
	call	record_file
	jmp	.label_223
.label_423:
	mov	r14d, dword ptr [rbp - 0x3c]
	mov	r15d, r12d
.label_326:
	cmp	byte ptr [r13 + 0x2b], 0
	mov	r12d, r14d
	je	.label_463
	mov	r12d, dword ptr [r13 + 0x10]
.label_463:
	mov	ebx, 0x3f
	cmp	byte ptr [r13 + 0x1d], 0
	jne	.label_464
	mov	eax, r14d
	and	eax, 0xf000
	xor	edx, edx
	cmp	eax, 0x4000
	mov	ebx, 0x12
	cmovne	ebx, edx
.label_464:
	mov	qword ptr [rbp - 0x60], r8
	movzx	ecx, r8b
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	r8, r13
	call	set_process_security_ctx
	test	al, al
	je	.label_475
	mov	r8d, r12d
	and	ebx, r8d
	mov	edi, r14d
	and	edi, 0xf000
	cmp	edi, 0x4000
	jne	.label_366
	mov	r15d, ebx
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_488
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
.label_497:
	cmp	qword ptr [rdx + 8], rcx
	jne	.label_494
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_364
.label_494:
	mov	rdx, qword ptr [rdx]
	test	rdx, rdx
	jne	.label_497
.label_488:
	mov	rdx, rsp
	lea	rbx, [rdx - 0x20]
	mov	qword ptr [rbp - 0x78], rbx
	mov	rsp, rbx
	mov	rbx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx - 0x20], rbx
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	sil, sil
	mov	dword ptr [rbp - 0x6c], edi
	jne	.label_451
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	jne	.label_451
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_518
	cmp	byte ptr [r13 + 0x25], 0
	je	.label_505
.label_518:
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_511
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_513
.label_511:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r13 + 0x26], 0
	mov	r15d, 0
	mov	rsi, qword ptr [rbp - 0x68]
	jne	.label_274
	jmp	.label_318
.label_475:
	xor	r14d, r14d
	jmp	.label_223
.label_366:
	cmp	byte ptr [r13 + 0x2c], 0
	mov	dword ptr [rbp - 0x7c], ebx
	je	.label_309
	mov	dword ptr [rbp - 0x6c], edi
	mov	r15, qword ptr [rbp - 0x48]
	cmp	byte ptr [r15], 0x2f
	je	.label_357
	mov	rdi, qword ptr [rbp - 0x30]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_529
	cmp	byte ptr [rbx + 1], 0
	je	.label_530
.label_529:
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_532
	call	__xstat
	test	eax, eax
	jne	.label_530
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_541
.label_530:
	mov	rdi, rbx
	call	free
.label_357:
	movzx	ecx, byte ptr [r13 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r12d, eax
	test	r12d, r12d
	jle	.label_548
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_552
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	rcx, rbx
	call	error
	jmp	.label_222
.label_451:
	and	r8d, 0xfff
	mov	eax, r15d
	mov	esi, eax
	not	esi
	and	esi, r8d
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdi, rbx
	call	mkdir
	test	eax, eax
	je	.label_200
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	jmp	.label_203
.label_309:
	cmp	byte ptr [r13 + 0x17], 0
	je	.label_208
	mov	ebx, edi
	cmp	byte ptr [r13 + 0x16], 0
	mov	al, 1
	jne	.label_210
	cmp	dword ptr [r13 + 8], 3
	sete	al
.label_210:
	movzx	edx, al
	movzx	r8d, r15b
	xor	r15d, r15d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	call	create_hard_link
	test	al, al
	je	.label_222
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	edi, ebx
	jmp	.label_224
.label_200:
	lea	rdx, [rbp - 0x2a8]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	test	eax, eax
	je	.label_236
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
.label_203:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
.label_311:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	jmp	.label_264
.label_548:
	mov	r15b, 1
	xor	r14d, r14d
.label_456:
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_450
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
.label_485:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	jmp	.label_264
.label_208:
	cmp	edi, 0x8000
	je	.label_268
	cmp	edi, 0xa000
	je	.label_269
	mov	al, byte ptr [r13 + 0x14]
	test	al, al
	je	.label_269
.label_268:
	mov	dword ptr [rbp - 0x6c], edi
	mov	eax, dword ptr [rbp - 0x160]
	mov	dword ptr [rbp - 0xa4], eax
	mov	al, byte ptr [r13 + 0x23]
	mov	byte ptr [rbp - 0x78], al
	xor	esi, esi
	cmp	dword ptr [r13 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	mov	r15, qword ptr [rbp - 0x48]
	mov	rdi, r15
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_246
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	mov	dword ptr [rbp - 0x88], ebx
	je	.label_279
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
.label_426:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_297
.label_236:
	mov	r14d, dword ptr [rbp - 0x290]
	mov	eax, r14d
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_299
	xor	r12d, r12d
	jmp	.label_303
.label_299:
	mov	esi, r14d
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
	mov	r12b, 1
	test	eax, eax
	je	.label_303
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_311
.label_303:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_458
	mov	rdx, qword ptr [rbp - 0x2a8]
	mov	rsi, qword ptr [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x30]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_458:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_318
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_319
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_318
.label_246:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
.label_479:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_254
.label_541:
	mov	rax, qword ptr [rbp - 0x208]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_350
	mov	r14, qword ptr [rbp - 0x210]
	mov	r15, qword ptr [rbp - 0x3d0]
	mov	rdi, rbx
	call	free
	cmp	r14, r15
	mov	r15, qword ptr [rbp - 0x48]
	je	.label_357
	jmp	.label_360
.label_269:
	mov	ecx, ebx
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_363
	movzx	eax, di
	cmp	eax, 0x6000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_365
	cmp	eax, 0x2000
	je	.label_365
	cmp	eax, 0x1000
	jne	.label_371
	mov	r15d, edi
	mov	ebx, ecx
	not	ebx
	and	ebx, r14d
	mov	qword ptr [rbp - 0x210], 0
	lea	rcx, [rbp - 0x210]
	xor	edi, edi
	mov	r14, qword ptr [rbp - 0x30]
	mov	rsi, r14
	mov	edx, ebx
	call	__xmknod
	mov	cl, 1
	mov	qword ptr [rbp - 0x38], rcx
	test	eax, eax
	je	.label_381
	and	ebx, 0xffffefff
	mov	rdi, r14
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_381
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
	jmp	.label_390
.label_513:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_505:
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_318
.label_499:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_398
.label_367:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	jmp	.label_412
.label_279:
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_414
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x3d0]
	jne	.label_414
	and	r12d, 0x1ff
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	mov	edx, eax
	mov	ecx, dword ptr [rbp - 0x7c]
	jne	.label_266
	mov	dword ptr [rbp - 0x4c], r12d
	cmp	byte ptr [r13 + 0x23], 0
	mov	eax, 0x201
	mov	esi, 1
	cmovne	esi, eax
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	byte ptr [r13 + 0x21], 0
	mov	dword ptr [rbp - 0x38], ebx
	je	.label_431
	test	ebx, ebx
	jns	.label_433
	jmp	.label_402
.label_414:
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_297:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_292:
	mov	edi, dword ptr [rbp - 0x88]
	call	close
	test	eax, eax
	mov	r15, qword ptr [rbp - 0x48]
	jns	.label_443
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	call	error
.label_443:
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	test	al, al
	je	.label_222
	xor	r15d, r15d
	mov	r14b, 1
	jmp	.label_456
.label_350:
	mov	rdi, rbx
	call	free
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_254:
	mov	rdx, rbx
.label_264:
	call	error
.label_222:
	mov	rsi, qword ptr [rbp - 0x68]
.label_274:
	cmp	byte ptr [r13 + 0x25], 0
	jne	.label_466
	test	rsi, rsi
	mov	r14, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0xc8]
	jne	.label_313
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x170]
	call	forget_created
.label_313:
	test	rbx, rbx
	je	.label_476
	mov	rdi, rbx
	mov	rsi, r14
	call	rename
	test	eax, eax
	je	.label_482
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
	jmp	.label_487
.label_476:
	xor	r14d, r14d
	jmp	.label_223
.label_482:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_492
	mov	r12, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_493
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rbx
	call	__printf_chk
	jmp	.label_223
.label_492:
	xor	r14d, r14d
	jmp	.label_223
.label_363:
	movzx	eax, di
	cmp	eax, 0xa000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_444
	cmp	eax, 0xc000
	jne	.label_371
.label_365:
	mov	r15d, edi
	mov	edx, ecx
	not	edx
	and	edx, r14d
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x210], rax
	lea	rcx, [rbp - 0x210]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rsi, rbx
	call	__xmknod
	test	eax, eax
	je	.label_517
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
	jmp	.label_203
.label_319:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_523
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_526
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_318:
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	dword ptr [rbp - 0x7c], r15d
	mov	dword ptr [rbp - 0x4c], r14d
	je	.label_533
	mov	al, byte ptr [r13 + 0x1c]
	test	al, al
	je	.label_533
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x178]
	jne	.label_538
.label_533:
	movups	xmm0, xmmword ptr [r13 + 0x40]
	movaps	xmmword ptr [rbp - 0x1d0], xmm0
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmm3, xmmword ptr [r13 + 0x30]
	movaps	xmmword ptr [rbp - 0x1e0], xmm3
	movaps	xmmword ptr [rbp - 0x1f0], xmm2
	movaps	xmmword ptr [rbp - 0x200], xmm1
	movaps	xmmword ptr [rbp - 0x210], xmm0
	mov	esi, 2
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	call	savedir
	test	rax, rax
	je	.label_556
	cmp	dword ptr [r13 + 4], 3
	jne	.label_557
	mov	dword ptr [rbp - 0x20c], 2
.label_557:
	mov	qword ptr [rbp - 0xb8], r12
	cmp	byte ptr [rax], 0
	mov	qword ptr [rbp - 0x98], rax
	mov	r15b, 1
	je	.label_558
	xor	r14d, r14d
	mov	r12, rax
	mov	rbx, qword ptr [rbp - 0x30]
.label_241:
	mov	byte ptr [rbp - 0x38], r15b
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r12
	call	file_name_concat
	mov	r15, rax
	mov	qword ptr [rbp - 0x88], r15
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	file_name_concat
	mov	rcx, rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rax, qword ptr [rbp + 0x18]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rbp - 0x340], al
	mov	rdi, r15
	mov	rsi, rcx
	mov	edx, dword ptr [rbp - 0xa4]
	lea	rcx, [rbp - 0x178]
	mov	r8, qword ptr [rbp - 0x78]
	lea	r9, [rbp - 0x210]
	push	0
	lea	rax, [rbp - 0x3d0]
	push	rax
	lea	rax, [rbp - 0x340]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r15d, eax
	and	r15b, byte ptr [rbp - 0x38]
	movzx	ebx, byte ptr [rbp - 0x3d0]
	mov	rax, qword ptr [rbp + 0x20]
	or	byte ptr [rax], bl
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	test	bl, bl
	jne	.label_238
	and	r14b, 1
	or	r14b, byte ptr [rbp - 0x340]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [r12 + rax + 1], 0
	lea	r12, [r12 + rax + 1]
	mov	rbx, qword ptr [rbp - 0x30]
	jne	.label_241
	jmp	.label_238
.label_556:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_262
.label_538:
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_262
.label_558:
	xor	r14d, r14d
.label_238:
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	and	r14b, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], r14b
	test	r15b, r15b
	setne	al
	mov	qword ptr [rbp - 0x38], rax
	mov	r12, qword ptr [rbp - 0xb8]
.label_262:
	xor	r15d, r15d
	xor	r14d, r14d
.label_450:
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
.label_563:
	mov	edi, dword ptr [rbp - 0x6c]
.label_224:
	test	dl, dl
	jne	.label_273
	cmp	edi, 0x4000
	je	.label_273
	mov	al, byte ptr [r13 + 0x14]
	test	al, al
	jne	.label_273
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_275
	cmp	byte ptr [r13 + 0x25], 0
	je	.label_273
.label_275:
	mov	dword ptr [rbp - 0x88], r15d
	mov	r15, r12
	mov	dword ptr [rbp - 0x6c], edi
	mov	r12, rdx
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_277
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_283
.label_277:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rsi, qword ptr [rbp - 0x68]
	cmp	byte ptr [r13 + 0x26], 0
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, r12
	mov	edi, dword ptr [rbp - 0x6c]
	mov	r12, r15
	mov	r15d, dword ptr [rbp - 0x88]
	jne	.label_274
	jmp	.label_273
.label_283:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, r12
	mov	edi, dword ptr [rbp - 0x6c]
	mov	r12, r15
	mov	r15d, dword ptr [rbp - 0x88]
.label_273:
	test	cl, cl
	je	.label_310
	cmp	qword ptr [r13 + 0x40], 0
	je	.label_310
	mov	dword ptr [rbp - 0x68], r14d
	mov	r14, r12
	mov	r12d, r15d
	mov	r15d, edi
	mov	rbx, rdx
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	call	__lxstat
	test	eax, eax
	jne	.label_314
	mov	rdi, qword ptr [r13 + 0x40]
	lea	rdx, [rbp - 0x210]
	mov	rsi, qword ptr [rbp - 0x30]
	call	record_file
.label_314:
	mov	rdx, rbx
	mov	edi, r15d
	mov	r15d, r12d
	mov	r12, r14
	mov	r14d, dword ptr [rbp - 0x68]
.label_310:
	cmp	edi, 0x4000
	je	.label_324
	mov	al, byte ptr [r13 + 0x17]
	test	al, al
	jne	.label_301
.label_324:
	test	r14b, r14b
	jne	.label_301
	cmp	byte ptr [r13 + 0x1f], 0
	mov	rbx, qword ptr [rbp - 0x30]
	je	.label_332
	mov	qword ptr [rbp - 0x60], rdx
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x210], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x200], xmm0
	lea	rsi, [rbp - 0x210]
	mov	rdi, rbx
	test	r15b, r15b
	je	.label_336
	call	lutimens
	test	eax, eax
	je	.label_343
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_348
	jmp	.label_343
.label_336:
	call	utimens
	test	eax, eax
	je	.label_343
	call	__errno_location
.label_348:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x68], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x68]
	mov	rdx, r14
	call	error
	cmp	byte ptr [r13 + 0x24], 0
	je	.label_343
	xor	r14d, r14d
	jmp	.label_223
.label_343:
	mov	rdx, qword ptr [rbp - 0x60]
.label_332:
	test	r15b, r15b
	jne	.label_301
	cmp	byte ptr [r13 + 0x1d], 0
	je	.label_374
	test	dl, dl
	jne	.label_369
	mov	eax, dword ptr [rbp - 0x15c]
	cmp	eax, dword ptr [rbp - 0x28c]
	jne	.label_369
	mov	eax, dword ptr [rbp - 0x158]
	cmp	eax, dword ptr [rbp - 0x288]
	je	.label_374
.label_369:
	xor	r8d, r8d
	mov	r14, rdx
	test	dl, dl
	setne	r8b
	lea	rcx, [rbp - 0x178]
	lea	r9, [rbp - 0x2a8]
	mov	edx, 0xffffffff
	mov	rdi, r13
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_467
	test	eax, eax
	jne	.label_385
	and	dword ptr [rbp - 0x3c], 0xfffff1ff
.label_385:
	mov	rdx, r14
.label_374:
	cmp	byte ptr [r13 + 0x1e], 0
	jne	.label_387
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_391
.label_387:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x3c]
	call	copy_acl
	test	eax, eax
	je	.label_301
	cmp	byte ptr [r13 + 0x24], 0
	je	.label_301
	xor	r14d, r14d
	jmp	.label_223
.label_503:
	mov	r12, rbx
	xor	r14d, r14d
	xor	edi, edi
	mov	ebx, eax
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
.label_398:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_408
.label_233:
	lea	rdi, [rbp - 0x210]
	mov	edx, 0x90
	mov	rsi, r14
	call	memcpy
.label_244:
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x208]
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_417
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x210]
	jne	.label_419
	cmp	byte ptr [r13 + 0x17], 0
	je	.label_206
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	setne	r15b
	jmp	.label_221
.label_206:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
.label_543:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
.label_478:
	call	quotearg_n_style
.label_412:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_223
.label_417:
	xor	r15d, r15d
	jmp	.label_221
.label_467:
	xor	r14d, r14d
	jmp	.label_223
.label_517:
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
.label_381:
	xor	r14d, r14d
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	edi, r15d
	xor	r15d, r15d
	jmp	.label_224
.label_444:
	mov	dword ptr [rbp - 0x6c], edi
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r15, rax
	test	r15, r15
	je	.label_522
	movzx	ecx, byte ptr [r13 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x30]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_455
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	jne	.label_405
	mov	al, byte ptr [r13 + 0x2d]
	test	al, al
	je	.label_405
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0xa000
	jne	.label_405
	mov	rbx, qword ptr [rbp - 0x278]
	mov	rdi, r15
	call	strlen
	cmp	rbx, rax
	jne	.label_405
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_405
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	r12d, eax
	mov	rdi, rbx
	call	free
	test	r12d, r12d
	je	.label_455
.label_405:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
.label_390:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_479
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_484
	jmp	.label_485
.label_391:
	cmp	byte ptr [r13 + 0x2b], 0
	je	.label_490
	mov	edx, dword ptr [r13 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_301
	xor	r14d, r14d
	jmp	.label_223
.label_419:
	xor	r15d, r15d
	jmp	.label_221
.label_522:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
	jmp	.label_203
.label_490:
	mov	r15, rbx
	mov	rbx, rdx
	test	dl, dl
	je	.label_500
	mov	al, byte ptr [r13 + 0x20]
	test	al, al
	je	.label_500
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_501
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_501:
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r15
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_301
	xor	r14d, r14d
	jmp	.label_223
.label_455:
	mov	rdi, r15
	call	free
	mov	rbx, r13
	cmp	byte ptr [r13 + 0x25], 0
	jne	.label_466
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_519
	mov	esi, dword ptr [rbp - 0x15c]
	mov	edx, dword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x30]
	call	lchown
	test	eax, eax
	je	.label_519
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x16
	je	.label_524
	cmp	r14d, 1
	jne	.label_525
.label_524:
	cmp	byte ptr [rbx + 0x1a], 0
	je	.label_519
.label_525:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x30]
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_536
	mov	r13, rbx
	jmp	.label_222
.label_500:
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_403
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_540
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_540:
	not	eax
	and	dword ptr [rbp - 0x7c], eax
	test	r12b, r12b
	jne	.label_335
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_335
	test	bl, bl
	je	.label_551
	lea	rdx, [rbp - 0x2a8]
	mov	edi, 1
	mov	rsi, r15
	call	__lxstat
	test	eax, eax
	je	.label_551
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	jmp	.label_495
.label_519:
	mov	r15b, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r13, rbx
	jmp	.label_563
.label_431:
	test	ebx, ebx
	js	.label_204
	mov	al, byte ptr [r13 + 0x25]
	test	al, al
	je	.label_204
.label_433:
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_240
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_211
.label_240:
	mov	dword ptr [r15], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_204
	xor	r15d, r15d
	jmp	.label_235
.label_403:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_335
.label_211:
	mov	dword ptr [r15], 0x5f
.label_204:
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_402
	mov	qword ptr [rbp - 0x58], r13
	mov	dword ptr [rbp - 0xb8], 0
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x38]
	jmp	.label_248
.label_402:
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], r13
	cmp	byte ptr [r13 + 0x16], 0
	mov	dword ptr [rbp - 0xb8], 0
	mov	esi, dword ptr [rbp - 0x38]
	je	.label_248
	mov	rdi, qword ptr [rbp - 0x30]
	call	unlink
	test	eax, eax
	je	.label_257
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
.label_372:
	xor	ebx, ebx
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_292
.label_257:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x2e], 0
	je	.label_483
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_508
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	__printf_chk
.label_483:
	mov	dl, 1
	mov	r13, qword ptr [rbp - 0x58]
	cmp	byte ptr [r13 + 0x21], 0
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	r12d, dword ptr [rbp - 0x4c]
	je	.label_266
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r8, r13
	call	set_process_security_ctx
	mov	r12d, dword ptr [rbp - 0x4c]
	mov	dl, 1
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x38], rcx
	test	al, al
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	al, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	ebx, 0
	je	.label_292
	jmp	.label_266
.label_551:
	mov	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x4c], eax
	not	eax
	test	dword ptr [rbp - 0x7c], eax
	je	.label_335
	mov	r12b, 1
.label_335:
	test	r12b, 1
	je	.label_301
	mov	esi, dword ptr [rbp - 0x4c]
	or	esi, dword ptr [rbp - 0x7c]
	mov	rdi, r15
	call	chmod
	test	eax, eax
	je	.label_301
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r13 + 0x24], 0
	jne	.label_223
.label_301:
	mov	rax, qword ptr [rbp - 0x38]
	test	al, al
	setne	r14b
	jmp	.label_223
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
.label_447:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	r14d, r14d
	jmp	.label_510
.label_536:
	mov	r15b, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r13, rbx
	mov	edi, dword ptr [rbp - 0x6c]
	xor	r12d, r12d
	jmp	.label_224
.label_526:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_318
.label_466:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_266:
	mov	byte ptr [rbp - 0x60], dl
	mov	qword ptr [rbp - 0x58], r13
	mov	dword ptr [rbp - 0xb8], ecx
	mov	r15d, ecx
	not	r15d
	mov	dword ptr [rbp - 0x4c], r12d
	and	r15d, r12d
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	r13d, eax
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
	mov	ebx, r13d
	test	r13d, r13d
	jns	.label_356
	cmp	r14d, 0x11
	jne	.label_356
	mov	r14d, 0x11
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_362
	lea	rdx, [rbp - 0x340]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	call	__lxstat
	mov	r14d, 0x11
	test	eax, eax
	jne	.label_356
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	jne	.label_356
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_376
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	mov	r14d, dword ptr [r12]
.label_356:
	cmp	r14d, 0x15
	jne	.label_362
	test	ebx, ebx
	jns	.label_362
	mov	r14d, 0x15
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_362
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	strlen
	xor	r14d, r14d
	cmp	byte ptr [r15 + rax - 1], 0x2f
	setne	r14b
	or	r14d, 0x14
.label_362:
	mov	al, byte ptr [rbp - 0x60]
	mov	esi, ebx
.label_248:
	test	esi, esi
	js	.label_393
	mov	qword ptr [rbp - 0x60], rax
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	dword ptr [rbp - 0x38], esi
	call	__fxstat
	test	eax, eax
	je	.label_397
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_546:
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_235
.label_393:
	mov	qword ptr [rbp - 0x60], rax
	test	al, al
	mov	r13, qword ptr [rbp - 0x58]
	mov	r12d, dword ptr [rbp - 0x4c]
	mov	ecx, dword ptr [rbp - 0xb8]
	jne	.label_415
	cmp	r14d, 2
	jne	.label_415
	mov	dl, 1
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_266
.label_415:
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_426
.label_397:
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	cmp	byte ptr [rbp - 0x78], 0
	je	.label_250
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_432
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edi, dword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x88]
	call	ioctl
	test	eax, eax
	je	.label_250
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_432
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r14
	mov	r8, rbx
	call	error
	jmp	.label_546
.label_432:
	call	getpagesize
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x1d8]
	movabs	r13, 0x2000000000000001
	cmp	rax, r13
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	cmp	rax, r13
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 0xe0], rdx
	cmovae	rdx, rcx
	test	rax, rax
	cmovle	rdx, rcx
	cmp	rax, 0x20000
	cmovl	rdx, rcx
	mov	qword ptr [rbp - 0x98], rdx
	xor	r12d, r12d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rbp - 0x88]
	call	fdadvise
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0x3b8]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_470
	mov	rcx, qword ptr [rbp - 0x3a0]
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x37
	add	rdx, rcx
	sar	rdx, 9
	cmp	qword ptr [rbp - 0x390], rdx
	setl	r12b
.label_470:
	movsxd	r15, ebx
	and	eax, dword ptr [rbp - 0x1f8]
	cmp	eax, 0x8000
	jne	.label_392
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rbp - 0xbc], ecx
	je	.label_199
	and	al, r12b
	jne	.label_199
.label_392:
	mov	rax, qword ptr [rbp - 0x398]
	cmp	rax, r13
	mov	ecx, 0x200
	mov	edi, 0x200
	cmovb	rdi, rax
	test	rax, rax
	cmovle	rdi, rcx
	cmp	rax, r13
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	cmp	rax, 0x20000
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rbx
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_507
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	rdx, qword ptr [rbp - 0x98]
	cmp	rax, rdx
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	mov	qword ptr [rbp - 0x98], rdx
.label_507:
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	lea	rax, [rsi - 1]
	cmp	rax, rbx
	cmovae	rsi, rcx
	mov	qword ptr [rbp - 0x98], rsi
	mov	dword ptr [rbp - 0xbc], 0
.label_199:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rax + r15]
	call	xmalloc
	mov	rcx, rax
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r15
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe8], rcx
	test	r12b, r12b
	je	.label_521
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	qword ptr [rbp - 0xb0], rax
	mov	eax, dword ptr [rbp - 0xbc]
	test	al, al
	je	.label_527
	mov	rax, qword ptr [rbp - 0x58]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_388
.label_527:
	mov	dword ptr [rbp - 0x90], 1
.label_388:
	lea	rsi, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x88]
	call	extent_scan_init
	xor	eax, eax
	mov	qword ptr [rbp - 0xd0], rax
	cmp	dword ptr [rbp - 0x90], 3
	mov	eax, 0
	cmove	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x218], rax
	mov	r14b, 1
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_281
.label_300:
	cmp	qword ptr [rbp - 0x328], 0
	je	.label_547
	xor	r15d, r15d
.label_560:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rcx, [r15 + r15*2]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	r12, rdx
	mov	qword ptr [rbp - 0x78], rax
	lea	rax, [rax + rdx]
	cmp	rax, qword ptr [rbp - 0xb0]
	jle	.label_553
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, r12
	cmp	rcx, rax
	cmovg	rcx, rax
	mov	r12, rcx
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
.label_553:
	mov	r14, r12
	sub	r14, rbx
	sub	r14, qword ptr [rbp - 0xd0]
	je	.label_227
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x88]
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_198
	cmp	dword ptr [rbp - 0x90], 1
	jne	.label_225
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_216
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	edi, 0x20000
	mov	eax, 0x400
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_216
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_216:
	mov	r13d, dword ptr [rbp - 0x38]
.label_239:
	test	r14, r14
	je	.label_227
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	cmp	rbx, r14
	cmovae	rbx, r14
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, r13d
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r14, rcx
	cmp	rax, rbx
	je	.label_239
	jmp	.label_242
.label_227:
	xor	r14d, r14d
	jmp	.label_245
.label_225:
	xor	edx, edx
	cmp	dword ptr [rbp - 0x90], 3
	sete	dl
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, r14
	call	create_hole
	mov	r14b, 1
	test	al, al
	je	.label_253
.label_245:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rbp - 0x88]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rbp - 0x218]
	lea	rax, [rbp - 0x89]
	push	rax
	lea	rax, [rbp - 0xd8]
	push	rax
	push	qword ptr [rbp - 0x78]
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_253
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	r13, [rcx + r12]
	mov	al, byte ptr [rbp - 0x89]
	cmp	r13, qword ptr [rbp - 0xb0]
	je	.label_535
	inc	r15d
	mov	r15d, r15d
	cmp	r15, qword ptr [rbp - 0x328]
	mov	rbx, r12
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xd0], rdx
	jb	.label_560
	test	rcx, rcx
	je	.label_276
	mov	r14b, al
	jmp	.label_276
.label_547:
	mov	r12, rbx
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x78], rax
.label_276:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	cmp	byte ptr [rbp - 0x31f], 0
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbx, r12
	je	.label_281
	jmp	.label_295
.label_535:
	test	rcx, rcx
	je	.label_331
	mov	r14b, al
.label_331:
	mov	byte ptr [rbp - 0x31f], 1
	mov	r13, qword ptr [rbp - 0xb0]
	jmp	.label_276
.label_281:
	lea	rdi, [rbp - 0x340]
	call	extent_scan_read
	test	al, al
	jne	.label_300
	cmp	byte ptr [rbp - 0x31f], 0
	je	.label_404
.label_295:
	mov	r15, qword ptr [rbp - 0xb0]
	sub	r15, r13
	jg	.label_304
	and	r14b, 1
	je	.label_230
.label_304:
	cmp	dword ptr [rbp - 0x90], 1
	jne	.label_422
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_312
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_312
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_312:
	mov	r14d, 0x400
.label_424:
	test	r15, r15
	je	.label_230
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	ebx, 0x20000
	cmovne	rbx, r14
	cmp	rbx, r15
	cmovae	rbx, r15
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, dword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r15, rcx
	cmp	rax, rbx
	je	.label_424
	jmp	.label_409
.label_242:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
.label_382:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_253:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	jmp	.label_353
.label_376:
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	al, byte ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_372
.label_198:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	jmp	.label_382
.label_404:
	cmp	byte ptr [rbp - 0x320], 0
	je	.label_460
.label_521:
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0xbc]
	test	al, al
	cmovne	r8, qword ptr [rbp - 0xe0]
	xor	r9d, r9d
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rax, [rbp - 0xd8]
	lea	rbx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x88]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x98]
	push	rax
	push	rbx
	push	-1
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_353
	cmp	byte ptr [rbp - 0xd8], 0
	je	.label_250
	mov	rsi, qword ptr [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x38]
	call	ftruncate
	test	eax, eax
	jns	.label_250
	jmp	.label_409
.label_422:
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	ftruncate
	test	eax, eax
	je	.label_230
.label_409:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
.label_243:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_213:
	call	error
	jmp	.label_353
.label_230:
	cmp	dword ptr [rbp - 0x90], 3
	jne	.label_250
	sub	qword ptr [rbp - 0xb0], r13
	jle	.label_250
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x38]
	mov	rdx, r13
	mov	rcx, qword ptr [rbp - 0xb0]
	call	fallocate
	test	eax, eax
	jns	.label_250
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_250
	cmp	ebx, 0x5f
	jne	.label_434
.label_250:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_427
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x340], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x330], xmm0
	lea	rdx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fdutimens
	test	eax, eax
	je	.label_427
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_353
.label_427:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_453
	mov	eax, dword ptr [rbp - 0x15c]
	cmp	eax, dword ptr [rbp - 0x1f4]
	jne	.label_561
	mov	eax, dword ptr [rbp - 0x158]
	cmp	eax, dword ptr [rbp - 0x1f0]
	je	.label_453
.label_561:
	xor	r8d, r8d
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	setne	r8b
	lea	rcx, [rbp - 0x178]
	lea	r9, [rbp - 0x210]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x38]
	call	set_owner
	cmp	eax, -1
	je	.label_353
	test	eax, eax
	jne	.label_453
	and	dword ptr [rbp - 0xa4], 0xfffff1ff
.label_453:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_307
	cmp	byte ptr [rbp - 0x1f8], 0
	js	.label_307
	call	geteuid
	test	eax, eax
	je	.label_307
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_471
	mov	esi, 0x180
	mov	edi, dword ptr [rbp - 0x38]
	call	fchmod
	jmp	.label_477
.label_353:
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_235
.label_471:
	mov	esi, 0x180
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_477:
	test	eax, eax
	jne	.label_307
	mov	esi, dword ptr [rbp - 0xb8]
	not	esi
	and	esi, dword ptr [rbp - 0x4c]
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_489
	mov	edi, dword ptr [rbp - 0x38]
	call	fchmod
	jmp	.label_307
.label_489:
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_307:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_496
.label_435:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rbp - 0xa4]
	call	copy_acl
	test	eax, eax
	jne	.label_480
	jmp	.label_201
.label_496:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_498
	mov	r13, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x38]
	call	set_acl
	test	eax, eax
	sete	r15b
	jmp	.label_235
.label_498:
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	je	.label_512
	mov	rax, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rax + 0x20]
	test	al, al
	je	.label_512
	mov	edx, dword ptr [rip + cached_umask.mask]
	cmp	edx, -1
	jne	.label_550
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	edx, dword ptr [rip + cached_umask.mask]
.label_550:
	not	edx
	and	edx, 0x1b6
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x38]
	call	set_acl
	test	eax, eax
	sete	r15b
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_235
.label_512:
	cmp	dword ptr [rbp - 0xb8], 0
	je	.label_201
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_520
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_520:
	not	eax
	test	dword ptr [rbp - 0xb8], eax
	je	.label_201
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_231
	mov	edi, dword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x4c]
	call	fchmod
	jmp	.label_321
.label_231:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x4c]
	call	chmod
.label_321:
	test	eax, eax
	je	.label_201
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_480:
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15b, byte ptr [r13 + 0x24]
	xor	r15b, 1
	jmp	.label_235
.label_201:
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15b, 1
.label_235:
	mov	edi, dword ptr [rbp - 0x38]
	call	close
	test	eax, eax
	js	.label_549
	mov	qword ptr [rbp - 0x38], r15
	jmp	.label_468
.label_549:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_468:
	mov	rbx, qword ptr [rbp - 0xa0]
	jmp	.label_292
.label_460:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	jmp	.label_243
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407860

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078a0

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_566
	cmp	eax, 1
	jne	.label_564
.label_566:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_565
.label_564:
	xor	eax, eax
.label_565:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078d0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_567
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
	add	rsp, 8
.label_567:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407900

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_570
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_569
.label_570:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_569
	xor	r12b, 1
	jne	.label_569
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_508
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_569:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079f0

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_577
	call	can_write_any_file
	test	al, al
	jne	.label_577
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	je	.label_577
	mov	edi, dword ptr [rbx + 0x18]
	lea	rsi, [rsp + 0x14]
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15, qword ptr [rip + stderr]
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_575
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_575
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_573
.label_575:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
.label_572:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	r8, rax
	mov	r9d, dword ptr [rbx + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	call	__fprintf_chk
	jmp	.label_578
.label_577:
	mov	r15, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_574
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
.label_578:
	call	yesno
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_573:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
	jmp	.label_572
	nop	
	.section	.text
	.align	16
	#Procedure 0x407b30

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_523
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_580
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_581
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_580:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_579
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_579:
	mov	esi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bf0

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13d, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_589
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_587
	mov	edx, dword ptr [r9 + 0x18]
.label_588:
	add	rcx, 0x18
.label_595:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_589
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, r13d
	call	qset_acl
	test	eax, eax
	je	.label_589
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_594
	cmp	ebx, 1
	jne	.label_596
.label_594:
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_597
.label_596:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_593
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_597:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_583
.label_587:
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	jne	.label_591
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_589
.label_591:
	mov	edx, dword ptr [r9 + 0x18]
	test	al, al
	setne	bl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_588
	test	bl, bl
	jne	.label_588
	lea	rcx, [r15 + 0x10]
	jmp	.label_595
.label_589:
	cmp	r13d, -1
	je	.label_598
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_583
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_586
	cmp	ebx, 1
	jne	.label_590
.label_586:
	mov	esi, 0xffffffff
	mov	edi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_592
.label_598:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_583
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_585
	cmp	ebx, 1
	jne	.label_590
.label_585:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_592:
	mov	dword ptr [rbp], ebx
.label_590:
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_599
	cmp	ebx, 1
	jne	.label_582
.label_599:
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_584
.label_582:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_583
.label_584:
	xor	eax, eax
.label_583:
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
	.align	16
	#Procedure 0x407de0

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x1c], r9d
	mov	rbp, rcx
	mov	r15, rdx
	mov	dword ptr [rsp + 8], esi
	mov	r12d, edi
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r8, r8
	mov	rax, rbp
	mov	qword ptr [rsp + 0x40], r8
	cmovne	rax, r8
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_621
.label_602:
	mov	qword ptr [rsp + 0x10], rsi
	mov	rax, qword ptr [rsp + 0xa0]
	mov	byte ptr [rax], bl
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x28]
.label_621:
	cmp	rsi, rbp
	cmovb	rbp, rsi
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax]
.label_607:
	test	rsi, rsi
	je	.label_608
	mov	edi, r12d
	mov	rsi, r15
	mov	rdx, rbp
	call	read
	mov	r13, rax
	test	r13, r13
	jns	.label_601
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	mov	rsi, qword ptr [rsp + 0x28]
	je	.label_607
	jmp	.label_609
	nop	word ptr cs:[rax + rax]
.label_601:
	je	.label_608
	sub	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x98]
	add	qword ptr [rax], r13
	mov	ebx, r14d
	and	bl, 1
	mov	r8, r15
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x20], r15
	mov	dword ptr [rsp + 0xc], r12d
	nop	word ptr cs:[rax + rax]
.label_626:
	mov	r9d, ebx
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_600
	test	r12, r12
	je	.label_600
	mov	rbx, rsi
	not	rbp
	mov	rax, r13
	not	rax
	cmp	rbp, rax
	cmova	rax, rbp
	mov	rdx, -2
	sub	rdx, rax
	mov	rsi, rdi
	nop	word ptr [rax + rax]
.label_619:
	cmp	byte ptr [rsi], 0
	jne	.label_612
	mov	r14b, 1
	test	rdx, rdx
	je	.label_620
	inc	rsi
	mov	eax, edx
	dec	rdx
	test	al, 0xf
	jne	.label_619
	inc	rdx
	mov	rbp, rdi
	mov	r14, r8
	mov	r15d, r9d
	call	memcmp
	mov	r9d, r15d
	mov	r8, r14
	mov	rdi, rbp
	test	eax, eax
	sete	r14b
	jmp	.label_620
.label_612:
	xor	r14d, r14d
.label_620:
	mov	rsi, rbx
.label_600:
	mov	ebx, r14d
	and	bl, 1
	sete	al
	cmp	bl, r9b
	setne	r10b
	test	rsi, rsi
	setne	cl
	cmp	r13, r12
	sete	dl
	and	dl, al
	test	r12, r12
	sete	r15b
	or	r15b, dl
	and	cl, r10b
	jne	.label_615
	test	r15b, r15b
	jne	.label_615
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	rsi, rax
	ja	.label_610
	add	rsi, r12
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12d, dword ptr [rsp + 0xc]
	jmp	.label_617
	nop	
.label_615:
	mov	byte ptr [rsp + 6], bl
	mov	qword ptr [rsp + 0x10], rdi
	mov	byte ptr [rsp + 7], cl
	test	cl, 1
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	add	rsi, rbp
	test	r9b, r9b
	mov	rcx, rsi
	je	.label_623
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x88]
	call	create_hole
	test	al, al
	jne	.label_605
	jmp	.label_606
.label_623:
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, r8
	mov	rdx, rcx
	mov	rbx, rcx
	call	full_write
	cmp	rax, rbx
	jne	.label_611
.label_605:
	test	r15b, r15b
	je	.label_613
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 7], 1
	mov	eax, 0
	cmove	r12, rax
	mov	rsi, r12
	jmp	.label_616
	nop	word ptr cs:[rax + rax]
.label_613:
	mov	rsi, r12
	mov	rbp, r12
.label_616:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r8, rdi
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12d, dword ptr [rsp + 0xc]
	mov	bl, byte ptr [rsp + 6]
.label_617:
	add	rdi, rbp
	sub	r13, rbp
	jne	.label_626
	jmp	.label_602
.label_608:
	test	r14b, 1
	je	.label_604
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0x10]
	call	create_hole
	test	al, al
	je	.label_606
.label_604:
	mov	r14b, 1
	jmp	.label_614
.label_609:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x80]
.label_625:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_603:
	call	error
	jmp	.label_614
.label_606:
	xor	r14d, r14d
.label_614:
	mov	eax, r14d
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_610:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_618
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x80]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_603
.label_611:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_622
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x88]
	jmp	.label_625
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408180

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebx, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	js	.label_627
	mov	r15b, 1
	test	r12b, r12b
	je	.label_628
	sub	rax, rbp
	mov	esi, 3
	mov	edi, ebx
	mov	rdx, rax
	mov	rcx, rbp
	call	fallocate
	test	eax, eax
	jns	.label_628
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_628
	cmp	ebp, 0x5f
	je	.label_628
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_629
.label_627:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_629:
	call	error
.label_628:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408260

	.globl forget_created
	.type forget_created, @function
forget_created:
	push	rbx
	sub	rsp, 0x20
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, qword ptr [rip + src_to_dest]
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_630
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
.label_630:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082b0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082d0

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rip + src_to_dest]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_631
	mov	rax, qword ptr [rcx + 0x10]
.label_631:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x408300

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi, qword ptr [rip + src_to_dest]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_632
	xor	eax, eax
	cmp	r14, rbx
	je	.label_633
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r14 + 0x10]
.label_633:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_632:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408380

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [rip + src_to_dest],  rax
	test	rax, rax
	je	.label_634
	pop	rax
	ret	
.label_634:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4083b0

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083c0

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_635
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_635:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083e0
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi, qword ptr [rip + src_to_dest]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083f0

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 8]
	mov	r12, qword ptr [r14 + 0x28]
	movabs	r13, 0x7fffffffffffffff
	xor	r15d, r15d
.label_639:
	xor	esi, esi
	mov	edx, 0xff0
	lea	rdi, [rsp + 0x18]
	call	memset
	mov	qword ptr [rsp + 8], rbx
	mov	eax, dword ptr [r14 + 0x10]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rsp + 0x20], 0x48
	not	rbx
	mov	qword ptr [rsp + 0x10], rbx
	mov	edi, dword ptr [r14]
	mov	esi, 0xc020660b
	xor	eax, eax
	lea	rdx, [rsp + 8]
	call	ioctl
	test	eax, eax
	js	.label_646
	mov	ecx, dword ptr [rsp + 0x1c]
	test	rcx, rcx
	je	.label_648
	mov	rax, qword ptr [r14 + 0x18]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_637
	add	rax, rcx
	mov	qword ptr [r14 + 0x18], rax
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	jae	.label_658
	mov	rdi, qword ptr [r14 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	qword ptr [r14 + 0x28], rax
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x1c]
	test	r8d, r8d
	je	.label_651
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_660:
	mov	ecx, edx
	imul	rbx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rbx + 0x28]
	mov	rsi, qword ptr [rsp + rbx + 0x38]
	mov	rcx, r13
	sub	rcx, rsi
	cmp	rdi, rcx
	ja	.label_636
	test	r15d, r15d
	je	.label_653
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	mov	ecx, r9d
	and	ecx, 0xfffffffe
	mov	r10, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12]
	add	rbp, r10
	cmp	dword ptr [r12 + 0x10], ecx
	jne	.label_638
	cmp	rbp, rdi
	jne	.label_638
	add	r10, rsi
	mov	qword ptr [r12 + 8], r10
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_640
	nop	word ptr cs:[rax + rax]
.label_653:
	mov	rbp, qword ptr [r14 + 8]
	cmp	rbp, rdi
	ja	.label_650
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	jmp	.label_647
.label_638:
	cmp	rbp, rdi
	jbe	.label_647
.label_650:
	mov	rcx, rbp
	sub	rcx, rdi
	sub	rsi, rcx
	ja	.label_659
	lea	rcx, [rsp + rbx + 0x28]
	mov	qword ptr [rcx], rbp
	mov	qword ptr [rcx + 0x10], rsi
	dec	edx
	jmp	.label_640
	nop	word ptr cs:[rax + rax]
.label_647:
	mov	ecx, r15d
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	mov	qword ptr [rax + rcx*8], rdi
	mov	qword ptr [rax + rcx*8 + 8], rsi
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r15d
.label_640:
	inc	edx
	cmp	edx, r8d
	jb	.label_660
.label_651:
	test	byte ptr [r12 + 0x10], 1
	je	.label_642
	mov	byte ptr [r14 + 0x21], 1
.label_642:
	mov	cl, byte ptr [r14 + 0x21]
	cmp	r15d, 0x49
	jb	.label_649
	test	cl, cl
	jne	.label_652
	dec	r15d
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	qword ptr [r14 + 0x18], r15
	jmp	.label_654
	nop	word ptr cs:[rax + rax]
.label_649:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
	test	cl, cl
	jne	.label_657
.label_654:
	mov	rbx, qword ptr [r12 + 8]
	add	rbx, qword ptr [r12]
	mov	qword ptr [r14 + 8], rbx
	mov	al, 1
	cmp	r15d, 0x48
	jb	.label_639
	jmp	.label_641
.label_659:
	cmp	qword ptr [r14 + 8], 0
	je	.label_655
	xor	eax, eax
	jmp	.label_641
.label_646:
	cmp	qword ptr [r14 + 8], 0
	je	.label_655
	xor	eax, eax
	jmp	.label_641
.label_655:
	mov	byte ptr [r14 + 0x20], 1
	xor	eax, eax
	jmp	.label_641
.label_648:
	mov	byte ptr [r14 + 0x21], 1
	cmp	qword ptr [r14 + 8], 0
	setne	al
	jmp	.label_641
.label_652:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
.label_657:
	mov	al, 1
.label_641:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_636:
	mov	edi, OFFSET FLAT:label_656
	mov	esi, OFFSET FLAT:label_644
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_645
	call	__assert_fail
.label_637:
	mov	edi, OFFSET FLAT:label_643
	mov	esi, OFFSET FLAT:label_644
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_645
	call	__assert_fail
.label_658:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086b0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	test	r14d, r14d
	mov	qword ptr [rsp], rsi
	jns	.label_667
	mov	edi, r13d
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_662
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_667:
	cmp	r14d, 0x11
	jne	.label_662
	xor	bpl, 1
	jne	.label_662
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_664
	lea	r15, [rsp + 0x20]
	jmp	.label_668
.label_664:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_661
.label_668:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_661
	mov	dword ptr [rsp + 8], r13d
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x18], ebx
	mov	dword ptr [rsp + 0x1c], r14d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_665
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_666
.label_661:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_662
.label_665:
	mov	edi, ebx
	mov	rsi, r15
	mov	ebp, ebx
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_663
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_663:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r15
	call	unlinkat
.label_666:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_662
	mov	rdi, r15
	call	free
.label_662:
	mov	eax, r14d
	add	rsp, 0x128
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
	#Procedure 0x408820

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	r8, rdx
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	
	.section	.text
	.align	16
	#Procedure 0x408840

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r14d, esi
	mov	r15, rdi
	test	ebp, ebp
	jns	.label_669
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_670
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_669:
	cmp	ebp, 0x11
	jne	.label_670
	xor	bl, 1
	jne	.label_670
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_674
	lea	r12, [rsp + 0x10]
	jmp	.label_675
.label_674:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_672
.label_675:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_672
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_671
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_673
.label_672:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_670
.label_671:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_673
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_673:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_670
	mov	rdi, r12
	call	free
.label_670:
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408980

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089a0

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_678
	cmp	ebp, -2
	jne	.label_679
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_676
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_677
.label_678:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_677:
	call	error
.label_679:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a30

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_680
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_680:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a90

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_683
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_682:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_688
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_686
.label_688:
	cmp	r13, r12
	jb	.label_681
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_684
	add	r12, r12
	jmp	.label_685
	nop	word ptr cs:[rax + rax]
.label_684:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_689
.label_685:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_682
	jmp	.label_683
.label_681:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_683
.label_689:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_687
.label_686:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_687:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_683:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x408ba0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bb0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_693
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_690:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_691
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_695
	cmp	qword ptr [rsp + 8], -1
	je	.label_696
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_692
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_691
.label_692:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_691
.label_696:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_691:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_690
	jmp	.label_694
.label_693:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_694:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_695:
	mov	rax, rbp
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
	#Procedure 0x408cb0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_697
	mov	esi, OFFSET FLAT:label_698
	jmp	.label_699
.label_697:
	mov	esi, OFFSET FLAT:label_700
.label_699:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x408d20

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_701
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_706
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_703:
	test	r15, r15
	je	.label_705
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_702
.label_705:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_704
	nop	word ptr cs:[rax + rax]
.label_702:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_708
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_704:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_703
.label_706:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_709
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_709:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e50

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_710
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_710:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ec0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_711
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_712:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_711
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_712
.label_711:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f30

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_713
	mov	edi, OFFSET FLAT:label_716
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_714
	test	rbx, rbx
	je	.label_715
.label_713:
	mov	eax, OFFSET FLAT:label_714
	cmp	byte ptr [rbx], 0
	je	.label_715
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_714
	cmove	rax, rbx
.label_715:
	mov	qword ptr [rip + simple_backup_suffix],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f80

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	dword ptr [rsp + 0x44], ecx
	mov	r12d, edx
	mov	r15, rsi
	mov	dword ptr [rsp + 0x40], edi
	mov	rdi, r15
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	mov	rax, rbx
	mov	qword ptr [rsp + 0x28], rax
	add	rbp, rbx
	mov	rdi, qword ptr [rip + simple_backup_suffix]
	test	rdi, rdi
	jne	.label_738
	mov	edi, OFFSET FLAT:label_716
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_714
	test	rbx, rbx
	je	.label_740
	mov	edi, OFFSET FLAT:label_714
	cmp	byte ptr [rbx], 0
	je	.label_740
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:label_714
	cmove	rdi, rbx
.label_740:
	mov	qword ptr [rip + simple_backup_suffix],  rdi
.label_738:
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x58], rax
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x68], rdi
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_721
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x70], rcx
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x18], rcx
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp + 0x60], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp], rcx
	mov	r13, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0x10], r15
	nop	word ptr cs:[rax + rax]
.label_747:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcpy
	cmp	r12d, 1
	jne	.label_727
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
	jmp	.label_729
	nop	word ptr cs:[rax + rax]
.label_727:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	mov	dword ptr [rsp + 8], r12d
	je	.label_745
	call	rewinddir
	mov	rdi, qword ptr [rsp]
	jmp	.label_748
.label_745:
	movzx	ebp, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x40]
	mov	rsi, r13
	lea	rcx, [rsp + 0xc]
	call	opendirat
	mov	rdi, rax
	test	rdi, rdi
	je	.label_720
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
.label_748:
	mov	rax, rdi
	mov	qword ptr [rsp], rax
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_724
	mov	r14, r13
	mov	rax, qword ptr [rsp + 0x20]
	lea	r13, [rax + 4]
	lea	r12, [rax + 2]
	mov	eax, 2
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_719:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_733
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_733
	mov	rsi, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rbx + rsi + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_733
	lea	rcx, [rbx + rsi + 0x13]
	cmp	al, 0x39
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_741
	lea	rcx, [rbx + rsi + 0x17]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_744:
	cmp	al, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	edx, eax
	add	edx, -0x30
	inc	rbp
	cmp	edx, 0xa
	jb	.label_744
	inc	rbp
	jmp	.label_732
.label_741:
	mov	ebp, 1
.label_732:
	cmp	al, 0x7e
	jne	.label_722
	lea	rbx, [rbx + rsi + 0x15]
	cmp	byte ptr [rbx + rbp + 1], 0
	jne	.label_722
	cmp	qword ptr [rsp + 0x30], rbp
	jb	.label_728
	jne	.label_722
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcmp
	test	eax, eax
	jg	.label_722
.label_728:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x30], rcx
	lea	r15, [rax + rcx]
	cmp	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], rdx
	jae	.label_730
	mov	rax, r15
	shr	rax, 0x3e
	sete	cl
	shl	r15, cl
	mov	rdi, r14
	mov	rsi, r15
	call	realloc
	mov	rdx, qword ptr [rsp + 0x38]
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r15
	jne	.label_735
	jmp	.label_725
.label_730:
	mov	rax, r14
.label_735:
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	lea	r15, [rsi + rdx]
	mov	r14, rax
	mov	word ptr [rax + rcx + 1], 0x307e
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	mov	rsi, rbx
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	mov	cl, byte ptr [rbp + r15 + 1]
	jmp	.label_746
.label_743:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_746:
	cmp	cl, 0x39
	je	.label_743
	inc	cl
	mov	byte ptr [rax], cl
.label_722:
	mov	r15, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_733:
	mov	rdi, qword ptr [rsp]
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_719
	mov	r13, r14
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x38]
	jmp	.label_723
.label_720:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
	xor	eax, eax
.label_723:
	cmp	ecx, 1
	mov	qword ptr [rsp], rax
	je	.label_726
	cmp	ecx, 2
	je	.label_724
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_729
	jmp	.label_725
	nop	dword ptr [rax + rax]
.label_724:
	cmp	dword ptr [rsp + 8], 2
	jne	.label_726
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
.label_726:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_739
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_718
	test	r12d, r12d
	js	.label_742
	call	__errno_location
	mov	r14, r13
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	edi, r12d
	call	fpathconf
	cmp	dword ptr [r13], 1
	mov	r13, r14
	sbb	rax, 0
	jmp	.label_749
.label_739:
	mov	eax, 0xff
	jmp	.label_718
.label_742:
	movzx	r15d, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	mov	esi, 3
	mov	rdi, r13
	call	pathconf
	cmp	dword ptr [r12], 1
	sbb	rax, 0
	mov	word ptr [rbx], r15w
	mov	r15, qword ptr [rsp + 0x10]
.label_749:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	rax, rdx
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_718:
	cmp	rax, rbp
	jae	.label_731
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rcx, [r13 + rcx]
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_729
.label_731:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_729:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	r12d, dword ptr [rsp + 8]
	mov	r13, r14
	je	.label_734
	mov	edx, dword ptr [rsp + 0xc]
	test	edx, edx
	jns	.label_737
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_737:
	xor	r8d, r8d
	cmp	r12d, 1
	setne	r8b
	mov	rax, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, r15
	call	renameatu
	test	eax, eax
	je	.label_734
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_747
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_717
	call	closedir
.label_717:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_736
.label_734:
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_721
	call	closedir
	jmp	.label_721
.label_725:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_736:
	xor	r13d, r13d
.label_721:
	mov	rax, r13
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409560

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409570

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_750
	pop	rcx
	ret	
.label_750:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409590
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_751
	cmp	byte ptr [rsi], 0
	je	.label_751
	push	rax
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + backup_types]
	add	rsp, 8
.label_751:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095d0

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_752
	cmp	byte ptr [rsi], 0
	je	.label_752
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_755
.label_752:
	mov	edi, OFFSET FLAT:label_753
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_754
	cmp	byte ptr [rax], 0
	je	.label_754
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_756
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_755:
	call	__xargmatch_internal
	mov	ecx, dword ptr [(rax * 4) + backup_types]
.label_754:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409640

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_757
	test	rsi, rsi
	je	.label_759
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_758:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_758
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_759
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_760
	jmp	.label_759
.label_757:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_759:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_760:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096b0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096c0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + stdin]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_762
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_762
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_762:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_763
	test	eax, eax
	jne	.label_763
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_763:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_766
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_764
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_676
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_765
.label_764:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_761
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_765:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409790
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097b0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_771
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_769
	cmp	dword ptr [rbp], 0x20
	jne	.label_769
.label_771:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_768
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_769:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_770
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_767
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_676
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_768:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_767:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_761
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409870

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_772
	pop	rcx
	ret	
.label_772:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409890

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_774:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_773
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_774
.label_773:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_778:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_775
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_778
.label_775:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_777
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_776
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_776:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_777:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409970

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_779:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_779
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_783
	nop	word ptr cs:[rax + rax]
.label_782:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_783:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_782
	test	dl, dl
	je	.label_781
	mov	ecx, esi
	and	cl, 1
	je	.label_780
	xor	esi, esi
.label_780:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_782
.label_781:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4099d0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_785:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_784
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_785
.label_784:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a00

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_786
	mov	rbx, rax
.label_786:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a30

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a40
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_787
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_787:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409a60

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_788
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_788:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_790
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_791
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_789
.label_791:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_789:
	mov	edx, dword ptr [rax]
.label_790:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b30

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_792
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_793
	cmp	rax, rbx
	je	.label_792
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_792:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_793:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bb0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_794
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_794:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_806
	cmp	ecx, 0x3fff
	jg	.label_797
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_799
	cmp	ecx, 0x2000
	jne	.label_801
	mov	cl, 0x63
	jmp	.label_795
.label_806:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_795
	cmp	edx, 0xa000
	je	.label_807
	cmp	edx, 0xc000
	jne	.label_801
	mov	cl, 0x73
	jmp	.label_795
.label_797:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_802
	cmp	ecx, 0x4000
	jne	.label_801
	mov	cl, 0x64
	jmp	.label_795
.label_799:
	mov	cl, 0x70
	jmp	.label_795
.label_802:
	mov	cl, 0x62
	jmp	.label_795
.label_801:
	mov	cl, 0x3f
	jmp	.label_795
.label_807:
	mov	cl, 0x6c
.label_795:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_805
	mov	cl, 0x2d
.label_805:
	mov	byte ptr [rsi + 1], cl
	mov	ecx, eax
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_810
	mov	cl, 0x2d
.label_810:
	test	bl, 8
	jne	.label_803
	mov	dl, cl
.label_803:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_811
	mov	cl, 0x2d
.label_811:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_809
	mov	cl, 0x2d
.label_809:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_796
	mov	cl, 0x2d
.label_796:
	test	bl, 4
	jne	.label_798
	mov	dil, cl
.label_798:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_800
	mov	r9b, 0x2d
.label_800:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_804
	mov	dl, 0x2d
.label_804:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_808
	mov	r8b, 0x2d
.label_808:
	test	bl, 2
	pop	rbx
	je	.label_812
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_812:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d20
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d30

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_813
	pop	rcx
	ret	
.label_813:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d50

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_818
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_817
	cmp	byte ptr [r15], 0x2f
	je	.label_817
	mov	r12b, 0x2f
	jmp	.label_814
.label_818:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_814
.label_817:
	xor	r12d, r12d
.label_814:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_816
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_815
	mov	qword ptr [rax], rbp
.label_815:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_816:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e30

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_819
	nop	word ptr [rax + rax]
.label_821:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_819
	test	rax, rax
	je	.label_820
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_821
	jmp	.label_819
.label_820:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_819:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409e90
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ea0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409eb0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ec0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_822
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_826
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_827:
	cmp	qword ptr [rcx], 0
	je	.label_828
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_825:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_825
	cmp	rdi, rax
	cmova	rax, rdi
.label_828:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_824
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_829:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_829
	cmp	rdi, rax
	cmova	rax, rdi
.label_824:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_827
.label_826:
	test	r8, r8
	je	.label_822
	cmp	qword ptr [rcx], 0
	je	.label_822
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_823:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_823
	cmp	rdx, rax
	cmova	rax, rdx
.label_822:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f80
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_830
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_834
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_840:
	cmp	qword ptr [rax], 0
	je	.label_831
	mov	rdx, rax
	nop	dword ptr [rax]
.label_833:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_833
	inc	r10
.label_831:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_835
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_838:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_838
	inc	r10
.label_835:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_840
	jmp	.label_832
.label_834:
	xor	r10d, r10d
.label_832:
	test	r8, r8
	je	.label_830
	cmp	qword ptr [rax], 0
	je	.label_830
	nop	dword ptr [rax]
.label_836:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_836
	inc	r10
.label_830:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_837
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_839
.label_837:
	xor	eax, eax
.label_839:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a040
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_841
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_846
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_845:
	cmp	qword ptr [rax], 0
	je	.label_853
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_847:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_847
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_853:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_854
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_844:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_844
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_854:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_845
.label_846:
	test	r8, r8
	je	.label_841
	cmp	qword ptr [rax], 0
	je	.label_841
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_842:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_842
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_841:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_843
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_855
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_849]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_850]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_851]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_852
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_848
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a1b0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_859
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_856
	add	rbx, rax
	je	.label_856
	cmp	rsi, r12
	je	.label_858
	xor	r15d, r15d
	nop	
.label_857:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_860
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_856
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_857
.label_858:
	mov	r15, r12
	jmp	.label_856
.label_860:
	mov	r15, qword ptr [rbx]
.label_856:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_859:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a230
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_861
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_864
	nop	word ptr cs:[rax + rax]
.label_863:
	add	rcx, 0x10
.label_864:
	cmp	rcx, rdx
	jae	.label_862
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_863
.label_861:
	ret	
.label_862:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a270
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_867
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_868:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_865
	test	rdx, rdx
	jne	.label_868
	jmp	.label_866
.label_865:
	test	rdx, rdx
	je	.label_866
	mov	rax, qword ptr [rdx]
	jmp	.label_869
.label_866:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_870:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_869
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_870
.label_869:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_867:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a300
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_871
	xor	eax, eax
.label_874:
	cmp	qword ptr [r9], 0
	je	.label_872
	test	r9, r9
	je	.label_872
	mov	r8, r9
	nop	
.label_873:
	cmp	rax, rdx
	jae	.label_871
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_873
	mov	r8, qword ptr [rdi + 8]
.label_872:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_874
.label_871:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a350
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_878
	xor	ebx, ebx
.label_877:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_879
	test	r13, r13
	je	.label_879
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_878
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_876:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_875
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_876
	jmp	.label_878
	nop	dword ptr [rax]
.label_875:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_879:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_877
.label_878:
	mov	rax, rbx
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
	#Procedure 0x40a3f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_880
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_881:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_881
.label_880:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a430
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_882]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a450

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_885
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_890
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_895]
	jbe	.label_884
	movss	xmm1, dword ptr [rip + label_898]
	ucomiss	xmm1, xmm0
	jbe	.label_884
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_889]
	jbe	.label_884
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_884
	addss	xmm1, dword ptr [rip + label_895]
	ucomiss	xmm0, xmm1
	jbe	.label_884
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_883]
	ucomiss	xmm2, xmm0
	jb	.label_884
	ucomiss	xmm0, xmm1
	jbe	.label_884
.label_890:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_897
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_894
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_896
.label_894:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_896:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_887]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_888]
	jae	.label_884
.label_897:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_886
	nop	
.label_891:
	add	rbx, 2
.label_886:
	cmp	rbx, -1
	je	.label_884
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_893
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_892:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_893
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_892
.label_893:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_891
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_884
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_884
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_884
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_885
.label_884:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_885:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a670

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a680

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a690
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_901
	nop	word ptr cs:[rax + rax]
.label_904:
	add	r14, 0x10
.label_901:
	cmp	r14, rax
	jae	.label_903
	cmp	qword ptr [r14], 0
	je	.label_904
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_905
	nop	word ptr cs:[rax + rax]
.label_900:
	test	cl, 1
	je	.label_899
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_899:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_900
.label_905:
	test	cl, cl
	je	.label_902
	mov	rdi, qword ptr [r14]
	call	rax
.label_902:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_904
.label_903:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a740

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_906
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_906
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_913
	nop	
.label_910:
	add	r15, 0x10
.label_913:
	cmp	r15, rax
	jae	.label_906
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_910
	test	r15, r15
	je	.label_910
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_916
.label_909:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_916:
	test	rbx, rbx
	jne	.label_909
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_910
.label_906:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_907
	nop	
.label_911:
	add	r15, 0x10
.label_907:
	cmp	r15, rax
	jae	.label_915
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_911
	nop	word ptr cs:[rax + rax]
.label_908:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_908
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_911
.label_915:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_914
.label_912:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_912
.label_914:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a810

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_926
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_927
	cvtsi2ss	xmm0, rsi
	jmp	.label_932
.label_927:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_932:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_887]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_888]
	jae	.label_919
.label_926:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_918
	nop	dword ptr [rax + rax]
.label_929:
	add	rbx, 2
.label_918:
	cmp	rbx, -1
	je	.label_919
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_923
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_931:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_923
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_931
.label_923:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_929
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_919
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_920
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_919
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_935
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_920
.label_935:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_928
	nop	
.label_921:
	add	r12, 0x10
.label_928:
	cmp	r12, r15
	jae	.label_917
	cmp	qword ptr [r12], 0
	je	.label_921
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_924
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_922:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_934
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_930
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_925
	nop	word ptr [rax + rax]
.label_930:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_925:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_922
.label_924:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_921
.label_917:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_933
	mov	rdi, qword ptr [rsp]
	call	free
.label_919:
	xor	ebp, ebp
.label_920:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_934:
	call	abort
.label_933:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaa0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_941
	nop	word ptr cs:[rax + rax]
.label_942:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_939
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_944
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_937:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_948
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_940
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_943
	nop	dword ptr [rax]
.label_940:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_943:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_937
	mov	r13, qword ptr [r14]
.label_944:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_939
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_946
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_949
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_938
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_936
.label_949:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_945
.label_938:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_947
.label_936:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_945:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_939:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_942
	mov	al, 1
.label_941:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_947:
	xor	eax, eax
	jmp	.label_941
.label_948:
	call	abort
.label_946:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac10

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_957
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_957
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_955
	cmp	rsi, r14
	je	.label_972
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_973
	mov	rax, qword ptr [r12]
.label_971:
	test	rax, rax
	jne	.label_977
	jmp	.label_955
.label_972:
	mov	rax, r14
.label_977:
	xor	ebp, ebp
	test	r15, r15
	je	.label_952
	mov	qword ptr [r15], rax
	jmp	.label_952
.label_973:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_955
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_968:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_960
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_965
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_968
.label_955:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_969
	cvtsi2ss	xmm1, rax
	jmp	.label_974
.label_969:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_974:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_979
	cvtsi2ss	xmm0, rcx
	jmp	.label_954
.label_979:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_954:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_959
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_963
	ucomiss	xmm2, dword ptr [rip + label_895]
	jbe	.label_966
	movss	xmm3, dword ptr [rip + label_898]
	ucomiss	xmm3, xmm2
	jbe	.label_966
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_889]
	jbe	.label_966
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_966
	addss	xmm3, dword ptr [rip + label_895]
	ucomiss	xmm2, xmm3
	jbe	.label_966
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_883]
	ucomiss	xmm5, xmm4
	jb	.label_966
	ucomiss	xmm4, xmm3
	ja	.label_953
.label_966:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_967]
	jmp	.label_953
.label_963:
	mov	eax, OFFSET FLAT:default_tuning
.label_953:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_959
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_961
	mulss	xmm0, xmm2
.label_961:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_888]
	jae	.label_952
	movss	xmm1, dword ptr [rip + label_887]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_952
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_957
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_959
	cmp	rsi, r14
	mov	rax, r14
	je	.label_962
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_970
	mov	rax, qword ptr [r12]
.label_962:
	test	rax, rax
	jne	.label_964
.label_959:
	cmp	qword ptr [r12], 0
	je	.label_975
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_976
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_980
.label_975:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_950]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_951
.label_976:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_952
.label_980:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_951:
	mov	ebp, 1
.label_952:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_960:
	mov	rax, r14
	jmp	.label_971
.label_965:
	mov	rax, qword ptr [rbp]
	jmp	.label_971
.label_970:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_959
	lea	rbp, [rbx + rbp + 8]
.label_958:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_978
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_956
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_958
	jmp	.label_959
.label_978:
	mov	rax, r14
	jmp	.label_962
.label_956:
	mov	rax, qword ptr [rbp]
	jmp	.label_962
.label_957:
	call	abort
.label_964:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af50

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_981
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_981:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40af80

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_987
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_982
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_994
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_996
	mov	r14, qword ptr [r13]
.label_994:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_988
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_995
.label_996:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_982
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_992:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_989
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_991
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_992
	jmp	.label_982
.label_988:
	mov	qword ptr [r13], 0
	jmp	.label_995
.label_989:
	mov	rcx, rax
	jmp	.label_998
.label_991:
	mov	r14, qword ptr [rcx]
.label_998:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_995:
	xor	r12d, r12d
	test	r14, r14
	je	.label_982
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_984
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_986
	cvtsi2ss	xmm1, rax
	jmp	.label_990
.label_986:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_990:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_993
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_997
.label_993:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_997:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_984
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1002
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_895]
	jbe	.label_985
	movss	xmm4, dword ptr [rip + label_898]
	ucomiss	xmm4, xmm3
	jbe	.label_985
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_985
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_889]
	jbe	.label_985
	movss	xmm4, dword ptr [rip + label_895]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_985
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_883]
	ucomiss	xmm5, xmm3
	jb	.label_985
	ucomiss	xmm3, xmm4
	ja	.label_1000
.label_985:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1000
.label_1002:
	mov	eax, OFFSET FLAT:default_tuning
.label_1000:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_984
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_983
	mulss	xmm0, dword ptr [rax + 8]
.label_983:
	movss	xmm1, dword ptr [rip + label_887]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_984
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_999
	nop	word ptr cs:[rax + rax]
.label_1001:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1001
.label_999:
	mov	qword ptr [r15 + 0x48], 0
.label_984:
	mov	r12, r14
.label_982:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_987:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b220

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b250

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b260

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1003
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1004
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_1003:
	xor	eax, eax
	ret	
.label_1004:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b290
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1005
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1006
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_1005:
	xor	eax, eax
	ret	
.label_1006:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b2c0

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2e0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1008
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1007
	mov	dword ptr [r14], ebp
	jmp	.label_1008
.label_1007:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_1008:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b330

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1012
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1010
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1009
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1010
	mov	esi, OFFSET FLAT:label_1011
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1014
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1014:
	mov	rbx, r14
.label_1010:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1012:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1013
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3e0

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_1015
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_1015:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b430

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b460
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
	#Procedure 0x40b4a0
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
	#Procedure 0x40b4b0
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
	#Procedure 0x40b4c0
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
	#Procedure 0x40b500
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
	#Procedure 0x40b520
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1016
	test	rdx, rdx
	je	.label_1016
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1016:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b550
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
	#Procedure 0x40b5d0

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
.label_1053:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1051
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_1133]
.label_1665:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_1059
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_1064
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1666:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1076
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1076
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1091:
	cmp	r14, r11
	jae	.label_1088
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1088:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1091
.label_1076:
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
	jmp	.label_1099
.label_1658:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1099
.label_1661:
	mov	al, 1
.label_1659:
	mov	r12b, 1
.label_1662:
	test	r12b, 1
	mov	cl, 1
	je	.label_1112
	mov	ecx, eax
.label_1112:
	mov	al, cl
.label_1660:
	test	r12b, 1
	jne	.label_1114
	test	r11, r11
	je	.label_1101
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1101:
	mov	r14d, 1
	jmp	.label_1117
.label_1114:
	xor	r14d, r14d
.label_1117:
	mov	ecx, OFFSET FLAT:label_1064
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1099
.label_1663:
	test	r12b, 1
	jne	.label_1125
	test	r11, r11
	je	.label_1127
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1127:
	mov	r14d, 1
	jmp	.label_1128
.label_1664:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1018
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_1099
.label_1125:
	xor	r14d, r14d
.label_1128:
	mov	eax, OFFSET FLAT:label_1018
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1099:
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
	jmp	.label_1028
	nop	dword ptr [rax]
.label_1094:
	inc	rsi
.label_1028:
	cmp	rbp, -1
	je	.label_1068
	cmp	rsi, rbp
	jne	.label_1070
	jmp	.label_1072
	nop	word ptr cs:[rax + rax]
.label_1068:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1077
.label_1070:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1080
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1086
	cmp	rbp, -1
	jne	.label_1086
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
.label_1086:
	cmp	rbx, rbp
	jbe	.label_1100
.label_1080:
	xor	r8d, r8d
.label_1108:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1102
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1105]
.label_1602:
	test	rsi, rsi
	jne	.label_1095
	jmp	.label_1022
	nop	word ptr cs:[rax + rax]
.label_1100:
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
	jne	.label_1120
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1108
	jmp	.label_1115
.label_1120:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1108
.label_1606:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1138
	test	rsi, rsi
	jne	.label_1019
	cmp	rbp, 1
	je	.label_1022
	xor	r13d, r13d
	jmp	.label_1017
.label_1595:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_1026
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1027
	cmp	r12d, 2
	jne	.label_1032
	mov	eax, r9d
	and	al, 1
	jne	.label_1032
	cmp	r14, r11
	jae	.label_1036
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1036:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1041
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1041:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1050
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1050:
	add	r14, 3
	mov	r9b, 1
.label_1032:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1083
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1083:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1056
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1056
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1056
	cmp	r14, r11
	jae	.label_1055
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1055:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1034
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1034:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1017
.label_1596:
	mov	bl, 0x62
	jmp	.label_1085
.label_1597:
	mov	cl, 0x74
	jmp	.label_1039
.label_1598:
	mov	bl, 0x76
	jmp	.label_1085
.label_1599:
	mov	bl, 0x66
	jmp	.label_1085
.label_1600:
	mov	cl, 0x72
	jmp	.label_1039
.label_1603:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1089
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1057
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
	jae	.label_1098
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1098:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1110
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1110:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1113
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1113:
	add	r14, 3
	xor	r9d, r9d
.label_1089:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1017
.label_1604:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1118
	cmp	r12d, 2
	jne	.label_1095
	cmp	byte ptr [rsp + 6], 0
	je	.label_1095
	jmp	.label_1057
.label_1605:
	cmp	r12d, 2
	jne	.label_1126
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1057
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1081
.label_1102:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_1134
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
.label_1087:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_1030
	test	r8b, r8b
	je	.label_1030
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_1017
.label_1138:
	test	rsi, rsi
	jne	.label_1054
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1054
.label_1022:
	mov	dl, 1
.label_1601:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1057
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_1017:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1062
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1063
	jmp	.label_1067
	nop	word ptr cs:[rax + rax]
.label_1062:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1067
.label_1063:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1074
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1081
	jmp	.label_1046
	nop	dword ptr [rax]
.label_1067:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1046
	jmp	.label_1081
.label_1074:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1046
.label_1026:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1094
	xor	r15d, r15d
	jmp	.label_1095
.label_1126:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_1039
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1081
.label_1039:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1057
.label_1085:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_1017
	nop	word ptr cs:[rax + rax]
.label_1046:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1027
	cmp	r12d, 2
	jne	.label_1116
	mov	eax, r9d
	and	al, 1
	jne	.label_1116
	cmp	r14, r11
	jae	.label_1124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1124:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1136
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1136:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1042
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1042:
	add	r14, 3
	mov	r9b, 1
.label_1116:
	cmp	r14, r11
	jae	.label_1078
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1078:
	inc	r14
	jmp	.label_1103
.label_1134:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1135
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1135:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_1090:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1038
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1044
	cmp	rbp, -2
	je	.label_1049
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1071
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1097:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1024
	bt	rsi, rdx
	jb	.label_1066
.label_1024:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1097
.label_1071:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1129
	xor	r13d, r13d
.label_1129:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_1090
	jmp	.label_1087
.label_1056:
	xor	r13d, r13d
	jmp	.label_1017
.label_1054:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1017
.label_1118:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1095
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1095
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1095
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1104
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1033
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1069
	cmp	r14, r11
	jae	.label_1093
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1093:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1109
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1109:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1119
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1119:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1031
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_1031:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_1017
.label_1095:
	xor	eax, eax
.label_1019:
	xor	r13d, r13d
	jmp	.label_1017
.label_1030:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1132
	nop	word ptr cs:[rax + rax]
.label_1096:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1132:
	test	r8b, r8b
	je	.label_1020
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_1021
	cmp	r14, r11
	jae	.label_1023
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1023:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_1021
	nop	dword ptr [rax]
.label_1020:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1115
	cmp	r12d, 2
	jne	.label_1040
	mov	eax, r9d
	and	al, 1
	jne	.label_1040
	cmp	r14, r11
	jae	.label_1043
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1043:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1047
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1047:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1052
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1052:
	add	r14, 3
	mov	r9b, 1
.label_1040:
	cmp	r14, r11
	jae	.label_1111
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1111:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1060
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1060:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1065
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1065:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1021:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_1081
	test	r9b, 1
	je	.label_1082
	mov	ebx, eax
	and	bl, 1
	jne	.label_1082
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1084
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1084:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1137
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1137:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1082:
	cmp	r14, r11
	jae	.label_1096
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1096
	nop	word ptr cs:[rax + rax]
.label_1081:
	test	r9b, 1
	je	.label_1106
	and	al, 1
	jne	.label_1106
	cmp	r14, r11
	jae	.label_1107
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1107:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1045
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1045:
	add	r14, 2
	xor	r9d, r9d
.label_1106:
	mov	ebx, r15d
.label_1103:
	cmp	r14, r11
	jae	.label_1092
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1092:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1094
.label_1044:
	xor	r13d, r13d
.label_1038:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1087
.label_1049:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_1123
	mov	rsi, qword ptr [rsp + 0x58]
.label_1130:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_1131
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1130
	xor	r13d, r13d
	jmp	.label_1087
.label_1123:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1087
.label_1131:
	xor	r13d, r13d
	jmp	.label_1087
.label_1104:
	xor	r13d, r13d
	jmp	.label_1017
.label_1033:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_1017
	nop	dword ptr [rax + rax]
.label_1072:
	mov	rcx, rsi
.label_1077:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_1025
	or	al, dl
	je	.label_1029
.label_1025:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_1035
	or	al, dl
	jne	.label_1035
	test	r10b, 1
	jne	.label_1048
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1035
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_1053
.label_1035:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_1058
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1037
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1037
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1075:
	cmp	r14, r11
	jae	.label_1073
	mov	byte ptr [rcx + r14], al
.label_1073:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1075
	jmp	.label_1037
.label_1027:
	mov	qword ptr [rsp + 0x20], rbp
.label_1115:
	mov	rdx, rdi
	jmp	.label_1079
.label_1057:
	mov	qword ptr [rsp + 0x20], rbp
.label_1066:
	mov	rdx, rdi
	mov	eax, 2
.label_1061:
	mov	qword ptr [rsp + 0x38], rax
.label_1079:
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
.label_1121:
	mov	r14, rax
.label_1122:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1029:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1079
.label_1048:
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
	jmp	.label_1121
.label_1058:
	mov	rcx, qword ptr [rsp + 8]
.label_1037:
	cmp	r14, r11
	jae	.label_1122
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1122
.label_1069:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_1061
.label_1051:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3e0
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
	#Procedure 0x40c4b0
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
	je	.label_1139
	mov	qword ptr [rax], rbx
.label_1139:
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
	#Procedure 0x40c5a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1140
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1142:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1142
.label_1140:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1143
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1144], OFFSET FLAT:slot0
.label_1143:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1141
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1141:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c640
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c650

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
	js	.label_1148
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1151
	cmp	r12d, 0x7fffffff
	je	.label_1146
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
	jne	.label_1149
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1149:
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
.label_1151:
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
	jbe	.label_1147
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1150
.label_1147:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1145
	mov	rdi, r14
	call	free
.label_1145:
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
.label_1150:
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
.label_1148:
	call	abort
.label_1146:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c810
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c820
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
	#Procedure 0x40c840
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
	#Procedure 0x40c860

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
	je	.label_1152
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
.label_1152:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c8d0
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
	je	.label_1153
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
.label_1153:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c940

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
	je	.label_1154
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
.label_1154:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c9b0
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
	je	.label_1155
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
.label_1155:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca20
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
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
	#Procedure 0x40ca90
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
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
	#Procedure 0x40cb00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
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
	#Procedure 0x40cb60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
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
	#Procedure 0x40cbc0

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
	je	.label_1159
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
.label_1159:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1160
	test	rdx, rdx
	je	.label_1160
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1160:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ccd0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1161
	test	rdx, rdx
	je	.label_1161
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1161:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd40
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1162
	test	rsi, rsi
	je	.label_1162
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1162:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40cdb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1156]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1157]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1158]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1163
	test	rsi, rsi
	je	.label_1163
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
.label_1163:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ce20
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce30
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
	#Procedure 0x40ce50

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce70

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
	#Procedure 0x40ce90

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
	jne	.label_1168
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1172
	cmp	ecx, 0x55
	jne	.label_1164
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1164
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1164
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1164
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1164
	cmp	byte ptr [rax + 5], 0
	jne	.label_1164
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1170
	mov	eax, OFFSET FLAT:label_1171
	jmp	.label_1167
.label_1172:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1164
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1164
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1164
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1164
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1164
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1164
	cmp	byte ptr [rax + 7], 0
	je	.label_1169
.label_1164:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1018
	mov	eax, OFFSET FLAT:label_1064
.label_1167:
	cmove	rax, rcx
.label_1168:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1169:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1165
	mov	eax, OFFSET FLAT:label_1166
	jmp	.label_1167
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf60

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r12d, r8d
	mov	r13, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r13
	mov	r9d, r12d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	mov	rcx, rax
	test	ebx, ebx
	jns	.label_1174
	mov	eax, dword ptr [rcx]
	cmp	eax, 0x16
	je	.label_1181
	cmp	eax, 0x5f
	je	.label_1181
	cmp	eax, 0x26
	jne	.label_1174
.label_1181:
	test	r12d, r12d
	je	.label_1173
	cmp	r12d, 1
	jne	.label_1176
	mov	rbx, rcx
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	mov	rcx, rbx
	test	eax, eax
	je	.label_1182
	mov	eax, dword ptr [rcx]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1184
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1174
.label_1182:
	mov	dword ptr [rcx], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_1174
.label_1173:
	xor	r12d, r12d
.label_1184:
	mov	qword ptr [rsp], rcx
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_1175
	test	rax, rax
	je	.label_1175
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_1178
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1175
.label_1178:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1174
	test	r12b, r12b
	je	.label_1177
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	je	.label_1175
	mov	dword ptr [rax], 2
	jmp	.label_1174
.label_1176:
	mov	dword ptr [rcx], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_1174
.label_1177:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1179
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1174
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1175
	jmp	.label_1174
.label_1179:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1183
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	jne	.label_1180
.label_1175:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_1174:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1183:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_1174
.label_1180:
	mov	dword ptr [rax], 0x15
	jmp	.label_1174
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d160

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_1186:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1185
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1186
	cmp	rbx, 0x7ff00001
	jb	.label_1185
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1186
.label_1185:
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
	#Procedure 0x40d1c0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1e0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_1191
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1187
.label_1191:
	xor	ebp, ebp
.label_1189:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1187:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 8]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_1192
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_676
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1192:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1188
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_676
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1188:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1193
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1190
.label_1193:
	xor	ebp, ebp
.label_1190:
	mov	rdi, rbx
	call	free
	jmp	.label_1189
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d330

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rdi
	mov	ecx, esi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1201
	mov	rax, qword ptr [(rcx * 8) + comparison_function_table]
	mov	qword ptr [rsp + 0x30], rax
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
	xor	r13d, r13d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1197
.label_1196:
	mov	rdi, rbx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbp + rcx], rax
	mov	rax, qword ptr [r15]
	mov	rdx, rbp
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rbp + rcx + 8], rax
	inc	r12
	add	r13, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_1197:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r14
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1211
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	al, 0x2e
	jne	.label_1213
	xor	eax, eax
	cmp	byte ptr [r15 + 0x14], 0x2e
	sete	al
	movzx	eax, byte ptr [r15 + rax + 0x14]
.label_1213:
	test	al, al
	je	.label_1197
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	cmp	qword ptr [rsp + 0x20], 1
	ja	.label_1195
	cmp	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x28], rbp
	jne	.label_1198
	cmp	qword ptr [rsp], 0
	je	.label_1202
	movabs	rax, 0x555555555555555
	cmp	r12, rax
	jae	.label_1203
	mov	rax, r12
	shr	rax, 1
	lea	rcx, [r12 + rax + 1]
	jmp	.label_1207
.label_1195:
	mov	rax, qword ptr [rsp + 0x10]
	sub	rax, r13
	cmp	rax, rbp
	mov	rax, qword ptr [rsp + 8]
	ja	.label_1208
	mov	rsi, rbp
	add	rsi, r13
	jb	.label_1203
	test	rax, rax
	je	.label_1214
	movabs	rcx, 0x5555555555555554
	cmp	rsi, rcx
	jae	.label_1203
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_1194
.label_1198:
	mov	rbp, qword ptr [rsp]
	jmp	.label_1196
.label_1202:
	test	r12, r12
	mov	rcx, r12
	mov	eax, 8
	cmove	rcx, rax
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1200
.label_1207:
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, rcx
	shl	rsi, 4
	mov	rdi, qword ptr [rsp]
	call	xrealloc
	mov	rbp, rax
	jmp	.label_1196
.label_1214:
	test	rsi, rsi
	mov	ecx, 0x80
	cmove	rsi, rcx
	test	rsi, rsi
	js	.label_1212
.label_1194:
	mov	rdi, rax
	mov	rax, rsi
	mov	qword ptr [rsp + 0x10], rax
	call	xrealloc
.label_1208:
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rax + r13]
	mov	rsi, rbx
	mov	rdx, rbp
	call	memcpy
	add	r13, rbp
	jmp	.label_1197
.label_1211:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1206
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r15d, r15d
	jmp	.label_1201
.label_1206:
	cmp	qword ptr [rsp + 0x20], 1
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp]
	ja	.label_1199
	test	r12, r12
	je	.label_1210
	mov	edx, 0x10
	mov	rdi, r14
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x30]
	call	qsort
	inc	r13
	mov	rdi, r13
	call	xmalloc
	mov	r15, rax
	xor	r13d, r13d
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_1209:
	lea	rbp, [r15 + r13]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r13
	sub	r13, rbp
	add	r13, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1209
	jmp	.label_1204
.label_1199:
	cmp	qword ptr [rsp + 0x10], r13
	jne	.label_1205
	lea	rsi, [r13 + 1]
	mov	rdi, r15
	call	xrealloc
	mov	r15, rax
	jmp	.label_1205
.label_1210:
	inc	r13
	mov	rdi, r13
	call	xmalloc
	mov	r15, rax
	xor	r13d, r13d
.label_1204:
	mov	rdi, r14
	call	free
.label_1205:
	mov	byte ptr [r15 + r13], 0
.label_1201:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1203:
	call	xalloc_die
.label_1212:
	call	xalloc_die
.label_1200:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d620

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1215
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1215
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1215:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d670

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d680

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	cmp	rax, qword ptr [rsi + 8]
	seta	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6a0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r14, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r15d, dword ptr [rax]
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	movsxd	r13, ebx
	lea	rax, [r13 + r12]
	cmp	rbp, rax
	jb	.label_1220
	mov	rax, rbp
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_1216:
	cmp	byte ptr [rax + rcx + 1], 0x58
	lea	rcx, [rcx + 1]
	je	.label_1216
	cmp	rcx, r12
	jae	.label_1218
.label_1220:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_1221:
	mov	r12d, 0xffffffff
.label_1217:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1218:
	mov	dword ptr [rsp + 0x14], r15d
	mov	qword ptr [rsp + 0x18], r14
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, r12
	call	randint_all_new
	mov	r15, rax
	mov	rax, r12
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1217
	sub	rbp, r13
	add	rbp, qword ptr [rsp + 0x18]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x20], rcx
	nop	
.label_1222:
	mov	r13, rax
	test	rax, rax
	je	.label_1224
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_1219:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax, byte ptr [rax + letters]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1219
.label_1224:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1223
	mov	rax, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	jne	.label_1225
	inc	r14d
	cmp	r14d, 0x3a2f7
	mov	rax, r13
	jbe	.label_1222
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_1221
.label_1223:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	ebx, eax
.label_1225:
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ebx
	jmp	.label_1217
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d810
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1226
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1230]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1226:
	mov	edi, OFFSET FLAT:label_1227
	mov	esi, OFFSET FLAT:label_1228
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1229
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d850

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d870

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d880

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_1231
	cmp	dword ptr [rax], 0x4b
	jne	.label_1232
.label_1231:
	mov	dword ptr [rax], 0x11
.label_1232:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d8d0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1233
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1230]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_1233:
	mov	edi, OFFSET FLAT:label_1227
	mov	esi, OFFSET FLAT:label_1228
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1229
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40d910
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d920

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
	ja	.label_1234
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
	jmp	.label_1235
.label_1234:
	mov	eax, ebx
.label_1235:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d970

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d990

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	rbp, rdx
	mov	r14, qword ptr [rbp + 0x58]
	mov	r15, qword ptr [rbp + 0x60]
	mov	r12, qword ptr [rcx + 0x58]
	mov	r13d, dword ptr [rcx + 0x60]
	test	r8b, 1
	je	.label_1238
	cmp	r14, r12
	jne	.label_1250
	xor	ecx, ecx
	cmp	r15d, r13d
	je	.label_1236
.label_1250:
	lea	rax, [r12 - 2]
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1236
	lea	rax, [r14 - 2]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1236
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	jne	.label_1255
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	mov	qword ptr [rip + utimecmpat.ht],  rbx
	test	rbx, rbx
	je	.label_1245
.label_1255:
	mov	rsi, qword ptr [rip + utimecmpat.new_dst_res]
	test	rsi, rsi
	jne	.label_1249
	mov	edi, 0x10
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rip + utimecmpat.new_dst_res],  rsi
	test	rsi, rsi
	je	.label_1254
	mov	dword ptr [rsi + 8], 0x77359400
	mov	byte ptr [rsi + 0xc], 0
.label_1249:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_1260
	cmp	rax, qword ptr [rip + utimecmpat.new_dst_res]
	jne	.label_1237
	mov	qword ptr [rip + utimecmpat.new_dst_res],  0
	jmp	.label_1237
.label_1260:
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	je	.label_1239
.label_1254:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	hash_lookup
.label_1239:
	test	rax, rax
	jne	.label_1237
.label_1245:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rax, [rsp + 0x30]
.label_1237:
	mov	r10, qword ptr [rax + 8]
	movabs	rcx, 0xff00000000
	test	r10, rcx
	jne	.label_1252
	mov	qword ptr [rsp + 0x10], rax
	mov	r11, qword ptr [rbp + 0x48]
	mov	r9, qword ptr [rbp + 0x50]
	movsxd	r8, dword ptr [rbp + 0x70]
	mov	ecx, r11d
	or	ecx, r14d
	or	ecx, dword ptr [rbp + 0x68]
	and	ecx, 1
	movsxd	rdx, r9d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	imul	rsi, r8, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	edi, r8d
	sub	edi, esi
	movsxd	rsi, r15d
	imul	rsi, rsi, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	ebp, r15d
	sub	ebp, esi
	or	ebp, edx
	or	ebp, edi
	je	.label_1251
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 1
	mov	r10d, 1
.label_1248:
	mov	dword ptr [rax + 8], r10d
	mov	byte ptr [rax + 0xc], 1
.label_1252:
	xor	eax, eax
	cmp	r10d, 0x77359400
	sete	al
	not	rax
	and	r12, rax
	mov	eax, r13d
	cdq	
	idiv	r10d
	sub	r13d, edx
.label_1238:
	mov	ecx, 0xffffffff
	cmp	r14, r12
	jl	.label_1236
	mov	ecx, 1
	jg	.label_1236
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1236
	setg	al
	movzx	ecx, al
.label_1236:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1251:
	cmp	r10d, 0xb
	jl	.label_1253
	mov	qword ptr [rsp + 0x20], r11
	mov	ebx, 0xa
	mov	qword ptr [rsp + 0x18], r9
	mov	edx, r9d
	mov	edi, r15d
.label_1243:
	mov	r9, rbx
	movsxd	rsi, edi
	imul	rdi, rsi, 0x66666667
	mov	rsi, rdi
	shr	rsi, 0x3f
	sar	rdi, 0x22
	add	edi, esi
	movsxd	rax, r8d
	imul	r8, rax, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	movsxd	r11, edx
	imul	rsi, r11, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	r11d, esi
	movsxd	rsi, r8d
	imul	rbp, rsi, 0x66666667
	mov	rbx, rbp
	shr	rbx, 0x3f
	sar	rbp, 0x22
	add	ebp, ebx
	add	ebp, ebp
	lea	ebx, [rbp + rbp*4]
	sub	esi, ebx
	or	esi, r11d
	movsxd	rbp, edi
	imul	rbx, rbp, 0x66666667
	mov	rax, rbx
	shr	rax, 0x3f
	sar	rbx, 0x22
	add	ebx, eax
	add	ebx, ebx
	lea	eax, [rbx + rbx*4]
	sub	ebp, eax
	mov	rbx, r9
	or	ebp, esi
	jne	.label_1258
	cmp	ebx, 0x3b9aca00
	je	.label_1242
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	cmp	ebx, r10d
	jl	.label_1243
.label_1258:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	cmp	ebx, 2
	mov	r10d, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
	jl	.label_1248
	jmp	.label_1256
.label_1253:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 0xa
	mov	ebx, 0xa
	jmp	.label_1256
.label_1242:
	xor	ecx, 1
	mov	ebx, 0x3b9aca00
	shl	ebx, cl
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
.label_1256:
	xor	edi, edi
	cmp	ebx, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1236
	cmp	r14, r12
	setne	al
	cmp	r13d, r15d
	jg	.label_1241
	test	al, al
	je	.label_1236
.label_1241:
	mov	rax, rdi
	not	rax
	and	rax, r12
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jl	.label_1236
	jne	.label_1247
	mov	eax, r13d
	cdq	
	idiv	ebx
	mov	eax, r13d
	sub	eax, edx
	cmp	r15d, eax
	jl	.label_1236
.label_1247:
	mov	qword ptr [rsp + 0x40], r11
	movsxd	rax, r9d
	mov	qword ptr [rsp + 0x48], rax
	or	rdi, r14
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, ebx
	imul	rax, rax, 0x38e38e39
	shr	rax, 0x21
	add	eax, r15d
	cdqe	
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x28]
	call	utimensat
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1236
	mov	qword ptr [rsp + 0x18], rbx
	lea	rcx, [rsp + 0x68]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, eax
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0xc0]
	xor	rcx, r14
	or	rcx, rax
	movsxd	rax, r15d
	mov	rdx, qword ptr [rsp + 0xc8]
	xor	rdx, rax
	or	rdx, rcx
	je	.label_1257
	mov	qword ptr [rsp + 0x50], r14
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	utimensat
.label_1257:
	test	ebx, ebx
	je	.label_1240
	mov	ecx, 0xfffffffe
	jmp	.label_1236
.label_1240:
	mov	eax, dword ptr [rsp + 0xc0]
	and	eax, 1
	neg	eax
	and	eax, 0x3b9aca00
	add	rax, qword ptr [rsp + 0xc8]
	movsxd	rcx, eax
	imul	rdx, rcx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	mov	r10d, 1
	cmp	ecx, edx
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_1244
	mov	ecx, 1
.label_1259:
	mov	r10d, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1244
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, ebp
	je	.label_1246
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	r10d, ecx
	je	.label_1259
.label_1244:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1248
.label_1246:
	mov	r10d, ebp
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1248
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dee0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40def0

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df00
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df10

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14, rsi
	mov	r15d, edi
	xor	ebx, ebx
	test	rdx, rdx
	lea	r13, [rsp]
	cmove	r13, rdx
	je	.label_1264
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1277
	cmp	rax, 0x3ffffffe
	jne	.label_1278
.label_1277:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1279
	cmp	rdi, 0x3ffffffe
	je	.label_1279
.label_1278:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	jmp	.label_1263
.label_1279:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1288
	mov	qword ptr [r13], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1288:
	cmp	rdi, 0x3ffffffe
	jne	.label_1294
	mov	qword ptr [r13 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1294:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1263
.label_1264:
	test	r15d, r15d
	jns	.label_1300
	test	r14, r14
	jne	.label_1300
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1263
.label_1300:
	cmp	dword ptr [rip + utimensat_works_really],  0
	js	.label_1265
	cmp	ebx, 2
	jne	.label_1268
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1270
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1274
.label_1270:
	mov	rsi, r14
	call	__xstat
.label_1274:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1263
	cmp	qword ptr [r13 + 8], 0x3ffffffe
	jne	.label_1276
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	mov	ebx, 3
	jmp	.label_1268
.label_1276:
	mov	ebx, 3
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	jne	.label_1268
	movups	xmm0, xmmword ptr [rsp + 0xc0]
	movaps	xmmword ptr [r13 + 0x10], xmm0
.label_1268:
	test	r15d, r15d
	jns	.label_1286
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	mov	rdx, r13
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1290
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1292
.label_1290:
	je	.label_1293
	call	__errno_location
.label_1292:
	cmp	dword ptr [rax], 0x26
	jne	.label_1293
.label_1286:
	test	r15d, r15d
	js	.label_1265
	mov	edi, r15d
	mov	rsi, r13
	call	futimens
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1296
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1297
.label_1293:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1263
.label_1296:
	je	.label_1261
	call	__errno_location
.label_1297:
	cmp	dword ptr [rax], 0x26
	jne	.label_1261
.label_1265:
	mov	dword ptr [rip + utimensat_works_really],  0xffffffff
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1262
	cmp	ebx, 3
	je	.label_1266
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1267
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1272
.label_1262:
	xor	r12d, r12d
	test	r13, r13
	jne	.label_1273
	jmp	.label_1275
.label_1261:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1263
.label_1267:
	mov	rsi, r14
	call	__xstat
.label_1272:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1263
.label_1266:
	test	r13, r13
	je	.label_1281
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1298
	cmp	rax, 0x3fffffff
	jne	.label_1283
	cmp	qword ptr [r13 + 0x18], 0x3fffffff
	jne	.label_1284
.label_1281:
	xor	r12d, r12d
	jmp	.label_1275
.label_1298:
	xor	ebp, ebp
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	je	.label_1263
	lea	rbx, [r13 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	jmp	.label_1291
.label_1283:
	lea	rbx, [r13 + 0x18]
	jmp	.label_1291
.label_1284:
	lea	rbx, [r13 + 0x18]
	mov	rdi, r13
	call	gettime
.label_1291:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1295
	cmp	rax, 0x3ffffffe
	jne	.label_1273
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	qword ptr [r13 + 0x10], rax
	mov	qword ptr [r13 + 0x18], rcx
	jmp	.label_1273
.label_1295:
	add	r13, 0x10
	mov	rdi, r13
	call	gettime
.label_1273:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x40], rax
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsp + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x48], rdx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, rcx
	imul	qword ptr [rsp + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x58], rdx
	lea	r12, [rsp + 0x40]
.label_1275:
	test	r15d, r15d
	js	.label_1287
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	call	futimesat
	test	eax, eax
	je	.label_1299
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1263
	mov	rdi, r14
	mov	rsi, r12
	call	utimes
	jmp	.label_1285
.label_1287:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1285:
	mov	ebp, eax
.label_1263:
	mov	eax, ebp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1299:
	test	r12, r12
	je	.label_1263
	mov	rbx, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x18]
	cmp	rbx, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_1263
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_1263
	lea	rdx, [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xc0]
	sub	rcx, qword ptr [r12]
	sub	rax, qword ptr [r12 + 0x10]
	movups	xmm0, xmmword ptr [r12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	xor	edx, edx
	cmp	rbx, 0x7a120
	jl	.label_1271
	cmp	rcx, 1
	jne	.label_1271
	xor	edx, edx
	cmp	qword ptr [rsp + 0xb8], 0
	jne	.label_1271
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x28], 0
.label_1271:
	cmp	r14, 0x7a120
	jl	.label_1269
	cmp	rax, 1
	jne	.label_1269
	cmp	qword ptr [rsp + 0xc8], 0
	je	.label_1289
.label_1269:
	test	rdx, rdx
	jne	.label_1280
	jmp	.label_1282
.label_1289:
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x38], 0
.label_1280:
	xor	esi, esi
	mov	edi, r15d
	call	futimesat
.label_1282:
	xor	ebp, ebp
	jmp	.label_1263
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3a0

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3c0

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xb0
	mov	r14, rdi
	xor	ebx, ebx
	test	rsi, rsi
	lea	r15, [rsp]
	mov	r12, r15
	cmove	r12, rsi
	je	.label_1313
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r12 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1321
	cmp	rax, 0x3ffffffe
	jne	.label_1304
.label_1321:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1307
	cmp	rdi, 0x3ffffffe
	je	.label_1307
.label_1304:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1322:
	mov	ebp, 0xffffffff
.label_1309:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1307:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1316
	mov	qword ptr [r12], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1316:
	cmp	rdi, 0x3ffffffe
	jne	.label_1323
	mov	qword ptr [r12 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1323:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1309
.label_1313:
	cmp	dword ptr [rip + lutimensat_works_really],  0
	js	.label_1310
	cmp	ebx, 2
	jne	.label_1301
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1309
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1320
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1301
.label_1320:
	mov	ebx, 3
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	jne	.label_1301
	movups	xmm0, xmmword ptr [rsp + 0x78]
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1301:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	mov	rdx, r12
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1311
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1312
.label_1311:
	je	.label_1306
	call	__errno_location
.label_1312:
	cmp	dword ptr [rax], 0x26
	jne	.label_1306
.label_1310:
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1315
	cmp	ebx, 3
	je	.label_1317
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1309
.label_1317:
	xor	edx, edx
	test	r12, r12
	je	.label_1302
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1303
	cmp	rax, 0x3fffffff
	jne	.label_1308
	xor	edx, edx
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1302
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	call	gettime
	jmp	.label_1305
.label_1306:
	mov	dword ptr [rip + utimensat_works_really],  1
	mov	dword ptr [rip + lutimensat_works_really],  1
	jmp	.label_1309
.label_1315:
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1309
	jmp	.label_1302
.label_1303:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1309
	lea	rbx, [r12 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	jmp	.label_1305
.label_1308:
	lea	rbx, [r12 + 0x18]
.label_1305:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1318
	cmp	rax, 0x3ffffffe
	jne	.label_1314
	mov	rax, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1314
.label_1318:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
.label_1314:
	mov	rdx, r15
.label_1302:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x38]
	cmp	eax, 0xa000
	jne	.label_1319
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1322
.label_1319:
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebp, eax
	jmp	.label_1309
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e6a0

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
	je	.label_1336
	mov	edx, OFFSET FLAT:label_1327
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1333
.label_1336:
	mov	edx, OFFSET FLAT:label_1334
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1338
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
	mov	esi, OFFSET FLAT:label_1335
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1339
	jmp	qword ptr [(r12 * 8) + label_1340]
.label_1698:
	add	rsp, 8
	jmp	.label_1326
.label_1339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1330
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
	jmp	.label_1326
.label_1699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1325
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
.label_1700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1331
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
.label_1701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1328
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
.label_1702:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1342
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
	jmp	.label_1326
.label_1703:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1341
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
	jmp	.label_1326
.label_1704:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1324
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
	jmp	.label_1326
.label_1705:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1329
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
	jmp	.label_1326
.label_1707:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1332
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
	jmp	.label_1326
.label_1706:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1337
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
.label_1326:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1343:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1343
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1354
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1356
.label_1354:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1356:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1344
	cmp	r10d, 0x29
	jae	.label_1353
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1355
.label_1353:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1355:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1344
	cmp	r10d, 0x29
	jae	.label_1351
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1352
.label_1351:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1352:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1344
	cmp	r10d, 0x29
	jae	.label_1349
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1350
.label_1349:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1350:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1344
	cmp	r10d, 0x29
	jae	.label_1347
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1348
.label_1347:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1348:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1344
	cmp	r10d, 0x29
	jae	.label_1345
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1346
.label_1345:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1346:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1344
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1344
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1344
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1344
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1344:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ec20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1357
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1357:
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
	#Procedure 0x40ecb0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1358
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1359
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1361
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1360
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ed30

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	cmp	byte ptr [rip + can_write_any_file.initialized],  1
	jne	.label_1362
	mov	al, byte ptr [rip + can_write_any_file.can_write]
	ret	
.label_1362:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [rip + can_write_any_file.can_write]
	mov	byte ptr [rip + can_write_any_file.initialized],  1
	add	rsp, 8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ed60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1363
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1364
	test	rax, rax
	je	.label_1363
.label_1364:
	pop	rbx
	ret	
.label_1363:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eda0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1365
	test	rax, rax
	je	.label_1366
.label_1365:
	pop	rbx
	ret	
.label_1366:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edc0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1367
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1368
	test	rbx, rbx
	jne	.label_1368
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1368:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1369
	test	rax, rax
	je	.label_1367
.label_1369:
	pop	rbx
	ret	
.label_1367:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1370
	test	rbx, rbx
	jne	.label_1370
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1370:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1372
	test	rax, rax
	je	.label_1371
.label_1372:
	pop	rbx
	ret	
.label_1371:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40ee40
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1373
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1376
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1374
.label_1373:
	test	rcx, rcx
	jne	.label_1379
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1379:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1375
.label_1374:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1378
	test	rbx, rbx
	jne	.label_1378
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1378:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1377
	test	rax, rax
	je	.label_1376
.label_1377:
	pop	rbx
	ret	
.label_1376:
	call	xalloc_die
.label_1375:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eee0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1380
	test	rax, rax
	je	.label_1381
.label_1380:
	pop	rbx
	ret	
.label_1381:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef00
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1382
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1385
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1386
	call	free
	xor	eax, eax
	jmp	.label_1383
.label_1382:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1384
	mov	qword ptr [rsi], rbx
.label_1386:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1383
	test	rax, rax
	je	.label_1384
.label_1383:
	pop	rbx
	ret	
.label_1384:
	call	xalloc_die
.label_1385:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef70
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
	je	.label_1388
	test	r14, r14
	je	.label_1387
.label_1388:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1387:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40efb0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1389
	call	rpl_calloc
	test	rax, rax
	je	.label_1389
	pop	rcx
	ret	
.label_1389:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40efe0

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
	je	.label_1390
	test	r15, r15
	je	.label_1391
.label_1390:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1391:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f020

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
	je	.label_1393
	test	r15, r15
	je	.label_1392
.label_1393:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f070

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1394
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_676
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f0a0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rcx, qword ptr [rip + stdin]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_1395
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_1397
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_1397:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1396
.label_1395:
	xor	ebx, ebx
.label_1396:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f110

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1398
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1399
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1399
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1398:
	mov	ecx, 1
.label_1399:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f160

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1400
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1400
	test	byte ptr [rbx + 1], 1
	je	.label_1400
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1400:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1a0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1401
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1402
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1402:
	add	rax, rcx
.label_1401:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1d0

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
	jne	.label_1403
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1403
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1404
.label_1403:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1404:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1405
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1405:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f240

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
	je	.label_1406
	cmp	r15, -2
	jb	.label_1406
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1406
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1406:
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
	#Procedure 0x40f2a0

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2b0

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2c0
	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:

	cmp	esi, -1
	je	.label_1407
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1407:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2e0

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	cmp	edx, -1
	je	.label_1408
	mov	edi, edx
	call	fchmod
	jmp	.label_1409
.label_1408:
	mov	rdi, rax
	call	chmod
.label_1409:
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f310

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
	jne	.label_1411
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1410
	test	cl, cl
	jne	.label_1410
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1410
.label_1411:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1410
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1410:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f370

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1415
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1413
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1414
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
	test	rbx, rbx
	jne	.label_1416
	mov	edi, ebp
	call	close
	jmp	.label_1412
.label_1413:
	mov	rbx, r14
	jmp	.label_1415
.label_1414:
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
.label_1412:
	xor	ebx, ebx
.label_1416:
	mov	rdi, r14
	call	closedir
	mov	dword ptr [r15], r12d
.label_1415:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f400

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f410
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f430

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1418
	cmp	byte ptr [rax], 0x43
	jne	.label_1420
	cmp	byte ptr [rax + 1], 0
	je	.label_1417
.label_1420:
	mov	esi, OFFSET FLAT:label_1419
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1418
.label_1417:
	xor	ebx, ebx
.label_1418:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f470

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1421
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1422:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1422
.label_1421:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f4a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_58
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1423
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f4d0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1424
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1424:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1425
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1426
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1427
.label_1426:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1427:
	mov	ecx, dword ptr [rax]
.label_1425:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f590
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5b0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1428
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_1428:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5e0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5f0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1431:
	cmp	r14, r13
	jae	.label_1430
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1429:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_1429
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_1433:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_1433
.label_1430:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_1434
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	r14, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rbx, rdx
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_1431
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_1432
.label_1434:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1432:
	mov	rax, rcx
	add	rsp, 0x18
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
	#Procedure 0x40f6f0
	.globl randint_free
	.type randint_free, @function
randint_free:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f710

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	mov	rdi, rbx
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f760

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1439
	xor	ebx, ebx
	test	r14, r14
	je	.label_1441
	mov	esi, OFFSET FLAT:label_1442
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1436
.label_1441:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_1440
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_1436
.label_1439:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1436
.label_1440:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_1435
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1438
	cmp	r12, 0x800
	mov	edx, 0x800
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	mov	r12, rax
	mov	edi, ebx
	call	close
	xor	r13d, r13d
	test	r12, r12
	js	.label_1438
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_1437
.label_1438:
	mov	eax, 0x800
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	call	gettimeofday
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1437
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getpid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1437
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + r12]
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1437
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1437
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_1437:
	mov	rdi, r14
	call	isaac_seed
.label_1436:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f9b0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f9c0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f9d0

	.globl randread
	.type randread, @function
randread:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_1449
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_1444
	nop	dword ptr [rax]
.label_1443:
	add	rbx, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
.label_1444:
	sub	r15, rbp
	jne	.label_1443
	jmp	.label_1445
.label_1449:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1446
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1448:
	cmp	r15, 0x800
	jb	.label_1447
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1448
	jmp	.label_1450
.label_1447:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1446:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1450:
	mov	qword ptr [r14 + 0x18], r12
.label_1445:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40faf0

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1451
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1451:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb30

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1452
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1455
	mov	esi, OFFSET FLAT:label_1453
	jmp	.label_1454
.label_1455:
	mov	esi, OFFSET FLAT:label_1456
.label_1454:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1452:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fb90

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	r14
	push	rbx
	mov	rdx, qword ptr [rdi + 0x800]
	mov	rax, qword ptr [rdi + 0x810]
	inc	rax
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rax
	mov	qword ptr [rdi + 0x810], rax
	lea	r9, [rdi + 0x400]
	lea	r8, [rdi + 0x20]
	cmp	r9, r8
	cmova	r8, r9
	mov	rax, rdi
	not	rax
	add	rax, r8
	shr	rax, 5
	lea	r8, [rax*4]
	shl	rax, 5
	lea	r10, [rsi + rax + 0x20]
	mov	r11, rdi
	nop	dword ptr [rax + rax]
.label_1457:
	mov	rax, rdx
	shl	rax, 0x15
	xor	rax, rdx
	not	rax
	add	rax, qword ptr [r11 + 0x400]
	mov	rdx, qword ptr [r11]
	mov	ebx, edx
	and	ebx, 0x7f8
	add	rcx, qword ptr [rdi + rbx]
	add	rcx, rax
	mov	qword ptr [r11], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, rax
	add	rbx, qword ptr [r11 + 0x408]
	mov	rcx, qword ptr [r11 + 8]
	mov	eax, ecx
	and	eax, 0x7f8
	add	rdx, rbx
	add	rdx, qword ptr [rdi + rax]
	mov	qword ptr [r11 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r14, rbx
	shl	r14, 0xc
	xor	r14, rbx
	add	r14, qword ptr [r11 + 0x410]
	mov	rax, qword ptr [r11 + 0x10]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, r14
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r11 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rax
	mov	rdx, r14
	shr	rdx, 0x21
	xor	rdx, r14
	add	rdx, qword ptr [r11 + 0x418]
	mov	rcx, qword ptr [r11 + 0x18]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [r11 + 0x18], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [rsi + 0x18], rcx
	add	r11, 0x20
	add	rsi, 0x20
	cmp	r11, r9
	jb	.label_1457
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_1458:
	mov	rbx, rdx
	shl	rbx, 0x15
	xor	rbx, rdx
	not	rbx
	add	rbx, qword ptr [rsi - 0x418]
	mov	rax, qword ptr [rsi - 0x18]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	add	rcx, rbx
	mov	qword ptr [rsi - 0x18], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10], rax
	mov	rdx, rbx
	shr	rdx, 5
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x410]
	mov	rcx, qword ptr [rsi - 0x10]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi - 0x10], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 8], rcx
	mov	rbx, rdx
	shl	rbx, 0xc
	xor	rbx, rdx
	add	rbx, qword ptr [rsi - 0x408]
	mov	rax, qword ptr [rsi - 8]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, rbx
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi - 8], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10 + 0x10], rax
	mov	rdx, rbx
	shr	rdx, 0x21
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x400]
	mov	rcx, qword ptr [rsi]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x18], rcx
	lea	rax, [rsi + 0x20]
	add	rsi, 8
	add	r10, 0x20
	cmp	rsi, r9
	mov	rsi, rax
	jb	.label_1458
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe10

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	movabs	r8, 0xb9f8b322c73ac862
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1459:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	shl	rdx, 9
	mov	r15, rdx
	xor	r15, r10
	sub	rsi, r15
	mov	r10, r8
	shr	r8, 0x17
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	lea	r12, [rcx + rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	xor	r8, r10
	mov	r10, rcx
	add	r10, rax
	sub	r14, r8
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	xor	rcx, r10
	mov	r11, r14
	add	r11, r15
	sub	r9, rcx
	lea	r10, [r9 + r15]
	shl	r15, 0xe
	mov	rax, r15
	xor	rax, r13
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	add	rbx, 8
	cmp	rbx, 0x100
	jl	.label_1459
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1460:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	add	r8, rsi
	sub	rcx, r11
	lea	r9, [rcx + rsi]
	shl	rsi, 0xf
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
.label_1723:
	xor	rdx, r12
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1460
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410070

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x410080

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410090

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1461
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1463
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1461
.label_1463:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1461
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1462
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1462:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1461:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410110

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1467
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1467:
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
	ja	.label_1472
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1465
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1469
	test	esi, esi
	jne	.label_1472
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1473
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1483
.label_1472:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1475
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1469
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1480
.label_1465:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1470
.label_1469:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1484
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1464
.label_1484:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1464:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1466:
	call	fcntl
.label_1470:
	mov	ebp, eax
.label_1468:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1480:
	cmp	eax, 6
	jne	.label_1475
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1477
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1478
.label_1475:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1479
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1482
.label_1473:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1483:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1466
.label_1477:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1478:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1471
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1476
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1476
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1468
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1481
.label_1476:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1468
.label_1479:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1482:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1470
.label_1471:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1481:
	test	al, al
	je	.label_1468
	test	ebp, ebp
	js	.label_1468
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1474
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1468
.label_1474:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1468
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4103b0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x4103d0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1486
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1488
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1489
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1485
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1486
.label_1485:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1487
.label_1488:
	mov	rax, rbx
	jmp	.label_1486
.label_1489:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1487:
	xor	eax, eax
.label_1486:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
