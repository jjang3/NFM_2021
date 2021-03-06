	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_12
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_78
	call	setlocale
	mov	edi, OFFSET FLAT:label_36
	mov	esi, OFFSET FLAT:label_82
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_36
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [rip + hard_dir_link],  0
	mov	byte ptr [rip + verbose],  0
	mov	byte ptr [rip + interactive],  0
	mov	byte ptr [rip + remove_existing_files],  0
	mov	byte ptr [rip + symbolic_link],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	r12, [rsp + 0x28]
	mov	r13d, 0xf000
	xor	r15d, r15d
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_37
.label_953:
	mov	byte ptr [rip + hard_dir_link],  1
	mov	al, r14b
	nop	word ptr cs:[rax + rax]
.label_37:
	mov	r14d, eax
	mov	edx, OFFSET FLAT:label_58
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x77
	ja	.label_62
	mov	al, 1
	jmp	qword ptr [(rcx * 8) + label_63]
.label_954:
	mov	byte ptr [rip + logical],  1
	mov	al, r14b
	jmp	.label_37
.label_963:
	test	r15, r15
	jne	.label_68
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 1
	mov	rdx, r12
	call	__xstat
	test	eax, eax
	jne	.label_38
	mov	eax, dword ptr [rsp + 0x40]
	and	eax, r13d
	cmp	eax, 0x4000
	jne	.label_76
	mov	r15, qword ptr [rip + optarg]
	mov	al, r14b
	jmp	.label_37
.label_955:
	mov	byte ptr [rip + logical],  0
	mov	al, r14b
	jmp	.label_37
.label_956:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	mov	al, r14b
	jmp	.label_37
.label_957:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	al, r14b
	jmp	.label_37
.label_958:
	mov	byte ptr [rip + remove_existing_files],  1
	mov	byte ptr [rip + interactive],  0
	mov	al, r14b
	jmp	.label_37
.label_959:
	mov	byte ptr [rip + remove_existing_files],  0
	mov	byte ptr [rip + interactive],  1
	mov	al, r14b
	jmp	.label_37
.label_960:
	mov	byte ptr [rip + dereference_dest_dir_symlinks],  1
	mov	al, r14b
	jmp	.label_37
.label_961:
	mov	byte ptr [rip + relative],  1
	mov	al, r14b
	jmp	.label_37
.label_962:
	mov	byte ptr [rip + symbolic_link],  1
	mov	al, r14b
	jmp	.label_37
.label_964:
	mov	byte ptr [rip + verbose],  1
	mov	al, r14b
	jmp	.label_37
.label_952:
	movsxd	rax, dword ptr [rip + optind]
	movsxd	r13, ebp
	sub	r13, rax
	test	r13d, r13d
	jle	.label_66
	mov	dl, byte ptr [rip + relative]
	cmp	dl, 1
	jne	.label_74
	mov	cl, byte ptr [rip + symbolic_link]
	test	cl, cl
	je	.label_75
.label_74:
	lea	r12, [rbx + rax*8]
	test	r14b, r14b
	je	.label_40
	test	r15, r15
	jne	.label_79
	xor	ebx, ebx
	cmp	r13d, 2
	jne	.label_81
	mov	r14d, 0xffffffff
	mov	r13d, 2
	jmp	.label_33
.label_40:
	test	r15, r15
	jne	.label_39
	cmp	r13d, 2
	jge	.label_39
	mov	r14d, 0xffffffff
	mov	ebp, 0xffffff9c
	mov	ebx, OFFSET FLAT:label_77
	jmp	.label_33
.label_39:
	test	r15, r15
	setne	al
	cmp	r13d, 2
	setne	bpl
	mov	r14d, 0xffffffff
	or	bpl, al
	jne	.label_45
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	cmp	byte ptr [rip + symbolic_link],  1
	jne	.label_47
	test	dl, dl
	jne	.label_45
	mov	esi, 0xffffff9c
	mov	rdi, rax
	mov	rdx, rcx
	call	symlinkat
	jmp	.label_56
.label_47:
	movzx	r8d, byte ptr [rip + logical]
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rax
	call	linkat
.label_56:
	test	eax, eax
	js	.label_61
	mov	r13d, 2
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_33
.label_61:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	js	.label_45
	cmp	r14d, 0x14
	je	.label_45
	cmp	r14d, 0x11
	jne	.label_67
.label_45:
	test	r15, r15
	mov	rbx, r15
	jne	.label_71
	mov	rbx, qword ptr [r12 + r13*8 - 8]
.label_71:
	mov	al, byte ptr [rip + dereference_dest_dir_symlinks]
	test	al, al
	mov	eax, 0x230000
	mov	edx, 0x210000
	cmovne	edx, eax
	mov	edi, 0xffffff9c
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
	mov	ecx, eax
	test	eax, eax
	js	.label_80
	cmp	r15, 1
	sbb	r13d, 0
	mov	ebp, ecx
	jmp	.label_33
.label_80:
	mov	r15, rbx
	mov	r13d, 2
	xor	ebx, ebx
	test	bpl, 1
	mov	ebp, ecx
	jne	.label_34
.label_33:
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	je	.label_41
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	xget_version
.label_41:
	mov	dword ptr [rip + backup_type],  eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	set_simple_backup_suffix
	test	rbx, rbx
	je	.label_48
	mov	r15d, ebp
	mov	r14, rbx
	cmp	r13d, 1
	jle	.label_69
	cmp	byte ptr [rip + remove_existing_files],  1
	jne	.label_52
	cmp	dword ptr [rip + backup_type],  3
	je	.label_52
	mov	al, byte ptr [rip + symbolic_link]
	xor	al, 1
	test	al, 1
	je	.label_52
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rip + dest_set],  rax
	test	rax, rax
	jne	.label_52
	call	xalloc_die
.label_48:
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	mov	esi, 0xffffff9c
	mov	rcx, rdx
	mov	r8d, r14d
	call	do_link
	mov	ebx, eax
	jmp	.label_70
.label_69:
	mov	bl, 1
	jne	.label_70
.label_52:
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rdi, qword ptr [r12]
	call	last_component
	mov	rdi, r14
	mov	rsi, rax
	lea	rdx, [rsp + 0x28]
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, 0xffffffff
	mov	esi, r15d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	mov	rdi, rbp
	call	free
	add	r12, 8
	dec	r13d
	jne	.label_44
.label_70:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_67:
	mov	r13d, 2
	xor	ebx, ebx
	jmp	.label_33
.label_62:
	cmp	eax, 0xffffff7d
	je	.label_42
	cmp	eax, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_51:
	mov	edi, 1
	call	usage
.label_42:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_28
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_53
	mov	r9d, OFFSET FLAT:label_54
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	jmp	.label_50
.label_38:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
.label_35:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	jmp	.label_50
.label_81:
	xor	edi, edi
	cmp	r13d, 1
	jg	.label_55
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	jmp	.label_59
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
.label_50:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_55:
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
.label_59:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_34:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	r14d, r8d
	mov	r15, rcx
	mov	r12, rdx
	mov	ebp, esi
	mov	qword ptr [rsp + 8], rdi
	mov	al, byte ptr [rip + logical]
	xor	ebx, ebx
	test	al, al
	sete	r13b
	test	r14d, r14d
	jns	.label_95
	cmp	byte ptr [rip + symbolic_link],  1
	jne	.label_110
	mov	al, byte ptr [rip + relative]
	test	al, al
	je	.label_114
	mov	dword ptr [rsp + 0x1c], ebp
	mov	qword ptr [rsp + 0x10], r15
	mov	r14d, 0xffffffff
	mov	ecx, 1
	jmp	.label_117
.label_110:
	movzx	r8d, al
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, ebp
	mov	rcx, r12
	call	linkat
	jmp	.label_129
.label_114:
	mov	rdi, qword ptr [rsp + 8]
	mov	esi, ebp
	mov	rdx, r12
	call	symlinkat
.label_129:
	xor	r14d, r14d
	test	eax, eax
	jns	.label_95
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_95:
	test	r14d, r14d
	mov	al, byte ptr [rip + symbolic_link]
	jne	.label_134
	mov	rcx, qword ptr [rip + dest_set]
	test	rcx, rcx
	jne	.label_134
	xor	r13d, r13d
	test	al, 1
	mov	ebx, 0
	je	.label_143
	jmp	.label_111
