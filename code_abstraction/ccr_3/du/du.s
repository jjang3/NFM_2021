	.section	.text
	.align	32
	#Procedure 0x402760

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_blocksize_note
	call	emit_size_note
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_13:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402930

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl emit_blocksize_note
	.type emit_blocksize_note, @function
emit_blocksize_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rsi, rcx
	pop	rcx
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402990

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_26
	nop	
.label_39:
	mov	edi, OFFSET FLAT:label_30
	call	strcmp
	test	eax, eax
	je	.label_37
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_39
.label_37:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_30
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_27
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_30
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_34
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ae0

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
	mov	r13d, edi
	mov	qword ptr [word ptr [rsp + 48]], OFFSET FLAT:label_110
	mov	qword ptr [rsp + 0x38], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_34
	call	setlocale
	mov	edi, OFFSET FLAT:label_90
	mov	esi, OFFSET FLAT:label_91
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_90
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	new_exclude
	mov	qword ptr [word ptr [rip + exclude]],  rax
	mov	edi, OFFSET FLAT:label_97
	call	getenv
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	call	human_options
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x10], 8
	mov	dword ptr [rsp + 0xc], 0x10
	xor	ebp, ebp
	lea	r12, [rsp + 0x14]
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_61
	nop	word ptr cs:[rax + rax]
.label_45:
	mov	bpl, cl
.label_61:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	edx, OFFSET FLAT:label_112
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r13d
	mov	rsi, r15
	mov	r8, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0x10a
	ja	.label_52
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_80]]
.label_2855:
	mov	dword ptr [rsp + 0xc], 0x11
	jmp	.label_44
.label_52:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_44
.label_2853:
	mov	byte ptr [byte ptr [rip + opt_nul_terminate_output]],  1
	jmp	.label_44
.label_2854:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	call	human_options
	test	eax, eax
	mov	ecx, ebp
	je	.label_45
	jmp	.label_47
.label_2856:
	mov	dword ptr [rsp + 0xc], 2
	jmp	.label_44
.label_2857:
	mov	dword ptr [rsp + 0xc], 0x10
	jmp	.label_44
.label_2858:
	mov	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jmp	.label_44
.label_2859:
	mov	rsi,  qword ptr [word ptr [rip + exclude]]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	mov	edi, OFFSET FLAT:add_exclude
	mov	ecx, 0x10000000
	mov	r8d, 0xa
	call	add_exclude_file
	test	eax, eax
	je	.label_44
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_44
.label_2860:
	mov	byte ptr [byte ptr [rip + opt_all]],  1
	jmp	.label_44
.label_2861:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_44
.label_2862:
	mov	byte ptr [byte ptr [rip + print_grand_total]],  1
	jmp	.label_44
.label_2863:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rcx, [rsp + 0x20]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	call	xstrtoul
	test	eax, eax
	je	.label_82
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_44
.label_2864:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0xb0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_44
.label_2865:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x400
	jmp	.label_44
.label_2866:
	mov	byte ptr [byte ptr [rip + opt_count_all]],  1
	jmp	.label_44
.label_2867:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x100000
	jmp	.label_44
.label_2868:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:opt_threshold
	mov	r8d, OFFSET FLAT:label_109
	call	xstrtoimax
	test	eax, eax
	jne	.label_47
	cmp	qword ptr [word ptr [rip + opt_threshold]],  0
	jne	.label_44
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2d
	mov	ecx, ebp
	jne	.label_45
	jmp	.label_125
.label_2869:
	or	dword ptr [rsp + 0x10], 0x40
	jmp	.label_44
.label_2870:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	jmp	.label_44
.label_2871:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x10000000
	call	add_exclude
	jmp	.label_44
.label_2872:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_44
.label_2873:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0x90
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_44
.label_2874:
	mov	byte ptr [byte ptr [rip + opt_time]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	test	rsi, rsi
	je	.label_51
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_56
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
.label_51:
	mov	dword ptr [dword ptr [rip + time_type]],  eax
	mov	edi, OFFSET FLAT:label_63
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + localtz]],  rax
	jmp	.label_44
.label_2875:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + time_style]],  rax
	jmp	.label_44
.label_2876:
	mov	byte ptr [byte ptr [rip + opt_inodes]],  1
	jmp	.label_44
.label_82:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [rip + max_depth]],  rax
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	ecx, ebp
	jmp	.label_45
.label_2852:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_75
	and	bpl, 1
	je	.label_78
	mov	al,  byte ptr [byte ptr [rip + opt_all]]
	xor	al, 1
	test	al, 1
	je	.label_79
.label_78:
	test	bpl, bpl
	je	.label_81
	mov	rbx, qword ptr [rsp + 0x28]
	and	bl, 1
	je	.label_83
	mov	rax,  qword ptr [word ptr [rip + max_depth]]
	test	rax, rax
	jne	.label_83
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_83:
	test	bl, bl
	je	.label_98
	mov	rbx,  qword ptr [word ptr [rip + max_depth]]
	test	rbx, rbx
	jne	.label_96
.label_98:
	mov	qword ptr [word ptr [rip + max_depth]],  0
.label_81:
	cmp	byte ptr [byte ptr [rip + opt_inodes]],  1
	jne	.label_41
	cmp	byte ptr [byte ptr [rip + apparent_size]],  1
	jne	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_102:
	mov	qword ptr [word ptr [rip + output_block_size]],  1
.label_41:
	cmp	byte ptr [byte ptr [rip + opt_time]],  1
	jne	.label_42
	cmp	qword ptr [word ptr [rip + time_style]],  0
	jne	.label_111
	mov	edi, OFFSET FLAT:label_113
	call	getenv
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + time_style]],  rbx
	test	rbx, rbx
	je	.label_115
	mov	esi, OFFSET FLAT:label_117
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_115
	cmp	byte ptr [rbx], 0x2b
	jne	.label_123
	mov	esi, 0xa
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	je	.label_111
	mov	byte ptr [rax], 0
	jmp	.label_111
.label_115:
	mov	qword ptr [word ptr [rip + time_style]], OFFSET FLAT:label_131
.label_111:
	mov	rsi,  qword ptr [word ptr [rip + time_style]]
	cmp	byte ptr [rsi], 0x2b
	jne	.label_40
	inc	rsi
	mov	qword ptr [word ptr [rip + time_format]],  rsi
	jmp	.label_42
.label_40:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_46
	mov	edx, OFFSET FLAT:time_style_args
	mov	ecx, OFFSET FLAT:time_style_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_style_types]]
	cmp	eax, 2
	je	.label_50
	cmp	eax, 1
	je	.label_54
	test	eax, eax
	jne	.label_42
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:label_55
	jmp	.label_42
.label_50:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:label_58
	jmp	.label_42
.label_54:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:label_60
.label_42:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	r14, r14
	je	.label_62
	cmp	eax, r13d
	jl	.label_64
	cmp	byte ptr [r14], 0x2d
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_108
	cmp	byte ptr [r14 + 1], 0
	je	.label_77
.label_108:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_68
	mov	rdi, r14
	call	freopen_safer
	test	rax, rax
	je	.label_70
.label_77:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	argv_iter_init_stream
	mov	r12, rax
	mov	al, 1
	jmp	.label_73
.label_62:
	cmp	eax, r13d
	lea	rax, [r15 + rax*8]
	lea	rdi, [rsp + 0x30]
	cmovl	rdi, rax
	call	argv_iter_init_argv
	mov	r12, rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	cmp	eax, r13d
	setl	cl
	cmp	dword ptr [rsp + 0xc], 2
	sete	al
	or	al, cl
	mov	r13, qword ptr [rsp + 0x18]
.label_73:
	mov	ebp, dword ptr [rsp + 0x10]
	mov	byte ptr [byte ptr [rip + hash_all]],  al
	test	r12, r12
	je	.label_84
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_files]],  rax
	test	rax, rax
	je	.label_84
	mov	eax, ebp
	or	eax, 0x100
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	mov	cl,  byte ptr [byte ptr [rip + opt_count_all]]
	cmove	ebp, eax
	test	cl, cl
	cmovne	ebp, eax
	lea	rsi, [rsp + 0x20]
	mov	rdi, r12
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	je	.label_99
	or	ebp, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0x10], ebp
	lea	r15, [rsp + 0x20]
	jmp	.label_101
.label_116:
	xor	eax, eax
	jmp	.label_106
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
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
	call	error
	mov	al, 1
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_101:
	test	r14, r14
	je	.label_114
	cmp	byte ptr [r14], 0x2d
	jne	.label_114
	cmp	byte ptr [r14 + 1], 0
	jne	.label_114
	movzx	ecx, byte ptr [rbx]
	cmp	cl, 0x2d
	jne	.label_116
	cmp	byte ptr [rbx + 1], 0
	je	.label_118
.label_114:
	xor	eax, eax
.label_49:
	movzx	ecx, byte ptr [rbx]
.label_106:
	test	cl, cl
	je	.label_122
	test	al, al
	je	.label_124
	xor	r13d, r13d
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_122:
	test	r14, r14
	je	.label_130
	mov	rdi, r12
	call	argv_iter_n_args
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, r13
	xor	r13d, r13d
	mov	r9, rbx
	call	error
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	qword ptr [word ptr [rip + main.temp_argv]],  rbx
	mov	edi, dword ptr [rsp + 0x10]
	call	du_files
	and	al, r13b
	mov	r13b, al
	jmp	.label_53
.label_130:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	call	error
	nop	
.label_53:
	mov	rdi, r12
	mov	rsi, r15
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_101
.label_99:
	mov	eax, dword ptr [rsp + 0x20]
	cmp	eax, 2
	je	.label_69
	cmp	eax, 4
	jne	.label_71
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_69:
	mov	rdi, r12
	call	argv_iter_free
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	call	di_set_free
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	test	rdi, rdi
	je	.label_87
	call	di_set_free
.label_87:
	test	r14, r14
	je	.label_92
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	je	.label_93
	test	r13b, 1
	je	.label_92
	jmp	.label_95
.label_93:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	r13b, 1
	je	.label_92
	test	eax, eax
	jne	.label_95
.label_92:
	cmp	byte ptr [byte ptr [rip + print_grand_total]],  1
	jne	.label_100
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	edi, OFFSET FLAT:tot_dui
	mov	rsi, rax
	call	print_size
.label_100:
	not	r13b
	and	r13b, 1
	movzx	eax, r13b
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_123:
	mov	rbx,  qword ptr [word ptr [rip + time_style]]
	mov	esi, OFFSET FLAT:main.posix_prefix
	mov	edx, 6
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	jne	.label_111
	add	rbx, 6
	nop	
.label_89:
	mov	qword ptr [word ptr [rip + time_style]],  rbx
	mov	esi, OFFSET FLAT:main.posix_prefix
	mov	edx, 6
	mov	rdi, rbx
	call	strncmp
	add	rbx, 6
	test	eax, eax
	je	.label_89
	jmp	.label_111
.label_2850:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_30
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_126
	mov	r9d, OFFSET FLAT:label_127
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_128
	push	OFFSET FLAT:label_129
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_2851:
	xor	edi, edi
	call	usage
.label_47:
	mov	esi, dword ptr [rsp + 0x14]
	mov	r8,  qword ptr [word ptr [rip + optarg]]
	movsx	edx, bl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	call	xstrtol_fatal
.label_75:
	mov	edi, 1
	call	usage
.label_79:
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
	mov	edi, 1
	call	usage
.label_71:
	cmp	eax, 3
	jne	.label_65
.label_84:
	call	xalloc_die
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_70:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_65:
	mov	edi, OFFSET FLAT:label_119
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 0x438
	mov	ecx, OFFSET FLAT:label_121
	call	__assert_fail
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x4035e0

	.globl du_files
	.type du_files, @function
du_files:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	eax, edi
	mov	bl, 1
	cmp	qword ptr [word ptr [rip + main.temp_argv]],  0
	je	.label_132
	mov	edi, OFFSET FLAT:main.temp_argv
	xor	edx, edx
	mov	esi, eax
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_135
	mov	bl, 1
	nop	dword ptr [rax + rax]
.label_136:
	mov	rdi, r14
	mov	rsi, rax
	call	process_file
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
	test	rax, rax
	jne	.label_136
.label_135:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_137
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x20]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
.label_137:
	mov	qword ptr [word ptr [rip + prev_level]],  0
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_132
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_132:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl print_size
	.type print_size, @function
print_size:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	lea	rcx, [rbx + 8]
	test	al, al
	cmove	rcx, rbx
	mov	rdi, qword ptr [rcx]
	call	print_only_size
	cmp	byte ptr [byte ptr [rip + opt_time]],  1
	jne	.label_139
	mov	edi, 9
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + time_format]]
	mov	rcx,  qword ptr [word ptr [rip + localtz]]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	call	show_date
.label_139:
	mov	al,  byte ptr [byte ptr [rip + opt_nul_terminate_output]]
	xor	edx, edx
	test	al, al
	mov	ecx, 0xa
	cmovne	ecx, edx
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_138
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fflush_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403760

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbp, rsi
	mov	r13, rdi
	mov	rax, qword ptr [rbp + 0x38]
	mov	qword ptr [rsp + 8], rax
	lea	r12, [rbp + 0x78]
	movzx	r14d, word ptr [rbp + 0x70]
	cmp	r14d, 6
	mov	r15b, 1
	je	.label_155
	movzx	eax, r14w
	cmp	eax, 4
	jne	.label_165
	mov	r13d, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
.label_155:
	cmp	byte ptr [byte ptr [rip + apparent_size]],  1
	jne	.label_143
	mov	rax, qword ptr [rbp + 0xa8]
	xor	ebx, ebx
	test	rax, rax
	cmovns	rbx, rax
	jmp	.label_175
.label_143:
	mov	rbx, qword ptr [rbp + 0xb8]
	shl	rbx, 9
.label_175:
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	mov	rdi, r12
	cmp	eax, 2
	je	.label_177
	test	eax, eax
	jne	.label_141
	call	get_stat_mtime
	jmp	.label_145
.label_165:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi, qword ptr [rsp + 8]
	call	excluded_file_name
	test	al, al
	jne	.label_146
	cmp	r14d, 0xb
	jne	.label_151
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, rbp
	call	rpl_fts_set
	mov	rdi, r13
	call	rpl_fts_read
	cmp	rax, rbp
	jne	.label_144
	movzx	r14d, word ptr [rbp + 0x70]
.label_151:
	cmp	r14d, 0xd
	je	.label_157
	movzx	eax, r14w
	cmp	eax, 0xa
	jne	.label_158
.label_157:
	mov	ebx, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_147
.label_177:
	call	get_stat_atime
	jmp	.label_145
.label_141:
	call	get_stat_ctime
.label_145:
	mov	rcx, rdx
	lea	rdi, [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, rax
	call	duinfo_set
	mov	r12, qword ptr [rbp + 0x58]
	movups	xmm0, xmmword ptr [rsp + 0x38]
	movups	xmm1, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rax,  qword ptr [word ptr [rip + process_file.n_alloc]]
	test	rax, rax
	je	.label_172
	mov	rsi,  qword ptr [word ptr [rip + prev_level]]
	cmp	r12, rsi
	je	.label_140
	jbe	.label_156
	cmp	rax, r12
	ja	.label_163
	mov	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	edx, 0x80
	mov	rsi, r12
	call	xnrealloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	lea	rax, [r12 + r12]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rax
.label_163:
	mov	rbx,  qword ptr [word ptr [rip + prev_level]]
	inc	rbx
	cmp	rbx, r12
	ja	.label_140
	mov	rbp, rbx
	shl	rbp, 6
	add	rbp,  qword ptr [word ptr [rip + process_file.dulvl]]
	nop	word ptr cs:[rax + rax]
.label_161:
	mov	rdi, rbp
	call	duinfo_init
	lea	rdi, [rbp + 0x20]
	call	duinfo_init
	inc	rbx
	add	rbp, 0x40
	cmp	rbx, r12
	jbe	.label_161
	jmp	.label_140
.label_172:
	lea	rdi, [r12 + 0xa]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rdi
	mov	esi, 0x40
	call	xcalloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	jmp	.label_140
.label_156:
	lea	rax, [rsi - 1]
	cmp	r12, rax
	jne	.label_176
	shl	rsi, 6
	add	rsi,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rdi, [rsp + 0x10]
	call	duinfo_add
	mov	al,  byte ptr [byte ptr [rip + opt_separate_dirs]]
	test	al, al
	jne	.label_171
	mov	rax,  qword ptr [word ptr [rip + prev_level]]
	mov	rcx,  qword ptr [word ptr [rip + process_file.dulvl]]
	shl	rax, 6
	lea	rsi, [rcx + rax + 0x20]
	lea	rdi, [rsp + 0x10]
	call	duinfo_add
.label_171:
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	rbx, r12
	shl	rbx, 6
	lea	rdi, [rax + rbx + 0x20]
	mov	rsi,  qword ptr [word ptr [rip + prev_level]]
	shl	rsi, 6
	add	rsi, rax
	call	duinfo_add
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rdi, [rax + rbx + 0x20]
	mov	rcx,  qword ptr [word ptr [rip + prev_level]]
	shl	rcx, 6
	lea	rsi, [rax + rcx + 0x20]
	call	duinfo_add
.label_140:
	mov	qword ptr [word ptr [rip + prev_level]],  r12
	or	r14d, 2
	cmp	r14d, 6
	jne	.label_153
	test	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jne	.label_154
.label_153:
	mov	rdi, r12
	shl	rdi, 6
	add	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rsi, [rsp + 0x38]
	call	duinfo_add
.label_154:
	lea	rsi, [rsp + 0x38]
	mov	edi, OFFSET FLAT:tot_dui
	call	duinfo_add
	cmp	r14d, 6
	mov	rax,  qword ptr [word ptr [rip + max_depth]]
	jne	.label_164
	cmp	r12, rax
	jbe	.label_167
.label_164:
	cmp	byte ptr [byte ptr [rip + opt_all]],  1
	jne	.label_168
	test	r12, r12
	je	.label_167
	cmp	r12, rax
	ja	.label_152
	jmp	.label_167
.label_168:
	test	r12, r12
	jne	.label_152
.label_167:
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	lea	rcx, [rsp + 0x18]
	test	al, al
	lea	rax, [rsp + 0x10]
	cmovne	rax, rcx
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [rip + opt_threshold]]
	test	rcx, rcx
	js	.label_170
	cmp	rax, rcx
	jae	.label_173
	jmp	.label_152
.label_170:
	neg	rcx
	cmp	rax, rcx
	ja	.label_152
.label_173:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	print_size
.label_152:
	test	r15b, r15b
	setne	r15b
.label_147:
	mov	eax, r15d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_158:
	test	byte ptr [r13 + 0x48], 0x40
	je	.label_142
	cmp	qword ptr [rbp + 0x58], 0
	jle	.label_142
	mov	rax, qword ptr [r13 + 0x18]
	cmp	rax, qword ptr [r12]
	jne	.label_146
.label_142:
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	test	al, al
	jne	.label_148
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	jne	.label_149
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x90]
	cmp	eax, 0x4000
	je	.label_148
	cmp	qword ptr [rbp + 0x88], 2
	jb	.label_148
.label_149:
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	mov	rdx, qword ptr [rbp + 0x78]
	mov	rsi, qword ptr [rbp + 0x80]
	call	hash_ins
	test	al, al
	je	.label_146
.label_148:
	mov	r15b, 1
	cmp	r14d, 1
	je	.label_147
	movzx	eax, r14w
	cmp	eax, 2
	je	.label_162
	cmp	eax, 7
	jne	.label_155
	mov	ebx, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	r14d, 7
	jmp	.label_155
.label_146:
	mov	r15b, 1
	cmp	r14d, 1
	jne	.label_147
	mov	edx, 4
	mov	rdi, r13
	mov	rsi, rbp
	call	rpl_fts_set
	mov	rdi, r13
	call	rpl_fts_read
	cmp	rax, rbp
	je	.label_147
	mov	edi, OFFSET FLAT:label_166
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 0x22f
	mov	ecx, OFFSET FLAT:label_160
	call	__assert_fail
.label_162:
	mov	rdi, r13
	mov	rsi, rbp
	call	cycle_warning_required
	test	al, al
	je	.label_147
	mov	rdi, rbp
	call	mount_point_in_fts_cycle
	test	al, al
	jne	.label_147
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
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
	mov	rdx, rbx
	call	error
	jmp	.label_147
.label_176:
	mov	edi, OFFSET FLAT:label_159
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 0x27d
	mov	ecx, OFFSET FLAT:label_160
	call	__assert_fail
.label_144:
	mov	edi, OFFSET FLAT:label_166
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 0x20e
	mov	ecx, OFFSET FLAT:label_160
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl hash_ins
	.type hash_ins, @function
hash_ins:
	push	rax
	mov	rax, rsi
	mov	rsi, rdx
	mov	rdx, rax
	call	di_set_insert
	test	eax, eax
	js	.label_178
	setne	al
	pop	rcx
	ret	
.label_178:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0

	.globl mount_point_in_fts_cycle
	.type mount_point_in_fts_cycle, @function
mount_point_in_fts_cycle:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [word ptr [rip + di_mnt]],  0
	jne	.label_182
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_mnt]],  rax
	test	rax, rax
	je	.label_180
	call	fill_mount_table
.label_182:
	cmp	r14, rbx
	je	.label_183
	nop	
.label_181:
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdx, qword ptr [rbx + 0x80]
	call	di_set_lookup
	mov	ecx, eax
	mov	al, 1
	test	ecx, ecx
	jg	.label_179
	mov	rbx, qword ptr [rbx + 8]
	xor	eax, eax
	test	rbx, rbx
	je	.label_179
	cmp	rbx, r14
	jne	.label_181
	jmp	.label_179
.label_183:
	xor	eax, eax
.label_179:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_180:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403d40

	.globl duinfo_set
	.type duinfo_set, @function
duinfo_set:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], 1
	mov	qword ptr [rdi + 0x10], rdx
	mov	qword ptr [rdi + 0x18], rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60

	.globl duinfo_init
	.type duinfo_init, @function
duinfo_init:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rdi + 0x10], rax
	mov	qword ptr [rdi + 0x18], -1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d80

	.globl duinfo_add
	.type duinfo_add, @function
duinfo_add:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	cmp	rax, rcx
	mov	rax, -1
	cmovbe	rax, rcx
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 8]
	add	qword ptr [rbx + 8], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14 + 0x18]
	call	timespec_cmp
	test	eax, eax
	jns	.label_184
	add	rbx, 0x10
	add	r14, 0x10
	movups	xmm0, xmmword ptr [r14]
	movups	xmmword ptr [rbx], xmm0
.label_184:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl fill_mount_table
	.type fill_mount_table, @function
fill_mount_table:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x90
	xor	edi, edi
	call	read_file_system_list
	mov	rbx, rax
	test	rbx, rbx
	je	.label_186
	lea	r14, [rsp]
	nop	
.label_187:
	test	byte ptr [rbx + 0x28], 3
	jne	.label_185
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	stat
	test	eax, eax
	jne	.label_185
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rdx, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	call	hash_ins
	nop	dword ptr [rax + rax]
.label_185:
	mov	r15, qword ptr [rbx + 0x30]
	mov	rdi, rbx
	call	free_mount_entry
	test	r15, r15
	mov	rbx, r15
	jne	.label_187
.label_186:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e60

	.globl print_only_size
	.type print_only_size, @function
print_only_size:
	sub	rsp, 0x298
	cmp	rdi, -1
	je	.label_188
	mov	edx,  dword ptr [dword ptr [rip + human_output_opts]]
	mov	r8,  qword ptr [word ptr [rip + output_block_size]]
	lea	rsi, [rsp]
	mov	ecx, 1
	call	human_readable
	jmp	.label_189
.label_188:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
.label_189:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	add	rsp, 0x298
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0

	.globl show_date
	.type show_date, @function
show_date:
	push	r14
	push	rbx
	sub	rsp, 0x68
	mov	rbx, rcx
	mov	r14, rdi
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdx
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x30]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_192
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	r8d, dword ptr [rsp + 8]
	lea	rdx, [rsp + 0x30]
	mov	rsi, r14
	mov	rcx, rbx
	call	fprintftime
	jmp	.label_193
.label_192:
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	timetostr
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
.label_193:
	add	rsp, 0x68
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f70

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f80

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
	je	.label_200
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_194:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_199
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_197
	cmp	qword ptr [rsp + 8], -1
	je	.label_198
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_195
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_199
.label_195:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_199
.label_198:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_199:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_194
	jmp	.label_196
.label_200:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_196:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_197:
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
	#Procedure 0x404080

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
	je	.label_201
	mov	esi, OFFSET FLAT:label_202
	jmp	.label_203
.label_201:
	mov	esi, OFFSET FLAT:label_204
.label_203:
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
	#Procedure 0x4040f0

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_207
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_211:
	test	rbp, rbp
	je	.label_205
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_210
.label_205:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_208
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_206
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_212:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_211
.label_207:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x4041f0

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
	jns	.label_213
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
.label_213:
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
	#Procedure 0x404260
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
	je	.label_214
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_215:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_214
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_215
.label_214:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_216
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_216:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_217
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_217:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330

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
	je	.label_218
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_222
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_219
.label_218:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_221
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_219
.label_222:
	mov	rdi, qword ptr [rbx]
	call	feof
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx + 2]
	mov	dword ptr [r14], eax
	jmp	.label_220
.label_221:
	mov	dword ptr [r14], 2
.label_220:
	xor	eax, eax
.label_219:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_223
	mov	rax, qword ptr [rdi + 8]
	ret	
.label_223:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_224
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_224:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404400
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_227
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_225
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_225
.label_227:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_228
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_225:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_226
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_228:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_226:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_229
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl di_set_alloc
	.type di_set_alloc, @function
di_set_alloc:
	push	rbx
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_231
	mov	edi, 0xb
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ent_hash
	mov	ecx, OFFSET FLAT:di_ent_compare
	mov	r8d, OFFSET FLAT:di_ent_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_232
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	jmp	.label_231
.label_232:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_231:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl di_ent_hash
	.type di_ent_hash, @function
di_ent_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl di_ent_compare
	.type di_ent_compare, @function
di_ent_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404550

	.globl di_ent_free
	.type di_ent_free, @function
di_ent_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	call	hash_free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404570

	.globl di_set_free
	.type di_set_free, @function
di_set_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045a0

	.globl di_set_insert
	.type di_set_insert, @function
di_set_insert:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rdi
	call	map_device
	mov	r15, rax
	test	r15, r15
	je	.label_233
	mov	rdi, rbx
	mov	rsi, r14
	call	map_inode_number
	cmp	rax, -1
	je	.label_233
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rax
	pop	rbx
	pop	r14
	pop	r15
	jmp	hash_insert_if_absent
.label_233:
	mov	eax, 0xffffffff
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl map_device
	.type map_device, @function
map_device:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_237
	cmp	qword ptr [rbx], r15
	jne	.label_235
	jmp	.label_236
.label_237:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	xor	eax, eax
	test	rbx, rbx
	je	.label_238
.label_235:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_238
	cmp	rcx, rbx
	je	.label_239
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_234
.label_239:
	mov	qword ptr [r14 + 0x10], 0
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ino_hash
	xor	ecx, ecx
	xor	r8d, r8d
	call	hash_initialize
.label_234:
	mov	qword ptr [rbx + 8], rax
.label_236:
	mov	rax, qword ptr [rbx + 8]
.label_238:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404680

	.globl map_inode_number
	.type map_inode_number, @function
map_inode_number:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movabs	rdi, 0x7ffffffffffffffe
	lea	rax, [rbx - 1]
	cmp	rax, rdi
	jae	.label_240
	mov	rax, rbx
.label_241:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_240:
	cmp	qword ptr [r14 + 8], 0
	jne	.label_242
	inc	rdi
	call	ino_map_alloc
	mov	rcx, rax
	mov	qword ptr [r14 + 8], rcx
	mov	rax, -1
	test	rcx, rcx
	je	.label_241
.label_242:
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	ino_map_insert
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046e0

	.globl di_set_lookup
	.type di_set_lookup, @function
di_set_lookup:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rdi
	call	map_device
	mov	r14, rax
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_243
	mov	rdi, rbx
	mov	rsi, r15
	call	map_inode_number
	cmp	rax, -1
	je	.label_243
	mov	rdi, r14
	mov	rsi, rax
	call	hash_lookup
	xor	ebp, ebp
	test	rax, rax
	setne	bpl
.label_243:
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
	#Procedure 0x404740

	.globl di_ino_hash
	.type di_ino_hash, @function
di_ino_hash:
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl exclude_add_pattern_buffer
	.type exclude_add_pattern_buffer, @function
exclude_add_pattern_buffer:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax + 8], r14
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404780

	.globl fnmatch_pattern_has_wildcards
	.type fnmatch_pattern_has_wildcards, @function
fnmatch_pattern_has_wildcards:
	mov	ecx, esi
	and	ecx, 0x8000000
	mov	r8d, esi
	and	r8d, 2
	and	esi, 0x20
	jmp	.label_244
.label_248:
	movzx	eax, al
	add	rdi, rax
	nop	word ptr [rax + rax]
.label_244:
	movsx	edx, byte ptr [rdi]
	inc	rdi
	xor	eax, eax
	cmp	edx, 0x7d
	ja	.label_244
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_247]]
.label_2952:
	test	ecx, ecx
	je	.label_244
	jmp	.label_245
.label_2951:
	test	esi, esi
	je	.label_244
	cmp	byte ptr [rdi], 0x28
	jne	.label_244
	jmp	.label_245
.label_2953:
	test	ecx, ecx
	jne	.label_244
	test	r8d, r8d
	jne	.label_246
	cmp	byte ptr [rdi], 0
	setne	al
	jmp	.label_248
.label_246:
	xor	eax, eax
	jmp	.label_248
.label_245:
	mov	al, 1
.label_2950:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl new_exclude
	.type new_exclude, @function
new_exclude:
	mov	edi, 0x10
	jmp	xzalloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0
	.globl free_exclude
	.type free_exclude, @function
free_exclude:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_249
.label_252:
	mov	rbx, qword ptr [rdi]
	call	free_exclude_segment
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_252
.label_249:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_251
	nop	dword ptr [rax]
.label_250:
	mov	r15, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, rbx
	call	free
	test	r15, r15
	mov	rbx, r15
	jne	.label_250
.label_251:
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404850

	.globl free_exclude_segment
	.type free_exclude_segment, @function
free_exclude_segment:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 8]
	test	eax, eax
	je	.label_253
	cmp	eax, 1
	jne	.label_254
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_255
	xor	r15d, r15d
	mov	ebx, 8
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	rdi, qword ptr [r14 + 0x10]
	test	byte ptr [rdi + rbx - 5], 8
	je	.label_256
	add	rdi, rbx
	call	rpl_regfree
.label_256:
	inc	r15
	add	rbx, 0x48
	cmp	r15, qword ptr [r14 + 0x20]
	jb	.label_257
.label_255:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	jmp	.label_254
.label_253:
	mov	rdi, qword ptr [r14 + 0x10]
	call	hash_free
.label_254:
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0

	.globl exclude_fnmatch
	.type exclude_fnmatch, @function
exclude_fnmatch:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	rbx, rsi
	mov	r14, rdi
	mov	eax, OFFSET FLAT:fnmatch
	mov	ebp, OFFSET FLAT:fnmatch_no_wildcards
	test	r15d, 0x10000000
	cmovne	rbp, rax
	call	rbp
	mov	ecx, eax
	test	ecx, ecx
	sete	al
	test	r15d, 0x40000000
	jne	.label_259
	mov	dl, byte ptr [rbx]
	test	ecx, ecx
	setne	cl
	test	dl, dl
	je	.label_259
	test	cl, cl
	je	.label_259
	inc	rbx
	nop	dword ptr [rax]
.label_260:
	cmp	dl, 0x2f
	jne	.label_258
	cmp	byte ptr [rbx], 0x2f
	je	.label_258
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, r15d
	call	rbp
	test	eax, eax
	sete	al
.label_258:
	test	al, 1
	jne	.label_259
	movzx	edx, byte ptr [rbx]
	inc	rbx
	test	dl, dl
	jne	.label_260
.label_259:
	and	al, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404960

	.globl fnmatch_no_wildcards
	.type fnmatch_no_wildcards, @function
fnmatch_no_wildcards:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, edx
	and	eax, 0x10
	test	dl, 8
	jne	.label_261
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	test	eax, eax
	je	.label_266
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	mbscasecmp
.label_261:
	test	eax, eax
	je	.label_265
	mov	rdi, r14
	call	xstrdup
	mov	r14, rax
	mov	esi, 0x2f
	mov	rdi, r14
	jmp	.label_268
	nop	dword ptr [rax]
.label_262:
	mov	byte ptr [rbx], 0x2f
	inc	rbx
	mov	esi, 0x2f
	mov	rdi, rbx
.label_268:
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_263
	mov	byte ptr [rbx], 0
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
	test	ebp, ebp
	jg	.label_262
	jmp	.label_267
.label_266:
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcmp
.label_265:
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	strncmp
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_264
	movsx	eax, byte ptr [r14 + rbx]
	xor	ebp, ebp
	cmp	eax, 0x2f
	cmovne	ebp, eax
	jmp	.label_264
.label_263:
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
.label_267:
	mov	rdi, r14
	call	free
.label_264:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a40

	.globl excluded_file_name
	.type excluded_file_name, @function
excluded_file_name:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rax, qword ptr [rdi]
	test	rax, rax
	je	.label_269
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_273:
	mov	rbx, rax
	cmp	dword ptr [rbx + 8], 0
	je	.label_270
	mov	rdi, rbx
	mov	rsi, r14
	call	file_pattern_matches
	jmp	.label_274
	nop	word ptr cs:[rax + rax]
.label_270:
	test	r15, r15
	jne	.label_275
	mov	rdi, r14
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	r15, rax
.label_275:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	file_name_matches
.label_274:
	xor	ebp, ebp
	test	al, al
	jne	.label_272
	mov	rax, qword ptr [rbx]
	mov	ebp, 1
	test	rax, rax
	jne	.label_273
.label_272:
	mov	rdi, r15
	call	free
	mov	eax, dword ptr [rbx + 0xc]
	shr	eax, 0x1d
	not	eax
	and	eax, 1
	cmp	ebp, eax
	setne	al
	jmp	.label_271
.label_269:
	xor	eax, eax
.label_271:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl file_name_matches
	.type file_name_matches, @function
file_name_matches:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r12d, dword ptr [rdi + 0xc]
	mov	r14, qword ptr [rdi + 0x10]
	mov	r13d, r12d
	and	r13d, 8
	and	r12d, 0x40000000
.label_280:
	mov	rdi, rbx
	mov	rsi, r15
	call	strcpy
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_lookup
	mov	bpl, 1
	test	rax, rax
	jne	.label_277
	test	r13d, r13d
	je	.label_278
	nop	word ptr [rax + rax]
.label_279:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	je	.label_278
	mov	byte ptr [rax], 0
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_lookup
	test	rax, rax
	je	.label_279
	jmp	.label_277
	nop	word ptr [rax + rax]
.label_278:
	test	r12d, r12d
	jne	.label_276
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	test	rax, rax
	lea	r15, [rax + 1]
	jne	.label_280
