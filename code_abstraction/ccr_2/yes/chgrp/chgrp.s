	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_32
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
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	mov	esi, OFFSET FLAT:label_30
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
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_15
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_23:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_42
	call	setlocale
	mov	edi, OFFSET FLAT:label_51
	mov	esi, OFFSET FLAT:label_52
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_51
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0x10]
	call	chopt_init
	mov	r12d, 0xffffffff
	mov	ecx, 0x10
	xor	r13d, r13d
	jmp	.label_34
.label_1060:
	mov	dword ptr [rsp + 0x10], 0
	mov	ecx, r14d
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	r14d, ecx
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_43
	add	eax, -0x48
	cmp	eax, 0x3b
	ja	.label_46
	mov	ecx, 0x11
	jmp	qword ptr [(rax * 8) + label_53]
.label_1054:
	mov	ecx, 2
	jmp	.label_34
.label_1055:
	mov	ecx, 0x10
	jmp	.label_34
.label_1056:
	mov	byte ptr [rsp + 0x14], 1
	mov	ecx, r14d
	jmp	.label_34
.label_1057:
	mov	dword ptr [rsp + 0x10], 1
	mov	ecx, r14d
	jmp	.label_34
.label_1058:
	mov	byte ptr [rsp + 0x21], 1
	mov	ecx, r14d
	jmp	.label_34
.label_1059:
	xor	r12d, r12d
	mov	ecx, r14d
	jmp	.label_34
.label_1061:
	mov	r12d, 1
	mov	ecx, r14d
	jmp	.label_34
.label_1062:
	xor	r13d, r13d
	mov	ecx, r14d
	jmp	.label_34
.label_1063:
	mov	r13b, 1
	mov	ecx, r14d
	jmp	.label_34
.label_1064:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + reference_file],  rax
	mov	ecx, r14d
	jmp	.label_34
.label_43:
	cmp	eax, -1
	jne	.label_49
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x14], 0
	je	.label_55
	cmp	r14d, 0x10
	jne	.label_59
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_55
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_59:
	mov	r15d, r14d
.label_55:
	test	r12d, r12d
	setne	byte ptr [rsp + 0x20]
	movsxd	rax, dword ptr [rip + optind]
	mov	ecx, ebp
	sub	ecx, eax
	mov	rsi, qword ptr [rip + reference_file]
	cmp	rsi, 1
	mov	edx, 1
	adc	edx, 0
	cmp	ecx, edx
	jl	.label_37
	test	rsi, rsi
	je	.label_48
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_56
	mov	ebp, dword ptr [rsp + 0x58]
	mov	edi, ebp
	call	gid_to_name
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_35
.label_48:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	r12, qword ptr [rbx + rax*8]
	xor	eax, eax
	cmp	byte ptr [r12], 0
	je	.label_62
	mov	rdi, r12
	call	xstrdup
.label_62:
	mov	qword ptr [rsp + 0x30], rax
	mov	ebp, 0xffffffff
	cmp	byte ptr [r12], 0
	je	.label_35
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_39
	mov	ebp, dword ptr [rax + 0x10]
	jmp	.label_58
.label_39:
	lea	rcx, [rsp + 0x38]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_42
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_54
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, rbp
	shr	rax, 0x20
	jne	.label_54
.label_58:
	call	endgrent
.label_35:
	test	r13b, r13b
	je	.label_50
	mov	al, byte ptr [rsp + 0x14]
	test	al, al
	je	.label_50
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_57
.label_50:
	or	r15d, 0x400
	movsxd	rax, dword ptr [rip + optind]
	lea	rdi, [rbx + rax*8]
	lea	rax, [rsp + 0x10]
	mov	qword ptr [rsp], rax
	mov	edx, 0xffffffff
	mov	r8d, 0xffffffff
	mov	r9d, 0xffffffff
	mov	esi, r15d
	mov	ecx, ebp
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	cmp	eax, 0xffffff7d
	je	.label_41
	cmp	eax, 0xffffff7e
	jne	.label_46
	xor	edi, edi
	call	usage
.label_41:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_19
	mov	r8d, OFFSET FLAT:label_63
	mov	r9d, OFFSET FLAT:label_64
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_46:
	mov	edi, 1
	call	usage
.label_37:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_44
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_56:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + reference_file]
	mov	edi, 4
	jmp	.label_36
.label_57:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_45
.label_36:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_44:
	mov	esi, OFFSET FLAT:label_60
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
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
	.section	.text
	.align	32
	#Procedure 0x4021b0

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	mov	dword ptr [rdi], 2
	mov	qword ptr [rdi + 8], 0
	mov	byte ptr [rdi + 0x10], 1
	mov	byte ptr [rdi + 4], 0
	mov	byte ptr [rdi + 0x11], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x18], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x20]
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402200

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_66
	mov	rdi, qword ptr [rax]
	jmp	.label_65
.label_66:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_65:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402230
	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:

	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_68
	mov	rdi, qword ptr [rax]
	jmp	.label_67
.label_68:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_67:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402260

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	dword ptr [rsp + 0x2c], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	dword ptr [rsp + 4], edx
	mov	eax, esi
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	dword ptr [rsp + 0x28], r9d
	and	r9d, r8d
	xor	esi, esi
	mov	dword ptr [rsp + 0x3c], r9d
	cmp	r9d, -1
	jne	.label_91
	cmp	byte ptr [r13 + 0x10], 0
	jne	.label_91
	xor	esi, esi
	cmp	dword ptr [r13], 2
	sete	sil
	shl	esi, 3
.label_91:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	mov	r12b, 1
	test	rdx, rdx
	je	.label_115
	mov	bpl, 1
	mov	qword ptr [rsp + 0x40], r14
	jmp	.label_120
.label_131:
	mov	esi, OFFSET FLAT:label_76
.label_117:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x10]
	xor	r15d, r15d
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_128
.label_109:
	mov	edi, r12d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_106
	nop	