.label_134:
	mov	qword ptr [rsp + 0x10], r15
	mov	ecx, 1
	test	al, 1
	jne	.label_91
	mov	bl, r13b
	shl	ebx, 8
	lea	rcx, [rsp + 0x38]
	mov	edi, 1
	mov	esi, 0xffffff9c
	mov	rdx, qword ptr [rsp + 8]
	mov	r8d, ebx
	call	__fxstatat
	xor	ecx, ecx
	test	eax, eax
	je	.label_91
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_108
.label_91:
	mov	dword ptr [rsp + 0x1c], ebp
	xor	r13d, r13d
	test	r14d, r14d
	je	.label_112
.label_117:
	mov	al, byte ptr [rip + symbolic_link]
	test	al, al
	jne	.label_116
	mov	al, byte ptr [rip + hard_dir_link]
	test	al, al
	jne	.label_116
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x4000
	jne	.label_116
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_108:
	mov	rdx, rbx
	call	error
	jmp	.label_85
.label_116:
	mov	dword ptr [rsp + 0x34], ecx
	xor	ebx, ebx
	cmp	byte ptr [rip + relative],  1
	jne	.label_138
	mov	qword ptr [rsp + 0x28], r12
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	r12, rax
	mov	esi, 2
	mov	rdi, r12
	call	canonicalize_filename_mode
	mov	r15, rax
	mov	esi, 2
	mov	rdi, qword ptr [rsp + 8]
	call	canonicalize_filename_mode
	mov	rbp, rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_86
	test	rbp, rbp
	je	.label_86
	mov	edi, 0x1000
	call	xmalloc
	mov	r13, rax
	mov	ecx, 0x1000
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r13
	call	relpath
	test	al, al
	je	.label_139
	mov	rbx, r13
	jmp	.label_86
.label_138:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_101
.label_112:
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_104
.label_139:
	mov	rdi, r13
	call	free
	xor	ebx, ebx
.label_86:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_101
	mov	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	rbx, rax
	mov	rbp, rbx
.label_101:
	mov	r15b, 1
	mov	al, byte ptr [rip + remove_existing_files]
	test	al, al
	jne	.label_126
	mov	al, byte ptr [rip + interactive]
	test	al, al
	jne	.label_126
	xor	r13d, r13d
	cmp	dword ptr [rip + backup_type],  0
	setne	r15b
	je	.label_130
.label_126:
	mov	qword ptr [rsp + 8], rbp
	lea	rcx, [rsp + 0xc8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	ebp, dword ptr [rsp + 0x1c]
	mov	esi, ebp
	mov	rdx, r12
	call	__fxstatat
	test	eax, eax
	je	.label_146
	mov	qword ptr [rsp + 0x20], rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	cmp	ebx, 2
	mov	r15d, 0
	je	.label_90
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
.label_132:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_96
.label_146:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe0]
	cmp	eax, 0x4000
	jne	.label_142
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_96:
	call	error
.label_102:
	mov	rbp, r12
	jmp	.label_85
.label_142:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, qword ptr [rip + dest_set]
	lea	rdx, [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	seen_file
	test	al, al
	je	.label_137
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
.label_136:
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rbp, r12
	jmp	.label_85
.label_137:
	cmp	dword ptr [rip + backup_type],  0
	je	.label_88
	mov	al, byte ptr [rip + symbolic_link]
	test	al, al
	je	.label_89
	jmp	.label_94
.label_88:
	cmp	byte ptr [rip + remove_existing_files],  1
	jne	.label_94
.label_89:
	cmp	dword ptr [rsp + 0x34], 0
	je	.label_97
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	call	__xstat
	test	eax, eax
	jne	.label_94
.label_97:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0xd0]
	jne	.label_94
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 0xc8]
	jne	.label_94
	cmp	qword ptr [rsp + 0x48], 1
	je	.label_109
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, ebp
	mov	rcx, r12
	call	same_nameat
	test	al, al
	je	.label_94
.label_109:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_136
.label_94:
	xor	r13d, r13d
	test	r14d, r14d
	js	.label_140
	cmp	r14d, 0x11
	jne	.label_90
.label_140:
	mov	qword ptr [rsp + 0x28], r12
	cmp	byte ptr [rip + interactive],  1
	jne	.label_145
	mov	r13, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbp, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	__fprintf_chk
	mov	r12b, 1
	call	yesno
	test	al, al
	je	.label_102
.label_145:
	mov	edx, dword ptr [rip + backup_type]
	xor	r13d, r13d
	test	edx, edx
	je	.label_105
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	edi, ebx
	mov	r12, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	find_backup_file_name
	mov	r13, rax
	mov	edi, ebx
	mov	rsi, r12
	mov	edx, ebx
	mov	rcx, r13
	call	renameat
	test	eax, eax
	je	.label_90
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	cmp	ebx, 2
	mov	r15d, 0
	je	.label_90
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	jmp	.label_132
.label_105:
	mov	r12, qword ptr [rsp + 0x28]
.label_90:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 8]
.label_130:
	cmp	byte ptr [rip + symbolic_link],  1
	jne	.label_133
	movzx	ecx, r15b
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, r12
	mov	r8d, r14d
	call	force_symlinkat
	jmp	.label_144
.label_133:
	movzx	r8d, byte ptr [rip + logical]
	shl	r8d, 0xa
	mov	dword ptr [rsp], r14d
	movzx	r9d, r15b
	mov	edi, 0xffffff9c
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x1c]
	mov	rcx, r12
	call	force_linkat
.label_144:
	mov	r14d, eax
	mov	qword ptr [rsp + 8], rbp
.label_104:
	mov	r15, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rip + symbolic_link]
	test	r14d, r14d
	jle	.label_87
	test	al, 1
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x20], rbx
	je	.label_93
	cmp	r14d, 0x24
	je	.label_98
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_98
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_107
.label_87:
	test	al, 1
	jne	.label_111
.label_143:
	mov	rdi, qword ptr [rip + dest_set]
	lea	rdx, [rsp + 0x38]
	mov	rsi, r15
	call	record_file
