	.section	.text
	.align	32
	#Procedure 0x402060

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_31
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_27
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
	mov	esi, OFFSET FLAT:label_19
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
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_32
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_31:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	.align	32
	#Procedure 0x4023a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
	mov	edi, OFFSET FLAT:label_44
	mov	esi, OFFSET FLAT:label_68
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_44
	call	textdomain
	call	localeconv
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	mov	edi, OFFSET FLAT:label_78
	cmovne	rdi, rax
	mov	qword ptr [rip + decimal_point],  rdi
	call	strlen
	mov	qword ptr [rip + decimal_point_len],  rax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	xor	ebx, ebx
	xor	r12d, r12d
.label_1755:
	mov	byte ptr [rsp + 3], al
	mov	al, bl
.label_1756:
	mov	bl, al
	jmp	.label_42
	nop	dword ptr [rax]
.label_46:
	mov	r12, qword ptr [rip + optarg]
	mov	byte ptr [rip + interpret_backslash_escapes],  bpl
	mov	qword ptr [rip + trailing_delim],  rdx
	jmp	.label_42
.label_1757:
	mov	bpl, 1
	mov	edx, OFFSET FLAT:label_45
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_42:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_50
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_55
	lea	ecx, [rax - 0x63]
	cmp	ecx, 0x1d
	ja	.label_81
	mov	al, 1
	mov	edx, OFFSET FLAT:label_57
	jmp	qword ptr [(rcx * 8) + label_58]
.label_81:
	cmp	eax, 0x4c
	jne	.label_59
	mov	byte ptr [rip + follow_links],  1
	jmp	.label_42
.label_55:
	cmp	eax, -1
	jne	.label_61
	cmp	dword ptr [rip + optind],  r15d
	je	.label_64
	test	r12, r12
	je	.label_65
	mov	esi, OFFSET FLAT:label_66
	mov	rdi, r12
	call	strstr
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r12
	je	.label_52
	mov	edi, OFFSET FLAT:label_73
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_76
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_38
	cdqe	
	mov	esi, dword ptr [(rax * 4) + quoting_style_vals]
	xor	edi, edi
	jmp	.label_39
.label_65:
	mov	r12d, r15d
	xor	r15d, r15d
	cmp	byte ptr [rsp + 3], 0
	setne	r15b
	xor	ebp, ebp
	test	bl, bl
	setne	bpl
	xor	edx, edx
	mov	edi, r15d
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp + 0x10], rax
	mov	edx, 1
	mov	edi, r15d
	mov	r15d, r12d
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp + 8], rax
	jmp	.label_48
.label_76:
	xor	edi, edi
	mov	esi, 4
.label_39:
	call	set_quoting_style
	jmp	.label_52
.label_38:
	xor	edi, edi
	mov	esi, 4
	call	set_quoting_style
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
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
	call	error
.label_52:
	mov	qword ptr [rsp + 8], r12
.label_48:
	movsxd	rax, dword ptr [rip + optind]
	mov	r12b, 1
	cmp	eax, r15d
	jge	.label_60
	lea	r13, [r14 + rax*8]
	sub	r15d, eax
	mov	r12b, 1
	lea	r14, [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	byte ptr [rsp + 3], 0
	mov	rbx, qword ptr [r13]
	je	.label_69
	cmp	byte ptr [rbx], 0x2d
	jne	.label_71
	cmp	byte ptr [rbx + 1], 0
	je	.label_75
.label_71:
	mov	rdi, rbx
	mov	rsi, r14
	call	statfs
	test	eax, eax
	je	.label_79
	call	__errno_location
	mov	dword ptr [rsp + 4], r15d
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	r15d, dword ptr [rsp + 4]
	mov	rdx, r14
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_69:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_47
	movzx	eax, byte ptr [rbx + 1]
	mov	ecx, eax
	neg	cl
	sbb	ebp, ebp
	test	al, al
	jne	.label_49
	mov	edi, 1
	mov	esi, ebp
	mov	rdx, r14
	call	__fxstat
	test	eax, eax
	je	.label_54
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_51
.label_79:
	mov	esi, 0xffffffff
	mov	ecx, OFFSET FLAT:print_statfs
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_62
.label_47:
	mov	ebp, 0xffffffff
.label_49:
	cmp	byte ptr [rip + follow_links],  1
	jne	.label_67
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__xstat
	jmp	.label_72
.label_67:
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__lxstat
.label_72:
	test	eax, eax
	je	.label_54
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	r14d, r15d
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 4]
	jmp	.label_41
.label_54:
	movzx	eax, word ptr [rsp + 0x30]
	or	eax, 0x4000
	and	eax, 0xf000
	cmp	eax, 0x6000
	mov	rdi, qword ptr [rsp + 0x10]
	jne	.label_74
	mov	rdi, qword ptr [rsp + 8]
.label_74:
	mov	ecx, OFFSET FLAT:print_stat
	mov	esi, ebp
.label_62:
	mov	rdx, rbx
	mov	r8, r14
	call	print_it
	mov	bpl, al
	xor	bpl, 1
	jmp	.label_51
.label_75:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	r14d, r15d
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_41:
	mov	rdx, r15
	mov	r15d, r14d
.label_43:
	lea	r14, [rsp + 0x18]
	call	error
.label_51:
	and	r12b, bpl
	add	r13, 8
	dec	r15d
	jne	.label_82
.label_60:
	movzx	eax, r12b
	xor	eax, 1
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_61:
	cmp	eax, 0xffffff7d
	je	.label_70
	cmp	eax, 0xffffff7e
	jne	.label_59
	xor	edi, edi
	call	usage
.label_70:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_15
	mov	edx, OFFSET FLAT:label_17
	mov	r8d, OFFSET FLAT:label_77
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_59:
	mov	edi, 1
	call	usage
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402850

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	push	rbx
	mov	ebx, edx
	test	dil, dil
	je	.label_85
	test	sil, sil
	je	.label_87
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_88
.label_85:
	test	sil, sil
	je	.label_89
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_88
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
.label_88:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	xor	edi, edi
	test	bl, bl
	je	.label_91
	mov	esi, OFFSET FLAT:label_94
	jmp	.label_95
.label_91:
	mov	esi, OFFSET FLAT:label_93
.label_95:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	r15, rax
	mov	rdi, r14
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rcx
	call	xasprintf
	mov	r14, rax
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	rbx, rax
	mov	rdi, r14
	call	free
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl print_it
	.type print_it, @function
print_it:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	r12, rdi
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	al, byte ptr [r12]
	xor	r13d, r13d
	jmp	.label_119
	nop	
.label_97:
	movzx	eax, byte ptr [r12 + 1]
	inc	r12
.label_119:
	test	al, al
	je	.label_123
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_124
	cmp	ecx, 0x25
	jne	.label_125
	lea	rbx, [r12 + 1]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, rbx
	call	strspn
	lea	rbp, [r12 + rax]
	lea	rdi, [r12 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	r14, [rax + rbp + 1]
	movzx	ecx, byte ptr [rax + rbp + 1]
	cmp	cl, 0x2e
	jne	.label_129
	lea	rdi, [r14 + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	movzx	ecx, byte ptr [r14 + rax + 1]
	lea	r14, [r14 + rax + 1]
.label_129:
	mov	rbp, r14
	sub	rbp, rbx
	movsx	ebx, cl
	lea	r15, [rbp + 1]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	cmp	ebx, 0x25
	mov	r12, r14
	je	.label_101
	test	ebx, ebx
	jne	.label_102
	lea	r12, [r14 - 1]
.label_101:
	test	rbp, rbp
	jne	.label_105
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_106
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x25
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_124:
	movzx	eax, byte ptr [rip + interpret_backslash_escapes]
	test	al, al
	je	.label_114
	movzx	ebx, byte ptr [r12 + 1]
	movsx	r15d, bl
	mov	eax, r15d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_118
	add	r15d, -0x30
	movsx	eax, byte ptr [r12 + 2]
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	jne	.label_122
	lea	r15d, [rax + r15*8 - 0x30]
	movsx	eax, byte ptr [r12 + 3]
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	jne	.label_126
	lea	r15d, [rax + r15*8 - 0x30]
	add	r12, 4
	jmp	.label_113
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_130
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_97
.label_102:
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	edx, ebx
	mov	ecx, dword ptr [rsp + 0xc]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x18]
	and	r13b, 1
	or	r13b, al
	mov	r12, r14
	jmp	.label_97
.label_118:
	test	bl, bl
	je	.label_112
	cmp	bl, 0x78
	jne	.label_104
	movzx	ebp, byte ptr [r12 + 2]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x10
	jne	.label_107
.label_104:
	lea	eax, [r15 - 0x22]
	cmp	eax, 0x54
	ja	.label_109
	jmp	qword ptr [(rax * 8) + label_111]
.label_1865:
	mov	bl, 7
	jmp	.label_103
.label_122:
	add	r12, 2
	jmp	.label_113
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_114:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_121
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_97
.label_126:
	add	r12, 3
.label_113:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_128
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
	dec	r12
	jmp	.label_97
.label_107:
	movsx	eax, bpl
	mov	edx, eax
	add	dl, 0x9f
	cmp	dl, 5
	ja	.label_131
	add	eax, -0x57
	jmp	.label_96
.label_131:
	add	bpl, 0xbf
	cmp	bpl, 5
	ja	.label_98
	add	eax, -0x37
	jmp	.label_96
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r15d
	call	error
	jmp	.label_103
.label_1866:
	mov	bl, 8
	jmp	.label_103
.label_1867:
	mov	bl, 0x1b
	jmp	.label_103
.label_1868:
	mov	bl, 0xc
	jmp	.label_103
.label_1869:
	mov	bl, 0xa
	jmp	.label_103
.label_1870:
	mov	bl, 0xd
	jmp	.label_103
.label_1871:
	mov	bl, 9
	jmp	.label_103
.label_1872:
	mov	bl, 0xb
.label_103:
	inc	r12
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_108
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	jmp	.label_97
.label_98:
	add	eax, -0x30
.label_96:
	movzx	edx, byte ptr [r12 + 3]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_116
	add	r12, 2
	jmp	.label_117
.label_116:
	movsx	ecx, dl
	shl	eax, 4
	mov	ebx, ecx
	add	bl, 0x9f
	cmp	bl, 5
	ja	.label_120
	add	ecx, -0x57
	jmp	.label_100
.label_120:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_132
	add	ecx, -0x37
	jmp	.label_100
.label_132:
	add	ecx, -0x30
.label_100:
	add	r12, 3
	add	eax, ecx
.label_117:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_127
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_97
.label_130:
	movzx	esi, al
	call	__overflow
	jmp	.label_97
.label_106:
	mov	esi, 0x25
	call	__overflow
	jmp	.label_97
.label_121:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_97
.label_128:
	movzx	esi, r15b
	call	__overflow
	dec	r12
	jmp	.label_97
.label_108:
	movzx	esi, bl
	call	__overflow
	jmp	.label_97
.label_127:
	movzx	esi, al
	call	__overflow
	jmp	.label_97
.label_123:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rip + trailing_delim]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	mov	al, byte ptr [r14]
	mov	rbx, qword ptr [rsp]
	mov	byte ptr [rbx + rbp + 1], al
	mov	byte ptr [rbx + rbp + 2], 0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r8
	mov	rbp, rsi
	mov	rbx, rdi
	add	edx, -0x53
	cmp	edx, 0x21
	ja	.label_321
	movabs	r13, 0x1288100000001
	movabs	r14, 0x1208000000001
	movabs	r12, 0x1200800000001
	movabs	rax, 0x200000000001
	jmp	qword ptr [(rdx * 8) + label_339]
.label_1874:
	mov	rax, qword ptr [r9 + 0x48]
	test	rax, rax
	jne	.label_356
	mov	rax, qword ptr [r9 + 8]
.label_356:
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r13, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_360
	mov	rbp, r15
.label_396:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_312
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_384
	and	rax, r14
	je	.label_384
	mov	byte ptr [r15], bl
	inc	r15
.label_384:
	inc	rbp
	cmp	rbp, r13
	jb	.label_396
	jmp	.label_312
.label_1875:
	mov	r8, qword ptr [r9]
	cmp	r8, 0x2fc12fc0
	jg	.label_399
	cmp	r8, 0xadfe
	jle	.label_260
	cmp	r8, 0x13111a7
	jg	.label_486
	cmp	r8, 0x1021993
	jg	.label_413
	cmp	r8, 0x11953
	jle	.label_417
	cmp	r8, 0x414a52
	jle	.label_423
	cmp	r8, 0x414a53
	je	.label_428
	cmp	r8, 0xc0ffee
	je	.label_434
	cmp	r8, 0xc36400
	jne	.label_139
	mov	eax, OFFSET FLAT:label_472
	jmp	.label_148
.label_321:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_447
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_181
.label_1876:
	mov	rax, qword ptr [r9 + 0x20]
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r14, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_461
	mov	rbp, r15
	nop	word ptr cs:[rax + rax]
.label_492:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_186
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_188
	and	rax, r13
	je	.label_188
	mov	byte ptr [r15], bl
	inc	r15
.label_188:
	inc	rbp
	cmp	rbp, r14
	jb	.label_492
	jmp	.label_186
.label_1877:
	mov	rax, qword ptr [r9 + 0x10]
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r14, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_495
	mov	rbp, r15
	nop	dword ptr [rax + rax]
.label_526:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_136
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_520
	and	rax, r13
	je	.label_520
	mov	byte ptr [r15], bl
	inc	r15
.label_520:
	inc	rbp
	cmp	rbp, r14
	jb	.label_526
	jmp	.label_136
.label_1878:
	mov	rax, qword ptr [r9 + 0x28]
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r13, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_151
	mov	rbp, r15
	nop	dword ptr [rax + rax]
.label_175:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_165
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_168
	and	rax, r14
	je	.label_168
	mov	byte ptr [r15], bl
	inc	r15
.label_168:
	inc	rbp
	cmp	rbp, r13
	jb	.label_175
	jmp	.label_165
.label_1879:
	mov	rax, qword ptr [r9 + 0x30]
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r14, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_179
	mov	rbp, r15
	nop	dword ptr [rax + rax]
.label_229:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_212
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_218
	and	rax, r13
	je	.label_218
	mov	byte ptr [r15], bl
	inc	r15
.label_218:
	inc	rbp
	cmp	rbp, r14
	jb	.label_229
	jmp	.label_212
.label_1880:
	mov	rax, qword ptr [r9 + 0x18]
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r14, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_233
	mov	rbp, r15
	nop	dword ptr [rax + rax]
.label_271:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_256
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_261
	and	rax, r13
	je	.label_261
	mov	byte ptr [r15], bl
	inc	r15
.label_261:
	inc	rbp
	cmp	rbp, r14
	jb	.label_271
	jmp	.label_256
.label_1881:
	mov	r15d, dword ptr [r9 + 0x38]
	mov	eax, dword ptr [r9 + 0x3c]
	mov	qword ptr [rsp + 0x10], rax
	shl	r15, 0x20
	lea	r13, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_274
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_331:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_316
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_320
	and	rax, r12
	je	.label_320
	mov	byte ptr [r13], bl
	inc	r13
.label_320:
	inc	rbp
	cmp	rbp, r14
	jb	.label_331
	jmp	.label_316
.label_1882:
	mov	rax, qword ptr [r9 + 0x40]
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r13, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_341
	mov	rbp, r15
	nop	dword ptr [rax]
.label_375:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_362
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_366
	and	rax, r14
	je	.label_366
	mov	byte ptr [r15], bl
	inc	r15
.label_366:
	inc	rbp
	cmp	rbp, r13
	jb	.label_375
	jmp	.label_362
.label_1883:
	lea	r13, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_379
	mov	r12, rax
	mov	rbp, r13
	nop	word ptr [rax + rax]
.label_416:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_418
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_407
	and	rax, r12
	je	.label_407
	mov	byte ptr [r13], bl
	inc	r13
.label_407:
	inc	rbp
	cmp	rbp, r14
	jb	.label_416
	jmp	.label_418
.label_1884:
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r13, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_421
	mov	rbp, r15
	nop	dword ptr [rax]
.label_458:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_445
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_450
	and	rax, r14
	je	.label_450
	mov	byte ptr [r15], bl
	inc	r15
.label_450:
	inc	rbp
	cmp	rbp, r13
	jb	.label_458
	jmp	.label_445
.label_1885:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	mov	qword ptr [rsp], rbx
	lea	r14, [rbx + rbp]
	mov	r15, rbp
	cmp	rbp, 2
	jl	.label_465
	mov	rbp, r13
	nop	word ptr [rax + rax]
.label_493:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_173
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_240
	and	rax, r12
	je	.label_240
	mov	byte ptr [r13], bl
	inc	r13
.label_240:
	inc	rbp
	cmp	rbp, r14
	jb	.label_493
	jmp	.label_173
.label_360:
	mov	rbp, r15
.label_312:
	cmp	rbp, r13
	jae	.label_146
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_498
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_498
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_431
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_431
.label_498:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_522:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r13, rbp
	jne	.label_522
	jmp	.label_157
.label_399:
	cmp	r8, 0x65735542
	jle	.label_135
	mov	eax, 0x858458f5
	cmp	r8, rax
	jle	.label_143
	mov	eax, 0xc97e8167
	cmp	r8, rax
	jg	.label_220
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	jg	.label_153
	mov	eax, 0x958458f5
	cmp	r8, rax
	jg	.label_288
	mov	eax, 0x858458f6
	cmp	r8, rax
	je	.label_330
	mov	eax, 0x9123683e
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_328
	jmp	.label_148
.label_461:
	mov	rbp, r15
.label_186:
	cmp	rbp, r14
	jae	.label_177
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_184
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_184
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_206
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_206
.label_184:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_215:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r14, rbp
	jne	.label_215
	jmp	.label_210
.label_495:
	mov	rbp, r15
.label_136:
	cmp	rbp, r14
	jae	.label_177
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_239
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_239
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_248
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_248
.label_239:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_490:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r14, rbp
	jne	.label_490
	jmp	.label_210
.label_151:
	mov	rbp, r15
.label_165:
	cmp	rbp, r13
	jae	.label_146
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_167
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_167
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_145
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_145
.label_167:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_367:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r13, rbp
	jne	.label_367
	jmp	.label_157
.label_179:
	mov	rbp, r15
.label_212:
	cmp	rbp, r14
	jae	.label_177
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_338
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_338
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_350
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_350
.label_338:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_193:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r14, rbp
	jne	.label_193
	jmp	.label_210
.label_233:
	mov	rbp, r15
.label_256:
	cmp	rbp, r14
	jae	.label_177
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_377
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_377
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_393
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_393
.label_377:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_408:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r14, rbp
	jne	.label_408
.label_210:
	add	r15, rax
	jmp	.label_414
.label_177:
	mov	rsi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 8]
.label_414:
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x646c
	jmp	.label_194
.label_274:
	mov	rbp, r13
.label_316:
	add	r15, qword ptr [rsp + 0x10]
	cmp	rbp, r14
	jae	.label_425
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_432
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_432
	mov	rdi, qword ptr [rsp + 8]
	lea	rdx, [rsi + rdi - 1]
	cmp	r13, rdx
	ja	.label_443
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r13
	cmp	rbp, rdi
	ja	.label_443
.label_432:
	mov	rdx, r13
	nop	dword ptr [rax]
.label_463:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_463
.label_144:
	add	r13, rax
	jmp	.label_469
.label_341:
	mov	rbp, r15
.label_362:
	cmp	rbp, r13
	jae	.label_146
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_475
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_475
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_201
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_201
.label_475:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_280:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r13, rbp
	jne	.label_280
	jmp	.label_157