.label_120:
	mov	r9, qword ptr [rdx + 0x30]
	mov	rbx, qword ptr [rdx + 0x38]
	movzx	eax, word ptr [rdx + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 9
	ja	.label_82
	jmp	qword ptr [(rax * 8) + label_141]
.label_994:
	cmp	byte ptr [r13 + 4], 0
	je	.label_82
	mov	rax, qword ptr [r13 + 8]
	mov	r12b, 1
	test	rax, rax
	je	.label_101
	mov	rcx, qword ptr [rdx + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_101
	mov	rcx, qword ptr [rdx + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_101
	mov	r13, rdx
	cmp	byte ptr [rbx], 0x2f
	jne	.label_153
	cmp	byte ptr [rbx + 1], 0
	je	.label_155
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_45
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_161:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, r14
	call	rpl_fts_read
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_101
.label_995:
	mov	rdi, r14
	mov	rsi, rdx
	mov	r15, rdx
	mov	r12, r9
	call	cycle_warning_required
	mov	r9, r12
	mov	rdx, r15
	test	al, al
	je	.label_82
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	r13, qword ptr [rsp + 0x1b0]
	call	error
	jmp	.label_101
.label_996:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_104
	xor	r12d, r12d
	jmp	.label_77
.label_997:
	mov	r12b, 1
	cmp	byte ptr [r13 + 4], 0
	je	.label_101
.label_82:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	cmp	dword ptr [rsp + 0x3c], -1
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_114
	cmp	dword ptr [r13], 2
	jne	.label_114
	cmp	qword ptr [r13 + 8], 0
	je	.label_124
	nop	dword ptr [rax + rax]
.label_114:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_129
	jmp	.label_69
.label_998:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_135
	xor	r12d, r12d
	jmp	.label_77
.label_999:
	cmp	qword ptr [rdx + 0x58], 0
	jne	.label_138
	cmp	qword ptr [rdx + 0x20], 0
	je	.label_140
.label_138:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_143
	xor	r12d, r12d
	jmp	.label_77
.label_104:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	jmp	.label_149
.label_135:
	mov	ebp, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_145
.label_143:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
.label_149:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_145:
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_77
.label_124:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	al, 1
	mov	ebp, dword ptr [rsp + 0x2c]
	je	.label_93
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	eax, dword ptr [rdx + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_69
	mov	esi, dword ptr [r14 + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, r9
	lea	r15, [rsp + 0xe8]
	mov	rcx, r15
	mov	rbx, r9
	call	__fxstatat
	mov	r9, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_69
	mov	r14b, 1
	cmp	byte ptr [r13 + 0x11], 0
	je	.label_84
	xor	ebp, ebp
	jmp	.label_87
	nop	word ptr [rax + rax]
.label_69:
	cmp	ebp, -1
	je	.label_83
	mov	ecx, dword ptr [r15 + 0x1c]
	cmp	ecx, ebp
	sete	al
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_93
	cmp	ecx, ebp
	je	.label_96
	jmp	.label_93
.label_83:
	mov	al, 1
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_93
.label_96:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [r15 + 0x20], eax
	sete	al
.label_93:
	movzx	ecx, word ptr [rdx + 0x70]
	cmp	ecx, 6
	ja	.label_105
	mov	edx, 0x56
	bt	edx, ecx
	jae	.label_105
	mov	rcx, qword ptr [r13 + 8]
	test	rcx, rcx
	je	.label_105
	mov	rdx, qword ptr [r15 + 8]
	cmp	rdx, qword ptr [rcx]
	jne	.label_105
	mov	rdx, qword ptr [r15]
	cmp	rdx, qword ptr [rcx + 8]
	jne	.label_105
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_118
	cmp	byte ptr [rbp + 1], 0
	je	.label_121
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_45
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_90:
	movzx	ebp, byte ptr [rsp + 3]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_105:
	test	al, al
	je	.label_154
	mov	ebx, dword ptr [r14 + 0x2c]
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x10], 0
	je	.label_139
	cmp	dword ptr [rsp + 0x3c], -1
	je	.label_159
	movzx	eax, word ptr [r15 + 0x18]
	and	eax, 0xf000
	mov	ebp, 0x900
	cmp	eax, 0x8000
	je	.label_162
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_159
	mov	ebp, 0x10900
.label_162:
	xor	eax, eax
	mov	edi, ebx
	mov	r13, r9
	mov	rsi, r9
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_169
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 0xd
	jne	.label_170
	mov	ecx, dword ptr [r15 + 0x18]
	mov	eax, 0xf000
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_170
	or	ebp, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsi, r13
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_95
.label_169:
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0x50]
	call	__fxstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_80
	mov	rax, qword ptr [r15 + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_80
	mov	rax, qword ptr [r15]
	cmp	rax, qword ptr [rsp + 0x50]
	jne	.label_80
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	eax, -1
	mov	ebx, 2
	je	.label_73
	cmp	dword ptr [rsp + 0x6c], eax
	jne	.label_80
.label_73:
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_100
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [rsp + 0x70], eax
	jne	.label_80
.label_100:
	mov	edi, r12d
	mov	esi, dword ptr [rsp + 4]
	mov	edx, dword ptr [rsp + 0x24]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_109
.label_80:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_106
.label_154:
	mov	r14b, 1
	xor	ebp, ebp
	mov	r12b, 1
	jmp	.label_77
.label_139:
	mov	r8d, 0x100
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	je	.label_130
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	je	.label_134
	mov	eax, r12d
.label_134:
	mov	r12b, al
	jmp	.label_130
.label_84:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
.label_87:
	lea	r15, [rsp + 0xe8]
	xor	r12d, r12d
	jmp	.label_77
.label_140:
	mov	qword ptr [rdx + 0x20], 1
	mov	rsi, rdx
	mov	edx, 1
	mov	rdi, r14
	call	rpl_fts_set
	mov	r12b, 1
	jmp	.label_101
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_90
.label_155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_161
.label_95:
	mov	eax, dword ptr [r14]
.label_170:
	xor	ebx, ebx
	cmp	eax, 0xd
	setne	bl
	add	ebx, 5
.label_106:
	mov	r9, r13
	add	ebx, -2
	cmp	ebx, 4
	ja	.label_75
	mov	r14b, 1
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	qword ptr [(rbx * 8) + label_74]
.label_1002:
	mov	r14b, 1
	mov	bpl, 1
	mov	r12b, 1
	jmp	.label_77
.label_1003:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rax + 0x2c]
.label_159:
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
.label_130:
	mov	bpl, 1
	test	r12b, 1
	jne	.label_77
.label_1004:
	mov	bpl, 1
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	jne	.label_77
	call	__errno_location
	cmp	dword ptr [rsp + 4], -1
	mov	r13d, dword ptr [rax]
	je	.label_111
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	jmp	.label_99
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
.label_99:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
.label_77:
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	rdx, qword ptr [r13]
	mov	rax, rdx
	shr	rax, 0x20
	cmp	edx, 2
	je	.label_112
	mov	ecx, r12d
	and	cl, 1
	test	bpl, bpl
	je	.label_81
	mov	ebx, r12d
	and	bl, r14b
	mov	r13, qword ptr [rsp + 0x1b0]
	je	.label_81
	cmp	dword ptr [rsp + 4], -1
	je	.label_166
	mov	esi, dword ptr [rsp + 4]
	cmp	dword ptr [r15 + 0x1c], esi
	jne	.label_133
.label_166:
	cmp	dword ptr [rsp + 0x24], -1
	je	.label_81
	mov	esi, dword ptr [rsp + 0x24]
	cmp	dword ptr [r15 + 0x20], esi
	jne	.label_133
	nop	dword ptr [rax]
.label_81:
	test	edx, edx
	jne	.label_112
	test	cl, cl
	movzx	eax, r14b
	lea	r14d, [rax + rax*2 + 1]
	mov	eax, 3
	cmove	r14d, eax
	test	r15, r15
	mov	ebp, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	jne	.label_137
	jmp	.label_146
.label_133:
	movzx	r14d, r14b
	inc	r14d
	test	cl, cl
	mov	eax, 3
	cmove	r14d, eax
.label_137:
	mov	ebx, dword ptr [r15 + 0x1c]
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_150
	mov	rdi, qword ptr [rax]
	jmp	.label_151
.label_150:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_151:
	call	xstrdup
	mov	rbp, rax
	mov	ebx, dword ptr [r15 + 0x20]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_157
	mov	rdi, qword ptr [rax]
	jmp	.label_160
.label_157:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_160:
	mov	r13, qword ptr [rsp + 0x1b0]
	call	xstrdup
	mov	qword ptr [rsp + 0x48], rax
.label_146:
	cmp	r14d, 1
	jne	.label_165
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_71
.label_165:
	mov	rbx, qword ptr [r13 + 0x18]
	mov	r15, qword ptr [r13 + 0x20]
	mov	rdi, rbx
	mov	rsi, r15
	call	user_group_str
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, rbp
	cmove	rdi, rbx
	test	r15, r15
	mov	rsi, qword ptr [rsp + 0x48]
	cmove	rsi, r15
	call	user_group_str
	and	r14b, 7
	cmp	r14b, 4
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_85
	cmp	r14b, 3
	je	.label_88
	cmp	r14b, 2
	jne	.label_89
	test	rbx, rbx
	je	.label_92
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	jmp	.label_79
.label_85:
	test	rbx, rbx
	je	.label_97
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	jmp	.label_79
.label_88:
	test	rax, rax
	je	.label_103
	test	rbx, rbx
	je	.label_127
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	jmp	.label_79
.label_92:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_108
	mov	esi, OFFSET FLAT:label_171
	jmp	.label_79
.label_97:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_110
	mov	esi, OFFSET FLAT:label_147
	jmp	.label_79
.label_103:
	xor	edi, edi
	test	rbx, rbx
	je	.label_113
	mov	esi, OFFSET FLAT:label_116
	jmp	.label_117
.label_127:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_119
	mov	esi, OFFSET FLAT:label_122
	jmp	.label_79
.label_108:
	mov	esi, OFFSET FLAT:label_78
	jmp	.label_79
.label_110:
	mov	esi, OFFSET FLAT:label_123
	jmp	.label_79
.label_113:
	test	r15, r15
	je	.label_131
	mov	esi, OFFSET FLAT:label_132
	jmp	.label_117
.label_119:
	mov	esi, OFFSET FLAT:label_76
.label_79:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x10]
.label_128:
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r15
	call	__printf_chk
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	call	free
.label_71:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	al, byte ptr [r13 + 4]
.label_112:
	test	al, al
	mov	r14, qword ptr [rsp + 0x40]
	jne	.label_152
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x30]
	call	rpl_fts_set
.label_152:
	and	r12b, 1
	movzx	ebp, byte ptr [rsp + 3]
.label_101:
	and	r12b, bpl
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	test	rdx, rdx
	mov	ebp, r12d
	jne	.label_120
.label_115:
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_163
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	je	.label_164
	xor	r12d, r12d
	jmp	.label_163
.label_164:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_163:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_70
	mov	ebx, dword ptr [rbp]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_70:
	mov	eax, r12d
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_89:
	call	abort
.label_75:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_175
	test	r14, r14
	je	.label_172
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [r15 + rax + 2]
	call	xmalloc
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	word ptr [rax], 0x3a
	lea	rdi, [rax + 1]
	mov	rsi, r14
	call	stpcpy
	jmp	.label_173
.label_175:
	xor	r15d, r15d
	test	r14, r14
	je	.label_173
	mov	rdi, r14
	jmp	.label_174
.label_173:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_172:
	mov	rdi, rbx
.label_174:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ed0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_181
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_178
	cmp	dword ptr [rbp], 0x20
	jne	.label_178
.label_181:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_177
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_176
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_177:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_176:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_180
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_182:
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
	ja	.label_182
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403000

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_183
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_185
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_185
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_188
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_188:
	mov	rbx, r14
.label_185:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_183:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_184
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0
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
	#Procedure 0x4030f0
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
	#Procedure 0x403100
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
	#Procedure 0x403110
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
	#Procedure 0x403150
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
	#Procedure 0x403170
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_189
	test	rdx, rdx
	je	.label_189
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_189:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0
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
	#Procedure 0x403220

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
.label_252:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_247
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_269]
.label_966:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_258
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_265
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_967:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_275
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_275
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_288:
	cmp	r14, r11
	jae	.label_211
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_211:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_288
.label_275:
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
	jmp	.label_205