.label_276:
	xor	ebp, ebp
.label_277:
	mov	eax, ebp
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
	#Procedure 0x404ba0

	.globl file_pattern_matches
	.type file_pattern_matches, @function
file_pattern_matches:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, qword ptr [rdi + 0x20]
	test	r15, r15
	je	.label_281
	mov	r12, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_282:
	mov	rdi, r12
	mov	rsi, r14
	call	exclude_patopts
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.label_283
	inc	rbx
	add	r12, 0x48
	cmp	rbx, r15
	jb	.label_282
.label_281:
	xor	eax, eax
.label_283:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0

	.globl add_exclude
	.type add_exclude, @function
add_exclude:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	rbx, rdi
	test	ebp, 0x18000000
	je	.label_288
	mov	rdi, r14
	mov	esi, ebp
	call	fnmatch_pattern_has_wildcards
	test	al, al
	je	.label_288
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_290
	cmp	dword ptr [rax + 8], 1
	jne	.label_290
	mov	eax, dword ptr [rax + 0xc]
	xor	eax, ebp
	test	eax, 0x20000000
	je	.label_291
.label_290:
	mov	esi, 1
	mov	rdi, rbx
	mov	edx, ebp
	call	new_exclude_segment
.label_291:
	mov	r12, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rax, qword ptr [r12 + 0x18]
	jne	.label_296
	lea	rsi, [r12 + 0x18]
	mov	rdi, qword ptr [r12 + 0x10]
	mov	edx, 0x48
	call	x2nrealloc
	mov	qword ptr [r12 + 0x10], rax
.label_296:
	mov	rax, qword ptr [r12 + 0x20]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x20], rcx
	mov	r13, qword ptr [r12 + 0x10]
	lea	r15, [rax + rax*8]
	mov	dword ptr [r13 + r15*8], ebp
	test	ebp, 0x8000000
	jne	.label_292
	test	ebp, 0x4000000
	je	.label_289
	mov	rdi, r14
	call	xstrdup
	mov	r14, rax
	mov	rdi, rbx
	mov	rsi, r14
	call	exclude_add_pattern_buffer
.label_289:
	mov	qword ptr [r13 + r15*8 + 8], r14
	jmp	.label_285
.label_288:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_284
	cmp	dword ptr [rax + 8], 0
	jne	.label_284
	mov	eax, dword ptr [rax + 0xc]
	xor	eax, ebp
	test	eax, 0x60000018
	je	.label_286
.label_284:
	xor	esi, esi
	mov	rdi, rbx
	mov	edx, ebp
	call	new_exclude_segment
.label_286:
	mov	r15, qword ptr [rbx]
	mov	rdi, r14
	call	xstrdup
	mov	rbx, rax
	and	ebp, 0x10000002
	cmp	ebp, 0x10000000
	jne	.label_293
	mov	rdi, rbx
	call	unescape_pattern
.label_293:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	call	hash_insert
	cmp	rax, rbx
	je	.label_285
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_292:
	mov	ebx, ebp
	shr	ebx, 3
	and	ebx, 2
	or	ebx, 9
	test	bpl, 8
	jne	.label_295
	lea	rdi, [r13 + r15*8 + 8]
	mov	rsi, r14
	mov	edx, ebx
	call	rpl_regcomp
	mov	ebx, eax
	jmp	.label_297
.label_295:
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	add	rbp, 8
	nop	word ptr [rax + rax]
.label_294:
	cmp	rbp, 8
	je	.label_287
	cmp	byte ptr [r14 + rbp - 9], 0x2f
	lea	rbp, [rbp - 1]
	je	.label_294
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp], rax
	lea	rdx, [rbp - 7]
	mov	rdi, rax
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [rsp]
	mov	byte ptr [rsi + rbp - 1], 0
	mov	word ptr [rsi + rbp - 3], 0x3f29
	mov	dword ptr [rsi + rbp - 7], 0x2a2e2f28
	lea	rdi, [r13 + r15*8 + 8]
	mov	rbp, rsi
	mov	edx, ebx
	call	rpl_regcomp
	mov	ebx, eax
	mov	rdi, rbp
	call	free
.label_297:
	test	ebx, ebx
	je	.label_285
.label_287:
	dec	qword ptr [r12 + 0x20]
.label_285:
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
	#Procedure 0x404df0

	.globl new_exclude_segment
	.type new_exclude_segment, @function
new_exclude_segment:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	ebp, esi
	mov	r14, rdi
	mov	edi, 0x28
	call	xzalloc
	mov	rbx, rax
	mov	dword ptr [rbx + 8], ebp
	mov	dword ptr [rbx + 0xc], r15d
	test	ebp, ebp
	jne	.label_298
	and	r15d, 0x10
	shr	r15d, 4
	mov	eax, OFFSET FLAT:string_hasher_ci
	mov	edx, OFFSET FLAT:string_hasher
	cmovne	rdx, rax
	mov	eax, OFFSET FLAT:string_compare_ci
	mov	ecx, OFFSET FLAT:string_compare
	cmovne	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:string_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x10], rax
.label_298:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx], rax
	mov	qword ptr [r14], rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl unescape_pattern
	.type unescape_pattern, @function
unescape_pattern:
	mov	rax, rdi
	nop	word ptr cs:[rax + rax]
.label_300:
	cmp	byte ptr [rax], 0x5c
	jne	.label_299
	cmp	byte ptr [rax + 1], 0
	setne	cl
	jmp	.label_301
	nop	
.label_299:
	xor	ecx, ecx
.label_301:
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx]
	lea	rax, [rax + rcx + 1]
	mov	byte ptr [rdi], dl
	inc	rdi
	test	dl, dl
	jne	.label_300
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl add_exclude_fp
	.type add_exclude_fp, @function
add_exclude_fp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], r9
	mov	r15d, r8d
	mov	dword ptr [rsp + 0xc], ecx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, -1
	mov	r13d, 0
	mov	r14d, 0
	je	.label_310
	xor	r14d, r14d
	lea	r12, [rsp + 0x20]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_312:
	cmp	r13, qword ptr [rsp + 0x20]
	jne	.label_305
	mov	rdi, r14
	mov	rsi, r12
	call	x2realloc
	mov	r14, rax
.label_305:
	mov	byte ptr [r14 + r13], bpl
	inc	r13
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_312
.label_310:
	mov	rdi, rbx
	call	ferror_unlocked
	test	eax, eax
	je	.label_302
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	qword ptr [rsp + 0x10], rax
.label_302:
	lea	rsi, [r13 + 1]
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	lea	rbp, [rbx + r13]
	mov	byte ptr [rbx + r13], r15b
	test	r13, r13
	je	.label_307
	cmp	byte ptr [rbx + r13 - 1], r15b
	setne	al
	jmp	.label_311
.label_307:
	xor	eax, eax
.label_311:
	movzx	r12d, al
	add	rbp, r12
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	call	exclude_add_pattern_buffer
	cmp	rbx, rbp
	jae	.label_304
	movzx	r14d, r15b
	add	r13, r12
	mov	r12, rbx
	add	r12, r13
	mov	rbp, rbx
	nop	word ptr cs:[rax + rax]
.label_303:
	cmp	byte ptr [rbx], r15b
	jne	.label_308
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + r14*2 + 1], 0x20
	mov	rcx, rbx
	je	.label_313
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_306:
	cmp	rbp, rcx
	je	.label_309
	movzx	edx, byte ptr [rcx - 1]
	dec	rcx
	mov	rsi, qword ptr [rax]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	jne	.label_306
	inc	rcx
.label_313:
	mov	byte ptr [rcx], 0
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x30]
	call	qword ptr [rsp + 0x28]
.label_309:
	lea	rbp, [rbx + 1]
.label_308:
	inc	rbx
	cmp	rbx, r12
	jne	.label_303
.label_304:
	call	__errno_location
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	neg	ecx
	sbb	eax, eax
	add	rsp, 0x38
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
	#Procedure 0x405030

	.globl add_exclude_file
	.type add_exclude_file, @function
add_exclude_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, r8d
	mov	r14d, ecx
	mov	r15, rsi
	mov	qword ptr [rsp], rdi
	cmp	byte ptr [rdx], 0x2d
	jne	.label_314
	cmp	byte ptr [rdx + 1], 0
	je	.label_315
.label_314:
	mov	esi, OFFSET FLAT:label_68
	mov	rdi, rdx
	call	fopen
	mov	rbx, rax
	mov	eax, 0xffffffff
	test	rbx, rbx
	je	.label_316
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	rdx, rbx
	mov	ecx, r14d
	call	add_exclude_fp
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	ebp, eax
	mov	eax, ebp
	jmp	.label_316
.label_315:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	ecx, r14d
	call	add_exclude_fp
.label_316:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050d0

	.globl call_addfn
	.type call_addfn, @function
call_addfn:
	mov	rax, qword ptr [rcx]
	jmp	rax
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0

	.globl exclude_patopts
	.type exclude_patopts, @function
exclude_patopts:
	push	rax
	mov	edx, dword ptr [rdi]
	add	rdi, 8
	test	edx, 0x8000000
	jne	.label_317
	mov	rdi, qword ptr [rdi]
	call	exclude_fnmatch
	pop	rcx
	ret	
.label_317:
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_regexec
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405110

	.globl string_hasher_ci
	.type string_hasher_ci, @function
string_hasher_ci:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	al, byte ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x24]
	xor	ebx, ebx
	test	al, al
	je	.label_322
	test	edi, edi
	je	.label_321
.label_322:
	xor	ebx, ebx
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_319:
	test	al, al
	je	.label_318
	call	towlower
	jmp	.label_320
	nop	dword ptr [rax + rax]
.label_318:
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax]
.label_320:
	mov	rcx, rbx
	shl	rcx, 5
	sub	rcx, rbx
	cdqe	
	add	rax, rcx
	xor	edx, edx
	div	r14
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rbx, rdx
	mov	rdi, r15
	call	mbuiter_multi_next
	movzx	eax, byte ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_319
	test	edi, edi
	jne	.label_319
.label_321:
	mov	rax, rbx
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl string_hasher
	.type string_hasher, @function
string_hasher:
	jmp	hash_string
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0

	.globl string_compare_ci
	.type string_compare_ci, @function
string_compare_ci:
	push	rax
	call	mbscasecmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl string_compare
	.type string_compare, @function
string_compare:
	push	rax
	call	strcmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405200

	.globl string_free
	.type string_free, @function
string_free:
	jmp	free
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x498
	mov	ebp, r9d
	mov	dword ptr [rsp + 0x68], r8d
	mov	dword ptr [rsp + 0x6c], ecx
	mov	r13, rsi
	mov	r12, rdi
	mov	eax, dword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_34
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x50], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x5c], edx
	cmp	byte ptr [r13], 0
	mov	eax, 0
	je	.label_411
	movabs	r8, 0x100000000
	xor	r9d, r9d
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x24], eax
	mov	qword ptr [rsp], r12
	jmp	.label_453
.label_408:
	test	rbp, rbp
	je	.label_403
.label_450:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_450
.label_403:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_401:
	add	r9, rbx
	jmp	.label_324
.label_339:
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 3
	jmp	.label_454
	nop	dword ptr [rax + rax]
.label_453:
	cmp	byte ptr [r13], 0x25
	jne	.label_458
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x6c]
	mov	bl, cl
	xor	r14d, r14d
.label_3030:
	mov	r15d, eax
	mov	eax, ebx
	jmp	.label_461
	nop	dword ptr [rax]
.label_473:
	movsx	r14d, byte ptr [r13]
.label_461:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_466
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_468]]
	nop	
.label_466:
	cmp	ecx, 0x5f
	je	.label_473
	cmp	ecx, 0x5e
	jne	.label_475
	mov	bl, al
	jmp	.label_461
	nop	word ptr cs:[rax + rax]
.label_458:
	test	ebp, ebp
	mov	eax, ebp
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, r9
	not	rdx
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_405
	test	r12, r12
	je	.label_483
	mov	r14, r9
	cmp	eax, 2
	jb	.label_477
	movsxd	rbp, ebp
	jmp	.label_486
	nop	dword ptr [rax]
.label_489:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_486:
	dec	rbp
	jne	.label_489
.label_477:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r14
.label_483:
	add	r9, rbx
	xor	ecx, ecx
.label_405:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_358:
	or	ecx, 4
	cmp	ecx, 4
	mov	eax, 0
	je	.label_324
	jmp	.label_411
	nop	word ptr cs:[rax + rax]
.label_475:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_325
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_337:
	mov	ebp, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_328
	jne	.label_329
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_328
.label_329:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	ebp, [rcx + rax*2 - 0x30]
.label_328:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, ebp
	jb	.label_337
.label_325:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	je	.label_342
	xor	r10d, r10d
	cmp	eax, 0x45
	jne	.label_345
.label_342:
	movsx	r10d, byte ptr [r13]
	inc	r13
.label_345:
	movsx	edx, byte ptr [r13]
	mov	esi, OFFSET FLAT:label_348
	xor	r11d, r11d
	cmp	edx, 0x7a
	ja	.label_344
	mov	al, 0x72
	mov	r12d, 0xffffffff
	xor	edi, edi
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_354]]
.label_3047:
	cmp	r10d, 0x45
	je	.label_344
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	r12d, [rax + rcx - 0x64]
	mov	r15d, dword ptr [rdx + 0x1c]
	mov	edi, r15d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_369
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_371
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_371:
	sub	r15d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r15d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_386
.label_3061:
	test	r15b, r15b
	je	.label_330
	mov	bl, 1
.label_330:
	xor	edi, edi
	cmp	r10d, 0x45
	jne	.label_388
	xor	r11d, r11d
	jmp	.label_344
.label_3039:
	dec	r13
	jmp	.label_344
.label_3040:
	test	r10d, r10d
	jne	.label_344
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_323
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_401
	mov	r15, r9
	cmp	eax, 2
	jb	.label_403
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_407
	cmp	r14d, 0x2b
	jne	.label_408
.label_407:
	test	rbp, rbp
	je	.label_403
.label_413:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_413
	jmp	.label_403
.label_3041:
	mov	eax, 1
	jmp	.label_415
	nop	word ptr cs:[rax + rax]
.label_418:
	inc	rax
.label_415:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_418
	cmp	cl, 0x7a
	jne	.label_344
	add	r13, rax
	mov	r11, rax
.label_3078:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_422
	mov	rsi, r11
	mov	eax, dword ptr [rax + 0x28]
	mov	r11b, 1
	test	eax, eax
	mov	r12, qword ptr [rsp]
	js	.label_425
	test	eax, eax
	je	.label_428
	xor	r11d, r11d
	jmp	.label_425
.label_3042:
	test	r10d, r10d
	jne	.label_344
	test	r15b, r15b
	je	.label_435
	mov	bl, 1
.label_435:
	xor	edi, edi
	mov	al, 0x41
	jmp	.label_394
.label_3043:
	cmp	r10d, 0x45
	je	.label_344
	test	r15b, r15b
	je	.label_440
	mov	bl, 1
.label_440:
	xor	edi, edi
	mov	al, 0x42
	jmp	.label_394
.label_3044:
	cmp	r10d, 0x45
	jne	.label_442
	xor	edi, edi
	mov	al, 0x43
	jmp	.label_394
.label_3045:
	mov	esi, OFFSET FLAT:label_443
	test	r10d, r10d
	jne	.label_344
	jmp	.label_351
.label_3046:
	test	r10d, r10d
	jne	.label_344
	mov	esi, OFFSET FLAT:label_58
	test	r14d, r14d
	jne	.label_357
	test	ebp, ebp
	jns	.label_357
	mov	r14d, 0x2b
	mov	r12d, 4
	jmp	.label_351
.label_3048:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 8]
	jmp	.label_375
.label_3049:
	mov	ecx, 2
	cmp	r10d, 0x45
	je	.label_344
	mov	eax, dword ptr [rsp + 0x5c]
	mov	esi, eax
	jmp	.label_356
.label_3050:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 4]
	jmp	.label_375
.label_3051:
	cmp	r10d, 0x45
	je	.label_344
	mov	ecx, 9
	cmp	ebp, -1
	je	.label_465
	cmp	ebp, 8
	jg	.label_469
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4d8]
	mov	esi, ecx
	nop	word ptr cs:[rax + rax]
.label_392:
	movsxd	rcx, esi
	imul	rsi, rcx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	dec	eax
	cmp	ebp, eax
	jne	.label_392
	jmp	.label_482
.label_3052:
	mov	cl, 1
.label_3070:
	xor	r11d, r11d
	test	r15b, r15b
	je	.label_391
	mov	ebx, 0
.label_391:
	je	.label_485
	mov	cl, 1
.label_485:
	mov	al, 0x70
	mov	dil, cl
	jmp	.label_361
.label_3053:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax]
	jmp	.label_375
.label_3054:
	mov	esi, OFFSET FLAT:label_490
.label_351:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rbx
	test	bl, bl
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	qword ptr [rsp + 8], r9
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	mov	r9, qword ptr [rsp + 0x18]
	movabs	r8, 0x100000000
	add	rsp, 0x10
	test	ebp, ebp
	cmovns	ebx, ebp
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	r15, rax
	cmovb	r15, rcx
	mov	rdx, r9
	not	rdx
	cmp	r15, rdx
	jae	.label_323
	cmp	qword ptr [rsp], 0
	je	.label_332
	cmp	rax, rcx
	mov	rbx, qword ptr [rsp]
	jae	.label_336
	movsxd	rbp, ebp
	sub	rbp, rax
	cmp	r14d, 0x30
	je	.label_340
	cmp	r14d, 0x2b
	jne	.label_343
.label_340:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_336
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_355
	jmp	.label_336
.label_3055:
	cmp	r10d, 0x45
	je	.label_344
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rsi, eax
	jmp	.label_359
.label_3056:
	cmp	r10d, 0x45
	je	.label_344
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rdi, rdx
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	mov	rdx, rdi
	movsxd	rsi, ecx
.label_359:
	imul	rax, rsi, -0x6db6db6d
	shr	rax, 0x20
	add	esi, eax
	mov	eax, esi
	shr	eax, 0x1f
	sar	esi, 2
	add	esi, eax
	jmp	.label_375
.label_3057:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_344
	mov	al, 0x58
	xor	edi, edi
	jmp	.label_361
.label_3058:
	xor	r11d, r11d
	cmp	r10d, 0x45
	je	.label_382
	cmp	r10d, 0x4f
	je	.label_344
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x14]
	cmp	edi, 0xfffff894
	setl	r11b
	add	edi, 0x76c
	mov	eax, 4
	jmp	.label_385
.label_3059:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 8], r9
	call	strlen
	mov	r9, qword ptr [rsp + 8]
	movabs	r8, 0x100000000
	xor	ecx, ecx
	test	ebp, ebp
	cmovns	ecx, ebp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	r12, rax
	cmovb	r12, rdx
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_323
	cmp	qword ptr [rsp], 0
	je	.label_404
	mov	qword ptr [rsp + 0x10], rax
	cmp	rax, rdx
	jae	.label_412
	movsxd	rbp, ebp
	sub	rbp, qword ptr [rsp + 0x10]
	cmp	r14d, 0x30
	je	.label_409
	cmp	r14d, 0x2b
	jne	.label_410
.label_409:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_412
	nop	word ptr [rax + rax]
.label_417:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_417
	jmp	.label_412
.label_3060:
	test	r10d, r10d
	jne	.label_344
	test	r15b, r15b
	je	.label_420
	mov	bl, 1
.label_420:
	xor	edi, edi
	mov	al, 0x61
	jmp	.label_394
.label_3062:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_344
	mov	al, 0x63
	xor	edi, edi
	jmp	.label_361
.label_3063:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0xc]
.label_375:
	mov	ecx, 2
	jmp	.label_356
.label_3064:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_436
.label_3065:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 3
	jmp	.label_438
.label_3066:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_436
.label_3067:
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x5c]
	je	.label_344
.label_436:
	test	r14d, r14d
	mov	ecx, 0x5f
	cmove	r14d, ecx
	mov	ecx, 2
	mov	esi, eax
	jmp	.label_356
.label_3068:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 2
.label_438:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	jmp	.label_353
.label_3069:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_323
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_464
	mov	r15, r9
	cmp	eax, 2
	jb	.label_467
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_471
	cmp	r14d, 0x2b
	jne	.label_476
.label_471:
	test	rbp, rbp
	je	.label_467
	nop	dword ptr [rax]
.label_479:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_479
	jmp	.label_467
.label_3071:
	mov	rax, qword ptr [rsp + 0x18]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	xor	r11d, r11d
	jmp	.label_353
.label_3072:
	mov	qword ptr [rsp + 0x38], rbx
	mov	r12, r9
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xc0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xb0], xmm2
	movaps	xmmword ptr [rsp + 0xa0], xmm1
	movaps	xmmword ptr [rsp + 0x90], xmm0
	lea	rsi, [rsp + 0x90]
	mov	rdi, qword ptr [rsp + 0x4d0]
	call	mktime_z
	mov	rcx, rax
	mov	r11, rcx
	shr	r11, 0x3f
	lea	r15, [rsp + 0x87]
	nop	dword ptr [rax]
.label_365:
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
	mov	eax, ebx
	neg	eax
	test	r11, r11
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_365
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	movabs	r8, 0x100000000
	mov	r9, r12
	mov	rbx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_439
.label_3073:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_323
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_364
	mov	r15, r9
	cmp	eax, 2
	jb	.label_366
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_367
	cmp	r14d, 0x2b
	jne	.label_368
.label_367:
	test	rbp, rbp
	je	.label_366
	nop	
.label_374:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_374
	jmp	.label_366
.label_3074:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rsi, ecx
	imul	rcx, rsi, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	esi, ecx
	inc	esi
	mov	ecx, 1
	jmp	.label_356
.label_3075:
	cmp	r10d, 0x45
	je	.label_344
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_356
.label_3076:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_344
	mov	al, 0x78
	xor	edi, edi
	jmp	.label_361
.label_3077:
	cmp	r10d, 0x45
	jne	.label_390
	xor	edi, edi
	mov	al, 0x79
	jmp	.label_394
.label_388:
	mov	eax, edx
.label_394:
	xor	r11d, r11d
	jmp	.label_361
.label_369:
	dec	r12d
	mov	edi, 0x16d
	test	r12b, 3
	jne	.label_396
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_396:
	add	edi, r15d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_386:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_491
	cmp	eax, 0x67
	jne	.label_419
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, ecx
	movsxd	rdi, esi
	imul	rdx, rdi, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	edi, edx
	js	.label_363
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_433
.label_442:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	r11b
	setg	cl
	imul	rdi, rax, 0x51eb851f
	mov	rdx, rdi
	shr	rdx, 0x3f
	sar	rdi, 0x25
	add	edi, edx
	imul	edx, edi, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	edi, eax
	add	edi, 0x13
	mov	eax, 2
.label_385:
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_349
.label_390:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	edi, eax
	sub	edi, ecx
	js	.label_448
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_455
.label_491:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	r11b
	lea	edi, [rcx + rax + 0x76c]
	mov	eax, 4
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_349
.label_419:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	esi, [rcx + rax + 1]
	mov	ecx, 2
	mov	rbx, qword ptr [rsp + 0x38]
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_356
.label_382:
	mov	al, 0x59
	xor	edi, edi
	jmp	.label_361
.label_343:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_336
	nop	word ptr cs:[rax + rax]
.label_484:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_484
.label_336:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	setne	cl
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	add	rsp, 0x10
	jmp	.label_398
.label_428:
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	byte ptr [rcx], 0x2d
	sete	r11b
.label_425:
	cmp	rsi, 3
	mov	qword ptr [rsp + 0x28], rdx
	ja	.label_492
	mov	r15d, r10d
	mov	r10, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbx, rcx, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	movsxd	rcx, edx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	imul	edi, ecx, 0x3c
	sub	ecx, edx
	sub	eax, edi
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_495]]
.label_2775:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 5
.label_454:
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_346
.label_357:
	xor	eax, eax
	mov	r12d, ebp
	add	r12d, -6
	cmovs	r12d, eax
	mov	esi, OFFSET FLAT:label_58
	jmp	.label_351
.label_465:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
	mov	ebp, 9
	jmp	.label_356
.label_363:
	mov	edx, 2
	mov	qword ptr [rsp + 0x10], rdx
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, edx
	cmovl	edi, ecx
.label_433:
	xor	r11d, r11d
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_349
.label_448:
	mov	ecx, 2
	mov	qword ptr [rsp + 0x10], rcx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, 0xfffff894
	cmovl	edi, ecx
.label_455:
	xor	r11d, r11d
.label_349:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 0x24], 0
	cmp	r14d, 0x2b
	mov	eax, 0
	jne	.label_370
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	edx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, edi
	setb	cl
	cmp	edx, ebp
	setl	al
	or	al, cl
.label_370:
	mov	qword ptr [rsp + 0x40], rdi
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_353
.label_492:
	xor	esi, esi
	mov	ecx, 0x18
	jmp	.label_381
.label_2778:
	test	eax, eax
	je	.label_384
.label_2777:
	imul	ebx, ebx, 0x2710
	imul	ecx, ecx, 0x64
	add	ebx, eax
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 9
	mov	dword ptr [rsp + 0x24], 0x14
	jmp	.label_346
.label_469:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
.label_482:
	mov	ecx, ebp
.label_356:
	mov	qword ptr [rsp + 0x40], rsi
	mov	r11d, esi
	shr	r11d, 0x1f
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rcx
.label_353:
	cmp	r10d, 0x4f
	jne	.label_397
	test	r11b, r11b
	jne	.label_397
	xor	edi, edi
	mov	eax, edx
	mov	r11, qword ptr [rsp + 0x10]
.label_361:
	mov	dword ptr [rsp + 0x28], edi
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	word ptr [rsp + 0x4b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x4d]
	je	.label_400
	mov	byte ptr [rsp + 0x4d], r10b
	lea	rcx, [rsp + 0x4e]
.label_400:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x90]
	lea	rdx, [rsp + 0x4b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_414
	dec	rbx
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r15, rbx
	cmovb	r15, rax
	mov	r9, qword ptr [rsp + 8]
	mov	rcx, r9
	not	rcx
	cmp	r15, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	jae	.label_323
	test	r12, r12
	je	.label_424
	cmp	rbx, rax
	setae	al
	test	ecx, ecx
	jne	.label_426
	test	al, al
	jne	.label_426
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_430
	cmp	r14d, 0x2b
	jne	.label_434
.label_430:
	test	rbp, rbp
	je	.label_426
	nop	dword ptr [rax]
.label_441:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_441
	jmp	.label_426
.label_397:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, edx
	neg	ecx
	test	r11b, r11b
	cmove	ecx, edx
	lea	r15, [rsp + 0x87]
	mov	esi, dword ptr [rsp + 0x24]
	nop	word ptr [rax + rax]
.label_449:
	test	sil, 1
	je	.label_447
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_447:
	sar	esi, 1
	mov	edx, ecx
	mov	ebx, 0xcccccccd
	imul	rbx, rdx
	shr	rbx, 0x23
	lea	edx, [rbx + rbx]
	lea	edx, [rdx + rdx*4]
	mov	edi, ecx
	sub	edi, edx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	ecx, 9
	mov	ecx, ebx
	ja	.label_449
	test	esi, esi
	mov	ecx, ebx
	jne	.label_449
.label_439:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	ecx, ebp
	cmovl	ecx, ebp
	test	al, al
	je	.label_456
	mov	al, 0x2b
.label_456:
	test	r11b, r11b
	mov	dil, 0x2d
	jne	.label_432
	mov	edi, eax
.label_432:
	cmp	r14d, 0x2d
	mov	r10, rcx
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 0x24], esi
	jne	.label_459
	test	dil, dil
	je	.label_463
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_323
	cmp	qword ptr [rsp], 0
	je	.label_331
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_326
	test	al, al
	jne	.label_326
	movsxd	rbx, ebp
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_481:
	dec	rbx
	jne	.label_389
.label_326:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
.label_331:
	add	r9, rdx
	jmp	.label_463
.label_414:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_324
.label_459:
	movsxd	rax, r10d
	mov	rcx, r15
	lea	rdx, [rsp + 0x87]
	sub	rcx, rdx
	mov	edx, edi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_494
	cmp	r14d, 0x5f
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_327
	movsxd	rcx, edx
	mov	rax, r9
	not	rax
	cmp	rcx, rax
	jae	.label_323
	mov	dword ptr [rsp + 0x60], ebp
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	mov	rbx, qword ptr [rsp]
	test	rbx, rbx
	je	.label_335
	test	rcx, rcx
	je	.label_335
	xor	r12d, r12d
	nop	
.label_347:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	rbp, rcx
	call	fputc
	mov	rcx, rbp
	inc	r12
	cmp	r12, rcx
	jb	.label_347
.label_335:
	mov	r9, qword ptr [rsp + 8]
	add	r9, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, dword ptr [rsp + 0x60]
	sub	ebp, ecx
	cmovle	ebp, eax
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_352
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
	jae	.label_323
	cmp	qword ptr [rsp], 0
	je	.label_331
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	rsi, qword ptr [rsp]
	jne	.label_334
	test	al, al
	jne	.label_334
	movsxd	rax, ebp
	dec	rax
	cmp	r14d, 0x30
	mov	qword ptr [rsp + 0x30], rax
	je	.label_379
	cmp	r14d, 0x2b
	jne	.label_377
.label_379:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_334
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_383:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	inc	r12
	cmp	r12, qword ptr [rsp + 0x30]
	jb	.label_383
	jmp	.label_334
.label_494:
	test	dil, dil
	je	.label_463
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_323
	cmp	qword ptr [rsp], 0
	je	.label_331
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_326
	test	al, al
	jne	.label_326
	movsxd	rbx, ebp
	dec	rbx
	cmp	r14d, 0x30
	je	.label_402
	cmp	r14d, 0x2b
	jne	.label_406
.label_402:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_326
	nop	word ptr [rax + rax]
.label_373:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_373
	jmp	.label_326
.label_327:
	mov	rcx, r9
	not	rcx
	cmp	rax, rcx
	jae	.label_323
	test	dil, dil
	je	.label_416
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rsi, eax
	cmp	esi, 1
	mov	ebx, 1
	cmova	rbx, rsi
	cmp	rbx, rcx
	jae	.label_323
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_423
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x10]
	test	ecx, ecx
	jne	.label_341
	test	al, al
	jne	.label_341
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_431
	cmp	r14d, 0x2b
	jne	.label_480
.label_431:
	test	rbp, rbp
	je	.label_341
	nop	
.label_472:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_472
	jmp	.label_341
.label_434:
	test	rbp, rbp
	je	.label_426
	nop	dword ptr [rax]
.label_444:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_444
.label_426:
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_445
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_446
	mov	edx, 1
	lea	rdi, [rsp + 0x91]
	mov	rsi, rbx
	mov	rcx, r12
	call	fwrite
	jmp	.label_451
.label_445:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_lowcase
	jmp	.label_451
.label_446:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_451:
	mov	r9, qword ptr [rsp + 8]
.label_424:
	add	r9, r15
	movabs	r8, 0x100000000
	jmp	.label_324
.label_416:
	mov	qword ptr [rsp + 8], r9
	mov	r12, qword ptr [rsp]
	jmp	.label_460
.label_410:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_412
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_470
.label_412:
	test	r15b, r15b
	je	.label_474
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_lowcase
	jmp	.label_429
.label_474:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_478
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_uppcase
	jmp	.label_429
.label_476:
	test	rbp, rbp
	je	.label_467
	nop	dword ptr [rax]
.label_487:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_487
.label_467:
	mov	edi, 0xa
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_464:
	add	r9, rbx
	jmp	.label_324
.label_368:
	test	rbp, rbp
	je	.label_366
	nop	dword ptr [rax]
.label_493:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_493
.label_366:
	mov	edi, 9
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_364:
	add	r9, rbx
	jmp	.label_324
.label_406:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_326
.label_360:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_360
	jmp	.label_326
.label_478:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_333
.label_384:
	test	ecx, ecx
	je	.label_339
.label_2776:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 6
	mov	dword ptr [rsp + 0x24], 4
.label_346:
	mov	ecx, 0x4b
	mov	rbx, r10
	mov	r10d, r15d
.label_381:
	mov	edx, ecx
	and	dl, 0x7f
	cmp	dl, 0x18
	je	.label_350
	mov	al, 1
	cmp	dl, 0x4b
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_353
	jmp	.label_358
.label_350:
	mov	r11, rsi
.label_344:
	mov	qword ptr [rsp + 0x38], rbx
	xor	r12d, r12d
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_362:
	mov	rax, r12
	add	rbx, r8
	lea	r12, [rax - 1]
	cmp	byte ptr [r13 + rax], 0x25
	jne	.label_362
	mov	rcx, r12
	neg	rcx
	test	ebp, ebp
	mov	edx, ebp
	mov	esi, 0
	cmovs	edx, esi
	cmp	ecx, edx
	mov	esi, edx
	cmova	esi, ecx
	movsxd	r15, esi
	mov	rsi, r9
	not	rsi
	cmp	r15, rsi
	jae	.label_323
	cmp	qword ptr [rsp], 0
	je	.label_332
	mov	qword ptr [rsp + 8], r9
	sar	rbx, 0x20
	test	r11d, r11d
	jne	.label_372
	cmp	ecx, edx
	jae	.label_372
	movsxd	rbp, ebp
	mov	rcx, rbp
	sub	rcx, rbx
	cmp	r14d, 0x30
	je	.label_376
	cmp	r14d, 0x2b
	jne	.label_378
.label_376:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_372
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_387
	jmp	.label_372
.label_378:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_372
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr [rax + rax]
.label_393:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_393
.label_372:
	lea	rsi, [r13 + r12 + 1]
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_395
	mov	edx, 1
	mov	rdi, rsi
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp]
	call	fwrite
	jmp	.label_398
.label_395:
	mov	rdi, qword ptr [rsp]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_398:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_332:
	add	r9, r15
	jmp	.label_422
.label_377:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_334
	xor	ebx, ebx
.label_488:
	mov	edi, 0x20
	mov	r12, rsi
	call	fputc
	mov	rsi, r12
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x30]
	jb	.label_488
.label_334:
	movzx	edi, byte ptr [rsp + 0x28]
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x60]
	jmp	.label_331
.label_480:
	test	rbp, rbp
	je	.label_341
.label_421:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_421
.label_341:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	mov	r9, qword ptr [rsp + 8]
.label_423:
	add	r9, rbx
	mov	qword ptr [rsp + 8], r9
.label_460:
	test	r12, r12
	je	.label_399
	mov	rax, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_399
	mov	rax, qword ptr [rsp + 0x30]
	movsxd	rbx, eax
	xor	ebp, ebp
	nop	
.label_437:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_437
.label_399:
	mov	rax, qword ptr [rsp + 0x30]
	cdqe	
	mov	r9, qword ptr [rsp + 8]
	add	r9, rax
	xor	ebp, ebp
