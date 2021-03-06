	.section	.text
	.align	16
	#Procedure 0x401a50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_12
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
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_22
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
	mov	esi, OFFSET FLAT:label_24
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
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_13
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_12:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	#Procedure 0x401d00

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_81
	call	setlocale
	mov	edi, OFFSET FLAT:label_82
	mov	esi, OFFSET FLAT:label_83
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_82
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0x10
	mov	r15d, 0xffffffff
	xor	r12d, r12d
	xor	r13d, r13d
	xor	eax, eax
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_1087:
	mov	rax, qword ptr [rip + optarg]
.label_90:
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_33
.label_1079:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_range],  rax
	mov	r13b, 1
	nop	
.label_33:
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x84
	ja	.label_105
	jmp	qword ptr [(rcx * 8) + label_106]
.label_1074:
	mov	r14d, 0x11
	jmp	.label_33
.label_1076:
	mov	r14d, 0x10
	jmp	.label_33
.label_1078:
	xor	r15d, r15d
	jmp	.label_33
.label_1080:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_role],  rax
	mov	r13b, 1
	jmp	.label_33
.label_1081:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_type],  rax
	mov	r13b, 1
	jmp	.label_33
.label_1084:
	mov	r15d, 1
	jmp	.label_33
.label_1085:
	xor	r12d, r12d
	jmp	.label_33
.label_1075:
	mov	r14d, 2
	jmp	.label_33
.label_1077:
	mov	byte ptr [rip + recurse],  1
	jmp	.label_33
.label_1082:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_user],  rax
	mov	r13b, 1
	jmp	.label_33
.label_1083:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_33
.label_1086:
	mov	r12b, 1
	jmp	.label_33
.label_1073:
	mov	al, byte ptr [rip + recurse]
	cmp	al, 1
	jne	.label_44
	cmp	r14d, 0x10
	jne	.label_48
	cmp	r15d, 1
	je	.label_50
	mov	byte ptr [rip + affect_symlink_referent],  0
	jmp	.label_53
.label_44:
	test	r15d, r15d
	setne	byte ptr [rip + affect_symlink_referent]
.label_53:
	mov	r14d, 0x10
	jmp	.label_56
.label_48:
	test	r15d, r15d
	je	.label_65
	mov	byte ptr [rip + affect_symlink_referent],  1
.label_56:
	mov	r15, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rip + optind]
	mov	edx, ebp
	sub	edx, ecx
	cmp	r15, 1
	mov	esi, 1
	mov	edi, 1
	adc	edi, 0
	test	r13b, r13b
	cmovne	edi, esi
	cmp	edx, edi
	jl	.label_58
	test	r15, r15
	jne	.label_46
	test	r13b, r13b
	je	.label_63
	mov	qword ptr [rip + specified_context],  0
	test	r12b, r12b
	je	.label_60
	xor	al, 1
	jne	.label_60
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rip + root_dev_ino],  rax
	test	rax, rax
	je	.label_69
	mov	ecx, dword ptr [rip + optind]
	jmp	.label_71
.label_60:
	mov	qword ptr [rip + root_dev_ino],  0
.label_71:
	movsxd	rax, ecx
	lea	rdi, [rbx + rax*8]
	or	r14d, 8
	xor	edx, edx
	mov	esi, r14d
	call	xfts_open
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r13, rax
	mov	r15b, 1
	test	r13, r13
	je	.label_84
	mov	bl, 1
	jmp	.label_70
.label_89:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_39
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_100
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	r12, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	mov	ecx, eax
	dec	ecx
	movzx	ecx, cx
	mov	r15b, 1
	cmp	ecx, 9
	ja	.label_110
	jmp	qword ptr [(rcx * 8) + label_42]
.label_1042:
	mov	r15b, 1
	cmp	byte ptr [rip + recurse],  1
	jne	.label_35
	mov	rax, qword ptr [rip + root_dev_ino]
	mov	r15b, 1
	test	rax, rax
	je	.label_39
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_39
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_39
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [r12], 0x2f
	jne	.label_107
	cmp	byte ptr [r12 + 1], 0
	je	.label_51
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_57
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_64:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	movzx	ebx, byte ptr [rsp + 0x17]
	jmp	.label_39
.label_1044:
	mov	r14d, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	jmp	.label_72
.label_1047:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_86
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_89
.label_86:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	jmp	.label_72
.label_1043:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	cycle_warning_required
	mov	r15b, 1
	test	al, al
	je	.label_35
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_39
.label_1045:
	mov	r15b, 1
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_35
	jmp	.label_39
.label_1046:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_111
	xor	eax, eax
	mov	esi, ebp
.label_72:
	call	error
.label_35:
	mov	ax, word ptr [r13 + 0x70]
.label_110:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_38
	test	r15b, r15b
	je	.label_38
	mov	rax, qword ptr [rip + root_dev_ino]
	test	rax, rax
	je	.label_38
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_38
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_38
	cmp	byte ptr [r12], 0x2f
	jne	.label_52
	cmp	byte ptr [r12 + 1], 0
	je	.label_54
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_57
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
.label_100:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_68
	nop	dword ptr [rax + rax]
.label_38:
	test	r15b, r15b
	je	.label_68
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [rip + verbose],  1
	jne	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
.label_73:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	mov	qword ptr [rsp + 0x20], 0
	mov	rbp, qword ptr [rip + specified_context]
	movzx	eax, byte ptr [rip + affect_symlink_referent]
	test	rbp, rbp
	je	.label_87
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	mov	rdx, rbp
	je	.label_91
	call	setfileconat
	jmp	.label_94
.label_87:
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	lea	rdx, [rsp + 0x20]
	je	.label_95
	call	getfileconat
	jmp	.label_98
.label_91:
	call	lsetfileconat
.label_94:
	test	eax, eax
	je	.label_99
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x2c], eax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	rsi, rbp
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x2c]
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
	jmp	.label_99
.label_95:
	call	lgetfileconat
.label_98:
	test	eax, eax
	jns	.label_112
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x3d
	jne	.label_34
.label_112:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	je	.label_36
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	jmp	.label_80
.label_36:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
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
	jmp	.label_67
.label_34:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_80:
	mov	rdx, r14
.label_67:
	call	error
.label_99:
	movzx	ebx, byte ptr [rsp + 0x17]
.label_68:
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_62
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
.label_62:
	test	r15b, r15b
	setne	r15b
.label_39:
	and	r15b, bl
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_read
	mov	r13, rax
	test	r13, r13
	mov	ebx, r15d
	jne	.label_70
.label_84:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_75
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_75:
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_close
	test	eax, eax
	je	.label_85
	mov	ebx, dword ptr [rbx]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_85:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	cmp	eax, 0xffffff7d
	je	.label_96
	cmp	eax, 0xffffff7e
	jne	.label_97
	xor	edi, edi
	call	usage
.label_97:
	mov	edi, 1
	call	usage
.label_96:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_14
	mov	r8d, OFFSET FLAT:label_101
	mov	r9d, OFFSET FLAT:label_102
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_58:
	xor	edi, edi
	cmp	ecx, ebp
	jge	.label_108
	mov	esi, OFFSET FLAT:label_109
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
.label_46:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	jmp	.label_45
.label_63:
	movsxd	rax, ecx
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [rbx + rax*8]
	mov	qword ptr [rip + specified_context],  rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + specified_context]
	call	quote