.label_959:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_205
.label_962:
	mov	al, 1
.label_960:
	mov	r12b, 1
.label_963:
	test	r12b, 1
	mov	cl, 1
	je	.label_302
	mov	ecx, eax
.label_302:
	mov	al, cl
.label_961:
	test	r12b, 1
	jne	.label_304
	test	r11, r11
	je	.label_272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_272:
	mov	r14d, 1
	jmp	.label_306
.label_304:
	xor	r14d, r14d
.label_306:
	mov	ecx, OFFSET FLAT:label_265
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_205
.label_964:
	test	r12b, 1
	jne	.label_194
	test	r11, r11
	je	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_198:
	mov	r14d, 1
	jmp	.label_201
.label_965:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_204
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_205
.label_194:
	xor	r14d, r14d
.label_201:
	mov	eax, OFFSET FLAT:label_204
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_205:
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
	jmp	.label_228
	nop	dword ptr [rax]
.label_289:
	inc	rsi
.label_228:
	cmp	rbp, -1
	je	.label_267
	cmp	rsi, rbp
	jne	.label_268
	jmp	.label_270
	nop	word ptr cs:[rax + rax]
.label_267:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_276
.label_268:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_279
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_281
	cmp	rbp, -1
	jne	.label_281
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
.label_281:
	cmp	rbx, rbp
	jbe	.label_294
.label_279:
	xor	r8d, r8d
.label_202:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_291
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_298]
.label_1019:
	test	rsi, rsi
	jne	.label_192
	jmp	.label_221
	nop	word ptr cs:[rax + rax]
.label_294:
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
	jne	.label_309
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_202
	jmp	.label_200
.label_309:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_202
.label_1023:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_213
	test	rsi, rsi
	jne	.label_217
	cmp	rbp, 1
	je	.label_221
	xor	r13d, r13d
	jmp	.label_196
.label_1012:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_226
	cmp	byte ptr [rsp + 6], 0
	jne	.label_227
	cmp	r12d, 2
	jne	.label_232
	mov	eax, r9d
	and	al, 1
	jne	.label_232
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_239:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_215
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_215:
	add	r14, 3
	mov	r9b, 1
.label_232:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_253
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_253:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_255
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_255
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_255
	cmp	r14, r11
	jae	.label_222
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_222:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_293
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_293:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_196
.label_1013:
	mov	bl, 0x62
	jmp	.label_284
.label_1014:
	mov	cl, 0x74
	jmp	.label_286
.label_1015:
	mov	bl, 0x76
	jmp	.label_284
.label_1016:
	mov	bl, 0x66
	jmp	.label_284
.label_1017:
	mov	cl, 0x72
	jmp	.label_286
.label_1020:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_287
	cmp	byte ptr [rsp + 6], 0
	jne	.label_193
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
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_301
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_301:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_303
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	add	r14, 3
	xor	r9d, r9d
.label_287:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_196
.label_1021:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_307
	cmp	r12d, 2
	jne	.label_192
	cmp	byte ptr [rsp + 6], 0
	je	.label_192
	jmp	.label_193
.label_1022:
	cmp	r12d, 2
	jne	.label_195
	cmp	byte ptr [rsp + 6], 0
	jne	.label_193
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_212
.label_291:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_208
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
.label_209:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_231
	test	r8b, r8b
	je	.label_231
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_196
.label_213:
	test	rsi, rsi
	jne	.label_254
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_254
.label_221:
	mov	dl, 1
.label_1018:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_193
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_196:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_262
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_203
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_262:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_246
.label_203:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_273
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_212
	jmp	.label_285
	nop	dword ptr [rax]
.label_246:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_285
	jmp	.label_212
.label_273:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_285
.label_226:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_289
	xor	r15d, r15d
	jmp	.label_192
.label_195:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_286
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_212
.label_286:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_193
.label_284:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_196
	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_227
	cmp	r12d, 2
	jne	.label_305
	mov	eax, r9d
	and	al, 1
	jne	.label_305
	cmp	r14, r11
	jae	.label_264
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_264:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_310
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_310:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	r14, 3
	mov	r9b, 1
.label_305:
	cmp	r14, r11
	jae	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_251:
	inc	r14
	jmp	.label_206
.label_208:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_210
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_210:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_296:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_237
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_241
	cmp	rbp, -2
	je	.label_245
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_242
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_229:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_190
	bt	rsi, rdx
	jb	.label_266
.label_190:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_229
.label_242:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_250
	xor	r13d, r13d
.label_250:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_296
	jmp	.label_209
.label_255:
	xor	r13d, r13d
	jmp	.label_196
.label_254:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_196
.label_307:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_192
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_192
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_192
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_297
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_199
	cmp	byte ptr [rsp + 6], 0
	jne	.label_238
	cmp	r14, r11
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_248
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_248:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_308
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_308:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_197
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_197:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_196
.label_192:
	xor	eax, eax
.label_217:
	xor	r13d, r13d
	jmp	.label_196