.label_111:
	mov	bpl, 1
	cmp	byte ptr [rip + verbose],  1
	jne	.label_113
	mov	qword ptr [rsp + 0x20], rbx
	mov	r14d, OFFSET FLAT:label_78
	test	r13, r13
	mov	ebx, OFFSET FLAT:label_78
	je	.label_100
	mov	rbp, r12
	sub	rbp, r15
	xor	r12d, r12d
	test	rbp, rbp
	mov	rbx, r13
	jle	.label_127
	mov	rdi, r13
	call	strlen
	lea	rdi, [rbp + rax + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsi, r13
	call	strcpy
	mov	r12, rbx
.label_127:
	mov	edi, 2
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r14, rax
	mov	rdi, r12
	call	free
	mov	ebx, OFFSET FLAT:label_148
.label_100:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rbp, rax
	mov	al, byte ptr [rip + symbolic_link]
	test	al, al
	mov	eax, 0x2d
	mov	r15d, 0x3d
	cmovne	r15d, eax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_99
	xor	eax, eax
	mov	r8, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	r9d, r15d
	call	__printf_chk
	mov	rbx, qword ptr [rsp + 0x20]
	mov	bpl, 1
	jmp	.label_113
.label_93:
	lea	eax, [r14 - 0x11]
	cmp	eax, 0xe
	ja	.label_115
	jmp	qword ptr [(rax * 8) + label_118]
.label_979:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	jmp	.label_107
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	jmp	.label_107
.label_115:
	cmp	r14d, 0x7a
	jne	.label_122
.label_978:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	jmp	.label_107
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
.label_107:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	test	r13, r13
	je	.label_120
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, r13
	mov	edx, edi
	mov	rcx, qword ptr [rsp + 0x28]
	call	renameat
	test	eax, eax
	je	.label_84
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_103
.label_120:
	xor	r13d, r13d
	mov	rbx, qword ptr [rsp + 0x20]
	xor	ebp, ebp
	jmp	.label_113
.label_84:
	xor	ebp, ebp
.label_103:
	mov	rbx, qword ptr [rsp + 0x20]
.label_113:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
.label_85:
	mov	eax, ebp
	add	rsp, 0x158
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
	#Procedure 0x403080

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
	jns	.label_149
	mov	edi, r13d
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_150
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_149:
	cmp	r14d, 0x11
	jne	.label_150
	xor	bpl, 1
	jne	.label_150
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_154
	lea	r15, [rsp + 0x20]
	jmp	.label_151
.label_154:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_152
.label_151:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_152
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
	je	.label_155
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_156
.label_152:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_150
.label_155:
	mov	edi, ebx
	mov	rsi, r15
	mov	ebp, ebx
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_153
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_153:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r15
	call	unlinkat
.label_156:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_150
	mov	rdi, r15
	call	free
.label_150:
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
	.align	32
	#Procedure 0x4031f0

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
	.align	32
	#Procedure 0x403210

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
	jns	.label_160
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_157
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_160:
	cmp	ebp, 0x11
	jne	.label_157
	xor	bl, 1
	jne	.label_157
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_162
	lea	r12, [rsp + 0x10]
	jmp	.label_163
.label_162:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_159
.label_163:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_159
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_161
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_158
.label_159:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_157
.label_161:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_158
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_158:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_157
	mov	rdi, r12
	call	free
.label_157:
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
	.align	32
	#Procedure 0x403350

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403370

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	cmp	byte ptr [rsi + 1], 0x2f
	sete	al
	cmp	byte ptr [rdi + 1], 0x2f
	mov	r14, rcx
	mov	r12, rdx
	sete	cl
	xor	ebx, ebx
	xor	cl, al
	jne	.label_172
	mov	dl, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rdi
	mov	eax, 0
	je	.label_168
	xor	ecx, ecx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_180:
	movzx	ebx, byte ptr [rdi + rcx]
	test	bl, bl
	je	.label_178
	cmp	dl, bl
	jne	.label_178
	lea	rbx, [rcx + 1]
	cmp	dl, 0x2f
	cmove	eax, ebx
	movzx	edx, byte ptr [rsi + rcx + 1]
	test	dl, dl
	mov	rcx, rbx
	jne	.label_180
	mov	rcx, rbx
	add	rcx, rdi
.label_168:
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_184
	cmp	cl, 0x2f
	je	.label_184
	jmp	.label_185
.label_178:
	cmp	dl, 0x2f
	jne	.label_185
	test	bl, bl
	jne	.label_185
	mov	ebx, ecx
.label_184:
	mov	eax, ebx
.label_185:
	test	eax, eax
	je	.label_190
	cdqe	
	lea	rcx, [rdi + rax]
	cmp	byte ptr [rsi + rax], 0x2f
	lea	rdx, [rsi + rax + 1]
	lea	rbx, [rsi + rax]
	cmove	rbx, rdx
	cmp	byte ptr [rdi + rax], 0x2f
	lea	r15, [rdi + rax + 1]
	cmovne	r15, rcx
	cmp	byte ptr [rbx], 0
	je	.label_191
	test	r12, r12
	je	.label_170
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_169
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_174
.label_190:
	xor	ebx, ebx
	jmp	.label_172
.label_191:
	cmp	byte ptr [r15], 0
	mov	ebx, OFFSET FLAT:label_77
	cmovne	rbx, r15
	test	r12, r12
	je	.label_182
	mov	rdi, rbx
	call	strlen
	cmp	rax, r14
	jae	.label_187
	inc	rax
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rax
	call	memcpy
	jmp	.label_165
.label_170:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_166
	call	fputs_unlocked
	xor	r12d, r12d
.label_174:
	xor	ebp, ebp
	jmp	.label_169
.label_173:
	inc	rbx
.label_169:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_171
	test	al, al
	jne	.label_173
	jmp	.label_175
.label_171:
	test	r12, r12
	je	.label_176
	mov	al, 1
	cmp	r14, 4
	jb	.label_177
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_181
.label_176:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_183
	call	fputs_unlocked
	xor	r12d, r12d
.label_181:
	xor	eax, eax
.label_177:
	and	bpl, 1
	or	bpl, al
	jmp	.label_173
.label_175:
	cmp	byte ptr [r15], 0
	je	.label_189
	test	r12, r12
	je	.label_192
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_193
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_186
.label_182:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_165:
	mov	bl, 1
	jmp	.label_172
.label_192:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_167
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_188
.label_193:
	mov	bpl, 1
.label_186:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_179
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_188:
	xor	ebx, ebx
.label_179:
	or	bpl, bl
.label_189:
	mov	bl, 1
	test	bpl, 1
	je	.label_172
.label_187:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	call	error
.label_172:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_195
	mov	edi, OFFSET FLAT:label_198
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_196
	test	rbx, rbx
	je	.label_197
.label_195:
	mov	eax, OFFSET FLAT:label_196
	cmp	byte ptr [rbx], 0
	je	.label_197
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_196
	cmove	rax, rbx
.label_197:
	mov	qword ptr [rip + simple_backup_suffix],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403610

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
	jne	.label_209
	mov	edi, OFFSET FLAT:label_198
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_196
	test	rbx, rbx
	je	.label_206
	mov	edi, OFFSET FLAT:label_196
	cmp	byte ptr [rbx], 0
	je	.label_206
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:label_196
	cmove	rdi, rbx
.label_206:
	mov	qword ptr [rip + simple_backup_suffix],  rdi
.label_209:
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
	je	.label_211
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
.label_217:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcpy
	cmp	r12d, 1
	jne	.label_202
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	mov	dword ptr [rsp + 8], r12d
	je	.label_215
	call	rewinddir
	mov	rdi, qword ptr [rsp]
	jmp	.label_218
.label_215:
	movzx	ebp, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x40]
	mov	rsi, r13
	lea	rcx, [rsp + 0xc]
	call	opendirat
	mov	rdi, rax
	test	rdi, rdi
	je	.label_225
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
.label_218:
	mov	rax, rdi
	mov	qword ptr [rsp], rax
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_230
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
.label_224:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_203
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_203
	mov	rsi, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rbx + rsi + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_203
	lea	rcx, [rbx + rsi + 0x13]
	cmp	al, 0x39
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_213
	lea	rcx, [rbx + rsi + 0x17]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_220:
	cmp	al, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	edx, eax
	add	edx, -0x30
	inc	rbp
	cmp	edx, 0xa
	jb	.label_220
	inc	rbp
	jmp	.label_223
.label_213:
	mov	ebp, 1
.label_223:
	cmp	al, 0x7e
	jne	.label_226
	lea	rbx, [rbx + rsi + 0x15]
	cmp	byte ptr [rbx + rbp + 1], 0
	jne	.label_226
	cmp	qword ptr [rsp + 0x30], rbp
	jb	.label_222
	jne	.label_226
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcmp
	test	eax, eax
	jg	.label_226
.label_222:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x30], rcx
	lea	r15, [rax + rcx]
	cmp	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], rdx
	jae	.label_229
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
	jne	.label_205
	jmp	.label_200
.label_229:
	mov	rax, r14
.label_205:
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
	jmp	.label_216
.label_207:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_216:
	cmp	cl, 0x39
	je	.label_207
	inc	cl
	mov	byte ptr [rax], cl
.label_226:
	mov	r15, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_203:
	mov	rdi, qword ptr [rsp]
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_224
	mov	r13, r14
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x38]
	jmp	.label_227
.label_225:
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
.label_227:
	cmp	ecx, 1
	mov	qword ptr [rsp], rax
	je	.label_228
	cmp	ecx, 2
	je	.label_230
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_201
	jmp	.label_200
	nop	dword ptr [rax + rax]
.label_230:
	cmp	dword ptr [rsp + 8], 2
	jne	.label_228
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
.label_228:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_210
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_212
	test	r12d, r12d
	js	.label_214
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
	jmp	.label_219
.label_210:
	mov	eax, 0xff
	jmp	.label_212
.label_214:
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
.label_219:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	rax, rdx
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_212:
	cmp	rax, rbp
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rcx, [r13 + rcx]
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_201
.label_199:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_201:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	r12d, dword ptr [rsp + 8]
	mov	r13, r14
	je	.label_204
	mov	edx, dword ptr [rsp + 0xc]
	test	edx, edx
	jns	.label_208
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_208:
	xor	r8d, r8d
	cmp	r12d, 1
	setne	r8b
	mov	rax, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, r15
	call	renameatu
	test	eax, eax
	je	.label_204
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_217
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_221
	call	closedir
.label_221:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_231
.label_204:
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_211
	call	closedir
	jmp	.label_211
.label_200:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_231:
	xor	r13d, r13d
.label_211:
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
	.align	32
	#Procedure 0x403bf0

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_232
	pop	rcx
	ret	
.label_232:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c10
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_233
	cmp	byte ptr [rsi], 0
	je	.label_233
	push	rax
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + backup_types]
	add	rsp, 8