.label_45:
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_69:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_57
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_108:
	mov	esi, OFFSET FLAT:label_66
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
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	jmp	.label_77
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
.label_77:
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
	#Procedure 0x402740
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_118
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_114
	cmp	dword ptr [rbp], 0x20
	jne	.label_114
.label_118:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_116
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_115
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_111
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_116:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_115:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_117
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
	#Procedure 0x402820

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_119
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_121
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_121
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_124
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_124:
	mov	rbx, r14
.label_121:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_119:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_120
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0
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
	#Procedure 0x402910
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
	#Procedure 0x402920
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
	#Procedure 0x402930
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
	#Procedure 0x402970
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
	#Procedure 0x402990
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_125
	test	rdx, rdx
	je	.label_125
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_125:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029c0
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
	#Procedure 0x402a40

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
.label_192:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_189
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_242]
.label_1102:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_199
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_133
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1103:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_155
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_155
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	r14, r11
	jae	.label_196
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_196:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_227
.label_155:
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
	jmp	.label_127
.label_1095:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_127
.label_1098:
	mov	al, 1
.label_1096:
	mov	r12b, 1
.label_1099:
	test	r12b, 1
	mov	cl, 1
	je	.label_245
	mov	ecx, eax
.label_245:
	mov	al, cl
.label_1097:
	test	r12b, 1
	jne	.label_247
	test	r11, r11
	je	.label_244
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_244:
	mov	r14d, 1
	jmp	.label_130
.label_247:
	xor	r14d, r14d
.label_130:
	mov	ecx, OFFSET FLAT:label_133
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_127
.label_1100:
	test	r12b, 1
	jne	.label_144
	test	r11, r11
	je	.label_146
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_146:
	mov	r14d, 1
	jmp	.label_147
.label_1101:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_148
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_127
.label_144:
	xor	r14d, r14d
.label_147:
	mov	eax, OFFSET FLAT:label_148
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_127:
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
	jmp	.label_169
	nop	dword ptr [rax]
.label_154:
	inc	rsi
.label_169:
	cmp	rbp, -1
	je	.label_208
	cmp	rsi, rbp
	jne	.label_209
	jmp	.label_211
	nop	word ptr cs:[rax + rax]
.label_208:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_215
.label_209:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_184
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_158
	cmp	rbp, -1
	jne	.label_158
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
.label_158:
	cmp	rbx, rbp
	jbe	.label_233
.label_184:
	xor	r8d, r8d
.label_138:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_234
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_238]
.label_962:
	test	rsi, rsi
	jne	.label_137
	jmp	.label_163
	nop	word ptr cs:[rax + rax]
.label_233:
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
	jne	.label_134
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_138
	jmp	.label_139
.label_134:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_138
.label_966:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_157
	test	rsi, rsi
	jne	.label_159
	cmp	rbp, 1
	je	.label_163
	xor	r13d, r13d
	jmp	.label_128
.label_955:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_166
	cmp	byte ptr [rsp + 6], 0
	jne	.label_168
	cmp	r12d, 2
	jne	.label_172
	mov	eax, r9d
	and	al, 1
	jne	.label_172
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_178
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_178:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_182
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_182:
	add	r14, 3
	mov	r9b, 1
.label_172:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_232:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_183
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_183
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_183
	cmp	r14, r11
	jae	.label_210
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_210:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_195
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_195:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_128
.label_956:
	mov	bl, 0x62
	jmp	.label_219
.label_957:
	mov	cl, 0x74
	jmp	.label_220
.label_958:
	mov	bl, 0x76
	jmp	.label_219
.label_959:
	mov	bl, 0x66
	jmp	.label_219
.label_960:
	mov	cl, 0x72
	jmp	.label_220
.label_963:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_225
	cmp	byte ptr [rsp + 6], 0
	jne	.label_142
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
	jae	.label_230
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_230:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_241
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_241:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_246:
	add	r14, 3
	xor	r9d, r9d
.label_225:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_128
.label_964:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_131
	cmp	r12d, 2
	jne	.label_137
	cmp	byte ptr [rsp + 6], 0
	je	.label_137
	jmp	.label_142
.label_965:
	cmp	r12d, 2
	jne	.label_145
	cmp	byte ptr [rsp + 6], 0
	jne	.label_142
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_129
.label_234:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_151
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
.label_152:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_171
	test	r8b, r8b
	je	.label_171
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_128
.label_157:
	test	rsi, rsi
	jne	.label_193
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_193
.label_163:
	mov	dl, 1
.label_961:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_142
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_128:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_202
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_191
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_202:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_207
.label_191:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_213
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_129
	jmp	.label_224
	nop	dword ptr [rax]
.label_207:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_224
	jmp	.label_129
.label_213:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_224
.label_166:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_154
	xor	r15d, r15d
	jmp	.label_137
.label_145:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_220
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_129
.label_220:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_142
.label_219:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_128
	nop	word ptr cs:[rax + rax]
.label_224:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_168
	cmp	r12d, 2
	jne	.label_126
	mov	eax, r9d
	and	al, 1
	jne	.label_126
	cmp	r14, r11
	jae	.label_143
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_143:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_135
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_135:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	add	r14, 3
	mov	r9b, 1
.label_126:
	cmp	r14, r11
	jae	.label_216
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_216:
	inc	r14
	jmp	.label_149
.label_151:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_153
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_153:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_181:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_177
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_180
	cmp	rbp, -2
	je	.label_188
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_221
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_240:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_217
	bt	rsi, rdx
	jb	.label_206
.label_217:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_240
.label_221:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_226
	xor	r13d, r13d
.label_226:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_181
	jmp	.label_152
.label_183:
	xor	r13d, r13d
	jmp	.label_128
.label_193:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_128
.label_131:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_137
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_137
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_137
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_162
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_186
	cmp	byte ptr [rsp + 6], 0
	jne	.label_167
	cmp	r14, r11
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_231
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_231:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_132
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_132:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_243
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_243:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_128
.label_137:
	xor	eax, eax
.label_159:
	xor	r13d, r13d
	jmp	.label_128
.label_171:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_228:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_150:
	test	r8b, r8b
	je	.label_160
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_161
	cmp	r14, r11
	jae	.label_164
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_164:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_161
	nop	dword ptr [rax]
.label_160:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_139
	cmp	r12d, 2
	jne	.label_176
	mov	eax, r9d
	and	al, 1
	jne	.label_176
	cmp	r14, r11
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_190
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_190:
	add	r14, 3
	mov	r9b, 1
.label_176:
	cmp	r14, r11
	jae	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_156
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_205
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_205:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_161:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_129
	test	r9b, 1
	je	.label_198
	mov	ebx, eax
	and	bl, 1
	jne	.label_198
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_222
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_222:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_174:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_198:
	cmp	r14, r11
	jae	.label_228
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_228
	nop	word ptr cs:[rax + rax]
.label_129:
	test	r9b, 1
	je	.label_236
	and	al, 1
	jne	.label_236
	cmp	r14, r11
	jae	.label_239
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_239:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_204
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	add	r14, 2
	xor	r9d, r9d
.label_236:
	mov	ebx, r15d