.label_231:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_290:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_207:
	test	r8b, r8b
	je	.label_218
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_219
	cmp	r14, r11
	jae	.label_224
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_224:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_219
	nop	dword ptr [rax]
.label_218:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_200
	cmp	r12d, 2
	jne	.label_236
	mov	eax, r9d
	and	al, 1
	jne	.label_236
	cmp	r14, r11
	jae	.label_240
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_243
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_243:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_249
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_236:
	cmp	r14, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_259
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_259:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_277
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_277:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_219:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_212
	test	r9b, 1
	je	.label_280
	mov	ebx, eax
	and	bl, 1
	jne	.label_280
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_283
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_283:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_235:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_280:
	cmp	r14, r11
	jae	.label_290
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_212:
	test	r9b, 1
	je	.label_299
	and	al, 1
	jne	.label_299
	cmp	r14, r11
	jae	.label_300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_300:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	add	r14, 2
	xor	r9d, r9d
.label_299:
	mov	ebx, r15d
.label_206:
	cmp	r14, r11
	jae	.label_261
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_261:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_289
.label_241:
	xor	r13d, r13d
.label_237:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_209
.label_245:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_214
	mov	rsi, qword ptr [rsp + 0x58]
.label_263:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_295
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_263
	xor	r13d, r13d
	jmp	.label_209
.label_214:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_209
.label_295:
	xor	r13d, r13d
	jmp	.label_209
.label_297:
	xor	r13d, r13d
	jmp	.label_196
.label_199:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_196
	nop	dword ptr [rax + rax]
.label_270:
	mov	rcx, rsi
.label_276:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_225
	or	al, dl
	je	.label_230
.label_225:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_233
	or	al, dl
	jne	.label_233
	test	r10b, 1
	jne	.label_244
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_233
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_252
.label_233:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_257
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_260
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_260
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_274:
	cmp	r14, r11
	jae	.label_271
	mov	byte ptr [rcx + r14], al
.label_271:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_274
	jmp	.label_260
.label_227:
	mov	qword ptr [rsp + 0x20], rbp
.label_200:
	mov	rdx, rdi
	jmp	.label_278
.label_193:
	mov	qword ptr [rsp + 0x20], rbp
.label_266:
	mov	rdx, rdi
	mov	eax, 2
.label_220:
	mov	qword ptr [rsp + 0x38], rax
.label_278:
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
.label_311:
	mov	r14, rax
.label_191:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_230:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_278
.label_244:
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
	jmp	.label_311
.label_257:
	mov	rcx, qword ptr [rsp + 8]
.label_260:
	cmp	r14, r11
	jae	.label_191
	mov	byte ptr [rcx + r14], 0
	jmp	.label_191
.label_238:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_220
.label_247:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404030
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
	#Procedure 0x404100
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_313
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_316:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_316
.label_313:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_317
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_314], OFFSET FLAT:slot0
.label_317:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_315
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_315:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404290
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042a0

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
	js	.label_318
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_321
	cmp	r12d, 0x7fffffff
	je	.label_323
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
	jne	.label_319
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_319:
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
.label_321:
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
	jbe	.label_324
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_320
.label_324:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_322
	mov	rdi, r14
	call	free
.label_322:
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
.label_320:
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
.label_318:
	call	abort
.label_323:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404460
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470
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
	#Procedure 0x404490
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
	#Procedure 0x4044b0

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
	je	.label_325
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
.label_325:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404520
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
	je	.label_326
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
.label_326:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404590

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
	je	.label_327
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
.label_327:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404600
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
	je	.label_328
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
.label_328:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404670
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x4046e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x404750

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x4047b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
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
	#Procedure 0x404810

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
	je	.label_332
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
.label_332:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_333
	test	rdx, rdx
	je	.label_333
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_333:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404920
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_334
	test	rdx, rdx
	je	.label_334
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_334:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404990
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_335
	test	rsi, rsi
	je	.label_335
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_335:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a00
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_329]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_330]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_331]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_336
	test	rsi, rsi
	je	.label_336
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
.label_336:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80
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
	#Procedure 0x404aa0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0

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
	#Procedure 0x404ae0

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
	jne	.label_342
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_338
	cmp	ecx, 0x55
	jne	.label_337
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_337
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_337
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_337
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_337
	cmp	byte ptr [rax + 5], 0
	jne	.label_337
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_344
	mov	eax, OFFSET FLAT:label_345
	jmp	.label_341
.label_338:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_337
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_337
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_337
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_337
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_337
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_337
	cmp	byte ptr [rax + 7], 0
	je	.label_343
.label_337:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_204
	mov	eax, OFFSET FLAT:label_265
.label_341:
	cmove	rax, rcx
.label_342:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_343:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_339
	mov	eax, OFFSET FLAT:label_340
	jmp	.label_341
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bb0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_45
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_346
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_346:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00

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
	je	.label_347
	mov	edx, OFFSET FLAT:label_357
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_363
.label_347:
	mov	edx, OFFSET FLAT:label_364
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
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
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_352
	jmp	qword ptr [(r12 * 8) + label_353]
.label_1096:
	add	rsp, 8
	jmp	.label_351
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
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
	jmp	.label_351
.label_1097:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
.label_1098:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
.label_1099:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
.label_1100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
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
	jmp	.label_351
.label_1101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
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
	jmp	.label_351
.label_1102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
	jmp	.label_351
.label_1103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
	jmp	.label_351
.label_1105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
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
	jmp	.label_351
.label_1104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
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
.label_351:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_366:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_366
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_371
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_374
.label_371:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_374:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_370
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_372
.label_370:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_372:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_368
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_369
.label_368:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_369:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_379
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_367
.label_379:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_367:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_377
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_378
.label_377:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_378:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_375
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_376
.label_375:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_376:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_373:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405180

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_380
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_380:
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
	#Procedure 0x405210
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_382
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_385
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	je	.label_385
.label_386:
	pop	rbx
	ret	
.label_385:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_387
	test	rax, rax
	je	.label_388
.label_387:
	pop	rbx
	ret	
.label_388:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_389
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_390
	test	rbx, rbx
	jne	.label_390
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_390:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_391
	test	rax, rax
	je	.label_389
.label_391:
	pop	rbx
	ret	
.label_389:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405340

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_392
	test	rbx, rbx
	jne	.label_392
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_392:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	je	.label_393
.label_394:
	pop	rbx
	ret	
.label_393:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405370
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_398
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_400
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_395
.label_398:
	test	rcx, rcx
	jne	.label_401
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_401:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_396
.label_395:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_397
	test	rbx, rbx
	jne	.label_397
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_397:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_399
	test	rax, rax
	je	.label_400
.label_399:
	pop	rbx
	ret	
.label_400:
	call	xalloc_die
.label_396:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_402
	test	rax, rax
	je	.label_403
.label_402:
	pop	rbx
	ret	
.label_403:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_406
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_408
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_405
	call	free
	xor	eax, eax
	jmp	.label_407
.label_406:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_404
	mov	qword ptr [rsi], rbx
.label_405:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	je	.label_404
.label_407:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
.label_408:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0
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
	je	.label_410
	test	r14, r14
	je	.label_409
.label_410:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_409:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_411
	call	rpl_calloc
	test	rax, rax
	je	.label_411
	pop	rcx
	ret	
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510

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
	je	.label_412
	test	r15, r15
	je	.label_413
.label_412:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_413:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405550

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
	je	.label_415
	test	r15, r15
	je	.label_414
.label_415:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_414:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4055d0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_418
	pop	rcx
	ret	
.label_418:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_417
	mov	edi, OFFSET FLAT:label_419
	mov	esi, OFFSET FLAT:label_420
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_421
	call	__assert_fail
.label_417:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_422
	cmp	ecx, 0x11
	jne	.label_423
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_422:
	ret	