.label_379:
	mov	rbp, r13
.label_418:
	cmp	rbp, r14
	jae	.label_501
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_503
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_503
	mov	r12, qword ptr [rsp + 8]
	lea	rdx, [rsi + r12 - 1]
	cmp	r13, rdx
	ja	.label_436
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r13
	cmp	rbp, r12
	ja	.label_436
.label_503:
	mov	rdx, r13
	nop	dword ptr [rax + rax]
.label_133:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_133
.label_317:
	add	r13, rax
	jmp	.label_142
.label_421:
	mov	rbp, r15
.label_445:
	cmp	rbp, r13
	jae	.label_146
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_150
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_150
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_236
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_236
.label_150:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_158:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r13, rbp
	jne	.label_158
.label_157:
	add	r15, rax
	jmp	.label_187
.label_146:
	mov	rsi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 8]
.label_187:
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x756c
	jmp	.label_194
.label_465:
	mov	rbp, r13
.label_173:
	cmp	rbp, r14
	jae	.label_204
	mov	rax, r15
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_209
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_209
	lea	rdx, [rsi + r15 - 1]
	cmp	r13, rdx
	ja	.label_227
	dec	r15
	sub	r15, rbp
	add	r15, rsi
	add	r15, r13
	cmp	rbp, r15
	ja	.label_227
.label_209:
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_243:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r14, rbp
	jne	.label_243
.label_480:
	add	r13, rax
	jmp	.label_251
.label_425:
	mov	rsi, qword ptr [rsp]
.label_469:
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x786c
	jmp	.label_412
.label_501:
	mov	rsi, qword ptr [rsp]
.label_142:
	mov	word ptr [r13], 0x73
.label_412:
	mov	edi, 1
	xor	eax, eax
	mov	rdx, r15
	jmp	.label_262
.label_204:
	mov	rsi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 8]
.label_251:
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x786c
	jmp	.label_194
.label_260:
	cmp	r8, 0x482a
	jg	.label_276
	cmp	r8, 0x2467
	jg	.label_287
	cmp	r8, 0x1372
	jle	.label_292
	lea	rax, [r8 - 0x1373]
	cmp	rax, 0x1c
	ja	.label_297
	jmp	qword ptr [(rax * 8) + label_305]
.label_1902:
	mov	eax, OFFSET FLAT:label_311
	jmp	.label_148
.label_135:
	cmp	r8, 0x541900ff
	jg	.label_344
	cmp	r8, 0x47504652
	jle	.label_323
	cmp	r8, 0x5346414e
	jg	.label_329
	cmp	r8, 0x52654972
	jg	.label_333
	cmp	r8, 0x47504653
	je	.label_342
	cmp	r8, 0x50495045
	jne	.label_139
	mov	eax, OFFSET FLAT:label_310
	jmp	.label_148
.label_143:
	cmp	r8, 0x73636672
	jle	.label_354
	cmp	r8, 0x7461636e
	jg	.label_359
	cmp	r8, 0x73727278
	jg	.label_363
	cmp	r8, 0x73636673
	je	.label_369
	cmp	r8, 0x73717368
	jne	.label_139
	mov	eax, OFFSET FLAT:label_420
	jmp	.label_148
.label_276:
	cmp	r8, 0x6968
	jle	.label_381
	cmp	r8, 0x9f9f
	jg	.label_387
	cmp	r8, 0x72b5
	jg	.label_383
	cmp	r8, 0x6969
	je	.label_398
	cmp	r8, 0x7275
	jne	.label_139
	mov	eax, OFFSET FLAT:label_406
	jmp	.label_148
.label_344:
	cmp	r8, 0x6165676b
	jle	.label_409
	cmp	r8, 0x62656571
	jg	.label_509
	cmp	r8, 0x62646575
	jg	.label_141
	cmp	r8, 0x6165676c
	je	.label_172
	cmp	r8, 0x61756673
	jne	.label_139
	mov	eax, OFFSET FLAT:label_419
	jmp	.label_148
.label_486:
	cmp	r8, 0x15013345
	jg	.label_435
	cmp	r8, 0xbad1de9
	jle	.label_442
	cmp	r8, 0x11307853
	jg	.label_337
	cmp	r8, 0xbad1dea
	je	.label_451
	cmp	r8, 0xbd00bd0
	jne	.label_139
	mov	eax, OFFSET FLAT:label_462
	jmp	.label_148
.label_431:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_466
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_284:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_284
.label_466:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_137
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_346:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_346
.label_137:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_157
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_522
.label_206:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_525
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_226:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_226
.label_525:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_182
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_195:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_195
.label_182:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_210
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_215
.label_248:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_244
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_234:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_234
.label_244:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_270
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_279:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_279
.label_270:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_210
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_490
.label_145:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_304
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_325:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_325
.label_304:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_189
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_249:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_249
.label_189:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_157
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_367
.label_350:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_380
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_402:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_402
.label_380:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_437
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_449:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_449
.label_437:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_210
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_193
.label_393:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_468
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_491:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_491
.label_468:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_231
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_513:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_513
.label_231:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_210
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_408
.label_443:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_528
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_149:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_149
.label_528:
	test	rdx, rdx
	je	.label_216
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rdx
.label_196:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_196
.label_216:
	cmp	rax, rcx
	mov	rsi, qword ptr [rsp]
	je	.label_144
	lea	rdx, [r13 + rcx]
	add	rbp, rcx
	jmp	.label_463
.label_201:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_221
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_294:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_294
.label_221:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_511
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_494:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_494
.label_511:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_157
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_280
.label_436:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_306
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_327:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_327
.label_306:
	test	rdx, rdx
	je	.label_202
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rdx
.label_246:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_246
.label_202:
	cmp	rax, rcx
	mov	rsi, qword ptr [rsp]
	je	.label_317
	lea	rdx, [r13 + rcx]
	add	rbp, rcx
	jmp	.label_133
.label_236:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_293
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_291:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_291
.label_293:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_159
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_345:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_345
.label_159:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_157
	lea	rdi, [r15 + r8]
	add	rbp, r8
	jmp	.label_158
.label_227:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_313
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_477:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_477
.label_313:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_504
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_514:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_514
.label_504:
	cmp	rax, r8
	mov	rsi, qword ptr [rsp]
	je	.label_480
	lea	rdi, [r13 + r8]
	add	rbp, r8
	jmp	.label_243
.label_413:
	cmp	r8, 0x12fd16c
	jg	.label_529
	cmp	r8, 0x1021994
	je	.label_138
	cmp	r8, 0x1021997
	je	.label_199
	cmp	r8, 0x1161970
	jne	.label_139
	mov	eax, OFFSET FLAT:label_213
	jmp	.label_148
.label_220:
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_161
	mov	eax, 0xde5e81e3
	cmp	r8, rax
	jg	.label_166
	mov	eax, 0xc97e8168
	cmp	r8, rax
	je	.label_171
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_178
	jmp	.label_148
.label_287:
	cmp	r8, 0x3fff
	jle	.label_185
	cmp	r8, 0x4005
	jg	.label_192
	cmp	r8, 0x4000
	je	.label_200
	cmp	r8, 0x4004
	je	.label_200
	jmp	.label_139
.label_323:
	cmp	r8, 0x42494e4c
	jle	.label_214
	cmp	r8, 0x453dcd27
	jg	.label_219
	cmp	r8, 0x42494e4d
	je	.label_429
	cmp	r8, 0x43415d53
	jne	.label_139
	mov	eax, OFFSET FLAT:label_301
	jmp	.label_148
.label_354:
	cmp	r8, 0x68191121
	jle	.label_241
	cmp	r8, 0x6e667363
	jg	.label_245
	cmp	r8, 0x68191122
	je	.label_250
	cmp	r8, 0x6b414653
	jne	.label_139
	mov	eax, OFFSET FLAT:label_258
	jmp	.label_148
.label_381:
	cmp	r8, 0x4d59
	jle	.label_263
	cmp	r8, 0x564b
	jg	.label_269
	cmp	r8, 0x4d5a
	je	.label_272
	cmp	r8, 0x517b
	jne	.label_139
	mov	eax, OFFSET FLAT:label_286
	jmp	.label_148
.label_409:
	cmp	r8, 0x58465341
	jle	.label_290
	cmp	r8, 0x5dca2df4
	jg	.label_296
	cmp	r8, 0x58465342
	je	.label_302
	mov	eax, OFFSET FLAT:label_307
	mov	qword ptr [rsp], rax
	cmp	r8, 0x5a3c69f0
	je	.label_308
	jmp	.label_139
.label_435:
	cmp	r8, 0x1badfacd
	jle	.label_324
	cmp	r8, 0x28cd3d44
	jg	.label_404
	cmp	r8, 0x1badface
	je	.label_334
	cmp	r8, 0x24051905
	jne	.label_139
	mov	eax, OFFSET FLAT:label_347
	jmp	.label_148
.label_417:
	cmp	r8, 0xef52
	jg	.label_351
	cmp	r8, 0xadff
	je	.label_355
	cmp	r8, 0xef51
	jne	.label_139
	mov	eax, OFFSET FLAT:label_364
	jmp	.label_148
.label_153:
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	jg	.label_368
	mov	eax, 0xaad7aaea
	cmp	r8, rax
	je	.label_257
	mov	eax, 0xabba1974
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_335
	jmp	.label_148
.label_329:
	cmp	r8, 0x5346544d
	jg	.label_389
	cmp	r8, 0x5346414f
	je	.label_392
	cmp	r8, 0x53464846
	jne	.label_139
	mov	eax, OFFSET FLAT:label_400
	jmp	.label_148
.label_359:
	cmp	r8, 0x794c762f
	jg	.label_405
	cmp	r8, 0x7461636f
	je	.label_410
	cmp	r8, 0x74726163
	jne	.label_139
	mov	eax, OFFSET FLAT:label_424
	jmp	.label_148
.label_387:
	cmp	r8, 0x9fa1
	jg	.label_422
	cmp	r8, 0x9fa0
	je	.label_427
	cmp	r8, 0x9fa1
	jne	.label_139
	mov	eax, OFFSET FLAT:label_266
	jmp	.label_148
.label_509:
	cmp	r8, 0x6462671f
	jg	.label_441
	cmp	r8, 0x62656572
	je	.label_446
	cmp	r8, 0x63677270
	jne	.label_139
	mov	eax, OFFSET FLAT:label_455
	jmp	.label_148
.label_529:
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_460
	jmp	qword ptr [(rax * 8) + label_467]
.label_1940:
	mov	eax, OFFSET FLAT:label_471
	jmp	.label_148
.label_161:
	mov	eax, 0xfe534d41
	cmp	r8, rax
	jg	.label_474
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_476
	mov	eax, 0xf995e849
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_169
	jmp	.label_148
.label_292:
	cmp	r8, 0x2f
	je	.label_485
	cmp	r8, 0x187
	je	.label_489
	cmp	r8, 0x7c0
	jne	.label_139
	mov	eax, OFFSET FLAT:label_208
	jmp	.label_148
.label_442:
	cmp	r8, 0x13111a8
	je	.label_497
	cmp	r8, 0x7655821
	je	.label_502
	cmp	r8, 0x9041934
	jne	.label_139
	mov	eax, OFFSET FLAT:label_512
	jmp	.label_148
.label_185:
	cmp	r8, 0x2468
	je	.label_517
	cmp	r8, 0x2478
	je	.label_519
	cmp	r8, 0x3434
	jne	.label_139
	mov	eax, OFFSET FLAT:label_515
	jmp	.label_148
.label_214:
	cmp	r8, 0x2fc12fc1
	je	.label_134
	cmp	r8, 0x3153464a
	je	.label_140
	cmp	r8, 0x42465331
	jne	.label_139
	mov	eax, OFFSET FLAT:label_238
	jmp	.label_148
.label_241:
	cmp	r8, 0x65735543
	je	.label_155
	cmp	r8, 0x65735546
	je	.label_162
	cmp	r8, 0x67596969
	jne	.label_139
	mov	eax, OFFSET FLAT:label_385
	jmp	.label_148
.label_263:
	cmp	r8, 0x482b
	je	.label_386
	cmp	r8, 0x4858
	je	.label_483
	cmp	r8, 0x4d44
	jne	.label_139
	mov	eax, OFFSET FLAT:label_190
	jmp	.label_148
.label_290:
	cmp	r8, 0x54190100
	je	.label_197
	cmp	r8, 0x565a4653
	je	.label_203
	cmp	r8, 0x58295829
	jne	.label_139
	mov	eax, OFFSET FLAT:label_156
	jmp	.label_148
.label_324:
	cmp	r8, 0x15013346
	je	.label_281
	cmp	r8, 0x19800202
	je	.label_225
	cmp	r8, 0x19830326
	jne	.label_139
	mov	eax, OFFSET FLAT:label_235
	jmp	.label_148
.label_423:
	cmp	r8, 0x11954
	je	.label_197
	cmp	r8, 0x27e0eb
	jne	.label_139
	mov	eax, OFFSET FLAT:label_448
	jmp	.label_148
.label_288:
	mov	eax, 0x958458f6
	cmp	r8, rax
	je	.label_253
	mov	eax, 0xa501fcf5
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_265
	jmp	.label_148
.label_333:
	cmp	r8, 0x52654973
	je	.label_268
	cmp	r8, 0x5346314d
	jne	.label_139
	mov	eax, OFFSET FLAT:label_275
	jmp	.label_148
.label_363:
	cmp	r8, 0x73727279
	je	.label_283
	cmp	r8, 0x73757245
	jne	.label_139
	mov	eax, OFFSET FLAT:label_456
	jmp	.label_148
.label_383:
	cmp	r8, 0x72b6
	je	.label_300
	cmp	r8, 0x9660
	jne	.label_139
.label_200:
	mov	eax, OFFSET FLAT:label_314
	jmp	.label_148
.label_141:
	cmp	r8, 0x62646576
	je	.label_318
	cmp	r8, 0x62656570
	jne	.label_139
	mov	eax, OFFSET FLAT:label_415
	jmp	.label_148
.label_337:
	cmp	r8, 0x11307854
	je	.label_336
	cmp	r8, 0x13661366
	jne	.label_139
	mov	eax, OFFSET FLAT:label_349
	jmp	.label_148
.label_166:
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	je	.label_353
	mov	eax, 0xf2f52010
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_361
	jmp	.label_148
.label_192:
	cmp	r8, 0x4006
	je	.label_365
	cmp	r8, 0x4244
	jne	.label_139
	mov	eax, OFFSET FLAT:label_373
	jmp	.label_148
.label_219:
	cmp	r8, 0x453dcd28
	je	.label_378
	cmp	r8, 0x45584653
	jne	.label_139
	mov	eax, OFFSET FLAT:label_390
	jmp	.label_148
.label_245:
	cmp	r8, 0x6e667364
	je	.label_391
	cmp	r8, 0x6e736673
	jne	.label_139
	mov	eax, OFFSET FLAT:label_440
	jmp	.label_148
.label_269:
	cmp	r8, 0x564c
	je	.label_403
	cmp	r8, 0x5df5
	jne	.label_139
	mov	eax, OFFSET FLAT:label_254
	jmp	.label_148
.label_296:
	cmp	r8, 0x5dca2df5
	je	.label_487
	cmp	r8, 0x61636673
	jne	.label_139
	mov	eax, OFFSET FLAT:label_426
	jmp	.label_148
.label_404:
	cmp	r8, 0x28cd3d45
	je	.label_430
	cmp	r8, 0x2bad1dea
	jne	.label_139
	mov	eax, OFFSET FLAT:label_439
	jmp	.label_148
.label_351:
	cmp	r8, 0xef53
	je	.label_444
	cmp	r8, 0xf15f
	jne	.label_139
	mov	eax, OFFSET FLAT:label_453
	jmp	.label_148
.label_368:
	mov	eax, 0xbacbacbc
	cmp	r8, rax
	je	.label_457
	mov	eax, 0xbeefdead
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_470
	jmp	.label_148
.label_389:
	cmp	r8, 0x5346544e
	je	.label_482
	cmp	r8, 0x534f434b
	jne	.label_139
	mov	eax, OFFSET FLAT:label_478
	jmp	.label_148
.label_405:
	cmp	r8, 0x794c7630
	je	.label_481
	cmp	r8, 0x7c7c6673
	jne	.label_139
	mov	eax, OFFSET FLAT:label_488
	jmp	.label_148
.label_422:
	cmp	r8, 0x9fa2
	je	.label_518
	cmp	r8, 0xadf5
	jne	.label_139
	mov	eax, OFFSET FLAT:label_496
	jmp	.label_148
.label_441:
	cmp	r8, 0x64626720
	je	.label_500
	cmp	r8, 0x64646178
	jne	.label_139
	mov	eax, OFFSET FLAT:label_510
	jmp	.label_148
.label_474:
	mov	eax, 0xfe534d42
	cmp	r8, rax
	je	.label_516
	mov	eax, 0xff534d42
	cmp	r8, rax
	jne	.label_139
	mov	eax, OFFSET FLAT:label_521
	jmp	.label_148
.label_197:
	mov	eax, OFFSET FLAT:label_524
	jmp	.label_148
.label_138:
	mov	eax, OFFSET FLAT:label_527
	jmp	.label_148
.label_199:
	mov	eax, OFFSET FLAT:label_459
	jmp	.label_148
.label_297:
	cmp	r8, 0x1cd1
	jne	.label_139
	mov	eax, OFFSET FLAT:label_147
	jmp	.label_148
.label_428:
	mov	eax, OFFSET FLAT:label_152
	jmp	.label_148
.label_434:
	mov	eax, OFFSET FLAT:label_154
	jmp	.label_148
.label_330:
	mov	eax, OFFSET FLAT:label_160
	jmp	.label_148
.label_1903:
	mov	eax, OFFSET FLAT:label_164
	jmp	.label_148
.label_1904:
	mov	eax, OFFSET FLAT:label_343
	jmp	.label_148
.label_1905:
	mov	eax, OFFSET FLAT:label_228
	jmp	.label_148
.label_342:
	mov	eax, OFFSET FLAT:label_357
	jmp	.label_148
.label_369:
	mov	eax, OFFSET FLAT:label_183
	jmp	.label_148
.label_398:
	mov	eax, OFFSET FLAT:label_180
	jmp	.label_148
.label_172:
	mov	eax, OFFSET FLAT:label_452
	jmp	.label_148
.label_451:
	mov	eax, OFFSET FLAT:label_191
	jmp	.label_148
.label_171:
	mov	eax, OFFSET FLAT:label_198
	jmp	.label_148
.label_429:
	mov	eax, OFFSET FLAT:label_508
	jmp	.label_148
.label_250:
	mov	eax, OFFSET FLAT:label_207
	jmp	.label_148
.label_272:
	mov	eax, OFFSET FLAT:label_211
	jmp	.label_148
.label_302:
	mov	eax, OFFSET FLAT:label_217
	jmp	.label_148
.label_334:
	mov	eax, OFFSET FLAT:label_222
	jmp	.label_148
.label_355:
	mov	eax, OFFSET FLAT:label_224
	jmp	.label_148
.label_257:
	mov	eax, OFFSET FLAT:label_230
	jmp	.label_148
.label_392:
	mov	eax, OFFSET FLAT:label_232
	jmp	.label_148
.label_410:
	mov	eax, OFFSET FLAT:label_237
	jmp	.label_148
.label_427:
	mov	eax, OFFSET FLAT:label_242
	jmp	.label_148
.label_446:
	mov	eax, OFFSET FLAT:label_176
	jmp	.label_148
