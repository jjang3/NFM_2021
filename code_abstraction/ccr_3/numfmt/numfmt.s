	.section	.text
	.align	32
	#Procedure 0x401a60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
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
	mov	esi, OFFSET FLAT:label_33
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
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
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
	mov	esi, OFFSET FLAT:label_36
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
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	sub	rsp, 8
	mov	edi, 1
	mov	eax, 0
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	push	rdx
	push	rdx
	push	rdx
	push	rdx
	push	rdx
	call	__printf_chk
	add	rsp, 0x30
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_27:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	#Procedure 0x401e90

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ec0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_41
	nop	
.label_54:
	mov	edi, OFFSET FLAT:label_46
	call	strcmp
	test	eax, eax
	je	.label_52
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_54
.label_52:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_46
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_44
	mov	ecx, OFFSET FLAT:label_45
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_43
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_46
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_45
	mov	ecx, OFFSET FLAT:label_46
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_49
	mov	ecx, OFFSET FLAT:label_50
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
	#Procedure 0x401fe0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_50
	call	setlocale
	mov	r14, rax
	mov	edi, OFFSET FLAT:label_63
	mov	esi, OFFSET FLAT:label_67
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_63
	call	textdomain
	mov	edi, 0x10000
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [rip + decimal_point]],  rax
	test	rax, rax
	je	.label_66
	cmp	byte ptr [rax], 0
	jne	.label_70
.label_66:
	mov	qword ptr [word ptr [rip + decimal_point]], OFFSET FLAT:label_80
.label_70:
	mov	rdi,  qword ptr [word ptr [rip + decimal_point]]
	call	strlen
	mov	dword ptr [dword ptr [rip + decimal_point_length]],  eax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_58
.label_855:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	byte ptr [byte ptr [rip + debug]],  1
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	edx, OFFSET FLAT:label_82
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x8e
	ja	.label_84
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_88]]
.label_843:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0
	je	.label_90
	cmp	byte ptr [rax + 1], 0
	jne	.label_95
.label_90:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [dword ptr [rip + delimiter]],  eax
	jmp	.label_58
.label_844:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	jmp	.label_58
.label_845:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_98
	mov	edx, OFFSET FLAT:scale_from_args
	mov	ecx, OFFSET FLAT:scale_from_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	dword ptr [dword ptr [rip + scale_from]],  eax
	jmp	.label_58
.label_846:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + from_unit_size]],  rax
	jmp	.label_58
.label_848:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + to_unit_size]],  rax
	jmp	.label_58
.label_850:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	jmp	.label_58
.label_851:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	jmp	.label_58
.label_854:
	mov	byte ptr [byte ptr [rip + debug]],  1
	jmp	.label_58
.label_856:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_77
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:header
	mov	r8d, OFFSET FLAT:label_50
	call	xstrtoumax
	test	eax, eax
	jne	.label_86
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	jne	.label_58
	jmp	.label_86
.label_847:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_94
	mov	edx, OFFSET FLAT:scale_to_args
	mov	ecx, OFFSET FLAT:scale_to_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	dword ptr [dword ptr [rip + scale_to]],  eax
	jmp	.label_58
.label_849:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_105
	mov	edx, OFFSET FLAT:round_args
	mov	ecx, OFFSET FLAT:round_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	dword ptr [dword ptr [rip + round_style]],  eax
	jmp	.label_58
.label_852:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:padding_width
	mov	r8d, OFFSET FLAT:label_50
	call	xstrtol
	test	eax, eax
	jne	.label_74
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_74
	jns	.label_58
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	qword ptr [word ptr [rip + padding_width]]
	jmp	.label_58
.label_853:
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	jne	.label_79
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	set_fields
	jmp	.label_58
.label_857:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + format_str]],  rax
	jmp	.label_58
.label_858:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_65
	mov	edx, OFFSET FLAT:inval_args
	mov	ecx, OFFSET FLAT:inval_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	dword ptr [dword ptr [rip + inval_style]],  eax
	jmp	.label_58
.label_77:
	mov	qword ptr [word ptr [rip + header]],  1
	jmp	.label_58
.label_842:
	cmp	qword ptr [word ptr [rip + format_str]],  0
	je	.label_102
	test	byte ptr [byte ptr [rip + grouping]],  1
	jne	.label_57
.label_102:
	test	r14, r14
	jne	.label_62
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_62:
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
	test	rdi, rdi
	jne	.label_73
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	jne	.label_73
	test	byte ptr [byte ptr [rip + debug]],  1
	je	.label_73
	mov	eax,  dword ptr [dword ptr [rip + scale_to]]
	or	eax,  dword ptr [dword ptr [rip + scale_from]]
	jne	.label_73
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	xor	al, 1
	test	al, 1
	je	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
.label_73:
	test	rdi, rdi
	je	.label_89
	call	parse_format_string
.label_89:
	cmp	byte ptr [byte ptr [rip + grouping]],  1
	jne	.label_93
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_96
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_93
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	jne	.label_93
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_93:
	mov	rdi,  qword ptr [word ptr [rip + padding_width]]
	call	setup_padding_buffer
	cmp	qword ptr [word ptr [rip + padding_width]],  0
	sete	al
	cmp	dword ptr [dword ptr [rip + delimiter]],  0x80
	sete	cl
	and	cl, al
	movzx	eax, cl
	mov	dword ptr [dword ptr [rip + auto_padding]],  eax
	cmp	dword ptr [dword ptr [rip + inval_style]],  0
	je	.label_61
	mov	byte ptr [byte ptr [rip + conv_exit_code]],  1
.label_61:
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	jge	.label_72
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_75
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	je	.label_75
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_75:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, 1
	cmp	eax, ebx
	jge	.label_71
	mov	ebp, 1
	nop	dword ptr [rax]
.label_91:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, 1
	call	process_line
	and	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, ebx
	jl	.label_91
	jmp	.label_59
.label_72:
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	je	.label_60
	xor	r14d, r14d
	lea	rbx, [rsp]
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax]
.label_69:
	movzx	eax,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	mov	edx, 0xa
	cmovne	edx, r14d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	mov	rsi, rbp
	call	getdelim
	test	rax, rax
	jle	.label_60
	mov	rdi, qword ptr [rsp]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	jne	.label_69
.label_60:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	r12d, r12d
	test	al, al
	mov	edx, 0xa
	cmovne	edx, r12d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getdelim
	mov	ebp, 1
	test	rax, rax
	jle	.label_78
	mov	ebp, 1
	lea	r14, [rsp]
	lea	r15, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	rdx, qword ptr [rsp]
	movsx	ecx, byte ptr [rdx + rax - 1]
	movzx	ebx,  byte ptr [byte ptr [rip + line_delim]]
	test	bl, bl
	mov	edi, 0xa
	cmovne	edi, r12d
	cmp	ecx, edi
	jne	.label_107
	mov	byte ptr [rdx + rax - 1], 0
.label_107:
	xor	esi, esi
	cmp	ecx, edi
	sete	sil
	mov	rdi, qword ptr [rsp]
	call	process_line
	and	ebp, eax
	movzx	eax,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	mov	edx, 0xa
	cmovne	edx, r12d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, r14
	mov	rsi, r15
	call	getdelim
	test	rax, rax
	jg	.label_87
.label_78:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	je	.label_59
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_59:
	test	ebp, ebp
	jne	.label_71
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_71:
	mov	eax,  dword ptr [dword ptr [rip + inval_style]]
	and	eax, 0xfffffffe
	xor	ecx, ecx
	cmp	eax, 2
	setne	cl
	add	ecx, ecx
	xor	eax, eax
	test	ebp, ebp
	cmove	eax, ecx
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_84:
	cmp	eax, 0xffffff7d
	je	.label_83
	cmp	eax, 0xffffff7e
	jne	.label_85
	xor	edi, edi
	call	usage
.label_85:
	mov	edi, 1
	call	usage
.label_83:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_46
	mov	edx, OFFSET FLAT:label_44
	mov	r8d, OFFSET FLAT:label_92
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	jmp	.label_100
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	jmp	.label_104
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_104
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	jmp	.label_104
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
.label_100:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
.label_104:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402760

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 8], 0
	mov	r8d, OFFSET FLAT:label_111
	xor	r15d, r15d
	test	rbx, rbx
	mov	rdi, r14
	je	.label_112
	movsx	edi, byte ptr [r14 + rbx - 1]
	call	c_isdigit
	mov	r8d, OFFSET FLAT:label_111
	xor	r15d, r15d
	test	al, al
	mov	rdi, r14
	jne	.label_112
	lea	rdi, [rbx + 2]
	call	xmalloc
	mov	r15, rax
	lea	r12, [r15 + rbx - 1]
	mov	qword ptr [rsp + 8], r12
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	cmp	rbx, 2
	jb	.label_110
	cmp	byte ptr [r15 + rbx - 1], 0x69
	jne	.label_110
	movsx	edi, byte ptr [r12 - 1]
	call	c_isdigit
	test	al, al
	je	.label_113
.label_110:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax + 1], 0x42
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax + 1], 0
	mov	r8d, OFFSET FLAT:label_114
	jmp	.label_115
.label_113:
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0
	mov	r8d, OFFSET FLAT:label_111
.label_115:
	mov	rdi, r15
.label_112:
	lea	rsi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	call	xstrtoumax
	test	eax, eax
	jne	.label_109
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	jne	.label_109
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_109
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_109:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028b0

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	qword ptr [rsp + 8], 0
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
.label_119:
	inc	r14
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	lea	rbx, [rcx + rbx + 1]
.label_132:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	al, 0x25
	jne	.label_143
	cmp	byte ptr [r12 + rbx + 1], 0x25
	jne	.label_152
	movzx	eax, byte ptr [r12 + rbx]