.label_149:
	cmp	r14, r11
	jae	.label_235
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_235:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_154
.label_180:
	xor	r13d, r13d
.label_177:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_152
.label_188:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_141
	mov	rsi, qword ptr [rsp + 0x58]
.label_237:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_201
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_237
	xor	r13d, r13d
	jmp	.label_152
.label_141:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_152
.label_201:
	xor	r13d, r13d
	jmp	.label_152
.label_162:
	xor	r13d, r13d
	jmp	.label_128
.label_186:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_128
	nop	dword ptr [rax + rax]
.label_211:
	mov	rcx, rsi
.label_215:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_165
	or	al, dl
	je	.label_170
.label_165:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_173
	or	al, dl
	jne	.label_173
	test	r10b, 1
	jne	.label_187
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_173
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_192
.label_173:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_197
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_200
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_200
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	r14, r11
	jae	.label_212
	mov	byte ptr [rcx + r14], al
.label_212:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_214
	jmp	.label_200
.label_168:
	mov	qword ptr [rsp + 0x20], rbp
.label_139:
	mov	rdx, rdi
	jmp	.label_218
.label_142:
	mov	qword ptr [rsp + 0x20], rbp
.label_206:
	mov	rdx, rdi
	mov	eax, 2
.label_203:
	mov	qword ptr [rsp + 0x38], rax
.label_218:
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
.label_136:
	mov	r14, rax
.label_140:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_170:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_218
.label_187:
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
	jmp	.label_136
.label_197:
	mov	rcx, qword ptr [rsp + 8]
.label_200:
	cmp	r14, r11
	jae	.label_140
	mov	byte ptr [rcx + r14], 0
	jmp	.label_140
.label_167:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_203
.label_189:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850
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
	#Procedure 0x403920
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
	je	.label_248
	mov	qword ptr [rax], rbx
.label_248:
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
	#Procedure 0x403a10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_249
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_251:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_251
.label_249:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_252
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_253], OFFSET FLAT:slot0
.label_252:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_250
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_250:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ac0

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
	js	.label_254
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_257
	cmp	r12d, 0x7fffffff
	je	.label_259
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
	jne	.label_255
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_255:
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
.label_257:
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
	jbe	.label_260
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_256
.label_260:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_258
	mov	rdi, r14
	call	free
.label_258:
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
.label_256:
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
.label_254:
	call	abort
.label_259:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c90
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
	#Procedure 0x403cb0
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
	#Procedure 0x403cd0

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
	je	.label_261
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
.label_261:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d40
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
	je	.label_262
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
.label_262:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0

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
	je	.label_263
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
.label_263:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e20
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
	je	.label_264
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
.label_264:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e90
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
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
	#Procedure 0x403f00
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
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
	#Procedure 0x403f70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
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
	#Procedure 0x403fd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
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
	#Procedure 0x404030

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
	je	.label_268
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
.label_268:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_269
	test	rdx, rdx
	je	.label_269
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_269:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404140
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_270
	test	rdx, rdx
	je	.label_270
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_270:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_271
	test	rsi, rsi
	je	.label_271
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_271:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404220
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_265]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_267]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_272
	test	rsi, rsi
	je	.label_272
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
.label_272:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404290
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0
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
	#Procedure 0x4042c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0

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
	#Procedure 0x404300

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
	jne	.label_274
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_279
	cmp	ecx, 0x55
	jne	.label_273
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_273
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_273
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_273
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_273
	cmp	byte ptr [rax + 5], 0
	jne	.label_273
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_276
	mov	eax, OFFSET FLAT:label_277
	jmp	.label_278
.label_279:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_273
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_273
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_273
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_273
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_273
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_273
	cmp	byte ptr [rax + 7], 0
	je	.label_275
.label_273:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_148
	mov	eax, OFFSET FLAT:label_133
.label_278:
	cmove	rax, rcx
.label_274:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_275:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_280
	mov	eax, OFFSET FLAT:label_281
	jmp	.label_278
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_57
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_282:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404420

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
	je	.label_295
	mov	edx, OFFSET FLAT:label_286
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_292
.label_295:
	mov	edx, OFFSET FLAT:label_293
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_298
	jmp	qword ptr [(r12 * 8) + label_299]
.label_1029:
	add	rsp, 8
	jmp	.label_285
.label_298:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_285
.label_1030:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
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
.label_1031:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
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
.label_1032:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
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
.label_1033:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
	jmp	.label_285
.label_1034:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
	jmp	.label_285
.label_1035:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
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
	jmp	.label_285
.label_1036:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
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
	jmp	.label_285
.label_1038:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
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
	jmp	.label_285
.label_1037:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
.label_285:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404780
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_302:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_302
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_313
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_315
.label_313:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_315:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_303
	cmp	r10d, 0x29
	jae	.label_312
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_314
.label_312:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_314:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_303
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
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_303
	cmp	r10d, 0x29
	jae	.label_308
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_309
.label_308:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_309:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_303
	cmp	r10d, 0x29
	jae	.label_306
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_307
.label_306:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_307:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_303
	cmp	r10d, 0x29
	jae	.label_304
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_305
.label_304:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_305:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_303
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_303
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_303
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_303
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_303:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_316
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_316:
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
	#Procedure 0x404a30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_318
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_321
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_322
	test	rax, rax
	je	.label_321
.label_322:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_323
	test	rax, rax
	je	.label_324
.label_323:
	pop	rbx
	ret	
.label_324:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_325
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_326
	test	rbx, rbx
	jne	.label_326
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_326:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_325
.label_327:
	pop	rbx
	ret	
.label_325:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_328
	test	rbx, rbx
	jne	.label_328
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_328:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	je	.label_329
.label_330:
	pop	rbx
	ret	
.label_329:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404b90
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_333
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_335
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_331
.label_333:
	test	rcx, rcx
	jne	.label_337
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_337:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_336
.label_331:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_332
	test	rbx, rbx
	jne	.label_332
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_332:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_334
	test	rax, rax
	je	.label_335
.label_334:
	pop	rbx
	ret	
.label_335:
	call	xalloc_die
.label_336:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_338
	test	rax, rax
	je	.label_339
.label_338:
	pop	rbx
	ret	
.label_339:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_342
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_344
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_341
	call	free
	xor	eax, eax
	jmp	.label_343
.label_342:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_340
	mov	qword ptr [rsi], rbx
.label_341:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_343
	test	rax, rax
	je	.label_340
.label_343:
	pop	rbx
	ret	
.label_340:
	call	xalloc_die
.label_344:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0
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
	je	.label_346
	test	r14, r14
	je	.label_345
.label_346:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_345:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_347
	call	rpl_calloc
	test	rax, rax
	je	.label_347
	pop	rcx
	ret	
.label_347:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30

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
	je	.label_348
	test	r15, r15
	je	.label_349
.label_348:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_349:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d70
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
	je	.label_351
	test	r15, r15
	je	.label_350
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
.label_350:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_111
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_354
	pop	rcx
	ret	
.label_354:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_353
	mov	edi, OFFSET FLAT:label_355
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_357
	call	__assert_fail
.label_353:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_358
	cmp	ecx, 0x11
	jne	.label_359
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_358:
	ret	