.label_233:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_234
	cmp	byte ptr [rsi], 0
	je	.label_234
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_237
.label_234:
	mov	edi, OFFSET FLAT:label_235
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_236
	cmp	byte ptr [rax], 0
	je	.label_236
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_238
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_237:
	call	__xargmatch_internal
	mov	ecx, dword ptr [(rax * 4) + backup_types]
.label_236:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cc0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14d, esi
	mov	r13, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_288
	test	r13, r13
	je	.label_288
	mov	al, byte ptr [r13]
	cmp	al, 0x2f
	je	.label_295
	test	al, al
	jne	.label_297
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_241
.label_288:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_241:
	xor	ebp, ebp
.label_259:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_295:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_249
.label_297:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_259
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_263
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_249
.label_263:
	mov	rbp, r8
.label_249:
	mov	al, byte ptr [r13]
	xor	r15d, r15d
	test	al, al
	je	.label_277
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x58], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x5c], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x34], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x54], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x38], r13
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	mov	dword ptr [rsp + 0xc], ecx
	xor	ebx, ebx
.label_255:
	mov	qword ptr [rsp + 0x10], r15
.label_300:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_256:
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_272:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_239
	nop	dword ptr [rax]
.label_266:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_266
	lea	r14, [rsi - 1]
.label_239:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_247
	nop	word ptr cs:[rax + rax]
.label_254:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_247:
	test	al, al
	je	.label_253
	cmp	al, 0x2f
	jne	.label_254
.label_253:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_257
	cmp	r15, 2
	jne	.label_260
	cmp	dl, 0x2e
	mov	r15d, 2
	jne	.label_262
	cmp	byte ptr [rsi], 0x2e
	mov	r15d, 2
	jne	.label_262
	cmp	r12, rcx
	jbe	.label_268
	jmp	.label_270
	nop	
.label_257:
	cmp	byte ptr [r14], 0x2e
	mov	r15d, 1
	jne	.label_262
.label_268:
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_272
	jmp	.label_275
.label_270:
	dec	r12
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_280
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_281
.label_280:
	test	al, al
	jne	.label_256
	jmp	.label_275
.label_260:
	test	r15, r15
	je	.label_275
.label_262:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_289
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_289:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_291
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdi
	jmp	.label_293
.label_291:
	sub	r12, rdi
	sub	r8, rdi
	lea	rbp, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	rbp, rax
	add	rbp, r8
	mov	rsi, rbp
	call	xrealloc
	add	rbp, rax
	mov	qword ptr [rsp + 0x18], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x28], rbp
.label_293:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x5c], 6
	jne	.label_251
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r14, [rsp + 0x68]
	jmp	.label_258
.label_251:
	cmp	dword ptr [rsp + 0x58], 0
	lea	r14, [rsp + 0x68]
	mov	edi, 1
	jne	.label_265
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__lxstat
	jmp	.label_273
.label_265:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__xstat
.label_273:
	test	eax, eax
	je	.label_276
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_278
	test	al, al
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	je	.label_282
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_258
.label_276:
	mov	eax, dword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
.label_258:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_292
	mov	qword ptr [rsp + 0x48], rbp
	test	rbx, rbx
	jne	.label_296
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	rbx, rax
	test	rbx, rbx
	je	.label_245
.label_296:
	mov	rdi, rbx
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	rdx, r14
	call	seen_file
	test	al, al
	je	.label_250
	cmp	dword ptr [rsp + 0x34], 2
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0xc], eax
	mov	eax, dword ptr [rsp + 0x54]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x48]
	jmp	.label_252
.label_250:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x18]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_274
	call	__errno_location
	cmp	dword ptr [rsp + 0x34], 2
	mov	rbp, qword ptr [rsp + 0x48]
	jne	.label_279
	cmp	dword ptr [rax], 0xc
	je	.label_279
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_284
.label_278:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
.label_290:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_290
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_252:
	and	al, 0xf
	cmp	al, 4
	jne	.label_298
.label_284:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_300
	jmp	.label_243
.label_292:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_246
	cmp	dword ptr [rsp + 0x34], 2
	je	.label_246
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_286
.label_246:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_248
.label_274:
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [rbx + rdx + 1]
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x48]
	je	.label_269
	cmp	rcx, rax
	jbe	.label_285
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xrealloc
	jmp	.label_240
.label_269:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xmalloc
.label_240:
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_283
.label_285:
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
.label_283:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, rbx
	add	rdi, rax
	inc	rdx
	mov	rsi, r13
	mov	r13, rax
	call	memmove
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_294
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_242
.label_294:
	cmp	rbp, rax
	jbe	.label_242
	lea	rax, [r12 + r15 - 1]
.label_244:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_242
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_244
.label_242:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r15, r13
	mov	qword ptr [rsp + 0x38], r13
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x20]
.label_248:
	mov	al, byte ptr [r13]
	test	al, al
	mov	qword ptr [rsp + 0x20], rcx
	jne	.label_255
	jmp	.label_261
.label_275:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_261
.label_277:
	xor	ebx, ebx
.label_261:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_264
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_264:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_271
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_287
.label_271:
	mov	rbp, rdi
.label_287:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	je	.label_259
	mov	rdi, rbx
	call	hash_free
	jmp	.label_259
.label_243:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_261
.label_279:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_267
.label_298:
	cmp	al, 0xd
	jne	.label_259
	jmp	.label_267
.label_282:
	mov	eax, dword ptr [rsp + 0xc]
.label_286:
	mov	dword ptr [rsp + 0xc], eax
.label_267:
	mov	rbp, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	je	.label_299
	mov	rdi, rbx
	call	hash_free
.label_299:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
	jmp	.label_241
.label_245:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404320
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330

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
	je	.label_302
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_302
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_302:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_301
	test	eax, eax
	jne	.label_301
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_301:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_306
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_303
.label_306:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_303:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_311
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_308
	cmp	dword ptr [rbp], 0x20
	jne	.label_308
.label_311:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_310
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_309
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_310:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_309:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_312
	pop	rcx
	ret	
.label_312:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404500
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
.label_314:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_313
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_314
.label_313:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540

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
.label_318:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_315
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_318
.label_315:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_317
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_316
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_316:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_317:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_319:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_319
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_323
	nop	word ptr cs:[rax + rax]
.label_322:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_323:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_322
	test	dl, dl
	je	.label_321
	mov	ecx, esi
	and	cl, 1
	je	.label_320
	xor	esi, esi
.label_320:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_322
.label_321:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404640

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_325:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_324
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_325
.label_324:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404670

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_326
	mov	rbx, rax
.label_326:
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
	.align	32
	#Procedure 0x4046a0

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
	je	.label_327
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
	je	.label_328
	cmp	rax, rbx
	je	.label_327
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_327:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_328:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_329
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
.label_329:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_330
	pop	rcx
	ret	
.label_330:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404780

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
	je	.label_335
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_331
	cmp	byte ptr [r15], 0x2f
	je	.label_331
	mov	r12b, 0x2f
	jmp	.label_332
.label_335:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_332
.label_331:
	xor	r12d, r12d
.label_332:
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
	je	.label_334
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_333
	mov	qword ptr [rax], rbp
.label_333:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_334:
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
	.align	32
	#Procedure 0x404860
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404880
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_339
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_337
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_343:
	cmp	qword ptr [rcx], 0
	je	.label_338
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_336:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_336
	cmp	rdi, rax
	cmova	rax, rdi
.label_338:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_342
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_340:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_340
	cmp	rdi, rax
	cmova	rax, rdi
.label_342:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_343
.label_337:
	test	r8, r8
	je	.label_339
	cmp	qword ptr [rcx], 0
	je	.label_339
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_341:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_341
	cmp	rdx, rax
	cmova	rax, rdx
.label_339:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_349
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_351
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_346:
	cmp	qword ptr [rax], 0
	je	.label_347
	mov	rdx, rax
	nop	dword ptr [rax]
.label_350:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_350
	inc	r10
.label_347:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_352
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_344:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_344
	inc	r10
.label_352:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_346
	jmp	.label_348
.label_351:
	xor	r10d, r10d
.label_348:
	test	r8, r8
	je	.label_349
	cmp	qword ptr [rax], 0
	je	.label_349
	nop	dword ptr [rax]
.label_353:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_353
	inc	r10
.label_349:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_354
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_345
.label_354:
	xor	eax, eax