.label_143:
	test	al, al
	jne	.label_119
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
.label_121:
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
.label_152:
	inc	rbx
	xor	ebp, ebp
	jmp	.label_134
.label_145:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	inc	rbx
.label_134:
	lea	rdi, [r12 + rbx]
	mov	esi, 0x20
	call	__strspn_c1
	add	rbx, rax
	movzx	ecx, byte ptr [r12 + rbx]
	cmp	cl, 0x27
	je	.label_145
	cmp	cl, 0x30
	je	.label_147
	test	rax, rax
	jne	.label_134
	jmp	.label_149
.label_147:
	inc	rbx
	mov	bpl, 1
	jmp	.label_134
.label_149:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	add	rbx, r12
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtol
	mov	r13, rax
	cmp	dword ptr [r15], 0x22
	je	.label_126
	test	r13, r13
	je	.label_117
	cmp	qword ptr [rsp + 8], rbx
	je	.label_117
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_133
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_133
	test	bpl, bpl
	je	.label_142
	test	r13, r13
	jg	.label_133
.label_142:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_133:
	test	r13, r13
	js	.label_151
	test	bpl, bpl
	je	.label_154
	mov	qword ptr [word ptr [rip + zero_padding_width]],  r13
	jmp	.label_117
.label_151:
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	r13
.label_154:
	mov	qword ptr [word ptr [rip + padding_width]],  r13
.label_117:
	mov	rbx, qword ptr [rsp + 8]
	mov	al, byte ptr [rbx]
	sub	rbx, r12
	cmp	al, 0x2e
	je	.label_125
	test	al, al
	jne	.label_129
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	jmp	.label_121
.label_125:
	mov	dword ptr [r15], 0
	lea	rbx, [r12 + rbx + 1]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtol
	mov	qword ptr [word ptr [rip + user_precision]],  rax
	test	rax, rax
	js	.label_118
	cmp	dword ptr [r15], 0x22
	je	.label_118
	movsx	rbx, byte ptr [rbx]
	call	__ctype_b_loc
	cmp	rbx, 0x2b
	je	.label_118
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	test	ax, ax
	jne	.label_118
	mov	rbx, qword ptr [rsp + 8]
	sub	rbx, r12
.label_129:
	cmp	byte ptr [r12 + rbx], 0x66
	jne	.label_128
	inc	rbx
	mov	rax, rbx
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_136:
	xor	ecx, ecx
	cmp	byte ptr [r12 + rax], 0x25
	sete	cl
	lea	rax, [rcx + rax + 1]
.label_130:
	movzx	ecx, byte ptr [r12 + rax]
	cmp	cl, 0x25
	je	.label_146
	test	cl, cl
	jne	.label_136
	jmp	.label_137
	nop	
.label_146:
	cmp	byte ptr [r12 + rax + 1], 0x25
	je	.label_136
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	jmp	.label_121
.label_137:
	test	r14, r14
	je	.label_150
	mov	rdi, r12
	mov	rsi, r14
	call	xstrndup
	mov	qword ptr [word ptr [rip + format_str_prefix]],  rax
.label_150:
	cmp	byte ptr [r12 + rbx], 0
	je	.label_123
	add	rbx, r12
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [word ptr [rip + format_str_suffix]],  rax
.label_123:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_127
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	rsi, r12
	call	quote_n
	mov	r15, rax
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	mov	ecx, OFFSET FLAT:label_138
	mov	r13d, OFFSET FLAT:label_139
	test	al, al
	cmovne	r13, rcx
	mov	r12,  qword ptr [word ptr [rip + padding_width]]
	mov	al,  byte ptr [byte ptr [rip + padding_alignment]]
	mov	ecx, OFFSET FLAT:label_140
	mov	r14d, OFFSET FLAT:label_141
	test	al, al
	cmovne	r14, rcx
	mov	rsi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rsi, rsi
	mov	ebx, OFFSET FLAT:label_50
	cmove	rsi, rbx
	mov	edi, 1
	call	quote_n
	mov	rbp, rax
	mov	rax,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rax, rax
	cmovne	rbx, rax
	mov	edi, 2
	mov	rsi, rbx
	call	quote_n
	mov	rbx, rax
	sub	rsp, 8
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_135
	mov	eax, 0
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, r15
	mov	r8, r13
	mov	r9, r12
	push	rbx
	push	rbp
	push	r14
	call	__fprintf_chk
	add	rsp, 0x20
.label_127:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	jmp	.label_121
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	jmp	.label_121
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	jmp	.label_121
	nop	
	.section	.text
	.align	32
	#Procedure 0x402c20

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	mov	rax, rdi
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	ja	.label_155
	push	rax
	inc	rax
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
	add	rsp, 8
.label_155:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c60

	.globl process_line
	.type process_line, @function
process_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rsp]
	call	next_field
	mov	rcx, qword ptr [rsp]
	mov	ebp, 1
	mov	ebx, 1
	cmp	byte ptr [rcx], 0
	je	.label_159
	mov	r13b, 1
	mov	ebx, 1
	mov	r12d, 0x20
	lea	rbp, [rsp]
.label_157:
	mov	byte ptr [rcx], 0
	mov	rdi, rax
	mov	rsi, rbx
	call	process_field
	mov	r15d, eax
	test	r15b, r15b
	je	.label_158
	mov	r15d, r13d
.label_158:
	mov	edi,  dword ptr [dword ptr [rip + delimiter]]
	cmp	edi, 0x80
	cmove	edi, r12d
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputc_unlocked
	inc	qword ptr [rsp]
	inc	rbx
	mov	rdi, rbp
	call	next_field
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	r13d, r15d
	jne	.label_157
	and	r15b, 1
	movzx	ebp, r15b
.label_159:
	mov	rdi, rax
	mov	rsi, rbx
	call	process_field
	mov	ebx, eax
	test	r14b, r14b
	je	.label_156
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	ecx, ecx
	test	al, al
	mov	edi, 0xa
	cmovne	edi, ecx
	call	putchar_unlocked
.label_156:
	xor	eax, eax
	test	bl, bl
	cmovne	eax, ebp
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
	#Procedure 0x402d40

	.globl next_field
	.type next_field, @function
next_field:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	mov	al, byte ptr [r15]
	cmp	ecx, 0x80
	jne	.label_160
	test	al, al
	mov	rbx, r15
	je	.label_165
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_166:
	movzx	edi, al
	call	field_sep
	test	al, al
	je	.label_165
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_166
.label_165:
	mov	al, byte ptr [rbx]
	jmp	.label_162
	nop	dword ptr [rax + rax]
.label_164:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
.label_162:
	test	al, al
	je	.label_161
	movzx	edi, al
	call	field_sep
	test	al, al
	je	.label_164
	jmp	.label_161
.label_160:
	movsx	eax, al
	cmp	eax, ecx
	mov	rbx, r15
	je	.label_161
	mov	al, byte ptr [r15]
	test	al, al
	mov	rbx, r15
	je	.label_161
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_163:
	movsx	eax, al
	cmp	eax, ecx
	je	.label_161
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_163
.label_161:
	mov	qword ptr [r14], rbx
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402df0

	.globl process_field
	.type process_field, @function
process_field:
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r14, rdi
	fldz	
	fstp	xword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, rbx
	call	include_field
	test	al, al
	je	.label_171
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	mov	rcx, rbx
	call	process_suffixed_number
	test	eax, eax
	setne	al
	je	.label_169
	fld	xword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	call	prepare_padded_number
	test	eax, eax
	setne	al
.label_169:
	test	al, al
	je	.label_168
	call	print_padded_number
	jmp	.label_170
.label_171:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r14
	call	fputs_unlocked
.label_170:
	mov	al, 1
	jmp	.label_167
.label_168:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r14
	call	fputs_unlocked
	xor	eax, eax
.label_167:
	add	rsp, 0x38
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e90

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	bl, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl include_field
	.type include_field, @function
include_field:
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	test	rcx, rcx
	je	.label_172
	mov	rax, qword ptr [rcx]
	cmp	rax, -1
	je	.label_175
	add	rcx, 0x10
	nop	dword ptr [rax]
.label_174:
	cmp	rax, rdi
	ja	.label_173
	mov	al, 1
	cmp	qword ptr [rcx - 8], rdi
	jae	.label_176
.label_173:
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	cmp	rax, -1
	jne	.label_174
.label_175:
	xor	eax, eax
.label_176:
	ret	
.label_172:
	cmp	rdi, 1
	sete	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f00

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r13, rdi
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	je	.label_177
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	call	strlen
	cmp	rbp, rax
	jbe	.label_177
	add	rbp, r13
	sub	rbp, rax
	mov	rdi, rbx
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	je	.label_180
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_177
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_184
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_177
.label_180:
	mov	byte ptr [rbp], 0
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_177
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + suffix]]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_182
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_177:
	mov	r14b, byte ptr [r13]
	test	r14b, r14b
	mov	rbx, r13
	je	.label_181
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	rbx, r13
	nop	word ptr [rax + rax]
.label_183:
	movsx	edi, r14b
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2], 1
	je	.label_181
	movzx	r14d, byte ptr [rbx + 1]
	inc	rbx
	test	r14b, r14b
	jne	.label_183