.label_359:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_360
	test	rsi, rsi
	mov	ecx, 1
	je	.label_361
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_361
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_360:
	mov	ecx, 1
.label_361:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0

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
	jae	.label_365
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_365
	test	r12b, 0x12
	je	.label_365
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_384
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
	je	.label_392
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_386:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_386
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_392:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_374
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_375
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_388
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
.label_375:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_376
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_376:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_369
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_364:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_367
	cmp	rbp, 3
	jb	.label_367
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_367
	nop	word ptr cs:[rax + rax]
.label_377:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_367
	dec	rbp
	cmp	rbp, 1
	ja	.label_377
	nop	word ptr cs:[rax + rax]
.label_367:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_383
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
	jne	.label_391
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_387
	nop	dword ptr [rax]
.label_391:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_387:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_372
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_373
.label_372:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_373
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_373:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_364
	test	r13, r13
	je	.label_369
	cmp	rbx, 2
	jb	.label_369
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_369:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_378
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
	je	.label_381
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_382
	jmp	.label_390
.label_365:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_385:
	xor	eax, eax
.label_384:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_374:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_389
.label_383:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_390
.label_388:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_362
.label_378:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_390:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_370
	nop	dword ptr [rax + rax]
.label_379:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_380
	call	closedir
.label_380:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_379
.label_370:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_362:
	mov	rdi, rbp
.label_389:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_385
.label_381:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_390
	mov	rdi, rax
	call	cycle_check_init
.label_382:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_363
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_366
	mov	edi, OFFSET FLAT:label_371
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_368
.label_366:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_371
	xor	eax, eax
	call	openat_safer
.label_368:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_363
	or	byte ptr [rbx + 0x48], 4
.label_363:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_384
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	jne	.label_395
	test	al, 1
	je	.label_395
	mov	dl, 1
.label_395:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_397
	and	eax, 2
	jne	.label_397
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_398
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_393
.label_397:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_398
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_393
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_401
	mov	eax, dword ptr [r14]
.label_393:
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
.label_396:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_398:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_402
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_396
	cmp	ecx, 0x4000
	jne	.label_399
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_394
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_394
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_394:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_396
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_400
	cmp	dl, 0x2e
	jne	.label_396
	test	ecx, 0xff0000
	jne	.label_396
.label_400:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_396
.label_402:
	mov	ax, 8
	jmp	.label_396
.label_399:
	mov	ax, 3
	jmp	.label_396
.label_401:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_396
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405590

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
	jae	.label_410
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_406
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_406
	mov	qword ptr [r13], rdi
	jmp	.label_411
.label_410:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_411:
	test	rbx, rbx
	je	.label_414
	nop	dword ptr [rax]
.label_403:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_403
	mov	rdi, qword ptr [r13]
.label_414:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_412
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_404
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_405
	mov	rdx, rsi
	jmp	.label_408
.label_406:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_413
.label_405:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_407:
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
	jne	.label_407
.label_408:
	test	rcx, rcx
	je	.label_404
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_409:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_409
.label_404:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_412:
	mov	qword ptr [rcx + 0x10], 0
.label_413:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_418
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_419
	nop	word ptr cs:[rax + rax]
.label_416:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_426
	mov	rbx, qword ptr [rdi + 8]
.label_426:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_416
	jmp	.label_430
.label_419:
	mov	rbx, rdi
.label_430:
	mov	rdi, rbx
	call	free
.label_418:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_432
	nop	word ptr cs:[rax + rax]
.label_415:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_420
	call	closedir
.label_420:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_415
.label_432:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_422
	xor	ebp, ebp
	test	al, 4
	jne	.label_424
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_429
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_429:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_431
	jmp	.label_424
.label_422:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_424
	call	close
.label_431:
	test	eax, eax
	je	.label_424
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_424:
	lea	rbx, [r14 + 0x60]
	jmp	.label_428
	nop	dword ptr [rax + rax]
.label_421:
	mov	edi, eax
	call	close
.label_428:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_417
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_421
	jmp	.label_428
.label_417:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_423
	call	hash_free
.label_423:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_425
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_427
	call	hash_free
	jmp	.label_427
.label_425:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_427:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_433
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_433:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405880

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
	je	.label_437
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_437
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_474
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_481
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_484
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_489
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_434
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_438
	mov	edi, OFFSET FLAT:label_371
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_448
.label_474:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_437
.label_481:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_456
.label_484:
	lea	r13, [r12 + 0x70]
.label_456:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_435
	cmp	edx, 4
	je	.label_459
	test	al, 0x40
	je	.label_478
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_459
.label_478:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_465
	test	ah, 0x10
	jne	.label_469
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_477
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_480
	nop	word ptr cs:[rax + rax]
.label_435:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_453
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_491
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_435
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_439
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_451
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_451
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_487
	mov	edi, OFFSET FLAT:label_371
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_471
.label_464:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_480:
	test	rax, rax
	jne	.label_464
	jmp	.label_477
.label_459:
	test	ecx, 0x20000
	je	.label_468
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_468:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_472
	nop	dword ptr [rax]
.label_467:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_476
	call	closedir
.label_476:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_467
	mov	qword ptr [r14 + 8], 0
.label_472:
	mov	word ptr [r12 + 0x70], 6
.label_441:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_437
.label_453:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_490
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_443
	mov	rdi, r12
	call	free
	jmp	.label_439
.label_489:
	mov	r15, r12
	jmp	.label_449
.label_491:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_455
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_437
.label_434:
	mov	r15, r12
	jmp	.label_449
.label_455:
	test	ax, 0x102
	je	.label_460
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_466
	call	hash_free
	jmp	.label_466
.label_469:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_479:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_482
	call	closedir
.label_482:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_479
	mov	qword ptr [r14 + 8], 0
.label_465:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_486
.label_477:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_439
.label_486:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_437
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_441
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_441
	mov	word ptr [r13], 7
	jmp	.label_441
.label_438:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_371
	xor	eax, eax
	call	openat_safer
.label_448:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_452
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_449
.label_443:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_437
	mov	r15, qword ptr [r12 + 8]
.label_490:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_461
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_462
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_463
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_470
	test	al, 1
	jne	.label_488
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_475
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_483
.label_461:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_437
.label_452:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_449
.label_460:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_466:
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
	je	.label_450
	cmp	rbx, r12
	jne	.label_454
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_450
.label_454:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_450:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_458
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_449
.label_458:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_449
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_449
.label_463:
	mov	rdi, r14
	call	restore_initial_cwd
.label_483:
	test	eax, eax
	je	.label_488
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_488
.label_470:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_445
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_436
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_445
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_445
.label_487:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_371
	xor	eax, eax
	call	openat_safer
.label_471:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_473
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_451
.label_473:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_451:
	mov	word ptr [r15 + 0x74], 3
.label_439:
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
.label_449:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_440
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_447
	cmp	rax, 2
	jne	.label_462
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_485
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_485
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_447
	cmp	rax, 0x58465342
	je	.label_447
.label_485:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_440
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_447
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_447
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_447:
	mov	ax, word ptr [r15 + 0x70]
.label_440:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_437
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_457
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_457:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_437
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_437
.label_436:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_446
	cmp	esi, -0x64
	jne	.label_462
.label_446:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_442
	mov	edi, eax
	call	close