.label_345:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a10
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
	jae	.label_359
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_363
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_361:
	cmp	qword ptr [rax], 0
	je	.label_355
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_364:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_364
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_355:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_357
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_362:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_362
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_357:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_361
.label_363:
	test	r8, r8
	je	.label_359
	cmp	qword ptr [rax], 0
	je	.label_359
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_356:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_356
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_359:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_360
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_358
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_366]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_367]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_368]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_369
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_365
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
	#Procedure 0x404b80

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
	jae	.label_374
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_371
	add	rbx, rax
	je	.label_371
	cmp	rsi, r12
	je	.label_373
	xor	r15d, r15d
	nop	
.label_372:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_370
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_371
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_372
.label_373:
	mov	r15, r12
	jmp	.label_371
.label_370:
	mov	r15, qword ptr [rbx]
.label_371:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_374:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_375
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_378
	nop	word ptr cs:[rax + rax]
.label_377:
	add	rcx, 0x10
.label_378:
	cmp	rcx, rdx
	jae	.label_376
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_377
.label_375:
	ret	
.label_376:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40
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
	jae	.label_382
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_383:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_381
	test	rdx, rdx
	jne	.label_383
	jmp	.label_379
.label_381:
	test	rdx, rdx
	je	.label_379
	mov	rax, qword ptr [rdx]
	jmp	.label_380
.label_379:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_384:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_380
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_384
.label_380:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_382:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_385
	xor	eax, eax
.label_387:
	cmp	qword ptr [r9], 0
	je	.label_386
	test	r9, r9
	je	.label_386
	mov	r8, r9
	nop	
.label_388:
	cmp	rax, rdx
	jae	.label_385
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_388
	mov	r8, qword ptr [rdi + 8]
.label_386:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_387
.label_385:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
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
	jae	.label_389
	xor	ebx, ebx
.label_393:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_391
	test	r13, r13
	je	.label_391
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_389
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_392
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_390
	jmp	.label_389
	nop	dword ptr [rax]
.label_392:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_391:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_393
.label_389:
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
	#Procedure 0x404dc0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_394
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_395:
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
	jne	.label_395
.label_394:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_396]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

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
	je	.label_402
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_408
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_411]
	jbe	.label_400
	movss	xmm1, dword ptr [rip + label_399]
	ucomiss	xmm1, xmm0
	jbe	.label_400
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_406]
	jbe	.label_400
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_400
	addss	xmm1, dword ptr [rip + label_411]
	ucomiss	xmm0, xmm1
	jbe	.label_400
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_401]
	ucomiss	xmm2, xmm0
	jb	.label_400
	ucomiss	xmm0, xmm1
	jbe	.label_400
.label_408:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_403
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_410
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_397
.label_410:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_397:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_404]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_405]
	jae	.label_400
.label_403:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_407
	nop	
.label_412:
	add	rbx, 2
.label_407:
	cmp	rbx, -1
	je	.label_400
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_398
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_409:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_398
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_409
.label_398:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_412
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_400
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_400
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_400
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
	jmp	.label_402
.label_400:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_402:
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
	#Procedure 0x405040

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
	#Procedure 0x405050

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405060
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_416:
	add	r14, 0x10
.label_413:
	cmp	r14, rax
	jae	.label_415
	cmp	qword ptr [r14], 0
	je	.label_416
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_417
	nop	word ptr cs:[rax + rax]
.label_419:
	test	cl, 1
	je	.label_418
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_418:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_419
.label_417:
	test	cl, cl
	je	.label_414
	mov	rdi, qword ptr [r14]
	call	rax
.label_414:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_416
.label_415:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405110

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_422
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_422
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_428
	nop	
.label_420:
	add	r15, 0x10
.label_428:
	cmp	r15, rax
	jae	.label_422
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_420
	test	r15, r15
	je	.label_420
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_421
.label_426:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_421:
	test	rbx, rbx
	jne	.label_426
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_420
.label_422:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_427
	nop	
.label_423:
	add	r15, 0x10
.label_427:
	cmp	r15, rax
	jae	.label_430
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_423
	nop	word ptr cs:[rax + rax]
.label_424:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_424
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_423
.label_430:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_429
.label_425:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_425
.label_429:
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
	#Procedure 0x4051e0

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
	jne	.label_442
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_446
	cvtsi2ss	xmm0, rsi
	jmp	.label_432
.label_446:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_432:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_404]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_405]
	jae	.label_434
.label_442:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_438
	nop	dword ptr [rax + rax]
.label_449:
	add	rbx, 2
.label_438:
	cmp	rbx, -1
	je	.label_434
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_431
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_445:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_431
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_445
.label_431:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_449
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_434
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_439
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_434
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
	je	.label_436
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_439
.label_436:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_447
	nop	
.label_440:
	add	r12, 0x10
.label_447:
	cmp	r12, r15
	jae	.label_437
	cmp	qword ptr [r12], 0
	je	.label_440
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_443
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_433
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_448
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_444
	nop	word ptr [rax + rax]
.label_448:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_444:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_441
.label_443:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_440
.label_437:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_435
	mov	rdi, qword ptr [rsp]
	call	free
.label_434:
	xor	ebp, ebp
.label_439:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_433:
	call	abort
.label_435:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

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
	jae	.label_458
	nop	word ptr cs:[rax + rax]
.label_460:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_457
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_461
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_455:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_452
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_454
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_463
	nop	dword ptr [rax]
.label_454:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_463:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_455
	mov	r13, qword ptr [r14]
.label_461:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_457
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_450
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_453
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_456
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_459
.label_453:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_462
.label_456:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_451
.label_459:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_462:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_457:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_460
	mov	al, 1
.label_458:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_451:
	xor	eax, eax
	jmp	.label_458
.label_452:
	call	abort
.label_450:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0

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
	je	.label_465
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_465
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_469
	cmp	rsi, r14
	je	.label_477
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_480
	mov	rax, qword ptr [r12]
.label_476:
	test	rax, rax
	jne	.label_482
	jmp	.label_469
.label_477:
	mov	rax, r14
.label_482:
	xor	ebp, ebp
	test	r15, r15
	je	.label_470
	mov	qword ptr [r15], rax
	jmp	.label_470
.label_480:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_469
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_466:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_493
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_464
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_466
.label_469:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_473
	cvtsi2ss	xmm1, rax
	jmp	.label_479
.label_473:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_479:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_483
	cvtsi2ss	xmm0, rcx
	jmp	.label_489
.label_483:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_489:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_471
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_494
	ucomiss	xmm2, dword ptr [rip + label_411]
	jbe	.label_467
	movss	xmm3, dword ptr [rip + label_399]
	ucomiss	xmm3, xmm2
	jbe	.label_467
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_406]
	jbe	.label_467
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_467
	addss	xmm3, dword ptr [rip + label_411]
	ucomiss	xmm2, xmm3
	jbe	.label_467
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_401]
	ucomiss	xmm5, xmm4
	jb	.label_467
	ucomiss	xmm4, xmm3
	ja	.label_475
.label_467:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_474]
	jmp	.label_475
.label_494:
	mov	eax, OFFSET FLAT:default_tuning
.label_475:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_471
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_468
	mulss	xmm0, xmm2
.label_468:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_405]
	jae	.label_470
	movss	xmm1, dword ptr [rip + label_404]
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
	je	.label_470
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_465
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_471
	cmp	rsi, r14
	mov	rax, r14
	je	.label_491
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_485
	mov	rax, qword ptr [r12]
.label_491:
	test	rax, rax
	jne	.label_478
.label_471:
	cmp	qword ptr [r12], 0
	je	.label_472
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_481
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_484
.label_472:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_487]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_488
.label_481:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_470
.label_484:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_488:
	mov	ebp, 1
.label_470:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_493:
	mov	rax, r14
	jmp	.label_476
.label_464:
	mov	rax, qword ptr [rbp]
	jmp	.label_476
.label_485:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_471
	lea	rbp, [rbx + rbp + 8]
.label_492:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_486
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_490
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_492
	jmp	.label_471
.label_486:
	mov	rax, r14
	jmp	.label_491
.label_490:
	mov	rax, qword ptr [rbp]
	jmp	.label_491
.label_465:
	call	abort
.label_478:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405920

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
	je	.label_495
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_495:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405950
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
	jae	.label_512
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_501
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_500
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_503
	mov	r14, qword ptr [r13]
.label_500:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_506
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_504
.label_503:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_501
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_496:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_513
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_516
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_496
	jmp	.label_501
.label_506:
	mov	qword ptr [r13], 0
	jmp	.label_504
.label_513:
	mov	rcx, rax
	jmp	.label_505
.label_516:
	mov	r14, qword ptr [rcx]
.label_505:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_504:
	xor	r12d, r12d
	test	r14, r14
	je	.label_501
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_502
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_509
	cvtsi2ss	xmm1, rax
	jmp	.label_515