.label_423:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405630

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_433
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_424:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_424
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_426
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_442
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_441
	cmp	eax, 0x22
	jne	.label_426
	mov	ebx, 1
.label_441:
	test	r14, r14
	jne	.label_444
	jmp	.label_429
.label_442:
	test	r14, r14
	je	.label_426
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_426
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_426
.label_444:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_429
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_432
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_428
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_428
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_428
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_435
	cmp	eax, 0x44
	je	.label_435
	cmp	eax, 0x69
	jne	.label_428
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_428
.label_435:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_428:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_432
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_440]
.label_1108:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_443
.label_432:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_430
.label_1109:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_434
.label_1110:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_443
.label_1112:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_443
.label_1106:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_425
.label_1107:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_443:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_431
.label_1111:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_431
.label_1113:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_439
.label_1114:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_439:
	movzx	eax, dl
.label_434:
	and	eax, 1
.label_431:
	mov	rbp, rsi
.label_427:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_429:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_430:
	mov	r13d, ebx
.label_426:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1115:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_425:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_427
.label_1116:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_427
.label_433:
	mov	edi, OFFSET FLAT:label_436
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_438
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_445
	test	rsi, rsi
	mov	ecx, 1
	je	.label_446
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_446
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_445:
	mov	ecx, 1
.label_446:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r12d, esi
	mov	r14, rdi
	cmp	r12d, 0x1000
	jae	.label_458
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_458
	test	r12b, 0x12
	je	.label_458
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_468
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r12d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r12b, 2
	cmove	eax, r12d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r14]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_477
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_471:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_471
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_477:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_460
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_457
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_474
	mov	byte ptr [r14 + 0x108], 0
	mov	qword ptr [r14 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x50], rax
	mov	qword ptr [r14 + 0x38], rbp
	mov	dword ptr [r14 + 0x40], 0
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x72], 0
	mov	word ptr [r14 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x58], -1
	mov	qword ptr [r14 + 0x68], -1
.label_457:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_461
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_461:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_453
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_476:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_451
	cmp	rbp, 3
	jb	.label_451
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_451
	nop	word ptr cs:[rax + rax]
.label_467:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_451
	dec	rbp
	cmp	rbp, 1
	ja	.label_467
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_456
	mov	qword ptr [rsp + 0x40], rbx
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_472
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_470
	nop	dword ptr [rax]
.label_472:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_470:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_459
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_454
.label_459:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_454
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_454:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_476
	test	r13, r13
	je	.label_453
	cmp	rbx, 2
	jb	.label_453
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_453:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_462
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_465
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_466
	jmp	.label_473
.label_458:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_469:
	xor	eax, eax
.label_468:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_460:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_475
.label_456:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_473
.label_474:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_447
.label_462:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_473:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_455
	nop	dword ptr [rax + rax]
.label_463:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_464
	call	closedir
.label_464:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_463
.label_455:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_447:
	mov	rdi, rbp
.label_475:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_469
.label_465:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_473
	mov	rdi, rax
	call	cycle_check_init
.label_466:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_449
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_450
	mov	edi, OFFSET FLAT:label_448
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_452
.label_450:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_448
	xor	eax, eax
	call	openat_safer
.label_452:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_449
	or	byte ptr [rbx + 0x48], 4
.label_449:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_468
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_480
	test	al, 1
	je	.label_480
	mov	dl, 1
.label_480:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_482
	and	eax, 2
	jne	.label_482
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_483
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_478
.label_482:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_483
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_478
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_486
	mov	eax, dword ptr [r14]
.label_478:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_481:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_483:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_487
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_481
	cmp	ecx, 0x4000
	jne	.label_484
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_479
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_479
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_479:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_481
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_485
	cmp	dl, 0x2e
	jne	.label_481
	test	ecx, 0xff0000
	jne	.label_481
.label_485:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_481
.label_487:
	mov	ax, 8
	jmp	.label_481
.label_484:
	mov	ax, 3
	jmp	.label_481
.label_486:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406390

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_495
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_492
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_492
	mov	qword ptr [r13], rdi
	jmp	.label_496
.label_495:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_496:
	test	rbx, rbx
	je	.label_499
	nop	dword ptr [rax]
.label_488:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_488
	mov	rdi, qword ptr [r13]
.label_499:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_497
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_490
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_491
	mov	rdx, rsi
	jmp	.label_493
.label_492:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_498
.label_491:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_489:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_489
.label_493:
	test	rcx, rcx
	je	.label_490
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_494:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_494
.label_490:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_497:
	mov	qword ptr [rcx + 0x10], 0
.label_498:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406510

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_503
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_504
	nop	word ptr cs:[rax + rax]
.label_501:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_510
	mov	rbx, qword ptr [rdi + 8]
.label_510:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_501
	jmp	.label_515
.label_504:
	mov	rbx, rdi
.label_515:
	mov	rdi, rbx
	call	free
.label_503:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_517
	nop	word ptr cs:[rax + rax]
.label_500:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_509
	call	closedir
.label_509:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_500
.label_517:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_507
	xor	ebp, ebp
	test	al, 4
	jne	.label_508
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_514
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_514:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_516
	jmp	.label_508
.label_507:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_508
	call	close
.label_516:
	test	eax, eax
	je	.label_508
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_508:
	lea	rbx, [r14 + 0x60]
	jmp	.label_513
	nop	dword ptr [rax + rax]
.label_506:
	mov	edi, eax
	call	close
.label_513:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_502
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_506
	jmp	.label_513
.label_502:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_505
	call	hash_free
.label_505:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_511
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_512
	call	hash_free
	jmp	.label_512
.label_511:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_512:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_518
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_518:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_522
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_522
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_560
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_566
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_570
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_556
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_519
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_523
	mov	edi, OFFSET FLAT:label_448
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_534
.label_560:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_522
.label_566:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_543
.label_570:
	lea	r13, [r12 + 0x70]
.label_543:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_520
	cmp	edx, 4
	je	.label_545
	test	al, 0x40
	je	.label_563
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_545
.label_563:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_552
	test	ah, 0x10
	jne	.label_555
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_536
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_565
	nop	word ptr cs:[rax + rax]
.label_520:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_540
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_576
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_520
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_524
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_533
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_533
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_573
	mov	edi, OFFSET FLAT:label_448
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_558
.label_551:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_565:
	test	rax, rax
	jne	.label_551
	jmp	.label_536
.label_545:
	test	ecx, 0x20000
	je	.label_554
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_554:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_559
	nop	dword ptr [rax]
.label_569:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_562
	call	closedir
.label_562:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_569
	mov	qword ptr [r14 + 8], 0
.label_559:
	mov	word ptr [r12 + 0x70], 6
.label_528:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_522
.label_540:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_574
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_529
	mov	rdi, r12
	call	free
	jmp	.label_524
.label_556:
	mov	r15, r12
	jmp	.label_537
.label_576:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_542
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_522
.label_519:
	mov	r15, r12
	jmp	.label_537
.label_542:
	test	ax, 0x102
	je	.label_546
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_553
	call	hash_free
	jmp	.label_553
.label_555:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_564:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_567
	call	closedir
.label_567:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_564
	mov	qword ptr [r14 + 8], 0
.label_552:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_571
.label_536:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_524
.label_571:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_522
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_528
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_528
	mov	word ptr [r13], 7
	jmp	.label_528
.label_523:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_448
	xor	eax, eax
	call	openat_safer
.label_534:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_539
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_537
.label_529:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_522
	mov	r15, qword ptr [r12 + 8]
.label_574:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_547
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_549
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_550
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_557
	test	al, 1
	jne	.label_530
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_561
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_568
.label_547:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_522
.label_539:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_537
.label_546:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_553:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_538
	cmp	rbx, r12
	jne	.label_541
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_538
.label_541:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_538:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_575
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_537
.label_575:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_537
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_537
.label_550:
	mov	rdi, r14
	call	restore_initial_cwd