.label_442:
	mov	dword ptr [r14 + 0x2c], ebp
.label_445:
	mov	edi, dword ptr [rbx]
	call	close
.label_488:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_444
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_444
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_444:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_437:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_462:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_493
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_494
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_493:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_492
	cmp	qword ptr [rax + 0x58], 0
	js	.label_492
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_494
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_492
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_492
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_492:
	add	rsp, 0x18
	ret	
.label_494:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060a0

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
	je	.label_502
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_508
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_508
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_508:
	test	eax, eax
	sete	r14b
	jmp	.label_513
.label_502:
	xor	r14d, r14d
.label_513:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_514
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_497
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_497
	and	eax, 0x200
	je	.label_497
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_497
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_497:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_506
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_507
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_512
.label_514:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_495
	and	eax, 0x200
	je	.label_495
	mov	edi, r13d
	call	close
	jmp	.label_495
.label_507:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_512:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_495
.label_506:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_503
	test	rbx, rbx
	je	.label_505
	cmp	byte ptr [rbx], 0x2e
	jne	.label_505
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_505
	cmp	byte ptr [rbx + 2], 0
	jne	.label_505
.label_503:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_509
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_511
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_511
	mov	eax, dword ptr [r15 + 0x48]
.label_505:
	test	ah, 2
	jne	.label_510
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_496
.label_510:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_498
	cmp	esi, -0x64
	jne	.label_499
.label_498:
	test	r14b, r14b
	je	.label_500
	test	al, 4
	jne	.label_501
	test	esi, esi
	js	.label_501
	mov	edi, esi
	jmp	.label_504
.label_511:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_509:
	mov	ebp, 0xffffffff
.label_496:
	test	r13d, r13d
	jns	.label_495
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_495
.label_500:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_501
	mov	edi, eax
.label_504:
	call	close
.label_501:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_495:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_499:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406290

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
	je	.label_540
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_544
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
	jmp	.label_549
.label_540:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_557
	mov	edi, dword ptr [r15 + 0x2c]
.label_557:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_560
	test	al, 1
	je	.label_564
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_560
.label_564:
	mov	edx, 0x20000
.label_560:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_566
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_568
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_574
.label_544:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_566:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_541
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_526
.label_568:
	test	byte ptr [r12 + 1], 1
	je	.label_574
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
	je	.label_587
.label_574:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_525
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_515
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_515
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_519
	cmp	rax, 0x9fa0
	je	.label_515
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_515
	cmp	rax, 0x5346414f
	je	.label_515
	jmp	.label_525
.label_587:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_526
.label_519:
	test	rax, rax
	je	.label_515
	cmp	rax, 0x6969
	jne	.label_525
.label_515:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_573
.label_525:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_532
.label_573:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_536
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_536:
	test	ebx, ebx
	js	.label_542
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_537
.label_542:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_546
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_546:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_555
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_555
	call	close
.label_555:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_549
.label_532:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_563
.label_537:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_563:
	mov	r14d, r13d
	mov	rbp, rax
.label_549:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_567
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_567:
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
.label_559:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_561
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_529:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_520
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_523
	cmp	byte ptr [r13], 0x2e
	jne	.label_523
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_571
	test	al, al
	je	.label_527
	jmp	.label_523
	nop	word ptr [rax + rax]
.label_571:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_523
.label_527:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_529
	jmp	.label_535
	nop	word ptr cs:[rax + rax]
.label_523:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_577
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
	jae	.label_543
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_558
	nop	dword ptr [rax]
.label_543:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_562
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_579
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_569
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
	jmp	.label_572
.label_569:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_572:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_558:
	add	rbx, rax
	jb	.label_583
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
	jne	.label_592
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_589
	nop	dword ptr [rax]
.label_592:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_589:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_517
	mov	eax, edx
	and	eax, 0x400
	jne	.label_517
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_578
	nop	
.label_517:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_590
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_590:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_534
	mov	eax, dword ptr [(rcx * 4) + label_581]
.label_534:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_578:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_518
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_518:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_550
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_550
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_550
	cmp	rax, 0x1021994
	je	.label_550
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_550
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_550:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_559
	jmp	.label_553
.label_520:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_565
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_565:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_553
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_553
.label_535:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_561:
	mov	rbx, qword ptr [rsp + 0x28]
.label_553:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_580
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_582
	nop	word ptr [rax + rax]
.label_586:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_582:
	test	rcx, rcx
	je	.label_585
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_586
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_586
.label_585:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_580
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_521:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_576
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_576:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_516
	mov	rdx, qword ptr [rcx + 8]
.label_516:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_521
.label_580:
	test	byte ptr [r12], 4
	je	.label_554
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_554:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_528
	test	al, al
	je	.label_528
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_530
	test	rbx, rbx
	jne	.label_528
.label_530:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_533
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_475
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_538
.label_533:
	mov	rdi, r15
	call	restore_initial_cwd
.label_538:
	test	eax, eax
	je	.label_528
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_541
	xor	ebx, ebx
.label_548:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_522
	call	closedir
.label_522:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_548
	jmp	.label_541
.label_528:
	test	rbx, rbx
	je	.label_551
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_552
	cmp	rbx, 2
	jb	.label_556
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_556
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_541
.label_551:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_545
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_545
	movzx	eax, ax
	cmp	eax, 7
	je	.label_545
	mov	word ptr [rbp + 0x70], 6
.label_545:
	xor	ebx, ebx
	test	r14, r14
	je	.label_541
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_575:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_570
	call	closedir
.label_570:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_575
	jmp	.label_541
.label_552:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_541
.label_556:
	mov	rbx, r14
	jmp	.label_541
.label_583:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_584
	nop	word ptr cs:[rax + rax]
.label_591:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_588
	call	closedir
.label_588:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_591
.label_584:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_526
.label_562:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_524
.label_579:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_524:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_577:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_531
.label_539:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_547
	call	closedir
.label_547:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_539
.label_531:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_526:
	xor	ebx, ebx
.label_541:
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
	.align	16
	#Procedure 0x406cd0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_596
	test	ah, 2
	jne	.label_598
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_594
.label_598:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_599
	mov	edi, eax
	call	close
.label_599:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_596:
	xor	eax, eax
.label_594:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_597
	nop	word ptr [rax + rax]
.label_593:
	mov	edi, eax
	call	close
.label_597:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_595
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_593
	jmp	.label_597
.label_595:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d50

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
	je	.label_602
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_600
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_601
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_600
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_603
.label_602:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_601
	mov	qword ptr [r14], r14
.label_603:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_601
.label_600:
	xor	ebp, ebp
.label_601:
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
	#Procedure 0x406df0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_604
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_604:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e20
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
	jne	.label_615
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_607
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_619
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_607
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_607
.label_615:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_607
.label_619:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_610
	nop	dword ptr [rax]
.label_620:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_621
	call	closedir
.label_621:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_620
.label_610:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_605
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_605:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_613
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_613
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_613
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_612
	mov	edi, OFFSET FLAT:label_371
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_617
.label_613:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_607:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_612:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_371
	xor	eax, eax
	call	openat_safer
.label_617:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_608
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_611
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_616
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_607
.label_608:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_607
.label_611:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_618
	cmp	esi, -0x64
	jne	.label_609