.label_352:
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
.label_463:
	lea	rbx, [rsp + 0x87]
	sub	rbx, r15
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_323
	cmp	qword ptr [rsp], 0
	je	.label_404
	mov	qword ptr [rsp + 8], r9
	cmp	rbx, rax
	setae	al
	test	r10d, r10d
	jne	.label_380
	test	al, al
	jne	.label_380
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_338
	cmp	r14d, 0x2b
	jne	.label_452
.label_338:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_380
	nop	dword ptr [rax]
.label_427:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_427
	jmp	.label_380
.label_452:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_380
	nop	dword ptr [rax]
.label_457:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_457
.label_380:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_462
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	rdx, rbx
	call	fwrite_uppcase
	jmp	.label_429
.label_462:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_333:
	mov	rcx, qword ptr [rsp]
	call	fwrite
.label_429:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_404:
	add	r9, r12
.label_422:
	mov	r12, qword ptr [rsp]
.label_324:
	mov	ebp, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	mov	rax, r9
	jne	.label_453
	jmp	.label_411
.label_323:
	xor	eax, eax
.label_411:
	add	rsp, 0x498
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
	#Procedure 0x406bb0

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_496
	nop	word ptr cs:[rax + rax]
.label_497:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_497
.label_496:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c00

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_498
	nop	word ptr cs:[rax + rax]
.label_499:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_499
.label_498:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	mov	qword ptr [rsp], rbp
	je	.label_508
	cmp	eax, 1
	je	.label_511
	cmp	eax, 2
	je	.label_512
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_512:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_506
.label_508:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_509
.label_511:
	xor	ebp, ebp
.label_506:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_500
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_502
.label_500:
	test	r14b, r14b
	je	.label_504
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_507
.label_504:
	test	bpl, bpl
	je	.label_509
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_502
.label_509:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_502
.label_507:
	mov	r14b, 1
.label_502:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_505
	mov	edi, 2
	call	close
.label_505:
	test	r14b, r14b
	je	.label_503
	mov	edi, 1
	call	close
.label_503:
	test	r15b, r15b
	je	.label_510
	xor	edi, edi
	call	close
.label_510:
	test	r13, r13
	jne	.label_501
	mov	dword ptr [rbx], r12d
.label_501:
	mov	rax, r13
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
	#Procedure 0x406db0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_513
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_514
	test	ecx, ecx
	js	.label_515
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_515:
	xor	eax, eax
.label_514:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e00

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e10

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e20

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_516
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_518:
	cmp	qword ptr [rcx], 0
	je	.label_517
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_519:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_519
	cmp	rsi, rax
	cmova	rax, rsi
.label_517:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_518
.label_516:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e70
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_520
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_525:
	cmp	qword ptr [rsi], 0
	je	.label_522
	mov	rax, rsi
	nop	dword ptr [rax]
.label_523:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_523
	inc	rdx
.label_522:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_525
.label_520:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_521
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_524
.label_521:
	xor	eax, eax
.label_524:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ed0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_526
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_532
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_527]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_528]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_529]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_530
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_531
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fc0

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_533
	test	rbx, rbx
	je	.label_533
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_535:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_534
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_534
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_535
	jmp	.label_533
.label_534:
	mov	r15, qword ptr [rbx]
.label_533:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407020

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_536
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_536:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407050
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_537
	mov	rcx, qword ptr [rdi]
	jmp	.label_539
	nop	
.label_540:
	add	rcx, 0x10
.label_539:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_538
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_540
.label_537:
	ret	
.label_538:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407080
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_545:
	cmp	qword ptr [rcx], rbx
	jne	.label_541
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_542
.label_541:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_545
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_544:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_543
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_544
	jmp	.label_543
.label_542:
	mov	rcx, qword ptr [rdx]
.label_543:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_546
	xor	eax, eax
.label_549:
	cmp	qword ptr [r8], 0
	je	.label_547
	test	r8, r8
	je	.label_547
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_548:
	cmp	rax, rdx
	jae	.label_546
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_548
.label_547:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_549
.label_546:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407140
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
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_550
	xor	ebx, ebx
.label_553:
	cmp	qword ptr [r13], 0
	je	.label_551
	test	r13, r13
	je	.label_551
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_552:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_550
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_552
.label_551:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_553
.label_550:
	mov	rax, rbx
	add	rsp, 8
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
	#Procedure 0x4071c0

	.globl hash_string
	.type hash_string, @function
hash_string:
	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_554
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_555:
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
	jne	.label_555
.label_554:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407200
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_556]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407220

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
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_558
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_557
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_557
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_557
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_558
.label_557:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_558:
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
	#Procedure 0x407300

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407320

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407330

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_559
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_560]]
	jbe	.label_561
	movss	xmm1,  dword ptr [dword ptr [rip + label_564]]
	ucomiss	xmm1, xmm0
	jbe	.label_561
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_563]]
	jbe	.label_561
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_561
	addss	xmm1,  dword ptr [dword ptr [rip + label_560]]
	ucomiss	xmm0, xmm1
	jbe	.label_561
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_562]]
	ucomiss	xmm2, xmm0
	jb	.label_561
	ucomiss	xmm0, xmm1
	ja	.label_559
.label_561:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_559:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073b0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_565
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_570
	cvtsi2ss	xmm0, rdi
	jmp	.label_566
.label_570:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_566:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_567]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_568]]
	jae	.label_569
.label_565:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_569:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407430
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_575
	nop	dword ptr [rax]
.label_574:
	add	r14, 0x10
.label_575:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_572
	cmp	qword ptr [r14], 0
	je	.label_574
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_571
	nop	word ptr cs:[rax + rax]
.label_577:
	test	cl, 1
	je	.label_573
	mov	rdi, qword ptr [rbx]
	call	rax
.label_573:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_577
.label_571:
	test	cl, cl
	je	.label_576
	mov	rdi, qword ptr [r14]
	call	rax
.label_576:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_574
.label_572:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_580
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_580
	mov	r14, qword ptr [r15]
	jmp	.label_585
	nop	dword ptr [rax + rax]
.label_578:
	add	r14, 0x10
.label_585:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_580
	cmp	qword ptr [r14], 0
	je	.label_578
	test	r14, r14
	je	.label_578
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_581:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_581
	jmp	.label_578
.label_580:
	mov	r14, qword ptr [r15]
	jmp	.label_583
	nop	word ptr [rax + rax]
.label_579:
	add	r14, 0x10
.label_583:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_586
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_579
	nop	word ptr cs:[rax + rax]
.label_582:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_582
	jmp	.label_579
.label_586:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_584
	nop	dword ptr [rax]
.label_587:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_587
.label_584:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_588
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_590
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_588
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_589
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_590
.label_589:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_591
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_591
	mov	rdi, qword ptr [rsp]
	call	free
.label_588:
	xor	r14d, r14d
.label_590:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_591:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076d0

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_594
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_593:
	cmp	qword ptr [r15], 0
	je	.label_592
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_596
	nop	word ptr cs:[rax + rax]
.label_599:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_600
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_601
	nop	word ptr cs:[rax + rax]
.label_600:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_601:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_599
.label_596:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_592
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_595
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_597
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_598
.label_595:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_598:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_592:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_593
	mov	al, 1
.label_594:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_597:
	xor	eax, eax
	jmp	.label_594
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077f0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_610
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_609
	test	rbx, rbx
	je	.label_604
	mov	qword ptr [rbx], rax
	jmp	.label_604
.label_609:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_614
	cvtsi2ss	xmm0, rcx
	jmp	.label_603
.label_614:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_603:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_608
	cvtsi2ss	xmm1, rax
	jmp	.label_613
.label_608:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_613:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_607
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_606
	cvtsi2ss	xmm2, rcx
	jmp	.label_611
.label_606:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_611:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_616
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_605
.label_616:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_605:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_607
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_615
	mulss	xmm0, xmm1
.label_615:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_568]]
	jae	.label_604
	movss	xmm1,  dword ptr [dword ptr [rip + label_567]]
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
	je	.label_604
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_610
.label_607:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_612
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_604
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_602
.label_612:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_602:
	mov	ebp, 1
.label_604:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_610:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079d0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_620
	cmp	rsi, r13
	je	.label_618
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_621
.label_618:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_620
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_623
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_619
.label_621:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_620
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_622:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_617
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_617
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_622
	jmp	.label_620
.label_623:
	mov	qword ptr [rbx], 0
	jmp	.label_620
.label_617:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_620
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_619:
	mov	rdi, r14
	call	free_entry
.label_620:
	mov	rax, r15
	add	rsp, 8
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
	#Procedure 0x407aa0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_624
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_624:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ad0

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
	je	.label_625
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_625:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b00

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_630
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_627
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_632
	cvtsi2ss	xmm0, rax
	jmp	.label_628
.label_632:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_628:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_634
	cvtsi2ss	xmm1, rcx
	jmp	.label_638
.label_634:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_638:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_627
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_633
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_636
.label_633:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_636:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_629
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_631
.label_629:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_631:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_627
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_626
	mulss	xmm0, dword ptr [rcx + 8]
.label_626:
	movss	xmm1,  dword ptr [dword ptr [rip + label_567]]
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
	jne	.label_627
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_635
	nop	dword ptr [rax + rax]
.label_637:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_637
.label_635:
	mov	qword ptr [r15 + 0x48], 0
.label_627:
	mov	rax, r14
.label_630:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c90

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_639
	nop	
.label_640:
	add	rbx, 2
.label_639:
	cmp	rbx, -1
	je	.label_641
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_640
	mov	r14, rbx
.label_641:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_642
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_643:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_642
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_643
.label_642:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d30

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d50

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, edx
	and	eax, 3
	mov	dword ptr [rsp + 0x3c], eax
	mov	dword ptr [rsp + 0x1c], edx
	mov	eax, edx
	and	eax, 0x20
	mov	dword ptr [rsp + 0x38], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	call	localeconv
	mov	rbp, rax
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	eax, OFFSET FLAT:label_110
	cmovb	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rdi, rbx
	call	strlen
	mov	rsi, r14
	cmp	rax, 0x11
	mov	r14d, OFFSET FLAT:label_34
	cmovb	r14, rbx
	mov	qword ptr [rsp + 0x20], r12
	lea	rax, [r12 + 0x287]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rsi, r15
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x70], rbp
	mov	qword ptr [rsp + 0x68], r14
	jbe	.label_678
	test	r15, r15
	mov	r8d, dword ptr [rsp + 0x34]
	je	.label_649
	xor	edx, edx
	mov	rax, rsi
	div	r15
	test	rdx, rdx
	jne	.label_649
	xor	edx, edx
	mov	rax, rsi
	div	r15
	mov	rsi, rax
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	r12, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	xor	ebp, ebp
	add	rdx, rdx
	setne	bpl
	cmp	rsi, rdx
	sbb	eax, eax
	and	eax, 1
	or	eax, 2
	cmp	rdx, rsi
	cmovae	ebp, eax
	jmp	.label_657
.label_678:
	xor	edx, edx
	mov	rax, r15
	div	rsi
	test	rdx, rdx
	mov	r8d, dword ptr [rsp + 0x34]
	jne	.label_649
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r15
	div	rsi
	mov	rcx, rax
	mov	r12, rcx
	imul	r12, r13
	xor	edx, edx
	mov	rax, r12
	div	rcx
	cmp	rax, r13
	mov	ecx, 0
	jne	.label_649
.label_657:
	mov	r15d, dword ptr [rsp + 0x1c]
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_667
	mov	esi, r8d
	xor	ebx, ebx
	cmp	rsi, r12
	mov	rax, qword ptr [rsp + 0x28]
	jbe	.label_671
	mov	r14, rax
	jmp	.label_654
.label_649:
	mov	qword ptr [rsp + 0x80], rsi
	xor	eax, eax
	test	rsi, rsi
	setns	al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_676]]
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	test	r13, r13
	setns	al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_676]]
	mov	qword ptr [rsp + 0x90], r15
	xor	eax, eax
	test	r15, r15
	setns	al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_676]]
	fdivrp	st(2)
	fmulp	st(1)
	mov	r12d, dword ptr [rsp + 0x1c]
	test	r12b, 0x10
	jne	.label_677
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x3c]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_660
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ebx, 0xffffffff
	jmp	.label_651
.label_677:
	mov	eax, r8d
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	dword ptr [rax]
.label_668:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_665
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_668
.label_665:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_673
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, dword ptr [rsp + 0x38]
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	r13, qword ptr [rsp + 0x50]
	add	rcx, r13
	cmp	rcx, rax
	jb	.label_682
	fld	xword ptr [rsp + 0x40]
	fstp	st(0)
	inc	r13
	test	r12b, 8
	je	.label_651
	cmp	byte ptr [r15 + rax - 1], 0x30
	jne	.label_651
.label_682:
	fld	dword ptr [dword ptr [rip + label_656]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x50]
	fld	xword ptr [rsp + 0x40]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	call	adjust_value
	fld	xword ptr [rsp + 0x50]
	fdivp	st(1)
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_660
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
.label_651:
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, r14
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	sub	r14, r13
	jmp	.label_663
.label_667:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_654
.label_671:
	xor	ebx, ebx
	mov	r9d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax]
.label_645:
	xor	edx, edx
	mov	rax, r12
	div	rsi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	edi, ebp
	sar	edi, 1
	xor	edx, edx
	mov	r12, rax
	mov	eax, ecx
	div	r8d
	lea	edx, [rdi + rdx*2]
	cmp	edx, r8d
	mov	ecx, eax
	jae	.label_669
	xor	eax, eax
	add	edx, ebp
	setne	al
	mov	ebp, eax
	jmp	.label_674
	nop	word ptr cs:[rax + rax]
.label_669:
	add	edx, ebp
	cmp	r8d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_674:
	inc	ebx
	cmp	ebx, 7
	jg	.label_681
	cmp	rsi, r12
	jbe	.label_645
.label_681:
	cmp	r12, 9
	ja	.label_647
	cmp	r9d, 1
	jne	.label_648
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_650
	jmp	.label_655
.label_647:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_654
.label_648:
	test	r9d, r9d
	jne	.label_655
	test	ebp, ebp
	je	.label_655
.label_650:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_655
	inc	r12
	xor	ecx, ecx
	cmp	r12, 9
	mov	ebp, 0
	ja	.label_658
.label_655:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	je	.label_659
	test	ecx, ecx
	jne	.label_659
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_654
.label_659:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x20]
	lea	r14, [rax + 0x286]
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_654
.label_658:
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12d, 0xa
.label_654:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 3
	je	.label_666
	cmp	al, 1
	jne	.label_662
	movsxd	rax, ebp
	mov	edx, r12d
	and	edx, 1
	xor	esi, esi
	add	rdx, rax
	setne	sil
	add	esi, ecx
	cmp	esi, 5
	jg	.label_680
	jmp	.label_662
.label_666:
	add	ecx, ebp
	jle	.label_662
.label_680:
	inc	r12
	mov	eax, dword ptr [rsp + 0x34]
	cmp	ebx, 7
	jg	.label_662
	test	r15d, r15d
	je	.label_662
	cmp	r12, rax
	jne	.label_662
	inc	ebx
	mov	r12d, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	jne	.label_662
	mov	byte ptr [r14 - 1], 0x30
	dec	r14
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	mov	r12d, 1
.label_662:
	mov	r15, qword ptr [rsp + 0x20]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_670:
	mov	rax, r12
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r12d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r12, 9
	mov	r12, rdx
	ja	.label_670
	mov	r12d, dword ptr [rsp + 0x1c]
.label_663:
	test	r12b, 4
	je	.label_661
	sub	r14, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	call	group_number
	mov	rbp, rax
.label_661:
	mov	rsi, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rdi, qword ptr [rsp + 0x28]
	test	r12b, r12b
	jns	.label_652
	test	ebx, ebx
	jns	.label_664
	xor	ebx, ebx
	cmp	rsi, 2
	jb	.label_664
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_672:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_664
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	ebx, ecx
	jb	.label_672
.label_664:
	mov	eax, r12d
	and	eax, 0x100
	test	r12b, 0x40
	je	.label_675
	mov	ecx, ebx
	or	ecx, eax
	je	.label_675
	mov	byte ptr [r15 + 0x287], 0x20
	add	r15, 0x288
	mov	rdi, r15
.label_675:
	test	ebx, ebx
	je	.label_679
	cmp	dword ptr [rsp + 0x38], 0
	jne	.label_644
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_646
.label_644:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_646:
	mov	byte ptr [rdi], cl
	inc	rdi
.label_679:
	test	eax, eax
	je	.label_652
	cmp	dword ptr [rsp + 0x38], 0
	je	.label_653
	test	ebx, ebx
	je	.label_653
	mov	byte ptr [rdi], 0x69
	inc	rdi
.label_653:
	mov	byte ptr [rdi], 0x42
	inc	rdi
.label_652:
	mov	byte ptr [rdi], 0
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408350

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_683
	fld	xword ptr [word ptr [rip + label_684]]
	fucomip	st(1)
	jbe	.label_683
	fld	dword ptr [dword ptr [rip + label_567]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	movzx	eax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	fnstcw	word ptr [rsp - 0x24]
	movzx	eax, word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp - 0x20]
	test	edi, edi
	sete	sil
	mov	qword ptr [rsp - 0x10], rax
	xor	edx, edx
	test	rax, rax
	setns	dl
	fild	qword ptr [rsp - 0x10]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_676]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	setne	cl
	or	cl, dl
	and	cl, sil
	movzx	ecx, cl
	xor	edx, edx
	add	rcx, rax
	mov	qword ptr [rsp - 8], rcx
	setns	dl
	fild	qword ptr [rsp - 8]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_676]]
.label_683:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408420

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, rcx
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	neg	r13
	mov	rbp, -1
	jmp	.label_687
	nop	dword ptr [rax]
.label_685:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_687:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_686
	cmp	al, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_686:
	cmp	r12, rbp
	cmovb	rbp, r12
	sub	rbx, rbp
	mov	rax, r12
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x10]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memcpy
	sub	r12, rbp
	jne	.label_685
	mov	rax, rbx
	add	rsp, 0x48
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
	#Procedure 0x4084d0

	.globl human_options
	.type human_options, @function
human_options:
	push	rbx
	mov	rbx, rdx
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	cmp	qword ptr [rbx], 0
	jne	.label_688
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_688:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	test	rdi, rdi
	jne	.label_689
	mov	edi, OFFSET FLAT:label_694
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_689
	mov	edi, OFFSET FLAT:label_696
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_698
.label_689:
	xor	ebp, ebp
	cmp	byte ptr [rdi], 0x27
	lea	rbx, [rdi + 1]
	sete	bpl
	cmovne	rbx, rdi
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_697
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_691:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_700
.label_697:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_690
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_695
	mov	dword ptr [r14], 0
.label_700:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_695:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	cmp	al, 0xa
	jb	.label_691
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_692:
	cmp	rax, rbx
	je	.label_699
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	cmp	cl, 0xa
	jae	.label_692
	jmp	.label_691
.label_698:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_691
.label_699:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	cmp	byte ptr [rax - 1], 0x42
	cmove	ecx, ebp
	jne	.label_693
	cmp	byte ptr [rax - 2], 0x69
	jne	.label_691
.label_693:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_691
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408610

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:label_701
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408630

	.globl ino_map_alloc
	.type ino_map_alloc, @function
ino_map_alloc:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_702
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:ino_hash
	mov	ecx, OFFSET FLAT:ino_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_703
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 0x10], 0
	jmp	.label_702
.label_703:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_702:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408690

	.globl ino_hash
	.type ino_hash, @function
ino_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4086a0

	.globl ino_compare
	.type ino_compare, @function
ino_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086b0
	.globl ino_map_free
	.type ino_map_free, @function
ino_map_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	
	.section	.text
	.align	32
	#Procedure 0x4086d0

	.globl ino_map_insert
	.type ino_map_insert, @function
ino_map_insert:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_708
	cmp	qword ptr [rbx], r15
	jne	.label_704
	jmp	.label_706
.label_708:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	mov	rax, -1
	test	rbx, rbx
	je	.label_709
.label_704:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_709
	cmp	rcx, rbx
	je	.label_705
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_707
.label_705:
	mov	qword ptr [r14 + 0x10], 0
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
.label_707:
	mov	qword ptr [rbx + 8], rax
.label_706:
	mov	rax, qword ptr [rbx + 8]
.label_709:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408760

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_710
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_711:
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
	ja	.label_711
	jmp	.label_713
.label_710:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_712:
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
	ja	.label_712
	mov	byte ptr [rsi], 0x2d
.label_713:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408820

	.globl mbscasecmp
	.type mbscasecmp, @function
mbscasecmp:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	rbx, rdi
	xor	r12d, r12d
	cmp	rbx, r14
	je	.label_714
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_723
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x50], r14
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_715
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_717
.label_715:
	lea	r14, [rsp + 0x40]
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_720:
	mov	rdi, r14
	call	mbuiter_multi_next
	movzx	eax, byte ptr [rsp + 0x60]
	test	al, al
	je	.label_721
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	je	.label_717
.label_721:
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_725
	mov	r12d, 0xffffffff
	test	al, al
	je	.label_714
	mov	edi, dword ptr [rsp + 0x24]
	call	towlower
	mov	r12d, eax
	mov	edi, dword ptr [rsp + 0x64]
	call	towlower
	sub	r12d, eax
	jmp	.label_728
	nop	dword ptr [rax]
.label_725:
	mov	r12d, 1
	test	al, al
	jne	.label_714
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rdx, rax
	jne	.label_716
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	call	memcmp
	mov	r12d, eax
.label_728:
	test	r12d, r12d
	jne	.label_714
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_720
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	jne	.label_720
.label_717:
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	mov	r12d, 1
	je	.label_714
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	jne	.label_714
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	sete	al
	cmp	dword ptr [rsp + 0x64], 0
	setne	cl
	or	cl, al
	movzx	r12d, cl
	shl	r12d, 0x1f
	sar	r12d, 0x1f
	jmp	.label_714
.label_723:
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_719:
	movzx	r12d, byte ptr [rbx]
	test	byte ptr [r15 + r12*2 + 1], 1
	je	.label_727
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r12d, byte ptr [rax + r12*4]
.label_727:
	movzx	r13d, byte ptr [r14]
	test	byte ptr [r15 + r13*2 + 1], 1
	je	.label_726
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r13d, byte ptr [rax + r13*4]
.label_726:
	test	r12d, r12d
	je	.label_718
	inc	rbx
	inc	r14
	cmp	r12d, r13d
	je	.label_719
.label_718:
	sub	r12d, r13d
.label_714:
	mov	eax, r12d
	add	rsp, 0x80
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_716:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	jae	.label_722
	call	memcmp
	test	eax, eax
	setg	al
	jmp	.label_724
.label_722:
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	setns	al
.label_724:
	movzx	eax, al
	lea	r12d, [rax + rax - 1]
	jmp	.label_714
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a70

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_739
	cmp	byte ptr [rbx], 0
	jne	.label_730
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	je	.label_732
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_731
.label_732:
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	je	.label_742
	mov	byte ptr [rbx], 1
.label_730:
	lea	r14, [rbx + 0x24]
	mov	r12, qword ptr [rbx + 0x10]
	call	__ctype_get_mb_cur_max
	mov	rdi, r12
	mov	rsi, rax
	call	strnlen1
	lea	r15, [rbx + 4]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_740
	test	rax, rax
	je	.label_729
	cmp	rax, -1
	jne	.label_736
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_731
.label_740:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_731
.label_729:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_738
	cmp	dword ptr [r14], 0
	jne	.label_741
.label_736:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_731
	mov	byte ptr [rbx], 0
.label_731:
	mov	byte ptr [rbx + 0xc], 1
.label_739:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_742:
	mov	edi, OFFSET FLAT:label_737
	mov	esi, OFFSET FLAT:label_734
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_735
	call	__assert_fail
.label_738:
	mov	edi, OFFSET FLAT:label_743
	mov	esi, OFFSET FLAT:label_734
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_735
	call	__assert_fail
.label_741:
	mov	edi, OFFSET FLAT:label_733
	mov	esi, OFFSET FLAT:label_734
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_735
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bc0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bd0
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	test	al, al
	mov	byte ptr [rdi], al
	je	.label_744
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	jmp	.label_745
.label_744:
	mov	qword ptr [rdi + 4], 0
.label_745:
	mov	al, byte ptr [rsi + 0xc]
	mov	byte ptr [rdi + 0xc], al
	add	rdi, 0x10
	add	rsi, 0x10
	jmp	mb_copy
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_746
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_748
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_750
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_748
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_751
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_751:
	mov	rbx, r14
.label_748:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_746:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_747
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cb0
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
	#Procedure 0x408cf0
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
	#Procedure 0x408d00
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
	#Procedure 0x408d10

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
	#Procedure 0x408d50
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
	#Procedure 0x408d70

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_752
	test	rdx, rdx
	je	.label_752
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_752:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408da0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	#Procedure 0x408e20

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_800:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_861
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_808]]
.label_3122:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_813
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_819
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_3123:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_826
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_826
	xor	r14d, r14d
.label_837:
	cmp	r14, r11
	jae	.label_833
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_833:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_837
.label_826:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_764
.label_3115:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_764
.label_3118:
	mov	al, 1
.label_3116:
	mov	r12b, 1
.label_3119:
	test	r12b, 1
	mov	cl, 1
	je	.label_854
	mov	ecx, eax
.label_854:
	mov	al, cl
.label_3117:
	test	r12b, 1
	jne	.label_857
	test	r11, r11
	je	.label_860
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_860:
	mov	r14d, 1
	jmp	.label_864
.label_857:
	xor	r14d, r14d
.label_864:
	mov	ecx, OFFSET FLAT:label_819
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_764
.label_3120:
	test	r12b, 1
	jne	.label_754
	test	r11, r11
	je	.label_756
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_756:
	mov	r14d, 1
	jmp	.label_788
.label_3121:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_763
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_764
.label_754:
	xor	r14d, r14d
.label_788:
	mov	eax, OFFSET FLAT:label_763
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_764:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_795
	nop	dword ptr [rax]
.label_790:
	inc	rsi
.label_795:
	cmp	rbp, -1
	je	.label_818
	cmp	rsi, rbp
	jne	.label_821
	jmp	.label_824
	nop	word ptr cs:[rax + rax]
.label_818:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_824
.label_821:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_828
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_830
	cmp	rbp, -1
	jne	.label_830
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_830:
	cmp	rbx, rbp
	jbe	.label_839
.label_828:
	xor	r8d, r8d
.label_827:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_841
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_845]]
.label_2793:
	test	rsi, rsi
	jne	.label_834
	jmp	.label_771
	nop	
.label_839:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_862
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_827
	jmp	.label_755
.label_862:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_827
.label_2797:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_766
	test	rsi, rsi
	jne	.label_768
	cmp	rbp, 1
	je	.label_771
	xor	r13d, r13d
	jmp	.label_757
.label_2786:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_774
	cmp	byte ptr [rsp + 7], 0
	jne	.label_775
	cmp	r12d, 2
	jne	.label_777
	mov	eax, r9d
	and	al, 1
	jne	.label_777
	cmp	r14, r11
	jae	.label_779
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_779:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_785
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_785:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_791
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_791:
	add	r14, 3
	mov	r9b, 1
.label_777:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_799
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_799:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_802
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_802
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_802
	cmp	r14, r11
	jae	.label_814
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_814:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_794
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_794:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_757
.label_2787:
	mov	bl, 0x62
	jmp	.label_825
.label_2788:
	mov	cl, 0x74
	jmp	.label_783
.label_2789:
	mov	bl, 0x76
	jmp	.label_825
.label_2790:
	mov	bl, 0x66
	jmp	.label_825
.label_2791:
	mov	cl, 0x72
	jmp	.label_783
.label_2794:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_832
	cmp	byte ptr [rsp + 7], 0
	jne	.label_775
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_838
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_838:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_848
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_848:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_849
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_849:
	add	r14, 3
	xor	r9d, r9d
.label_832:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_757
.label_2795:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_805
	cmp	r12d, 2
	jne	.label_834
	cmp	byte ptr [rsp + 7], 0
	je	.label_834
	jmp	.label_775
.label_2796:
	cmp	r12d, 2
	jne	.label_867
	cmp	byte ptr [rsp + 7], 0
	jne	.label_775
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_784
.label_841:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_760
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
.label_761:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_778
	test	r8b, r8b
	je	.label_778
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_757
.label_766:
	test	rsi, rsi
	jne	.label_765
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_765
.label_771:
	mov	dl, 1
.label_2792:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_775
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_757:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_810
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_811
	jmp	.label_815
	nop	word ptr cs:[rax + rax]
.label_810:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_815
.label_811:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_820
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_784
	jmp	.label_831
	nop	dword ptr [rax]
.label_815:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_831
	jmp	.label_784
.label_820:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_831
.label_774:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_790
	xor	r15d, r15d
	jmp	.label_834
.label_867:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_783
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_784
.label_783:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_775
.label_825:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_757
	nop	word ptr cs:[rax + rax]
.label_831:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_775
	cmp	r12d, 2
	jne	.label_855
	mov	eax, r9d
	and	al, 1
	jne	.label_855
	cmp	r14, r11
	jae	.label_859
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_859:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_823
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_823:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_840
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_840:
	add	r14, 3
	mov	r9b, 1
.label_855:
	cmp	r14, r11
	jae	.label_753
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_753:
	inc	r14
	jmp	.label_758
.label_760:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_762
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_762:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_807:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_781
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_787
	cmp	rbp, -2
	je	.label_850
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_796
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_846:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_816
	bt	rsi, rdx
	jb	.label_755
.label_816:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_846
.label_796:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_822
	xor	r13d, r13d
.label_822:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_807
	jmp	.label_761
.label_802:
	xor	r13d, r13d
	jmp	.label_757
.label_765:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_757
.label_805:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_834
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_834
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_834
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_842
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_835
	cmp	byte ptr [rsp + 7], 0
	jne	.label_775
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_851
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_851:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_792
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_792:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_863
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_863:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_865
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_865:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_757
.label_834:
	xor	eax, eax
.label_768:
	xor	r13d, r13d
	jmp	.label_757
.label_778:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_759
	nop	word ptr cs:[rax + rax]
.label_836:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_759:
	test	r8b, r8b
	je	.label_769
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_770
	cmp	r14, r11
	jae	.label_772
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_772:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_770
	nop	dword ptr [rax]
.label_769:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_755
	cmp	r12d, 2
	jne	.label_782
	mov	eax, r9d
	and	al, 1
	jne	.label_782
	cmp	r14, r11
	jae	.label_786
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_786:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_844
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_844:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_797
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_797:
	add	r14, 3
	mov	r9b, 1
.label_782:
	cmp	r14, r11
	jae	.label_789
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_789:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_804
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_804:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_812
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_812:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_770:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_784
	test	r9b, 1
	je	.label_798
	mov	ebx, eax
	and	bl, 1
	jne	.label_798
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_829
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_829:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_853
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_853:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_798:
	cmp	r14, r11
	jae	.label_836
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_836
	nop	word ptr cs:[rax + rax]
.label_784:
	test	r9b, 1
	je	.label_817
	and	al, 1
	jne	.label_817
	cmp	r14, r11
	jae	.label_843
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_843:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_847
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_847:
	add	r14, 2
	xor	r9d, r9d
.label_817:
	mov	ebx, r15d
.label_758:
	cmp	r14, r11
	jae	.label_852
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_852:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_790
.label_787:
	xor	r13d, r13d
.label_781:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_761
.label_850:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_866
	mov	rsi, qword ptr [rsp + 0x50]
.label_776:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_801
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_776
	xor	r13d, r13d
	jmp	.label_761
.label_866:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_761
.label_801:
	xor	r13d, r13d
	jmp	.label_761
.label_842:
	xor	r13d, r13d
	jmp	.label_757
.label_835:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_757
	nop	dword ptr [rax + rax]
.label_824:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_773
	or	dl, al
	je	.label_755
.label_773:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_793
	or	dl, al
	jne	.label_793
	test	r10b, 1
	jne	.label_858
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_793
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_800
.label_793:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_803
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_806
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_806
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_767:
	cmp	r14, r11
	jae	.label_809
	mov	byte ptr [rcx + r14], al
.label_809:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_767
	jmp	.label_806
.label_775:
	mov	qword ptr [rsp + 0x20], rbp
.label_755:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_856:
	mov	r14, rax
.label_780:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_858:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_856
.label_803:
	mov	rcx, qword ptr [rsp + 8]
.label_806:
	cmp	r14, r11
	jae	.label_780
	mov	byte ptr [rcx + r14], 0
	jmp	.label_780
.label_861:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409be0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bf0

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
	call	xcharalloc
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
	je	.label_868
	mov	qword ptr [rax], rbx
.label_868:
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
	#Procedure 0x409ce0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_869
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_872:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_872
.label_869:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_873
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_870]], OFFSET FLAT:slot0
.label_873:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_871
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_871:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x409d90

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
	js	.label_877
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_880
	cmp	r12d, 0x7fffffff
	je	.label_875
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_878
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_878:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_880:
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
	jbe	.label_876
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_879
.label_876:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_874
	mov	rdi, r14
	call	free
.label_874:
	mov	rdi, r15
	call	xcharalloc
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
.label_879:
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
.label_877:
	call	abort
.label_875:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f50

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f60
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f70
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x409f80

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_881
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_881:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a020

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a060

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a080
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0a0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_882]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_883]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_884]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a110

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a120

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a130
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a140

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_882]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_883]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_884]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a210
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a230
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a250

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a260
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x40a270

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a290

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_889
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_885
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_890
	mov	eax, OFFSET FLAT:label_891
	jmp	.label_888
.label_885:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_892
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_886
	mov	eax, OFFSET FLAT:label_887
	jmp	.label_888
.label_892:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_763
	mov	eax, OFFSET FLAT:label_819
.label_888:
	cmove	rax, rcx
.label_889:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a350

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_893
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_895
	jmp	.label_894
.label_893:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_894
.label_895:
	mov	eax, 1
	test	bpl, bpl
	je	.label_894
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_894:
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
	#Procedure 0x40a3d0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_898
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_896
	jmp	.label_897
.label_898:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_897
.label_896:
	mov	eax, 1
	test	bpl, bpl
	je	.label_897
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_897:
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
	#Procedure 0x40a460

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_899
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_901
	jmp	.label_900
.label_899:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_900
.label_901:
	mov	eax, 1
	test	bpl, bpl
	je	.label_900
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_900:
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
	#Procedure 0x40a4e0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_904
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_903
	jmp	.label_902
.label_904:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_902
.label_903:
	mov	eax, 1
	test	bpl, bpl
	je	.label_902
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_902:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a550

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_907
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_905
	jmp	.label_906
.label_907:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_906
.label_905:
	mov	eax, 1
	test	bpl, bpl
	je	.label_906
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_906:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a5b0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_908
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_910
	jmp	.label_909
.label_908:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_909
.label_910:
	mov	eax, 1
	test	bpl, bpl
	je	.label_909
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_909:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a600

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_913
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_912
	jmp	.label_911
.label_913:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_911
.label_912:
	mov	eax, 1
	test	bpl, bpl
	je	.label_911
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_911:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a650

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_916
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_915
	jmp	.label_914
.label_916:
	mov	eax, 1
	test	cl, cl
	je	.label_914
.label_915:
	xor	eax, eax