.label_181:
	cmp	dword ptr [dword ptr [rip + auto_padding]],  0
	je	.label_187
	cmp	r12, 1
	jg	.label_190
	mov	eax, r13d
	sub	eax, ebx
	jne	.label_190
	mov	qword ptr [word ptr [rip + padding_width]],  0
	jmp	.label_179
.label_190:
	mov	rdi, r13
	call	strlen
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	mov	rdi, rax
	call	setup_padding_buffer
.label_179:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_187
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx,  qword ptr [word ptr [rip + padding_width]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_178
	xor	eax, eax
	call	__fprintf_chk
.label_187:
	fldz	
	fstp	xword ptr [rsp]
	lea	rsi, [rsp]
	mov	rdi, rbx
	mov	rdx, r15
	call	parse_human_number
	mov	ebp, eax
	cmp	ebp, 1
	jne	.label_186
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_186
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
.label_186:
	mov	rcx,  qword ptr [word ptr [rip + from_unit_size]]
	cmp	rcx, 1
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	jne	.label_185
	cmp	rax, 1
	je	.label_189
.label_185:
	fld	xword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rcx
	xor	edx, edx
	test	rcx, rcx
	setns	dl
	fild	qword ptr [rsp + 0x18]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_191]]
	fmulp	st(1)
	mov	qword ptr [rsp + 0x20], rax
	xor	ecx, ecx
	test	rax, rax
	setns	cl
	fild	qword ptr [rsp + 0x20]
	fadd	dword ptr [dword ptr [+ (rcx * 4) + label_191]]
	fdivp	st(1)
	fstp	xword ptr [rsp]
.label_189:
	fld	xword ptr [rsp]
	mov	rax, qword ptr [rsp + 0x10]
	fstp	xword ptr [rax]
	or	ebp, 1
	xor	eax, eax
	cmp	ebp, 1
	sete	al
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
	#Procedure 0x403120

	.globl prepare_padded_number
	.type prepare_padded_number, @function
prepare_padded_number:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xb0
	mov	rbx, rdi
	fld	xword ptr [rsp + 0xd0]
	mov	rax,  qword ptr [word ptr [rip + user_precision]]
	cmp	rax, -1
	cmovne	rbx, rax
	fld	st(0)
	fstp	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x24]
	mov	edi, 0xa
	call	expld
	fstp	st(0)
	mov	eax, dword ptr [rsp + 0x24]
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_201
	lea	rcx, [rax + rbx]
	cmp	rcx, 0x13
	jb	.label_201
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_195
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebp, ebp
	test	al, al
	sete	bpl
	add	ebp, ebp
	xor	r14d, r14d
	xor	edi, edi
	test	rbx, rbx
	je	.label_193
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_195
.label_201:
	cmp	eax, 0x1b
	jb	.label_199
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_195
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebx, ebx
	test	al, al
	sete	bl
	add	ebx, ebx
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
.label_194:
	mov	rdx, rcx
	call	error
	jmp	.label_195
.label_199:
	mov	edx,  dword ptr [dword ptr [rip + scale_to]]
	movzx	ecx,  byte ptr [byte ptr [rip + grouping]]
	mov	r8d,  dword ptr [dword ptr [rip + round_style]]
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x30]
	mov	edi, ebx
	call	double_to_human
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	je	.label_196
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	call	strlen
	mov	edx, 0x7f
	sub	rdx, rax
	mov	ecx, 0x80
	mov	rdi, rbp
	mov	rsi, rbx
	call	__strncat_chk
.label_196:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_205
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rsp + 0x30]
	call	quote
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_200
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_205:
	mov	rbx,  qword ptr [word ptr [rip + padding_width]]
	test	rbx, rbx
	je	.label_197
	lea	rdi, [rsp + 0x30]
	call	strlen
	cmp	rax, rbx
	jae	.label_197
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + padding_buffer_size]]
	movzx	r8d,  byte ptr [byte ptr [rip + padding_alignment]]
	xor	r8d, 1
	lea	rdi, [rsp + 0x30]
	lea	rcx, [rsp + 0x28]
	mov	r9d, 2
	call	mbsalign
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_192
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_203
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	jmp	.label_192
.label_197:
	lea	rbx, [rsp + 0x30]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rax + 1]
	call	setup_padding_buffer
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rbx
	call	strcpy
.label_192:
	mov	r14d, 1
.label_195:
	mov	eax, r14d
	add	rsp, 0xb0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_193:
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	jmp	.label_194
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rdi, rdi
	je	.label_206
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_206:
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rdi, rdi
	je	.label_207
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	pop	rax
	jmp	fputs_unlocked
.label_207:
	pop	rax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403400

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp], 0
	mov	r8d,  dword ptr [dword ptr [rip + scale_from]]
	lea	rsi, [rsp]
	mov	rdx, rcx
	mov	rcx, rax
	call	simple_strtod_human
	mov	ebx, eax
	cmp	ebx, 2
	jb	.label_209
	mov	edi, ebx
	mov	rsi, r14
	call	simple_strtod_fatal
	jmp	.label_208
.label_209:
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_208
	cmp	byte ptr [rax], 0
	je	.label_208
	mov	ebx, 5
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_208
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebp, ebp
	test	al, al
	sete	bpl
	add	ebp, ebp
	mov	ebx, 5
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	rsi, r14
	call	quote_n
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	edi, 1
	call	quote_n
	mov	r8, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	error
.label_208:
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
	#Procedure 0x4034d0

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	dword ptr [rsp + 0x28], r8d
	mov	edi, r8d
	call	default_scale_base
	mov	dword ptr [rsp + 0x20], eax
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_226
	mov	r12,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rsi, rbp
	call	quote_n
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	mov	edi, 1
	call	quote_n
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_222
	mov	r9d, 0x12
	xor	eax, eax
	mov	rdi, r12
	mov	rcx, r15
	call	__fprintf_chk
.label_226:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r14
	mov	rcx, rbx
	call	simple_strtod_float
	mov	r12d, eax
	cmp	r12d, 1
	ja	.label_218
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_221
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [r14]
	mov	ecx, dword ptr [rbx]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_224
	xor	eax, eax
	call	__fprintf_chk
.label_221:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rax, qword ptr [r13]
	xor	r15d, r15d
	cmp	byte ptr [rax], 0
	je	.label_215
	mov	dword ptr [rsp + 0x24], r12d
	mov	qword ptr [rsp + 0x38], r14
	mov	rbx, qword ptr [r13]
	mov	r15b, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	movzx	r12d, al
	call	__ctype_b_loc
	mov	rbp, rax
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + r12*2], 1
	je	.label_212
	inc	rbx
	nop	dword ptr [rax]
.label_225:
	mov	qword ptr [r13], rbx
	movzx	r15d, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [rbp]
	inc	rbx
	test	byte ptr [rcx + rax*2], 1
	jne	.label_225
	dec	rbx
.label_212:
	mov	r12d, dword ptr [rsp + 0x24]
	movsx	ebp, r15b
	mov	edi, ebp
	call	valid_suffix
	mov	ecx, eax
	mov	eax, 5
	test	ecx, ecx
	je	.label_216
	mov	eax, 4
	cmp	dword ptr [rsp + 0x28], 0
	je	.label_216
	mov	edi, ebp
	call	suffix_power
	mov	r15d, eax
	lea	rax, [rbx + 1]
	mov	qword ptr [r13], rax
	cmp	dword ptr [rsp + 0x28], 1
	jne	.label_214
	cmp	byte ptr [rax], 0x69
	jne	.label_214
	add	rbx, 2
	mov	qword ptr [r13], rbx
	mov	dword ptr [rsp + 0x20], 0x400
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_214
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	dword ptr [rsp + 0x20], 0x400
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_223
	mov	ecx, 0x400
	xor	eax, eax
	call	__fprintf_chk
.label_214:
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rax], 0
	mov	r14, qword ptr [rsp + 0x38]
.label_215:
	cmp	dword ptr [rsp + 0x28], 4
	jne	.label_220
	mov	rcx, qword ptr [r13]
	mov	eax, 6
	cmp	byte ptr [rcx], 0x69
	jne	.label_216
	inc	rcx
	mov	qword ptr [r13], rcx
.label_220:
	mov	ebp, dword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x34], ebp
	fild	dword ptr [rsp + 0x34]
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	powerld
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_217
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	ecx, ebp
	mov	r8d, r15d
	fstp	xword ptr [rsp + 0x28]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x28]
.label_217:
	fld	xword ptr [r14]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [r14]
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_213
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_219
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_218
.label_213:
	fstp	st(0)
.label_218:
	mov	eax, r12d
.label_216:
	add	rsp, 0x48
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
	#Procedure 0x403760

	.globl simple_strtod_fatal
	.type simple_strtod_fatal, @function
simple_strtod_fatal:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	xor	esi, esi
	mov	eax, edi
	cmp	edi, 6
	ja	.label_227
	jmp	qword ptr [word ptr [+ (rax * 8) + label_230]]
.label_739:
	mov	esi, OFFSET FLAT:label_232
	jmp	.label_227
.label_740:
	mov	esi, OFFSET FLAT:label_234
	jmp	.label_227
.label_741:
	mov	esi, OFFSET FLAT:label_228
	jmp	.label_227
.label_742:
	mov	esi, OFFSET FLAT:label_229
	jmp	.label_227
.label_743:
	mov	esi, OFFSET FLAT:label_231
.label_227:
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	jne	.label_233
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_233:
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebp, ebp
	test	al, al
	sete	bpl
	add	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
.label_738:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl default_scale_base
	.type default_scale_base, @function