.label_476:
	mov	eax, OFFSET FLAT:label_247
	jmp	.label_148
.label_485:
	mov	eax, OFFSET FLAT:label_252
	jmp	.label_148
.label_489:
	mov	eax, OFFSET FLAT:label_255
	jmp	.label_148
.label_497:
	mov	eax, OFFSET FLAT:label_259
	jmp	.label_148
.label_502:
	mov	eax, OFFSET FLAT:label_264
	jmp	.label_148
.label_517:
	mov	eax, OFFSET FLAT:label_267
	jmp	.label_148
.label_519:
	mov	eax, OFFSET FLAT:label_506
	jmp	.label_148
.label_134:
	mov	eax, OFFSET FLAT:label_273
	jmp	.label_148
.label_140:
	mov	eax, OFFSET FLAT:label_277
	jmp	.label_148
.label_155:
	mov	eax, OFFSET FLAT:label_285
	jmp	.label_148
.label_162:
	mov	eax, OFFSET FLAT:label_289
	jmp	.label_148
.label_386:
	mov	eax, OFFSET FLAT:label_295
	jmp	.label_148
.label_483:
	mov	eax, OFFSET FLAT:label_298
	jmp	.label_148
.label_203:
	mov	eax, OFFSET FLAT:label_303
	jmp	.label_148
.label_281:
	mov	eax, OFFSET FLAT:label_309
	jmp	.label_148
.label_225:
	mov	eax, OFFSET FLAT:label_315
	jmp	.label_148
.label_253:
	mov	eax, OFFSET FLAT:label_319
	jmp	.label_148
.label_268:
	mov	eax, OFFSET FLAT:label_326
	jmp	.label_148
.label_283:
	mov	eax, OFFSET FLAT:label_484
	jmp	.label_148
.label_300:
	mov	eax, OFFSET FLAT:label_332
	jmp	.label_148
.label_318:
	mov	eax, OFFSET FLAT:label_340
	jmp	.label_148
.label_336:
	mov	eax, OFFSET FLAT:label_473
	jmp	.label_148
.label_353:
	mov	eax, OFFSET FLAT:label_348
	jmp	.label_148
.label_365:
	mov	eax, OFFSET FLAT:label_352
	jmp	.label_148
.label_378:
	mov	eax, OFFSET FLAT:label_523
	jmp	.label_148
.label_391:
	mov	eax, OFFSET FLAT:label_358
	jmp	.label_148
.label_403:
	mov	eax, OFFSET FLAT:label_174
	jmp	.label_148
.label_487:
	mov	eax, OFFSET FLAT:label_205
	jmp	.label_148
.label_430:
	mov	eax, OFFSET FLAT:label_370
	jmp	.label_148
.label_444:
	mov	eax, OFFSET FLAT:label_372
	jmp	.label_148
.label_457:
	mov	eax, OFFSET FLAT:label_382
	jmp	.label_148
.label_482:
	mov	eax, OFFSET FLAT:label_376
	jmp	.label_148
.label_481:
	mov	eax, OFFSET FLAT:label_299
	jmp	.label_148
.label_518:
	mov	eax, OFFSET FLAT:label_322
	jmp	.label_148
.label_500:
	mov	eax, OFFSET FLAT:label_507
	jmp	.label_148
.label_516:
	mov	eax, OFFSET FLAT:label_388
	jmp	.label_148
.label_460:
	cmp	r8, 0x12fd16d
	jne	.label_139
	mov	eax, OFFSET FLAT:label_394
	jmp	.label_148
.label_139:
	mov	eax, OFFSET FLAT:human_fstype.buf
	mov	qword ptr [rsp], rax
	mov	edi, OFFSET FLAT:human_fstype.buf
	mov	esi, 1
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:label_397
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_308
.label_1941:
	mov	eax, OFFSET FLAT:label_505
	jmp	.label_148
.label_1942:
	mov	eax, OFFSET FLAT:label_411
	jmp	.label_148
.label_1943:
	mov	eax, OFFSET FLAT:label_433
.label_148:
	mov	qword ptr [rsp], rax
.label_308:
	lea	r13, [rbx + 1]
	mov	r12, rbx
	lea	r14, [rbx + rbp]
	mov	r15, rbp
	cmp	rbp, 2
	jl	.label_395
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_454:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_438
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_374
	movabs	rcx, 0x200000000001
	and	rax, rcx
	je	.label_374
	mov	byte ptr [r13], bl
	inc	r13
.label_374:
	inc	rbp
	cmp	rbp, r14
	jb	.label_454
	jmp	.label_438
.label_395:
	mov	rbp, r13
.label_438:
	cmp	rbp, r14
	jae	.label_371
	mov	rax, r15
	sub	rax, rbp
	mov	rsi, r12
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_464
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_464
	lea	rdx, [rsi + r15 - 1]
	cmp	r13, rdx
	ja	.label_499
	dec	r15
	sub	r15, rbp
	add	r15, rsi
	add	r15, r13
	cmp	rbp, r15
	ja	.label_499
.label_464:
	mov	rdi, r13
	mov	rdx, qword ptr [rsp]
	nop	
.label_163:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r14, rbp
	jne	.label_163
.label_170:
	add	r13, rax
	jmp	.label_223
.label_371:
	mov	rsi, r12
	mov	rdx, qword ptr [rsp]
.label_223:
	mov	word ptr [r13], 0x73
.label_194:
	mov	edi, 1
	xor	eax, eax
.label_262:
	call	__printf_chk
.label_181:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_499:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_278
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_479:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_479
.label_278:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp]
	je	.label_401
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_282:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_282
.label_401:
	cmp	rax, r8
	mov	rsi, r12
	je	.label_170
	lea	rdi, [r13 + r8]
	add	rbp, r8
	jmp	.label_163
.label_447:
	mov	esi, 0x3f
	call	__overflow
	jmp	.label_181
	nop	
	.section	.text
	.align	32
	#Procedure 0x405080

	.globl print_stat
	.type print_stat, @function
print_stat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r9
	mov	r12, r8
	mov	rbp, rsi
	mov	rbx, rdi
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_561
	movabs	r15, 0x1208000000001
	movabs	r14, 0x1200800000001
	movabs	rax, 0x200000000001
	mov	qword ptr [rsp + 0x10], rbx
	jmp	qword ptr [(rdx * 8) + label_569]
.label_1946:
	mov	r12, rax
	mov	esi, OFFSET FLAT:human_access.modebuf
	mov	rdi, r13
	call	filemodestring
	mov	byte ptr [rip + label_582],  0
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_583
	mov	rbp, r15
	nop	word ptr cs:[rax + rax]
.label_602:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_596
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_598
	and	rax, r12
	je	.label_598
	mov	byte ptr [r15], bl
	inc	r15
.label_598:
	inc	rbp
	cmp	rbp, r14
	jb	.label_602
	jmp	.label_596
.label_1947:
	lea	r12, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	r13, rbp
	cmp	rbp, 2
	jl	.label_605
	mov	rbp, r12
	nop	
.label_619:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_595
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_614
	and	rax, r15
	je	.label_614
	mov	byte ptr [r12], bl
	inc	r12
.label_614:
	inc	rbp
	cmp	rbp, r14
	jb	.label_619
	jmp	.label_595
.label_1948:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_623
	mov	edx, 5
	call	dcgettext
	mov	r14, rbp
	mov	rbp, rbx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	word ptr [rbp + r14], 0x73
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_633
	xor	eax, eax
	mov	rsi, rbp
	call	__printf_chk
	mov	bl, 1
	jmp	.label_637
.label_1949:
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r15, rbp
	cmp	rbp, 2
	jl	.label_638
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_661:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_654
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_656
	and	rax, r14
	je	.label_656
	mov	byte ptr [r13], bl
	inc	r13
.label_656:
	inc	rbp
	cmp	rbp, r12
	jb	.label_661
	jmp	.label_654
.label_561:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_662
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_572
.label_1950:
	mov	r14, rax
	mov	rdi, r13
	call	file_type
	mov	qword ptr [rsp + 8], rax
	lea	r12, [rbx + 1]
	lea	r15, [rbx + rbp]
	mov	r13, rbp
	cmp	rbp, 2
	jl	.label_671
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_688:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_681
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_651
	and	rax, r14
	je	.label_651
	mov	byte ptr [r12], bl
	inc	r12
.label_651:
	inc	rbp
	cmp	rbp, r15
	jb	.label_688
	jmp	.label_681
.label_1951:
	mov	r12, rax
	mov	edi, dword ptr [r13 + 0x20]
	call	getgrgid
	mov	ecx, OFFSET FLAT:label_696
	test	rax, rax
	je	.label_697
	mov	rcx, qword ptr [rax]
.label_697:
	mov	qword ptr [rsp + 8], rcx
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	r13, rbp
	cmp	rbp, 2
	jl	.label_699
	mov	rbp, r15
	nop	dword ptr [rax]
.label_712:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_709
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_710
	and	rax, r12
	je	.label_710
	mov	byte ptr [r15], bl
	inc	r15
.label_710:
	inc	rbp
	cmp	rbp, r14
	jb	.label_712
	jmp	.label_709
.label_1952:
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r12
	call	quotearg_style
	mov	qword ptr [rsp + 0x18], rax
	lea	rax, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	mov	rbp, rax
	mov	qword ptr [rsp + 0x20], rax
	mov	r15, rax
	jl	.label_562
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, rax
	mov	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_636:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_562
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_733
	movabs	rcx, 0x200000000001
	and	rax, rcx
	je	.label_733
	mov	byte ptr [r15], bl
	inc	r15
.label_733:
	inc	rbp
	cmp	rbp, r14
	jb	.label_636
.label_562:
	cmp	rbp, r14
	jae	.label_741
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_649
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_649
	mov	rdi, qword ptr [rsp + 8]
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	ja	.label_744
	lea	rdx, [rdi - 1]
	sub	rdx, rbp
	add	rdx, rsi
	add	rdx, r15
	cmp	rbp, rdx
	ja	.label_744
.label_649:
	mov	rdx, r15
	nop	word ptr [rax + rax]
.label_751:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_751
.label_801:
	add	r15, rax
.label_741:
	mov	word ptr [r15], 0x73
	xor	ebx, ebx
	mov	edi, 1
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	call	__printf_chk
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	cmp	eax, 0xa000
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_637
	mov	rsi, qword ptr [r13 + 0x30]
	mov	rdi, r12
	call	areadlink_with_size
	mov	r13, rax
	test	r13, r13
	je	.label_763
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_592
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r13
	call	quotearg_style
	mov	r12, rax
	cmp	rbp, 2
	jl	.label_839
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, r15
.label_782:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_772
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_775
	movabs	rcx, 0x200000000001
	and	rax, rcx
	je	.label_775
	mov	byte ptr [r15], bl
	inc	r15
.label_775:
	inc	rbp
	cmp	rbp, r14
	jb	.label_782
	jmp	.label_772
.label_1953:
	mov	r12, qword ptr [r13 + 0x28]
	movzx	eax, r12b
	mov	qword ptr [rsp + 0x18], rax
	shr	r12, 0xc
	and	r12d, 0xffffff00
	lea	r13, [rbx + 1]
	lea	r15, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_783
	mov	rbp, r13
	nop	dword ptr [rax]
.label_803:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_795
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_693
	and	rax, r14
	je	.label_693
	mov	byte ptr [r13], bl
	inc	r13
.label_693:
	inc	rbp
	cmp	rbp, r15
	jb	.label_803
	jmp	.label_795
.label_1954:
	mov	r12, rax
	mov	edi, dword ptr [r13 + 0x1c]
	call	getpwuid
	mov	ecx, OFFSET FLAT:label_696
	test	rax, rax
	je	.label_746
	mov	rcx, qword ptr [rax]
.label_746:
	mov	qword ptr [rsp + 8], rcx
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	r13, rbp
	cmp	rbp, 2
	jl	.label_756
	mov	rbp, r15
	nop	dword ptr [rax]
.label_825:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_816
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_820
	and	rax, r12
	je	.label_820
	mov	byte ptr [r15], bl
	inc	r15
.label_820:
	inc	rbp
	cmp	rbp, r14
	jb	.label_825
	jmp	.label_816
.label_1710:
	mov	rdi, rbx
	xor	ebx, ebx
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbp
	call	out_epoch_sec
	jmp	.label_637
.label_1711:
	mov	rdx, qword ptr [r13 + 0x48]
	mov	rcx, qword ptr [r13 + 0x50]
	jmp	.label_831
.label_1712:
	mov	rdx, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [r13 + 0x60]
	jmp	.label_831
.label_1713:
	mov	rdx, qword ptr [r13 + 0x68]
	mov	rcx, qword ptr [r13 + 0x70]
.label_831:
	mov	rdi, rbx
	mov	rsi, rbp
	call	out_epoch_sec
.label_572:
	xor	ebx, ebx
	jmp	.label_637
.label_1714:
	mov	eax, dword ptr [r13 + 0x18]
	and	eax, 0xfff
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r15, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_837
	mov	rbp, r13
.label_851:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_845
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_667
	and	rax, r14
	je	.label_667
	mov	byte ptr [r13], bl
	inc	r13
.label_667:
	inc	rbp
	cmp	rbp, r15
	jb	.label_851
	jmp	.label_845
.label_1715:
	mov	rax, qword ptr [r13 + 0x40]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r14, rbp
	cmp	rbp, 2
	jl	.label_853
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_867:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_861
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_865
	and	rax, r15
	je	.label_865
	mov	byte ptr [r13], bl
	inc	r13
.label_865:
	inc	rbp
	cmp	rbp, r12
	jb	.label_867
	jmp	.label_861
.label_1716:
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r14, rbp
	cmp	rbp, 2
	jl	.label_799
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_532:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_536
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_877
	and	rax, r15
	je	.label_877
	mov	byte ptr [r13], bl
	inc	r13
.label_877:
	inc	rbp
	cmp	rbp, r12
	jb	.label_532
	jmp	.label_536
.label_1717:
	mov	eax, dword ptr [r13 + 0x18]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r15, rbp
	cmp	rbp, 2
	jl	.label_539
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_559:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_552
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_554
	and	rax, r14
	je	.label_554
	mov	byte ptr [r13], bl
	inc	r13
.label_554:
	inc	rbp
	cmp	rbp, r12
	jb	.label_559
	jmp	.label_552
.label_1718:
	mov	eax, dword ptr [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r14, rbp
	cmp	rbp, 2
	jl	.label_563
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_586:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_575
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_578
	and	rax, r15
	je	.label_578
	mov	byte ptr [r13], bl
	inc	r13
.label_578:
	inc	rbp
	cmp	rbp, r12
	jb	.label_586
	jmp	.label_575
.label_1719:
	mov	rax, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r14, rbp
	cmp	rbp, 2
	jl	.label_590
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_606:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_600
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_601
	and	rax, r15
	je	.label_601
	mov	byte ptr [r13], bl
	inc	r13
.label_601:
	inc	rbp
	cmp	rbp, r12
	jb	.label_606
	jmp	.label_600
.label_1720:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r14, rbp
	cmp	rbp, 2
	jl	.label_607
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_625:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_618
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_621
	and	rax, r15
	je	.label_621
	mov	byte ptr [r13], bl
	inc	r13
.label_621:
	inc	rbp
	cmp	rbp, r12
	jb	.label_625
	jmp	.label_618
.label_1721:
	mov	r14, rax
	mov	qword ptr [rsp + 8], rbp
	mov	al, byte ptr [rip + follow_links]
	test	al, al
	jne	.label_683
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	cmp	eax, 0xa000
	je	.label_639
.label_683:
	mov	rdi, r12
	call	canonicalize_file_name
	mov	rbx, rax
	test	rbx, rbx
	je	.label_635
	mov	rdi, rbx
	call	find_bind_mount
	mov	rbp, rax
	mov	rdi, rbx
	call	free
	xor	ecx, ecx
	test	rbp, rbp
	je	.label_639
	xor	eax, eax
	jmp	.label_634
.label_1722:
	mov	r13, rax
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_644
	mov	rbp, r15
	nop	word ptr cs:[rax + rax]
.label_663:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_658
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_660
	and	rax, r13
	je	.label_660
	mov	byte ptr [r15], bl
	inc	r15
.label_660:
	inc	rbp
	cmp	rbp, r14
	jb	.label_663
	jmp	.label_658
.label_1723:
	mov	rax, qword ptr [r13 + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	r14d, 0x200
	cmovb	r14, rax
	test	rax, rax
	cmovle	r14, rcx
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_665
	mov	rbp, r13
	nop	word ptr [rax + rax]
.label_626:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_640
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_555
	and	rax, r15
	je	.label_555
	mov	byte ptr [r13], bl
	inc	r13
.label_555:
	inc	rbp
	cmp	rbp, r12
	jb	.label_626
	jmp	.label_640
.label_1724:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 8], rax
	lea	r12, [rbx + 1]
	lea	r15, [rbx + rbp]
	mov	r14, rbp
	cmp	rbp, 2
	jl	.label_700
	movabs	r13, 0x1288100000001
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_713:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_715
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_776
	and	rax, r13
	je	.label_776
	mov	byte ptr [r12], bl
	inc	r12
.label_776:
	inc	rbp
	cmp	rbp, r15
	jb	.label_713
	jmp	.label_715
.label_1725:
	mov	r12, qword ptr [r13 + 0x28]
	mov	eax, r12d
	shr	eax, 8
	and	eax, 0xfff
	mov	qword ptr [rsp + 0x18], rax
	shr	r12, 0x20
	and	r12d, 0xfffff000
	lea	r13, [rbx + 1]
	lea	r15, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_716
	mov	rbp, r13
.label_736:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_729
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_731
	and	rax, r14
	je	.label_731
	mov	byte ptr [r13], bl
	inc	r13
.label_731:
	inc	rbp
	cmp	rbp, r15
	jb	.label_736
	jmp	.label_729
.label_1726:
	mov	eax, dword ptr [r13 + 0x1c]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rbx + 1]
	lea	r12, [rbx + rbp]
	mov	r14, rbp
	cmp	rbp, 2
	jl	.label_738
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_750:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_747
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_701
	and	rax, r15
	je	.label_701
	mov	byte ptr [r13], bl
	inc	r13
.label_701:
	inc	rbp
	cmp	rbp, r12
	jb	.label_750
	jmp	.label_747
.label_1727:
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	r12, rbp
	cmp	rbp, 2
	jl	.label_752
	mov	rbp, r15
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_766:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_760
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_761
	and	rax, r13
	je	.label_761
	mov	byte ptr [r15], bl
	inc	r15
.label_761:
	inc	rbp
	cmp	rbp, r14
	jb	.label_766
	jmp	.label_760
.label_1728:
	mov	r12, rax
	mov	rdi, qword ptr [r13 + 0x48]
	mov	rsi, qword ptr [r13 + 0x50]
	call	human_time
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_769
	mov	rbp, r15
.label_780:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_774
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_777
	and	rax, r12
	je	.label_777
	mov	byte ptr [r15], bl
	inc	r15
.label_777:
	inc	rbp
	cmp	rbp, r14
	jb	.label_780
	jmp	.label_774
.label_1729:
	mov	r12, rax
	mov	rdi, qword ptr [r13 + 0x58]
	mov	rsi, qword ptr [r13 + 0x60]
	call	human_time
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_787
	mov	rbp, r15
.label_798:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_711
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_794
	and	rax, r12
	je	.label_794
	mov	byte ptr [r15], bl
	inc	r15
.label_794:
	inc	rbp
	cmp	rbp, r14
	jb	.label_798
	jmp	.label_711