.label_914:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a680
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a690
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6a0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6b0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6c0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a6d0

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a6e0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a6f0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a700
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a710

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a750
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	mov	rax, rdi
	mov	rdx, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a760

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_917
	mov	eax, 1
	jg	.label_917
	sub	esi, ecx
	mov	eax, esi
.label_917:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a780
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7a0
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_918]]
	addsd	xmm0, xmm1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7c0

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
	je	.label_919
	mov	edx, OFFSET FLAT:label_929
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_935
.label_919:
	mov	edx, OFFSET FLAT:label_936
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_935:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_923
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
	mov	esi, OFFSET FLAT:label_937
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_924
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_925]]
.label_3017:
	add	rsp, 8
	jmp	.label_922
.label_924:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_932
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
	jmp	.label_922
.label_3018:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_920
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
.label_3019:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_933
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
.label_3020:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_930
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
.label_3021:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_927
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
	jmp	.label_922
.label_3022:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_926
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
	jmp	.label_922
.label_3023:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_928
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
	jmp	.label_922
.label_3024:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_931
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
	jmp	.label_922
.label_3026:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_934
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
	jmp	.label_922
.label_3025:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_921
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
.label_922:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_938:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_938
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_940:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_939
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_941
	nop	dword ptr [rax]
.label_939:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_941:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_942
	inc	r9
	cmp	r9, 0xa
	jb	.label_940
.label_942:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40abb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_943
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_943:
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
	#Procedure 0x40ac40
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_944
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_945
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_947
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_946
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acc0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_948
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_948:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acf0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_949
	test	rax, rax
	je	.label_950
.label_949:
	pop	rbx
	ret	
.label_950:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad10

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_951
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_951:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_952
	test	rbx, rbx
	jne	.label_952
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_952:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_954
	test	rax, rax
	je	.label_953
.label_954:
	pop	rbx
	ret	
.label_953:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40ad70

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_955
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_958
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_956
.label_955:
	test	rcx, rcx
	jne	.label_959
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_959:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_957
.label_956:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_958:
	call	xalloc_die
.label_957:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40adf0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae00

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae10

	.globl xzalloc
	.type xzalloc, @function
xzalloc:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae40

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_960
	call	rpl_calloc
	test	rax, rax
	je	.label_960
	pop	rcx
	ret	
.label_960:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae70

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aea0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aec0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_961
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40aef0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_963
	pop	rcx
	ret	
.label_963:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_962
	mov	edi, OFFSET FLAT:label_964
	mov	esi, OFFSET FLAT:label_965
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_966
	call	__assert_fail
.label_962:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40af30

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_967
	cmp	ecx, 0x11
	jne	.label_968
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_967:
	ret	
.label_968:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40af50

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
	mov	r13, r8
	mov	r14, rcx
	mov	ebx, edx
	mov	r12, rdi
	cmp	ebx, 0x25
	jae	.label_984
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtoimax
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_973
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_975
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_980
	mov	r12d, 1
.label_975:
	test	r13, r13
	jne	.label_981
	jmp	.label_970
.label_973:
	mov	r12d, 4
	test	r13, r13
	je	.label_980
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_980
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_980
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_981:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_970
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_974
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_971
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_971
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_983
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_982
	cmp	ecx, 0x44
	je	.label_982
	cmp	ecx, 0x69
	jne	.label_971
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_971
.label_983:
	mov	esi, 0x400
	jmp	.label_971
.label_982:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_971:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_974
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_976]]
.label_3126:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_969
.label_974:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_980
.label_3127:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_969
.label_3128:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_969
.label_3130:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_969
.label_3124:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_972
.label_3125:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_969
.label_3129:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_969
.label_3131:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_969
.label_3132:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_969
.label_3133:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_972
.label_3134:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_972:
	call	bkm_scale
.label_969:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_970:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_980:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_984:
	mov	edi, OFFSET FLAT:label_977
	mov	esi, OFFSET FLAT:label_978
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_979
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b1d0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_985
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_985:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_986
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_986:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b220

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_987
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_988:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_988
.label_987:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b260

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_999
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_996:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_996
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_989
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_1000
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_1003
	cmp	eax, 0x22
	jne	.label_989
	mov	r12d, 1
.label_1003:
	test	rbp, rbp
	jne	.label_993
	jmp	.label_990
.label_1000:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_989
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_989
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_989
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_993:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_990
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_1002
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_991
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_991
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_997
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_994
	cmp	ecx, 0x44
	je	.label_994
	cmp	ecx, 0x69
	jne	.label_997
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_997
.label_994:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_997
.label_991:
	mov	rsi, r14
.label_997:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_1002
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1004]]
.label_2957:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_995
.label_1002:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_992
.label_2958:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_995
.label_2959:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_995
.label_2961:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_995
.label_2955:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_0
	jmp	.label_998
.label_2956:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_995
.label_2960:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_995
.label_2962:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_995
.label_2963:
	lea	rdi, [rsp]
	mov	edx, 7
.label_995:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_998:
	mov	rsi, r14
.label_2965:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_990:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_992:
	mov	r15d, r12d
.label_989:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2964:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_0
	jmp	.label_998
.label_2966:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_0
	jmp	.label_998
.label_999:
	mov	edi, OFFSET FLAT:label_977
	mov	esi, OFFSET FLAT:label_978
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1001
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b510

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b540

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_1005
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1006:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_1006
.label_1005:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b580

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5a0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	r14, r8
	mov	eax, esi
	dec	edi
	cmp	edi, 4
	jae	.label_1007
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1008]]
	cdqe	
	test	eax, eax
	js	.label_1009
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:label_1010
	jmp	.label_1011
.label_1009:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:label_1010
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_1011:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	mov	r9, r14
	call	error
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1007:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b630

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_1019
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1012:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1012
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_1014
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_1020
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_1023
	cmp	eax, 0x22
	jne	.label_1014
	mov	r12d, 1
.label_1023:
	test	rbp, rbp
	jne	.label_1027
	jmp	.label_1017
.label_1020:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_1014
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_1014
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_1014
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_1027:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_1017
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_1021
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_1022
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_1022
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_1016
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_1013
	cmp	ecx, 0x44
	je	.label_1013
	cmp	ecx, 0x69
	jne	.label_1016
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_1016
.label_1013:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_1016
.label_1022:
	mov	rsi, r14
.label_1016:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_1021
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1024]]
.label_2816:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_1015
.label_1021:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_1026
.label_2817:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_1015
.label_2818:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_1015
.label_2820:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_1015
.label_2814:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_1
	jmp	.label_1018
.label_2815:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_1015
.label_2819:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_1015
.label_2821:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_1015
.label_2822:
	lea	rdi, [rsp]
	mov	edx, 7
.label_1015:
	mov	esi, r15d
	call	bkm_scale_by_power_1
.label_1018:
	mov	rsi, r14
.label_2824:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_1017:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1026:
	mov	r15d, r12d
.label_1014:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2823:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_1
	jmp	.label_1018
.label_2825:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_1
	jmp	.label_1018
.label_1019:
	mov	edi, OFFSET FLAT:label_977
	mov	esi, OFFSET FLAT:label_978
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1025
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8e0

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b910

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_1028
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1029:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_1
	or	ebp, eax
	dec	ebx
	jne	.label_1029
.label_1028:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b950

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1030
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1031
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1031
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1030:
	mov	ecx, 1
.label_1031:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1033
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1032
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1033
.label_1032:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1033
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1034
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1034:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1033:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1035
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1035
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1035:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba50

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1036
	ret	
.label_1036:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba70

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_1038
	test	rbx, rbx
	je	.label_1038
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_1038
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_1038
	mov	edi, OFFSET FLAT:label_513
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_1037
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_1038
.label_1037:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_1038:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb10

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb20

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
	jne	.label_1039
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1039
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1040
.label_1039:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1040:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1041
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1041:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bb90

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_1043
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1043
	test	r14b, 0x12
	je	.label_1043
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1050
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_1057
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_1059
	mov	esi, OFFSET FLAT:label_34
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1063
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_1059:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_1045
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_1045:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_1054
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_1046
.label_1043:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1064:
	xor	eax, eax
.label_1050:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1044:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_1060
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_1056
.label_1060:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_1056:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1042
	mov	qword ptr [rbp + 0x10], rbx
.label_1053:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_1061
.label_1042:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_1058
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_1061:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_1046
	jmp	.label_1051
.label_1058:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1053
	nop	word ptr cs:[rax + rax]
.label_1046:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_1055
	cmp	rax, 3
	jb	.label_1055
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1055
	nop	dword ptr [rax + rax]
.label_1062:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_1055
	dec	rax
	cmp	rax, 1
	ja	.label_1062
	nop	word ptr cs:[rax + rax]
.label_1055:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1044
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1049
.label_1051:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1052
	cmp	r12, 2
	jb	.label_1052
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_1052:
	mov	r12, qword ptr [rsp + 0x18]
.label_1054:
	mov	esi, OFFSET FLAT:label_34
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_1049
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_1047
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_1048
	mov	esi, OFFSET FLAT:label_110
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_1048
	or	byte ptr [r13 + 0x48], 4
.label_1048:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_1050
.label_1049:
	mov	rbx, qword ptr [rsp + 0x10]
.label_1047:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_1063:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_1057:
	mov	rdi, r13
	call	free
	jmp	.label_1064
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf10

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_1065
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1066:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1066
	inc	r14
.label_1065:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf60

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_1067
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_1069
.label_1067:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_1070
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_1068
.label_1070:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_1069:
	xor	eax, eax
.label_1068:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bfc0

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1071
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_1071:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c050

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_1072
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_1072:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c070

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1074
	test	byte ptr [r14 + 0x48], 1
	je	.label_1074
	mov	dl, 1
.label_1074:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_1075
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_1075
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_1076
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_1083
.label_1075:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_1076
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_1082
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_1080
.label_1082:
	mov	eax, dword ptr [r14]
.label_1083:
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
.label_1073:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1076:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_1081
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_1073
	cmp	ecx, 0x4000
	jne	.label_1077
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_1079
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_1079
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_1079:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_1073
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_1078
	cmp	cl, 0x2e
	jne	.label_1073
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_1073
.label_1078:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_1073
.label_1081:
	mov	ax, 8
	jmp	.label_1073
.label_1077:
	mov	ax, 3
	jmp	.label_1073
.label_1080:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_1073
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c200

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_1084
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1090
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_1090
	mov	qword ptr [r15 + 0x10], rax
.label_1084:
	test	rbx, rbx
	je	.label_1085
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_1088:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1088
.label_1085:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_1087
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_1089:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_1089
	lea	rax, [rax + r8*8]
.label_1087:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_1086
.label_1090:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_1086:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c2e0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_1091
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1094
	jmp	.label_1092
.label_1091:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1093
	mov	rdi, rax
	call	cycle_check_init
.label_1094:
	mov	r14b, 1
.label_1092:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1093:
	xor	r14d, r14d
	jmp	.label_1092
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c350

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1095
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_1095:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c380

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1096
	nop	dword ptr [rax]
.label_1098:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1097
	call	closedir
.label_1097:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_1098
.label_1096:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c3c0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1099
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1103
	nop	word ptr cs:[rax + rax]
.label_1109:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1106
	mov	rbx, qword ptr [rdi + 8]
.label_1106:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1109
	jmp	.label_1110
.label_1103:
	mov	rbx, rdi
.label_1110:
	mov	rdi, rbx
	call	free
.label_1099:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1101
	call	fts_lfree
.label_1101:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1108
	xor	ebx, ebx
	test	al, 4
	jne	.label_1104
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_1100
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1100:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_1102
	jmp	.label_1104
.label_1108:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_1104
	call	close
.label_1102:
	test	eax, eax
	je	.label_1104
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1104:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1107
	call	hash_free
.label_1107:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_1105
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_1105:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4c0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_1111
	nop	word ptr cs:[rax + rax]
.label_1112:
	mov	edi, eax
	call	close
.label_1111:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1113
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1112
	jmp	.label_1111
.label_1113:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c500

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1114
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_1115
	jmp	hash_free
.label_1114:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_1115:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c530

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1125
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1125
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_1134
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_1137
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_1125
.label_1134:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_1137
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1148
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1148
	mov	esi, OFFSET FLAT:label_110
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_1152
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_1120
.label_1137:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_1150
	movzx	eax, ax
	cmp	eax, 4
	je	.label_1117
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_1155
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_1117
.label_1155:
	cmp	qword ptr [r14 + 8], 0
	je	.label_1122
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_1123
	cmp	qword ptr [r14 + 8], 0
	je	.label_1122
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1127
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1156
	nop	word ptr [rax + rax]
.label_1150:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_1139
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1138
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_1143
.label_1139:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1147
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_1150
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1121
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1130
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1130
	mov	esi, OFFSET FLAT:label_110
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1154
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_1130
.label_1135:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1156:
	test	rax, rax
	jne	.label_1135
	jmp	.label_1127
.label_1117:
	test	byte ptr [rbx + 0x72], 2
	je	.label_1128
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_1128:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1131
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1131:
	mov	word ptr [rbx + 0x70], 6
.label_1129:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_1125
.label_1148:
	mov	r15, rbx
	jmp	.label_1120
.label_1147:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_1140
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_1125
.label_1138:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_1149
	mov	rdi, rbx
	call	free
	jmp	.label_1121
.label_1140:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_1120
.label_1123:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1122:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1118
.label_1127:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1121
.label_1118:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1125
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_1129
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_1129
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_1129
.label_1152:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_1120
.label_1149:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1125
.label_1143:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_1142
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_1144
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1146
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_1151
	test	al, 1
	jne	.label_1116
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_1141
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1132
.label_1142:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_1125
.label_1146:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1132:
	test	eax, eax
	je	.label_1116
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1116
.label_1151:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1124
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_1136
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_1124
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1124
.label_1154:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1130:
	mov	word ptr [r15 + 0x74], 3
.label_1121:
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
.label_1120:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_1119
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1126
	cmp	rax, 2
	jne	.label_1144
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1153
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1153
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_1126
.label_1153:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1119
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1126
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1126
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_1126:
	mov	ax, word ptr [r15 + 0x70]
.label_1119:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1125
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1133
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1133:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_1125
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_1125
.label_1136:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_1124:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_1116:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_1145
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_1145
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_1145:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1125:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1144:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1157
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1159
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1157:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1158
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1158
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1159
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1158
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1158
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_1158:
	add	rsp, 0x18
	ret	
.label_1159:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb80

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
	mov	r14, rdi
	test	rbx, rbx
	je	.label_1160
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_1171
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_1171
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1171:
	test	eax, eax
	sete	r15b
	jmp	.label_1161
.label_1160:
	xor	r15d, r15d
.label_1161:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1165
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_1169
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_1169
	and	eax, 0x200
	je	.label_1169
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_1169
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_1169:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_1167
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_1164
.label_1167:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_1168
	test	rbx, rbx
	je	.label_1162
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1162
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_1162
	cmp	byte ptr [rbx + 2], 0
	jne	.label_1162
.label_1168:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_1170
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_1172
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1172
.label_1162:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_1163
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_1166
.label_1165:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1164
	and	eax, 0x200
	je	.label_1164
	mov	edi, r13d
	call	close
	jmp	.label_1164
.label_1163:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_1164
.label_1172:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1170:
	mov	ebp, 0xffffffff
.label_1166:
	test	r13d, r13d
	jns	.label_1164
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_1164:
	mov	eax, ebp
	add	rsp, 0x98
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
	#Procedure 0x40cd10

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_1179
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_1189
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1192
.label_1179:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_1203
	mov	edi, dword ptr [rbx + 0x2c]
.label_1203:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_1208
	test	al, 1
	je	.label_1211
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_1208
.label_1211:
	mov	edx, 0x20000
.label_1208:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_1216
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_1218
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_1177
.label_1189:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_1216:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_1221
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_1191
.label_1218:
	test	byte ptr [rbx + 0x49], 1
	je	.label_1177
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_1183
.label_1177:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_1192
	cmp	ebp, 2
	jne	.label_1199
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_1200
.label_1199:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_1204
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_1204
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_1205
.label_1183:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1191
.label_1204:
	mov	r15, rbx
	xor	r12d, r12d
.label_1205:
	xor	r12b, 1
.label_1200:
	cmp	ebp, 3
	je	.label_1219
	test	r12b, r12b
	jne	.label_1219
	mov	dword ptr [rsp + 4], r12d
.label_1174:
	mov	rbx, r15
	jmp	.label_1192
.label_1219:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_1223
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_1223:
	test	ebx, ebx
	js	.label_1227
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1174
.label_1227:
	cmp	ebp, 3
	jne	.label_1176
	test	r12b, r12b
	je	.label_1176
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_1176:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_1181
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_1181
	call	close
.label_1181:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_1192:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_1197
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1197:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_1173:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_1209
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_1196:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1180
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_1182
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_1182
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_1185
	test	al, al
	je	.label_1201
	jmp	.label_1182
	nop	word ptr cs:[rax + rax]
.label_1185:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_1182
.label_1201:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_1196
	jmp	.label_1186
	nop	word ptr cs:[rax + rax]
.label_1182:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1213
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_1214
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_1215
	nop	dword ptr [rax]
.label_1214:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_1213
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_1193
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1225
.label_1193:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1225:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_1215:
	add	rbp, rdx
	jb	.label_1184
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1188
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1198
	nop	word ptr cs:[rax + rax]
.label_1188:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_1198:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1220
	test	byte ptr [rbx + 0x49], 4
	jne	.label_1220
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1222
	nop	word ptr cs:[rax + rax]
.label_1220:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1224
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_1217
.label_1224:
	xor	ebx, ebx
.label_1217:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_1222:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_1175
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_1175:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_1195
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1195
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_1195:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_1173
	jmp	.label_1209
.label_1180:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1206
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_1206:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1209
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_1209
.label_1186:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_1209:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_1226
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_1226:
	test	byte ptr [rbx + 0x48], 4
	je	.label_1178
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1178:
	test	r13, r13
	jne	.label_1187
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1187
	cmp	r15d, 1
	je	.label_1190
	test	rdx, rdx
	jne	.label_1187
.label_1190:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_1194
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_1141
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_1202
.label_1194:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_1202:
	mov	rdx, r12
	test	eax, eax
	je	.label_1187
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_1207
.label_1187:
	test	rdx, rdx
	je	.label_1210
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_1212
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_1212:
	cmp	rdx, 2
	jb	.label_1221
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1221
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_1221
.label_1210:
	cmp	r15d, 3
	jne	.label_1207
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_1207
	movzx	eax, ax
	cmp	eax, 7
	je	.label_1207
	mov	word ptr [r14 + 0x70], 6
.label_1207:
	mov	rdi, rbp
	call	fts_lfree
.label_1191:
	xor	ebp, ebp
.label_1221:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1213:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_1191
.label_1184:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_1191
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d4a0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1228
	test	ah, 2
	jne	.label_1230
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1229
.label_1230:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_1228:
	xor	eax, eax
.label_1229:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d4f0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1232
	cmp	rbx, r15
	jne	.label_1231
	cmp	byte ptr [rbx + 1], 0
	je	.label_1232
.label_1231:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_1232:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d580

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_1236
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_1237
	cmp	rax, 0x52654973
	je	.label_1235
	cmp	rax, 0x5346414f
	je	.label_1234
	jmp	.label_1233
.label_1236:
	test	rax, rax
	je	.label_1234
	cmp	rax, 0x6969
	je	.label_1234
	cmp	rax, 0x9fa0
	je	.label_1234
	jmp	.label_1233
.label_1237:
	cmp	rax, 0x58465342
	je	.label_1235
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_1233
.label_1234:
	xor	ecx, ecx
.label_1235:
	mov	eax, ecx
	pop	rcx
	ret	
.label_1233:
	mov	ecx, 1
	jmp	.label_1235
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5f0

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
	je	.label_1240
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1239
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_1238
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_1239
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1241
.label_1240:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_1238
	mov	qword ptr [r14], r14
.label_1241:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_1238
.label_1239:
	xor	ebp, ebp
.label_1238:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d690

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_1243
	cmp	esi, -0x64
	jne	.label_1246
.label_1243:
	test	dl, dl
	je	.label_1242
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1244
	mov	edi, eax
	jmp	.label_1245
.label_1242:
	test	esi, esi
	js	.label_1244
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_1244
	mov	edi, esi
.label_1245:
	call	close
.label_1244:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1246:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6e0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1247
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_1247:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d710
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_1253
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_1254
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1250
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1254
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_1254
.label_1253:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1254
.label_1250:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_1257
	call	fts_lfree
.label_1257:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_1251
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_1251:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_1252
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_1252
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1252
	mov	esi, OFFSET FLAT:label_110
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1256
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_1255
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1249
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1254
.label_1252:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_1254:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1256:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_1254
.label_1255:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_1248
.label_1249:
	mov	edi, ebp
	call	close
.label_1248:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_1254
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d850

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
	#Procedure 0x40d860

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1258
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1258:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d880

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
	je	.label_1259
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_1260
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
	je	.label_1262
.label_1260:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_1264
	mov	rax, qword ptr [rax + 8]
	jmp	.label_1259
.label_1264:
	mov	r12b, 1
	mov	r14, rbp
.label_1262:
	xor	eax, eax
	test	r15d, r15d
	js	.label_1259
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1259
	test	r12b, r12b
	je	.label_1261
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1261
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_1263
	cmp	rax, rbp
	je	.label_1261
	call	abort
.label_1263:
	mov	rdi, rbp
	call	free
.label_1261:
	mov	rax, qword ptr [rsp]
.label_1259:
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
	#Procedure 0x40d980

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
	#Procedure 0x40d990

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
	#Procedure 0x40d9a0

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_1265
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_1266]]
.label_1265:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9c0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_1267
	cmp	rcx, 0x1021994
	je	.label_1267
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_1267
	mov	al, 1
.label_1267:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9f0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_1272
	nop	word ptr [rax + rax]
.label_1271:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1272:
	test	rcx, rcx
	je	.label_1268
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_1271
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1271
.label_1268:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_1269
	nop	word ptr cs:[rax + rax]
.label_1270:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_1273
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_1273:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_1274
	mov	rcx, qword ptr [rsi + 8]
.label_1274:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_1270
.label_1269:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da80

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
	#Procedure 0x40dab0
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dac0

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
	je	.label_1275
	cmp	r15, -2
	jb	.label_1275
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1275
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1275:
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
	#Procedure 0x40db20

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
	mov	edi, OFFSET FLAT:label_1282
	mov	esi, OFFSET FLAT:label_68
	call	fopen
	mov	r14, rax
	test	r14, r14
	je	.label_1292
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x48], 0
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	lea	r12, [rsp + 0x18]
	cmp	rax, -1
	je	.label_1300
	lea	rbx, [rsp + 7]
	lea	r15, [rsp + 0x2c]
	lea	r13, [rsp + 0x14]
	nop	dword ptr [rax + rax]
.label_1309:
	mov	rdi, qword ptr [rsp + 8]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_1304
	mov	eax, 0
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x38]
	push	rbx
	push	r15
	push	r13
	call	sscanf
	add	rsp, 0x20
	or	eax, 4
	cmp	eax, 7
	jne	.label_1306
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 8]
	mov	esi, OFFSET FLAT:label_1314
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1306
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_1316
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x44]
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x30]
	lea	r9, [rsp + 0x3c]
	push	rbx
	call	sscanf
	add	rsp, 0x10
	or	eax, 4
	cmp	eax, 5
	jne	.label_1306
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x2c]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x34]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13 + 0x18], rax
	or	byte ptr [r13 + 0x28], 4
	mov	edi, dword ptr [rsp + 0x44]
	mov	esi, dword ptr [rsp + 0x40]
	call	gnu_dev_makedev
	mov	qword ptr [r13 + 0x20], rax
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_1302
	mov	rdi, rbp
	call	strcmp
	mov	bl, 1
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1279
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1284
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1280
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1287
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1294
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1297
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1305
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1303
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1299
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1286
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1312
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1276
	mov	esi, OFFSET FLAT:label_1291
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	word ptr cs:[rax + rax]
.label_1276:
	movzx	ecx, byte ptr [r13 + 0x28]
	and	cl, 0xfe
	or	cl, al
	mov	byte ptr [r13 + 0x28], cl
	mov	rbp, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1288
	cmp	byte ptr [rbp], 0x2f
	jne	.label_1277
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_1277
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_1290
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1288
	mov	esi, OFFSET FLAT:label_1295
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1288
.label_1277:
	mov	rsi, qword ptr [r13]
	mov	edi, OFFSET FLAT:label_1298
	call	strcmp
	test	eax, eax
	sete	bl
.label_1288:
	movzx	eax, byte ptr [r13 + 0x28]
	add	bl, bl
	and	al, 0xfd
	or	al, bl
	mov	byte ptr [r13 + 0x28], al
	mov	qword ptr [r12], r13
	add	r13, 0x30
	mov	r12, r13
	lea	rbx, [rsp + 7]
	lea	r13, [rsp + 0x14]
.label_1306:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	cmp	rax, -1
	jne	.label_1309
.label_1300:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_1313
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, r14
	call	rpl_fclose
	mov	dword ptr [rbp], r15d
.label_1311:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	qword ptr [r12], 0
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_1315
	nop	dword ptr [rax]
.label_1281:
	mov	rbx, qword ptr [rdi + 0x30]
	call	free_mount_entry
	mov	qword ptr [rsp + 0x18], rbx
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1281
.label_1315:
	mov	dword ptr [rbp], r14d
	xor	eax, eax
	jmp	.label_1293
.label_1292:
	mov	edi, OFFSET FLAT:label_1289
	mov	esi, OFFSET FLAT:label_68
	call	setmntent
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1293
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1296
	lea	r15, [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1307:
	mov	esi, OFFSET FLAT:label_1301
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
	or	byte ptr [r12 + 0x28], 4
	mov	esi, OFFSET FLAT:label_1302
	mov	rdi, rbp
	call	strcmp
	mov	r13b, 1
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1279
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1284
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1280
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1287
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1294
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1297
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1305
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1303
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1299
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1286
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	mov	esi, OFFSET FLAT:label_1312
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1278
	cmp	qword ptr [rsp + 0x50], 0
	sete	r14b
	mov	esi, OFFSET FLAT:label_1291
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1278
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1278:
	movzx	eax, byte ptr [r12 + 0x28]
	and	al, 0xfe
	or	al, r14b
	mov	byte ptr [r12 + 0x28], al
	mov	rbp, qword ptr [r12]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1283
	cmp	byte ptr [rbp], 0x2f
	jne	.label_1285
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_1285
	mov	rbp, qword ptr [r12 + 0x18]
	mov	esi, OFFSET FLAT:label_1290
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1283
	mov	esi, OFFSET FLAT:label_1295
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1283
	nop	dword ptr [rax]
.label_1285:
	mov	rsi, qword ptr [r12]
	mov	edi, OFFSET FLAT:label_1298
	call	strcmp
	test	eax, eax
	sete	r13b
.label_1283:
	movzx	eax, byte ptr [r12 + 0x28]
	add	r13b, r13b
	and	al, 0xfd
	or	al, r13b
	mov	byte ptr [r12 + 0x28], al
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r15], r12
	add	r12, 0x30
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r15, r12
	jne	.label_1307
	jmp	.label_1308
.label_1313:
	mov	rdi, r14
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1310
	jmp	.label_1311
.label_1296:
	lea	r12, [rsp + 0x18]
.label_1308:
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	je	.label_1311
.label_1310:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x18]
.label_1293:
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
	#Procedure 0x40e200

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	inc	rax
	je	.label_1319
	xor	ecx, ecx
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_1318:
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_1317
	cmp	byte ptr [r14 + rcx], 0x5c
	jne	.label_1317
	movzx	esi, byte ptr [r14 + rcx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_1317
	movzx	edi, byte ptr [r14 + rcx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1317
	movzx	r8d, byte ptr [r14 + rcx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1317
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_1320
	nop	dword ptr [rax]
.label_1317:
	movzx	ebx, byte ptr [r14 + rcx]
	mov	byte ptr [rdx], bl
.label_1320:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_1318
.label_1319:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2a0

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
	je	.label_1321
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1321:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2e0
	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:

	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_1322
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_1322:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e340

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	dword ptr [rsp + 0xc], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_1323
.label_1329:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1326
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1324
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 0x10]
	lea	rcx, [rsp + 0xc]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_1324
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1324
	test	rbp, rbp
	jne	.label_1327
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_1327
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_1327
	mov	rdi, r14
	call	optimize_utf8
.label_1327:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1326
.label_1325:
	mov	eax, dword ptr [rsp + 0xc]
.label_1328:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1324:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
.label_1326:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_1325
.label_1323:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_1328
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_1329
	.section	.text
	.align	32
	#Procedure 0x40e4c0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e4d0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
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
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1330
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1330:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1331
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1331:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1332
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1332:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e5a0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rsp], rdx
	mov	r15, qword ptr [rdi]
	cmp	dword ptr [r15 + 0xb4], 1
	mov	qword ptr [rsp + 0x10], rdi
	jne	.label_1344
	mov	r14b, byte ptr [rdi + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1352
.label_1344:
	xor	r14d, r14d
.label_1352:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1348
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], r15
	nop	
.label_1333:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [r15]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	add	rcx, rbp
	cmp	al, 1
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_1355
	cmp	al, 6
	je	.label_1341
	cmp	al, 3
	jne	.label_1343
	xor	r13d, r13d
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rbp
	nop	word ptr cs:[rax + rax]
.label_1338:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + rbp]
	mov	rbp, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp]
	lea	r12, [rax + rbx]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1334:
	bt	rbp, r15
	jae	.label_1353
	mov	byte ptr [r12 + r15], 1
	test	r14b, r14b
	je	.label_1353
	lea	edi, [rbx + r15]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1353:
	inc	r15
	cmp	r15, 0x40
	jne	.label_1334
	inc	r13
	add	rbx, 0x40
	cmp	r13, 4
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x38]
	jne	.label_1338
	jmp	.label_1336
	nop	dword ptr [rax + rax]
.label_1355:
	movzx	edi, byte ptr [rcx]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1349
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1349:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_1336
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1336
	mov	rax, qword ptr [r15]
	mov	al, byte ptr [rax + rbp]
	mov	byte ptr [rsp + 0x40], al
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x10]
	lea	r13, [rsp + 0x41]
	jae	.label_1339
	add	rbp, 0x18
	lea	r13, [rsp + 0x41]
	nop	dword ptr [rax]
.label_1345:
	mov	rax, qword ptr [r15]
	mov	ecx, dword ptr [rax + rbp]
	mov	edx, 0x2000ff
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_1339
	movzx	eax, byte ptr [rax + rbp - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbx
	add	rbp, 0x10
	cmp	rbx, qword ptr [r15 + 0x10]
	jb	.label_1345
.label_1339:
	mov	qword ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	sub	r13, rbx
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbx
	mov	rdx, r13
	lea	rbp, [rsp + 8]
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1336
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbx
	mov	esi, eax
	mov	rdx, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_1336
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_1336
	nop	word ptr cs:[rax + rax]
.label_1341:
	mov	r12, qword ptr [rcx]
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_1340
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1351
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1351
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1340
.label_1351:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1342:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_1337
	movzx	eax, byte ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1337:
	inc	byte ptr [rsp + 8]
	jne	.label_1342
	jmp	.label_1336
	nop	dword ptr [rax]
.label_1343:
	cmp	al, 7
	ja	.label_1336
	movzx	ecx, al
	mov	edx, 0xa4
	bt	edx, ecx
	jae	.label_1336
	jmp	.label_1350
.label_1340:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1336
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1354:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1335
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1335
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1335:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_1346
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1346
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x40]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1346
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	nop	dword ptr [rax + rax]
.label_1346:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1354
	nop	
.label_1336:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_1333
.label_1348:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1350:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1347]]
	mov	rcx, qword ptr [rsp]
	movups	xmmword ptr [rcx + 0xf0], xmm0
	movups	xmmword ptr [rcx + 0xe0], xmm0
	movups	xmmword ptr [rcx + 0xd0], xmm0
	movups	xmmword ptr [rcx + 0xc0], xmm0
	movups	xmmword ptr [rcx + 0xb0], xmm0
	movups	xmmword ptr [rcx + 0xa0], xmm0
	movups	xmmword ptr [rcx + 0x90], xmm0
	movups	xmmword ptr [rcx + 0x80], xmm0
	movups	xmmword ptr [rcx + 0x70], xmm0
	movups	xmmword ptr [rcx + 0x60], xmm0
	movups	xmmword ptr [rcx + 0x50], xmm0
	movups	xmmword ptr [rcx + 0x40], xmm0
	movups	xmmword ptr [rcx + 0x30], xmm0
	movups	xmmword ptr [rcx + 0x20], xmm0
	movups	xmmword ptr [rcx + 0x10], xmm0
	movups	xmmword ptr [rcx], xmm0
	cmp	eax, 2
	jne	.label_1348
	mov	rax, qword ptr [rsp + 0x10]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_1348
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e9a0

	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
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
	je	.label_1356
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1358
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_1359
.label_1358:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_1359:
	mov	al, byte ptr [r15 + 0x38]
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
	jne	.label_1357
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1356:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1357:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1356
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea90
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
	jae	.label_1360
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1363
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1361
.label_1362:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1363:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1361:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1362
.label_1360:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb10

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1364
	call	free_dfa_content
.label_1364:
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
	.section	.text
	.align	32
	#Procedure 0x40eb50

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	je	.label_1368
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1368
	xor	r15d, r15d
	xor	ebx, ebx
	nop	
.label_1367:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1367
.label_1368:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1369
	xor	r15d, r15d
	mov	ebx, 0x10
.label_1370:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_1371
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1371:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_1375
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1375:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_1365
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1365:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_1370
.label_1369:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_1366
	xor	r15d, r15d
.label_1374:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1372
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1376:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_1376
.label_1372:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1374
.label_1366:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1373
	call	free
.label_1373:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eca0

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
	ja	.label_1377
	test	bl, 4
	jne	.label_1378
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1379
.label_1378:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1379:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1381
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
	jmp	.label_1380
.label_1381:
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
.label_1380:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1377:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed40

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x188
	mov	r12, rdi
	mov	rdi, qword ptr [rsp + 0x1c0]
	mov	r10, qword ptr [r12]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
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
	mov	qword ptr [rsp + 0x118], r10
	mov	rax, qword ptr [r12 + 0x20]
	xor	r14d, r14d
	test	rax, rax
	je	.label_1399
	mov	bl, byte ptr [r12 + 0x38]
	and	bl, 9
	xor	ebp, ebp
	cmp	bl, 8
	cmovne	rax, rbp
	cmp	rcx, r8
	cmove	rax, rbp
	mov	r14, rax