default_scale_base:
	add	edi, -3
	cmp	edi, 2
	mov	ecx, 0x400
	mov	eax, 0x3e8
	cmovb	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x40
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	test	r14, r14
	je	.label_241
	mov	qword ptr [r14], 0
.label_241:
	lea	rcx, [rsp + 0x17]
	mov	rsi, rbx
	mov	rdx, r15
	call	simple_strtod_int
	mov	ebp, eax
	cmp	ebp, 1
	ja	.label_236
	mov	rdi, qword ptr [rbx]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	call	strncmp
	test	eax, eax
	jne	.label_236
	fldz	
	fstp	xword ptr [rsp + 0x20]
	movsxd	rdi,  dword ptr [dword ptr [rip + decimal_point_length]]
	add	rdi, qword ptr [rbx]
	mov	qword ptr [rbx], rdi
	lea	rsi, [rsp + 0x18]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x16]
	call	simple_strtod_int
	cmp	eax, 1
	ja	.label_238
	cmove	ebp, eax
	mov	eax, 3
	cmp	byte ptr [rsp + 0x16], 0
	je	.label_239
.label_238:
	mov	ebp, eax
.label_236:
	mov	eax, ebp
	add	rsp, 0x40
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_239:
	mov	r12, qword ptr [rsp + 0x18]
	sub	r12, qword ptr [rbx]
	fld	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp + 0x34]
	fld	dword ptr [dword ptr [rip + label_242]]
	fstp	xword ptr [rsp]
	mov	edi, r12d
	call	powerld
	fld	xword ptr [rsp + 0x34]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	test	r15, r15
	je	.label_240
	cmp	byte ptr [rsp + 0x17], 0
	fld	xword ptr [r15]
	je	.label_235
	fsubrp	st(1)
	jmp	.label_243
.label_235:
	faddp	st(1)
.label_243:
	fstp	xword ptr [r15]
	fldz	
.label_240:
	fstp	st(0)
	test	r14, r14
	je	.label_237
	mov	qword ptr [r14], r12
.label_237:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], rax
	jmp	.label_236
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403910

	.globl valid_suffix
	.type valid_suffix, @function
valid_suffix:
	push	rax
	mov	eax, edi
	mov	edi, OFFSET FLAT:label_111
	mov	edx, 9
	mov	esi, eax
	call	memchr
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	mov	eax, ecx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403930

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	add	edi, -0x45
	cmp	edi, 0x15
	ja	.label_244
	mov	eax, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_245]]
.label_824:
	mov	eax, 6
	ret	
.label_244:
	xor	eax, eax
.label_826:
	ret	
.label_825:
	mov	eax, 3
	ret	
.label_827:
	mov	eax, 2
	ret	
.label_828:
	mov	eax, 5
	ret	
.label_829:
	mov	eax, 4
	ret	
.label_830:
	mov	eax, 8
	ret	
.label_831:
	mov	eax, 7
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403980

	.globl powerld
	.type powerld, @function
powerld:
	fld	xword ptr [rsp + 8]
	fld1	
	test	edi, edi
	je	.label_246
	fstp	st(0)
	cmp	edi, 1
	je	.label_248
	mov	eax, 1
	sub	eax, edi
	fld	st(0)
	nop	word ptr [rax + rax]
.label_247:
	fmul	st(1)
	inc	eax
	jne	.label_247
.label_246:
	fstp	st(1)
	ret	
.label_248:
	fldz	
	fxch	st(1)
	fstp	st(1)
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039b0

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	cmp	byte ptr [rdi], 0x2d
	lea	rax, [rdi + 1]
	cmovne	rax, rdi
	sete	byte ptr [r15]
	mov	qword ptr [r13], rax
	xor	ebp, ebp
	fldz	
	test	rax, rax
	je	.label_253
	fstp	st(0)
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	xor	ecx, ecx
	fldz	
	test	al, al
	mov	ebp, 0
	je	.label_254
	fstp	st(0)
	fldz	
	xor	ebp, ebp
	mov	r12d, 1
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_251:
	mov	esi, ebx
	mov	rcx, qword ptr [r13]
	movsx	edx, byte ptr [rcx]
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	setp	bl
	setne	al
	or	al, bl
	add	edx, -0x30
	setne	bl
	or	bl, al
	movzx	ebx, bl
	add	ebx, esi
	mov	eax, 2
	cmp	ebx, 0x1b
	ja	.label_249
	cmp	ebx, 0x12
	cmova	ebp, r12d
	fmul	dword ptr [dword ptr [rip + label_242]]
	mov	dword ptr [rsp + 8], edx
	fiadd	dword ptr [rsp + 8]
	fstp	xword ptr [rsp + 0xc]
	lea	rax, [rcx + 1]
	mov	qword ptr [r13], rax
	movsx	edi, byte ptr [rcx + 1]
	call	c_isdigit
	fld	xword ptr [rsp + 0xc]
	mov	cl, 1
	test	al, al
	jne	.label_251
.label_254:
	test	cl, cl
	jne	.label_255
.label_253:
	fstp	xword ptr [rsp + 0xc]
	mov	rdi, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	call	strncmp
	fld	xword ptr [rsp + 0xc]
	mov	ecx, eax
	mov	eax, 3
	test	ecx, ecx
	jne	.label_249
.label_255:
	test	r14, r14
	je	.label_250
	cmp	byte ptr [r15], 0
	fld	st(0)
	fchs	
	fcmove	st(0), st(1)
	fstp	st(1)
	fstp	xword ptr [r14]
	jmp	.label_252
.label_250:
	fstp	st(0)
.label_252:
	mov	eax, ebp
	fldz	
.label_249:
	fstp	st(0)
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
	#Procedure 0x403ad0

	.globl expld
	.type expld, @function
expld:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rsi
	mov	ebp, edi
	fld	xword ptr [rsp + 0x60]
	xor	ebx, ebx
	fld	xword ptr [word ptr [rip + label_258]]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jb	.label_259
	fld	xword ptr [word ptr [rip + label_260]]
	fucomip	st(1)
	jb	.label_259
	fld	st(0)
	fstp	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	call	absld
	mov	eax, ebp
	mov	qword ptr [rsp + 0x28], rax
	fild	qword ptr [rsp + 0x28]
	fxch	st(1)
	fucomip	st(1)
	jae	.label_257
	fstp	st(0)
	fld	xword ptr [rsp + 0x1c]
.label_259:
	fldz	
	jmp	.label_262
.label_257:
	xor	ebx, ebx
	fld	xword ptr [rsp + 0x1c]
	fld	st(1)
	fstp	xword ptr [rsp + 0x34]
	fxch	st(1)
	nop	word ptr cs:[rax + rax]
.label_261:
	inc	ebx
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	call	absld
	fld	xword ptr [rsp + 0x34]
	fld	xword ptr [rsp + 0x1c]
	fxch	st(2)
	fucomip	st(1)
	jae	.label_261
.label_262:
	fstp	st(0)
	test	r14, r14
	je	.label_256
	mov	dword ptr [r14], ebx
.label_256:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15d, r8d
	mov	ebp, ecx
	mov	r12d, edx
	mov	r14, rsi
	mov	r13d, edi
	fld	xword ptr [rsp + 0xe0]
	fstp	xword ptr [rsp + 0x24]
	mov	byte ptr [rsp + 0x60], 0x25
	test	ebp, ebp
	je	.label_263
	lea	rbx, [rsp + 0x62]
	mov	byte ptr [rsp + 0x61], 0x27
	jmp	.label_274
.label_263:
	lea	rbx, [rsp + 0x61]
.label_274:
	mov	r9,  qword ptr [word ptr [rip + zero_padding_width]]
	test	r9, r9
	je	.label_277
	mov	esi, 0x3e
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_280
	xor	eax, eax
	mov	rdi, rbx
	call	__snprintf_chk
	cdqe	
	add	rbx, rax
.label_277:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_288
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_290
	xor	eax, eax
	call	__fprintf_chk
.label_288:
	test	r12d, r12d
	je	.label_270
	mov	edi, r12d
	call	default_scale_base
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rsp + 0x30], xmm0
	mov	dword ptr [rsp + 0x20], 0
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x20]
	mov	edi, eax
	call	expld
	fstp	xword ptr [rsp + 0x24]
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_279
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	ecx, dword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_282
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x30]
	call	__fprintf_chk
.label_279:
	mov	rdi,  qword ptr [word ptr [rip + user_precision]]
	cmp	rdi, -1
	je	.label_264
	imul	eax, dword ptr [rsp + 0x20], 3
	cmp	rax, rdi
	cmovl	edi, eax
	jmp	.label_269
.label_270:
	fld	dword ptr [dword ptr [rip + label_242]]
	fstp	xword ptr [rsp]
	mov	edi, r13d
	call	powerld
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x24]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	simple_round
	fld	xword ptr [rsp + 0x30]
	fdivp	st(1)
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	fld	st(0)
	fstp	xword ptr [rsp + 0x24]
	jne	.label_278
	test	ebp, ebp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, OFFSET FLAT:label_284
	mov	edx, OFFSET FLAT:label_285
	cmovne	rdx, rax
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	ecx, r13d
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x24]
.label_278:
	mov	byte ptr [rbx + 4], 0
	mov	dword ptr [rbx], 0x664c2a2e
	fstp	xword ptr [rsp]
	lea	r8, [rsp + 0x60]
	mov	esi, 0x80
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	mov	rdi, r14
	mov	r9d, r13d
	call	__snprintf_chk
	cmp	eax, 0x80
	jb	.label_271
	jmp	.label_275