.label_1730:
	mov	r12, rax
	mov	rdi, qword ptr [r13 + 0x68]
	mov	rsi, qword ptr [r13 + 0x70]
	call	human_time
	lea	r15, [rbx + 1]
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 8], rbp
	cmp	rbp, 2
	jl	.label_804
	mov	rbp, r15
.label_817:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_811
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_813
	and	rax, r12
	je	.label_813
	mov	byte ptr [r15], bl
	inc	r15
.label_813:
	inc	rbp
	cmp	rbp, r14
	jb	.label_817
	jmp	.label_811
.label_583:
	mov	rbp, r15
.label_596:
	cmp	rbp, r14
	jae	.label_822
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_824
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_824
	mov	r12, qword ptr [rsp + 8]
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_829
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_829
.label_824:
	mov	rdx, r15
	nop	dword ptr [rax + rax]
.label_793:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_793
.label_792:
	add	r15, rax
.label_822:
	mov	word ptr [r15], 0x73
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, OFFSET FLAT:human_access.modebuf
	jmp	.label_543
.label_605:
	mov	rbp, r12
.label_595:
	cmp	rbp, r14
	jae	.label_842
	mov	rax, r13
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_844
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_844
	lea	rdx, [rsi + r13 - 1]
	cmp	r12, rdx
	ja	.label_847
	dec	r13
	sub	r13, rbp
	add	r13, rsi
	add	r13, r12
	cmp	rbp, r13
	ja	.label_847
.label_844:
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_708:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_708
.label_827:
	add	r12, rax
.label_842:
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x756c
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, 0x200
	jmp	.label_543
.label_638:
	mov	rbp, r13
.label_654:
	cmp	rbp, r12
	jae	.label_691
	mov	rax, r15
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_864
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_864
	lea	rdx, [rsi + r15 - 1]
	cmp	r13, rdx
	ja	.label_868
	dec	r15
	sub	r15, rbp
	add	r15, rsi
	add	r15, r13
	cmp	rbp, r15
	ja	.label_868
.label_864:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_840:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_840
	jmp	.label_687
.label_671:
	mov	rbp, r12
.label_681:
	cmp	rbp, r15
	jae	.label_862
	mov	rax, r13
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_531
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_531
	lea	rdx, [rsi + r13 - 1]
	cmp	r12, rdx
	ja	.label_534
	dec	r13
	sub	r13, rbp
	add	r13, rsi
	add	r13, r12
	cmp	rbp, r13
	ja	.label_534
.label_531:
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_544:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r15, rbp
	jne	.label_544
.label_540:
	add	r12, rax
	jmp	.label_550
.label_699:
	mov	rbp, r15
.label_709:
	cmp	rbp, r14
	jae	.label_553
	mov	rax, r13
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_556
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_556
	lea	rdx, [rsi + r13 - 1]
	cmp	r15, rdx
	ja	.label_565
	dec	r13
	sub	r13, rbp
	add	r13, rsi
	add	r13, r15
	cmp	rbp, r13
	ja	.label_565
.label_556:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_588:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r14, rbp
	jne	.label_588
	jmp	.label_573
.label_783:
	mov	rbp, r13
.label_795:
	add	r12, qword ptr [rsp + 0x18]
	cmp	rbp, r15
	jae	.label_576
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_580
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_580
	mov	rdi, qword ptr [rsp + 8]
	lea	rdx, [rsi + rdi - 1]
	cmp	r13, rdx
	ja	.label_589
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r13
	cmp	rbp, rdi
	ja	.label_589
.label_580:
	mov	rdx, r13
	nop	dword ptr [rax]
.label_594:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r15, rbp
	jne	.label_594
.label_802:
	add	r13, rax
.label_576:
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x786c
	jmp	.label_599
.label_756:
	mov	rbp, r15
.label_816:
	cmp	rbp, r14
	jae	.label_553
	mov	rax, r13
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_604
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_604
	lea	rdx, [rsi + r13 - 1]
	cmp	r15, rdx
	ja	.label_608
	dec	r13
	sub	r13, rbp
	add	r13, rsi
	add	r13, r15
	cmp	rbp, r13
	ja	.label_608
.label_604:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_617:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r14, rbp
	jne	.label_617
.label_573:
	add	r15, rax
	mov	word ptr [r15], 0x73
	jmp	.label_622
.label_553:
	mov	rdx, qword ptr [rsp + 8]
	mov	word ptr [r15], 0x73
	jmp	.label_622
.label_837:
	mov	rbp, r13
.label_845:
	cmp	rbp, r15
	jae	.label_564
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_628
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_628
	lea	rdx, [rsi + r12 - 1]
	cmp	r13, rdx
	ja	.label_632
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r13
	cmp	rbp, r12
	ja	.label_632
.label_628:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_642:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r15, rbp
	jne	.label_642
.label_698:
	add	r13, rax
	jmp	.label_645
.label_853:
	mov	rbp, r13
.label_861:
	cmp	rbp, r12
	jae	.label_668
	mov	rax, r14
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_650
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_650
	lea	rdx, [rsi + r14 - 1]
	cmp	r13, rdx
	ja	.label_657
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r13
	cmp	rbp, r14
	ja	.label_657
.label_650:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_566:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_566
	jmp	.label_549
.label_799:
	mov	rbp, r13
.label_536:
	cmp	rbp, r12
	jae	.label_668
	mov	rax, r14
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_670
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_670
	lea	rdx, [rsi + r14 - 1]
	cmp	r13, rdx
	ja	.label_674
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r13
	cmp	rbp, r14
	ja	.label_674
.label_670:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_685:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_685
	jmp	.label_549
.label_668:
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_630
.label_539:
	mov	rbp, r13
.label_552:
	cmp	rbp, r12
	jae	.label_691
	mov	rax, r15
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_692
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_692
	lea	rdx, [rsi + r15 - 1]
	cmp	r13, rdx
	ja	.label_704
	dec	r15
	sub	r15, rbp
	add	r15, rsi
	add	r15, r13
	cmp	rbp, r15
	ja	.label_704
.label_692:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
.label_707:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_707
	jmp	.label_687
.label_691:
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_613
.label_563:
	mov	rbp, r13
.label_575:
	cmp	rbp, r12
	jae	.label_732
	mov	rax, r14
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_714
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_714
	lea	rdx, [rsi + r14 - 1]
	cmp	r13, rdx
	ja	.label_721
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r13
	cmp	rbp, r14
	ja	.label_721
.label_714:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_530:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_530
	jmp	.label_549
.label_590:
	mov	rbp, r13
.label_600:
	cmp	rbp, r12
	jae	.label_732
	mov	rax, r14
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_734
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_734
	lea	rdx, [rsi + r14 - 1]
	cmp	r13, rdx
	ja	.label_739
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r13
	cmp	rbp, r14
	ja	.label_739
.label_734:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_745:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_745
	jmp	.label_549
.label_607:
	mov	rbp, r13
.label_618:
	cmp	rbp, r12
	jae	.label_732
	mov	rax, r14
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_749
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_749
	lea	rdx, [rsi + r14 - 1]
	cmp	r13, rdx
	ja	.label_754
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r13
	cmp	rbp, r14
	ja	.label_754
.label_749:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_538:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_538
	jmp	.label_549
.label_732:
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_630
.label_644:
	mov	rbp, r15
.label_658:
	cmp	rbp, r14
	jae	.label_764
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_765
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_765
	mov	r13, qword ptr [rsp + 8]
	lea	rdx, [rsi + r13 - 1]
	cmp	r15, rdx
	ja	.label_770
	dec	r13
	sub	r13, rbp
	add	r13, rsi
	add	r13, r15
	cmp	rbp, r13
	ja	.label_770
.label_765:
	mov	rdx, r15
	nop	word ptr cs:[rax + rax]
.label_581:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_581
.label_579:
	add	r15, rax
.label_764:
	mov	word ptr [r15], 0x73
.label_599:
	xor	ebx, ebx
	mov	edi, 1
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	jmp	.label_781
.label_665:
	mov	rbp, r13
.label_640:
	cmp	rbp, r12
	jae	.label_785
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_788
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_788
	mov	rdi, qword ptr [rsp + 8]
	lea	rdx, [rsi + rdi - 1]
	cmp	r13, rdx
	ja	.label_648
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r13
	cmp	rbp, rdi
	ja	.label_648
.label_788:
	mov	rdx, r13
	nop	word ptr cs:[rax + rax]
.label_800:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r12, rbp
	jne	.label_800
.label_616:
	add	r13, rax
.label_785:
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x756c
	xor	ebx, ebx
	mov	edi, 1
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	jmp	.label_781
.label_700:
	mov	rbp, r12
.label_715:
	cmp	rbp, r15
	jae	.label_807
	mov	rax, r14
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_809
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_809
	lea	rdx, [rsi + r14 - 1]
	cmp	r12, rdx
	ja	.label_815
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r12
	cmp	rbp, r14
	ja	.label_815
.label_809:
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_655:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r15, rbp
	jne	.label_655
.label_653:
	add	r12, rax
	jmp	.label_830
.label_716:
	mov	rbp, r13
.label_729:
	mov	rdx, qword ptr [rsp + 0x18]
	or	rdx, r12
	cmp	rbp, r15
	jae	.label_613
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_560
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_560
	mov	rdi, qword ptr [rsp + 8]
	lea	rcx, [rsi + rdi - 1]
	cmp	r13, rcx
	ja	.label_836
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r13
	cmp	rbp, rdi
	ja	.label_836
.label_560:
	mov	rsi, r13
	nop	word ptr cs:[rax + rax]
.label_717:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r15, rbp
	jne	.label_717
.label_687:
	add	r13, rax
.label_613:
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x786c
	jmp	.label_622
.label_738:
	mov	rbp, r13
.label_747:
	cmp	rbp, r12
	jae	.label_676
	mov	rax, r14
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_852
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_852
	lea	rdx, [rsi + r14 - 1]
	cmp	r13, rdx
	ja	.label_857
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r13
	cmp	rbp, r14
	ja	.label_857
.label_852:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_728:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r12, rbp
	jne	.label_728
.label_549:
	add	r13, rax
.label_630:
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x756c
.label_622:
	xor	ebx, ebx
	mov	edi, 1
.label_543:
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 0x10]
.label_781:
	call	__printf_chk
.label_637:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_752:
	mov	rbp, r15
.label_760:
	cmp	rbp, r14
	jae	.label_871
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_872
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_872
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_874
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_874
.label_872:
	mov	rdx, r15
	nop	
.label_535:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_535
.label_755:
	add	r15, rax
.label_871:
	mov	word ptr [r15], 0x73
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_542
	jmp	.label_543
.label_769:
	mov	rbp, r15
.label_774:
	cmp	rbp, r14
	jae	.label_546
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_548
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_548
	mov	r12, qword ptr [rsp + 8]
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_557
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_557
.label_548:
	mov	rdx, r15
	nop	word ptr cs:[rax + rax]
.label_568:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_568
	jmp	.label_570
.label_787:
	mov	rbp, r15
.label_711:
	cmp	rbp, r14
	jae	.label_546
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_574
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_574
	mov	r12, qword ptr [rsp + 8]
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_584
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_584
.label_574:
	mov	rdx, r15
	nop	dword ptr [rax]
.label_689:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_689
	jmp	.label_570
.label_804:
	mov	rbp, r15
.label_811:
	cmp	rbp, r14
	jae	.label_546
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_597
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_597
	mov	r12, qword ptr [rsp + 8]
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_603
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_603
.label_597:
	mov	rdx, r15
	nop	word ptr cs:[rax + rax]
.label_611:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_611
.label_570:
	add	r15, rax
.label_546:
	mov	word ptr [r15], 0x73
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, OFFSET FLAT:human_time.str
	jmp	.label_543
.label_862:
	mov	rdx, qword ptr [rsp + 8]
.label_550:
	mov	word ptr [r12], 0x73
	jmp	.label_622
.label_564:
	mov	rdx, qword ptr [rsp + 8]
.label_645:
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x6f6c
	jmp	.label_622
.label_807:
	mov	rdx, qword ptr [rsp + 8]
.label_830:
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x646c
	jmp	.label_622
.label_676:
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_630
.label_639:
	mov	rdi, r12
	mov	rsi, r13
	call	find_mount_point
	mov	rbx, rax
	mov	al, 1
	xor	ebp, ebp
	test	rbx, rbx
	mov	ecx, 0
	je	.label_634
	mov	rdi, rbx
	call	find_bind_mount
	mov	rbp, rax
	xor	eax, eax
	mov	rcx, rbx
	jmp	.label_634
.label_635:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_641
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	mov	al, 1
	xor	ecx, ecx
.label_634:
	mov	qword ptr [rsp + 0x18], rax
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:label_633
	mov	qword ptr [rsp + 0x20], rcx
	cmovne	r12, rcx
	test	rbp, rbp
	cmovne	r12, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	r13, [rax + 1]
	mov	rcx, qword ptr [rsp + 8]
	lea	r15, [rax + rcx]
	mov	rbp, r13
	cmp	rcx, 2
	jl	.label_652
	nop	dword ptr [rax + rax]
.label_673:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_652
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_669
	and	rax, r14
	je	.label_669
	mov	byte ptr [r13], bl
	inc	r13
.label_669:
	inc	rbp
	cmp	rbp, r15
	jb	.label_673
.label_652:
	cmp	rbp, r15
	jae	.label_675
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_677
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_677
	mov	r14, qword ptr [rsp + 8]
	lea	rdx, [rsi + r14 - 1]
	cmp	r13, rdx
	ja	.label_680
	dec	r14
	sub	r14, rbp
	add	r14, rsi
	add	r14, r13
	cmp	rbp, r14
	ja	.label_680
.label_677:
	mov	rdx, r13
	nop	dword ptr [rax]
.label_690:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r15, rbp
	jne	.label_690
.label_821:
	add	r13, rax
	jmp	.label_695
.label_675:
	mov	rsi, qword ptr [rsp + 0x10]
.label_695:
	mov	word ptr [r13], 0x73
	mov	edi, 1
	xor	eax, eax
	mov	rdx, r12
	call	__printf_chk
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	setne	bl
	jmp	.label_637
.label_763:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_706
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	bl, 1
	jmp	.label_637
.label_839:
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, r15
.label_772:
	cmp	rbp, r14
	jae	.label_719
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_833
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_833
	mov	rdi, qword ptr [rsp + 8]
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	ja	.label_726
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r15
	cmp	rbp, rdi
	ja	.label_726
.label_833:
	mov	rdx, r15
.label_558:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_558
.label_567:
	add	r15, rax
.label_719:
	mov	word ptr [r15], 0x73
	xor	ebx, ebx
	mov	edi, 1
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	__printf_chk
	mov	rdi, r13
	call	free
	jmp	.label_637
.label_744:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_743
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_672:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_672
.label_743:
	test	rdx, rdx
	je	.label_757
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_759:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_759
.label_757:
	cmp	rax, rcx
	je	.label_801
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_751
.label_829:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_767
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_771:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_771
.label_767:
	test	rdx, rdx
	je	.label_855
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_631:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_631
.label_855:
	cmp	rax, rcx
	je	.label_792
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_793
.label_847:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_796
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_723:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r12 + rsi], xmm0
	movups	xmmword ptr [r12 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r12 + rsi + 0x20], xmm0
	movups	xmmword ptr [r12 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r12 + rsi + 0x40], xmm0
	movups	xmmword ptr [r12 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r12 + rsi + 0x60], xmm0
	movups	xmmword ptr [r12 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_723
.label_796:
	test	rdx, rdx
	je	.label_819
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r12 + rsi + 0x10]
	neg	rdx
.label_823:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_823
.label_819:
	cmp	rax, rcx
	je	.label_827
	lea	rdx, [r12 + rcx]
	add	rbp, rcx
	jmp	.label_708
.label_868:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_832
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_835:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_835
.label_832:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_849
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_854:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_854
.label_849:
	cmp	rax, r8
	je	.label_687
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_840
.label_534:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_860
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_866:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r12 + rsi], xmm0
	movups	xmmword ptr [r12 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r12 + rsi + 0x20], xmm0
	movups	xmmword ptr [r12 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r12 + rsi + 0x40], xmm0
	movups	xmmword ptr [r12 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r12 + rsi + 0x60], xmm0
	movups	xmmword ptr [r12 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_866
.label_860:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_876
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r12 + rsi + 0x10]
	neg	rcx
.label_537:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_537
.label_876:
	cmp	rax, r8
	je	.label_540
	lea	rsi, [r12 + r8]
	add	rbp, r8
	jmp	.label_544
.label_565:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_545
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_551:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_551
.label_545:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_740
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_577:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_577
.label_740:
	cmp	rax, r8
	je	.label_573
	lea	rsi, [r15 + r8]
	add	rbp, r8
	jmp	.label_588
.label_589:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_591
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_593:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_593
.label_591:
	test	rdx, rdx
	je	.label_612
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rdx
.label_615:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_615
.label_612:
	cmp	rax, rcx
	je	.label_802
	lea	rdx, [r13 + rcx]
	add	rbp, rcx
	jmp	.label_594
.label_608:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_624
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_629:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_629
.label_624:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_646
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_810:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_810
.label_646:
	cmp	rax, r8
	je	.label_573
	lea	rsi, [r15 + r8]
	add	rbp, r8
	jmp	.label_617
.label_632:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_858
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_666:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_666
.label_858:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_686
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_678:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_678
.label_686:
	cmp	rax, r8
	je	.label_698
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_642
.label_657:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_702
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_705:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_705
.label_702:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_724
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_727:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_727
.label_724:
	cmp	rax, r8
	je	.label_549
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_566
.label_674:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_735
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_742:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_742
.label_735:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_753
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_748:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_748
.label_753:
	cmp	rax, r8
	je	.label_549
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_685
.label_704:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_762
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_768:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_768
.label_762:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_779
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_784:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_784
.label_779:
	cmp	rax, r8
	je	.label_687
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_707
.label_721:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_791
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_797:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_797
.label_791:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_814
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_805:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_805
.label_814:
	cmp	rax, r8
	je	.label_549
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_530
.label_739:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_828
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_834:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_834
.label_828:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_846
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_850:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_850
.label_846:
	cmp	rax, r8
	je	.label_549
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_745
.label_754:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_859
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_863:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_863
.label_859:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_873
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_878:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_878
.label_873:
	cmp	rax, r8
	je	.label_549
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_538
.label_770:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_541
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_547:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_547
.label_541:
	test	rdx, rdx
	je	.label_725
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_571:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_571
.label_725:
	cmp	rax, rcx
	je	.label_579
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_581
.label_648:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_585
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_812:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_812
.label_585:
	test	rdx, rdx
	je	.label_609
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rdx
.label_610:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_610
.label_609:
	cmp	rax, rcx
	je	.label_616
	lea	rdx, [r13 + rcx]
	add	rbp, rcx
	jmp	.label_800
.label_815:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_620
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_627:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r12 + rsi], xmm0
	movups	xmmword ptr [r12 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r12 + rsi + 0x20], xmm0
	movups	xmmword ptr [r12 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r12 + rsi + 0x40], xmm0
	movups	xmmword ptr [r12 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r12 + rsi + 0x60], xmm0
	movups	xmmword ptr [r12 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_627
.label_620:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_643
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r12 + rsi + 0x10]
	neg	rcx
.label_647:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_647
.label_643:
	cmp	rax, r8
	je	.label_653
	lea	rsi, [r12 + r8]
	add	rbp, r8
	jmp	.label_655