.label_1399:
	mov	rax, qword ptr [r12 + 0x30]
	lea	r15, [rdi - 1]
	mov	rbp, r15
	sub	rbp, rax
	xor	ebx, ebx
	cmp	rax, rdi
	cmovb	rbx, rbp
	mov	r13d, 1
	cmp	qword ptr [r12 + 0x10], 0
	je	.label_1385
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_1385
	mov	r11, qword ptr [r10 + 0x50]
	test	r11, r11
	je	.label_1385
	mov	qword ptr [rsp + 0x38], r9
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_1385
	mov	qword ptr [rsp + 0x30], rcx
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_1385
	mov	rcx, qword ptr [r12 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1410
	cmp	qword ptr [r11 + 0x10], 0
	jne	.label_1410
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1415
	cmp	byte ptr [r12 + 0x38], 0
	js	.label_1410
.label_1415:
	xor	ebp, ebp
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1417
	test	r8, r8
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	jne	.label_1385
	jmp	.label_1383
.label_1410:
	mov	rbp, r8
.label_1383:
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x68], rbx
	sub	rdi, rbx
	mov	qword ptr [rsp + 0x28], rdi
	mov	byte ptr [rsp + 0x17], 1
	jne	.label_1423
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 0x17]
.label_1423:
	mov	rcx, qword ptr [r10 + 0x10]
	inc	rcx
	mov	r8, qword ptr [r12 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r12 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp], r10
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x60], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1392
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r12 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1392
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1412
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1412
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1418
.label_1412:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_1392
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_1392
.label_1418:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rdi
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, rbp
	cmp	rax, rdi
	mov	r9d, 0xffffffff
	mov	ecx, 1
	cmovge	r9d, ecx
	mov	r13, rdi
	cmovle	r13, rax
	mov	r15, rax
	cmovl	r15, rdi
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rcx + 0xb4]
	mov	dword ptr [rsp + 0x38], ecx
	mov	edx, 8
	test	r14, r14
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1435
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_1402
	mov	edx, 0x400000
	xor	ecx, ecx
	test	rbx, rbx
	jne	.label_1405
	and	rdx, qword ptr [r12 + 0x18]
	jne	.label_1405
.label_1402:
	mov	ecx, 4
.label_1405:
	xor	edx, edx
	cmp	rdi, rax
	setle	dl
	xor	esi, esi
	test	rbx, rbx
	setne	sil
	lea	edx, [rsi + rdx*2]
	or	edx, ecx
.label_1435:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_1413
	cmp	r15, rcx
	jl	.label_1413
	xor	ecx, ecx
	cmp	rdi, rax
	lea	rsi, [rsp + 0x18]
	cmovg	rsi, rcx
	mov	qword ptr [rsp + 0x30], rsi
	movsxd	rdi, r9d
	add	edx, -4
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x78], rdx
	mov	qword ptr [rsp + 0x70], rdi
.label_1431:
	cmp	edx, 4
	ja	.label_1400
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1430]]
.label_2772:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_1382
	nop	word ptr cs:[rax + rax]
.label_1401:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_1437
	movzx	eax, byte ptr [rbp + rcx]
.label_1437:
	test	rbx, rbx
	je	.label_1439
	movzx	eax, byte ptr [rbx + rax]
.label_1439:
	cmp	byte ptr [r14 + rax], 0
	jne	.label_1382
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x18], rcx
	cmp	rax, r13
	jg	.label_1401
.label_1382:
	cmp	qword ptr [rsp + 0x18], r13
	jge	.label_1391
	jmp	.label_1393
	nop	
.label_1424:
	mov	rax, qword ptr [rsp + 0x18]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_1396
	cmp	rax, r15
	jle	.label_1400
	jmp	.label_1396
.label_1416:
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1392
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x70]
	jmp	.label_1408
	nop	
.label_1400:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_1416
.label_1408:
	cmp	qword ptr [rsp + 0x18], r8
	mov	ecx, 0
	jge	.label_1440
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_1440:
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1424
	jmp	.label_1391
.label_2773:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1428
	nop	word ptr cs:[rax + rax]
.label_1436:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_1428:
	cmp	rax, r15
	jge	.label_1386
	movzx	ecx, byte ptr [rbp + rax]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1436
	jmp	.label_1386
.label_2774:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1438
	nop	word ptr cs:[rax + rax]
.label_1389:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_1438:
	cmp	rax, r15
	jge	.label_1386
	movzx	ecx, byte ptr [rbp + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1389
.label_1386:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r15
	je	.label_1395
.label_1391:
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1390
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_1406
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_1406
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_1409
.label_1406:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x17]
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	check_matching
	cmp	rax, -1
	je	.label_1419
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_1392
	mov	qword ptr [rsp + 0x128], rax
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	rdx, 2
	jb	.label_1425
	mov	cl, byte ptr [r12 + 0x38]
	and	cl, 0x10
	je	.label_1433
.label_1425:
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_1398
.label_1433:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdi, rbx
	mov	rdx, rax
	call	check_halt_state_context
	mov	rdx, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x130], rax
.label_1398:
	cmp	rdx, 2
	jb	.label_1388
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_1388
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1414
.label_1388:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1397
.label_1414:
	mov	rdi, rbx
	call	prune_impossible_nodes
	mov	r13d, eax
	xor	ebp, ebp
	test	r13d, r13d
	je	.label_1397
	cmp	r13d, 1
	jne	.label_1392
.label_1419:
	mov	rdi, rbx
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x48]
.label_1409:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x70]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_1393
	cmp	r15, rax
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x78]
	jge	.label_1431
	jmp	.label_1393
.label_1395:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_1422
	mov	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rax + rcx]
.label_1422:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_1426
	mov	rcx, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rcx + rax]
.label_1426:
	cmp	byte ptr [r14 + rax], 0
	mov	r13, qword ptr [rsp + 0x48]
	jne	.label_1391
	mov	r13d, 1
	jmp	.label_1392
.label_1413:
	mov	r13d, 1
	jmp	.label_1392
.label_1397:
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	je	.label_1390
	cmp	rcx, 1
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_1384
	lea	rdi, [r14 + 0x10]
	cmp	rcx, 2
	mov	edx, 2
	cmova	rdx, rcx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
	mov	rcx, qword ptr [rsp + 0x28]
.label_1384:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [r14 + 8], rax
	cmp	rcx, 2
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	jb	.label_1407
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_1407
	test	byte ptr [r8 + 0xb0], 1
	jne	.label_1394
	xor	eax, eax
	jmp	.label_1432
.label_1396:
	mov	r13d, 1
	jmp	.label_1392
.label_1393:
	mov	r13d, 1
	jmp	.label_1392
.label_1394:
	cmp	qword ptr [r8 + 0x98], 0
	setg	al
.label_1432:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r12
	mov	rdx, rcx
	mov	rcx, r14
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1392
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_1421
.label_1407:
	mov	al, byte ptr [rsp + 0x10c]
	lea	r9, [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [r14 + 8]
	mov	rdi, rcx
	jmp	.label_1411
.label_1417:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1383
.label_1403:
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi - 8], rbx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi], rbx
	jmp	.label_1427
	nop	word ptr cs:[rax + rax]
.label_1411:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_1434
	test	al, al
	jne	.label_1403
.label_1427:
	mov	rbx, qword ptr [rsp + 0x18]
	add	qword ptr [rsi - 8], rbx
	add	qword ptr [rsi], rbx
.label_1434:
	add	rsi, 0x10
	dec	rdi
	jne	.label_1411
.label_1421:
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	jle	.label_1420
	mov	rdi, rcx
	shl	rdi, 4
	add	rdi, r14
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
.label_1420:
	cmp	qword ptr [r8 + 0xe0], 0
	je	.label_1390
	cmp	rcx, 2
	jb	.label_1390
	mov	rax, qword ptr [r8 + 0xe0]
	sub	r10, rdx
	lea	rcx, [r14 + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1404:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1429
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [r8 + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1429:
	inc	rdx
	add	rcx, 0x10
	cmp	r10, rdx
	jne	.label_1404
.label_1390:
	mov	r13d, ebp
.label_1392:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1387
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_1387:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_1385:
	mov	eax, r13d
	add	rsp, 0x188
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
	#Procedure 0x40f660
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

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
	#Procedure 0x40f680

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
	mov	rbx, rdx
	test	rcx, rcx
	mov	r14, -1
	js	.label_1441
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], r9
	cmp	rcx, rbx
	jg	.label_1441
	xor	ebp, ebp
	add	r8, rcx
	js	.label_1453
	mov	rbp, r8
.label_1453:
	mov	r14, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	rbp, rbx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdi
	jle	.label_1449
	test	r12b, 8
	jne	.label_1449
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_1449
	mov	rdi, qword ptr [rsp]
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp]
.label_1449:
	xor	edx, edx
	test	r14, r14
	mov	r13d, 1
	je	.label_1443
	mov	al, byte ptr [rdi + 0x38]
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1443
	and	al, 6
	cmp	al, 4
	jne	.label_1446
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_1442
.label_1446:
	mov	r13, qword ptr [rdi + 0x30]
	inc	r13
	mov	rdx, r14
.label_1443:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, r13
	shl	rdi, 4
	call	malloc
	mov	rdx, qword ptr [rsp]
	mov	r15, rax
	mov	r14, -2
	test	r15, r15
	mov	rcx, qword ptr [rsp + 8]
	je	.label_1441
	mov	eax, r12d
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	sub	rsp, 8
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x28]
	push	r12
	push	r15
	push	r13
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1445
	xor	r14d, r14d
	cmp	eax, 1
	sete	r14b
	or	r14, 0xfffffffffffffffe
.label_1447:
	mov	rdi, r15
	call	free
.label_1441:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1445:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1444
	mov	rbx, qword ptr [rsp]
	mov	al, byte ptr [rbx + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r15
	mov	rdx, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbx + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	edx, eax
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbx + 0x38], dl
	mov	r14, -2
	je	.label_1447
.label_1444:
	mov	al, byte ptr [rsp + 0x68]
	mov	r14, qword ptr [r15]
	test	al, al
	je	.label_1447
	mov	rax, qword ptr [rsp + 8]
	cmp	r14, rax
	jne	.label_1454
	mov	r14, qword ptr [r15 + 8]
	sub	r14, rax
	jmp	.label_1447
.label_1442:
	xor	edx, edx
	test	rax, rax
	jle	.label_1448
	mov	rdx, r14
.label_1448:
	mov	r13d, 1
	test	rax, rax
	jle	.label_1443
	mov	r13, rax
	jmp	.label_1443
.label_1454:
	mov	edi, OFFSET FLAT:label_1450
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1452
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f860
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
	#Procedure 0x40f880
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rax
	push	1
	push	qword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x20]
	push	0
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f8a0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1455
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1458
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1455
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1456
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1459
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x20], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1455
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1456
.label_1458:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1457
.label_1455:
	mov	rax, -2
	jmp	.label_1460
.label_1457:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1456
.label_1459:
	mov	r13, r15
.label_1456:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1460:
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
	#Procedure 0x40f9b0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rax
	push	0
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f9d0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_1461
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_1461:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fa00

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_1462
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_1462:
	cmp	eax, 3
	jne	.label_1463
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_1463:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa20

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
	je	.label_1464
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1464:
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
	#Procedure 0x40fa80

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40fab0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
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
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	movabs	rax, 0x555555555555554
	cmp	rbp, rax
	ja	.label_1469
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_1471:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_1471
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	dec	rbx
	mov	qword ptr [r15 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r15 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_1466
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1466
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1466
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1466
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1466
	or	byte ptr [r15 + 0xb0], 4
.label_1466:
	mov	al, byte ptr [r15 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1465
	test	al, 4
	jne	.label_1474
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	test	rax, rax
	je	.label_1469
	xor	r14d, r14d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1472:
	xor	ebp, ebp
	mov	ebx, r12d
	nop	word ptr cs:[rax + rax]
.label_1470:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1473
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r14*8], rdx
.label_1473:
	cmp	ebx, 0x7f
	ja	.label_1468
	cmp	ebx, eax
	je	.label_1468
	or	byte ptr [r15 + 0xb0], 8
.label_1468:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_1470
	add	r12d, 0x40
	inc	r14
	cmp	r14, 4
	jne	.label_1472
	jmp	.label_1465
.label_1474:
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_1465:
	cmp	qword ptr [r15], 0
	je	.label_1467
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1469
.label_1467:
	mov	r14d, 0xc
.label_1469:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fcc0

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r13d, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
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
	mov	qword ptr [rbx + 0x90], 0
	movzx	r8d, r13b
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_string_construct_common
	test	r15, r15
	jle	.label_1480
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1476
.label_1480:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1483
	mov	rbp, qword ptr [rbx + 8]
.label_1483:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_1475
	cmp	eax, 2
	jl	.label_1479
	nop	
.label_1477:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1476
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_1476
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_1476
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_1477
	jmp	.label_1476
.label_1475:
	cmp	eax, 2
	jl	.label_1478
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1481
.label_1479:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1481
.label_1478:
	test	r12, r12
	je	.label_1482
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1481
.label_1482:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_1481:
	xor	eax, eax
.label_1476:
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
	#Procedure 0x40fde0

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_1484
.label_1485:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1485
.label_1484:
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	mov	qword ptr [r14 + 0x68], 0
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	qword ptr [r14 + 0x20], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe40

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1486
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_1486:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe70

	.globl parse
	.type parse, @function
parse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	xor	r8d, r8d
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	mov	rcx, rbx
	mov	r9, r14
	call	parse_reg_exp
	mov	r13, rax
	test	r13, r13
	jne	.label_1489
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_1490
.label_1489:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	rbx, rax
	test	r13, r13
	je	.label_1491
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	create_tree
	mov	r12, rax
	jmp	.label_1487
.label_1491:
	mov	r12, rbx
.label_1487:
	test	rbx, rbx
	je	.label_1488
	test	r12, r12
	je	.label_1488
.label_1490:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1488:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_1490
	.section	.text
	.align	32
	#Procedure 0x40ff30

	.globl analyze
	.type analyze, @function
analyze:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
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
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_1492
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_1492
	test	rcx, rcx
	je	.label_1492
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_1492
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_1497
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1495
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1496:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_1496
.label_1495:
	mov	rdi, qword ptr [rbx + 0x68]
.label_2904:
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1493
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_1498:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_1493
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_1498
.label_1493:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_1497
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_1497:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_1492
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_1492
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_1492
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_1492
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_1494
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1494
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_1499
.label_1494:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1492
.label_1499:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_1492
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_1492:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410110

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1534
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_1554:
	mov	rsi, rax
	shl	rsi, 4
	mov	cl, byte ptr [r11 + rsi + 8]
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0xb
	ja	.label_1539
	lea	rdx, [r11 + rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1540]]
.label_3031:
	cmp	byte ptr [rdx], 0
	mov	cl, 1
	js	.label_1565
	mov	ecx, r10d
.label_1565:
	mov	r10b, cl
	jmp	.label_1536
.label_3032:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	ecx, 2
.label_1547:
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_1545
	inc	rcx
	cmp	rcx, 3
	jle	.label_1547
	jmp	.label_1536
.label_3033:
	mov	r9b, 1
	jmp	.label_1536
.label_3034:
	mov	ecx, dword ptr [rdx]
	lea	edx, [rcx - 0x10]
	cmp	edx, 0x30
	ja	.label_1550
	bt	r8, rdx
	jb	.label_1536
.label_1550:
	cmp	ecx, 0x80
	jne	.label_1545
	nop	word ptr [rax + rax]
.label_1536:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_1554
	jmp	.label_1555
.label_1534:
	xor	r10d, r10d
	xor	r9d, r9d
.label_1555:
	mov	r8d, r9d
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1557
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1557
	xor	eax, eax
	mov	ecx, 8
	nop	word ptr cs:[rax + rax]
.label_1509:
	mov	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + rcx]
	cmp	dl, 1
	jne	.label_1561
	cmp	byte ptr [rsi + rcx - 8], 0
	js	.label_1564
.label_1561:
	mov	rdx, qword ptr [rdi]
	mov	esi, dword ptr [rdx + rcx]
	cmp	sil, 5
	jne	.label_1500
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [rdx + rcx], esi
	jmp	.label_1500
.label_1564:
	and	edx, 0xffdfffff
	mov	dword ptr [rsi + rcx], edx
	nop	word ptr cs:[rax + rax]
.label_1500:
	inc	rax
	add	rcx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_1509
.label_1557:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_1545:
	ret	
.label_1539:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x410270

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp + 8]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1571
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_1567
	cmp	qword ptr [rsp + 0x10], 0
	jle	.label_1567
	xor	r13d, r13d
	lea	r14, [rsp + 8]
	nop	word ptr [rax + rax]
.label_1574:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	rdx, r8
	shl	rdx, 4
	movzx	r9d, byte ptr [rax + rdx + 8]
	cmp	r9d, 4
	jne	.label_1566
	cmp	qword ptr [rsp + 0x10], 0
	mov	esi, 0
	jle	.label_1570
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rdx, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1568:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	cmp	byte ptr [rdi + rbx + 8], 9
	jne	.label_1575
	mov	rbx, qword ptr [rdi + rbx]
	cmp	rbx, qword ptr [rdx]
	je	.label_1570
.label_1575:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1568
.label_1570:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 0x10]
	je	.label_1566
	test	al, al
	jne	.label_1566
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1566
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_1571
	nop	word ptr cs:[rax + rax]
.label_1566:
	inc	r13
	cmp	r13, qword ptr [rsp + 0x10]
	jl	.label_1574
.label_1567:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_1569
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1572
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_1573
.label_1572:
	lea	rbx, [rsp + 4]
	lea	r14, [rsp + 8]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_1569
	test	rax, rax
	je	.label_1569
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_1569
.label_1573:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	xor	eax, eax
.label_1571:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1569:
	mov	eax, dword ptr [rsp + 4]
	jmp	.label_1571
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410480

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	byte ptr [rdx + 0x88], r8b
	test	rcx, rcx
	setne	al
	or	al, r8b
	mov	byte ptr [rdx + 0x8b], al
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rdx + 0x89], al
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	and	al, 1
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4104f0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1577
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1576
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1576
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1577
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1576
	mov	qword ptr [rbx + 0x18], rax
.label_1577:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1578
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1576
	mov	qword ptr [rbx + 8], rax
.label_1578:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1576:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410580

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
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x30]
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [rbx + 0x8a], 0
	jne	.label_1603
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1603
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1611
.label_1603:
	mov	rdi, qword ptr [rbx + 0x38]
	jmp	.label_1601
.label_1611:
	cmp	r13, r15
	jle	.label_1607
	lea	r14, [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], r13
	jmp	.label_1592
.label_1608:
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_1618
	cmp	r12, -2
	jne	.label_1600
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1600
.label_1618:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r12, -1
	jne	.label_1586
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
	jmp	.label_1586
	nop	
.label_1592:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_1588
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1588
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1586:
	mov	rax, r15
	jmp	.label_1581
	nop	
.label_1588:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	lea	rdi, [rsp + 0xc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	r12, rax
	lea	rax, [r12 - 1]
	cmp	rax, -4
	ja	.label_1608
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0xc]
	lea	rbp, [rsp + 0x30]
	jne	.label_1613
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	jmp	.label_1617
	nop	word ptr cs:[rax + rax]
.label_1613:
	mov	rdi, rbp
	mov	esi, r13d
	lea	rdx, [rsp + 0x18]
	call	wcrtomb
	cmp	r12, rax
	jne	.label_1579
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1617:
	mov	rdx, r12
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r12 + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_1581
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [r12*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_1581:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1592
	jmp	.label_1595
.label_1579:
	mov	rdi, r15
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1596
.label_1600:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
.label_1607:
	mov	rax, r15
.label_1595:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1599
.label_1601:
	cmp	r15, r13
	jge	.label_1602
.label_1596:
	mov	rdx, r13
	sub	rdx, r15
	lea	r12, [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [rbx + 0x78], 0
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], rdi
	jne	.label_1604
	mov	rbp, qword ptr [rbx]
	add	rbp, qword ptr [rbx + 0x28]
	add	rbp, rdi
.label_1582:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rcx, r12
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r13, [r14 - 1]
	cmp	r13, -4
	ja	.label_1614
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	cmp	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0x24], eax
	je	.label_1619
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x18]
	mov	esi, eax
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1624
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1580
.label_1604:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [rbx + 0x90], 0
	jle	.label_1582
	xor	eax, eax
.label_1587:
	cmp	rax, rdx
	jge	.label_1582
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, rdi
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rsp + rax + 0x30], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1587
	jmp	.label_1582
.label_1614:
	mov	rsi, r12
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1597
	cmp	r14, -2
	jne	.label_1598
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1598
.label_1597:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rsp + 0x28]
	add	rax, rdi
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1591
.label_1609:
	movzx	eax, al
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	jne	.label_1606
.label_1593:
	inc	rdi
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1612
	mov	r12, r15
	jmp	.label_1601
.label_1624:
	cmp	rcx, -1
	je	.label_1619
	mov	rsi, r12
	lea	r12, [rcx + r15]
	mov	rdi, qword ptr [rbx + 0x40]
	cmp	r12, rdi
	jbe	.label_1621
.label_1598:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	rdi, qword ptr [rsp + 0x28]
.label_1602:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], rdi
.label_1599:
	xor	eax, eax
.label_1616:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1619:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1580:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_1589
.label_1585:
	add	rdi, r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	lea	r12, [r14 + r15]
	inc	r15
	cmp	r15, r12
	jge	.label_1590
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rdi
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rdi, rbp
	mov	r15, r12
	jmp	.label_1601
.label_1590:
	mov	r12, r15
	jmp	.label_1601
.label_1589:
	lea	rax, [r15*8]
	add	rax, qword ptr [rbx + 0x18]
	mov	rcx, rdi
	mov	rdx, r14
.label_1605:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_1605
	jmp	.label_1585
.label_1621:
	mov	qword ptr [rsp + 0x10], rax
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_1610
	shl	rdi, 3
	mov	rbp, rcx
	call	malloc
	mov	rcx, rbp
	mov	qword ptr [rbx + 0x18], rax
	test	rax, rax
	je	.label_1615
.label_1610:
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1583
	mov	rdx, rcx
	test	r15, r15
	je	.label_1620
	mov	rax, qword ptr [rbx + 0x18]
	xor	ecx, ecx
.label_1623:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r15, rcx
	jne	.label_1623
.label_1620:
	mov	byte ptr [rbx + 0x8c], 1
	mov	rcx, rdx
.label_1583:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	mov	rbp, rcx
	call	memcpy
	mov	rsi, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + r15*8], rdi
	cmp	rsi, 2
	jb	.label_1584
	lea	rax, [r15*4]
	add	rax, qword ptr [rbx + 0x10]
	shl	r15, 3
	add	r15, qword ptr [rbx + 0x18]
	mov	ecx, 1
.label_1594:
	cmp	rcx, r14
	mov	rdx, r13
	cmovb	rdx, rcx
	add	rdx, rdi
	mov	qword ptr [r15 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rsi, rcx
	jne	.label_1594
.label_1584:
	mov	rbp, qword ptr [rsp + 0x10]
	add	qword ptr [rbx + 0x58], rbp
	cmp	qword ptr [rbx + 0x60], rdi
	jle	.label_1622
	add	qword ptr [rbx + 0x68], rbp
.label_1622:
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	add	rdi, r14
	mov	r15, r12
	jmp	.label_1601
.label_1615:
	mov	eax, 0xc
	jmp	.label_1616
.label_1591:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1609
.label_1606:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + r15*8], rdi
	jmp	.label_1593
.label_1612:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	r12, r15
	jmp	.label_1601
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410ae0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_1625
	jmp	.label_1626
.label_1628:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1627
	nop	dword ptr [rax + rax]
.label_1625:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1628
.label_1627:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_1625
	mov	rbx, r15
.label_1626:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410b50

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
	jle	.label_1629
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1638
	nop	dword ptr [rax + rax]
.label_1631:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [r13 + 0x78]
	test	rcx, rcx
	jne	.label_1634
.label_1633:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1636:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1640
	mov	rcx, qword ptr [r13 + 0x10]
	lea	rdi, [rcx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1640:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1638
	jmp	.label_1639
.label_1637:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1630
	xor	eax, eax
.label_1635:
	cmp	rax, rdx
	jge	.label_1632
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
	jl	.label_1635
	lea	rsi, [rsp + 0x10]
	jmp	.label_1630
.label_1634:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1633
.label_1632:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1630
.label_1638:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1637
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1630:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1631
	cmp	rax, -2
	jne	.label_1636
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1631
	mov	qword ptr [r14], rbp
.label_1629:
	mov	rcx, rbx
.label_1639:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410cd0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_1641
	nop	dword ptr [rax + rax]
.label_1642:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	movzx	ecx, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_1642
	mov	rax, r8
.label_1641:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410d20

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410d40

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13, rdx
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], r8
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_1650
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1644
.label_1650:
	mov	r14, qword ptr [rsp]
	or	r14, 0x800000
	nop	dword ptr [rax + rax]
.label_1648:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1643
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	edx, 0
	je	.label_1647
	cmp	qword ptr [rsp + 8], 0
	je	.label_1645
	cmp	eax, 9
	mov	edx, 0
	je	.label_1647
.label_1645:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1646
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1649
.label_1646:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [rbp + 0xa8], rax
	nop	
.label_1647:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1648
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_1644
.label_1643:
	mov	r14, rbx
.label_1644:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1649:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1644
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_1644
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410e90

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410eb0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r12, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1685
	mov	qword ptr [rsp], rdx
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
	mov	byte ptr [r12], bl
	mov	eax, dword ptr [r12 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r12 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1698
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_1698
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4], -1
	je	.label_1653
.label_1698:
	cmp	bl, 0x5c
	jne	.label_1655
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1658
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r15d, eax
	mov	byte ptr [r12], r15b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r12 + 8]
	or	ebx, 1
	mov	dword ptr [r12 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1663
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r12 + 8]
	jmp	.label_1675
.label_1685:
	mov	byte ptr [r12 + 8], 2
	xor	r14d, r14d
.label_1501:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1655:
	mov	r15d, 0xffffff00
	and	r15d, dword ptr [r12 + 8]
	or	r15d, 1
	mov	dword ptr [r12 + 8], r15d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1686
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	r14d, eax
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	r15d, 0xffbfffff
	and	r15d, dword ptr [r12 + 8]
	jmp	.label_1670
.label_1658:
	mov	byte ptr [r12 + 8], 0x24
	mov	r14d, 1
	jmp	.label_1501
.label_1686:
	movzx	r14d, byte ptr [r12]
	xor	r13d, r13d
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	shr	eax, 3
	and	eax, 1
	or	eax, r13d
	shl	eax, 0x16
	and	r15d, 0xffbfff01
.label_1670:
	or	r15d, eax
	mov	dword ptr [r12 + 8], r15d
	mov	r14d, 1
	add	bl, 0xf6
	movzx	eax, bl
	cmp	al, 0x73
	ja	.label_1501
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1671]]
.label_2764:
	mov	rax, qword ptr [rsp]
	test	ah, 8
	je	.label_1501
	jmp	.label_1527
.label_1663:
	movzx	ebp, r15b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	r15b, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_1675:
	or	ebx, eax
	mov	dword ptr [r12 + 8], ebx
	movzx	eax, r15b
	mov	r14d, 2
	add	r15b, 0xd9
	movzx	ecx, r15b
	cmp	cl, 0x56
	ja	.label_1501
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1695]]
.label_2918:
	mov	rcx, qword ptr [rsp]
	test	ch, 0x40
	jne	.label_1501
	mov	byte ptr [r12 + 8], 4
	add	rax, -0x31
	mov	qword ptr [r12], rax
	jmp	.label_1501
.label_1653:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r12 + 8], eax
	mov	r14d, 1
	jmp	.label_1501
.label_2765:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_1533
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_1533
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1501
.label_1533:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x20
	jmp	.label_1501
.label_2766:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_1501
	and	r15d, 0xffffff00
	or	r15d, 8
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2767:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_1501
	and	r15d, 0xffffff00
	or	r15d, 9
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2768:
	and	r15d, 0xffffff00
	or	r15d, 0xb
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2769:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_1501
	and	r15d, 0xffffff00
	or	r15d, 0x12
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2770:
	and	r15d, 0xffffff00
	or	r15d, 5
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2771:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_1501
	and	r15d, 0xffffff00
	or	r15d, 0x13
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2759:
	and	r15d, 0xffffff00
	or	r15d, 0x14
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2760:
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_1506
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_1506
	test	ch, 8
	je	.label_1501
	mov	rcx, qword ptr [rbp + 8]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_1501
.label_1506:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x10
	jmp	.label_1501
.label_2761:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_1501
	and	r15d, 0xffffff00
	or	r15d, 0x17
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2762:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_1501
	test	ax, ax
	jns	.label_1501
.label_1527:
	and	r15d, 0xffffff00
	or	r15d, 0xa
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2763:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_1501
	and	r15d, 0xffffff00
	or	r15d, 0x18
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1501
.label_2914:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x80
	jmp	.label_1501
.label_2915:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2916:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2917:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2919:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 6
	jmp	.label_1501
.label_2920:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 9
	jmp	.label_1501
.label_2921:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2922:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x200
	jmp	.label_1501
.label_2923:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2924:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2925:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x40
	jmp	.label_1501
.label_2926:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x100
	jmp	.label_1501
.label_2927:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2928:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2929:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2930:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_1501
	test	ax, ax
	js	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
.label_2931:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_1501
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1501
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411570

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_1708
.label_1706:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rax + rcx + 1]
.label_1704:
	ret	
.label_1708:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_1705
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_1706
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_1705
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_1706
.label_1705:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_1707
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_1709
.label_1707:
	inc	rax
.label_1709:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_1704
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	jne	.label_1706
	jmp	.label_1704
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4115f0

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_1710
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_1710:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411610

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
	mov	r14, r9
	mov	r12, r8
	mov	r13, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1712
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_1712
	jmp	.label_1714
	nop	word ptr cs:[rax + rax]
.label_1717:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_1712:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1713
	test	r12, r12
	je	.label_1711
	cmp	eax, 9
	je	.label_1713
.label_1711:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_1715
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_1716
.label_1715:
	test	rbx, rbx
	je	.label_1717
	test	r15, r15
	je	.label_1717
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_1712
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	jmp	.label_1714
.label_1713:
	mov	r15, rbx
.label_1714:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1716:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1714
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_1714
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411740

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_1718
	nop	dword ptr [rax]
.label_1721:
	mov	rdi, qword ptr [rbx + 0x10]
.label_1718:
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_1718
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_1719
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_1718
	jmp	.label_1721
	nop	word ptr cs:[rax + rax]
.label_1719:
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_1720
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_1720
	mov	rdi, qword ptr [rcx + 0x10]
	cmp	rdi, rbx
	mov	rbx, rcx
	je	.label_1719
	test	rdi, rdi
	mov	rbx, rcx
	je	.label_1719
	jmp	.label_1718
.label_1720:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rax
	lea	rdi, [rsi + 0x28]
	call	free_token
	xor	eax, eax
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4117d0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r13, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	r15d, ecx
	and	r15d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	ebp, ecx
	and	ebp, 0x10
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_1722
	nop	word ptr [rax + rax]
.label_1518:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_1722:
	movzx	eax, byte ptr [r13 + 8]
	dec	al
	movzx	eax, al
	cmp	al, 0x23
	ja	.label_1512
	mov	r14, qword ptr [r12]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1693]]
.label_2945:
	test	r15, r15
	jne	.label_1513
.label_2942:
	test	rbx, rbx
	jne	.label_1513
	test	rbp, rbp
	jne	.label_1518
.label_2941:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_1510
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_1510
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_1521
.label_1513:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
	jmp	.label_1521
.label_1510:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1504
	jmp	.label_1502
.label_2946:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_1514
	mov	ecx, OFFSET FLAT:label_1515
	jmp	.label_1516
.label_2947:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_1531
	mov	ecx, OFFSET FLAT:label_34
.label_1516:
	mov	rdi, r14
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_1517
.label_2937:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1502
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_1504
	mov	r15, qword ptr [rsp + 0x10]
.label_1551:
	mov	rax, qword ptr [r15 + 0x48]
	cmp	qword ptr [r15 + 0x68], rax
	jle	.label_1504
	cmp	rax, qword ptr [r15 + 0x30]
	je	.label_1504
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1504
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	ecx, 0x10
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	rbp, rax
	test	rbx, rbx
	je	.label_1502
	test	rbp, rbp
	jne	.label_1551
	jmp	.label_1502
.label_2938:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r14 + 0xa8], rax
	je	.label_1553
	or	qword ptr [r14 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1502
	inc	qword ptr [r14 + 0x98]
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_1504
.label_2939:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1502
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_1504
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_1504
.label_2940:
	mov	r8, qword ptr [rsp + 0x20]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
	jmp	.label_1517
.label_2943:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_1519
	test	byte ptr [r14 + 0xb0], 0x10
	jne	.label_1520
	mov	rdi, r14
	call	init_word_char
.label_1520:
	mov	eax, dword ptr [r13]
.label_1519:
	cmp	eax, 0x200
	je	.label_1523
	cmp	eax, 0x100
	jne	.label_1524
.label_1523:
	cmp	dword ptr [r13], 0x100
	jne	.label_1525
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_1532
.label_2944:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
.label_1517:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1504
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_1512
.label_1504:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	r15d, ebx
	and	r15d, 0x1000000
	mov	r12d, 0x8c0800
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1544:
	movzx	eax, byte ptr [r13 + 8]
	cmp	rax, 0x17
	ja	.label_1537
	bt	r12, rax
	jae	.label_1537
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	mov	rcx, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_1508
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_1541
.label_1508:
	test	r15, r15
	mov	rbp, rax
	je	.label_1544
	movzx	ecx, byte ptr [r13 + 8]
	cmp	cl, 0x17
	je	.label_1546
	cmp	cl, 0xb
	mov	rbp, rax
	jne	.label_1544
.label_1546:
	test	rax, rax
	je	.label_1549
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_1549:
	mov	dword ptr [rbx], 0xd
.label_1521:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_1512
.label_1537:
	mov	qword ptr [rsp], rbp
.label_1512:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2948:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_1521
.label_1524:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	jmp	.label_1559
.label_1525:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_1532:
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_1502
	test	rbp, rbp
	je	.label_1502
.label_1559:
	test	rax, rax
	je	.label_1502
	mov	qword ptr [rsp], rax
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_1512
.label_1541:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbp, rbp
	je	.label_1512
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbp
	call	postorder
	jmp	.label_1512
.label_1502:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_1521
.label_1553:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_1521
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ca0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	je	.label_1723
.label_1725:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	je	.label_1726
	mov	qword ptr [r12], rax
.label_1726:
	test	r14, r14
	je	.label_1724
	mov	qword ptr [r14], rax
.label_1724:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1723:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1724
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1725
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411d60

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [r14 + 0x30]
	lea	rax, [r12 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	mov	rdi, rbx
	mov	rsi, r15
	call	fetch_token
	xor	r8d, r8d
	cmp	byte ptr [rbx + 8], 9
	je	.label_1729
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1727
	cmp	byte ptr [rbx + 8], 9
	jne	.label_1731
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1727
.label_1729:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_1728
	mov	eax, 1
	mov	ecx, r12d
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_1728:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_1730
	mov	qword ptr [rax + 0x28], r12
.label_1727:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1730:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_1727
.label_1731:
	test	r8, r8
	je	.label_1732
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_1732:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_1727
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e60

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x88], 0
	mov	qword ptr [rsp + 0x48], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_1734
	test	r14, r14
	je	.label_1734
	mov	rsi, rbp
	mov	rdi, r12
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	mov	al, byte ptr [r12 + 8]
	cmp	al, 0x19
	je	.label_1736
	cmp	al, 2
	je	.label_1738
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_1739
.label_1736:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_1733
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_1733:
	movsxd	rax, ebp
	mov	rsi, qword ptr [rsp + 0x40]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	call	peek_token_bracket
	mov	ebp, eax
	cmp	byte ptr [r12 + 8], 2
	je	.label_1738
	mov	al, 1
	mov	dword ptr [rsp + 0x24], eax
.label_1739:
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x38], r13
	mov	eax, dword ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_1735
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_1735:
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	lea	rdi, [rsp + 8]
	mov	r9d, 1
	mov	r13, qword ptr [rsp + 0x40]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1563
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	lea	rbp, [rsp + 0x48]
	jmp	.label_1548
	nop	word ptr cs:[rax + rax]