.label_509:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_515:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_499
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_514
.label_499:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_514:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_502
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_510
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_411]
	jbe	.label_497
	movss	xmm4, dword ptr [rip + label_399]
	ucomiss	xmm4, xmm3
	jbe	.label_497
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_497
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_406]
	jbe	.label_497
	movss	xmm4, dword ptr [rip + label_411]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_497
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_401]
	ucomiss	xmm5, xmm3
	jb	.label_497
	ucomiss	xmm3, xmm4
	ja	.label_507
.label_497:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_507
.label_510:
	mov	eax, OFFSET FLAT:default_tuning
.label_507:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_502
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_511
	mulss	xmm0, dword ptr [rax + 8]
.label_511:
	movss	xmm1, dword ptr [rip + label_404]
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
	jne	.label_502
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_498
	nop	word ptr cs:[rax + rax]
.label_508:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_508
.label_498:
	mov	qword ptr [r15 + 0x48], 0
.label_502:
	mov	r12, r14
.label_501:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_512:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0

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
	.align	32
	#Procedure 0x405c20
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
	.align	32
	#Procedure 0x405c30

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_517
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_518
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_517:
	xor	eax, eax
	ret	
.label_518:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_519
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_520
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_519:
	xor	eax, eax
	ret	
.label_520:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c90

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
	.align	32
	#Procedure 0x405cb0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_521
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_521:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_522
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_523
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_524
.label_523:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_524:
	mov	ecx, dword ptr [rax]
.label_522:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d70

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
	js	.label_526
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_525
	mov	dword ptr [r14], ebp
	jmp	.label_526
.label_525:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_526:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405dc0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_527
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_529
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_531
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_529
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_532
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_532:
	mov	rbx, r14
.label_529:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_527:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_528
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70
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
	#Procedure 0x405eb0
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
	#Procedure 0x405ec0
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
	#Procedure 0x405ed0
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
	#Procedure 0x405f10
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
	#Procedure 0x405f30
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_533
	test	rdx, rdx
	je	.label_533
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_533:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f60
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
	#Procedure 0x405fe0

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
.label_568:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_565
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_570]
.label_1008:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_576
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_583
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1009:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_593
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_593
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_608:
	cmp	r14, r11
	jae	.label_606
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_606:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_608
.label_593:
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
	jmp	.label_615
.label_1001:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_615
.label_1004:
	mov	al, 1
.label_1002:
	mov	r12b, 1
.label_1005:
	test	r12b, 1
	mov	cl, 1
	je	.label_627
	mov	ecx, eax
.label_627:
	mov	al, cl
.label_1003:
	test	r12b, 1
	jne	.label_629
	test	r11, r11
	je	.label_630
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_630:
	mov	r14d, 1
	jmp	.label_633
.label_629:
	xor	r14d, r14d
.label_633:
	mov	ecx, OFFSET FLAT:label_583
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_615
.label_1006:
	test	r12b, 1
	jne	.label_647
	test	r11, r11
	je	.label_649
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_649:
	mov	r14d, 1
	jmp	.label_652
.label_1007:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_538
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_615
.label_647:
	xor	r14d, r14d
.label_652:
	mov	eax, OFFSET FLAT:label_538
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_615:
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
	jmp	.label_548
	nop	dword ptr [rax]
.label_609:
	inc	rsi
.label_548:
	cmp	rbp, -1
	je	.label_586
	cmp	rsi, rbp
	jne	.label_588
	jmp	.label_589
	nop	word ptr cs:[rax + rax]
.label_586:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_595
.label_588:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_598
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_567
	cmp	rbp, -1
	jne	.label_567
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
.label_567:
	cmp	rbx, rbp
	jbe	.label_616
.label_598:
	xor	r8d, r8d
.label_594:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_617
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_619]
.label_1023:
	test	rsi, rsi
	jne	.label_611
	jmp	.label_542
	nop	word ptr cs:[rax + rax]
.label_616:
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
	jne	.label_638
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_594
	jmp	.label_650
.label_638:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_594
.label_1027:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_536
	test	rsi, rsi
	jne	.label_539
	cmp	rbp, 1
	je	.label_542
	xor	r13d, r13d
	jmp	.label_537
.label_1016:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_546
	cmp	byte ptr [rsp + 6], 0
	jne	.label_547
	cmp	r12d, 2
	jne	.label_552
	mov	eax, r9d
	and	al, 1
	jne	.label_552
	cmp	r14, r11
	jae	.label_555
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_555:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_559
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_559:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_610
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_610:
	add	r14, 3
	mov	r9b, 1
.label_552:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_620
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_620:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_572
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_572
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_572
	cmp	r14, r11
	jae	.label_634
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_634:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_622
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_622:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_537
.label_1017:
	mov	bl, 0x62
	jmp	.label_535
.label_1018:
	mov	cl, 0x74
	jmp	.label_544
.label_1019:
	mov	bl, 0x76
	jmp	.label_535
.label_1020:
	mov	bl, 0x66
	jmp	.label_535
.label_1021:
	mov	cl, 0x72
	jmp	.label_544
.label_1024:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_607
	cmp	byte ptr [rsp + 6], 0
	jne	.label_573
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
	jae	.label_614
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_614:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_623
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_623:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_628
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_628:
	add	r14, 3
	xor	r9d, r9d
.label_607:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_537
.label_1025:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_636
	cmp	r12d, 2
	jne	.label_611
	cmp	byte ptr [rsp + 6], 0
	je	.label_611
	jmp	.label_573
.label_1026:
	cmp	r12d, 2
	jne	.label_648
	cmp	byte ptr [rsp + 6], 0
	jne	.label_573
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_599
.label_617:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_654
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
.label_534:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_551
	test	r8b, r8b
	je	.label_551
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_537
.label_536:
	test	rsi, rsi
	jne	.label_569
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_569
.label_542:
	mov	dl, 1
.label_1022:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_573
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_537:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_579
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_582
	jmp	.label_585
	nop	word ptr cs:[rax + rax]
.label_579:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_585
.label_582:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_591
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_599
	jmp	.label_580
	nop	dword ptr [rax]
.label_585:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_580
	jmp	.label_599
.label_591:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_580
.label_546:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_609
	xor	r15d, r15d
	jmp	.label_611
.label_648:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_544
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_599
.label_544:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_573
.label_535:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_537
	nop	word ptr cs:[rax + rax]
.label_580:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_547
	cmp	r12d, 2
	jne	.label_631
	mov	eax, r9d
	and	al, 1
	jne	.label_631
	cmp	r14, r11
	jae	.label_596
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_596:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_639
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_639:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_626
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_626:
	add	r14, 3
	mov	r9b, 1
.label_631:
	cmp	r14, r11
	jae	.label_651
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_651:
	inc	r14
	jmp	.label_632
.label_654:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_655
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_655:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_643:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_557
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_561
	cmp	rbp, -2
	je	.label_564
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_603
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_558:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_645
	bt	rsi, rdx
	jb	.label_584
.label_645:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_558
.label_603:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_578
	xor	r13d, r13d
.label_578:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_643
	jmp	.label_534
.label_572:
	xor	r13d, r13d
	jmp	.label_537
.label_569:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_537
.label_636:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_611
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_611
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_611
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_549
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_571
	cmp	byte ptr [rsp + 6], 0
	jne	.label_600
	cmp	r14, r11
	jae	.label_635
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_635:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_641
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_641:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_637
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_637:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_553
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_553:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_537
.label_611:
	xor	eax, eax
.label_539:
	xor	r13d, r13d
	jmp	.label_537
.label_551:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_653
	nop	word ptr cs:[rax + rax]
.label_612:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_653:
	test	r8b, r8b
	je	.label_540
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_541
	cmp	r14, r11
	jae	.label_543
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_543:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_541
	nop	dword ptr [rax]
.label_540:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_650
	cmp	r12d, 2
	jne	.label_556
	mov	eax, r9d
	and	al, 1
	jne	.label_556
	cmp	r14, r11
	jae	.label_560
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_560:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_562
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_562:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_566
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_566:
	add	r14, 3
	mov	r9b, 1
.label_556:
	cmp	r14, r11
	jae	.label_646
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_646:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_577
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_577:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_581
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_581:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_541:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_599
	test	r9b, 1
	je	.label_601
	mov	ebx, eax
	and	bl, 1
	jne	.label_601
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_602
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_602:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_605
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_605:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_601:
	cmp	r14, r11
	jae	.label_612
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_612
	nop	word ptr cs:[rax + rax]