.label_264:
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	call	absld
	xor	edi, edi
	fld	dword ptr [dword ptr [rip + label_242]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_269
	mov	edi, 1
.label_269:
	fld	dword ptr [dword ptr [rip + label_242]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	call	powerld
	fld	st(0)
	fstp	xword ptr [rsp + 0x54]
	fld	xword ptr [rsp + 0x24]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	simple_round
	fld	xword ptr [rsp + 0x54]
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	call	absld
	movsd	xmm0, qword ptr [rsp + 0x30]
	movsd	qword ptr [rsp + 0x40], xmm0
	fld	qword ptr [rsp + 0x40]
	fxch	st(1)
	fucomip	st(1)
	jae	.label_273
	fstp	st(0)
	fld	xword ptr [rsp + 0x24]
	jmp	.label_276
.label_273:
	fld	xword ptr [rsp + 0x24]
	fdivrp	st(1)
	inc	dword ptr [rsp + 0x20]
.label_276:
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x24]
	jne	.label_281
	jnp	.label_286
.label_281:
	fstp	xword ptr [rsp]
	call	absld
	fld	xword ptr [rsp + 0x48]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_287
	cmp	dword ptr [rsp + 0x20], 0
	setne	bpl
	jmp	.label_289
.label_286:
	fstp	st(0)
.label_287:
	xor	ebp, ebp
.label_289:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_266
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	ecx, dword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_267
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x30]
	call	__fprintf_chk
.label_266:
	mov	byte ptr [rbx + 6], 0
	mov	word ptr [rbx + 4], 0x7325
	mov	dword ptr [rbx], 0x664c2a2e
	mov	rbx,  qword ptr [word ptr [rip + user_precision]]
	cmp	rbx, -1
	movzx	eax, bpl
	cmove	ebx, eax
	mov	edi, dword ptr [rsp + 0x20]
	call	suffix_power_char
	mov	qword ptr [rsp + 0x10], rax
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	lea	r8, [rsp + 0x60]
	mov	esi, 0x7f
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	mov	rdi, r14
	mov	r9d, ebx
	call	__snprintf_chk
	cmp	eax, 0x7f
	jae	.label_275
	cmp	r12d, 4
	jne	.label_268
	mov	ecx, dword ptr [rsp + 0x20]
	test	ecx, ecx
	je	.label_268
	cdqe	
	mov	edx, 0x7f
	sub	rdx, rax
	mov	esi, OFFSET FLAT:label_272
	mov	rcx, -1
	mov	rdi, r14
	call	__strncat_chk
.label_268:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_271
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_283
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_271:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	sub	rsp, 0x10
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f40

	.globl absld
	.type absld, @function
absld:
	fld	xword ptr [rsp + 8]
	fldz	
	fucomip	st(1)
	fld	st(0)
	fchs	
	fxch	st(1)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl simple_round
	.type simple_round, @function
simple_round:
	sub	rsp, 0x48
	fld	xword ptr [rsp + 0x50]
	fld	xword ptr [word ptr [rip + label_291]]
	fld	st(1)
	fdiv	st(1)
	fnstcw	word ptr [rsp + 0x1e]
	movzx	eax, word ptr [rsp + 0x1e]
	mov	word ptr [rsp + 0x1e], 0xc7f
	fldcw	word ptr [rsp + 0x1e]
	mov	word ptr [rsp + 0x1e], ax
	fistp	qword ptr [rsp + 0x28]
	fldcw	word ptr [rsp + 0x1e]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x30], rax
	fild	qword ptr [rsp + 0x30]
	fmulp	st(1)
	fsub	st(1), st(0)
	fldz	
	mov	eax, edi
	cmp	edi, 4
	ja	.label_292
	fstp	st(0)
	fstp	xword ptr [rsp + 0x3c]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_294]]
.label_718:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	jmp	.label_293
.label_719:
	fstp	xword ptr [rsp]
	call	simple_round_floor
	jmp	.label_293
.label_720:
	fstp	xword ptr [rsp]
	call	simple_round_from_zero
	jmp	.label_293
.label_721:
	fstp	xword ptr [rsp]
	call	simple_round_to_zero
	jmp	.label_293
.label_722:
	fstp	xword ptr [rsp]
	call	simple_round_nearest
.label_293:
	mov	qword ptr [rsp + 0x20], rax
	fild	qword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x3c]
	faddp	st(1)
	fldz	
	fldz	
	fxch	st(1)
	fxch	st(2)
.label_292:
	fstp	st(2)
	fstp	st(0)
	add	rsp, 0x48
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404010

	.globl suffix_power_char
	.type suffix_power_char, @function
suffix_power_char:
	cmp	edi, 8
	ja	.label_295
	movsxd	rax, edi
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + label_297]]
	ret	
.label_295:
	mov	eax, OFFSET FLAT:label_296
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404030

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	fld	xword ptr [rsp + 8]
	fnstcw	word ptr [rsp - 0x12]
	movzx	eax, word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], 0xc7f
	fldcw	word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], ax
	fld	st(0)
	fistp	qword ptr [rsp - 0x10]
	fldcw	word ptr [rsp - 0x12]
	mov	rcx, qword ptr [rsp - 0x10]
	mov	qword ptr [rsp - 8], rcx
	fild	qword ptr [rsp - 8]
	xor	eax, eax
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	add	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl simple_round_floor
	.type simple_round_floor, @function
simple_round_floor:
	sub	rsp, 0x18
	fld	xword ptr [rsp + 0x20]
	fchs	
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	neg	rax
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0

	.globl simple_round_from_zero
	.type simple_round_from_zero, @function
simple_round_from_zero:
	sub	rsp, 0x18
	fld	xword ptr [rsp + 0x20]
	fldz	
	fucomip	st(1)
	jbe	.label_298
	fstp	xword ptr [rsp]
	call	simple_round_floor
	add	rsp, 0x18
	ret	
.label_298:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	fld	xword ptr [rsp + 8]
	fnstcw	word ptr [rsp - 0xa]
	movzx	eax, word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], ax
	fistp	qword ptr [rsp - 8]
	fldcw	word ptr [rsp - 0xa]
	mov	rax, qword ptr [rsp - 8]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404100

	.globl simple_round_nearest
	.type simple_round_nearest, @function
simple_round_nearest:
	fld	xword ptr [rsp + 8]
	fldz	
	xor	eax, eax
	fucomip	st(1)
	seta	al
	shl	rax, 4
	fld	xword ptr [word ptr [rax + label_299]]
	faddp	st(1)
	fnstcw	word ptr [rsp - 0xa]
	movzx	eax, word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], ax
	fistp	qword ptr [rsp - 8]
	fldcw	word ptr [rsp - 0xa]
	mov	rax, qword ptr [rsp - 8]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rdi
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], esi
	and	esi, 1
	mov	dword ptr [rsp + 0x24], esi
	je	.label_315
	movzx	ecx, byte ptr [r12]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_322
	movzx	eax, byte ptr [r12 + 1]
	neg	eax
.label_322:
	lea	rcx, [r12 + 1]
	xor	ebp, ebp
	test	eax, eax
	sete	bpl
	cmove	r12, rcx
.label_315:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r14b, bpl
	mov	al, bpl
	mov	dword ptr [rsp + 8], eax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_329
	nop	word ptr cs:[rax + rax]
.label_313:
	mov	qword ptr [rsp + 0x18], rbx
	inc	r12
	xor	ebp, ebp
.label_329:
	mov	dword ptr [rsp + 0xc], r14d
	and	r14b, 1
	xor	r13d, r13d
	jmp	.label_337
	nop	dword ptr [rax + rax]
.label_328:
	inc	r12
	mov	r13b, 1
.label_337:
	movsx	ebx, byte ptr [r12]
	cmp	ebx, 0x2c
	je	.label_301
	cmp	bl, 0x2d
	je	.label_349
	mov	edi, ebx
	call	to_uchar_0
	movzx	r15d, al
	call	__ctype_b_loc
	test	bl, bl
	je	.label_301
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r15*2]
	and	eax, 1
	test	ax, ax
	jne	.label_301
	add	ebx, -0x30
	cmp	ebx, 9
	ja	.label_308
	cmp	qword ptr [word ptr [rip + set_fields.num_start]],  0
	setne	al
	test	r13b, al
	jne	.label_311
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  r12
.label_311:
	test	r14b, r14b
	je	.label_310
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_316
	nop	word ptr [rax + rax]
.label_310:
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
.label_316:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	ja	.label_320
	lea	rax, [rbp + rbp*4]
	movsx	rcx, byte ptr [r12]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, rbp
	cmovae	rbp, rax
	jb	.label_320
	cmp	rbp, -1
	jne	.label_328
	jmp	.label_320
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	r14d, dword ptr [rsp + 0xc]
	test	r14b, 1
	jne	.label_340
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_334
	mov	rdi, rbp
	mov	rsi, rbp
	call	add_range_pair
	jmp	.label_342
	nop	dword ptr [rax]
.label_340:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 8]
	or	cl, al
	and	cl, 1
	mov	eax, 1
	mov	rbx, qword ptr [rsp + 0x18]
	cmove	rbx, rax
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_348
	test	cl, cl
	je	.label_350
.label_348:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	jne	.label_351
	mov	rsi, -1
	mov	rdi, rbx
	jmp	.label_300
.label_349:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_304
	mov	eax, dword ptr [rsp + 8]
	and	al, 1
	sete	cl
	test	rbp, rbp
	jne	.label_309
	test	cl, cl
	je	.label_312