.label_568:
	test	eax, eax
	je	.label_530
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_530
.label_557:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_527
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_521
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_527
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_527
.label_573:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_448
	xor	eax, eax
	call	openat_safer
.label_558:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_526
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_533
.label_526:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_533:
	mov	word ptr [r15 + 0x74], 3
.label_524:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_537:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_525
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_532
	cmp	rax, 2
	jne	.label_549
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_548
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_548
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_532
	cmp	rax, 0x58465342
	je	.label_532
.label_548:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_525
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_532
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_532
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_532:
	mov	ax, word ptr [r15 + 0x70]
.label_525:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_522
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_544
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_544:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_522
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_522
.label_521:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_531
	cmp	esi, -0x64
	jne	.label_549
.label_531:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_572
	mov	edi, eax
	call	close
.label_572:
	mov	dword ptr [r14 + 0x2c], ebp
.label_527:
	mov	edi, dword ptr [rbx]
	call	close
.label_530:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_535
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_535
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_535:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_522:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_549:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e10

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_578
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_579
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_578:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_577
	cmp	qword ptr [rax + 0x58], 0
	js	.label_577
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_579
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_577
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_577
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_577:
	add	rsp, 0x18
	ret	
.label_579:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ea0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_587
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_593
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_593
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_593:
	test	eax, eax
	sete	r14b
	jmp	.label_597
.label_587:
	xor	r14d, r14d
.label_597:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_598
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_582
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_582
	and	eax, 0x200
	je	.label_582
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_582
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_582:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_591
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_592
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_596
.label_598:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_580
	and	eax, 0x200
	je	.label_580
	mov	edi, r13d
	call	close
	jmp	.label_580
.label_592:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_596:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_580
.label_591:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_588
	test	rbx, rbx
	je	.label_590
	cmp	byte ptr [rbx], 0x2e
	jne	.label_590
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_590
	cmp	byte ptr [rbx + 2], 0
	jne	.label_590
.label_588:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_599
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_595
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_595
	mov	eax, dword ptr [r15 + 0x48]
.label_590:
	test	ah, 2
	jne	.label_594
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_581
.label_594:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_583
	cmp	esi, -0x64
	jne	.label_584
.label_583:
	test	r14b, r14b
	je	.label_585
	test	al, 4
	jne	.label_586
	test	esi, esi
	js	.label_586
	mov	edi, esi
	jmp	.label_589
.label_595:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_599:
	mov	ebp, 0xffffffff
.label_581:
	test	r13d, r13d
	jns	.label_580
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_580
.label_585:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_586
	mov	edi, eax
.label_589:
	call	close
.label_586:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_580:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_584:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407090

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14d, esi
	mov	r15, rdi
	mov	rbp, qword ptr [r15]
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], r15
	je	.label_629
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_634
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	lea	r12, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_638
.label_629:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_645
	mov	edi, dword ptr [r15 + 0x2c]
.label_645:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_648
	test	al, 1
	je	.label_651
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_648
.label_651:
	mov	edx, 0x20000
.label_648:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_653
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_655
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_660
.label_634:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_653:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_630
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_613
.label_655:
	test	byte ptr [r12 + 1], 1
	je	.label_660
	mov	rdi, r15
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r15
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_670
.label_660:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_615
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_600
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_600
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_605
	cmp	rax, 0x9fa0
	je	.label_600
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_600
	cmp	rax, 0x5346414f
	je	.label_600
	jmp	.label_615
.label_670:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_613
.label_605:
	test	rax, rax
	je	.label_600
	cmp	rax, 0x6969
	jne	.label_615
.label_600:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_616
.label_615:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_620
.label_616:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_625
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_625:
	test	ebx, ebx
	js	.label_632
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_626
.label_632:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_636
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_636:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_642
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_642
	call	close
.label_642:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_638
.label_620:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_650
.label_626:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_650:
	mov	r14d, r13d
	mov	rbp, rax
.label_638:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_654
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_654:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, qword ptr [r15 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x98], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
	xor	ebx, ebx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r12
.label_664:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_672
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_659:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_606
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_609
	cmp	byte ptr [r13], 0x2e
	jne	.label_609
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_612
	test	al, al
	je	.label_614
	jmp	.label_609
	nop	word ptr [rax + rax]
.label_612:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_609
.label_614:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_659
	jmp	.label_644
	nop	word ptr cs:[rax + rax]
.label_609:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_676
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	cmp	rbx, qword ptr [rsp + 0x88]
	jae	.label_633
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_646
	nop	dword ptr [rax]
.label_633:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_635
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_663
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_656
	mov	rdx, qword ptr [rsp + 0x58]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x30]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x48]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_658
.label_656:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_658:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_646:
	add	rbx, rax
	jb	.label_666
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	test	byte ptr [rax], 4
	jne	.label_677
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_673
	nop	dword ptr [rax]
.label_677:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_673:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_603
	mov	eax, edx
	and	eax, 0x400
	jne	.label_603
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_662
	nop	
.label_603:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_622
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_622:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_623
	mov	eax, dword ptr [(rcx * 4) + label_601]
.label_623:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_662:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_604
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_604:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_639
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_639
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_639
	cmp	rax, 0x1021994
	je	.label_639
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_639
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_639:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_664
	jmp	.label_624
.label_606:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_652
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_652:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_624
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_624
.label_644:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_672:
	mov	rbx, qword ptr [rsp + 0x28]
.label_624:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_649
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_665
	nop	word ptr [rax + rax]
.label_669:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_665:
	test	rcx, rcx
	je	.label_668
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_669
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_669
.label_668:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_649
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_607:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_674
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_674:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_602
	mov	rdx, qword ptr [rcx + 8]
.label_602:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_607
.label_649:
	test	byte ptr [r12], 4
	je	.label_611
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_611:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_617
	test	al, al
	je	.label_617
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_618
	test	rbx, rbx
	jne	.label_617
.label_618:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_621
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_561
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_627
.label_621:
	mov	rdi, r15
	call	restore_initial_cwd
.label_627:
	test	eax, eax
	je	.label_617
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_630
	xor	ebx, ebx
.label_637:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_608
	call	closedir
.label_608:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_637
	jmp	.label_630
.label_617:
	test	rbx, rbx
	je	.label_640
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_641
	cmp	rbx, 2
	jb	.label_643
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_643
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_630
.label_640:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_647
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_647
	movzx	eax, ax
	cmp	eax, 7
	je	.label_647
	mov	word ptr [rbp + 0x70], 6
.label_647:
	xor	ebx, ebx
	test	r14, r14
	je	.label_630
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_661:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_657
	call	closedir
.label_657:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_661
	jmp	.label_630
.label_641:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_630
.label_643:
	mov	rbx, r14
	jmp	.label_630
.label_666:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_667
	nop	word ptr cs:[rax + rax]
.label_675:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_671
	call	closedir
.label_671:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_675
.label_667:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_613
.label_635:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_610
.label_663:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_610:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_676:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_619
.label_628:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_631
	call	closedir
.label_631:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_628
.label_619:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_613:
	xor	ebx, ebx
.label_630:
	mov	rax, rbx
	add	rsp, 0xa8
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
	#Procedure 0x407ad0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_682
	test	ah, 2
	jne	.label_679
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_680
.label_679:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_684
	mov	edi, eax
	call	close
.label_684:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_682:
	xor	eax, eax
.label_680:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_683
	nop	word ptr [rax + rax]
.label_678:
	mov	edi, eax
	call	close
.label_683:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_681
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_678
	jmp	.label_683
.label_681:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b50

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_687
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_686
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_685
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_686
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_688
.label_687:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_685
	mov	qword ptr [r14], r14