.label_836:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_659
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_664:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_664
.label_659:
	test	rcx, rcx
	je	.label_679
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_684:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_684
.label_679:
	cmp	rax, r8
	je	.label_687
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_717
.label_857:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_694
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_703:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_703
.label_694:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_720
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rcx
.label_722:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_722
.label_720:
	cmp	rax, r8
	je	.label_549
	lea	rsi, [r13 + r8]
	add	rbp, r8
	jmp	.label_728
.label_874:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_730
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_737:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_737
.label_730:
	test	rdx, rdx
	je	.label_841
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_718:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_718
.label_841:
	cmp	rax, rcx
	je	.label_755
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_535
.label_557:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_758
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_789:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_789
.label_758:
	test	rdx, rdx
	je	.label_773
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_778:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_778
.label_773:
	cmp	rax, rcx
	je	.label_570
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_568
.label_584:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_786
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_790:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_790
.label_786:
	test	rdx, rdx
	je	.label_806
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_808:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_808
.label_806:
	cmp	rax, rcx
	je	.label_570
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_689
.label_603:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_818
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_826:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_826
.label_818:
	test	rdx, rdx
	je	.label_838
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_843:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_843
.label_838:
	cmp	rax, rcx
	je	.label_570
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_611
.label_680:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_848
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_856:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r13 + rsi], xmm0
	movups	xmmword ptr [r13 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r13 + rsi + 0x20], xmm0
	movups	xmmword ptr [r13 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r13 + rsi + 0x40], xmm0
	movups	xmmword ptr [r13 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r13 + rsi + 0x60], xmm0
	movups	xmmword ptr [r13 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_856
.label_848:
	test	rdx, rdx
	je	.label_869
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r13 + rsi + 0x10]
	neg	rdx
.label_870:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_870
.label_869:
	cmp	rax, rcx
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_821
	lea	rdx, [r13 + rcx]
	add	rbp, rcx
	jmp	.label_690
.label_726:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_875
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_533:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_533
.label_875:
	test	rdx, rdx
	je	.label_587
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rdx
.label_682:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_682
.label_587:
	cmp	rax, rcx
	je	.label_567
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_558
.label_662:
	mov	esi, 0x3f
	call	__overflow
	jmp	.label_572
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080c0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	sub	rsp, 0x60
	mov	rbx, rsi
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rbx
	mov	rdi, qword ptr [rip + human_time.tz]
	test	rdi, rdi
	jne	.label_879
	mov	edi, OFFSET FLAT:label_884
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	rdi, rax
	mov	qword ptr [rip + human_time.tz],  rdi
.label_879:
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x28]
	call	localtime_rz
	test	rax, rax
	je	.label_882
	mov	r8, qword ptr [rip + human_time.tz]
	lea	rcx, [rsp + 0x28]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:label_883
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_881
.label_882:
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	imaxtostr
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:label_880
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_881:
	add	rsp, 0x60
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408170

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	esi, 0x2e
	mov	rdx, r14
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_925
	mov	r12, rbx
	sub	r12, rbp
	mov	byte ptr [rbp + r14], 0
	movsx	eax, byte ptr [rbx + 1]
	add	eax, -0x30
	mov	r15d, 9
	cmp	eax, 9
	ja	.label_929
	lea	rdi, [rbx + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	cmp	rax, 0x7fffffff
	mov	r15d, 0x7fffffff
	cmovle	r15d, eax
	test	r15d, r15d
	je	.label_938
.label_929:
	movsx	eax, byte ptr [rbx - 1]
	add	eax, -0x30
	xor	edi, edi
	cmp	eax, 9
	ja	.label_897
	mov	byte ptr [rbx], 0
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_888:
	movsx	eax, byte ptr [rbx + rbp - 2]
	add	eax, -0x30
	dec	rbp
	cmp	eax, 0xa
	jb	.label_888
	lea	r14, [rbx + rbp]
	xor	r13d, r13d
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r14
	call	strtol
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovle	rcx, rax
	mov	edi, 0x7fffffff
	cmovle	edi, eax
	cmp	edi, 2
	jl	.label_897
	xor	eax, eax
	cmp	byte ptr [rbx + rbp], 0x30
	sete	al
	add	r14, rax
	mov	r12, r14
	sub	r12, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rip + decimal_point_len]
	movsxd	rcx, ecx
	mov	esi, ecx
	sub	esi, edx
	cmp	rcx, rdx
	cmova	r13d, esi
	cmp	r13d, 2
	jl	.label_897
	sub	r13d, r15d
	cmp	r13d, 2
	jl	.label_897
	mov	qword ptr [rsp + 0x28], rdi
	xor	r12d, r12d
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	r14, rcx
	mov	rsi, rcx
	mov	rdi, rsi
	jbe	.label_923
	dec	rax
	sub	rax, rsi
	add	rbx, rax
	lea	rcx, [rbp + rbx + 1]
	xor	eax, eax
	mov	rdx, rsi
	mov	rdi, rsi
	nop	word ptr cs:[rax + rax]
.label_941:
	movzx	ebx, byte ptr [rdx]
	cmp	bl, 0x2d
	jne	.label_914
	mov	al, 1
	jmp	.label_937
	nop	dword ptr [rax]
.label_914:
	mov	byte ptr [rdi], bl
	inc	rdi
.label_937:
	inc	rdx
	dec	rcx
	jne	.label_941
	mov	r12, rdi
	sub	r12, rsi
	xor	ecx, ecx
	test	al, 1
	jne	.label_943
.label_923:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_945
	xor	eax, eax
	mov	r8d, r13d
	call	__sprintf_chk
	movsxd	rcx, eax
.label_943:
	add	r12, rcx
	mov	rdi, qword ptr [rsp + 0x28]
.label_897:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], rdi
	cmp	r15d, 8
	jg	.label_942
	mov	r14, r12
	jmp	.label_900
.label_925:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_907
.label_942:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], 9
	jmp	.label_902
.label_938:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	r14, r12
.label_907:
	xor	r15d, r15d
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x10]
.label_900:
	mov	eax, 9
	mov	ecx, 9
	sub	ecx, r15d
	mov	edi, 1
	cmp	ecx, 7
	ja	.label_912
	mov	edx, r15d
	jmp	.label_917
.label_912:
	mov	r8d, ecx
	and	r8d, 0xfffffff8
	mov	esi, ecx
	and	esi, 0xfffffff8
	mov	edx, r15d
	je	.label_917
	lea	ebx, [rsi - 8]
	mov	edx, ebx
	shr	edx, 3
	lea	edi, [rdx + 1]
	and	edi, 7
	cmp	ebx, 0x38
	jae	.label_926
	movdqa	xmm0, xmmword ptr [rip + label_931]
	movdqa	xmm1, xmm0
	jmp	.label_932
.label_926:
	lea	ebx, [rdi - 1]
	sub	ebx, edx
	movdqa	xmm0, xmmword ptr [rip + label_931]
	movdqa	xmm2, xmmword ptr [rip + label_935]
	movdqa	xmm1, xmm0
	nop	dword ptr [rax]
.label_939:
	pshufd	xmm3, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	add	ebx, 8
	jne	.label_939
.label_932:
	test	edi, edi
	je	.label_890
	neg	edi
	movdqa	xmm2, xmmword ptr [rip + label_892]
	nop	dword ptr [rax]
.label_898:
	pshufd	xmm3, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	inc	edi
	jne	.label_898
.label_890:
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0xe5
	pmuludq	xmm0, xmm1
	pshufd	xmm0, xmm0, 0xe8
	pshufd	xmm1, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	punpckldq	xmm0, xmm1
	movd	edi, xmm0
	cmp	ecx, esi
	je	.label_922
	add	r8d, r15d
	mov	edx, r8d
.label_917:
	sub	eax, edx
	nop	
.label_901:
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	dec	eax
	jne	.label_901
.label_922:
	mov	eax, r15d
	mov	dword ptr [rsp + 0xc], eax
	mov	r12, r14
.label_902:
	movabs	r14, 0x1288100000001
	movsxd	rsi, edi
	mov	rax, r9
	cqo	
	idiv	rsi
	mov	rdi, rax
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r15
	jns	.label_924
	test	r9, r9
	je	.label_924
	mov	eax, 0x3b9aca00
	xor	edx, edx
	idiv	esi
	mov	ecx, eax
	sub	ecx, edi
	mov	rax, r9
	cqo	
	idiv	rsi
	xor	eax, eax
	test	rdx, rdx
	setne	al
	xor	edx, edx
	sub	ecx, eax
	setne	dl
	add	rbp, rdx
	mov	qword ptr [rsp + 0x30], rcx
	jne	.label_893
	mov	rax, qword ptr [rsp + 0x20]
	lea	r15, [rax + 1]
	lea	r13, [rax + r12]
	mov	rbp, r15
	cmp	r12, 2
	jl	.label_906
	nop	word ptr [rax + rax]
.label_927:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_906
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_919
	and	rax, r14
	je	.label_919
	mov	byte ptr [r15], bl
	inc	r15
.label_919:
	inc	rbp
	cmp	rbp, r13
	jb	.label_927
.label_906:
	cmp	rbp, r13
	jae	.label_887
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_933
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_933
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_904
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_904
.label_933:
	mov	rdx, r15
	mov	r14d, dword ptr [rsp + 0xc]
	nop	
.label_885:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r13, rbp
	jne	.label_885
.label_909:
	add	r15, rax
	jmp	.label_889
.label_924:
	mov	qword ptr [rsp + 0x30], rdi
.label_893:
	mov	rax, qword ptr [rsp + 0x20]
	lea	r15, [rax + 1]
	lea	r13, [rax + r12]
	cmp	r12, 2
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, r15
	jl	.label_891
	nop	dword ptr [rax]
.label_934:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_891
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_908
	and	rax, r14
	je	.label_908
	mov	byte ptr [r15], bl
	inc	r15
.label_908:
	inc	rbp
	cmp	rbp, r13
	jb	.label_934
.label_891:
	cmp	rbp, r13
	jae	.label_944
	mov	rax, r12
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_886
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_886
	lea	rdx, [rsi + r12 - 1]
	cmp	r15, rdx
	ja	.label_930
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r15
	cmp	rbp, r12
	ja	.label_930
.label_886:
	mov	rdx, r15
	mov	r14d, dword ptr [rsp + 0xc]
	nop	word ptr [rax + rax]
.label_918:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r13, rbp
	jne	.label_918
.label_915:
	add	r15, rax
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_940
.label_944:
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r14d, dword ptr [rsp + 0xc]
.label_940:
	mov	rbx, qword ptr [rsp + 0x30]
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x646c
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x28]
.label_928:
	test	ebp, ebp
	je	.label_936
	sub	ebp, r14d
	xor	r9d, r9d
	test	eax, eax
	cmovs	eax, r9d
	sub	edx, eax
	jle	.label_894
	mov	rax, qword ptr [rip + decimal_point_len]
	movsxd	rcx, edx
	cmp	rcx, rax
	jbe	.label_894
	sub	edx, r14d
	sub	edx, eax
	mov	r9d, edx
.label_894:
	mov	rdx, qword ptr [rip + decimal_point]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_905
	mov	eax, 0
	mov	ecx, r14d
	mov	r8d, ebx
	push	0
	push	rbp
	call	__printf_chk
	add	rsp, 0x48
	jmp	.label_913
.label_936:
	add	rsp, 0x38
.label_913:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_887:
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r14d, dword ptr [rsp + 0xc]
.label_889:
	mov	dword ptr [r15], 0x66302e
	movsd	xmm0, qword ptr [rip + label_920]
	mov	edi, 1
	mov	al, 1
	call	__printf_chk
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_928
.label_930:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	ecx, ecx
	cmp	rdi, 0x60
	jb	.label_911
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	ecx, ecx
	nop	
.label_896:
	movups	xmm0, xmmword ptr [rbp + rcx]
	movups	xmm1, xmmword ptr [rbp + rcx + 0x10]
	movups	xmmword ptr [r15 + rcx], xmm0
	movups	xmmword ptr [r15 + rcx + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rcx + 0x20]
	movups	xmm1, xmmword ptr [rbp + rcx + 0x30]
	movups	xmmword ptr [r15 + rcx + 0x20], xmm0
	movups	xmmword ptr [r15 + rcx + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rcx + 0x40]
	movups	xmm1, xmmword ptr [rbp + rcx + 0x50]
	movups	xmmword ptr [r15 + rcx + 0x40], xmm0
	movups	xmmword ptr [r15 + rcx + 0x50], xmm1
	movdqu	xmm0, xmmword ptr [rbp + rcx + 0x60]
	movdqu	xmm1, xmmword ptr [rbp + rcx + 0x70]
	movdqu	xmmword ptr [r15 + rcx + 0x60], xmm0
	movdqu	xmmword ptr [r15 + rcx + 0x70], xmm1
	sub	rcx, -0x80
	add	rdi, 4
	jne	.label_896
.label_911:
	test	rdx, rdx
	mov	r14d, dword ptr [rsp + 0xc]
	je	.label_903
	lea	rdi, [rbp + rcx + 0x10]
	lea	rcx, [r15 + rcx + 0x10]
	neg	rdx
	nop	dword ptr [rax]
.label_910:
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	movdqu	xmmword ptr [rcx], xmm1
	add	rdi, 0x20
	add	rcx, 0x20
	inc	rdx
	jne	.label_910
.label_903:
	cmp	rax, r8
	je	.label_915
	lea	rdx, [r15 + r8]
	add	rbp, r8
	jmp	.label_918
.label_904:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	ecx, ecx
	cmp	rdi, 0x60
	jb	.label_921
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_916:
	movups	xmm0, xmmword ptr [rbp + rcx]
	movups	xmm1, xmmword ptr [rbp + rcx + 0x10]
	movups	xmmword ptr [r15 + rcx], xmm0
	movups	xmmword ptr [r15 + rcx + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rcx + 0x20]
	movups	xmm1, xmmword ptr [rbp + rcx + 0x30]
	movups	xmmword ptr [r15 + rcx + 0x20], xmm0
	movups	xmmword ptr [r15 + rcx + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rcx + 0x40]
	movups	xmm1, xmmword ptr [rbp + rcx + 0x50]
	movups	xmmword ptr [r15 + rcx + 0x40], xmm0
	movups	xmmword ptr [r15 + rcx + 0x50], xmm1
	movdqu	xmm0, xmmword ptr [rbp + rcx + 0x60]
	movdqu	xmm1, xmmword ptr [rbp + rcx + 0x70]
	movdqu	xmmword ptr [r15 + rcx + 0x60], xmm0
	movdqu	xmmword ptr [r15 + rcx + 0x70], xmm1
	sub	rcx, -0x80
	add	rdi, 4
	jne	.label_916
.label_921:
	test	rdx, rdx
	mov	r14d, dword ptr [rsp + 0xc]
	je	.label_895
	lea	rdi, [rbp + rcx + 0x10]
	lea	rcx, [r15 + rcx + 0x10]
	neg	rdx
	nop	dword ptr [rax]
.label_899:
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	movdqu	xmmword ptr [rcx], xmm1
	add	rdi, 0x20
	add	rcx, 0x20
	inc	rdx
	jne	.label_899
.label_895:
	cmp	rax, r8
	je	.label_909
	lea	rdx, [r15 + r8]
	add	rbp, r8
	jmp	.label_885
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408980

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x120
	mov	r14, rdi
	mov	al, byte ptr [rip + find_bind_mount.tried_mount_list]
	test	al, al
	jne	.label_946
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [rip + find_bind_mount.mount_list],  rax
	test	rax, rax
	jne	.label_952
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_953
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_948
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_952:
	mov	byte ptr [rip + find_bind_mount.tried_mount_list],  1
.label_946:
	lea	rdx, [rsp + 0x90]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	xor	r12d, r12d
	test	eax, eax
	jne	.label_947
	mov	rbx, qword ptr [rip + find_bind_mount.mount_list]
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_947
	xor	r12d, r12d
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_950:
	test	byte ptr [rbx + 0x28], 1
	je	.label_949
	mov	r13, qword ptr [rbx]
	cmp	byte ptr [r13], 0x2f
	jne	.label_949
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	jne	.label_949
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, r15
	call	__xstat
	test	eax, eax
	jne	.label_949
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_949
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax, qword ptr [rsp]
	je	.label_951
	nop	word ptr cs:[rax + rax]
.label_949:
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_950
.label_947:
	mov	rax, r12
	add	rsp, 0x120
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_951:
	mov	r12, qword ptr [rbx]
	jmp	.label_947
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ab0

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x130
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rbp - 0x30]
	call	save_cwd
	test	eax, eax
	je	.label_970
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_971
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_954
.label_970:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0x4000
	jne	.label_956
	lea	rdi, [rbp - 0xc0]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jns	.label_963
	jmp	.label_966
.label_956:
	mov	rdi, r14
	call	dir_name
	mov	rbx, rax
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
	mov	rdi, r14
	call	chdir
	test	eax, eax
	js	.label_966
	lea	rdx, [rbp - 0xc0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_78
	call	__xstat
	test	eax, eax
	js	.label_961
.label_963:
	lea	rdx, [rbp - 0x150]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_960
	call	__xstat
	test	eax, eax
	js	.label_965
	lea	r14, [rbp - 0xc0]
	lea	rbx, [rbp - 0x150]
	nop	dword ptr [rax + rax]
.label_957:
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_969
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_969
	mov	edi, OFFSET FLAT:label_960
	call	chdir
	test	eax, eax
	js	.label_955
	mov	edx, 0x90
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_960
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	jns	.label_957
.label_965:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	jmp	.label_964
.label_966:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_968
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_954
.label_969:
	call	xgetcwd
	mov	r15, rax
	jmp	.label_958
.label_961:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_958
.label_955:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_968
.label_964:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_960
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_958:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rbp - 0x30]
	call	restore_cwd
	test	eax, eax
	jne	.label_962
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	dword ptr [rbx], r14d
.label_954:
	mov	rax, r15
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_962:
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_967
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x408d70

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
	je	.label_975
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_978:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_973
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_976
.label_973:
	cmp	r13, r12
	jb	.label_977
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_979
	add	r12, r12
	jmp	.label_980
	nop	word ptr cs:[rax + rax]
.label_979:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_974
.label_980:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_978
	jmp	.label_975
.label_977:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_975
.label_974:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_972
.label_976:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_972:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_975:
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
	.align	32
	#Procedure 0x408e80

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e90

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_989
	test	r14, r14
	je	.label_981
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_983:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_985
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_982
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_984
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_985
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_985
.label_984:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_985:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_983
	jmp	.label_988
.label_989:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_988
.label_981:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_987:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_986
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_982
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_986
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_986:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_987
.label_988:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_982:
	mov	rax, rbx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409010
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
	je	.label_990
	mov	esi, OFFSET FLAT:label_991
	jmp	.label_992
.label_990:
	mov	esi, OFFSET FLAT:label_993
.label_992:
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
	.align	32
	#Procedure 0x409080

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
	mov	esi, OFFSET FLAT:label_994
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_999
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_996:
	test	r15, r15
	je	.label_998
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_995
.label_998:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1000
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_997
	nop	word ptr cs:[rax + rax]
.label_995:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1001
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_997:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_996
.label_999:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1002
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
.label_1002:
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
	.align	32
	#Procedure 0x4091b0
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_1003
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_1004
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_991
	jmp	.label_1005
.label_1004:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_993
.label_1005:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_1003:
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
	#Procedure 0x409280
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
	je	.label_1006
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_1007:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_1006
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_1007
.label_1006:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409300
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409310

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_1013
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_1010
	cmp	dword ptr [rbp], 0x20
	jne	.label_1010