.label_309:
	test	al, al
	mov	eax, 1
	cmove	rbp, rax
	mov	r14b, 1
	mov	rbx, rbp
	jmp	.label_313
.label_351:
	cmp	rbp, rbx
	jb	.label_318
	mov	rdi, rbx
	mov	rsi, rbp
.label_300:
	call	add_range_pair
	xor	r14d, r14d
.label_342:
	cmp	byte ptr [r12], 0
	je	.label_321
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 0
	jmp	.label_313
.label_321:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	test	rsi, rsi
	je	.label_326
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	call	qsort
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	je	.label_333
	xor	ebx, ebx
.label_306:
	mov	r14, rbx
	lea	rbx, [r14 + 1]
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jae	.label_336
.label_307:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rcx, rbx
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	ja	.label_336
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	mov	rbp, qword ptr [rax + rcx + 8]
	cmp	rbp, rdx
	cmova	rdx, rbp
	mov	qword ptr [rsi], rdx
	lea	rsi, [rax + rcx + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	call	memmove
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	dec	rax
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	cmp	rbx, rax
	jb	.label_307
.label_336:
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jb	.label_306
.label_333:
	mov	eax, dword ptr [rsp + 4]
	test	al, 2
	je	.label_314
	call	complement_rp
.label_314:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx - 0x10], xmm0
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_320:
	mov	rbx,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	esi, OFFSET FLAT:label_331
	mov	rdi, rbx
	call	strspn
	mov	rdi, rbx
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_335
	mov	esi, OFFSET FLAT:label_338
	jmp	.label_339
.label_308:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_341
	mov	esi, OFFSET FLAT:label_344
	jmp	.label_345
.label_335:
	mov	esi, OFFSET FLAT:label_347
.label_339:
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
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_341:
	mov	esi, OFFSET FLAT:label_305
.label_345:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_334:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_317
	mov	esi, OFFSET FLAT:label_319
	jmp	.label_303
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	jmp	.label_303
.label_304:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_325
	mov	esi, OFFSET FLAT:label_324
	jmp	.label_303
.label_312:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_317
	mov	esi, OFFSET FLAT:label_319
	jmp	.label_303
.label_317:
	mov	esi, OFFSET FLAT:label_327
	jmp	.label_303
.label_318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	jmp	.label_303
.label_325:
	mov	esi, OFFSET FLAT:label_332
.label_303:
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
.label_326:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_323
	mov	esi, OFFSET FLAT:label_343
	jmp	.label_303
.label_323:
	mov	esi, OFFSET FLAT:label_346
	jmp	.label_303
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	cmp	rax,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_352
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	esi, OFFSET FLAT:n_frp_allocated
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
.label_352:
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax], rbx
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	rdx, rax
	shl	rdx, 4
	mov	qword ptr [rcx + rdx + 8], r14
	inc	rax
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404670

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	xor	ecx, ecx
	cmp	eax, dword ptr [rsi]
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404690

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	r15,  qword ptr [word ptr [rip + n_frp]]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rsi, qword ptr [r14]
	cmp	rsi, 2
	jb	.label_353
	dec	rsi
	mov	edi, 1
	call	add_range_pair
.label_353:
	cmp	r15, 2
	jb	.label_356
	lea	r12, [r15 - 1]
	lea	rbx, [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_355:
	mov	rdi, qword ptr [rbx - 8]
	mov	rsi, qword ptr [rbx]
	inc	rdi
	cmp	rdi, rsi
	je	.label_354
	dec	rsi
	call	add_range_pair
.label_354:
	add	rbx, 0x10
	dec	r12
	jne	.label_355
.label_356:
	shl	r15, 4
	mov	rdi, qword ptr [r14 + r15 - 8]
	cmp	rdi, -1
	je	.label_357
	inc	rdi
	mov	rsi, -1
	call	add_range_pair
.label_357:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404750
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404780

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790

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
	je	.label_361
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_358:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_359
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_363
	cmp	qword ptr [rsp + 8], -1
	je	.label_364
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_360
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_359
.label_360:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_359
.label_364:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_359:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_358
	jmp	.label_362
.label_361:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_362:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_363:
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
	#Procedure 0x404890

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
	je	.label_365
	mov	esi, OFFSET FLAT:label_366
	jmp	.label_367
.label_365:
	mov	esi, OFFSET FLAT:label_368
.label_367:
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
	#Procedure 0x404900

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
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_375
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_371:
	test	rbp, rbp
	je	.label_374
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_370
.label_374:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_376
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_373
	nop	word ptr cs:[rax + rax]
.label_370:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_372
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_373:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_371
.label_375:
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
	#Procedure 0x404a00

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
	jns	.label_377
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
.label_377:
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
	#Procedure 0x404a70
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
	je	.label_378
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_379:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_378
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_379
.label_378:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_380
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_380
.label_381:
	ret	
.label_380:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_381
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b10
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_382
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_382:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
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
	#Procedure 0x404b50
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_383
.label_384:
	ret	
.label_383:
	cmp	edi, 0x7f
	je	.label_384
	xor	eax, eax
	jmp	.label_384
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b70

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
	#Procedure 0x404b80
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
	#Procedure 0x404b90
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
	#Procedure 0x404ba0
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
	#Procedure 0x404bb0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_385
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_386]]
.label_387:
	ret	
.label_385:
	xor	eax, eax
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_388
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_388:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0

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
	#Procedure 0x404c00
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_389
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_389:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c20
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
	#Procedure 0x404c30
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
	#Procedure 0x404c40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_393
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_390
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_390
.label_393:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_394
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_392
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_394:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_392:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_395
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12d, r9d
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rdi
	call	strlen
	mov	r14, rax
	test	r12b, 2
	mov	qword ptr [rsp + 0x18], rbp
	mov	dword ptr [rsp + 4], r12d
	mov	dword ptr [rsp + 0x2c], r13d
	jne	.label_401
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_401
	xor	edi, edi
	xor	edx, edx
	mov	rsi, rbp
	call	mbstowcs
	xor	ecx, ecx
	mov	r15, rax
	cmp	r15, -1
	je	.label_397
	lea	rdi, [r15*4 + 4]
	call	malloc
	mov	rcx, rax
	test	rcx, rcx
	je	.label_397
	lea	r13, [r15 + 1]
	mov	rdi, rcx
	mov	r12, rcx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	call	mbstowcs
	test	rax, rax
	je	.label_403
	mov	dword ptr [r12 + r15*4], 0
	mov	rdi, r12
	call	wc_ensure_printable
	mov	r15d, eax
	mov	rdi, r12
	mov	rsi, r13
	call	wcswidth
	movsxd	r13, eax
	test	r15b, r15b
	mov	qword ptr [rsp + 0x10], r12
	je	.label_406
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r12
	call	wcstombs
	mov	r15, rax
	jmp	.label_398
.label_401:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ecx, ecx
	mov	r13, r14
.label_402:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax]
	cmp	r13, r12
	cmova	r13, r12
	cmova	r14, r12
	xor	r15d, r15d
	sub	r12, r13
	cmovbe	r12, r15
	mov	qword ptr [rax], r13
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_399
	cmp	eax, 1
	jne	.label_408
	mov	r15, r12
	xor	r12d, r12d
	jmp	.label_399
.label_408:
	mov	rax, r12
	shr	rax, 1
	and	r12d, 1
	add	r12, rax
	mov	r15, r12
	mov	r12, rax
.label_399:
	mov	edx, dword ptr [rsp + 4]
	xor	eax, eax
	test	dl, 4
	cmovne	r15, rax
	test	dl, 8
	cmovne	r12, rax
	test	rbx, rbx
	je	.label_405
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rbp, [rdi + rbx - 1]
	mov	rbx, rcx
	mov	rsi, rbp
	mov	rdx, r15
	call	mbs_align_pad
	mov	rdx, rbp
	sub	rdx, rax
	cmp	r14, rdx
	cmovb	rdx, r14
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x18]
	call	__mempcpy_chk
	mov	rdi, rax
	mov	rsi, rbp
	mov	rdx, r12
	call	mbs_align_pad
	mov	rcx, rbx
.label_405:
	add	r15, r14
	add	r15, r12
.label_400:
	mov	rdi, rcx
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_397:
	mov	r15, -1
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	r12b, 1
	mov	r13, r14
	jne	.label_402
	jmp	.label_400
.label_403:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r13, r14
	mov	rcx, r12
	jmp	.label_402
.label_406:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r13, qword ptr [rax]
	mov	r15, r14
	jbe	.label_404
.label_398:
	inc	r15
	mov	rdi, r15
	call	malloc
	mov	rcx, rax
	test	rcx, rcx
	je	.label_407
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rbp, rcx
	call	wc_truncate
	mov	r13, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	call	wcstombs
	mov	rcx, r14
	mov	r14, rax
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_402
.label_404:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_402
.label_407:
	mov	r15, -1
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_402
	jmp	.label_400
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fc0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	je	.label_409
	add	rbx, 4
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_410:
	call	iswprint
	test	eax, eax
	jne	.label_411
	mov	dword ptr [rbx - 4], 0xfffd
	mov	bpl, 1
.label_411:
	mov	edi, dword ptr [rbx]
	add	rbx, 4
	test	edi, edi
	jne	.label_410
	jmp	.label_412
.label_409:
	xor	ebp, ebp
.label_412:
	and	bpl, 1
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	xor	eax, eax
	test	edi, edi
	je	.label_413
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_415:
	call	wcwidth
	cmp	eax, -1
	jne	.label_414
	mov	dword ptr [rbx], 0xfffd
	mov	eax, 1