.label_688:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_685
.label_686:
	xor	ebp, ebp
.label_685:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_689
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_689:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c20
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_699
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_691
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_701
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_691
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_691
.label_699:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_691
.label_701:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_695
	nop	dword ptr [rax]
.label_705:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_702
	call	closedir
.label_702:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_705
.label_695:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_690
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_690:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_698
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_698
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_698
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_692
	mov	edi, OFFSET FLAT:label_448
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_703
.label_698:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_691:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_692:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_448
	xor	eax, eax
	call	openat_safer
.label_703:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_706
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_696
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_700
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_691
.label_706:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_691
.label_696:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_704
	cmp	esi, -0x64
	jne	.label_694
.label_704:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_693
	mov	edi, eax
	call	close
.label_693:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_697
.label_700:
	mov	edi, r15d
	call	close
.label_697:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_691
.label_694:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dd0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407de0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_707
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_707:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e00

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_708
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_709
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_710
.label_709:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_713
	mov	rax, qword ptr [rax + 8]
	jmp	.label_708
.label_713:
	mov	r12b, 1
	mov	r14, rbp
.label_710:
	xor	eax, eax
	test	r15d, r15d
	js	.label_708
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_708
	test	r12b, r12b
	je	.label_711
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_711
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_712
	cmp	rax, rbp
	je	.label_711
	call	abort
.label_712:
	mov	rdi, rbp
	call	free
.label_711:
	mov	rax, qword ptr [rsp]
.label_708:
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
	.align	32
	#Procedure 0x407f00

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f10

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f20

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f50

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
	je	.label_714
	cmp	r15, -2
	jb	.label_714
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_714
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_714:
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
	#Procedure 0x407fb0

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
	jne	.label_716
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_715
	test	cl, cl
	jne	.label_715
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_715
.label_716:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_715
	call	__errno_location
	mov	dword ptr [rax], 0
.label_715:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408010

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x408020

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_717
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_719
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_719
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_718
.label_719:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_720
	mov	al, 1
	test	rdx, rdx
	je	.label_718
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_720:
	xor	eax, eax
.label_718:
	ret	
.label_717:
	push	rax
	mov	edi, OFFSET FLAT:label_721
	mov	esi, OFFSET FLAT:label_722
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_723
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408090

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_724
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_724:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_725
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_727
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_726
.label_727:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_726:
	mov	edx, dword ptr [rax]
.label_725:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408160

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_729
	cmp	byte ptr [rax], 0x43
	jne	.label_731
	cmp	byte ptr [rax + 1], 0
	je	.label_728
.label_731:
	mov	esi, OFFSET FLAT:label_730
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_729
.label_728:
	xor	ebx, ebx
.label_729:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081a0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081b0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081c0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_734
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_733
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_735:
	cmp	qword ptr [rcx], 0
	je	.label_737
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_732:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_732
	cmp	rdi, rax
	cmova	rax, rdi
.label_737:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_736
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_738:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_738
	cmp	rdi, rax
	cmova	rax, rdi
.label_736:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_735
.label_733:
	test	r8, r8
	je	.label_734
	cmp	qword ptr [rcx], 0
	je	.label_734
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_739:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_739
	cmp	rdx, rax
	cmova	rax, rdx
.label_734:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408290
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_745
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_747
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_742:
	cmp	qword ptr [rax], 0
	je	.label_743
	mov	rdx, rax
	nop	dword ptr [rax]
.label_746:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_746
	inc	r10
.label_743:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_748
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_740:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_740
	inc	r10
.label_748:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_742
	jmp	.label_744
.label_747:
	xor	r10d, r10d
.label_744:
	test	r8, r8
	je	.label_745
	cmp	qword ptr [rax], 0
	je	.label_745
	nop	dword ptr [rax]
.label_749:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_749
	inc	r10
.label_745:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_750
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_741
.label_750:
	xor	eax, eax
.label_741:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408350
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
	jae	.label_756
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_758
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_759:
	cmp	qword ptr [rax], 0
	je	.label_751
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_765:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_765
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_751:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_753
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_754:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_754
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_753:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_759
.label_758:
	test	r8, r8
	je	.label_756
	cmp	qword ptr [rax], 0
	je	.label_756
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_752:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_752
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_756:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_757
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_755
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_761]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_762]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_763]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_764
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_760
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
	.align	32
	#Procedure 0x4084c0

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
	jae	.label_770
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_767
	add	rbx, rax
	je	.label_767
	cmp	rsi, r12
	je	.label_769
	xor	r15d, r15d
	nop	
.label_768:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_766
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_767
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_768
.label_769:
	mov	r15, r12
	jmp	.label_767
.label_766:
	mov	r15, qword ptr [rbx]
.label_767:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_770:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408540
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_771
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_774
	nop	word ptr cs:[rax + rax]
.label_773:
	add	rcx, 0x10
.label_774:
	cmp	rcx, rdx
	jae	.label_772
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_773
.label_771:
	ret	
.label_772:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408580
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
	jae	.label_778
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_779:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_777
	test	rdx, rdx
	jne	.label_779
	jmp	.label_775
.label_777:
	test	rdx, rdx
	je	.label_775
	mov	rax, qword ptr [rdx]
	jmp	.label_776
.label_775:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_780:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_776
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_780
.label_776:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_778:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408610
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_781
	xor	eax, eax
.label_783:
	cmp	qword ptr [r9], 0
	je	.label_782
	test	r9, r9
	je	.label_782
	mov	r8, r9
	nop	
.label_784:
	cmp	rax, rdx
	jae	.label_781
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_784
	mov	r8, qword ptr [rdi + 8]
.label_782:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_783
.label_781:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408660
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
	jae	.label_785
	xor	ebx, ebx
.label_789:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_787
	test	r13, r13
	je	.label_787
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_785
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_786:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_788
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_786
	jmp	.label_785
	nop	dword ptr [rax]
.label_788:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_787:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_789
.label_785:
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
	.align	32
	#Procedure 0x408700
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_790
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_791:
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
	jne	.label_791
.label_790:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_792]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408760

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
	je	.label_798
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_803
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_807]
	jbe	.label_796
	movss	xmm1, dword ptr [rip + label_795]
	ucomiss	xmm1, xmm0
	jbe	.label_796
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_801]
	jbe	.label_796
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_796
	addss	xmm1, dword ptr [rip + label_807]
	ucomiss	xmm0, xmm1
	jbe	.label_796
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_797]
	ucomiss	xmm2, xmm0
	jb	.label_796
	ucomiss	xmm0, xmm1
	jbe	.label_796
.label_803:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_805
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_806
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_793
.label_806:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_793:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_799]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_800]
	jae	.label_796
.label_805:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_802
	nop	
.label_808:
	add	rbx, 2
.label_802:
	cmp	rbx, -1
	je	.label_796
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_794
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_804:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_794
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_804
.label_794:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_808
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_796
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_796
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_796
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
	jmp	.label_798
.label_796:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_798:
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
	.align	32
	#Procedure 0x408980

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
	.align	32
	#Procedure 0x408990

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089a0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_809
	nop	word ptr cs:[rax + rax]
.label_812:
	add	r14, 0x10
.label_809:
	cmp	r14, rax
	jae	.label_811
	cmp	qword ptr [r14], 0
	je	.label_812
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_813
	nop	word ptr cs:[rax + rax]
.label_815:
	test	cl, 1
	je	.label_814
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_814:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_815
.label_813:
	test	cl, cl
	je	.label_810
	mov	rdi, qword ptr [r14]
	call	rax
.label_810:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_812
.label_811:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a50

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_818
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_818
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_823
	nop	
.label_816:
	add	r15, 0x10