.label_1560:
	cmp	al, 2
	je	.label_1556
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1548
	jmp	.label_1563
.label_1543:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1503
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_1505
	nop	dword ptr [rax]
.label_1548:
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 8]
	cmp	eax, 2
	je	.label_1664
	cmp	eax, 4
	je	.label_1664
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x16
	je	.label_1669
	cmp	al, 2
	jne	.label_1672
	jmp	.label_1556
.label_1669:
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x98]
	cmp	cl, 0x15
	je	.label_1679
	cmp	cl, 2
	lea	rdx, [rsp + 0x78]
	je	.label_1556
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0x80], rcx
	mov	dword ptr [rsp + 0x78], 3
	mov	r9d, 1
	mov	rdi, rdx
	mov	rsi, r13
	lea	rdx, [rsp + 0x90]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1563
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	mov	edx, 0
	cmovg	rdx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0x88]
	lea	r8, [rsp + 8]
	lea	r9, [rsp + 0x78]
	call	build_range_exp
	jmp	.label_1552
.label_1679:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_1672:
	mov	eax, dword ptr [rsp + 8]
.label_1664:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_1674
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1668]]
.label_2889:
	movzx	esi, byte ptr [rsp + 0x10]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_1542
.label_2890:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 0x30], rbx
	je	.label_1543
.label_1505:
	mov	eax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rbp, [rsp + 0x48]
	jmp	.label_1542
.label_2891:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_1552
.label_2892:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_1552
.label_2893:
	mov	rdi, qword ptr [r13 + 0x78]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, rbp
	mov	r9, rbx
	call	build_charclass
.label_1552:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	test	eax, eax
	jne	.label_1558
.label_1542:
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_1560
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_1562
	mov	rdi, r15
	call	bitset_not
.label_1562:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	dword ptr [rbx + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x18]
	jl	.label_1511
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_1511:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_1507
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1507
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_1507
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1507
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1522
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_1507
	test	byte ptr [r14 + 0x20], 1
	jne	.label_1507
.label_1522:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	jmp	.label_1535
.label_1507:
	or	byte ptr [rbx + 0xb0], 2
	mov	byte ptr [rsp + 0x58], 6
	mov	qword ptr [rsp + 0x50], r14
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1526
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1529:
	cmp	qword ptr [r15 + rax*8], 0
	jne	.label_1528
	inc	rax
	cmp	rax, 3
	jle	.label_1529
	mov	rdi, r15
	call	free
	jmp	.label_1530
.label_1528:
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	test	rax, rax
	je	.label_1526
	mov	ecx, 0xa
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_1535:
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1526
.label_1530:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1556:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 7
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_1538
.label_1563:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
.label_1558:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_1538
.label_1738:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_1538
.label_1734:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1737
.label_1674:
	mov	edi, OFFSET FLAT:label_1688
	mov	esi, OFFSET FLAT:label_1661
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_1689
	call	__assert_fail
.label_1503:
	mov	r14, rbp
.label_1526:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1538:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_1737:
	xor	ebp, ebp
	jmp	.label_1530
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4123c0

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	al, byte ptr [rbx + 0xb0]
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rbx + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	r15d, 0
	jne	.label_1740
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [rbx + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [rbx + 0xc0], rax
	mov	r15d, 2
	mov	r14d, 0x80
	test	byte ptr [rbx + 0xb0], 4
	je	.label_1740
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xc8], xmm0
.label_1742:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1740:
	call	__ctype_b_loc
	lea	rdx, [r14 + r14]
	add	rdx, qword ptr [rax]
.label_1745:
	mov	rax, rdx
	xor	ecx, ecx
	nop	
.label_1743:
	lea	esi, [r14 + rcx]
	cmp	esi, 0x5f
	je	.label_1741
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_1744
.label_1741:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [rbx + r15*8 + 0xb8], rsi
.label_1744:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_1743
	inc	r15
	add	r14, 0x40
	sub	rdx, -0x80
	cmp	r15d, 4
	jne	.label_1745
	jmp	.label_1742
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412490

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13d, r8d
	mov	rbp, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1747
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_1756
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	or	al, r13b
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x18]
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1754
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1757
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1748:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1748
.label_1757:
	test	r13b, r13b
	je	.label_1752
	mov	rdi, rbx
	call	bitset_not
.label_1752:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1755
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_1755:
	mov	byte ptr [rsp + 0x10], 3
	mov	qword ptr [rsp + 8], rbx
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1751
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1753
	mov	byte ptr [rsp + 0x10], 6
	mov	qword ptr [rsp + 8], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_1751
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_1746
.label_1753:
	mov	rdi, r12
	call	free_charset
.label_1746:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1751:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_1749
.label_1747:
	mov	dword ptr [r12], 0xc
	jmp	.label_1750
.label_1756:
	mov	rdi, rbx
	call	free
.label_1749:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1750
.label_1754:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_1750:
	xor	ebp, ebp
	jmp	.label_1746
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412650

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, r8
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rdi
	mov	rcx, qword ptr [rsi + 0x48]
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 0x17
	mov	qword ptr [rsp], r9
	jne	.label_1775
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, rsi
	mov	rsi, r14
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdx, rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_1774
	cmp	byte ptr [r14 + 8], 1
	mov	rsi, qword ptr [rsp + 0x10]
	jne	.label_1767
	xor	ebx, ebx
	cmp	byte ptr [r14], 0x2c
	je	.label_1770
	jmp	.label_1767
.label_1775:
	xor	ebx, ebx
	cmp	eax, 0x12
	sete	bl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_1769:
	mov	rdi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_1763
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_1765
	test	rbx, rbx
	jg	.label_1762
.label_1766:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1764
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_1764:
	xor	ecx, ecx
	cmp	r13, -1
	sete	cl
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1759
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_1773
	inc	rbx
	nop	dword ptr [rax + rax]
.label_1776:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	create_tree
	test	r12, r12
	je	.label_1759
	test	rax, rax
	je	.label_1759
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1759
	inc	rbx
	cmp	rbx, r13
	jl	.label_1776
.label_1773:
	test	r14, r14
	je	.label_1771
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_1763
.label_1774:
	cmp	rbx, -2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1760
.label_1770:
	mov	al, byte ptr [r14 + 8]
	cmp	al, 0x18
	mov	r13, rbx
	je	.label_1778
	cmp	al, 1
	jne	.label_1760
	cmp	byte ptr [r14], 0x2c
	jne	.label_1760
	mov	rdi, rsi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r13, rax
	cmp	r13, -2
	je	.label_1760
.label_1778:
	cmp	r13, -1
	je	.label_1768
	cmp	rbx, r13
	jg	.label_1767
.label_1768:
	cmp	byte ptr [r14 + 8], 0x18
	jne	.label_1767
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_1769
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_1763
.label_1767:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_1763
.label_1771:
	mov	r14, rbp
	jmp	.label_1763
.label_1760:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_1758
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r14], xmm0
	mov	byte ptr [r14 + 8], 1
	mov	r14, r12
.label_1763:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1765:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_1763
.label_1762:
	cmp	rbx, 1
	jne	.label_1772
	mov	r14, r12
	jmp	.label_1777
.label_1772:
	mov	ebp, 1
	mov	r14, r12
.label_1761:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	create_tree
	mov	r14, rax
	test	r12, r12
	je	.label_1759
	test	r14, r14
	je	.label_1759
	inc	rbp
	cmp	rbp, rbx
	jl	.label_1761
.label_1777:
	cmp	rbx, r13
	je	.label_1763
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_1766
.label_1759:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
	jmp	.label_1763
.label_1758:
	xor	eax, eax
	cmp	byte ptr [r14 + 8], 2
	setne	al
	add	eax, 9
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_1763
	nop	
	.section	.text
	.align	32
	#Procedure 0x412960

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1785
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1787
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1787
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1781
.label_1787:
	test	dl, 1
	je	.label_1784
	cmp	al, 0x5c
	jne	.label_1784
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1784
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1781
.label_1785:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1784:
	cmp	al, 0x5c
	jg	.label_1789
	cmp	al, 0x2d
	je	.label_1779
	cmp	al, 0x5b
	jne	.label_1781
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1783
	mov	rsi, qword ptr [rsi + 8]
	mov	cl, byte ptr [rsi + rcx]
	mov	byte ptr [rdi], cl
	cmp	cl, 0x3d
	je	.label_1780
	cmp	cl, 0x3a
	je	.label_1786
	cmp	cl, 0x2e
	jne	.label_1782
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1789:
	cmp	al, 0x5d
	je	.label_1788
	cmp	al, 0x5e
	jne	.label_1781
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1781:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1779:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1788:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1783:
	mov	byte ptr [rdi], 0
.label_1782:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], al
	mov	eax, 1
	ret	
.label_1780:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1786:
	test	dl, 4
	je	.label_1782
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	32
	#Procedure 0x412a50

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	ecx, esi
	shl	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412a80

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0xc], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r13, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	jl	.label_1791
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
.label_1667:
	xor	eax, eax
.label_1676:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1791:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	mov	al, byte ptr [r14 + 8]
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_1659
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1790]]
.label_2837:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_2836:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_1659
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 0x20], 0x15
	jne	.label_1676
.label_1659:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
	jmp	.label_1667
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412b60

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	je	.label_1796
	cmp	ecx, 4
	je	.label_1796
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_1796
	cmp	edx, 4
	je	.label_1796
	cmp	ecx, 3
	jne	.label_1801
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1796
.label_1801:
	cmp	dword ptr [rbx], 3
	jne	.label_1807
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1796
.label_1807:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_1811
	test	eax, eax
	jne	.label_1813
	mov	al, byte ptr [rbp + 8]
	jmp	.label_1810
.label_1811:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_1810
.label_1813:
	xor	eax, eax
.label_1810:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_1794
	test	ecx, ecx
	jne	.label_1795
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_1797
.label_1794:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_1797
.label_1795:
	xor	edx, edx
.label_1797:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_1799
	test	ecx, ecx
	jne	.label_1800
.label_1799:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_1804
.label_1800:
	mov	ebp, dword ptr [rbp + 8]
.label_1804:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_1805
	test	eax, eax
	jne	.label_1806
.label_1805:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_1809
.label_1806:
	mov	ebx, dword ptr [rbx + 8]
.label_1809:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_1796
	cmp	ebx, -1
	je	.label_1796
	test	r12d, 0x10000
	je	.label_1812
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_1796
.label_1812:
	test	r14, r14
	je	.label_1792
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_1793
.label_1803:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_1792:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1808:
	cmp	rbp, rbx
	ja	.label_1798
	cmp	rbx, r14
	ja	.label_1798
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_1798:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1808
.label_1796:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1793:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 8], rsi
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, rax
	test	rax, rax
	je	.label_1802
	cmp	qword ptr [rsp + 8], 0
	je	.label_1802
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r15], rax
	jmp	.label_1803
.label_1802:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	eax, 0xc
	jmp	.label_1796
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412d70

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1814
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1814:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412db0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1815
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1815:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412df0

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
	je	.label_1840
	mov	esi, OFFSET FLAT:label_1824
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1832
	mov	esi, OFFSET FLAT:label_1834
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1840
.label_1832:
	mov	r12d, OFFSET FLAT:label_1842
.label_1840:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_1858
.label_1866:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_1514
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1860
	mov	esi, OFFSET FLAT:label_1861
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1868
	mov	esi, OFFSET FLAT:label_1834
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1875
	mov	esi, OFFSET FLAT:label_1531
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1876
	mov	esi, OFFSET FLAT:label_1842
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1879
	mov	esi, OFFSET FLAT:label_1880
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1884
	mov	esi, OFFSET FLAT:label_1886
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1889
	mov	esi, OFFSET FLAT:label_1824
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1825
	mov	esi, OFFSET FLAT:label_1853
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1829
	mov	esi, OFFSET FLAT:label_1833
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1839
	mov	esi, OFFSET FLAT:label_1843
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1847
	mov	esi, OFFSET FLAT:label_1851
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1820
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1848
.label_1871:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1862
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1862:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1871
	jmp	.label_1820
.label_1860:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1854
	nop	word ptr [rax + rax]
.label_1882:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1864
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1864:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1882
	jmp	.label_1820
.label_1868:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1852
	nop	dword ptr [rax + rax]
.label_1826:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1816
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1816:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1826
	jmp	.label_1820
.label_1875:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1837
	nop	dword ptr [rax + rax]
.label_1856:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_1845
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1845:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1856
	jmp	.label_1820
.label_1876:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1859
	nop	dword ptr [rax]
.label_1873:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1863
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1863:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1873
	jmp	.label_1820
.label_1879:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1831
	nop	dword ptr [rax]
.label_1883:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_1877
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1877:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1883
	jmp	.label_1820
.label_1884:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1849
	nop	dword ptr [rax]
.label_1827:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1817
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1817:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1827
	jmp	.label_1820
.label_1889:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1838
	nop	dword ptr [rax]
.label_1822:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_1823
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1823:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1822
	jmp	.label_1820
.label_1825:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1828
	nop	dword ptr [rax]
.label_1836:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_1872
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1872:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1836
	jmp	.label_1820
.label_1829:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1818
	nop	dword ptr [rax]
.label_1870:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_1855
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1855:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1870
	jmp	.label_1820
.label_1854:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1887
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1887:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1854
	jmp	.label_1820
.label_1839:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1830
.label_1881:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1835
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1835:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1881
	jmp	.label_1820
.label_1852:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1857
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1857:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1852
	jmp	.label_1820
.label_1847:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1819
.label_1874:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_1869
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1869:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1874
.label_1820:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1837:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_1850
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1850:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1837
	jmp	.label_1820
.label_1859:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1885
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1885:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1859
	jmp	.label_1820
.label_1831:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_1821
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1821:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1831
	jmp	.label_1820
.label_1849:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1841
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1841:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1849
	jmp	.label_1820
.label_1858:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1820
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1866
.label_1838:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_1867
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1867:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1838
	jmp	.label_1820
.label_1828:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_1878
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1878:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1828
	jmp	.label_1820
.label_1818:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_1888
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1888:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1818
	jmp	.label_1820
.label_1830:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1844
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1844:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1830
	jmp	.label_1820
.label_1819:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_1846
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1846:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1819
	jmp	.label_1820
.label_1848:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1865
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1865:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1848
	jmp	.label_1820
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4134a0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1890:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_1890
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4134c0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1891:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1891
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4134f0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_1892
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1892
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_1893:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1892
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_1893
.label_1892:
	ret	
	nop	word ptr cs:[rax + rax]
	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_1651
	mov	r13b, byte ptr [r12]
	mov	rbp, -1
	nop	
.label_1692:
	cmp	byte ptr [r12 + 8], 0x1e
	jne	.label_1673
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1678
	nop	word ptr cs:[rax + rax]
.label_1673:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
.label_1678:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1651
	cmp	al, r13b
	jne	.label_1656
	mov	rdx, qword ptr [rbx + 8]
	cmp	byte ptr [rdx + rcx], 0x5d
	je	.label_1687
.label_1656:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1692
.label_1651:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1687:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	al, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	al, 0x1e
	je	.label_1701
	cmp	al, 0x1c
	je	.label_1702
	cmp	al, 0x1a
	jne	.label_1651
	mov	dword ptr [r15], 3
	jmp	.label_1651
.label_1701:
	mov	dword ptr [r15], 4
	jmp	.label_1651
.label_1702:
	mov	dword ptr [r15], 2
	jmp	.label_1651
	nop	
	.section	.text
	.align	32
	#Procedure 0x413620

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1894
	mov	rax, qword ptr [rbx + 0x48]
.label_1900:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_1899:
	mov	bpl, byte ptr [rcx + rax]
.label_1897:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1894:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1896
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_1898
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1900
.label_1898:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1895
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1897
.label_1896:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_1899
.label_1895:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1897
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4136d0

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_1901
	jmp	btowc
.label_1901:
	mov	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4136e0

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, -1
	mov	r13d, 0x8000
	jmp	.label_1902
.label_1903:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_1902:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	dl, 0x18
	je	.label_1904
	cmp	dl, 2
	je	.label_1905
	cmp	al, 0x2c
	je	.label_1904
	cmp	al, 0x30
	mov	rcx, -2
	jb	.label_1902
	cmp	edx, 1
	jne	.label_1902
	cmp	rbx, -2
	je	.label_1902
	cmp	al, 0x39
	ja	.label_1902
	cmp	rbx, -1
	jne	.label_1903
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_1902
.label_1905:
	mov	rbx, -2
.label_1904:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413790

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx]
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1703
	lea	r13, [rsp]
	xor	r14d, r14d
.label_1665:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_1908
	lea	r13, [r12 + 8]
	jmp	.label_1907
	nop	dword ptr [rax]
.label_1908:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1911:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1906
	test	rbp, rbp
	jne	.label_1909
.label_1906:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_1911
	jmp	.label_1910
	nop	word ptr cs:[rax + rax]
.label_1909:
	lea	r13, [r12 + 0x10]
.label_1907:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_1665
	jmp	.label_1703
.label_1910:
	mov	r14, qword ptr [rsp]
.label_1703:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	cmp	al, 0x11
	jne	.label_1677
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_1677
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_1677:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413890

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_1914
	nop	
.label_1913:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	jne	.label_1915
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1916:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_1912
	test	r12, r12
	jne	.label_1915
.label_1912:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_1916
	jmp	.label_1914
.label_1915:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_1913
.label_1914:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1652
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1652
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1652:
	cmp	byte ptr [rsi + 0x30], 0x11
	jne	.label_1657
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1657
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_1657
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1666
	mov	qword ptr [rdx], rsi
.label_1666:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1657
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1657:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	je	.label_1684
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1684
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1684
	mov	qword ptr [rax], rbx
.label_1684:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1697
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1697
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1697
	mov	qword ptr [rax], rbx
.label_1697:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_1699
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_1654
.label_1699:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_1654
	xor	eax, eax
	cmp	byte ptr [rbx + 0x30], 0xc
	jne	.label_1654
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_1654:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.globl calc_next
	.type calc_next, @function
calc_next:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x10
	je	.label_1690
	cmp	al, 0xb
	jne	.label_1680
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
.label_1690:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1683
.label_1680:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1691
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1691:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_1696
.label_1683:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1696:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413af0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	eax, dword ptr [rsi + 0x30]
	mov	edx, eax
	add	dl, 0xfe
	movzx	edx, dl
	cmp	dl, 0xe
	ja	.label_1917
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1918]]
.label_3093:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_1694:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
	.section	.text
	.align	32
	#Procedure 0x413c40

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	xor	r12d, r12d
	jmp	.label_1923
	nop	dword ptr [rax]
.label_1926:
	inc	rbx
.label_1923:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1924
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_1925
.label_1924:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1926
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1927
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1926
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_1926
.label_1927:
	mov	ebx, eax
.label_1925:
	mov	eax, ebx
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413cd0

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 0x10], 0
	je	.label_1931
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_1928:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1928
	xor	eax, eax
	test	rdx, rdx
	je	.label_1931
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1930:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_1932
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1929:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1931
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_1929
.label_1932:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1930
.label_1931:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413d90

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
	mov	r15, rdx
	mov	r12, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_1936
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1936
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1935
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1935
.label_1936:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r12
	call	create_tree
	mov	r13, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r12
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_1937
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_1937:
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_1934
	test	r13, r13
	je	.label_1934
	test	r14, r14
	je	.label_1934
	test	rax, rax
	je	.label_1934
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r13 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r13 + 0x30]
	or	edx, ecx
	mov	dword ptr [r13 + 0x30], edx
	jmp	.label_1933
.label_1935:
	mov	rax, qword ptr [r15 + 8]
.label_1933:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1934:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_1933
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ea0

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
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	jae	.label_1941
.label_1942:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	jne	.label_1938
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1943
.label_1938:
	cmp	eax, 6
	sete	cl
.label_1943:
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
	mov	r14, qword ptr [rbx + 0x10]
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1939:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1941:
	lea	rcx, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1939
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1939
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1940
	test	rbp, rbp
	je	.label_1940
	test	r13, r13
	je	.label_1940
	test	rax, rax
	je	.label_1940
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1942
.label_1940:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1939
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414070

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1947
	cmp	r14, r15
	jne	.label_1944
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1945
.label_1944:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_1946
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1945
.label_1946:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_1945:
	xor	eax, eax
.label_1947:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4140f0

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 1
	mov	qword ptr [rbx + 8], 1
	mov	edi, 8
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1949
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1948:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1949:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_1948
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414140

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
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 8]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_1951
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1956
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1956
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_1956
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1951
.label_1956:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x20], r12
	je	.label_1960
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1960
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1952:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r12*8]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1955
	test	rcx, rcx
	jne	.label_1950
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1953
	jmp	.label_1951
	nop	dword ptr [rax + rax]
.label_1950:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1953:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1951
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1959
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1955:
	mov	r15b, 1
.label_1959:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1952
	jmp	.label_1958
.label_1960:
	xor	r15d, r15d
.label_1958:
	lea	rdi, [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_1951
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1954
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1954
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1957
.label_1954:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1957:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rdx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rdx], xmm0
	xor	eax, eax
.label_1951:
	add	rsp, 0x48
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
	#Procedure 0x414330

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1961
	xor	eax, eax
.label_1961:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414370

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0xc], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	jmp	.label_1972
	nop	word ptr cs:[rax + rax]
.label_1970:
	mov	rsi, qword ptr [rcx + r13*8 + 0x10]
	mov	rbp, qword ptr [rsi]
	lea	rsi, [rbx + rbx*2]
	mov	r12, rsi
	mov	qword ptr [rcx + rsi*8 + 8], 0
	cmp	rdx, 1
	je	.label_1969
	mov	rdi, r15
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1966
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_1971
	jmp	.label_1962
.label_1966:
	mov	rdi, r15
	mov	rbx, rbp
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	duplicate_node
	mov	r14, rax
	mov	ebp, 0xc
	cmp	r14, -1
	je	.label_1962
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_1962
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rsp + 0xc]
	call	duplicate_node_closure
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1962
.label_1971:
	mov	rax, qword ptr [r15 + 0x28]
	mov	rax, qword ptr [rax + r13*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, dword ptr [rsp + 0xc]
.label_1973:
	call	duplicate_node
	mov	ebp, 0xc
	cmp	rax, -1
	je	.label_1962
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1972
	jmp	.label_1962
.label_1969:
	cmp	r14, qword ptr [rsp + 0x10]
	jne	.label_1968
	cmp	rbx, r14
	jne	.label_1963
.label_1968:
	mov	rcx, qword ptr [r15]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	edx, dword ptr [rsp + 0xc]
	or	edx, eax
	mov	rdi, r15
	mov	r14, rbp
	mov	rsi, rbp
	mov	dword ptr [rsp + 0xc], edx
	jmp	.label_1973
	nop	
.label_1972:
	mov	rcx, qword ptr [r15]
	mov	rax, r14
	shl	rax, 4
	cmp	byte ptr [rcx + rax + 8], 4
	jne	.label_1965
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbp
	mov	r13, r15
	mov	edx, dword ptr [rsp + 0xc]
	mov	r15, rbx
	call	duplicate_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1964
	mov	rax, qword ptr [r13 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r15*8], rcx
	mov	rax, qword ptr [r13 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r14, rbp
	mov	r15, r13
	mov	ebp, 0xc
	jne	.label_1972
	jmp	.label_1962
	nop	dword ptr [rax]
.label_1965:
	mov	rcx, qword ptr [r15 + 0x28]
	lea	r13, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r13*8 + 8]
	test	rdx, rdx
	jne	.label_1970
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1967:
	xor	ebp, ebp
.label_1962:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1963:
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_1967
	jmp	.label_1962
.label_1964:
	mov	ebp, 0xc
	jmp	.label_1962
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145b0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1977
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1977
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1979
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1987
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1979:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1980
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1983
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1984
.label_1978:
	dec	rax
.label_1981:
	dec	rcx
	jmp	.label_1976
	nop	word ptr [rax + rax]
.label_1984:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1978
	jge	.label_1981
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1976:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1984
.label_1983:
	test	rax, rax
	js	.label_1986
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1986:
	mov	r9, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1977
	lea	rax, [rsi + r9]
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
.label_1975:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1974:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1982
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1974
	jmp	.label_1977
	nop	word ptr cs:[rax + rax]
.label_1982:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1975
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r12*8]
.label_1985:
	call	memcpy
.label_1977:
	xor	eax, eax
.label_1987:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1980:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	jmp	.label_1985
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414750

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_1996
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1990
	cmp	rsi, rax
	jne	.label_1991
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1992
	mov	qword ptr [rbx + 0x10], rax
.label_1991:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1997
	test	rax, rax
	jle	.label_1988
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1994:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1994
	jmp	.label_1988
.label_1996:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_1989
.label_1990:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1995
.label_1997:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_1988
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1993:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1993
.label_1988:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1995:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1989:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1992:
	xor	eax, eax
	jmp	.label_1989
	nop	
	.section	.text
	.align	32
	#Procedure 0x414830

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rbp, r14
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1998
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	r15d, 8
	and	r15d, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, r15d
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + rbp + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_1998:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4148c0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1999
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_1999
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_2001:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_2000
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_2002
.label_2000:
	dec	r10
	test	r10, r10
	jle	.label_1999
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_2001
	jmp	.label_1999
.label_2002:
	mov	rax, r10
.label_1999:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414940

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_2003
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_2004
	mov	qword ptr [rbx + 0x10], rax
.label_2003:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_2005:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_2004:
	xor	eax, eax
	jmp	.label_2005
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4149a0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rdi
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2006
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2008
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2007
.label_2006:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2007:
	xor	eax, eax
.label_2009:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_2008:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_2009
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414a10

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_2010
	xor	edx, edx
	dec	r9
	je	.label_2012
	mov	r8, qword ptr [rdi + 0x10]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2011:
	lea	rax, [r9 + rdx]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rsi
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2011
.label_2012:
	mov	rcx, qword ptr [rdi + 0x10]
	xor	eax, eax
	cmp	qword ptr [rcx + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmove	rax, rcx
.label_2010:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414a60

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	cmp	qword ptr [rdx + 8], 0
	je	.label_2013
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rcx, qword ptr [rbp + 0x88]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_2018
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_2015:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_2016
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_2016
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp]
	call	re_node_set_compare
	test	al, al
	jne	.label_2014
.label_2016:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_2015
.label_2018:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2014
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_2017
.label_2013:
	mov	dword ptr [rdi], 0
.label_2017:
	xor	ebp, ebp
.label_2014:
	mov	rax, rbp
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
	#Procedure 0x414b40

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_2019
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_2020:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_2020
.label_2019:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414b70

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_2021
	test	rsi, rsi
	je	.label_2021
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_2023
	nop	word ptr cs:[rax + rax]
.label_2022:
	mov	al, 1
	test	rcx, rcx
	jle	.label_2021
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_2022
.label_2023:
	xor	eax, eax
.label_2021:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414bc0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x28], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	r15, r15
	je	.label_2024
	mov	rbx, r15
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_2030
	mov	al, byte ptr [r15 + 0x68]
	mov	ecx, r14d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [r15 + 0x50], rbx
	cmp	qword ptr [rbp + 8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	jle	.label_2032
	mov	ebx, r14d
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	eax, ebx
	and	eax, 2
	mov	dword ptr [rsp + 0x24], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x20], ebx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r14d, r14d
	xor	r12d, r12d
	nop	
.label_2038:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	ecx, dword ptr [rax + rcx + 8]
	mov	r13d, ecx
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	cl, 1
	jne	.label_2037
	test	eax, eax
	je	.label_2031
.label_2037:
	mov	esi, ecx
	shr	esi, 0x14
	movzx	ebx, byte ptr [r15 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	cl, 4
	je	.label_2034
	cmp	cl, 2
	jne	.label_2026
	or	bl, 0x10
	jmp	.label_2028
.label_2034:
	or	bl, 0x40
.label_2028:
	mov	byte ptr [r15 + 0x68], bl
.label_2026:
	test	eax, eax
	je	.label_2031
	mov	rbx, qword ptr [rsp + 0x30]
	cmp	qword ptr [r15 + 0x50], rbx
	jne	.label_2035
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_2029
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_2024
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_2035:
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_2033
	mov	eax, r13d
	and	eax, 1
	jne	.label_2025
.label_2033:
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_2036
	mov	eax, r13d
	and	eax, 2
	jne	.label_2025
.label_2036:
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_2040
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_2025
.label_2040:
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_2027
	and	r13d, 0x40
	je	.label_2027
	nop	word ptr [rax + rax]
.label_2025:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, rbx
	call	re_node_set_remove_at
	inc	r12
.label_2027:
	mov	rdi, qword ptr [rsp + 0x18]
.label_2031:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_2038
.label_2032:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	call	register_state
	test	eax, eax
	mov	rax, r15
	mov	qword ptr [rsp + 8], rax
	jne	.label_2029
.label_2024:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2029:
	mov	rdi, r15
	call	free_state
	jmp	.label_2039
.label_2030:
	mov	rdi, r15
	call	free
.label_2039:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_2024
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414dd0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_2041
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_2041
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_2041
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_2042:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_2042
.label_2041:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414e10

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
	mov	r13, rdi
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	r14d, 0xc
	test	eax, eax
	jne	.label_2045
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_2044
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2046:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_2047
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_2045
.label_2047:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_2046
.label_2044:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_2048
.label_2043:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_2045:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2048:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_2045
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_2043
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414f00

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	ecx, 2
	je	.label_2049
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_2059
	test	ecx, ecx
	jne	.label_2058
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_2057
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_2054
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_2051
.label_2049:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_2051
	mov	edi, OFFSET FLAT:label_2063
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_2062
	call	__assert_fail
.label_2059:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_2053
.label_2051:
	xor	eax, eax
	test	r14, r14
	jle	.label_2055
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_2050:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_2050
	mov	rax, r14
.label_2055:
	cmp	rax, qword ptr [r15]
	jae	.label_2056
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_2060:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_2060
.label_2056:
	mov	ebp, r12d
.label_2057:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2053:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_2057
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_2052
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_2051
.label_2054:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_2057
.label_2058:
	mov	edi, OFFSET FLAT:label_2061
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_2062
	call	__assert_fail
.label_2052:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_2057
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4150a0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	r15, qword ptr [rsp + 0x30]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, r8
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2064
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_2066
	mov	r12, qword ptr [r13 + 8]
.label_2066:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_2065
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	cmovg	r14, rcx
	mov	rcx, r14
.label_2065:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_2064:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415170

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_2067
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_2068
	lea	r12, [r14*8]
	lea	rdi, [r12 + r12*4]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdi, r12
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rbp, rbp
	je	.label_2068
	test	rax, rax
	je	.label_2068
.label_2067:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_2068:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415210

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r14
	jle	.label_2074
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2082
	mov	qword ptr [rbx + 0x20], 0
.label_2082:
	mov	rcx, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	jne	.label_2086
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_2086:
	test	r13, r13
	je	.label_2098
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_2099
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2101
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2090
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_2090:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2110
.label_2097:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_2078:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2098
	add	qword ptr [rbx + 8], r13
.label_2098:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2069
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2075
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2079
	jmp	.label_2071
.label_2069:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2080
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_2071
.label_2075:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2071:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2079:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2074:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_2086
.label_2099:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2094
.label_2108:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2096
	mov	qword ptr [rsp + 0x18], rdx
	mov	dword ptr [rsp + 8], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_2100
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, rcx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rax, r13
	sub	rax, rsi
	add	rax, rdx
	cmp	rax, rcx
	cmovb	rax, rcx
	lea	r12, [rdx + r13]
	mov	rbp, r12
.label_2111:
	dec	rbp
	cmp	rbp, rax
	jb	.label_2076
	movzx	ecx, byte ptr [rbp]
	and	cl, 0xc0
	cmp	cl, 0x80
	je	.label_2111
	add	rdx, qword ptr [rbx + 0x58]
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_2112
.label_2095:
	mov	qword ptr [rsp + 0x20], 0
	lea	rdi, [rsp + 0xc]
	lea	rcx, [rsp + 0x20]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_2076
	cmp	rax, -3
	ja	.label_2076
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 8], eax
.label_2076:
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	jne	.label_2084
.label_2100:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	je	.label_2088
.label_2084:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2092
	mov	ecx, dword ptr [rsp + 8]
.label_2093:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_2081
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8d], 0
	setne	al
	add	eax, eax
	jmp	.label_2081
.label_2101:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
.label_2107:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_2102
	jge	.label_2105
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_2102:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_2107
.label_2105:
	mov	rax, qword ptr [rbx + 0x18]
	xor	edx, edx
	cmp	qword ptr [rax + rcx*8], r13
	setl	dl
	lea	rbp, [rdx + rcx]
	lea	rsi, [rdx + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_2070
	cmp	rbp, r13
	jne	.label_2070
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_2070
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	test	rax, rax
	jle	.label_2078
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
.label_2089:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2089
	jmp	.label_2078
.label_2110:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_2097
.label_2070:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_2103:
	mov	rax, rbp
	test	rax, rax
	jle	.label_2073
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_2103
.label_2073:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_2106
	mov	rcx, qword ptr [rbx + 0x10]
.label_2114:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2106
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_2114
.label_2106:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_2109
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_2083
.label_2080:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2113
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_2071
.label_2096:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	bpl, byte ptr [rcx + rax - 1]
	movzx	eax, bpl
	mov	qword ptr [rbx + 0x38], 0
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	je	.label_2072
	mov	bpl, byte ptr [rcx + rax]
.label_2072:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	esi, bpl
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_2085
	xor	ecx, ecx
	cmp	bpl, 0xa
	jne	.label_2085
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_2085:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_2078
.label_2109:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_2083
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_2087
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2087:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_2083
.label_2113:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_2071
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_2071
.label_2088:
	mov	rsi, qword ptr [rsp + 0x18]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_2081:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_2091
.label_2083:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2078
.label_2094:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2108
.label_2091:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_2077
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2077:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2087
	jmp	.label_2083
.label_2092:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_2081
	mov	ecx, dword ptr [rsp + 8]
	cmp	ecx, 0x5f
	jne	.label_2093
	jmp	.label_2081
.label_2112:
	lea	rsi, [rsp + 0x12]
	cmp	rdx, 7
	mov	eax, 6
	cmovl	rax, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2095
	movsxd	r10, eax
	lea	r8, [rsp + r10 + 0x11]
	lea	r9, [rbp + r10 - 1]
	xor	ecx, ecx
.label_2104:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	movzx	eax, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_2104
	jmp	.label_2095
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4157e0

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	dword ptr [rsp + 8], esi
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r14 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_2117
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_2134
	test	eax, eax
	je	.label_2117
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_2135
	test	sil, sil
	jne	.label_2135
	mov	rbx, qword ptr [r14 + 0x60]
	jmp	.label_2117
.label_2134:
	mov	rbx, qword ptr [r14 + 0x50]
.label_2117:
	test	rbx, rbx
	je	.label_2142
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_2126
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	jne	.label_2146
.label_2126:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_2122
.label_2127:
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 4]
.label_2115:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_2118
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 8]
	or	r12b, al
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_2125:
	lea	r15, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r15, rax
	jge	.label_2141