.label_414:
	cdqe	
	add	rax, r15
	cmp	rax, r14
	ja	.label_416
	mov	edi, dword ptr [rbx + 4]
	add	rbx, 4
	test	edi, edi
	mov	r15, rax
	jne	.label_415
	jmp	.label_413
.label_416:
	mov	rax, r15
.label_413:
	mov	dword ptr [rbx], 0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405070

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, rbx
	sub	rax, r14
	jae	.label_417
	test	r15, r15
	je	.label_417
	mov	rdx, r15
	neg	rdx
	cmp	rax, rdx
	cmovae	rdx, rax
	neg	rdx
	mov	esi, 0x20
	mov	rdi, rbx
	call	memset
	mov	eax, 1
	sub	rax, r15
.label_418:
	inc	rbx
	cmp	rbx, r14
	jae	.label_417
	test	rax, rax
	lea	rax, [rax + 1]
	jne	.label_418
.label_417:
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4050d0
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], ecx
	mov	dword ptr [rsp], edx
	mov	r13, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r13]
	xor	ebp, ebp
	mov	rax, r15
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_421:
	cmp	rax, rbx
	jb	.label_419
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbp
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_420
	mov	qword ptr [r13], r15
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r13
	mov	r8d, dword ptr [rsp]
	mov	r9d, dword ptr [rsp + 4]
	call	mbsalign
	cmp	rax, -1
	mov	rbp, r14
	jne	.label_421
	mov	rdi, r14
	jmp	.label_422
.label_420:
	mov	rdi, rbp
.label_422:
	call	free
	xor	ebp, ebp
.label_419:
	mov	rax, rbp
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
	#Procedure 0x405170

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_425
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_427
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_427
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_424
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_424:
	mov	rbx, r14
.label_427:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_425:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_426
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405220
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
	#Procedure 0x405260
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
	#Procedure 0x405270
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
	#Procedure 0x405280

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
	#Procedure 0x4052c0
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
	#Procedure 0x4052e0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_429
	test	rdx, rdx
	je	.label_429
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_429:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405310
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
	#Procedure 0x405390

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
.label_442:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_444
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_449]]
.label_785:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_455
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_460
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_786:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_468
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_468
	xor	r14d, r14d
.label_480:
	cmp	r14, r11
	jae	.label_477
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_477:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_480
.label_468:
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
	jmp	.label_487
.label_778:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_487
.label_781:
	mov	al, 1
.label_779:
	mov	r12b, 1
.label_782:
	test	r12b, 1
	mov	cl, 1
	je	.label_503
	mov	ecx, eax
.label_503:
	mov	al, cl
.label_780:
	test	r12b, 1
	jne	.label_507
	test	r11, r11
	je	.label_510
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_510:
	mov	r14d, 1
	jmp	.label_514
.label_507:
	xor	r14d, r14d
.label_514:
	mov	ecx, OFFSET FLAT:label_460
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_487
.label_783:
	test	r12b, 1
	jne	.label_522
	test	r11, r11
	je	.label_484
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_484:
	mov	r14d, 1
	jmp	.label_465
.label_784:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_527
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_487
.label_522:
	xor	r14d, r14d
.label_465:
	mov	eax, OFFSET FLAT:label_527
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_487:
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
	jmp	.label_490
	nop	dword ptr [rax]
.label_492:
	inc	rsi
.label_490:
	cmp	rbp, -1
	je	.label_459
	cmp	rsi, rbp
	jne	.label_462
	jmp	.label_464
	nop	word ptr cs:[rax + rax]
.label_459:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_464
.label_462:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_471
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_474
	cmp	rbp, -1
	jne	.label_474
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
.label_474:
	cmp	rbx, rbp
	jbe	.label_486
.label_471:
	xor	r8d, r8d
.label_498:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_488
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_494]]
.label_805:
	test	rsi, rsi
	jne	.label_482
	jmp	.label_499
	nop	
.label_486:
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
	jne	.label_512
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_498
	jmp	.label_454
.label_512:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_498
.label_809:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_529
	test	rsi, rsi
	jne	.label_530
	cmp	rbp, 1
	je	.label_499
	xor	r13d, r13d
	jmp	.label_435
.label_798:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_535
	cmp	byte ptr [rsp + 7], 0
	jne	.label_439
	cmp	r12d, 2
	jne	.label_536
	mov	eax, r9d
	and	al, 1
	jne	.label_536
	cmp	r14, r11
	jae	.label_537
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_537:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_541
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_541:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_431
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_431:
	add	r14, 3
	mov	r9b, 1
.label_536:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_478
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_478:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_443
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_443
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_443
	cmp	r14, r11
	jae	.label_456
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_456:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_538
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_538:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_435
.label_799:
	mov	bl, 0x62
	jmp	.label_466
.label_800:
	mov	cl, 0x74
	jmp	.label_470
.label_801:
	mov	bl, 0x76
	jmp	.label_466
.label_802:
	mov	bl, 0x66
	jmp	.label_466
.label_803:
	mov	cl, 0x72
	jmp	.label_470
.label_806:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_476
	cmp	byte ptr [rsp + 7], 0
	jne	.label_439
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
	jae	.label_481
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_481:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_497
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_497:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_500
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_500:
	add	r14, 3
	xor	r9d, r9d
.label_476:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_435
.label_807:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_511
	cmp	r12d, 2
	jne	.label_482
	cmp	byte ptr [rsp + 7], 0
	je	.label_482
	jmp	.label_439
.label_808:
	cmp	r12d, 2
	jne	.label_519
	cmp	byte ptr [rsp + 7], 0
	jne	.label_439
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_467
.label_488:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_525
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
.label_521:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_432
	test	r8b, r8b
	je	.label_432
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_435
.label_529:
	test	rsi, rsi
	jne	.label_441
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_441
.label_499:
	mov	dl, 1
.label_804:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_439
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_435:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_451
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_452
	jmp	.label_457
	nop	word ptr cs:[rax + rax]
.label_451:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_457
.label_452:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_461
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_467
	jmp	.label_475
	nop	dword ptr [rax]
.label_457:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_475
	jmp	.label_467
.label_461:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_475
.label_535:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_492
	xor	r15d, r15d
	jmp	.label_482
.label_519:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_470
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_467
.label_470:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_439
.label_466:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_435
	nop	word ptr cs:[rax + rax]
.label_475:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_439
	cmp	r12d, 2
	jne	.label_504
	mov	eax, r9d
	and	al, 1
	jne	.label_504
	cmp	r14, r11
	jae	.label_508
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_508:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_506
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_506:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_516
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_516:
	add	r14, 3
	mov	r9b, 1
.label_504:
	cmp	r14, r11
	jae	.label_520
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_520:
	inc	r14
	jmp	.label_496
.label_525:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_526
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_526:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_523:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_540
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_543
	cmp	rbp, -2
	je	.label_450
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_437
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_458:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_448
	bt	rsi, rdx
	jb	.label_454
.label_448:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_458
.label_437:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_463
	xor	r13d, r13d
.label_463:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_523
	jmp	.label_521
.label_443:
	xor	r13d, r13d
	jmp	.label_435
.label_441:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_435
.label_511:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_482
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_482
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_482
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_489
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_544
	cmp	byte ptr [rsp + 7], 0
	jne	.label_439
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_501
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_501:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_509
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_509:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_513
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_513:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_515
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_515:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_435
.label_482:
	xor	eax, eax
.label_530:
	xor	r13d, r13d
	jmp	.label_435
.label_432:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
.label_479:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_524:
	test	r8b, r8b
	je	.label_531
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_532
	cmp	r14, r11
	jae	.label_533
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_533:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_532
	nop	dword ptr [rax]
.label_531:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_454
	cmp	r12d, 2
	jne	.label_539
	mov	eax, r9d
	and	al, 1
	jne	.label_539
	cmp	r14, r11
	jae	.label_542
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_542:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_430
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_430:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_438
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_438:
	add	r14, 3
	mov	r9b, 1
.label_539:
	cmp	r14, r11
	jae	.label_528
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_528:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_446
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_446:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_453
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_453:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_532:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_467
	test	r9b, 1
	je	.label_469
	mov	ebx, eax
	and	bl, 1
	jne	.label_469
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_473
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_473:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_440
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_440:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_469:
	cmp	r14, r11
	jae	.label_479
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_479
	nop	word ptr cs:[rax + rax]
.label_467:
	test	r9b, 1
	je	.label_491
	and	al, 1
	jne	.label_491
	cmp	r14, r11
	jae	.label_493
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_493:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_433
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_433:
	add	r14, 2
	xor	r9d, r9d
.label_491:
	mov	ebx, r15d
.label_496:
	cmp	r14, r11
	jae	.label_502
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_502:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_492
.label_543:
	xor	r13d, r13d
.label_540:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_521
.label_450:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_517
	mov	rsi, qword ptr [rsp + 0x50]
.label_485:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_472
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_485
	xor	r13d, r13d
	jmp	.label_521
.label_517:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_521
.label_472:
	xor	r13d, r13d
	jmp	.label_521
.label_489:
	xor	r13d, r13d
	jmp	.label_435
.label_544:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_435
	nop	dword ptr [rax + rax]
.label_464:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_534
	or	dl, al
	je	.label_454
.label_534:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_434
	or	dl, al
	jne	.label_434
	test	r10b, 1
	jne	.label_436
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_434
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_442
.label_434:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_445
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_447
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_447
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_483:
	cmp	r14, r11
	jae	.label_495
	mov	byte ptr [rcx + r14], al
.label_495:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_483
	jmp	.label_447