.label_823:
	cmp	r15, rax
	jae	.label_818
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_816
	test	r15, r15
	je	.label_816
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_817
.label_821:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_817:
	test	rbx, rbx
	jne	.label_821
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_816
.label_818:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_822
	nop	
.label_819:
	add	r15, 0x10
.label_822:
	cmp	r15, rax
	jae	.label_825
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_819
	nop	word ptr cs:[rax + rax]
.label_820:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_820
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_819
.label_825:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_824
.label_826:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_826
.label_824:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b20

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
	jne	.label_839
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_843
	cvtsi2ss	xmm0, rsi
	jmp	.label_829
.label_843:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_829:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_799]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_800]
	jae	.label_832
.label_839:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_835
	nop	dword ptr [rax + rax]
.label_845:
	add	rbx, 2
.label_835:
	cmp	rbx, -1
	je	.label_832
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_827
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_842:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_827
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_842
.label_827:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_845
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_832
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_836
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_832
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
	je	.label_833
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_836
.label_833:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_844
	nop	
.label_837:
	add	r12, 0x10
.label_844:
	cmp	r12, r15
	jae	.label_834
	cmp	qword ptr [r12], 0
	je	.label_837
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_840
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_838:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_831
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_830
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_841
	nop	word ptr [rax + rax]
.label_830:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_841:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_838
.label_840:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_837
.label_834:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_828
	mov	rdi, qword ptr [rsp]
	call	free
.label_832:
	xor	ebp, ebp
.label_836:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_831:
	call	abort
.label_828:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0

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
	jae	.label_854
	nop	word ptr cs:[rax + rax]
.label_856:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_853
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_857
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_851:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_848
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_850
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_859
	nop	dword ptr [rax]
.label_850:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_859:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_851
	mov	r13, qword ptr [r14]
.label_857:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_853
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_846
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_849
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_852
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_855
.label_849:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_858
.label_852:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_847
.label_855:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_858:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_853:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_856
	mov	al, 1
.label_854:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_847:
	xor	eax, eax
	jmp	.label_854
.label_848:
	call	abort
.label_846:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f20

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
	je	.label_873
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_873
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_860
	cmp	rsi, r14
	je	.label_886
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_879
	mov	rax, qword ptr [r12]
.label_885:
	test	rax, rax
	jne	.label_890
	jmp	.label_860
.label_886:
	mov	rax, r14
.label_890:
	xor	ebp, ebp
	test	r15, r15
	je	.label_863
	mov	qword ptr [r15], rax
	jmp	.label_863
.label_879:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_860
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_880:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_875
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_878
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_880
.label_860:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_882
	cvtsi2ss	xmm1, rax
	jmp	.label_887
.label_882:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_887:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_861
	cvtsi2ss	xmm0, rcx
	jmp	.label_870
.label_861:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_870:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_864
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_877
	ucomiss	xmm2, dword ptr [rip + label_807]
	jbe	.label_871
	movss	xmm3, dword ptr [rip + label_795]
	ucomiss	xmm3, xmm2
	jbe	.label_871
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_801]
	jbe	.label_871
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_871
	addss	xmm3, dword ptr [rip + label_807]
	ucomiss	xmm2, xmm3
	jbe	.label_871
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_797]
	ucomiss	xmm5, xmm4
	jb	.label_871
	ucomiss	xmm4, xmm3
	ja	.label_869
.label_871:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_874]
	jmp	.label_869
.label_877:
	mov	eax, OFFSET FLAT:default_tuning
.label_869:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_864
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_883
	mulss	xmm0, xmm2
.label_883:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_800]
	jae	.label_863
	movss	xmm1, dword ptr [rip + label_799]
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
	je	.label_863
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_873
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_864
	cmp	rsi, r14
	mov	rax, r14
	je	.label_876
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_884
	mov	rax, qword ptr [r12]
.label_876:
	test	rax, rax
	jne	.label_866
.label_864:
	cmp	qword ptr [r12], 0
	je	.label_888
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_889
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_862
.label_888:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_867]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_868
.label_889:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_863
.label_862:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_868:
	mov	ebp, 1
.label_863:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_875:
	mov	rax, r14
	jmp	.label_885
.label_878:
	mov	rax, qword ptr [rbp]
	jmp	.label_885
.label_884:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_864
	lea	rbp, [rbx + rbp + 8]
.label_881:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_865
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_872
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_881
	jmp	.label_864
.label_865:
	mov	rax, r14
	jmp	.label_876
.label_872:
	mov	rax, qword ptr [rbp]
	jmp	.label_876
.label_873:
	call	abort
.label_866:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409260

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
	je	.label_891
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_891:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409290

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
	jae	.label_899
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_892
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_905
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_907
	mov	r14, qword ptr [r13]
.label_905:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_910
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_898
.label_907:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_892
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_902:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_900
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_901
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_902
	jmp	.label_892
.label_910:
	mov	qword ptr [r13], 0
	jmp	.label_898
.label_900:
	mov	rcx, rax
	jmp	.label_909
.label_901:
	mov	r14, qword ptr [rcx]
.label_909:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_898:
	xor	r12d, r12d
	test	r14, r14
	je	.label_892
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_895
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_897
	cvtsi2ss	xmm1, rax
	jmp	.label_903
.label_897:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_903:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_904
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_908
.label_904:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_908:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_895
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_893
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_807]
	jbe	.label_896
	movss	xmm4, dword ptr [rip + label_795]
	ucomiss	xmm4, xmm3
	jbe	.label_896
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_896
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_801]
	jbe	.label_896
	movss	xmm4, dword ptr [rip + label_807]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_896
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_797]
	ucomiss	xmm5, xmm3
	jb	.label_896
	ucomiss	xmm3, xmm4
	ja	.label_911
.label_896:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_911
.label_893:
	mov	eax, OFFSET FLAT:default_tuning
.label_911:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_895
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_894
	mulss	xmm0, dword ptr [rax + 8]
.label_894:
	movss	xmm1, dword ptr [rip + label_799]
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
	jne	.label_895
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_906
	nop	word ptr cs:[rax + rax]
.label_912:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_912
.label_906:
	mov	qword ptr [r15 + 0x48], 0
.label_895:
	mov	r12, r14
.label_892:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_899:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409530

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409560

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409570

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_913
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_913:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095b0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_914
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_915
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_915:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_914:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4095e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_42
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_916
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409610

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_917
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_917:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_918
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_919
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_920
.label_919:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_920:
	mov	ecx, dword ptr [rax]
.label_918:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4096d0

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
	js	.label_922
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_921
	mov	dword ptr [r14], ebp
	jmp	.label_922
.label_921:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_922:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409720

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
	ja	.label_923
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
	jmp	.label_924
.label_923:
	mov	eax, ebx
.label_924:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409770

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_925
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_927
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_925
.label_927:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_925
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_926
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_926:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_925:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097f0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_948
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_948:
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
	ja	.label_930
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_941
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_929
	test	esi, esi
	jne	.label_930
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_931
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_932
.label_930:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_933
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_929
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_940
.label_941:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_928
.label_929:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_945
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_946
.label_945:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_946:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_947:
	call	fcntl
.label_928:
	mov	ebp, eax
.label_934:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_940:
	cmp	eax, 6
	jne	.label_933
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_936
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_938
.label_933:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_939
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_943
.label_931:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_932:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_947
.label_936:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_938:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_937
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_935
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_935
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_934
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_942
.label_935:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_934
.label_939:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_943:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_928
.label_937:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_942:
	test	al, al
	je	.label_934
	test	ebp, ebp
	js	.label_934
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_944
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_934
.label_944:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_934
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_949
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_949
	test	byte ptr [rbx + 1], 1
	je	.label_949
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_949:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ad0

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
	jne	.label_950
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_950
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_951
.label_950:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_951:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_952
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_952:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409b40

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
	.align	32
	#Procedure 0x409b60

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