.label_1013:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_1009
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1010:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1011
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_1008
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_948
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_1009:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_1008:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_1012
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093d0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_1014
	pop	rcx
	ret	
.label_1014:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0
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
.label_1016:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_1015
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_1016
.label_1015:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409430

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
.label_1020:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_1017
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_1020
.label_1017:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1019
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_1018
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_1018:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_1019:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094d0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_1021:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_1021
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_1025
	nop	word ptr cs:[rax + rax]
.label_1022:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_1025:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_1022
	test	dl, dl
	je	.label_1024
	mov	ecx, esi
	and	cl, 1
	je	.label_1023
	xor	esi, esi
.label_1023:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_1022
.label_1024:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409530
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_1027:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_1026
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_1027
.label_1026:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409560

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_1028
	cmp	ecx, 0x3fff
	jg	.label_1041
	cmp	eax, 0x1000
	je	.label_1044
	cmp	eax, 0x2000
	jne	.label_1033
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1038
	mov	edx, 5
	jmp	dcgettext
.label_1028:
	cmp	eax, 0x8000
	je	.label_1030
	cmp	eax, 0xa000
	je	.label_1036
	cmp	eax, 0xc000
	jne	.label_1033
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1037
	mov	edx, 5
	jmp	dcgettext
.label_1041:
	cmp	eax, 0x4000
	je	.label_1035
	cmp	eax, 0x6000
	jne	.label_1033
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1032
	mov	edx, 5
	jmp	dcgettext
.label_1044:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1034
	mov	edx, 5
	jmp	dcgettext
.label_1030:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_1042
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1043
	mov	edx, 5
	jmp	dcgettext
.label_1036:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1040
	mov	edx, 5
	jmp	dcgettext
.label_1035:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1029
	mov	edx, 5
	jmp	dcgettext
.label_1033:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1039
	mov	edx, 5
	jmp	dcgettext
.label_1042:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1031
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409660

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_1052
	cmp	ecx, 0x3fff
	jg	.label_1062
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_1061
	cmp	ecx, 0x2000
	jne	.label_1045
	mov	cl, 0x63
	jmp	.label_1047
.label_1052:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_1047
	cmp	edx, 0xa000
	je	.label_1053
	cmp	edx, 0xc000
	jne	.label_1045
	mov	cl, 0x73
	jmp	.label_1047
.label_1062:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_1060
	cmp	ecx, 0x4000
	jne	.label_1045
	mov	cl, 0x64
	jmp	.label_1047
.label_1061:
	mov	cl, 0x70
	jmp	.label_1047
.label_1060:
	mov	cl, 0x62
	jmp	.label_1047
.label_1045:
	mov	cl, 0x3f
	jmp	.label_1047
.label_1053:
	mov	cl, 0x6c
.label_1047:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_1050
	mov	cl, 0x2d
.label_1050:
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
	jne	.label_1057
	mov	cl, 0x2d
.label_1057:
	test	bl, 8
	jne	.label_1049
	mov	dl, cl
.label_1049:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_1051
	mov	cl, 0x2d
.label_1051:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_1056
	mov	cl, 0x2d
.label_1056:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_1059
	mov	cl, 0x2d
.label_1059:
	test	bl, 4
	jne	.label_1046
	mov	dil, cl
.label_1046:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_1048
	mov	r9b, 0x2d
.label_1048:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_1054
	mov	dl, 0x2d
.label_1054:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_1055
	mov	r8b, 0x2d
.label_1055:
	test	bl, 2
	pop	rbx
	je	.label_1058
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_1058:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409790

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_1063
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_1064:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1064
	jmp	.label_1066
.label_1063:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_1065:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1065
	mov	byte ptr [rsi], 0x2d
.label_1066:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409890

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_45
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_1107
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_1130
.label_1107:
	xor	r8d, r8d
	jmp	.label_1137
.label_1099:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_1235:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_1235
.label_1104:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1097
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_1165:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1165
.label_1097:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_1129
.label_1145:
	mov	esi, 0x20
.label_1148:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_1139:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_1136:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1073
.label_1176:
	mov	edi, 3
	jmp	.label_1175
	nop	
.label_1130:
	cmp	al, 0x25
	jne	.label_1179
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1886:
	mov	ebx, eax
	mov	al, r12b
.label_1178:
	mov	r12b, al
	inc	rbp
	jmp	.label_1185
	nop	word ptr cs:[rax + rax]
.label_1194:
	inc	rbp
	mov	r9d, edx
.label_1185:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_1189
	jmp	qword ptr [(rsi * 8) + label_1193]
	nop	dword ptr [rax]
.label_1189:
	cmp	edx, 0x5f
	je	.label_1194
	cmp	edx, 0x5e
	je	.label_1178
.label_1887:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_1197
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1206:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_1201
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_1222
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_1201
.label_1222:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_1201:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_1206
.label_1197:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_1257
	cmp	r8d, 0x45
	jne	.label_1210
.label_1257:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_1213
	nop	dword ptr [rax]
.label_1179:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_1125
	test	r10, r10
	mov	edx, 0
	je	.label_1226
	cmp	ecx, 2
	jb	.label_1229
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_1229:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_1226:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_1125:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_1155:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_1073
	jmp	.label_1218
.label_1210:
	xor	r8d, r8d
.label_1213:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_1090
	mov	r15d, OFFSET FLAT:label_1245
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_1246]
.label_1805:
	cmp	r8d, 0x45
	je	.label_1090
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_1250
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_1077
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_1077:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_1098
.label_1819:
	test	bl, bl
	je	.label_1117
	mov	r12b, 1
.label_1117:
	cmp	r8d, 0x45
	jne	.label_1119
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1090
.label_1797:
	dec	rbp
	jmp	.label_1090
.label_1798:
	test	r8d, r8d
	jne	.label_1090
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1091
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1136
	cmp	eax, 2
	jb	.label_1139
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_1141
	cmp	r9d, 0x2b
	jne	.label_1145
.label_1141:
	mov	esi, 0x30
	jmp	.label_1148
.label_1799:
	mov	edx, 1
	jmp	.label_1151
	nop	word ptr [rax + rax]
.label_1154:
	inc	rdx
.label_1151:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_1154
	cmp	bl, 0x7a
	jne	.label_1090
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1836:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_1157
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_1143
	test	r9d, r9d
	je	.label_1168
	xor	esi, esi
	jmp	.label_1143
.label_1800:
	test	r8d, r8d
	jne	.label_1090
	test	bl, bl
	je	.label_1170
	mov	r12b, 1
.label_1170:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_1144
.label_1801:
	cmp	r8d, 0x45
	je	.label_1090
	test	bl, bl
	je	.label_1172
	mov	r12b, 1
.label_1172:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_1144
.label_1802:
	cmp	r8d, 0x45
	jne	.label_1174
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_1144
.label_1803:
	test	r8d, r8d
	jne	.label_1090
	mov	r15d, OFFSET FLAT:label_1181
	mov	r10d, 0xffffffff
	jmp	.label_1182
.label_1804:
	test	r8d, r8d
	jne	.label_1090
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1187
	test	ecx, ecx
	jns	.label_1187
	mov	r15d, OFFSET FLAT:label_1190
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_1182
.label_1806:
	cmp	r8d, 0x45
	je	.label_1090
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_1126
.label_1807:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_1090
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_1173
.label_1808:
	cmp	r8d, 0x45
	je	.label_1090
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_1126
.label_1809:
	cmp	r8d, 0x45
	je	.label_1090
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_1207
	cmp	r11d, 8
	jg	.label_1080
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_1211
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_1167:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_1167
.label_1211:
	test	edx, edx
	je	.label_1230
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_1233:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_1233
.label_1230:
	mov	edi, r11d
	jmp	.label_1160
.label_1810:
	mov	dil, 1
.label_1828:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_1237
	mov	r12d, 0
.label_1237:
	je	.label_1239
	mov	dil, 1
.label_1239:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_1146
.label_1811:
	cmp	r8d, 0x45
	je	.label_1090
	mov	r13d, dword ptr [r11]
	jmp	.label_1126
.label_1812:
	mov	r15d, OFFSET FLAT:label_1242
.label_1182:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_1091
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1071
	cmp	rbx, rax
	jae	.label_1074
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_1112
	cmp	eax, 0x2b
	jne	.label_1084
.label_1112:
	mov	esi, 0x30
	jmp	.label_1087
.label_1813:
	cmp	r8d, 0x45
	je	.label_1090
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_1093
.label_1814:
	cmp	r8d, 0x45
	je	.label_1090
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_1093:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_1126
.label_1815:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1090
	mov	dl, 0x58
	jmp	.label_1123
.label_1816:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_1124
	cmp	r8d, 0x4f
	je	.label_1090
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	bl
	add	r13d, 0x76c
	mov	esi, 4
	jmp	.label_1171
.label_1817:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_1091
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_1129
	cmp	r10, rax
	jae	.label_1156
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1127
	cmp	r15d, 0x2b
	jne	.label_1163
.label_1127:
	mov	esi, 0x30
	jmp	.label_1166
.label_1818:
	test	r8d, r8d
	jne	.label_1090
	test	bl, bl
	je	.label_1169
	mov	r12b, 1
.label_1169:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_1144
.label_1820:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1090
	mov	dl, 0x63
	jmp	.label_1123
.label_1821:
	cmp	r8d, 0x45
	je	.label_1090
	mov	r13d, dword ptr [r11 + 0xc]
.label_1126:
	mov	edi, 2
	jmp	.label_1173
.label_1822:
	cmp	r8d, 0x45
	je	.label_1090
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_1188
.label_1823:
	cmp	r8d, 0x45
	je	.label_1090
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 3
	jmp	.label_1180
.label_1824:
	cmp	r8d, 0x45
	je	.label_1090
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_1188
.label_1825:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_1090
.label_1188:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_1173
.label_1826:
	cmp	r8d, 0x45
	je	.label_1090
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 2
.label_1180:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1202
.label_1827:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1091
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1102
	cmp	eax, 2
	jb	.label_1214
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1217
	cmp	r9d, 0x2b
	jne	.label_1219
.label_1217:
	mov	esi, 0x30
	jmp	.label_1221
.label_1829:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	ebx, ebx
.label_1202:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1133
.label_1830:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	r15, rcx
	shr	r15, 0x3f
	lea	r12, [rsp + 0xa7]
	je	.label_1109
	nop	word ptr cs:[rax + rax]
.label_1069:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	al, 0x30
	sub	al, bl
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1069
	jmp	.label_1254
	nop	word ptr cs:[rax + rax]
.label_1109:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	add	bl, 0x30
	mov	byte ptr [r12 - 1], bl
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1109
.label_1254:
	xor	edx, edx
	mov	r8, r14
	mov	r10, qword ptr [rsp + 0x10]
	mov	esi, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	rbx, r15
	jmp	.label_1081
.label_1831:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1091
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1102
	cmp	eax, 2
	jb	.label_1106
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1110
	cmp	r9d, 0x2b
	jne	.label_1113
.label_1110:
	mov	esi, 0x30
	jmp	.label_1115
.label_1832:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_1118
.label_1833:
	cmp	r8d, 0x45
	je	.label_1090
	mov	r13d, dword ptr [r11 + 0x18]
.label_1118:
	mov	edi, 1
.label_1173:
	mov	r11, qword ptr [rsp + 8]
.label_1244:
	mov	r10, qword ptr [rsp + 0x10]
.label_1160:
	mov	ebx, r13d
	shr	ebx, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1133
.label_1834:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1090
	mov	dl, 0x78
	jmp	.label_1123
.label_1835:
	cmp	r8d, 0x45
	jne	.label_1140
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_1144
.label_1119:
	xor	eax, eax
	mov	edx, ecx
.label_1144:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1146
.label_1074:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1150
.label_1250:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_1134
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_1134:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_1098:
	cmp	esi, 0x47
	je	.label_1252
	cmp	esi, 0x67
	jne	.label_1258
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	esi, 2
	jns	.label_1083
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, edi
.label_1083:
	xor	ebx, ebx
	jmp	.label_1196
.label_1157:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1073
.label_1174:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	mov	rbx, rsi
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	esi, 2
	jmp	.label_1171
.label_1140:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	esi, 2
	jns	.label_1212
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, edi
.label_1212:
	xor	ebx, ebx
.label_1171:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1225
.label_1252:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	bl
	lea	r13d, [r11 + rax + 0x76c]
	mov	esi, 4
.label_1196:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_1225:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_1238
	cmp	esi, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	mov	rdi, rbx
	setb	bl
	cmp	esi, r11d
	setl	dl
	or	dl, bl
	mov	rbx, rdi
.label_1238:
	mov	rdi, rsi
.label_1133:
	cmp	r8d, 0x4f
	jne	.label_1122
	test	bl, bl
	jne	.label_1122
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_1146
.label_1122:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	bl, bl
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rsi, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1068:
	test	r14b, 1
	je	.label_1251
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_1251:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_1068
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_1068
	xor	eax, eax
.label_1081:
	cmp	esi, r11d
	cmovl	esi, r11d
	test	dl, dl
	je	.label_1072
	mov	dl, 0x2b
.label_1072:
	test	bl, bl
	mov	byte ptr [rsp + 0x50], 0x2d
	jne	.label_1076
	mov	ecx, edx
	mov	byte ptr [rsp + 0x50], cl
.label_1076:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rsi
	jne	.label_1082
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1089
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1091
	xor	ecx, ecx
	test	r10, r10
	je	.label_1100
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1103
	test	al, al
	jne	.label_1103
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_1103
.label_1082:
	movsxd	rax, esi
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	dl, byte ptr [rsp + 0x50]
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_1128
	cmp	r9d, 0x5f
	jne	.label_1131
	movsxd	r14, ebx
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_1091
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_1205
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	r11, qword ptr [rsp + 8]
	mov	r8, r13
	add	r15, r14
.label_1205:
	add	r8, r14
	sub	r11d, ebx
	cmovg	edx, r11d
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1094
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1091
	xor	r10d, r10d
	test	r15, r15
	je	.label_1240
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1162
	test	al, al
	jne	.label_1162
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_1162:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r15], al
	inc	r15
	mov	r10, r15
.label_1240:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_1089
.label_1128:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1089
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1091
	xor	ecx, ecx
	test	r10, r10
	je	.label_1100
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1103
	test	al, al
	jne	.label_1103
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	je	.label_1191
	cmp	eax, 0x2b
	jne	.label_1195
.label_1191:
	mov	esi, 0x30
	jmp	.label_1198
.label_1131:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_1091
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1216
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_1091
	xor	ecx, ecx
	test	r10, r10
	je	.label_1108
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1209
	test	al, al
	jne	.label_1209
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_1215
	cmp	eax, 0x2b
	jne	.label_1220
.label_1215:
	mov	esi, 0x30
	jmp	.label_1161
.label_1258:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1160
.label_1094:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_1089
.label_1124:
	mov	dl, 0x59
.label_1123:
	xor	eax, eax
.label_1146:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_1236
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_1236:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1243
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_1091
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1253
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_1255
	test	al, al
	jne	.label_1255
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_1256
	cmp	eax, 0x2b
	jne	.label_1070
.label_1256:
	mov	esi, 0x30
	jmp	.label_1086
.label_1243:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1073
.label_1255:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_1177
.label_1070:
	mov	esi, 0x20
.label_1086:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1177:
	test	al, 1
	jne	.label_1183
	test	r15b, 1
	jne	.label_1096
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1101
.label_1183:
	test	r10, r10
	je	.label_1101
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_1114
	lea	r8, [r9 + 1]
	nop	dword ptr [rax]
.label_1121:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_1121
	dec	rbx
	mov	rsi, rbx
.label_1114:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1101
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_1088:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1088
	jmp	.label_1101
.label_1096:
	test	r10, r10
	je	.label_1101
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_1164
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_1204:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_1204
	dec	rbx
	mov	rsi, rbx
.label_1164:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1101
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_1192:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1192
.label_1101:
	add	rdi, r10
	mov	rcx, rdi
.label_1253:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_1199
.label_1156:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_1200
.label_1084:
	mov	esi, 0x20
.label_1087:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_1150:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_1071:
	add	r8, r14
	jmp	.label_1147
.label_1168:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_1143:
	cmp	r10, 3
	ja	.label_1224
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_1227]
.label_1759:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_1175:
	xor	r14d, r14d
	jmp	.label_1241
.label_1187:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_1190
	jmp	.label_1182
.label_1207:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_1244
.label_1224:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_1248
.label_1762:
	test	r9d, r9d
	je	.label_1186
.label_1761:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_1241
.label_1080:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_1244
.label_1163:
	mov	esi, 0x20
.label_1166:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_1200:
	test	bl, bl
	je	.label_1078
	test	r10, r10
	je	.label_1097
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1085
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_1092
.label_1078:
	test	al, al
	je	.label_1095
	test	r10, r10
	je	.label_1097
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1099
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_1104
.label_1085:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_1116:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_1116
.label_1092:
	test	rcx, rcx
	je	.label_1097
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_1138:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1138
	jmp	.label_1097
.label_1219:
	mov	esi, 0x20
.label_1221:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1214:
	mov	byte ptr [rdi], 0xa
	jmp	.label_1152
.label_1113:
	mov	esi, 0x20
.label_1115:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1106:
	mov	byte ptr [rdi], 9
.label_1152:
	inc	rdi
	mov	rcx, rdi
.label_1102:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1073
.label_1195:
	mov	esi, 0x20
.label_1198:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_1103:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_1100:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_1089
.label_1095:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1097
.label_1186:
	test	edi, edi
	je	.label_1176
.label_1760:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_1241:
	mov	r15d, 0x21
.label_1248:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_1184
	mov	dl, 1
	cmp	bl, 0x21
	mov	rbx, rsi
	je	.label_1133
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1155
.label_1184:
	mov	qword ptr [rsp + 0x20], rdi
.label_1090:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_1203:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_1203
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1091
	test	rdi, rdi
	mov	ecx, 0
	je	.label_1149
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_1223
	cmp	r12d, eax
	jae	.label_1223
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1228
	cmp	r9d, 0x2b
	jne	.label_1231
.label_1228:
	mov	esi, 0x30
	jmp	.label_1232
.label_1231:
	mov	esi, 0x20
.label_1232:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_1223:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_1247
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1067
.label_1247:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_1120
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_1249:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_1249
.label_1120:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1067
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_1079:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_1079
.label_1067:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_1149:
	add	r8, rsi
.label_1147:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_1073
.label_1220:
	mov	esi, 0x20
.label_1161:
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r10
	call	memset
	mov	r10, r13
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_1209:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_1108:
	add	r8, r15
	mov	r10, rcx
.label_1216:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, ebx
	mov	eax, 0
	je	.label_1105
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_1105:
	add	r8, r15
	mov	r10, rax
.label_1089:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_1091
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1129
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1132
	test	al, al
	jne	.label_1132
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_1135
	cmp	eax, 0x2b
	jne	.label_1234
.label_1135:
	mov	esi, 0x30
	jmp	.label_1142
.label_1234:
	mov	esi, 0x20
.label_1142:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_1132:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1153
	test	r15, r15
	je	.label_1111
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_1159
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_1075:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_1075
	sub	rdx, r12
.label_1159:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1111
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1158:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1158
	jmp	.label_1111
.label_1153:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1111:
	add	r10, r15
	mov	rcx, r10
.label_1129:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_1199:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_1073:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_1130
.label_1137:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1208
	test	r10, r10
	je	.label_1208
	mov	byte ptr [r10], 0
.label_1208:
	mov	qword ptr [rsp + 0x70], r8
.label_1218:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1091:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1218
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b6e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1259
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1261
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1263
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1261
	mov	esi, OFFSET FLAT:label_1262
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1264
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1264:
	mov	rbx, r14