.label_618:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_606
	mov	edi, eax
	call	close
.label_606:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_614
.label_616:
	mov	edi, r15d
	call	close
.label_614:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_607
.label_609:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fd0

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
	.align	16
	#Procedure 0x406fe0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_622
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_622:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000

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
	je	.label_623
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_625
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
	je	.label_626
.label_625:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_628
	mov	rax, qword ptr [rax + 8]
	jmp	.label_623
.label_628:
	mov	r12b, 1
	mov	r14, rbp
.label_626:
	xor	eax, eax
	test	r15d, r15d
	js	.label_623
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_623
	test	r12b, r12b
	je	.label_624
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_624
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_627
	cmp	rax, rbp
	je	.label_624
	call	abort
.label_627:
	mov	rdi, rbp
	call	free
.label_624:
	mov	rax, qword ptr [rsp]
.label_623:
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
	#Procedure 0x407100

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
	.align	16
	#Procedure 0x407110

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407120

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
	.align	16
	#Procedure 0x407150

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
	je	.label_629
	cmp	r15, -2
	jb	.label_629
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_629
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_629:
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
	#Procedure 0x4071b0

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_635
	cmp	byte ptr [rax], 0x2f
	jne	.label_630
.label_635:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_632:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_630:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_631
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_631
	mov	rdi, r14
	call	free
.label_631:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_633
	test	ebx, ebx
	js	.label_634
	cmp	dword ptr [rsp], ebx
	jne	.label_634
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_632
.label_634:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_637
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_632
.label_637:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_636
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_632
.label_633:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_636:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072b0

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_643
	cmp	byte ptr [rax], 0x2f
	jne	.label_639
.label_643:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_638:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_639:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_640
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_640
	mov	rdi, r14
	call	free
.label_640:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_641
	test	ebx, ebx
	js	.label_642
	cmp	dword ptr [rsp], ebx
	jne	.label_642
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_638
.label_642:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_645
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_638
.label_645:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_644
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_638
.label_641:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_644:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073b0

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_651
	cmp	byte ptr [rax], 0x2f
	jne	.label_646
.label_651:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_648:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_646:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_647
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_647
	mov	rdi, r14
	call	free
.label_647:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_649
	test	ebx, ebx
	js	.label_650
	cmp	dword ptr [rsp], ebx
	jne	.label_650
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_648
.label_650:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_653
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_648
.label_653:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_652
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_648
.label_649:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_652:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074b0

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_660
	cmp	byte ptr [rax], 0x2f
	jne	.label_659
.label_660:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_655:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_659:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_654
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_654
	mov	rdi, r14
	call	free
.label_654:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_657
	test	ebx, ebx
	js	.label_658
	cmp	dword ptr [rsp], ebx
	jne	.label_658
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_655
.label_658:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_656
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_655
.label_656:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_661
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_655
.label_657:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_661:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075b0

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
	jne	.label_663
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_662
	test	cl, cl
	jne	.label_662
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_662
.label_663:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_662
	call	__errno_location
	mov	dword ptr [rax], 0
.label_662:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x407620

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_664
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_666
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_666
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_665
.label_666:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_667
	mov	al, 1
	test	rdx, rdx
	je	.label_665
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_667:
	xor	eax, eax
.label_665:
	ret	
.label_664:
	push	rax
	mov	edi, OFFSET FLAT:label_668
	mov	esi, OFFSET FLAT:label_669
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_670
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407690

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_671
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_671:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_672
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_674
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_673
.label_674:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_673:
	mov	edx, dword ptr [rax]
.label_672:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407760

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_676
	cmp	byte ptr [rax], 0x43
	jne	.label_678
	cmp	byte ptr [rax + 1], 0
	je	.label_675
.label_678:
	mov	esi, OFFSET FLAT:label_677
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_676
.label_675:
	xor	ebx, ebx
.label_676:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077a0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077b0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077c0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077d0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_684
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_680
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_685:
	cmp	qword ptr [rcx], 0
	je	.label_681
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_679:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_679
	cmp	rdi, rax
	cmova	rax, rdi
.label_681:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_686
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_682:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_682
	cmp	rdi, rax
	cmova	rax, rdi
.label_686:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_685
.label_680:
	test	r8, r8
	je	.label_684
	cmp	qword ptr [rcx], 0
	je	.label_684
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_683:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_683
	cmp	rdx, rax
	cmova	rax, rdx
.label_684:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407890
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_692
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_694
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_689:
	cmp	qword ptr [rax], 0
	je	.label_690
	mov	rdx, rax
	nop	dword ptr [rax]
.label_693:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_693
	inc	r10
.label_690:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_695
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_687:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_687
	inc	r10
.label_695:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_689
	jmp	.label_691
.label_694:
	xor	r10d, r10d
.label_691:
	test	r8, r8
	je	.label_692
	cmp	qword ptr [rax], 0
	je	.label_692
	nop	dword ptr [rax]
.label_696:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_696
	inc	r10
.label_692:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_697
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_688
.label_697:
	xor	eax, eax
.label_688:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407950
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
	jae	.label_702
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_707
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_703:
	cmp	qword ptr [rax], 0
	je	.label_698
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_706:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_706
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_698:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_700
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_705:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_705
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_700:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_703
.label_707:
	test	r8, r8
	je	.label_702
	cmp	qword ptr [rax], 0
	je	.label_702
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_699:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_699
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_702:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_704
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_701
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_709]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_710]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_711]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_712
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_708
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
	#Procedure 0x407ac0

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
	jae	.label_717
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_714
	add	rbx, rax
	je	.label_714
	cmp	rsi, r12
	je	.label_716
	xor	r15d, r15d
	nop	
.label_715:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_713
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_714
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_715
.label_716:
	mov	r15, r12
	jmp	.label_714
.label_713:
	mov	r15, qword ptr [rbx]
.label_714:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_717:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b40
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_718
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_721
	nop	word ptr cs:[rax + rax]
.label_720:
	add	rcx, 0x10
.label_721:
	cmp	rcx, rdx
	jae	.label_719
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_720
.label_718:
	ret	
.label_719:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b80
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
	jae	.label_725
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_726:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_724
	test	rdx, rdx
	jne	.label_726
	jmp	.label_722
.label_724:
	test	rdx, rdx
	je	.label_722
	mov	rax, qword ptr [rdx]
	jmp	.label_723
.label_722:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_727:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_723
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_727
.label_723:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_725:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c10
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_728
	xor	eax, eax
.label_730:
	cmp	qword ptr [r9], 0
	je	.label_729
	test	r9, r9
	je	.label_729
	mov	r8, r9
	nop	
.label_731:
	cmp	rax, rdx
	jae	.label_728
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_731
	mov	r8, qword ptr [rdi + 8]
.label_729:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_730
.label_728:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c60
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
	jae	.label_732
	xor	ebx, ebx
.label_736:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_734
	test	r13, r13
	je	.label_734
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_732
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_733:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_735
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_733
	jmp	.label_732
	nop	dword ptr [rax]
.label_735:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_734:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_736
.label_732:
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
	#Procedure 0x407d00
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_737
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_738:
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
	jne	.label_738