.label_2131:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r15, rax
	jge	.label_2144
.label_2140:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_2121
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_2121:
	test	rbx, rbx
	jne	.label_2145
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0
	jne	.label_2128
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	cmp	al, 1
	jne	.label_2118
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2118
.label_2145:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_2132
.label_2143:
	movzx	eax, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_2129
	test	al, al
	jns	.label_2123
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_2123
.label_2129:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r14, rbx
	jg	.label_2125
	jmp	.label_2118
.label_2141:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_2131
	jmp	.label_2133
.label_2144:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_2140
.label_2133:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 4], ecx
	test	ecx, ecx
	jne	.label_2138
	jmp	.label_2140
.label_2132:
	cmp	r14, rbx
	je	.label_2136
	mov	dword ptr [rsp + 0xc], 0
.label_2136:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r15
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_2143
.label_2123:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, rdx
	jne	.label_2115
	jmp	.label_2128
.label_2118:
	mov	rcx, qword ptr [rsp + 0x20]
	test	rcx, rcx
	je	.label_2130
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_2130:
	mov	rax, qword ptr [rsp + 0x18]
.label_2128:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2135:
	test	edx, edx
	jne	.label_2139
	test	ecx, ecx
	je	.label_2117
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_2117
.label_2139:
	mov	rbx, qword ptr [r14 + 0x58]
	jmp	.label_2117
.label_2138:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_2128
	mov	edi, OFFSET FLAT:label_2119
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_2120
	call	__assert_fail
.label_2142:
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_2128
	mov	edi, OFFSET FLAT:label_2119
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_2120
	call	__assert_fail
.label_2122:
	test	al, al
	js	.label_2137
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	rdx, r12
	jne	.label_2127
	mov	rax, r12
	jmp	.label_2128
.label_2146:
	lea	r14, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r14
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2124
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_2116
	mov	rdi, rbp
	mov	rsi, r14
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2124
.label_2116:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2126
.label_2137:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	je	.label_2127
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	jne	.label_2127
	mov	rax, r12
	jmp	.label_2128
.label_2124:
	cdqe	
	jmp	.label_2128
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415b70

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r15d, eax
	xor	ebp, ebp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_2147
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2148:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_2147
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_2148
.label_2147:
	mov	rax, rbp
	add	rsp, 8
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
	#Procedure 0x415bf0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, qword ptr [rdi + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_2157
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb0]
	mov	qword ptr [rsp + 8], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13d, 0xc
	xor	r15d, r15d
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_2151
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_2156
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_2159
	lea	rbp, [rsp + 0x20]
	mov	r13, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp]
	jmp	.label_2160
.label_2156:
	xor	r15d, r15d
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_2150
	xor	r15d, r15d
	cmp	qword ptr [r12], 0
	jne	.label_2155
	mov	r13d, 1
	jmp	.label_2150
	nop	
.label_2152:
	mov	rdi, rbp
	mov	rdx, rbx
	call	check_halt_state_context
	lea	rbp, [rsp + 0x20]
	mov	r14, qword ptr [rsp]
	mov	r13, rax
.label_2160:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	r12, r13
	mov	rcx, r13
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_2153
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [r14], 0
	jne	.label_2154
	cmp	qword ptr [r15], 0
	jne	.label_2154
	mov	r13d, 1
	test	rbx, rbx
	jle	.label_2151
	mov	rax, qword ptr [rbp + 0xb8]
	dec	rbx
	nop	dword ptr [rax]
.label_2158:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_2149
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_2152
.label_2149:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_2158
	mov	r12, qword ptr [rsp]
	jmp	.label_2150
.label_2154:
	mov	qword ptr [rsp + 8], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	jne	.label_2150
.label_2155:
	mov	rdi, qword ptr [rbp + 0xb8]
	call	free
	mov	qword ptr [rbp + 0xb8], r12
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbp + 0xb0], rax
	mov	qword ptr [rbp + 0xa8], rbx
	xor	r13d, r13d
	xor	r12d, r12d
	xor	r15d, r15d
.label_2150:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
.label_2157:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2151:
	mov	r12, qword ptr [rsp]
	jmp	.label_2150
.label_2153:
	mov	r12, r14
	jmp	.label_2150
.label_2159:
	mov	r12, qword ptr [rsp]
	jmp	.label_2150
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415e40

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
	jle	.label_2161
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2164:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_2162
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2165:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2165
.label_2162:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2163
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2163:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2164
.label_2161:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415f00

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
	sub	rsp, 0x58
	mov	r12, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_2166]]
	mov	qword ptr [rbp - 0x70], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2167]]
	movaps	xmmword ptr [rbp - 0x80], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_2168
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x70], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_2171
	lea	rax, [rbp - 0x80]
.label_2168:
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x68], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	qword ptr [rbp - 0x50], 0
	mov	r14, rbx
	shl	r14, 4
	cmp	r14, 0xfbf
	ja	.label_2183
	mov	rdi, rsp
	lea	rax, [r14 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_2172
.label_2183:
	mov	rdi, r14
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_2174
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
.label_2172:
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x48], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_2179
	lea	r14, [r12 + 8]
	jmp	.label_2182
.label_2180:
	cmp	r15, -2
	je	.label_2184
	mov	rdi, qword ptr [rbp - 0x40]
	test	rdi, rdi
	je	.label_2187
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_2173
	nop	
.label_2182:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_2175
	cmp	r15, qword ptr [r13 + 0xb0]
	jne	.label_2175
	mov	r15, qword ptr [rbp - 0x40]
	test	r15, r15
	je	.label_2178
	test	rbx, rbx
	mov	eax, 0
	je	.label_2181
	mov	rcx, r14
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2188:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2185
	cmp	qword ptr [rcx], -1
	je	.label_2181
.label_2185:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_2188
.label_2181:
	cmp	rax, rbx
	je	.label_2170
	mov	rdi, r15
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
.label_2175:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x48]
	mov	r8, r15
	lea	r9, [rbp - 0x60]
	push	qword ptr [rbp - 0x40]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_2180
.label_2173:
	mov	r8, qword ptr [rbp - 0x48]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_2182
.label_2179:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2186
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2186:
	mov	rdi, qword ptr [rbp - 0x40]
.label_2177:
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_2171
.label_2178:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	xor	r14d, r14d
.label_2169:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2171
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_2171
.label_2170:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2176
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2176:
	mov	rdi, r15
	jmp	.label_2177
.label_2187:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r14d, 1
	jmp	.label_2169
.label_2184:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2174
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2174:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_2171:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x4161a0

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbx
	mov	rbx, rdi
	call	match_ctx_clean
	mov	rdi, qword ptr [rbx + 0xf8]
	call	free
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4161d0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2195
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2197
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2194
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2191:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2189
	dec	rsi
	test	rsi, rsi
	jg	.label_2191
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2193
.label_2194:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	mov	bpl, byte ptr [rax + rsi]
	movzx	esi, bpl
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_2193
	xor	edx, edx
	cmp	bpl, 0xa
	je	.label_2196
	jmp	.label_2193
.label_2189:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2190
.label_2192:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2193
.label_2196:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_2193:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2195:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2193
.label_2197:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_2193
.label_2190:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2193
	test	eax, eax
	je	.label_2192
	jmp	.label_2193
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416290

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_2198
	lea	r13, [r12 + 0x20]
	jmp	.label_2199
.label_2200:
	xor	ecx, ecx
	test	r14, r14
	je	.label_2202
	test	rax, rax
	je	.label_2202
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_2202:
	mov	qword ptr [r13], rbp
	mov	eax, 1
	jmp	.label_2201
	nop	word ptr cs:[rax + rax]
.label_2199:
	mov	rbp, qword ptr [r12 + 0x20]
	mov	r14, qword ptr [r12 + 0x50]
	sub	r14, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0xc]
	mov	rdx, r14
	mov	rcx, r13
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_2200
	mov	ecx, dword ptr [rsp + 0xc]
.label_2201:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_2199
.label_2198:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
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
	#Procedure 0x416350

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rax, rsi
	sar	rax, 0x3f
	shr	rax, 0x3a
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416370

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	jle	.label_2203
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2205:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	cmp	byte ptr [rax + rcx + 8], 8
	jne	.label_2204
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_2204
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_2204
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_2203
	nop	word ptr cs:[rax + rax]
.label_2204:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_2205
.label_2203:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416410

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r13, rsi
	mov	r14, rdi
	cmp	qword ptr [r13 + 8], 0
	jle	.label_2209
	mov	r8, qword ptr [r14 + 0x98]
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 8], r8
	nop	dword ptr [rax + rax]
.label_2219:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	mov	r15d, eax
	cmp	al, 4
	jne	.label_2208
	mov	eax, r15d
	mov	ebp, eax
	shr	ebp, 8
	test	bp, 0x3ff
	mov	qword ptr [rsp + 0x18], rsi
	je	.label_2220
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_string_context_at
	mov	r8, qword ptr [rsp + 8]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2212
	test	ecx, ecx
	je	.label_2208
.label_2212:
	mov	edx, r15d
	test	dh, 8
	je	.label_2215
	test	ecx, ecx
	jne	.label_2208
.label_2215:
	mov	ecx, r15d
	test	ch, 0x20
	je	.label_2217
	mov	ecx, eax
	and	ecx, 2
	je	.label_2208
.label_2217:
	test	bpl, bpl
	jns	.label_2220
	and	eax, 8
	je	.label_2208
	nop	word ptr cs:[rax + rax]
.label_2220:
	mov	r12, qword ptr [r14 + 0xc8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	call	get_subexp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2206
	cmp	r12, qword ptr [r14 + 0xc8]
	jge	.label_2208
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_2214:
	mov	rax, qword ptr [r14 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rsi
	jne	.label_2216
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_2216
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rdi, qword ptr [rax + rbp]
	mov	rbx, qword ptr [r8 + 0x30]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdi
	cmp	rdi, rcx
	jne	.label_2221
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rsi + rsi*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_2207
.label_2221:
	lea	rcx, [rsi*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_2207:
	mov	rcx, qword ptr [rcx]
	lea	rbx, [rcx + rcx*2]
	mov	r13, qword ptr [rax + rbp]
	mov	r15, qword ptr [rsp + 0x10]
	add	r13, r15
	sub	r13, qword ptr [rax + rbp - 8]
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	call	re_string_context_at
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r15*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_2218
	mov	rdx, qword ptr [rcx + 0x10]
.label_2218:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rcx, [rcx + rbx*8]
	test	rsi, rsi
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	je	.label_2222
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rbx, [rsp + 0x50]
	mov	rdi, rbx
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2213
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	jne	.label_2211
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2206
.label_2211:
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_2210
.label_2222:
	lea	rdi, [rsp + 4]
	mov	r15, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rcx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, r15
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x18]
	jne	.label_2210
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2206
	nop	dword ptr [rax]
.label_2210:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_2216
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2216
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x10]
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2206
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	transit_state_bkref
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2206
.label_2216:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r14 + 0xc8]
	jl	.label_2214
	nop	word ptr cs:[rax + rax]
.label_2208:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_2219
.label_2209:
	mov	dword ptr [rsp + 4], 0
.label_2206:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2213:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	jmp	.label_2206
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416790

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbx
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_2227
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2227
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_2224
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_2227
	mov	qword ptr [rbx + 0xb8], rcx
.label_2224:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_2225
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_2228
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_2223
	jmp	.label_2227
.label_2225:
	cmp	eax, 2
	jl	.label_2226
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_2223
.label_2228:
	call	build_upper_buffer
	jmp	.label_2223
.label_2226:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_2223
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_2223:
	xor	eax, eax
.label_2227:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416860

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_2229
.label_2234:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_2233:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_2232
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_2231
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_2233
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_2230
.label_2232:
	mov	rax, qword ptr [rax + r12*8]
.label_2230:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_2229:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_2234
	jmp	.label_2230
.label_2231:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_2230
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416910

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
	jle	.label_2237
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2235
.label_2237:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_2238
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_2239
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_2241
	xor	eax, eax
	jmp	.label_2236
.label_2238:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2235
.label_2239:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_2241:
	mov	rsi, qword ptr [r13 + 0x48]
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
	test	rbp, rbp
	je	.label_2235
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2235:
	test	rbx, rbx
	je	.label_2240
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2240
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2236
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2236
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2236
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2236
.label_2240:
	mov	rax, rbx
.label_2236:
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
	#Procedure 0x416a60

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_2243:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_2244:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_2242
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_2244
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_2242
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_2243
.label_2242:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416ad0

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	je	.label_2245
.label_2246:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbx + 0xe8]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2247
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_2247:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2245:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2247
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_2246
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416ba0

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	r8, rbx
	cmp	rax, -1
	je	.label_2274
	lea	rax, [rax + rax*4]
	shl	rax, 3
	add	rax, qword ptr [r8 + 0xd8]
.label_2250:
	mov	dword ptr [rsp + 0xc], 0
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], rcx
	je	.label_2259
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2250
.label_2274:
	mov	dword ptr [rsp + 0xc], 0
	cmp	qword ptr [r8 + 0xe8], 0
	jle	.label_2259
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x30]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x18], r8
	nop	
.label_2268:
	mov	rcx, qword ptr [r8 + 0xf8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [rbp + 8]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rdx]
	shl	rcx, 4
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	qword ptr [rdx + rcx], rsi
	jne	.label_2272
	mov	r13, qword ptr [rbp]
	cmp	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x10], rbp
	jle	.label_2284
	mov	dword ptr [rsp + 0xc], eax
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r15d, r15d
	jmp	.label_2252
	nop	dword ptr [rax]
.label_2272:
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_2253
.label_2284:
	xor	r15d, r15d
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_2262
.label_2265:
	mov	edi, 7
	cmp	rsi, qword ptr [r8 + 0x58]
	jle	.label_2276
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_2249
.label_2276:
	mov	qword ptr [rsp + 0x48], rdx
	mov	rdi, r8
	mov	rbx, rdi
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_2277
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_2278
.label_2267:
	mov	edi, 1
	mov	r13, r12
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_2281
.label_2277:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_2249
	nop	
.label_2252:
	mov	rax, qword ptr [rbp + 0x28]
	mov	r14, qword ptr [rax + r15*8]
	mov	r12, qword ptr [r14 + 8]
	mov	rbp, r12
	sub	rbp, r13
	jle	.label_2275
	lea	rsi, [rbp + rdx]
	cmp	rsi, qword ptr [r8 + 0x30]
	jg	.label_2265
.label_2278:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rax + rdx]
	lea	rsi, [rax + r13]
	mov	rbx, rdx
	mov	rdx, rbp
	call	memcmp
	mov	rdx, rbx
	mov	edi, 7
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_2275
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_2249
	nop	word ptr cs:[rax + rax]
.label_2275:
	add	rdx, rbp
	mov	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	mov	edi, 9
	cmp	eax, 1
	je	.label_2261
	test	eax, eax
	jne	.label_2267
	xor	edi, edi
.label_2261:
	mov	r13, r12
.label_2281:
	mov	rdx, rbx
.label_2249:
	mov	eax, edi
	and	al, 0xf
	je	.label_2271
	cmp	al, 9
	jne	.label_2273
.label_2271:
	inc	r15
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_2252
	jmp	.label_2262
.label_2273:
	cmp	al, 7
	jne	.label_2279
	nop	
.label_2262:
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_2253
	xor	eax, eax
	test	r15, r15
	setg	al
	add	r13, rax
	cmp	r13, qword ptr [rsp + 0x20]
	jle	.label_2258
	jmp	.label_2253
.label_2283:
	test	eax, eax
	jne	.label_2256
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	match_ctx_add_sublast
	mov	edi, 1
	test	rax, rax
	je	.label_2264
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, rbp
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	cmp	eax, 1
	jne	.label_2260
	mov	edi, 0xc
.label_2280:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	jmp	.label_2251
.label_2260:
	test	eax, eax
	mov	rdx, r12
	jne	.label_2285
	xor	edi, edi
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_2251
.label_2270:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	edi, 1
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdx, r12
	jmp	.label_2251
.label_2269:
	mov	edi, 0xa
	cmp	rdx, qword ptr [r8 + 0x58]
	jge	.label_2251
	mov	rbx, rdx
	lea	esi, [rdx + 1]
	mov	rbp, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_2254
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_2266
.label_2256:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_2280
.label_2264:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, r14
	mov	rdx, r12
	jmp	.label_2251
.label_2285:
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, 1
	jmp	.label_2251
.label_2254:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_2251
.label_2258:
	cmp	r13, qword ptr [rbp]
	jle	.label_2248
	cmp	rdx, qword ptr [r8 + 0x30]
	jge	.label_2269
.label_2266:
	mov	rcx, qword ptr [rsp + 0x28]
	movzx	eax, byte ptr [rcx + rdx]
	inc	rdx
	mov	edi, 0xa
	cmp	al, byte ptr [rcx + r13 - 1]
	jne	.label_2251
.label_2248:
	mov	rax, qword ptr [r8 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	mov	edi, 0xc
	test	rsi, rsi
	je	.label_2251
	mov	r12, rdx
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x50]
	call	find_subexp_node
	mov	r15, rax
	cmp	r15, -1
	je	.label_2263
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [rbp + 0x10], 0
	jne	.label_2282
	mov	rsi, r13
	sub	rsi, qword ptr [rbp]
	inc	rsi
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2270
.label_2282:
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, r15
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	jne	.label_2283
.label_2263:
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	mov	edi, 0xc
.label_2251:
	mov	eax, edi
	and	al, 0xf
	je	.label_2255
	cmp	al, 0xc
	jne	.label_2257
.label_2255:
	cmp	r13, qword ptr [rsp + 0x20]
	lea	r13, [r13 + 1]
	jl	.label_2258
	jmp	.label_2253
.label_2257:
	cmp	al, 0xa
	je	.label_2253
.label_2279:
	cmp	edi, 6
	je	.label_2253
	test	edi, edi
	jne	.label_2259
	nop	dword ptr [rax]
.label_2253:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], rax
	cmp	rcx, qword ptr [r8 + 0xe8]
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0xc], 0
	jl	.label_2268
.label_2259:
	mov	eax, dword ptr [rsp + 0xc]
	add	rsp, 0x58
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
	#Procedure 0x417080

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
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_2286
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_2287
	test	rax, rax
	jle	.label_2287
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2297
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2289
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebp, 0
	mov	ebx, 0
	jle	.label_2288
	xor	esi, esi
	xor	edx, edx
	xor	r13d, r13d
.label_2290:
	mov	rbx, rsi
	mov	rbp, rdx
	nop	word ptr [rax + rax]
.label_2294:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_2288
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_2291
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_2294
	jmp	.label_2288
.label_2291:
	sete	dl
	movzx	edx, dl
	add	rdx, rbp
	inc	r13
	lea	rsi, [rbx + 1]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	qword ptr [rdi + rbx*8], rcx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_2290
	xor	edx, edx
	cmp	rcx, rax
	sete	dl
	inc	rbx
	add	rbp, rdx
.label_2288:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_2293
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_2292
.label_2297:
	mov	rax, qword ptr [r12 + 8]
.label_2287:
	test	rax, rax
	jle	.label_2286
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_2296
.label_2286:
	test	r15, r15
	je	.label_2298
	cmp	qword ptr [r15 + 8], 0
	jle	.label_2298
	mov	rdi, r14
	mov	rsi, r15
.label_2296:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_2298:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_2295
.label_2293:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_2292
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_2292:
	mov	qword ptr [r14 + 8], rbx
.label_2295:
	xor	eax, eax
.label_2289:
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
	#Procedure 0x417240

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_2299
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_2300:
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
	jl	.label_2300
.label_2299:
	cmp	rax, r8
	jge	.label_2302
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2301
.label_2302:
	mov	rax, -1
.label_2301:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4172b0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x40]
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_2303
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_2306
.label_2303:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_2304
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_2304
.label_2306:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2305
.label_2304:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_2305
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_2305:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417330

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_2307
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_2307
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, r12
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_2307:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4173c0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2308
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_2310:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_2309
	cmp	qword ptr [r9 + r10], rdx
	je	.label_2311
.label_2309:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_2310
.label_2308:
	mov	rax, -1
.label_2311:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417410

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x48], r8
	mov	r13, rcx
	mov	r14, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rsi + 8]
	mov	qword ptr [rsp + 8], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	qword ptr [rsp + 0x28], r9
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 0x40], rsi
	jle	.label_2317
.label_2321:
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	rbx, rbx
	cmove	rbx, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], rbx
	lea	rsi, [rbx - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebp, eax
	cmp	rbx, r13
	jne	.label_2323
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_2314
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0xa0]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_2329
	jmp	.label_2313
.label_2323:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	test	r14, r14
	je	.label_2315
	test	byte ptr [r14 + 0x68], 0x40
	jne	.label_2319
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	jmp	.label_2320
.label_2315:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	r14d, r14d
	jmp	.label_2322
.label_2319:
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_2314
.label_2320:
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_2322
.label_2329:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_2327
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8d, dword ptr [rsp + 0xa0]
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2313
.label_2327:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	ecx, ebp
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_2324
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2313
.label_2324:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + rbx*8], r14
.label_2322:
	cmp	rbx, qword ptr [rsp + 0x28]
	jge	.label_2312
	inc	rbx
	lea	r12, [rsp + 0x10]
	mov	r15, rbx
	xor	r13d, r13d
	mov	rbp, qword ptr [rsp + 0x38]
	nop	
.label_2316:
	lea	rbx, [r15 - 1]
	mov	rax, qword ptr [rsp + 8]
	movsxd	rax, dword ptr [rax + 0xe0]
	cmp	r13, rax
	jg	.label_2312
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rsi, qword ptr [rax + r15*8]
	test	rsi, rsi
	je	.label_2318
	add	rsi, 8
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2313
.label_2318:
	test	r14, r14
	je	.label_2326
	add	r14, 0x20
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r12
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2313
.label_2326:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_2328
	mov	qword ptr [rsp + 0x60], rbx
	mov	r14, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r12
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xa0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2313
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_2313
.label_2328:
	mov	rdi, qword ptr [rsp + 8]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, rbx
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_2330
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2313
.label_2330:
	inc	r13
	test	r14, r14
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + r15*8], r14
	mov	eax, 0
	cmovne	r13, rax
	cmp	r15, qword ptr [rsp + 0x28]
	lea	r15, [r15 + 1]
	jl	.label_2316
	dec	r15
	mov	rbx, r15
.label_2312:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rdx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rdx + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rdx + 0x48], rax
	je	.label_2325
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 0x48]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_2314
.label_2325:
	mov	r15d, 1
.label_2314:
	mov	eax, r15d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2313:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	r15d, dword ptr [rsp + 4]
	jmp	.label_2314
.label_2317:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_2314
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r12, [rax + rcx + 1]
	lea	rbx, [r12 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_2314
	mov	rdi, qword ptr [rsi + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_2314
	mov	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r12, 3
	xor	esi, esi
	mov	rdx, r12
	call	memset
	mov	rsi, r15
	jmp	.label_2321
	nop	
	.section	.text
	.align	32
	#Procedure 0x417830

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x18]
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_2331
.label_2332:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_2333
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_2333:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2331:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_2333
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_2332
	.section	.text
	.align	32
	#Procedure 0x4178b0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	jl	.label_2336
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_2337
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_2336:
	test	rax, rax
	jle	.label_2334
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_2334
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_2334:
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	xor	eax, eax
	sub	r14, r15
	mov	cx, 0xffff
	cmovne	cx, ax
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rsi, qword ptr [rbx + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	jge	.label_2335
	mov	dword ptr [rbx + 0xe0], r14d
.label_2335:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2337:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_2335
	.section	.text
	.align	32
	#Procedure 0x417a30

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14d, ecx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	rsi, qword ptr [rbx + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_2339
	mov	dword ptr [rsp + 0xc], r14d
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2338
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr cs:[rax + rax]
.label_2341:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [rbx + rbx*2]
	lea	r12, [rax + rcx*8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	mov	r15d, dword ptr [rsp + 0xc]
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_2343
	mov	rdi, r13
	lea	rsi, [rsp + 0x10]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2342
	nop	dword ptr [rax + rax]
.label_2343:
	lea	rdi, [rsp + 0x10]
	mov	rsi, r12
	call	re_node_set_merge
.label_2342:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_2340
	inc	r14
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rbx + 8]
	mov	rbp, qword ptr [rsp + 0x30]
	jl	.label_2341
.label_2338:
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbx], xmm0
	xor	r15d, r15d
.label_2339:
	mov	eax, r15d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2340:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2339
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417b50

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
	mov	dword ptr [rsp + 0x2c], r8d
	mov	qword ptr [rsp + 0x38], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsi, r12
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_2345
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x30], rcx
.label_2358:
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_2347:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_2349
	mov	rbp, qword ptr [r15 - 8]
	add	rbp, r12
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, r12
	jne	.label_2354
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	mov	rbp, r14
	jne	.label_2348
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	r14d, eax
	mov	dword ptr [rsp + 8], r14d
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0x2c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	mov	r13, qword ptr [rsp + 0x18]
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	eax, ebp
	or	eax, ebx
	mov	ecx, 2
	or	eax, r14d
	jne	.label_2346
.label_2348:
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_2350
	nop	dword ptr [rax]
.label_2354:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_2344
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_2356
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_2350
.label_2344:
	lea	rbx, [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	je	.label_2353
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_2350
.label_2356:
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_2352
	xor	al, 1
	jne	.label_2352
.label_2353:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, rbx
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_2355
	mov	eax, dword ptr [rsp + 0xc]
.label_2355:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
.label_2350:
	test	ecx, ecx
	je	.label_2349
	cmp	ecx, 4
	jne	.label_2351
.label_2349:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_2347
	jmp	.label_2345
.label_2346:
	test	ebx, ebx
	cmovne	ebp, ebx
	test	r14d, r14d
	cmovne	ebp, r14d
	mov	dword ptr [rsp + 8], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebp
	jmp	.label_2348
.label_2352:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	ecx, dword ptr [rsp + 8]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0xc], ecx
	mov	dword ptr [rsp + 8], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_2350
	nop	word ptr cs:[rax + rax]
.label_2351:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rsp + 0xc]
	je	.label_2358
	jmp	.label_2357
.label_2345:
	xor	eax, eax
.label_2357:
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
	#Procedure 0x417e20

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	rbp, rdx
	mov	rcx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_2365
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x28], rbp
	nop	word ptr [rax + rax]
.label_2366:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13]
	mov	rbx, r15
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_2359
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r12
	mov	rbp, r12
	mov	r12, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2367
	mov	rcx, qword ptr [r13 + 0x18]
	mov	r13, qword ptr [rcx + r15*8]
	movsxd	rbx, eax
	add	rbx, r12
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x18], 0
	test	rsi, rsi
	mov	r12, rbp
	lea	rbp, [rsp + 0x10]
	je	.label_2368
	add	rsi, 8
	mov	rdi, rbp
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2363
.label_2368:
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_2362
	lea	rdi, [rsp + 0xc]
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	rdx, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_2360
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2360
	jmp	.label_2363
	nop	word ptr [rax + rax]
.label_2367:
	test	eax, eax
	mov	rcx, r12
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_2360
	nop	
.label_2359:
	add	rbx, qword ptr [r13]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	call	check_node_accept
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_2361
.label_2360:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rdi, qword ptr [rsp + 0x40]
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_2362
.label_2361:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_2366
.label_2365:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	eax, eax
.label_2364:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2362:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, 0xc
	jmp	.label_2364
.label_2363:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	jmp	.label_2364
	nop	
	.section	.text
	.align	32
	#Procedure 0x417ff0

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
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	jmp	.label_2373
	nop	dword ptr [rax]
.label_2374:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_2373:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2370
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2369
	cmp	qword ptr [rax + rcx], r14
	je	.label_2371
.label_2369:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2372
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_2375
	test	rcx, rcx
	jne	.label_2374
	jmp	.label_2370
	nop	dword ptr [rax + rax]
.label_2375:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_2374
	jmp	.label_2372
.label_2371:
	cmp	r15d, 9
	jne	.label_2370
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2372
.label_2370:
	xor	eax, eax
.label_2372:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4180d0

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
	mov	rbx, rsi
	cmp	qword ptr [r12 + 8], 0
	je	.label_2380
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	mov	qword ptr [rsp + 0x10], rbx
	and	rcx, qword ptr [rbx + 0x88]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_2382
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2378:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_2379
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_2377
.label_2379:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_2378
.label_2382:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2376
.label_2377:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2380:
	mov	dword ptr [rdi], 0
	jmp	.label_2381
.label_2376:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_2381:
	xor	ebx, ebx
	jmp	.label_2377
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4181a0

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	xor	eax, eax
	test	r12, r12
	je	.label_2384
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_2389
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_2390
	xor	eax, eax
.label_2392:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	esi, dword ptr [r8 + rbp + 8]
	mov	edi, esi
	and	edi, 0x3ffff
	cmp	edi, 1
	je	.label_2383
	mov	edi, esi
	shr	edi, 0x14
	movzx	ecx, byte ptr [r12 + 0x68]
	mov	ebx, ecx
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	sil, 0xc
	je	.label_2388
	cmp	sil, 4
	je	.label_2385
	cmp	sil, 2
	jne	.label_2386
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_2383
.label_2385:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_2383
.label_2386:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2383
.label_2388:
	or	byte ptr [r12 + 0x68], 0x80
.label_2383:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_2392
.label_2390:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_2387
.label_2384:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2389:
	mov	rdi, r12
	call	free
	jmp	.label_2391
.label_2387:
	mov	rdi, r12
	call	free_state
.label_2391:
	xor	eax, eax
	jmp	.label_2384
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4182d0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	movzx	r15d, byte ptr [r14 + rbx + 8]
	cmp	r15d, 7
	je	.label_2408
	mov	rdi, r13
	mov	r12, rcx
	mov	rsi, rcx
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_2395
	xor	eax, eax
	cmp	esi, 2
	jl	.label_2397
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_2401
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0xa
	je	.label_2397
.label_2401:
	cmp	byte ptr [rbp + 0xd8], 0
	js	.label_2409
	mov	eax, esi
	jmp	.label_2397
.label_2395:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_2397
	test	cl, cl
	je	.label_2397
	mov	rbx, qword ptr [r14 + rbx]
	cmp	qword ptr [rbx + 0x40], 0
	jne	.label_2411
	cmp	qword ptr [rbx + 0x48], 0
	jne	.label_2411
	xor	r14d, r14d
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_2416
.label_2411:
	mov	rdi, r13
	mov	ebp, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebp
	mov	r14d, eax
.label_2416:
	cmp	qword ptr [rbx + 0x28], 0
	jle	.label_2412
	mov	rax, qword ptr [rbx]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_2399:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_2402
	inc	rcx
	cmp	rcx, qword ptr [rbx + 0x28]
	jl	.label_2399
.label_2412:
	mov	r15d, esi
	cmp	qword ptr [rbx + 0x48], 0
	jle	.label_2400
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2417:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_2410
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x48]
	jl	.label_2417
.label_2400:
	xor	ecx, ecx
	cmp	qword ptr [rbx + 0x40], 0
	mov	esi, r15d
	jle	.label_2406
	mov	rax, qword ptr [rbx + 8]
	xor	edx, edx
	nop	
.label_2393:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_2415
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_2402
.label_2415:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbx + 0x40]
	jl	.label_2393
	jmp	.label_2406
.label_2409:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_2397
	mov	eax, esi
	jmp	.label_2397
.label_2410:
	mov	esi, r15d
.label_2402:
	mov	ecx, esi
.label_2406:
	test	byte ptr [rbx + 0x20], 1
	jne	.label_2407
	mov	eax, ecx
	jmp	.label_2397
.label_2407:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_2397
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_2397:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2408:
	mov	rsi, qword ptr [r13 + 8]
	mov	dl, byte ptr [rsi + rcx]
	xor	eax, eax
	cmp	dl, 0xc2
	jb	.label_2397
	mov	rdi, rcx
	lea	rcx, [rcx + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_2404
	xor	eax, eax
	jmp	.label_2397
.label_2404:
	mov	cl, byte ptr [rsi + rdi + 1]
	cmp	dl, 0xdf
	ja	.label_2413
	cmp	cl, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_2397
.label_2413:
	cmp	dl, 0xef
	ja	.label_2394
	mov	eax, 3
	cmp	dl, 0xe0
	jne	.label_2398
	cmp	cl, 0xa0
	jae	.label_2398
	xor	eax, eax
	jmp	.label_2397
.label_2394:
	cmp	dl, 0xf7
	ja	.label_2403
	mov	eax, 4
	cmp	dl, 0xf0
	jne	.label_2398
	cmp	cl, 0x90
	jae	.label_2398
	xor	eax, eax
	jmp	.label_2397
.label_2403:
	cmp	dl, 0xfb
	ja	.label_2405
	mov	eax, 5
	cmp	dl, 0xf8
	jne	.label_2398
	cmp	cl, 0x88
	jae	.label_2398
	xor	eax, eax
	jmp	.label_2397
.label_2405:
	cmp	dl, 0xfd
	ja	.label_2396
	mov	eax, 6
	cmp	dl, 0xfc
	jne	.label_2398
	cmp	cl, 0x84
	jae	.label_2398
	xor	eax, eax
	jmp	.label_2397
.label_2398:
	mov	ecx, eax
	lea	rdx, [rcx + rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_2414
	xor	eax, eax
	jmp	.label_2397
.label_2414:
	add	rdi, qword ptr [r13 + 8]
	mov	edx, 1
.label_2418:
	movzx	ebx, byte ptr [rdi + rdx]
	test	bl, bl
	jns	.label_2396
	cmp	bl, 0xbf
	ja	.label_2396
	inc	rdx
	cmp	rdx, rcx
	jl	.label_2418
	jmp	.label_2397
.label_2396:
	xor	eax, eax
	jmp	.label_2397
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418530

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	mov	cl, byte ptr [rbx + 8]
	xor	eax, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 6
	ja	.label_2421
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_2424]]
.label_3012:
	cmp	byte ptr [rbx], sil
	je	.label_2422
	xor	eax, eax
	jmp	.label_2421
.label_3013:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_2422
	xor	eax, eax
	jmp	.label_2421
.label_3015:
	test	sil, sil
	js	.label_2420
.label_3014:
	test	sil, sil
	je	.label_2426
	cmp	sil, 0xa
	jne	.label_2422
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2422
	xor	eax, eax
	jmp	.label_2421
.label_2426:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2425
.label_2422:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_2421
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_2423
	test	ecx, ecx
	jne	.label_2423
	xor	eax, eax
	jmp	.label_2421