.label_1261:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1259:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1260
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b790
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
	.align	32
	#Procedure 0x40b7d0

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
	.align	32
	#Procedure 0x40b7e0

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
	.align	32
	#Procedure 0x40b7f0
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
	.align	32
	#Procedure 0x40b830
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
	.align	32
	#Procedure 0x40b850
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1265
	test	rdx, rdx
	je	.label_1265
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1265:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b880
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
	.align	32
	#Procedure 0x40b900

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
	jmp	.label_1358
	nop	
.label_1269:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_1275
	or	al, dl
	jne	.label_1275
	test	dil, 1
	jne	.label_1390
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1275
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_1358
	jmp	.label_1275
.label_1788:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_1271
	test	rbp, rbp
	je	.label_1276
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_1276:
	mov	r14d, 1
	jmp	.label_1280
.label_1789:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1281
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_1282
.label_1271:
	xor	r14d, r14d
.label_1280:
	mov	eax, OFFSET FLAT:label_1281
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_1364
	nop	
.label_1358:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1303
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_1345]
.label_1790:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_1318
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_1324
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1791:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_1333
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1333
	xor	r14d, r14d
	nop	
.label_1349:
	cmp	r14, rbp
	jae	.label_1344
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_1344:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1349
.label_1333:
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
	jmp	.label_1282
.label_1783:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1282
.label_1786:
	mov	al, 1
.label_1784:
	mov	r12b, 1
.label_1787:
	test	r12b, 1
	mov	cl, 1
	je	.label_1321
	mov	ecx, eax
.label_1321:
	mov	al, cl
.label_1785:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_1366
	test	rbp, rbp
	je	.label_1371
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_1371:
	mov	r14d, 1
	jmp	.label_1375
.label_1366:
	xor	r14d, r14d
.label_1375:
	mov	ecx, OFFSET FLAT:label_1324
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_1364:
	mov	sil, r12b
.label_1282:
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
	jmp	.label_1381
	nop	word ptr cs:[rax + rax]
.label_1328:
	inc	r12
.label_1381:
	cmp	r11, -1
	je	.label_1291
	cmp	r12, r11
	jne	.label_1293
	jmp	.label_1295
	nop	word ptr cs:[rax + rax]
.label_1291:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_1298
.label_1293:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_1304
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_1314
	cmp	r11, -1
	jne	.label_1314
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1314:
	cmp	rbx, r11
	jbe	.label_1323
.label_1304:
	xor	esi, esi
.label_1330:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_1325
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1329]
.label_1773:
	test	r12, r12
	jne	.label_1279
	jmp	.label_1338
	nop	word ptr cs:[rax + rax]
.label_1323:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_1348
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_1330
	jmp	.label_1270
.label_1348:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_1330
.label_1777:
	xor	eax, eax
	cmp	r11, -1
	je	.label_1360
	test	r12, r12
	jne	.label_1361
	cmp	r11, 1
	je	.label_1338
	xor	r13d, r13d
	jmp	.label_1268
.label_1766:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1368
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1270
	cmp	r8d, 2
	jne	.label_1372
	mov	eax, r9d
	and	al, 1
	jne	.label_1372
	cmp	r14, rbp
	jae	.label_1378
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1378:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1379
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1379:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1383
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1383:
	add	r14, 3
	mov	r9b, 1
.label_1372:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_1389
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_1389:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_1267
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_1267
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1267
	cmp	r14, rbp
	jae	.label_1387
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_1387:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_1354
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_1354:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1268
.label_1767:
	mov	bl, 0x62
	jmp	.label_1292
.label_1768:
	mov	cl, 0x74
	jmp	.label_1283
.label_1769:
	mov	bl, 0x76
	jmp	.label_1292
.label_1770:
	mov	bl, 0x66
	jmp	.label_1292
.label_1771:
	mov	cl, 0x72
	jmp	.label_1283
.label_1774:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_1301
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1289
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
	jae	.label_1312
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1312:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1326
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_1326:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1332
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1332:
	add	r14, 3
	xor	r9d, r9d
.label_1301:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1268
.label_1775:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_1342
	cmp	r8d, 2
	jne	.label_1279
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1279
	jmp	.label_1289
.label_1776:
	cmp	r8d, 2
	jne	.label_1352
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1289
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_1365
.label_1325:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_1356
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_1331
.label_1360:
	test	r12, r12
	jne	.label_1376
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_1376
.label_1338:
	mov	dl, 1
.label_1772:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_1289
	xor	eax, eax
	mov	r13b, dl
.label_1268:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_1382
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_1384
	jmp	.label_1386
	nop	word ptr cs:[rax + rax]
.label_1382:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_1386
.label_1384:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1320
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_1266
	nop	dword ptr [rax]
.label_1386:
	test	sil, sil
.label_1266:
	mov	ebx, r15d
	je	.label_1286
	jmp	.label_1273
.label_1320:
	mov	ebx, r15d
	jmp	.label_1273
.label_1368:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_1328
	xor	r15d, r15d
	jmp	.label_1279
.label_1352:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_1283
	xor	eax, eax
	mov	r15b, 0x5c
.label_1365:
	xor	r13d, r13d
	jmp	.label_1286
.label_1283:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_1289
.label_1292:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_1268
	nop	
.label_1273:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1270
	cmp	r8d, 2
	jne	.label_1302
	mov	eax, r9d
	and	al, 1
	jne	.label_1302
	cmp	r14, rbp
	jae	.label_1308
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1308:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1313
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1313:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1317
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1317:
	add	r14, 3
	mov	r9b, 1
.label_1302:
	cmp	r14, rbp
	jae	.label_1310
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1310:
	inc	r14
	jmp	.label_1335
.label_1356:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_1346
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1346:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_1340
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_1341:
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
	je	.label_1353
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_1288
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1334
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_1369
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_1315:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1339
	bt	rsi, rdx
	jb	.label_1289
.label_1339:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_1315
.label_1369:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_1388
	xor	r13d, r13d
.label_1388:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1341
	jmp	.label_1274
.label_1267:
	xor	r13d, r13d
	jmp	.label_1268
.label_1376:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_1268
.label_1342:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_1279
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_1279
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_1279
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1287
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1307
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1305
	cmp	r14, rbp
	jae	.label_1299
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_1299:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1306
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1306:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1385
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1385:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_1391
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_1391:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_1307:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_1268
.label_1279:
	xor	eax, eax
.label_1361:
	xor	r13d, r13d
	jmp	.label_1268
.label_1340:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1290:
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
	je	.label_1377
	cmp	rbp, -1
	je	.label_1351
	cmp	rbp, -2
	je	.label_1353
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_1355
	xor	r13d, r13d
.label_1355:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1290
	jmp	.label_1274
.label_1353:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_1297
	lea	rax, [r10 + r12]
.label_1277:
	cmp	byte ptr [rax + rsi], 0
	je	.label_1297
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_1277
.label_1297:
	mov	qword ptr [rsp + 0x40], rsi
.label_1288:
	xor	r13d, r13d
	jmp	.label_1334
.label_1351:
	xor	r13d, r13d
.label_1377:
	mov	r10, qword ptr [rsp + 0x28]
.label_1334:
	mov	r12, qword ptr [rsp + 0x40]
.label_1274:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_1331:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_1362
	test	al, al
	je	.label_1362
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1268
.label_1362:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1392
	nop	word ptr [rax + rax]
.label_1363:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_1392:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_1272
	test	sil, 1
	je	.label_1284
	cmp	r14, rbp
	jae	.label_1278
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_1278:
	inc	r14
	xor	esi, esi
	jmp	.label_1284
	nop	word ptr cs:[rax + rax]
.label_1272:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1270
	cmp	r8d, 2
	jne	.label_1294
	mov	eax, r9d
	and	al, 1
	jne	.label_1294
	cmp	r14, rbp
	jae	.label_1296
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1296:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1300
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_1300:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1357
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_1357:
	add	r14, 3
	mov	r9b, 1
.label_1294:
	cmp	r14, rbp
	jae	.label_1316
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1316:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1336
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1336:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1327
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1327:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1284:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_1286
	test	r9b, 1
	je	.label_1343
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_1359
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_1347
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_1347:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_1373
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_1373:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_1343
	nop	word ptr cs:[rax + rax]
.label_1359:
	mov	rbx, rcx
.label_1343:
	cmp	r14, rbp
	jae	.label_1363
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_1363
	nop	
.label_1286:
	test	r9b, 1
	je	.label_1367
	and	al, 1
	jne	.label_1367
	cmp	r14, rbp
	jae	.label_1370
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1370:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1374
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1374:
	add	r14, 2
	xor	r9d, r9d
.label_1367:
	mov	ebx, r15d
.label_1335:
	cmp	r14, rbp
	jae	.label_1380
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_1380:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_1328
.label_1287:
	xor	r13d, r13d
	jmp	.label_1268
	nop	word ptr cs:[rax + rax]
.label_1295:
	mov	rcx, r12
.label_1298:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1269
	or	al, dl
	jne	.label_1269
	mov	r11, rcx
	jmp	.label_1270
.label_1289:
	mov	eax, 2
.label_1350:
	mov	qword ptr [rsp + 0x38], rax
.label_1270:
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
.label_1285:
	mov	r14, rax
.label_1337:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1275:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_1309
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_1311
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1311
	inc	rdx
	nop	dword ptr [rax + rax]
.label_1322:
	cmp	r14, rbp
	jae	.label_1319
	mov	byte ptr [rcx + r14], al
.label_1319:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1322
	jmp	.label_1311
.label_1390:
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
	jmp	.label_1285
.label_1309:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1311:
	cmp	r14, rbp
	jae	.label_1337
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1337
.label_1305:
	mov	eax, 5
	jmp	.label_1350
.label_1303:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c730
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
	.align	32
	#Procedure 0x40c800
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
	je	.label_1393
	mov	qword ptr [rax], rbx
.label_1393:
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
	.align	32
	#Procedure 0x40c8f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1394
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1397:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1397
.label_1394:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1398
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1395], OFFSET FLAT:slot0
.label_1398:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1396
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1396:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c990
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c9a0

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
	js	.label_1399
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1402
	cmp	r12d, 0x7fffffff
	je	.label_1404
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
	jne	.label_1400
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1400:
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
.label_1402:
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
	jbe	.label_1405
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1401
.label_1405:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1403
	mov	rdi, r14
	call	free
.label_1403:
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
.label_1401:
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
.label_1399:
	call	abort
.label_1404:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cb60
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb70
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
	.align	32
	#Procedure 0x40cb90
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
	.align	32
	#Procedure 0x40cbb0

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
	je	.label_1406
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
.label_1406:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cc20
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
	je	.label_1407
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
.label_1407:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc90

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
	je	.label_1408
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
.label_1408:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd00
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
	je	.label_1409
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
.label_1409:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd70
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
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
	.align	32
	#Procedure 0x40cde0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
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
	#Procedure 0x40ce50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
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
	#Procedure 0x40ceb0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
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
	.align	32
	#Procedure 0x40cf10
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
	je	.label_1413
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
.label_1413:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfb0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1414
	test	rdx, rdx
	je	.label_1414
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1414:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d020
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1415
	test	rdx, rdx
	je	.label_1415
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1415:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d090
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1416
	test	rsi, rsi
	je	.label_1416
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1416:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40d100
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1410]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1411]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1412]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1417
	test	rsi, rsi
	je	.label_1417
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
.label_1417:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d170
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d180
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
	.align	32
	#Procedure 0x40d1a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1c0

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
	.align	32
	#Procedure 0x40d1e0

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
	jne	.label_1423
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1419
	cmp	ecx, 0x55
	jne	.label_1418
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1418
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1418
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1418
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1418
	cmp	byte ptr [rax + 5], 0
	jne	.label_1418
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1425
	mov	eax, OFFSET FLAT:label_1426
	jmp	.label_1422
.label_1419:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1418
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1418
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1418
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1418
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1418
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1418
	cmp	byte ptr [rax + 7], 0
	je	.label_1424
.label_1418:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1281
	mov	eax, OFFSET FLAT:label_1324
.label_1422:
	cmove	rax, rcx
.label_1423:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1424:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1420
	mov	eax, OFFSET FLAT:label_1421
	jmp	.label_1422
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2b0

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_78
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_1427
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_1427:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d300

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_1428
	mov	edi, eax
	jmp	fchdir
.label_1428:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d320

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_1429
	call	close
.label_1429:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d340

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
	je	.label_1430
	mov	edx, OFFSET FLAT:label_1440
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1446
.label_1430:
	mov	edx, OFFSET FLAT:label_1447
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1433
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
	mov	esi, OFFSET FLAT:label_1448
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1435
	jmp	qword ptr [(r12 * 8) + label_1436]
.label_1918:
	add	rsp, 8
	jmp	.label_1434
.label_1435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1443
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
	jmp	.label_1434
.label_1919:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1431
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
.label_1920:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1444
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
.label_1921:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1441
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
.label_1922:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1438
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
	jmp	.label_1434
.label_1923:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1437
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
	jmp	.label_1434
.label_1924:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1439
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
	jmp	.label_1434
.label_1925:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1442
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
	jmp	.label_1434
.label_1927:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1445
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
	jmp	.label_1434
.label_1926:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1432
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
.label_1434:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1449:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1449
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1455
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1457
.label_1455:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1457:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1450
	cmp	r10d, 0x29
	jae	.label_1454
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1456
.label_1454:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1456:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1450
	cmp	r10d, 0x29
	jae	.label_1452
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1453
.label_1452:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1453:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1450
	cmp	r10d, 0x29
	jae	.label_1462
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1451
.label_1462:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1451:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1450
	cmp	r10d, 0x29
	jae	.label_1460
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1461
.label_1460:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1461:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1450
	cmp	r10d, 0x29
	jae	.label_1458
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1459
.label_1458:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1459:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1450
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1450
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1450
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1450
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1450:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1463
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1463:
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
	.align	32
	#Procedure 0x40d950
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1464
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1465
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1467
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1466
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1468
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1469
	test	rax, rax
	je	.label_1468
.label_1469:
	pop	rbx
	ret	
.label_1468:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1470
	test	rax, rax
	je	.label_1471
.label_1470:
	pop	rbx
	ret	
.label_1471:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da30
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1472
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1473
	test	rbx, rbx
	jne	.label_1473
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1473:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1474
	test	rax, rax
	je	.label_1472
.label_1474:
	pop	rbx
	ret	
.label_1472:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1475
	test	rbx, rbx
	jne	.label_1475
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1475:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1477
	test	rax, rax
	je	.label_1476
.label_1477:
	pop	rbx
	ret	
.label_1476:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40dab0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1481
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1483
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1478
.label_1481:
	test	rcx, rcx
	jne	.label_1484
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1484:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1479
.label_1478:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1480
	test	rbx, rbx
	jne	.label_1480
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1480:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1482
	test	rax, rax
	je	.label_1483
.label_1482:
	pop	rbx
	ret	
.label_1483:
	call	xalloc_die
.label_1479:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db50
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1485
	test	rax, rax
	je	.label_1486
.label_1485:
	pop	rbx
	ret	
.label_1486:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1489
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1491
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1488
	call	free
	xor	eax, eax
	jmp	.label_1490
.label_1489:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1487
	mov	qword ptr [rsi], rbx
.label_1488:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1490
	test	rax, rax
	je	.label_1487
.label_1490:
	pop	rbx
	ret	
.label_1487:
	call	xalloc_die
.label_1491:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dbe0
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
	je	.label_1493
	test	r14, r14
	je	.label_1492
.label_1493:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1492:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1494
	call	rpl_calloc
	test	rax, rax
	je	.label_1494
	pop	rcx
	ret	
.label_1494:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc50

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
	je	.label_1495
	test	r15, r15
	je	.label_1496
.label_1495:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1496:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc90

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
	je	.label_1498
	test	r15, r15
	je	.label_1497
.label_1498:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1497:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dce0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1499
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_948
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40dd10

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1501
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_1500
.label_1501:
	mov	rax, rbx
	pop	rbx
	ret	
.label_1500:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd40

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1502
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1502:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	lea	rsi, [rsp + 0xb0]
	call	xvasprintf
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dde0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1503
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1504
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1504
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1503:
	mov	ecx, 1
.label_1504:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de30

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1528
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	jne	.label_1511
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	test	r15, r15
	je	.label_1536
	cmp	r15, 0x1000
	jb	.label_1525
	add	r15, rbp
	mov	rbx, -1
	nop	word ptr [rax + rax]