.label_439:
	mov	qword ptr [rsp + 0x20], rbp
.label_454:
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
.label_505:
	mov	r14, rax
.label_518:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_436:
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
	jmp	.label_505
.label_445:
	mov	rcx, qword ptr [rsp + 8]
.label_447:
	cmp	r14, r11
	jae	.label_518
	mov	byte ptr [rcx + r14], 0
	jmp	.label_518
.label_444:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406150
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
	#Procedure 0x406160

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
	je	.label_545
	mov	qword ptr [rax], rbx
.label_545:
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
	#Procedure 0x406250
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_546
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_548:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_548
.label_546:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_549
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_550]], OFFSET FLAT:slot0
.label_549:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_547
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_547:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062f0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406300

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
	js	.label_551
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_554
	cmp	r12d, 0x7fffffff
	je	.label_556
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
	jne	.label_552
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_552:
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
.label_554:
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
	jbe	.label_557
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_553
.label_557:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_555
	mov	rdi, r14
	call	free
.label_555:
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
.label_553:
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
.label_551:
	call	abort
.label_556:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064d0
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
	#Procedure 0x4064e0
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
	#Procedure 0x4064f0

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
	#Procedure 0x406530

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
	je	.label_558
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
.label_558:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406590

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
	#Procedure 0x4065d0
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
	#Procedure 0x4065f0
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
	#Procedure 0x406610

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
	mov	rcx,  qword ptr [word ptr [rip + label_559]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_560]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_561]]
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
	#Procedure 0x406680

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
	#Procedure 0x406690

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0
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
	#Procedure 0x406700

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406710

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
	mov	rax,  qword ptr [word ptr [rip + label_559]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_560]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_561]]
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
	#Procedure 0x406780
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
	#Procedure 0x4067a0
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
	#Procedure 0x4067c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067d0
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
	#Procedure 0x4067e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4067f0

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
	#Procedure 0x406800

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
	jne	.label_567
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
	je	.label_566
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_568
	mov	eax, OFFSET FLAT:label_569
	jmp	.label_564
.label_566:
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
	je	.label_565
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_562
	mov	eax, OFFSET FLAT:label_563
	jmp	.label_564
.label_565:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_527
	mov	eax, OFFSET FLAT:label_460
.label_564:
	cmove	rax, rcx
.label_567:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068c0

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
	je	.label_570
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_572
	jmp	.label_571
.label_570:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_571
.label_572:
	mov	eax, 1
	test	bpl, bpl
	je	.label_571
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
.label_571:
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
	#Procedure 0x406940

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
	je	.label_575
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_573
	jmp	.label_574
.label_575:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_574
.label_573:
	mov	eax, 1
	test	bpl, bpl
	je	.label_574
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
.label_574:
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
	#Procedure 0x4069d0

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
	je	.label_576
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_578
	jmp	.label_577
.label_576:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_577
.label_578:
	mov	eax, 1
	test	bpl, bpl
	je	.label_577
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
.label_577:
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
	#Procedure 0x406a50

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
	je	.label_581
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_580
	jmp	.label_579
.label_581:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_579
.label_580:
	mov	eax, 1
	test	bpl, bpl
	je	.label_579
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
.label_579:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ac0

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
	je	.label_584
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_582
	jmp	.label_583
.label_584:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_583
.label_582:
	mov	eax, 1
	test	bpl, bpl
	je	.label_583
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_583:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b20

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
	je	.label_585
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_587
	jmp	.label_586
.label_585:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_586
.label_587:
	mov	eax, 1
	test	bpl, bpl
	je	.label_586
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_586:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b70

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
	je	.label_590
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_589
	jmp	.label_588
.label_590:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_588
.label_589:
	mov	eax, 1
	test	bpl, bpl
	je	.label_588
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_588:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_593
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_592
	jmp	.label_591
.label_593:
	mov	eax, 1
	test	cl, cl
	je	.label_591
.label_592:
	xor	eax, eax
.label_591:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406bf0

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
	je	.label_610
	mov	edx, OFFSET FLAT:label_599
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_607
.label_610:
	mov	edx, OFFSET FLAT:label_608
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_607:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_612
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
	mov	esi, OFFSET FLAT:label_609
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_594
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_596]]
.label_902:
	add	rsp, 8
	jmp	.label_595
.label_594:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_604
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
	jmp	.label_595
.label_903:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
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
.label_904:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
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
.label_905:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_600
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
.label_906:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_597
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
	jmp	.label_595
.label_907:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
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
	jmp	.label_595
.label_908:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_598
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
	jmp	.label_595
.label_909:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
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
	jmp	.label_595
.label_911:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
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
	jmp	.label_595
.label_910:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
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
.label_595:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_613:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_613
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f80

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_615:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_614
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_616
	nop	dword ptr [rax]
.label_614:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_616:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_617
	inc	r9
	cmp	r9, 0xa
	jb	.label_615
.label_617:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406fe0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_618
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_618:
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
	#Procedure 0x407070
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_619
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_620
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_622
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_44
	mov	ecx, OFFSET FLAT:label_45
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_623
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_623:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407120

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_624
	test	rax, rax
	je	.label_625
.label_624:
	pop	rbx
	ret	
.label_625:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407140
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_626
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_626:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407170

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_627
	test	rbx, rbx
	jne	.label_627
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_627:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_629
	test	rax, rax
	je	.label_628
.label_629:
	pop	rbx
	ret	
.label_628:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4071a0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_630
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_633
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_631
.label_630:
	test	rcx, rcx
	jne	.label_634
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_634:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_632
.label_631:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_633:
	call	xalloc_die
.label_632:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407220

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407230
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407240
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
	#Procedure 0x407270
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_635
	call	rpl_calloc
	test	rax, rax
	je	.label_635
	pop	rcx
	ret	
.label_635:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072a0

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
	#Procedure 0x4072d0

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
	#Procedure 0x4072f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_636
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407320

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_637
	pop	rcx
	ret	
.label_637:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407340

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
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
	jae	.label_651
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtol
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_642
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_644
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_638
	mov	r12d, 1
.label_644:
	test	r13, r13
	jne	.label_649
	jmp	.label_650
.label_642:
	mov	r12d, 4
	test	r13, r13
	je	.label_638
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_638
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_638
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_649:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_650
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_643
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_641
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_641
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_652
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_653
	cmp	ecx, 0x44
	je	.label_653
	cmp	ecx, 0x69
	jne	.label_641
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_641
.label_652:
	mov	esi, 0x400
	jmp	.label_641
.label_653:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_641:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_643
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_645]]
.label_725:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_639
.label_643:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_638
.label_726:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_639
.label_727:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_639
.label_729:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_639
.label_723:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_640
.label_724:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_639
.label_728:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_639
.label_730:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_639
.label_731:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_639
.label_732:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_640
.label_733:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_640:
	call	bkm_scale
.label_639:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_650:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_638:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_651:
	mov	edi, OFFSET FLAT:label_646
	mov	esi, OFFSET FLAT:label_647
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_648
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075c0

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
	jge	.label_654
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_654:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_655
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_655:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407610

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
	je	.label_656
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_657:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_657
.label_656:
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
	#Procedure 0x407650

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
	jae	.label_668
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_665:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_665
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_662
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_669
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_673
	cmp	eax, 0x22
	jne	.label_662
	mov	r12d, 1
.label_673:
	test	rbp, rbp
	jne	.label_659
	jmp	.label_660
.label_669:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_662
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_662
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_662
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_659:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_660
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_667
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_672
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_672
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_663
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_666
	cmp	ecx, 0x44
	je	.label_666
	cmp	ecx, 0x69
	jne	.label_663
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_663
.label_666:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_663
.label_672:
	mov	rsi, r14
.label_663:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_667
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_674]]
.label_708:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_661
.label_667:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_658
.label_709:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_661
.label_710:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_661
.label_712:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_661
.label_706:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_0
	jmp	.label_664
.label_707:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_661
.label_711:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_661
.label_713:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_661
.label_714:
	lea	rdi, [rsp]
	mov	edx, 7
.label_661:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_664:
	mov	rsi, r14
.label_716:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_660:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_658:
	mov	r15d, r12d
.label_662:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_715:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_0
	jmp	.label_664
.label_717:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_0
	jmp	.label_664
.label_668:
	mov	edi, OFFSET FLAT:label_646
	mov	esi, OFFSET FLAT:label_670
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_671
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407900

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
	#Procedure 0x407930

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
	je	.label_675
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_676:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_676
.label_675:
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
	#Procedure 0x407970

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_677
	test	rsi, rsi
	mov	ecx, 1
	je	.label_678
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_678
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_677:
	mov	ecx, 1
.label_678:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	je	.label_679
	cmp	r15, -2
	jb	.label_679
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_679
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_679:
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
	#Procedure 0x407a20

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
	#Procedure 0x407a40

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
	je	.label_680
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_681
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_681
.label_680:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_681
	test	cl, cl
	jne	.label_681
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_681:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ab0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_683
	cmp	byte ptr [rax], 0x43
	jne	.label_685
	cmp	byte ptr [rax + 1], 0
	je	.label_682
.label_685:
	mov	esi, OFFSET FLAT:label_684
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_683
.label_682:
	xor	ebx, ebx
.label_683:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407af0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_50
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_686
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_688
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_687
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_688
.label_687:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_688
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_689
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_689:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_688:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ba0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_690
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_690
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_690:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bd0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_691
	ret	
.label_691:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x407bf0

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
	jne	.label_692
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_692
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_693
.label_692:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_693:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_694
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_694:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