.label_737:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d40
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_739]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d60

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
	je	.label_745
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_750
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_754]
	jbe	.label_742
	movss	xmm1, dword ptr [rip + label_743]
	ucomiss	xmm1, xmm0
	jbe	.label_742
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_748]
	jbe	.label_742
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_742
	addss	xmm1, dword ptr [rip + label_754]
	ucomiss	xmm0, xmm1
	jbe	.label_742
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_744]
	ucomiss	xmm2, xmm0
	jb	.label_742
	ucomiss	xmm0, xmm1
	jbe	.label_742
.label_750:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_752
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_753
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_740
.label_753:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_740:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_746]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_747]
	jae	.label_742
.label_752:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_749
	nop	
.label_755:
	add	rbx, 2
.label_749:
	cmp	rbx, -1
	je	.label_742
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_741
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_751:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_741
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_751
.label_741:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_755
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_742
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_742
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_742
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
	jmp	.label_745
.label_742:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_745:
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
	#Procedure 0x407f80

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
	#Procedure 0x407f90

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fa0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_756
	nop	word ptr cs:[rax + rax]
.label_759:
	add	r14, 0x10
.label_756:
	cmp	r14, rax
	jae	.label_758
	cmp	qword ptr [r14], 0
	je	.label_759
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_760
	nop	word ptr cs:[rax + rax]
.label_762:
	test	cl, 1
	je	.label_761
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_761:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_762
.label_760:
	test	cl, cl
	je	.label_757
	mov	rdi, qword ptr [r14]
	call	rax
.label_757:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_759
.label_758:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408050

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_768
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_768
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_770
	nop	
.label_763:
	add	r15, 0x10
.label_770:
	cmp	r15, rax
	jae	.label_768
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_763
	test	r15, r15
	je	.label_763
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_764
.label_767:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_764:
	test	rbx, rbx
	jne	.label_767
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_763
.label_768:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_769
	nop	
.label_765:
	add	r15, 0x10
.label_769:
	cmp	r15, rax
	jae	.label_772
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_765
	nop	word ptr cs:[rax + rax]
.label_766:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_766
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_765
.label_772:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_771
.label_773:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_773
.label_771:
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
	#Procedure 0x408120

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
	jne	.label_786
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_790
	cvtsi2ss	xmm0, rsi
	jmp	.label_776
.label_790:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_776:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_746]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_747]
	jae	.label_779
.label_786:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_782
	nop	dword ptr [rax + rax]
.label_792:
	add	rbx, 2
.label_782:
	cmp	rbx, -1
	je	.label_779
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_774
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_789:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_774
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_789
.label_774:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_792
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_779
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_783
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_779
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
	je	.label_780
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_783
.label_780:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_791
	nop	
.label_784:
	add	r12, 0x10
.label_791:
	cmp	r12, r15
	jae	.label_781
	cmp	qword ptr [r12], 0
	je	.label_784
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_787
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_785:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_778
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_777
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_788
	nop	word ptr [rax + rax]
.label_777:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_788:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_785
.label_787:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_784
.label_781:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_775
	mov	rdi, qword ptr [rsp]
	call	free
.label_779:
	xor	ebp, ebp
.label_783:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_778:
	call	abort
.label_775:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083b0

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
	jae	.label_804
	nop	word ptr cs:[rax + rax]
.label_802:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_800
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_803
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_798:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_795
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_797
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_806
	nop	dword ptr [rax]
.label_797:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_806:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_798
	mov	r13, qword ptr [r14]
.label_803:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_800
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_793
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_796
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_799
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_801
.label_796:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_805
.label_799:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_794
.label_801:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_805:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_800:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_802
	mov	al, 1
.label_804:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_794:
	xor	eax, eax
	jmp	.label_804
.label_795:
	call	abort
.label_793:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408520

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
	je	.label_822
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_822
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_807
	cmp	rsi, r14
	je	.label_833
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_828
	mov	rax, qword ptr [r12]
.label_832:
	test	rax, rax
	jne	.label_837
	jmp	.label_807
.label_833:
	mov	rax, r14
.label_837:
	xor	ebp, ebp
	test	r15, r15
	je	.label_810
	mov	qword ptr [r15], rax
	jmp	.label_810
.label_828:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_807
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_829:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_825
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_827
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_829
.label_807:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_830
	cvtsi2ss	xmm1, rax
	jmp	.label_834
.label_830:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_834:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_808
	cvtsi2ss	xmm0, rcx
	jmp	.label_819
.label_808:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_819:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_817
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_826
	ucomiss	xmm2, dword ptr [rip + label_754]
	jbe	.label_820
	movss	xmm3, dword ptr [rip + label_743]
	ucomiss	xmm3, xmm2
	jbe	.label_820
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_748]
	jbe	.label_820
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_820
	addss	xmm3, dword ptr [rip + label_754]
	ucomiss	xmm2, xmm3
	jbe	.label_820
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_744]
	ucomiss	xmm5, xmm4
	jb	.label_820
	ucomiss	xmm4, xmm3
	ja	.label_818
.label_820:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_823]
	jmp	.label_818
.label_826:
	mov	eax, OFFSET FLAT:default_tuning
.label_818:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_817
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_813
	mulss	xmm0, xmm2
.label_813:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_747]
	jae	.label_810
	movss	xmm1, dword ptr [rip + label_746]
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
	je	.label_810
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_822
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_817
	cmp	rsi, r14
	mov	rax, r14
	je	.label_811
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_831
	mov	rax, qword ptr [r12]
.label_811:
	test	rax, rax
	jne	.label_814
.label_817:
	cmp	qword ptr [r12], 0
	je	.label_835
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_836
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_809
.label_835:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_815]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_816
.label_836:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_810
.label_809:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_816:
	mov	ebp, 1
.label_810:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_825:
	mov	rax, r14
	jmp	.label_832
.label_827:
	mov	rax, qword ptr [rbp]
	jmp	.label_832
.label_831:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_817
	lea	rbp, [rbx + rbp + 8]
.label_824:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_812
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_821
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_824
	jmp	.label_817
.label_812:
	mov	rax, r14
	jmp	.label_811
.label_821:
	mov	rax, qword ptr [rbp]
	jmp	.label_811
.label_822:
	call	abort
.label_814:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408860

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
	je	.label_838
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_838:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408890

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
	jae	.label_847
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_841
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_854
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_855
	mov	r14, qword ptr [r13]
.label_854:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_858
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_846
.label_855:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_841
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_850:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_848
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_849
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_850
	jmp	.label_841
.label_858:
	mov	qword ptr [r13], 0
	jmp	.label_846
.label_848:
	mov	rcx, rax
	jmp	.label_857
.label_849:
	mov	r14, qword ptr [rcx]
.label_857:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_846:
	xor	r12d, r12d
	test	r14, r14
	je	.label_841
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_842
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_852
	cvtsi2ss	xmm1, rax
	jmp	.label_851
.label_852:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_851:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_853
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_856
.label_853:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_856:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_842
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_843
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_754]
	jbe	.label_839
	movss	xmm4, dword ptr [rip + label_743]
	ucomiss	xmm4, xmm3
	jbe	.label_839
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_839
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_748]
	jbe	.label_839
	movss	xmm4, dword ptr [rip + label_754]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_839
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_744]
	ucomiss	xmm5, xmm3
	jb	.label_839
	ucomiss	xmm3, xmm4
	ja	.label_845