.label_1513:
	cmp	byte ptr [rbp + rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_1513
	mov	r12d, 0xffffff9c
	test	rbx, rbx
	je	.label_1519
	cmp	rbx, 2
	jne	.label_1521
	lea	rdi, [rbp + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1506
	mov	byte ptr [rbx], 0
	mov	edi, 0xffffff9c
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	mov	byte ptr [rbx], 0x2f
	js	.label_1520
	nop	word ptr cs:[rax + rax]
.label_1505:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_1505
	jmp	.label_1510
.label_1528:
	xor	ebx, ebx
	jmp	.label_1511
.label_1521:
	mov	edi, 0xffffff9c
	mov	esi, OFFSET FLAT:label_1515
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_1520
	add	rbp, rbx
.label_1519:
	mov	rbx, rbp
.label_1510:
	cmp	byte ptr [rbx], 0x2f
	je	.label_1527
	cmp	rbx, r15
	jbe	.label_1518
	mov	edi, OFFSET FLAT:label_1533
	mov	esi, OFFSET FLAT:label_1508
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_1509
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
.label_1538:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, rbx
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1506
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_1512
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1526
	test	r12d, r12d
	js	.label_1532
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_1516
.label_1532:
	mov	r12d, ebx
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	
.label_1535:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_1535
.label_1518:
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_1538
	cmp	rbx, r15
	jae	.label_1539
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1529
	test	r12d, r12d
	js	.label_1517
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_1517
	jmp	.label_1516
.label_1506:
	mov	dword ptr [r14], 0x24
	jmp	.label_1524
.label_1539:
	mov	ebx, r12d
.label_1517:
	mov	edi, ebx
	call	fchdir
	test	eax, eax
	je	.label_1537
	mov	r12d, ebx
	jmp	.label_1529
.label_1520:
	mov	ebx, dword ptr [r14]
	jmp	.label_1531
.label_1537:
	test	ebx, ebx
	js	.label_1540
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	ebx, 0
	je	.label_1511
	jmp	.label_1516
.label_1526:
	mov	byte ptr [rbp], 0x2f
.label_1529:
	mov	ebx, dword ptr [r14]
	test	r12d, r12d
	js	.label_1531
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_1516
.label_1531:
	mov	dword ptr [r14], ebx
.label_1524:
	mov	ebx, 0xffffffff
.label_1511:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1540:
	xor	ebx, ebx
	jmp	.label_1511
.label_1512:
	mov	edi, OFFSET FLAT:label_1514
	mov	esi, OFFSET FLAT:label_1508
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_1509
	call	__assert_fail
.label_1516:
	mov	edi, OFFSET FLAT:label_1522
	mov	esi, OFFSET FLAT:label_1508
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_1523
	call	__assert_fail
.label_1536:
	mov	edi, OFFSET FLAT:label_1507
	mov	esi, OFFSET FLAT:label_1508
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_1509
	call	__assert_fail
.label_1525:
	mov	edi, OFFSET FLAT:label_1534
	mov	esi, OFFSET FLAT:label_1508
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_1509
	call	__assert_fail
.label_1527:
	mov	edi, OFFSET FLAT:label_1530
	mov	esi, OFFSET FLAT:label_1508
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_1509
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e110

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
	je	.label_1541
	cmp	r15, -2
	jb	.label_1541
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1541
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1541:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e170

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	edi, OFFSET FLAT:label_1571
	mov	esi, OFFSET FLAT:label_1572
	call	fopen
	mov	r14, rax
	test	r14, r14
	je	.label_1569
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x48], 0
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	edx, 0xa
	mov	rcx, r14
	call	__getdelim
	lea	r12, [rsp + 0x18]
	cmp	rax, -1
	je	.label_1574
	lea	rbx, [rsp + 7]
	lea	r15, [rsp + 0x10]
	lea	rbp, [rsp + 0x14]
	mov	qword ptr [rsp + 0x28], r14
	nop	word ptr cs:[rax + rax]
.label_1576:
	mov	rdi, qword ptr [rsp + 8]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_1583
	mov	eax, 0
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x28]
	lea	r9, [rsp + 0x38]
	push	rbx
	push	r15
	push	rbp
	call	sscanf
	add	rsp, 0x20
	or	eax, 4
	cmp	eax, 7
	jne	.label_1554
	movsxd	rdi, dword ptr [rsp + 0x10]
	add	rdi, qword ptr [rsp + 8]
	mov	esi, OFFSET FLAT:label_1555
	call	strstr
	mov	r13, rax
	test	r13, r13
	je	.label_1554
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_1561
	xor	eax, eax
	mov	rdi, r13
	lea	rdx, [rsp + 0x44]
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x3c]
	push	rbx
	call	sscanf
	add	rsp, 0x10
	or	eax, 4
	cmp	eax, 5
	jne	.label_1554
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [r13 + rax], 0
	movsxd	rax, dword ptr [rsp + 0x34]
	mov	byte ptr [r13 + rax], 0
	movsxd	rbp, dword ptr [rsp + 0x24]
	add	rbp, r13
	mov	rdi, rbp
	call	strlen
	inc	rax
	je	.label_1578
	mov	rcx, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1559:
	movzx	r9d, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	cmp	rsi, rax
	jae	.label_1545
	cmp	r9b, 0x5c
	jne	.label_1545
	movzx	esi, byte ptr [rbp + rdx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_1545
	movzx	edi, byte ptr [rbp + rdx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1545
	movzx	r8d, byte ptr [rbp + rdx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1545
	add	rdx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rcx], dil
	jmp	.label_1552
	nop	
.label_1545:
	mov	byte ptr [rcx], r9b
.label_1552:
	inc	rdx
	inc	rcx
	cmp	rdx, rax
	jb	.label_1559
.label_1578:
	mov	rbx, qword ptr [rsp + 8]
	movsxd	rbp, dword ptr [rsp + 0x14]
	add	rbp, rbx
	mov	rdi, rbp
	call	strlen
	inc	rax
	je	.label_1564
	mov	rcx, rbp
	xor	edx, edx
	nop	dword ptr [rax]
.label_1579:
	movzx	r9d, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	cmp	rsi, rax
	jae	.label_1566
	cmp	r9b, 0x5c
	jne	.label_1566
	movzx	esi, byte ptr [rbp + rdx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_1566
	movzx	edi, byte ptr [rbp + rdx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1566
	movzx	r8d, byte ptr [rbp + rdx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1566
	add	rdx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rcx], dil
	jmp	.label_1557
	nop	
.label_1566:
	mov	byte ptr [rcx], r9b
.label_1557:
	inc	rdx
	inc	rcx
	cmp	rdx, rax
	jb	.label_1579
	mov	rbx, qword ptr [rsp + 8]
.label_1564:
	movsxd	rbp, dword ptr [rsp + 0x20]
	add	rbp, rbx
	mov	rdi, rbp
	call	strlen
	inc	rax
	je	.label_1585
	mov	rcx, rbp
	xor	edx, edx
	nop	dword ptr [rax]
.label_1575:
	movzx	r9d, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	cmp	rsi, rax
	jae	.label_1542
	cmp	r9b, 0x5c
	jne	.label_1542
	movzx	esi, byte ptr [rbp + rdx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_1542
	movzx	edi, byte ptr [rbp + rdx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1542
	movzx	r8d, byte ptr [rbp + rdx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1542
	add	rdx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rcx], dil
	jmp	.label_1581
	nop	
.label_1542:
	mov	byte ptr [rcx], r9b
.label_1581:
	inc	rdx
	inc	rcx
	cmp	rdx, rax
	jb	.label_1575
.label_1585:
	mov	edi, 0x38
	call	xmalloc
	mov	rbp, rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, r13
	call	xstrdup
	mov	qword ptr [rbp], rax
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [rbp + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x20]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [rbp + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, r13
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rbp + 0x18], r13
	mov	bl, byte ptr [rbp + 0x28]
	or	bl, 4
	mov	byte ptr [rbp + 0x28], bl
	mov	eax, dword ptr [rsp + 0x44]
	mov	ecx, dword ptr [rsp + 0x40]
	movzx	edx, cl
	mov	esi, eax
	shl	esi, 8
	and	esi, 0xfff00
	or	esi, edx
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	and	eax, 0xfffff000
	shl	rax, 0x20
	or	rax, rcx
	or	rax, rsi
	mov	qword ptr [rbp + 0x20], rax
	mov	esi, OFFSET FLAT:label_255
	mov	rdi, r13
	call	strcmp
	mov	r14b, 1
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_242
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_1556
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_507
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_285
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_315
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_385
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_176
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_311
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_1543
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_1570
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1547
	mov	esi, OFFSET FLAT:label_1544
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	sete	al
	nop	word ptr cs:[rax + rax]
.label_1547:
	and	bl, 0xfe
	or	bl, al
	mov	byte ptr [rbp + 0x28], bl
	mov	r15, qword ptr [rbp]
	mov	esi, 0x3a
	mov	rdi, r15
	call	strchr
	test	rax, rax
	jne	.label_1562
	cmp	byte ptr [r15], 0x2f
	jne	.label_1558
	cmp	byte ptr [r15 + 1], 0x2f
	jne	.label_1558
	mov	esi, OFFSET FLAT:label_1560
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_1562
	mov	esi, OFFSET FLAT:label_521
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_1562
.label_1558:
	mov	edi, OFFSET FLAT:label_1551
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	sete	r14b
.label_1562:
	add	r14b, r14b
	and	bl, 0xfd
	or	bl, r14b
	mov	byte ptr [rbp + 0x28], bl
	mov	qword ptr [r12], rbp
	add	rbp, 0x30
	mov	r12, rbp
	mov	r14, qword ptr [rsp + 0x28]
	lea	rbx, [rsp + 7]
	lea	rbp, [rsp + 0x10]
	mov	r15, rbp
	lea	rbp, [rsp + 0x14]
.label_1554:
	mov	edx, 0xa
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rcx, r14
	call	__getdelim
	cmp	rax, -1
	jne	.label_1576
.label_1574:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	test	byte ptr [r14], 0x20
	jne	.label_1580
	mov	rdi, r14
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1577
	jmp	.label_1568
.label_1569:
	mov	edi, OFFSET FLAT:label_1586
	mov	esi, OFFSET FLAT:label_1572
	call	setmntent
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1548
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1550
	lea	r13, [rsp + 0x18]
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr cs:[rax + rax]
.label_1563:
	mov	esi, OFFSET FLAT:label_1567
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x50], rax
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r12 + 0x18], rbp
	movzx	r14d, byte ptr [r12 + 0x28]
	or	r14b, 4
	mov	byte ptr [r12 + 0x28], r14b
	mov	esi, OFFSET FLAT:label_255
	mov	rdi, rbp
	call	strcmp
	mov	r15b, 1
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_242
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_1556
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_507
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_285
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_315
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_385
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_176
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_311
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_1543
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	mov	esi, OFFSET FLAT:label_1570
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1553
	cmp	qword ptr [rsp + 0x50], 0
	sete	bl
	mov	esi, OFFSET FLAT:label_1544
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1553
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1553:
	and	r14b, 0xfe
	or	r14b, bl
	mov	byte ptr [r12 + 0x28], r14b
	mov	rbx, qword ptr [r12]
	mov	esi, 0x3a
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_1549
	cmp	byte ptr [rbx], 0x2f
	jne	.label_1584
	cmp	byte ptr [rbx + 1], 0x2f
	jne	.label_1584
	mov	esi, OFFSET FLAT:label_1560
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1549
	mov	esi, OFFSET FLAT:label_521
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1549
	nop	
.label_1584:
	mov	edi, OFFSET FLAT:label_1551
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	sete	r15b
.label_1549:
	add	r15b, r15b
	and	r14b, 0xfd
	or	r14b, r15b
	mov	byte ptr [r12 + 0x28], r14b
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r13], r12
	add	r12, 0x30
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r13, r12
	jne	.label_1563
	jmp	.label_1565
.label_1580:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	rpl_fclose
	mov	dword ptr [rbx], ebp
	jmp	.label_1568
.label_1550:
	lea	r12, [rsp + 0x18]
.label_1565:
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	je	.label_1568
.label_1577:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1548
.label_1568:
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	qword ptr [r12], 0
	mov	rbx, qword ptr [rsp + 0x18]
	test	rbx, rbx
	je	.label_1573
	nop	word ptr cs:[rax + rax]
.label_1546:
	mov	rdi, qword ptr [rbx]
	mov	rbp, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1582
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1582:
	mov	rdi, rbx
	call	free
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1546
.label_1573:
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_1548:
	add	rsp, 0x58
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
	#Procedure 0x40ea30
	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1587
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1587:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1588
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1588:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1589
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1589
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1589:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eaf0
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_1590
	nop	word ptr [rax + rax]
.label_1591:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1591
.label_1590:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb20

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	test	r15, r15
	je	.label_1595
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:label_884
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	mov	qword ptr [rsp + 0x10], rbp
	je	.label_1601
	test	bl, bl
	je	.label_1604
	lea	rdi, [r15 + 9]
	mov	rsi, r13
	call	strcmp
	mov	r14d, 1
	test	eax, eax
	je	.label_1609
.label_1604:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r12b, 1
	jmp	.label_1612
.label_1595:
	mov	rdi, rbp
	mov	rsi, rdx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1601:
	xor	r12d, r12d
	mov	r14d, 1
	test	bl, bl
	mov	ebp, 0
	je	.label_1609
.label_1612:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1603
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	je	.label_1607
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp], 0
.label_1607:
	test	bl, bl
	je	.label_1593
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_884
	mov	edx, 1
	call	setenv
	jmp	.label_1596
.label_1593:
	mov	edi, OFFSET FLAT:label_884
	call	unsetenv
.label_1596:
	test	eax, eax
	je	.label_1598
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_1599
	nop	word ptr cs:[rax + rax]
.label_1605:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_1605
.label_1599:
	mov	dword ptr [rbp], r15d
.label_1603:
	xor	eax, eax
	jmp	.label_1608
.label_1598:
	call	tzset
.label_1609:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	r12b, 1
	je	.label_1592
	mov	rdi, r15
	mov	rsi, rbx
	call	save_abbr
	mov	r12d, eax
	xor	r12b, 1
.label_1592:
	cmp	r14, 1
	je	.label_1602
	call	__errno_location
	mov	r15, rax
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	je	.label_1597
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:label_884
	mov	edx, 1
	call	setenv
	jmp	.label_1611
.label_1597:
	mov	edi, OFFSET FLAT:label_884
	call	unsetenv
.label_1611:
	test	eax, eax
	je	.label_1594
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	jmp	.label_1606
.label_1594:
	call	tzset
	mov	bpl, 1
.label_1606:
	cmp	r14, 2
	jb	.label_1610
	nop	word ptr cs:[rax + rax]
.label_1600:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_1600
.label_1610:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_1602:
	xor	eax, eax
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	cmovne	rbx, rax
	mov	rax, rbx
.label_1608:
	add	rsp, 0x18
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
	#Procedure 0x40ed40

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_1613
	cmp	r15, rbx
	ja	.label_1621
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1613
.label_1621:
	mov	ebp, OFFSET FLAT:label_45
	cmp	byte ptr [rbx], 0
	je	.label_1619
	lea	rbp, [r12 + 9]
	jmp	.label_1614
.label_1620:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1614:
	lea	r13, [r12 + 9]
.label_1616:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1619
	cmp	byte ptr [rbp], 0
	jne	.label_1623
	cmp	rbp, r13
	jne	.label_1624
	cmp	byte ptr [r12 + 8], 0
	je	.label_1625
.label_1623:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_1616
	jmp	.label_1620
.label_1625:
	mov	rbp, r13
.label_1624:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1622
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1618:
	xor	r14d, r14d
	jmp	.label_1613
.label_1622:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1617
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_1619
.label_1617:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1615
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_1619:
	mov	qword ptr [r15 + 0x30], rbp
.label_1613:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1615:
	mov	qword ptr [r12], 0
	jmp	.label_1618
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eeb0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1633
	mov	edi, OFFSET FLAT:label_884
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	r12b, byte ptr [rbx + 8]
	mov	qword ptr [rsp + 8], rbp
	je	.label_1639
	test	r12b, r12b
	je	.label_1642
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	call	strcmp
	mov	r15d, 1
	test	eax, eax
	je	.label_1632
.label_1642:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r14b, 1
	jmp	.label_1626
.label_1633:
	mov	rdi, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_1639:
	xor	r14d, r14d
	mov	r15d, 1
	test	r12b, r12b
	mov	ebp, 0
	je	.label_1632
.label_1626:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r15, rax
	mov	rax, -1
	test	r15, r15
	je	.label_1640
	mov	qword ptr [r15], 0
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	je	.label_1645
	lea	r14, [r15 + 9]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_1645:
	test	r12b, r12b
	je	.label_1629
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:label_884
	mov	edx, 1
	call	setenv
	jmp	.label_1634
.label_1629:
	mov	edi, OFFSET FLAT:label_884
	call	unsetenv
.label_1634:
	test	eax, eax
	je	.label_1636
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r15, 2
	jb	.label_1635
	nop	word ptr cs:[rax + rax]
.label_1644:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1644
.label_1635:
	mov	dword ptr [rbp], r14d
	jmp	.label_1643
.label_1636:
	call	tzset
.label_1632:
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1627
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x10]
	call	localtime_r
	test	rax, rax
	je	.label_1631
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [rbp]
	xor	rcx, qword ptr [rbp + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rbp + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [rbp + 0x20]
	mov	edx, dword ptr [rsp + 0x30]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_1631
.label_1627:
	mov	rdi, rbx
	mov	rsi, rbp
	call	save_abbr
	test	al, al
	jne	.label_1631
	mov	qword ptr [rsp], -1
.label_1631:
	cmp	r15, 1
	je	.label_1628
	call	__errno_location
	mov	r14, rax
	mov	r12d, dword ptr [r14]
	cmp	byte ptr [r15 + 8], 0
	je	.label_1630
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_884
	mov	edx, 1
	call	setenv
	jmp	.label_1637
.label_1630:
	mov	edi, OFFSET FLAT:label_884
	call	unsetenv
.label_1637:
	test	eax, eax
	je	.label_1638
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	jmp	.label_1647
.label_1638:
	call	tzset
	mov	bpl, 1
.label_1647:
	cmp	r15, 2
	jb	.label_1641
	nop	word ptr [rax + rax]
.label_1646:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1646
.label_1641:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_1643
.label_1628:
	mov	rax, qword ptr [rsp]
	jmp	.label_1640
.label_1643:
	mov	rax, -1
.label_1640:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f130

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
	jne	.label_1649
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1648
	test	cl, cl
	jne	.label_1648
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1648
.label_1649:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1648
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1648:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f190

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1650
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1650:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_1651
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1653
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1652
.label_1653:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1652:
	mov	edx, dword ptr [rax]
.label_1651:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f260

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1655
	cmp	byte ptr [rax], 0x43
	jne	.label_1657
	cmp	byte ptr [rax + 1], 0
	je	.label_1654
.label_1657:
	mov	esi, OFFSET FLAT:label_1656
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1655
.label_1654:
	xor	ebx, ebx
.label_1655:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1658
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2d0

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
	ja	.label_1659
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
	jmp	.label_1660
.label_1659:
	mov	eax, ebx
.label_1660:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f320

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	rax, rdi
	mov	r15, -1
	jmp	.label_1671
	nop	dword ptr [rax]
.label_1666:
	inc	r15
.label_1671:
	movzx	ecx, byte ptr [rax + r15*2 + 2]
	cmp	cl, 0x25
	jne	.label_1662
	cmp	byte ptr [rax + r15*2 + 3], 0x73
	je	.label_1666
	jmp	.label_1663
.label_1662:
	test	cl, cl
	jne	.label_1663
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp], xmm0
	cmp	r15, -1
	je	.label_1669
	mov	r12, rbp
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1664:
	cmp	r14d, 0x28
	ja	.label_1668
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_1670
	nop	dword ptr [rax + rax]
.label_1668:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1670:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbp
	cmp	rax, rbp
	mov	rbp, -1
	cmovae	rbp, rax
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jne	.label_1664
	test	rbp, -0x80000000
	je	.label_1661
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	ecx, ecx
	jmp	.label_1672
.label_1663:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, rbp
	call	__vasprintf_chk
	test	eax, eax
	js	.label_1667
	mov	rcx, qword ptr [rsp]
	jmp	.label_1672
.label_1667:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	jne	.label_1672
	call	xalloc_die
.label_1669:
	mov	edi, 1
	call	xmalloc
	mov	rcx, rax
	mov	rbx, rcx
	jmp	.label_1673
.label_1661:
	inc	rax
	mov	rdi, rax
	call	xmalloc
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, rax
	mov	rbp, r12
	nop	
.label_1674:
	movsxd	rcx, dword ptr [rbp]
	cmp	rcx, 0x28
	ja	.label_1665
	mov	rax, rcx
	add	rax, qword ptr [rbp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rbp], ecx
	jmp	.label_1675
	nop	dword ptr [rax]
.label_1665:
	mov	rax, qword ptr [rbp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbp + 8], rcx
.label_1675:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	call	strlen
	mov	r13, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	cmp	r14, r15
	lea	r14, [r14 + 1]
	jne	.label_1674
	mov	rcx, qword ptr [rsp + 0x20]
.label_1673:
	mov	byte ptr [rbx], 0
.label_1672:
	mov	rax, rcx
	add	rsp, 0x28
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
	#Procedure 0x40f4d0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1676
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1678
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1676
.label_1678:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1676
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1677
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1677:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1676:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f550

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1679
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1679
	test	byte ptr [rbx + 1], 1
	je	.label_1679
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1679:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f590

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
	jne	.label_1680
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1680
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1681
.label_1680:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1681:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1682
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1682:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f600

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f620

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section .text
	.align	32
	#Procedure 0x40f630

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1695
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1695:
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
	ja	.label_1698
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1696
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1686
	test	esi, esi
	jne	.label_1698
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1699
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1700
.label_1698:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1701
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1686
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1687
.label_1696:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1690
.label_1686:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1691
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1693
.label_1691:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1693:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1694:
	call	fcntl
.label_1690:
	mov	ebp, eax
.label_1685:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1687:
	cmp	eax, 6
	jne	.label_1701
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1703
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1692
.label_1701:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1683
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1689
.label_1699:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1700:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1694
.label_1703:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1692:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1697
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1702
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1702
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1685
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1688
.label_1702:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1685
.label_1683:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1689:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1690
.label_1697:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1688:
	test	al, al
	je	.label_1685
	test	ebp, ebp
	js	.label_1685
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1684
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1685
.label_1684:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1685
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