.label_2423:
	mov	edx, ebp
	test	dh, 8
	je	.label_2427
	test	ecx, ecx
	je	.label_2427
.label_2420:
	xor	eax, eax
	jmp	.label_2421
.label_2427:
	test	dh, 0x20
	je	.label_2419
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2419
.label_2425:
	xor	eax, eax
	jmp	.label_2421
.label_2419:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2421:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418630
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418640

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_2428
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2434:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_2431
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2437
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2430
	test	ecx, ecx
	je	.label_2431
.label_2430:
	test	bh, 8
	je	.label_2433
	test	ecx, ecx
	jne	.label_2431
.label_2433:
	test	bh, 0x20
	je	.label_2436
	mov	ecx, eax
	and	ecx, 2
	je	.label_2431
.label_2436:
	test	bpl, bpl
	jns	.label_2437
	and	eax, 8
	je	.label_2431
	nop	word ptr cs:[rax + rax]
.label_2437:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_2431
	mov	rbp, r12
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	mov	ecx, dword ptr [r15 + 0xe0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	mov	rsi, r12
	call	clean_state_log_if_needed
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2428
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_2429
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_2432
	jmp	.label_2428
.label_2429:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_2432:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_2435
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_2435:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_2431
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2428
	nop	word ptr cs:[rax + rax]
.label_2431:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_2434
.label_2428:
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
	#Procedure 0x418840

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
	sub	rsp, 0x98
	mov	r15, rsi
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_2457
	lea	r12, [r14 + 0x1800]
	lea	r13, [r15 + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x58], xmm0
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x90], r15
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, r12
	call	group_nodes_into_DFAstates
	mov	r15, rax
	test	r15, r15
	jle	.label_2464
	lea	rsi, [r15 + 1]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	ja	.label_2442
	test	eax, eax
	jne	.label_2442
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	mov	qword ptr [rbp - 0x98], r13
	ja	.label_2474
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x44], 0
	jmp	.label_2478
.label_2474:
	call	malloc
	test	rax, rax
	je	.label_2442
	mov	cl, 1
	mov	dword ptr [rbp - 0x44], ecx
.label_2478:
	mov	qword ptr [rbp - 0x40], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x58], r15
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rbp - 0xc0]
	call	bitset_empty
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], r14
	mov	qword ptr [rbp - 0x68], r12
	nop	word ptr [rax + rax]
.label_2467:
	mov	qword ptr [rbp - 0x80], 0
	lea	rax, [r15 + r15*2]
	cmp	qword ptr [r14 + rax*8 + 8], 0
	jle	.label_2449
	mov	rcx, qword ptr [rbp - 0x60]
	lea	r12, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2471:
	mov	rax, qword ptr [r13 + r14*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_2456
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_2450
.label_2456:
	inc	r14
	cmp	r14, qword ptr [r12]
	jl	.label_2471
.label_2449:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2476
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_2450
.label_2476:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2479
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_2438
	nop	
.label_2479:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2448
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_2450
.label_2448:
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_2452
	cmp	dword ptr [rbx + 0xb4], 1
	mov	al, 1
	jg	.label_2454
	mov	rax, qword ptr [rbp - 0x50]
.label_2454:
	mov	qword ptr [rbp - 0x50], rax
.label_2452:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2438
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	jne	.label_2450
	nop	dword ptr [rax]
.label_2438:
	mov	rsi, r15
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x68]
	add	rsi, r12
	lea	rdi, [rbp - 0xc0]
	call	bitset_merge
	inc	r15
	cmp	r15, qword ptr [rbp - 0x58]
	mov	r14, qword ptr [rbp - 0x60]
	jl	.label_2467
	mov	rax, qword ptr [rbp - 0x50]
	and	al, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	edi, 8
	jne	.label_2472
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_2450
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x68]
	mov	r9, r12
	xor	r13d, r13d
	mov	r15, qword ptr [rbp - 0x58]
	nop	dword ptr [rax]
.label_2462:
	mov	rdi, qword ptr [rbp + r13*8 - 0xc0]
	test	rdi, rdi
	je	.label_2443
	mov	rcx, r14
	mov	edx, 1
	jmp	.label_2446
.label_2465:
	mov	r11, r9
	mov	r10, r8
	nop	dword ptr [rax]
.label_2469:
	add	r10, 8
	test	qword ptr [r11], rdx
	lea	r11, [r11 + 0x20]
	je	.label_2469
	test	qword ptr [rbx + r13*8 + 0xb8], rdx
	je	.label_2458
	mov	rax, qword ptr [r10 + r15*8]
	jmp	.label_2453
.label_2458:
	mov	rax, qword ptr [r10]
.label_2453:
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + rcx*8], rax
	jmp	.label_2463
	nop	word ptr [rax + rax]
.label_2446:
	test	dil, 1
	jne	.label_2465
.label_2463:
	add	rdx, rdx
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_2446
.label_2443:
	inc	r13
	add	r14, 0x40
	add	r9, 8
	cmp	r13, 4
	jne	.label_2462
.label_2447:
	lea	rdi, [rbp - 0xc0]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	je	.label_2466
	test	r15, r15
	jle	.label_2466
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2473:
	mov	esi, 0xa
	mov	rdi, r12
	call	bitset_contain
	test	al, al
	jne	.label_2460
	inc	rbx
	add	r12, 0x20
	cmp	rbx, r15
	jl	.label_2473
	jmp	.label_2466
.label_2460:
	mov	rax, r15
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x50], rcx
	je	.label_2466
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x850], rax
.label_2466:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	je	.label_2439
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_2439:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_2445
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2451:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2451
.label_2445:
	mov	rdi, r14
	call	free
	mov	al, 1
.label_2459:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2457:
	xor	eax, eax
	jmp	.label_2459
.label_2464:
	mov	rdi, r14
	call	free
	test	r15, r15
	je	.label_2470
	xor	eax, eax
	jmp	.label_2459
.label_2472:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rax + 0x60], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_2450
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	ebx, ebx
	mov	r12, qword ptr [rbp - 0x68]
	mov	r11, r12
	xor	esi, esi
	mov	r15, qword ptr [rbp - 0x58]
.label_2444:
	mov	rdi, qword ptr [rbp + rsi*8 - 0xc0]
	test	rdi, rdi
	je	.label_2468
	mov	rcx, rbx
	mov	eax, 1
	jmp	.label_2441
.label_2440:
	mov	r10, r11
	mov	r9, r8
.label_2475:
	add	r9, 8
	test	qword ptr [r10], rax
	lea	r10, [r10 + 0x20]
	je	.label_2475
	mov	rdx, qword ptr [r9]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx*8], rdx
	mov	rdx, qword ptr [r9 + r15*8]
	mov	qword ptr [r10 + rcx*8 + 0x800], rdx
	jmp	.label_2477
	nop	word ptr cs:[rax + rax]
.label_2441:
	test	dil, 1
	jne	.label_2440
.label_2477:
	add	rax, rax
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_2441
.label_2468:
	inc	rsi
	add	rbx, 0x40
	add	r11, 8
	cmp	rsi, 4
	jne	.label_2444
	jmp	.label_2447
.label_2450:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	mov	r15, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x40]
	je	.label_2442
	call	free
.label_2442:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_2455
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_2461:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2461
.label_2455:
	mov	rdi, r14
	call	free
	xor	eax, eax
	jmp	.label_2459
.label_2470:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_2459
	nop	
	.section	.text
	.align	32
	#Procedure 0x418db0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
	xor	r12d, r12d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2516
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x58], r13
	nop	dword ptr [rax + rax]
.label_2515:
	mov	rax, qword ptr [r13 + 0x18]
	mov	qword ptr [rsp + 8], r15
	mov	rbx, qword ptr [rax + r15*8]
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	lea	rbp, [r14 + rbx]
	mov	r15d, dword ptr [r14 + rbx + 8]
	movzx	eax, r15b
	mov	dword ptr [rsp + 0x14], eax
	cmp	eax, 1
	mov	qword ptr [rsp + 0x18], rbp
	jne	.label_2480
	movzx	esi, byte ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_set
.label_2502:
	shr	r15d, 8
	mov	eax, r15d
	and	eax, 0x3ff
	je	.label_2486
	test	r15b, 0x20
	je	.label_2500
	mov	esi, 0xa
	lea	rbp, [rsp + 0x20]
	mov	rdi, rbp
	call	bitset_contain
	mov	r13d, eax
	mov	rdi, rbp
	call	bitset_empty
	test	r13b, r13b
	je	.label_2507
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	r13, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x18]
.label_2500:
	test	r15b, r15b
	js	.label_2510
	lea	rax, [r14 + rbx + 8]
	test	r15b, 4
	je	.label_2518
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_2514
	test	byte ptr [rax + 2], 0x40
	je	.label_2510
.label_2514:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 1
	jle	.label_2517
	mov	rdx, qword ptr [rbp + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	dword ptr [rax]
.label_2520:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [rbp + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x20]
	mov	qword ptr [rsp + rsi*8 + 0x20], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_2520
	jmp	.label_2482
	nop	word ptr [rax + rax]
.label_2480:
	cmp	r15b, 7
	je	.label_2484
	cmp	r15b, 5
	je	.label_2485
	cmp	r15b, 3
	jne	.label_2483
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_2502
.label_2507:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x58]
	jmp	.label_2492
.label_2484:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	rax, qword ptr [rsp]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2498
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_2498:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	jns	.label_2502
	jmp	.label_2508
.label_2485:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 2
	jl	.label_2509
	mov	rsi, qword ptr [rbp + 0x78]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_2495
.label_2509:
	lea	rdi, [rsp + 0x20]
	call	bitset_set_all
.label_2495:
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_2513
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_2513:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jns	.label_2502
.label_2508:
	xor	esi, esi
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
	jmp	.label_2502
.label_2517:
	xor	ecx, ecx
	xor	edx, edx
	nop	
.label_2524:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x20]
	and	rsi, qword ptr [rbp + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_2524
.label_2482:
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_2483
.label_2518:
	test	r15b, 8
	je	.label_2486
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_2489
	test	byte ptr [rax + 2], 0x40
	jne	.label_2510
.label_2489:
	mov	rdi, qword ptr [rsp]
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_2490
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2521:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_2521
	jmp	.label_2506
	nop	word ptr [rax + rax]
.label_2510:
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
.label_2483:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2492
.label_2490:
	xor	eax, eax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_2497:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_2497
.label_2506:
	test	rax, rax
	je	.label_2483
	nop	word ptr cs:[rax + rax]
.label_2486:
	test	r12, r12
	jle	.label_2519
	mov	rbx, qword ptr [rsp + 0x50]
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2496
.label_2519:
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2501
.label_2523:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2487
	nop	dword ptr [rax + rax]
.label_2496:
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_2481
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	movzx	esi, byte ptr [rbp]
	call	bitset_contain
	mov	ecx, 0x13
	test	al, al
	je	.label_2499
.label_2481:
	mov	rcx, rbx
	xor	eax, eax
	xor	edx, edx
.label_2491:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_2491
	mov	ecx, 0x13
	test	rax, rax
	je	.label_2499
	xor	ebp, ebp
	xor	eax, eax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2505:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x20]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x60], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_2505
	test	rax, rax
	je	.label_2512
	mov	rdi, r12
	shl	rdi, 5
	mov	r15, qword ptr [rsp + 0x50]
	add	rdi, r15
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, r15
	lea	rsi, [rsp + 0x80]
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	lea	rax, [r14 + r14*2]
	lea	rsi, [rcx + rax*8]
	call	re_node_set_init_copy
	mov	ecx, 0x1a
	test	eax, eax
	jne	.label_2523
	inc	r12
	mov	r15, qword ptr [rsp + 8]
.label_2512:
	lea	rax, [r14 + r14*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_insert
	mov	ecx, 0x1a
	test	al, al
	je	.label_2487
	test	rbp, rbp
	mov	ecx, 0
	mov	eax, 0x11
	cmove	ecx, eax
.label_2487:
	mov	rbp, qword ptr [rsp + 0x18]
.label_2499:
	mov	eax, ecx
	and	al, 0x1f
	je	.label_2493
	cmp	al, 0x13
	jne	.label_2494
.label_2493:
	inc	r14
	add	rbx, 0x20
	cmp	r14, r12
	jl	.label_2496
	jmp	.label_2501
.label_2494:
	cmp	al, 0x11
	jne	.label_2503
	nop	dword ptr [rax]
.label_2501:
	cmp	r14, r12
	jne	.label_2504
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	lea	rbx, [rsp + 0x20]
	mov	r14, rbx
	mov	rsi, r14
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rbx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_init_1
	test	eax, eax
	mov	rbp, qword ptr [rsp]
	jne	.label_2511
	inc	r12
	mov	rdi, r14
	call	bitset_empty
	jmp	.label_2492
.label_2503:
	and	cl, 0x1f
	jne	.label_2488
.label_2504:
	mov	rbp, qword ptr [rsp]
.label_2492:
	inc	r15
	cmp	r15, qword ptr [r13 + 0x10]
	jl	.label_2515
.label_2516:
	mov	rax, r12
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2488:
	cmp	cl, 0x1a
	mov	rbx, qword ptr [rsp + 0x48]
	jne	.label_2516
.label_2511:
	test	r12, r12
	jle	.label_2522
	add	rbx, 0x10
	nop	
.label_2525:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2525
.label_2522:
	mov	r12, -1
	jmp	.label_2516
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419310

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419320

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2526:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_2526
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419350

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419360

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	ecx, esi
	rol	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419390

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4193a0

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	cmp	cl, 2
	jne	.label_2527
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_2528
	mov	eax, edx
	and	eax, 1
	jne	.label_2531
	mov	esi, ecx
	and	esi, 4
	jne	.label_2527
.label_2531:
	test	eax, eax
	je	.label_2530
	mov	eax, ecx
	and	eax, 8
	jne	.label_2527
.label_2530:
	test	dl, 2
	jne	.label_2529
	mov	eax, ecx
	and	eax, 0x20
	je	.label_2529
.label_2527:
	xor	eax, eax
.label_2528:
	ret	
.label_2529:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	eax, edx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419400

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 0x10], rcx
	mov	qword ptr [rdi + 0x18], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	qword ptr [rdi + 0x30], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419420

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	call	re_node_set_init_1
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2533
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2532
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2534:
	test	rbx, rbx
	jle	.label_2535
	mov	rdi, qword ptr [r14]
	inc	r13d
	cmp	qword ptr [rdi + rbx*8], 0
	mov	eax, 0
	cmovne	r13d, eax
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_2537
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_2536
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2532
.label_2536:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2534
	jmp	.label_2532
.label_2535:
	xor	ebp, ebp
	jmp	.label_2532
.label_2537:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_2532:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2533:
	mov	eax, ebp
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
	#Procedure 0x419520

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r14, r14
	jle	.label_2538
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_2539:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_2541
	test	rax, rax
	je	.label_2540
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2538
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2540
	jmp	.label_2538
	nop	dword ptr [rax + rax]
.label_2541:
	mov	qword ptr [rbx + rbp*8], rax
.label_2540:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_2539
.label_2538:
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
	#Procedure 0x4195d0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	mov	r15, rdx
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_2543
	test	r14, r14
	mov	qword ptr [rsp + 0x10], rsi
	je	.label_2544
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2542
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_2544
	lea	rcx, [rcx + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2542
.label_2544:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2545
	jmp	.label_2542
.label_2543:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_2545:
	test	r14, r14
	je	.label_2546
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2546
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2542
.label_2546:
	xor	eax, eax
.label_2542:
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
	#Procedure 0x4196e0

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_2547
	mov	rax, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2550:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_2548
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_2552
.label_2548:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_2551
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_2551
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_2551
.label_2552:
	mov	rcx, qword ptr [rsp + 8]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_2549
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_2553
.label_2549:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2553:
	or	cl, 4
	mov	eax, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2547
.label_2551:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_2550
.label_2547:
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
	#Procedure 0x419840

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	lea	rdi, [rsp + 4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	jne	.label_2555
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_2554
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_2555
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2554
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2556:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2555
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2556
.label_2554:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_2555:
	mov	eax, r13d
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
	#Procedure 0x419900

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rcx + 8], 0
	jle	.label_2557
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2567:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 0x10], rcx
	jge	.label_2558
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 8], rcx
	jl	.label_2558
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + rax*8]
	mov	rdx, qword ptr [r13]
	shl	rcx, 4
	mov	r14, qword ptr [rdx + rcx]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsi + rax*8 + 0x18], rcx
	jne	.label_2571
	cmp	qword ptr [r12 + 8], 0
	jle	.label_2558
	mov	r8, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [r13]
	mov	r9, -1
	xor	edi, edi
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_2560:
	mov	rbx, qword ptr [rcx + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rdx + rbp + 8]
	cmp	al, 9
	je	.label_2561
	cmp	al, 8
	jne	.label_2566
	cmp	r14, qword ptr [rdx + rbp]
	cmove	rsi, rbx
	jmp	.label_2566
	nop	word ptr cs:[rax + rax]
.label_2561:
	mov	rax, qword ptr [r13]
	cmp	r14, qword ptr [rax + rbp]
	cmove	r9, rbx
.label_2566:
	inc	rdi
	cmp	rdi, r8
	jl	.label_2560
	test	rsi, rsi
	js	.label_2563
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	mov	rbx, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbx
	test	eax, eax
	jne	.label_2557
.label_2563:
	test	r9, r9
	js	.label_2558
	cmp	qword ptr [r12 + 8], 0
	jle	.label_2558
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], r12
	jmp	.label_2559
.label_2571:
	cmp	qword ptr [r12 + 8], 0
	jle	.label_2558
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2569:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	edi, 0xfe
	and	edx, edi
	or	edx, 1
	cmp	edx, 9
	jne	.label_2564
	cmp	r14, qword ptr [rax + rcx]
	jne	.label_2564
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	jne	.label_2557
.label_2564:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_2569
	jmp	.label_2558
.label_2570:
	mov	rdi, r12
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 8]
	mov	rdx, r14
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	mov	r9, rbx
	mov	r13, r12
	mov	r12, r14
	jne	.label_2557
	dec	rbp
	jmp	.label_2568
.label_2559:
	mov	rax, qword ptr [r12 + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r9
	mov	r12, r13
	mov	r13, r9
	call	re_node_set_contains
	test	rax, rax
	je	.label_2562
	mov	r9, r13
	jmp	.label_2565
	nop	dword ptr [rax]
.label_2562:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rbx, r13
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_2570
	mov	r9, rbx
.label_2565:
	mov	r13, r12
	mov	r12, qword ptr [rsp + 8]
.label_2568:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_2559
	nop	
.label_2558:
	inc	r15
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rcx + 8]
	jl	.label_2567
.label_2557:
	add	rsp, 0x28
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
	#Procedure 0x419b80

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rsp + 8], rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	xor	r12d, r12d
	mov	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	cmp	rax, -1
	je	.label_2574
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2574
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x90], rbx
	nop	word ptr [rax + rax]
.label_2583:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	mov	rdx, qword ptr [rsp + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_2575
	cmp	eax, 4
	jne	.label_2572
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_2580
	jmp	.label_2572
	nop	word ptr cs:[rax + rax]
.label_2575:
	cmp	eax, 4
	jne	.label_2572
.label_2580:
	mov	r14, qword ptr [rsp + 0x30]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_2579:
	cmp	qword ptr [rbp], r15
	jne	.label_2573
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbx, rax
	sub	rbx, rcx
	add	rbx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	je	.label_2584
	lea	rax, [r15*8]
	mov	rcx, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rcx + 0x18]
	jmp	.label_2576
.label_2584:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
.label_2576:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_2573
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_2573
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_2577
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_2573
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_2582
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x70], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_init_copy
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2578
.label_2582:
	mov	qword ptr [rsp + 0x50], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	call	re_node_set_insert
	mov	r12d, 0xc
	test	al, al
	je	.label_2578
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x40]
	call	sift_states_backward
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2578
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_2581
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x80]
	call	merge_state_array
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2578
.label_2581:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbx
	call	re_node_set_remove_at
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
.label_2577:
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_2573:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_2579
.label_2572:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	cmp	rcx, qword ptr [rbx + 8]
	jl	.label_2583
.label_2578:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_2574
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_2574:
	mov	eax, r12d
	add	rsp, 0x98
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
	#Procedure 0x419ed0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_2596
	mov	rcx, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_2596
	add	rcx, rdx
	mov	rax, qword ptr [r14 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r14]
	cmp	rax, rbx
	jle	.label_2601
	add	rbx, rcx
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2596
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
.label_2601:
	mov	rcx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsi, qword ptr [r12 + 0x10]
	lea	r9, [rdx + rcx]
	mov	r10, qword ptr [r15 + 8]
	mov	r8, qword ptr [r15 + 0x10]
	add	r9, r10
	dec	rcx
.label_2591:
	dec	rdx
	mov	rdi, r10
.label_2595:
	lea	r10, [rdi - 1]
	mov	rbx, qword ptr [r8 + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_2600:
	cmp	qword ptr [rsi + rdx*8], rbx
	je	.label_2598
	jl	.label_2599
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2600
	jmp	.label_2586
	nop	word ptr cs:[rax + rax]
.label_2599:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_2595
	jmp	.label_2586
	nop	dword ptr [rax + rax]
.label_2598:
	test	rcx, rcx
	js	.label_2593
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_2588:
	cmp	qword ptr [rbx + rcx*8], rax
	jle	.label_2585
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2588
	jmp	.label_2593
.label_2585:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rbx + rdx*8]
	je	.label_2594
	nop	word ptr cs:[rax + rax]
.label_2593:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2594:
	test	rdx, rdx
	jle	.label_2586
	cmp	rdi, 2
	jge	.label_2591
.label_2586:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	add	rdx, rax
	lea	r10, [rcx + rdx - 1]
	mov	rcx, r10
	sub	rcx, r9
	lea	r8, [rcx + 1]
	lea	rdx, [rcx + rax + 1]
	mov	qword ptr [r14 + 8], rdx
	test	rax, rax
	jle	.label_2589
	test	rcx, rcx
	js	.label_2589
	dec	rax
	mov	rdi, qword ptr [r14 + 0x10]
	xor	edx, edx
.label_2592:
	lea	rcx, [rax + r8]
	lea	rbx, [rdi + rcx*8]
	nop	word ptr [rax + rax]
.label_2597:
	mov	rcx, qword ptr [rdi + r10*8]
	mov	rsi, qword ptr [rdi + rax*8]
	cmp	rcx, rsi
	jg	.label_2590
	mov	qword ptr [rbx], rsi
	add	rbx, -8
	test	rax, rax
	lea	rax, [rax - 1]
	jg	.label_2597
	jmp	.label_2589
	nop	
.label_2590:
	dec	r10
	dec	r8
	mov	qword ptr [rbx], rcx
	jne	.label_2592
	jmp	.label_2587
.label_2589:
	mov	rdx, r8
.label_2587:
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2596:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop
push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rbx + rbx*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2607
	mov	qword ptr [rsp], rdx
	lea	r12, [rax + rcx*8]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_2604:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + r14*8]
	cmp	rax, rbx
	je	.label_2602
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_2602
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	r13, [rax + rax*2]
	mov	rax, qword ptr [rcx + r13*8 + 0x10]
	mov	r15, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + r13*8 + 8], 2
	jl	.label_2608
	mov	rbp, qword ptr [rax + 8]
.label_2608:
	mov	rdi, r12
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2606
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2609
.label_2606:
	test	rbp, rbp
	jle	.label_2602
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2602
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_2602
.label_2609:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + r13*8]
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2603
	nop	word ptr cs:[rax + rax]
.label_2602:
	inc	r14
	mov	rax, qword ptr [r12 + 8]
	cmp	r14, rax
	jl	.label_2604
	test	rax, rax
	mov	r14, qword ptr [rsp]
	jle	.label_2607
	xor	ebx, ebx
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_2610:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r15
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2605
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r14
	call	re_node_set_remove_at
.label_2605:
	inc	rbx
	cmp	rbx, qword ptr [r12 + 8]
	jl	.label_2610
.label_2607:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	ebp, ebp
.label_2611:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2603:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2611
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a270

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
	jle	.label_2612
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2614:
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
	jne	.label_2613
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2614
.label_2612:
	xor	eax, eax
.label_2613:
	add	rsp, 0x38
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
	#Procedure 0x41a360

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_2615
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_2615
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
	je	.label_2615
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2615:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a3b0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2626
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_2625:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_2621
	cmp	al, 8
	je	.label_2627
	cmp	al, 4
	jne	.label_2616
	cmp	r8, -1
	je	.label_2616
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_2620:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_2618
	cmp	rdx, 0x3f
	jg	.label_2631
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_2618
.label_2631:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_2624
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2623
	nop	dword ptr [rax + rax]
.label_2624:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2623
	test	eax, eax
	jne	.label_2629
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_2630
	jmp	.label_2623
.label_2629:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_2618
.label_2630:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2618:
	mov	ecx, r12d
.label_2623:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2617
	test	al, al
	jne	.label_2619
.label_2617:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_2620
	jmp	.label_2616
	nop	word ptr cs:[rax + rax]
.label_2621:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_2616
	xor	eax, eax
	jmp	.label_2628
	nop	dword ptr [rax + rax]
.label_2627:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2616
	mov	eax, 0xffffffff
.label_2628:
	cmp	qword ptr [rdi], rdx
	jne	.label_2616
	jmp	.label_2622
.label_2619:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_2622
	nop	dword ptr [rax]
.label_2616:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_2625
.label_2626:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_2622:
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
	#Procedure 0x41a610

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, r8
	mov	rbp, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rax, rdi
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	check_node_accept_bytes
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_2633
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_2633
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_2632
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2633
.label_2632:
	xor	ebx, ebx
.label_2633:
	mov	eax, ebx
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
	#Procedure 0x41a690

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_2634
	cmp	qword ptr [r14], 0
	jle	.label_2636
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2635:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_2635
.label_2636:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_2634:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a6f0

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	cmp	cl, 9
	je	.label_2639
	cmp	cl, 8
	jne	.label_2637
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_2637
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_2639:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_2637
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_2640
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_2640:
	test	ecx, 0x80000
	je	.label_2638
	cmp	qword ptr [rdx + rax], -1
	je	.label_2638
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_2638:
	mov	qword ptr [rsi + rax + 8], r8
.label_2637:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a780

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	push	rbx
	mov	r14, r8
	mov	r15, rdi
	mov	rdi, qword ptr [r15]
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	test	rdi, rdi
	jle	.label_2641
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [r14 + 0x10], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2641:
	mov	edi, OFFSET FLAT:label_2642
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_2643
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a820

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, rbx
	shl	r14, 4
	mov	edi, dword ptr [rax + r14 + 8]
	test	dil, 8
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], rcx
	jne	.label_2648
	test	edi, 0x100000
	jne	.label_2650
	movzx	ecx, dil
	cmp	ecx, 4
	jne	.label_2651
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rdx + rax + 0x10]
	mov	rax, qword ptr [rdx + rax + 0x18]
	mov	r12, rax
	sub	r12, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_2654
	cmp	rax, -1
	mov	r13, -1
	je	.label_2645
	cmp	rdi, -1
	je	.label_2645
	test	r12, r12
	je	.label_2649
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, r12
	jl	.label_2645
	mov	rax, qword ptr [rbp + 8]
	add	rdi, rax
	add	rsi, rax
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_2645
	jmp	.label_2644
.label_2648:
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdx
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbp, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_2645
	lea	rax, [rbx + rbx*2]
	mov	r13, -1
	cmp	qword ptr [rbp + rax*8 + 8], 0
	jle	.label_2645
	add	r14, 8
	lea	r15, [rbp + rax*8 + 8]
	mov	r12, qword ptr [rbp + rax*8 + 0x10]
	mov	r13, -1
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2655:
	mov	rbx, qword ptr [r12 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_2652
	cmp	r13, -1
	jne	.label_2653
	mov	r13, rbx
.label_2652:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_2655
	jmp	.label_2645
.label_2650:
	mov	rcx, qword ptr [rcx]
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_2651
	movsxd	r12, eax
	jmp	.label_2644
.label_2653:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2647
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_2645
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, rbp
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	jne	.label_2647
	jmp	.label_2645
.label_2654:
	test	r12, r12
	jne	.label_2644
.label_2649:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_2645
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [rbx + rbx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r13, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2645
.label_2651:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r13, -1
	mov	r12d, 1
	test	al, al
	je	.label_2645
.label_2644:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 8]
	add	r12, qword ptr [rax]
	mov	qword ptr [rax], r12
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_2646
	mov	r13, -1
	cmp	r12, qword ptr [rbp + 0xa8]
	jg	.label_2645
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + r12*8]
	test	rdi, rdi
	je	.label_2645
	add	rdi, 8
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_2645
.label_2646:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], 0
.label_2647:
	mov	r13, rbx
.label_2645:
	mov	rax, r13
	add	rsp, 0x28
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
	#Procedure 0x41ab00

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	cmp	rcx, rax
	jne	.label_2656
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_2657
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_2656:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r14
	shl	rcx, 4
	lea	r12, [rcx + rcx*2]
	mov	qword ptr [rax + r12], rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + r12 + 8], r13
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r12 + 0x10]
	test	rdi, rdi
	je	.label_2657
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_2657:
	mov	eax, 0xc
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
	#Procedure 0x41abe0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_2658
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_2658:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2659
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_2659
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_2659:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41ac50

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ac70

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_2660
	nop	word ptr [rax + rax]
.label_2661:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2661
.label_2660:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aca0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2662
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_2665
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_2663
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_2663:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_2664
.label_2662:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_2665:
	xor	eax, eax
.label_2664:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ad30

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_2669
	test	cl, cl
	je	.label_2667
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_2667
	jmp	.label_2666
.label_2669:
	mov	eax, 1
	test	cl, cl
	je	.label_2666
.label_2667:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_2666
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_2668
	mov	rax, rbx
	jmp	.label_2666
.label_2668:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_2666:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41adb0

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
	mov	al, 1
	test	rbx, rbx
	je	.label_2670
	cmp	r15, rbx
	ja	.label_2671
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_2670
.label_2671:
	mov	r14d, OFFSET FLAT:label_34
	cmp	byte ptr [rbx], 0
	je	.label_2674
	lea	r14, [r12 + 9]
	jmp	.label_2677
.label_2681:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_2677:
	lea	r13, [r12 + 9]
.label_2680:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_2673
	cmp	byte ptr [r14], 0
	jne	.label_2679
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_2675
	cmp	byte ptr [r12 + 8], 0
	je	.label_2675
.label_2679:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_2680
	jmp	.label_2681
.label_2675:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_2672
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_2670
.label_2672:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_2678
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_2673:
	mov	al, 1
.label_2674:
	mov	qword ptr [r15 + 0x30], r14
.label_2670:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2678:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_2676
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_2674
.label_2676:
	xor	eax, eax
	jmp	.label_2670
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aed0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_2682
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_2683
	mov	ebp, dword ptr [r15]
.label_2683:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_2682:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41af20

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2684
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_2685
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_2687
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_2686
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_2686
.label_2687:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_2686
	mov	qword ptr [rsp], -1
.label_2686:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_2685
	mov	rax, qword ptr [rsp]
	jmp	.label_2688
.label_2685:
	mov	rax, -1
.label_2688:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2684:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41afd0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	ecx, al
	xor	eax, eax
	or	ecx, ebx
	sete	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b020

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_63
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b030

	.globl change_env
	.type change_env, @function
change_env:
	push	rbx
	xor	ebx, ebx
	cmp	byte ptr [rdi + 8], 0
	lea	rdi, [rdi + 9]
	cmove	rdi, rbx
	call	setenv_TZ
	test	eax, eax
	jne	.label_2689
	call	tzset
	mov	bl, 1
.label_2689:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b060

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_63
	test	rax, rax
	je	.label_2690
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_2690:
	jmp	unsetenv
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b080

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b0a0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b0b0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b0c0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b0d0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b0e0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b0f0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b100
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b120
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b140
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b160
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b180
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_2691
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_2691
.label_2692:
	ret	
.label_2691:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_2692
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b1b0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_2693
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_2693:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b1d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b1e0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b1f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_2694
.label_2695:
	ret	
.label_2694:
	cmp	edi, 0x7f
	je	.label_2695
	xor	eax, eax
	jmp	.label_2695
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b210
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b220
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b230
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b240
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b250
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_2696
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_2697]]
.label_2698:
	ret	
.label_2696:
	xor	eax, eax
	jmp	.label_2698
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b270
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_2699
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_2699:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b290

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b2a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_2700
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_2700:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b2c0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b2d0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b2e0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_2701
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2702
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_2702
.label_2701:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2702
	test	cl, cl
	jne	.label_2702
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_2702:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b350

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b360

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_2703
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_2708
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_2708
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_2709
.label_2708:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_2704
	mov	al, 1
	test	rbx, rbx
	je	.label_2709
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_2704:
	xor	eax, eax
.label_2709:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2703:
	mov	edi, OFFSET FLAT:label_2705
	mov	esi, OFFSET FLAT:label_2706
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_2707
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b3e0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b3f0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_2710
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_2710:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_2711
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2713
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2712
.label_2713:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2712:
	mov	edx, dword ptr [rax]
.label_2711:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b4c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2715
	cmp	byte ptr [rax], 0x43
	jne	.label_2717
	cmp	byte ptr [rax + 1], 0
	je	.label_2714
.label_2717:
	mov	esi, OFFSET FLAT:label_2716
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2715
.label_2714:
	xor	ebx, ebx
.label_2715:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b500

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_2718:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_2718
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b520

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b530

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_2719
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_2719:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b570

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_2720
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_2721
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_2721:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_2720:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_34
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_2722
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5e0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2723
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_2723:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b600

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	cmp	rax, rsi
	je	.label_2724
	mov	qword ptr [r14], rax
	jmp	.label_2725
.label_2724:
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	qword ptr [r14], r15
.label_2725:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2726
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_2726:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b650

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b670

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_2727
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_2727:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_2728
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2729
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2730
.label_2729:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2730:
	mov	ecx, dword ptr [rax]
.label_2728:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b730

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
	js	.label_2732
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2731
	mov	dword ptr [r14], ebp
	jmp	.label_2732
.label_2731:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_2732:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b780

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
	ja	.label_2733
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
	jmp	.label_2734
.label_2733:
	mov	eax, ebx
.label_2734:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b7d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_2744
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_2744:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_2745
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_2740
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_2741
	test	esi, esi
	jne	.label_2745
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2747
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2738
.label_2745:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_2737
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_2741
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_2743
.label_2740:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_2741:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2748
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2736
.label_2748:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2736:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_2743:
	cmp	eax, 6
	jne	.label_2737
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2746
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2735
.label_2737:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2739
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2742
.label_2747:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2738:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_2746:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2735:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_2739:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2742:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b990

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b9a0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_2749
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_2751
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2751
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_2752
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_2753
.label_2751:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2753
.label_2749:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_2753:
	test	ebx, ebx
	js	.label_2752
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2752
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_2750
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_2752
.label_2750:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_2752:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ba70

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
	#Procedure 0x41ba90

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bb50

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41bb60

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x41bb70

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x41bb80

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