.label_599:
	test	r9b, 1
	je	.label_618
	and	al, 1
	jne	.label_618
	cmp	r14, r11
	jae	.label_621
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_621:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_587
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_587:
	add	r14, 2
	xor	r9d, r9d
.label_618:
	mov	ebx, r15d
.label_632:
	cmp	r14, r11
	jae	.label_624
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_624:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_609
.label_561:
	xor	r13d, r13d
.label_557:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_534
.label_564:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_644
	mov	rsi, qword ptr [rsp + 0x58]
.label_625:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_604
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_625
	xor	r13d, r13d
	jmp	.label_534
.label_644:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_534
.label_604:
	xor	r13d, r13d
	jmp	.label_534
.label_549:
	xor	r13d, r13d
	jmp	.label_537
.label_571:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_537
	nop	dword ptr [rax + rax]
.label_589:
	mov	rcx, rsi
.label_595:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_545
	or	al, dl
	je	.label_550
.label_545:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_554
	or	al, dl
	jne	.label_554
	test	r10b, 1
	jne	.label_563
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_554
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_568
.label_554:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_574
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_575
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_575
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_592:
	cmp	r14, r11
	jae	.label_613
	mov	byte ptr [rcx + r14], al
.label_613:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_592
	jmp	.label_575
.label_547:
	mov	qword ptr [rsp + 0x20], rbp
.label_650:
	mov	rdx, rdi
	jmp	.label_597
.label_573:
	mov	qword ptr [rsp + 0x20], rbp
.label_584:
	mov	rdx, rdi
	mov	eax, 2
.label_590:
	mov	qword ptr [rsp + 0x38], rax
.label_597:
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
.label_640:
	mov	r14, rax
.label_642:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_550:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_597
.label_563:
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
	jmp	.label_640
.label_574:
	mov	rcx, qword ptr [rsp + 8]
.label_575:
	cmp	r14, r11
	jae	.label_642
	mov	byte ptr [rcx + r14], 0
	jmp	.label_642
.label_600:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_590
.label_565:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406df0
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
	#Procedure 0x406ec0
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
	je	.label_656
	mov	qword ptr [rax], rbx
.label_656:
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
	#Procedure 0x406fb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_657
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_659:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_659
.label_657:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_661
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_660], OFFSET FLAT:slot0
.label_661:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_658
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_658:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407050
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407060

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
	js	.label_662
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_665
	cmp	r12d, 0x7fffffff
	je	.label_667
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
	jne	.label_663
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_663:
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
.label_665:
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
	jbe	.label_668
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_664
.label_668:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_666
	mov	rdi, r14
	call	free
.label_666:
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
.label_664:
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
.label_662:
	call	abort
.label_667:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407220
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407230
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
	#Procedure 0x407250
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
	#Procedure 0x407270

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
	je	.label_669
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
.label_669:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4072e0
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
	je	.label_670
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
.label_670:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407350

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
	je	.label_671
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
.label_671:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073c0
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
	je	.label_672
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
.label_672:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407430
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
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
	#Procedure 0x4074a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
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
	#Procedure 0x407510

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
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
	#Procedure 0x407570
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
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
	#Procedure 0x4075d0

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
	je	.label_676
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
.label_676:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_677
	test	rdx, rdx
	je	.label_677
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_677:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4076e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_678
	test	rdx, rdx
	je	.label_678
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_678:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407750
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_679
	test	rsi, rsi
	je	.label_679
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_679:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4077c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_673]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_674]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_675]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_680
	test	rsi, rsi
	je	.label_680
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
.label_680:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407830
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407840
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
	#Procedure 0x407860

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407880

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
	#Procedure 0x4078a0

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
	jne	.label_686
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_682
	cmp	ecx, 0x55
	jne	.label_681
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_681
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_681
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_681
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_681
	cmp	byte ptr [rax + 5], 0
	jne	.label_681
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_688
	mov	eax, OFFSET FLAT:label_689
	jmp	.label_685
.label_682:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_681
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_681
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_681
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_681
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_681
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_681
	cmp	byte ptr [rax + 7], 0
	je	.label_687
.label_681:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_538
	mov	eax, OFFSET FLAT:label_583
.label_685:
	cmove	rax, rcx
.label_686:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_687:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_683
	mov	eax, OFFSET FLAT:label_684
	jmp	.label_685
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407970

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
	jns	.label_690
	mov	eax, dword ptr [rcx]
	cmp	eax, 0x16
	je	.label_692
	cmp	eax, 0x5f
	je	.label_692
	cmp	eax, 0x26
	jne	.label_690
.label_692:
	test	r12d, r12d
	je	.label_696
	cmp	r12d, 1
	jne	.label_697
	mov	rbx, rcx
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	mov	rcx, rbx
	test	eax, eax
	je	.label_691
	mov	eax, dword ptr [rcx]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_694
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_690
.label_691:
	mov	dword ptr [rcx], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_690
.label_696:
	xor	r12d, r12d
.label_694:
	mov	qword ptr [rsp], rcx
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_695
	test	rax, rax
	je	.label_695
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_700
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_695
.label_700:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_690
	test	r12b, r12b
	je	.label_698
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	je	.label_695
	mov	dword ptr [rax], 2
	jmp	.label_690
.label_697:
	mov	dword ptr [rcx], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_690
.label_698:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_701
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_690
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_695
	jmp	.label_690
.label_701:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_693
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	jne	.label_699
.label_695:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_690:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_693:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_690
.label_699:
	mov	dword ptr [rax], 0x15
	jmp	.label_690
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b70

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
	.align	32
	#Procedure 0x407b90

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
	jne	.label_704
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_707
.label_704:
	xor	ebp, ebp
.label_705:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_707:
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
	je	.label_708
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_708:
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
	je	.label_703
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_703:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_706
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_702
.label_706:
	xor	ebp, ebp
.label_702:
	mov	rdi, rbx
	call	free
	jmp	.label_705
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0

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
	jb	.label_713
	mov	rax, rbp
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_709:
	cmp	byte ptr [rax + rcx + 1], 0x58
	lea	rcx, [rcx + 1]
	je	.label_709
	cmp	rcx, r12
	jae	.label_711
.label_713:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_714:
	mov	r12d, 0xffffffff
.label_710:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_711:
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
	je	.label_710
	sub	rbp, r13
	add	rbp, qword ptr [rsp + 0x18]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x20], rcx
	nop	
.label_715:
	mov	r13, rax
	test	rax, rax
	je	.label_717
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_712:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax, byte ptr [rax + letters]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_712
.label_717:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_716
	mov	rax, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	jne	.label_718
	inc	r14d
	cmp	r14d, 0x3a2f7
	mov	rax, r13
	jbe	.label_715
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_714
.label_716:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	ebx, eax
.label_718:
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ebx
	jmp	.label_710
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e50
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_719
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_723]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_719:
	mov	edi, OFFSET FLAT:label_720
	mov	esi, OFFSET FLAT:label_721
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_722
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e90

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
	.align	32
	#Procedure 0x407eb0

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0

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
	je	.label_724
	cmp	dword ptr [rax], 0x4b
	jne	.label_725
.label_724:
	mov	dword ptr [rax], 0x11
.label_725:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f10
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_726
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_723]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_726:
	mov	edi, OFFSET FLAT:label_720
	mov	esi, OFFSET FLAT:label_721
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_722
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x407f50
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f60

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
	ja	.label_727
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
	jmp	.label_728
.label_727:
	mov	eax, ebx
.label_728:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fb0

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
	je	.label_743
	mov	edx, OFFSET FLAT:label_734
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_740
.label_743:
	mov	edx, OFFSET FLAT:label_741
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_740:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_747
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
	mov	esi, OFFSET FLAT:label_742
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_730
	jmp	qword ptr [(r12 * 8) + label_731]
.label_1045:
	add	rsp, 8
	jmp	.label_729
.label_730:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_737
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
	jmp	.label_729
.label_1046:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_738
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
.label_1047:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_746
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
.label_1048:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_735
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
.label_1049:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_732
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
	jmp	.label_729
.label_1050:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_745
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
	jmp	.label_729
.label_1051:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_733
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
	jmp	.label_729
.label_1052:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_736
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
	jmp	.label_729
.label_1054:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_739
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
	jmp	.label_729