.label_839:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_845
.label_843:
	mov	eax, OFFSET FLAT:default_tuning
.label_845:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_842
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_844
	mulss	xmm0, dword ptr [rax + 8]
.label_844:
	movss	xmm1, dword ptr [rip + label_746]
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
	jne	.label_842
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_840
	nop	word ptr cs:[rax + rax]
.label_859:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_859
.label_840:
	mov	qword ptr [r15 + 0x48], 0
.label_842:
	mov	r12, r14
.label_841:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_847:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b30

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
	.align	16
	#Procedure 0x408b60

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b70

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
	jne	.label_860
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_860:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bb0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_861
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_862
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_862:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_861:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x408be0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_81
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_863
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c10

	.globl openat_save_fail
	.type openat_save_fail, @function
openat_save_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_864
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c50

	.globl openat_restore_fail
	.type openat_restore_fail, @function
openat_restore_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_865
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c90

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_866
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_866:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_867
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_868
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_869
.label_868:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_869:
	mov	ecx, dword ptr [rax]
.label_867:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408d50

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
	js	.label_871
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_870
	mov	dword ptr [r14], ebp
	jmp	.label_871
.label_870:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_871:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408da0

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_371
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_872
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_872:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408df0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_873
	mov	edi, eax
	jmp	fchdir
.label_873:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e10

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_874
	call	close
.label_874:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e30

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
	ja	.label_875
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
	jmp	.label_876
.label_875:
	mov	eax, ebx
.label_876:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e80

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
	je	.label_880
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	jne	.label_888
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	test	r15, r15
	je	.label_892
	cmp	r15, 0x1000
	jb	.label_895
	add	r15, rbp
	mov	rbx, -1
	nop	word ptr [rax + rax]
.label_902:
	cmp	byte ptr [rbp + rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_902
	mov	r12d, 0xffffff9c
	test	rbx, rbx
	je	.label_907
	cmp	rbx, 2
	jne	.label_908
	lea	rdi, [rbp + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_899
	mov	byte ptr [rbx], 0
	mov	edi, 0xffffff9c
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	mov	byte ptr [rbx], 0x2f
	js	.label_893
	nop	word ptr cs:[rax + rax]
.label_898:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_898
	jmp	.label_900
.label_880:
	xor	ebx, ebx
	jmp	.label_888
.label_908:
	mov	edi, 0xffffff9c
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_893
	add	rbp, rbx
.label_907:
	mov	rbx, rbp
.label_900:
	cmp	byte ptr [rbx], 0x2f
	je	.label_878
	cmp	rbx, r15
	jbe	.label_882
	mov	edi, OFFSET FLAT:label_884
	mov	esi, OFFSET FLAT:label_885
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_886
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
.label_894:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, rbx
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_899
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_901
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_877
	test	r12d, r12d
	js	.label_903
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_887
.label_903:
	mov	r12d, ebx
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	
.label_891:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_891
.label_882:
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_894
	cmp	rbx, r15
	jae	.label_897
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_881
	test	r12d, r12d
	js	.label_906
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_906
	jmp	.label_887
.label_899:
	mov	dword ptr [r14], 0x24
	jmp	.label_911
.label_897:
	mov	ebx, r12d
.label_906:
	mov	edi, ebx
	call	fchdir
	test	eax, eax
	je	.label_879
	mov	r12d, ebx
	jmp	.label_881
.label_893:
	mov	ebx, dword ptr [r14]
	jmp	.label_883
.label_879:
	test	ebx, ebx
	js	.label_890
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	ebx, 0
	je	.label_888
	jmp	.label_887
.label_877:
	mov	byte ptr [rbp], 0x2f
.label_881:
	mov	ebx, dword ptr [r14]
	test	r12d, r12d
	js	.label_883
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_887
.label_883:
	mov	dword ptr [r14], ebx
.label_911:
	mov	ebx, 0xffffffff
.label_888:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_890:
	xor	ebx, ebx
	jmp	.label_888
.label_901:
	mov	edi, OFFSET FLAT:label_904
	mov	esi, OFFSET FLAT:label_885
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_886
	call	__assert_fail
.label_887:
	mov	edi, OFFSET FLAT:label_909
	mov	esi, OFFSET FLAT:label_885
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_910
	call	__assert_fail
.label_892:
	mov	edi, OFFSET FLAT:label_905
	mov	esi, OFFSET FLAT:label_885
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_886
	call	__assert_fail
.label_895:
	mov	edi, OFFSET FLAT:label_889
	mov	esi, OFFSET FLAT:label_885
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_886
	call	__assert_fail
.label_878:
	mov	edi, OFFSET FLAT:label_896
	mov	esi, OFFSET FLAT:label_885
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_886
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x409160

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_912
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_913
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_912
.label_913:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_912
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_914
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_914:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_912:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_932
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_932:
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
	ja	.label_923
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_933
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_922
	test	esi, esi
	jne	.label_923
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_935
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_915
.label_923:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_916
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_922
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_925
.label_933:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_928
.label_922:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_929
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_930
.label_929:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_930:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_931:
	call	fcntl
.label_928:
	mov	ebp, eax
.label_917:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_925:
	cmp	eax, 6
	jne	.label_916
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_919
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_920
.label_916:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_924
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_927
.label_935:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_915:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_931
.label_919:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_920:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_934
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_918
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_918
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_917
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_926
.label_918:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_917
.label_924:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_927:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_928
.label_934:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_926:
	test	al, al
	je	.label_917
	test	ebp, ebp
	js	.label_917
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_921
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_917
.label_921:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_917
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409480

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_936
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_936
	test	byte ptr [rbx + 1], 1
	je	.label_936
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_936:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094c0

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
	jne	.label_937
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_937
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_938
.label_937:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_938:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_939
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_939:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409530

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
	.align	16
	#Procedure 0x409550

	.globl openat_proc_name
	.type openat_proc_name, @function
openat_proc_name:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdx
	mov	r15d, esi
	mov	rbx, rdi
	cmp	byte ptr [r14], 0
	je	.label_945
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
	test	ecx, ecx
	jne	.label_944
	mov	edi, OFFSET FLAT:label_948
	mov	esi, 0x10900
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_943
	lea	r12, [rsp]
	mov	esi, 1
	mov	edx, 0x20
	mov	ecx, OFFSET FLAT:label_947
	xor	eax, eax
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	xor	esi, esi
	mov	rdi, r12
	call	access
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	eax, 1
	mov	dword ptr [rip + openat_proc_name.proc_status],  eax
	mov	edi, ebp
	call	close
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
.label_944:
	xor	eax, eax
	test	ecx, ecx
	js	.label_940
	mov	rdi, r14
	call	strlen
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_942
	mov	rdi, rax
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_940
.label_942:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_941
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r15d
	call	__sprintf_chk
	movsxd	rdi, eax
	add	rdi, rbx
	mov	rsi, r14
	call	strcpy
	jmp	.label_946
.label_945:
	mov	byte ptr [rbx], 0
.label_946:
	mov	rax, rbx
.label_940:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_943:
	mov	dword ptr [rip + openat_proc_name.proc_status],  0xffffffff
	xor	eax, eax
	jmp	.label_940
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x409660

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