.label_1053:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_744
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
.label_729:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408310
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_748:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_748
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408340

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_749
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_751
.label_749:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_751:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_752
	cmp	r10d, 0x29
	jae	.label_761
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_750
.label_761:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_750:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_752
	cmp	r10d, 0x29
	jae	.label_759
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_760
.label_759:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_760:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_752
	cmp	r10d, 0x29
	jae	.label_757
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_758
.label_757:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_758:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_752
	cmp	r10d, 0x29
	jae	.label_755
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_756
.label_755:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_756:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_752
	cmp	r10d, 0x29
	jae	.label_753
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_754
.label_753:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_754:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_752
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_752
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_752
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_752
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_752:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408530

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_762
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_762:
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
	#Procedure 0x4085c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_763
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_764
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_766
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_765
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408640
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_767
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_768
	test	rax, rax
	je	.label_767
.label_768:
	pop	rbx
	ret	
.label_767:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408680

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_769
	test	rax, rax
	je	.label_770
.label_769:
	pop	rbx
	ret	
.label_770:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_771
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_772
	test	rbx, rbx
	jne	.label_772
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_772:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_773
	test	rax, rax
	je	.label_771
.label_773:
	pop	rbx
	ret	
.label_771:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_774
	test	rbx, rbx
	jne	.label_774
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_774:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_776
	test	rax, rax
	je	.label_775
.label_776:
	pop	rbx
	ret	
.label_775:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408720
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_777
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_780
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_778
.label_777:
	test	rcx, rcx
	jne	.label_783
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_783:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_782
.label_778:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_779
	test	rbx, rbx
	jne	.label_779
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_779:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_781
	test	rax, rax
	je	.label_780
.label_781:
	pop	rbx
	ret	
.label_780:
	call	xalloc_die
.label_782:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_784
	test	rax, rax
	je	.label_785
.label_784:
	pop	rbx
	ret	
.label_785:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_786
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_789
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_790
	call	free
	xor	eax, eax
	jmp	.label_787
.label_786:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_788
	mov	qword ptr [rsi], rbx
.label_790:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_787
	test	rax, rax
	je	.label_788
.label_787:
	pop	rbx
	ret	
.label_788:
	call	xalloc_die
.label_789:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408850
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
	je	.label_792
	test	r14, r14
	je	.label_791
.label_792:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_791:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408890
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_793
	call	rpl_calloc
	test	rax, rax
	je	.label_793
	pop	rcx
	ret	
.label_793:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088c0

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
	je	.label_794
	test	r15, r15
	je	.label_795
.label_794:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_795:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408900

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
	je	.label_797
	test	r15, r15
	je	.label_796
.label_797:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_796:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408950

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_798
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408980

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_800
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_799
.label_800:
	mov	rax, rbx
	pop	rbx
	ret	
.label_799:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089b0

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
	jle	.label_801
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_803
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_803:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_802
.label_801:
	xor	ebx, ebx
.label_802:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_804
	test	rsi, rsi
	mov	ecx, 1
	je	.label_805
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_805
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_804:
	mov	ecx, 1
.label_805:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_806
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_806
	test	byte ptr [rbx + 1], 1
	je	.label_806
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_806:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ab0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_807
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_808
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_808:
	add	rax, rcx
.label_807:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ae0

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
	jne	.label_809
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_809
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_810
.label_809:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_810:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_811
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_811:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408b50

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
	je	.label_812
	cmp	r15, -2
	jb	.label_812
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_812
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_812:
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
	#Procedure 0x408bb0

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
	je	.label_816
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_819:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_814
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_817
.label_814:
	cmp	r13, r12
	jb	.label_818
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_820
	add	r12, r12
	jmp	.label_821
	nop	word ptr cs:[rax + rax]
.label_820:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_815
.label_821:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_819
	jmp	.label_816
.label_818:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_816
.label_815:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_813
.label_817:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_813:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_816:
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
	#Procedure 0x408cc0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cd0

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
	je	.label_825
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_822:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_823
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_827
	cmp	qword ptr [rsp + 8], -1
	je	.label_828
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_824
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_823
.label_824:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_823
.label_828:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_823:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_822
	jmp	.label_826
.label_825:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_826:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_827:
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
	.align	32
	#Procedure 0x408dd0

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
	je	.label_829
	mov	esi, OFFSET FLAT:label_830
	jmp	.label_831
.label_829:
	mov	esi, OFFSET FLAT:label_832
.label_831:
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
	#Procedure 0x408e40

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
	mov	esi, OFFSET FLAT:label_833
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_838
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_835:
	test	r15, r15
	je	.label_837
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_834
.label_837:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_839
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_836
	nop	word ptr cs:[rax + rax]
.label_834:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_840
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_836:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_835
.label_838:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_841
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
.label_841:
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
	#Procedure 0x408f70

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
	jns	.label_842
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
.label_842:
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
	#Procedure 0x408fe0
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
	je	.label_843
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_844:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_843
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_844
.label_843:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409050

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
	jne	.label_846
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_845
	test	cl, cl
	jne	.label_845
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_845
.label_846:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_845
	call	__errno_location
	mov	dword ptr [rax], 0
.label_845:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_848
	cmp	byte ptr [rax], 0x43
	jne	.label_850
	cmp	byte ptr [rax + 1], 0
	je	.label_847
.label_850:
	mov	esi, OFFSET FLAT:label_849
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_848
.label_847:
	xor	ebx, ebx
.label_848:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090f0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_851
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_852:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_852
.label_851:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409120

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_78
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_853
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409150
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
	.align	32
	#Procedure 0x409170

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_854
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_854:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091a0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091b0

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
.label_857:
	cmp	r14, r13
	jae	.label_856
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_855:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_855
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_859:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_859
.label_856:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_860
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
	ja	.label_857
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
	jmp	.label_858
.label_860:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_858:
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
	.align	32
	#Procedure 0x4092b0
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
	.align	32
	#Procedure 0x4092d0

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
	.align	32
	#Procedure 0x409320

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
	je	.label_865
	xor	ebx, ebx
	test	r14, r14
	je	.label_867
	mov	esi, OFFSET FLAT:label_868
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_862
.label_867:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_866
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_862
.label_865:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_862
.label_866:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_861
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_864
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
	js	.label_864
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_863
.label_864:
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
	ja	.label_863
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
	ja	.label_863
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
	ja	.label_863
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
	ja	.label_863
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
.label_863:
	mov	rdi, r14
	call	isaac_seed
.label_862:
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
	.align	32
	#Procedure 0x409570
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409580
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409590

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
	je	.label_874
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_870
	nop	dword ptr [rax]
.label_869:
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
.label_870:
	sub	r15, rbp
	jne	.label_869
	jmp	.label_871
.label_874:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_872
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_875:
	cmp	r15, 0x800
	jb	.label_873
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_875
	jmp	.label_876
.label_873:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_872:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_876:
	mov	qword ptr [r14 + 0x18], r12
.label_871:
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
	#Procedure 0x4096b0

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
	je	.label_877
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_877:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096f0

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
	je	.label_878
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_881
	mov	esi, OFFSET FLAT:label_879
	jmp	.label_880
.label_881:
	mov	esi, OFFSET FLAT:label_882
.label_880:
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
.label_878:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409750

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
.label_883:
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
	jb	.label_883
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_884:
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
	jb	.label_884
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099d0

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
.label_885:
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
	jl	.label_885
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_886:
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
	jl	.label_886
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
	.align	32
	#Procedure 0x409c30

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x409c40

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409c50

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_887
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_889
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_887
.label_889:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_887
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_888
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_888:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_887:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409cd0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_905
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_905:
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
	ja	.label_894
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_907
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_895
	test	esi, esi
	jne	.label_894
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_909
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_910
.label_894:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_890
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_895
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_897
.label_907:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_900
.label_895:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_901
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_903
.label_901:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_903:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_904:
	call	fcntl
.label_900:
	mov	ebp, eax
.label_891:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_897:
	cmp	eax, 6
	jne	.label_890
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_893
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_906
.label_890:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_896
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_899
.label_909:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_910:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_904
.label_893:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_906:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_908
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_892
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_892
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_891
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_898
.label_892:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_891
.label_896:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_899:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_900
.label_908:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_898:
	test	al, al
	je	.label_891
	test	ebp, ebp
	js	.label_891
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_902
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_891
.label_902:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_891
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f70

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
	#Procedure 0x409f90

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
	je	.label_912
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_914
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_915
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_911
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_912
.label_911:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_913
.label_914:
	mov	rax, rbx
	jmp	.label_912
.label_915:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_913:
	xor	eax, eax
.label_912:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
