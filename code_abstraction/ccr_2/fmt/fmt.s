	.section	.text
	.align	16
	#Procedure 0x401670

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	je	.label_25
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_26:
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
	.align	16
	#Procedure 0x401890

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_38
	call	setlocale
	mov	edi, OFFSET FLAT:label_42
	mov	esi, OFFSET FLAT:label_51
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_42
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + uniform],  0
	mov	byte ptr [rip + split],  0
	mov	byte ptr [rip + tagged],  0
	mov	byte ptr [rip + crown],  0
	mov	dword ptr [rip + max_width],  0x4b
	mov	qword ptr [rip + prefix], OFFSET FLAT:label_38
	mov	dword ptr [rip + prefix_full_length],  0
	mov	dword ptr [rip + prefix_lead_space],  0
	mov	dword ptr [rip + prefix_length],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_43
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	cmp	byte ptr [rax], 0x2d
	jne	.label_43
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_43
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_43:
	xor	r15d, r15d
	jmp	.label_39
.label_32:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [rip + prefix_length],  eax
	nop	word ptr [rax + rax]
.label_39:
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_34
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x14
	ja	.label_45
	jmp	qword ptr [(rax * 8) + label_41]
.label_546:
	mov	byte ptr [rip + crown],  1
	jmp	.label_39
.label_547:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_39
.label_548:
	mov	rbx, qword ptr [rip + optarg]
	mov	dword ptr [rip + prefix_lead_space],  0
	cmp	byte ptr [rbx], 0x20
	jne	.label_48
	xor	eax, eax
.label_57:
	cmp	byte ptr [rbx + rax + 1], 0x20
	lea	rax, [rax + 1]
	je	.label_57
	mov	dword ptr [rip + prefix_lead_space],  eax
	add	rbx, rax
.label_48:
	mov	qword ptr [rip + prefix],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [rip + prefix_full_length],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
.label_35:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_32
	lea	rcx, [rax - 1]
	cmp	byte ptr [rax - 1], 0x20
	je	.label_35
	jmp	.label_32
.label_549:
	mov	byte ptr [rip + split],  1
	jmp	.label_39
.label_550:
	mov	byte ptr [rip + tagged],  1
	jmp	.label_39
.label_551:
	mov	byte ptr [rip + uniform],  1
	jmp	.label_39
.label_552:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_39
.label_34:
	cmp	ebx, -1
	jne	.label_55
	test	r14, r14
	je	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_33
.label_59:
	mov	eax, dword ptr [rip + max_width]
.label_33:
	test	r15, r15
	je	.label_36
	movsxd	rbx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + goal_width],  eax
	test	r14, r14
	jne	.label_47
	add	eax, 0xa
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_47
.label_36:
	imul	eax, eax, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [rip + goal_width],  eax
.label_47:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r13d
	jne	.label_31
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	mov	r15b, 1
	jmp	.label_40
.label_31:
	mov	r15b, 1
	jge	.label_40
	mov	r15b, 1
	nop	dword ptr [rax]
.label_30:
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_46
	cmp	byte ptr [rbx + 1], 0
	je	.label_49
.label_46:
	mov	esi, OFFSET FLAT:label_50
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_58
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_56
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_54
	nop	dword ptr [rax]
.label_58:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_54:
	call	error
	jmp	.label_56
.label_49:
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	nop	dword ptr [rax]
.label_56:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_30
.label_40:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_55:
	cmp	ebx, 0xffffff7d
	je	.label_37
	cmp	ebx, 0xffffff7e
	jne	.label_45
	xor	edi, edi
	call	usage
.label_37:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_19
	mov	r8d, OFFSET FLAT:label_52
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_45:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_61:
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	esi, 2
	call	fadvise
	mov	byte ptr [rip + tabs],  0
	mov	dword ptr [rip + other_indent],  0
	mov	rdi, rbx
	call	get_prefix
	mov	r14d, eax
	mov	dword ptr [rip + next_char],  r14d
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	r12d, OFFSET FLAT:in_column
	jmp	.label_117
.label_71:
	mov	r14d, dword ptr [rip + next_char]
.label_117:
	mov	dword ptr [rip + last_line_length],  0
	jmp	.label_63
	nop	dword ptr [rax]
.label_96:
	mov	rdi, rbx
	call	get_prefix
	mov	r14d, eax
.label_63:
	cmp	r14d, -1
	je	.label_73
	cmp	r14d, 0xa
	je	.label_73
	mov	eax, dword ptr [rip + next_prefix_indent]
	cmp	eax, dword ptr [rip + prefix_lead_space]
	jl	.label_73
	mov	ecx, dword ptr [rip + in_column]
	mov	edx, dword ptr [rip + prefix_full_length]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_82
	nop	dword ptr [rax + rax]
.label_73:
	mov	dword ptr [rip + out_column],  0
	mov	ebp, dword ptr [rip + next_prefix_indent]
	cmp	dword ptr [rip + in_column],  ebp
	jg	.label_89
	cmp	r14d, -1
	je	.label_91
	cmp	r14d, 0xa
	jne	.label_89
	mov	ebp, r14d
	jmp	.label_66
	nop	dword ptr [rax]
.label_89:
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_67
	cmp	ebp, 8
	jl	.label_67
	mov	r13d, ebp
	sar	r13d, 0x1f
	shr	r13d, 0x1d
	add	r13d, ebp
	and	r13d, 0xfffffff8
	cmp	r13d, 2
	jl	.label_67
	xor	ecx, ecx
	jmp	.label_100
.label_91:
	mov	ebp, r14d
	jmp	.label_66
.label_113:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_103
	nop	
.label_100:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_113
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_103:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, eax
	jl	.label_100
	jmp	.label_67
	nop	dword ptr [rax + rax]
.label_80:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_67:
	cmp	eax, ebp
	jge	.label_72
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_74
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_80
.label_74:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_80
	nop	dword ptr [rax]
.label_72:
	mov	r13d, dword ptr [rip + in_column]
	cmp	eax, r13d
	jne	.label_84
	mov	ecx, eax
	mov	r13d, eax
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_84:
	mov	rbp, qword ptr [rip + prefix]
	jmp	.label_101
.label_110:
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	mov	r13d, dword ptr [rip + in_column]
	jmp	.label_95
	nop	dword ptr [rax]
.label_101:
	movzx	esi, byte ptr [rbp]
	test	esi, esi
	je	.label_99
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_110
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], sil
.label_95:
	inc	rbp
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, r13d
	jne	.label_101
	jmp	.label_88
.label_99:
	mov	ecx, eax
.label_88:
	cmp	r14d, -1
	je	.label_111
	mov	ebp, 0xa
	cmp	r14d, 0xa
	je	.label_66
	cmp	byte ptr [rip + tabs],  1
	jne	.label_116
	mov	ebp, r13d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r13d
	and	ebp, 0xfffffff8
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jge	.label_116
	cmp	ecx, ebp
	jl	.label_98
	mov	eax, ecx
	jmp	.label_64
	nop	word ptr [rax + rax]
.label_111:
	mov	eax, dword ptr [rip + prefix_length]
	add	eax, dword ptr [rip + next_prefix_indent]
	mov	ebp, 0xffffffff
	cmp	r13d, eax
	jl	.label_66
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_79
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_66
.label_116:
	mov	eax, ecx
	jmp	.label_64
.label_118:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_118
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_81:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_98
.label_64:
	cmp	eax, r13d
	jl	.label_97
	mov	ebp, r14d
	jmp	.label_66
.label_121:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_97:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_121
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_92:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	jl	.label_97
	mov	ebp, r14d
	jmp	.label_66
.label_79:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_66
	nop	word ptr [rax + rax]
.label_83:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_66:
	cmp	ebp, -1
	je	.label_102
	cmp	ebp, 0xa
	je	.label_77
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_78
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
.label_90:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_83
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_66
.label_78:
	movzx	esi, bpl
	call	__overflow
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_93
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_96
.label_93:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_96
.label_82:
	mov	dword ptr [rip + prefix_indent],  eax
	mov	dword ptr [rip + first_indent],  ecx
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	mov	qword ptr [rip + word_limit], OFFSET FLAT:unused_word_type
	mov	rdi, rbx
	mov	esi, r14d
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	mov	ebp, dword ptr [rip + prefix_indent]
	cmp	ecx, ebp
	jne	.label_112
	mov	esi, dword ptr [rip + prefix_full_length]
	add	esi, ecx
	cmp	dword ptr [rip + in_column],  esi
	setge	dil
	cmp	eax, 0xa
	setne	dl
	cmp	eax, -1
	setne	sil
	and	sil, dl
	and	sil, dil
	jmp	.label_114
.label_112:
	xor	esi, esi
.label_114:
	cmp	byte ptr [rip + split],  1
	jne	.label_65
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  ecx
	jmp	.label_68
.label_65:
	mov	dl, byte ptr [rip + crown]
	test	dl, dl
	je	.label_75
	test	sil, sil
	mov	edx, OFFSET FLAT:first_indent
	cmovne	rdx, r12
	mov	edx, dword ptr [rdx]
	mov	dword ptr [rip + other_indent],  edx
	cmp	ecx, ebp
	jne	.label_68
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	dword ptr [rip + in_column],  ecx
	jl	.label_68
	cmp	eax, -1
	je	.label_68
	cmp	eax, 0xa
	je	.label_68
.label_104:
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_68
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_68
	cmp	eax, -1
	je	.label_68
	cmp	eax, 0xa
	je	.label_68
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_104
	jmp	.label_68
.label_75:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_106
	test	sil, sil
	je	.label_109
	mov	edi, dword ptr [rip + in_column]
	mov	esi, dword ptr [rip + first_indent]
	cmp	edi, esi
	jne	.label_107
	mov	esi, edi
	jmp	.label_76
.label_106:
	mov	esi, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  esi
	jmp	.label_115
.label_109:
	mov	esi, dword ptr [rip + first_indent]
.label_76:
	cmp	dword ptr [rip + other_indent],  esi
	jne	.label_115
	xor	edx, edx
	test	esi, esi
	sete	dl
	lea	edx, [rdx + rdx*2]
	mov	dword ptr [rip + other_indent],  edx
	jmp	.label_115
.label_107:
	mov	dword ptr [rip + other_indent],  edi
.label_115:
	mov	dl, byte ptr [rip + tagged]
	test	dl, dl
	je	.label_70
	cmp	ecx, ebp
	jne	.label_68
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_68
	cmp	eax, -1
	je	.label_68
	cmp	eax, 0xa
	je	.label_68
	cmp	edx, esi
	je	.label_68
.label_94:
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_68
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_68
	cmp	eax, -1
	je	.label_68
	cmp	eax, 0xa
	je	.label_68
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_94
	jmp	.label_68
.label_70:
	cmp	ecx, ebp
	jne	.label_68
.label_105:
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_68
	cmp	eax, -1
	je	.label_68
	cmp	eax, 0xa
	je	.label_68
	cmp	edx, dword ptr [rip + other_indent]
	jne	.label_68
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	cmp	ecx, dword ptr [rip + prefix_indent]
	je	.label_105
.label_68:
	mov	r14, qword ptr [rip + word_limit]
	cmp	r14, r15
	jbe	.label_108
	or	byte ptr [r14 - 0x18], 0xa
	mov	dword ptr [rip + next_char],  eax
	call	fmt_paragraph
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbp, qword ptr [rip + label_119]
	jmp	.label_120
	nop	word ptr [rax + rax]
.label_69:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbp
	call	put_line
	mov	rbp, qword ptr [rbp + 0x20]
.label_120:
	cmp	rbp, r14
	jne	.label_69
	jmp	.label_71
.label_102:
	mov	dword ptr [rip + next_char],  0xffffffff
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_108:
	mov	edi, OFFSET FLAT:label_85
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:label_87
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x402350

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	dword ptr [rip + in_column],  0
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_128:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_127:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_136
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_125:
	cmp	eax, 9
	je	.label_129
	cmp	eax, 0x20
	je	.label_128
	jmp	.label_134
	nop	
.label_129:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_127
.label_136:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_125
.label_134:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_126
	mov	ecx, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  ecx
	mov	r14, qword ptr [rip + prefix]
	mov	cl, byte ptr [r14]
	test	cl, cl
	je	.label_130
	inc	r14
	jmp	.label_124
.label_126:
	mov	ecx, dword ptr [rip + prefix_lead_space]
	mov	edx, dword ptr [rip + in_column]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [rip + next_prefix_indent],  edx
	jmp	.label_122
.label_123:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_131
	nop	dword ptr [rax]
.label_124:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_122
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_123
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_131:
	movzx	ecx, byte ptr [r14]
	inc	r14
	test	cl, cl
	jne	.label_124
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_132:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_130:
	cmp	eax, 9
	je	.label_133
	cmp	eax, 0x20
	jne	.label_122
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_135
	nop	
.label_133:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_135:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_132
	mov	rdi, rbx
	call	__uflow
	jmp	.label_130
.label_122:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4024c0

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsi, qword ptr [rip + word_limit]
	mov	qword ptr [rsi + 0x18], 0
	mov	eax, dword ptr [rsi + 8]
	mov	dword ptr [rsp - 0x14], eax
	mov	edi, dword ptr [rip + max_width]
	mov	dword ptr [rsi + 8], edi
	lea	rax, [rsi - 0x28]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jb	.label_137
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rsp - 0xc], ecx
	mov	ecx, dword ptr [rip + other_indent]
	mov	dword ptr [rsp - 0x10], ecx
	mov	r11d, dword ptr [rip + last_line_length]
	movsxd	r12, dword ptr [rip + goal_width]
	xor	r14d, r14d
	mov	ebp, OFFSET FLAT:unused_word_type
	mov	r8, rsi
	nop	dword ptr [rax + rax]
.label_144:
	mov	r13, r8
	mov	r8, rax
	test	r11d, r11d
	setg	dl
	cmp	r8, rbp
	sete	al
	mov	ecx, dword ptr [rsp - 0x10]
	cmove	ecx, dword ptr [rsp - 0xc]
	movsxd	rbp, dword ptr [r13 - 0x20]
	mov	qword ptr [rsp - 8], rbp
	lea	ecx, [rbp + rcx]
	and	al, dl
	mov	rdx, r14
	movabs	r9, 0x7fffffffffffffff
	nop	word ptr [rax + rax]
.label_145:
	test	rdx, rdx
	mov	ebp, 0
	je	.label_148
	movsxd	r10, ecx
	mov	rbp, r12
	sub	rbp, r10
	add	rbp, rbp
	lea	rbp, [rbp + rbp*4]
	imul	rbp, rbp
	cmp	qword ptr [rsi + rdx + 0x20], rsi
	je	.label_148
	movsxd	r15, dword ptr [rsi + rdx + 0x14]
	sub	r10, r15
	add	r10, r10
	lea	rbx, [r10 + r10*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rbp, rbx
.label_148:
	add	rbp, qword ptr [rsi + rdx + 0x18]
	test	al, al
	je	.label_147
	mov	ebx, ecx
	sub	ebx, r11d
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	movsxd	rbx, ebx
	imul	rbx, rbx
	shr	rbx, 1
	add	rbp, rbx
.label_147:
	cmp	rbp, r9
	jge	.label_139
	lea	rbx, [rsi + rdx]
	mov	qword ptr [r13 - 8], rbx
	mov	dword ptr [r13 - 0x14], ecx
	mov	r9, rbp
.label_139:
	test	rdx, rdx
	je	.label_143
	add	ecx, dword ptr [rsi + rdx - 0x1c]
	add	ecx, dword ptr [rsi + rdx + 8]
	add	rdx, 0x28
	cmp	ecx, edi
	jl	.label_145
.label_143:
	mov	ebp, OFFSET FLAT:unused_word_type
	cmp	r8, rbp
	mov	ecx, 0x1324
	jbe	.label_140
	mov	al, byte ptr [r13 - 0x40]
	test	al, 2
	jne	.label_138
	test	al, 4
	mov	ecx, 0xce4
	jne	.label_140
	mov	eax, OFFSET FLAT:label_142
	cmp	r8, rax
	mov	ecx, 0x1324
	jbe	.label_140
	test	byte ptr [r13 - 0x68], 8
	mov	ecx, 0x1324
	je	.label_140
	movsxd	rcx, dword ptr [r13 - 0x48]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_138:
	test	al, 8
	mov	ecx, 0x960
	mov	eax, 0x59164
	cmove	rcx, rax
.label_140:
	mov	al, byte ptr [r13 - 0x18]
	test	al, 1
	jne	.label_141
	test	al, 8
	je	.label_146
	mov	rbx, qword ptr [rsp - 8]
	add	rbx, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	rbx
	add	rcx, rax
	jmp	.label_146
	nop	word ptr cs:[rax + rax]
.label_141:
	add	rcx, -0x640
.label_146:
	add	rcx, r9
	mov	qword ptr [r13 - 0x10], rcx
	lea	rax, [r8 - 0x28]
	add	r14, -0x28
	cmp	rax, rbp
	jae	.label_144
.label_137:
	mov	eax, dword ptr [rsp - 0x14]
	mov	dword ptr [rsi + 8], eax
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
	#Procedure 0x4026e0

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, esi
	mov	r14, rdi
	mov	rax, qword ptr [rip + word_limit]
	mov	r15d, OFFSET FLAT:wptr
	nop	word ptr cs:[rax + rax]
.label_178:
	mov	rcx, qword ptr [rip + wptr]
	mov	qword ptr [rax], rcx
	nop	word ptr [rax + rax]
.label_168:
	mov	rax, qword ptr [rip + wptr]
	cmp	rax, r15
	jne	.label_157
	cmp	byte ptr [rip + split],  1
	je	.label_161
	cmp	byte ptr [rip + crown],  1
	jne	.label_164
	mov	eax, dword ptr [rip + in_column]
	jmp	.label_167
.label_164:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_161
	mov	eax, dword ptr [rip + in_column]
	cmp	eax, dword ptr [rip + first_indent]
	jne	.label_167
	cmp	dword ptr [rip + other_indent],  eax
	jne	.label_174
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx*2]
	jmp	.label_167
	nop	word ptr cs:[rax + rax]
.label_161:
	mov	eax, dword ptr [rip + first_indent]
.label_167:
	mov	dword ptr [rip + other_indent],  eax
.label_174:
	call	flush_paragraph
	mov	rax, qword ptr [rip + wptr]
.label_157:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + wptr],  rcx
	mov	byte ptr [rax], r13b
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_153
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_175:
	movsxd	rbp, r13d
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	je	.label_168
	jmp	.label_172
.label_153:
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	cmp	r13d, -1
	jne	.label_175
	mov	r13d, 0xffffffff
	call	__ctype_b_loc
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	rcx, qword ptr [rip + wptr]
	mov	rax, qword ptr [rip + word_limit]
	mov	rbp, qword ptr [rax]
	sub	rcx, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rax + 8], ecx
	mov	r15, rax
	mov	eax, dword ptr [rip + in_column]
	add	eax, ecx
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [rip + in_column],  eax
	mov	rax, rcx
	shl	rax, 0x20
	movabs	rcx, 0xffffffff00000000
	add	rax, rcx
	sar	rax, 0x20
	lea	r12, [rbp + rax]
	movsx	esi, byte ptr [rbp]
	movzx	eax, byte ptr [rbp + rax]
	mov	qword ptr [rsp + 8], rax
	mov	edi, OFFSET FLAT:label_176
	mov	edx, 6
	call	memchr
	test	rax, rax
	setne	al
	mov	rcx, r15
	mov	r15b, byte ptr [rcx + 0x10]
	and	r15b, 0xfe
	or	r15b, al
	mov	byte ptr [rcx + 0x10], r15b
	mov	rax, qword ptr [rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + rdx*2]
	and	al, 4
	and	r15b, 0xfb
	or	r15b, al
	mov	rbx, rcx
	mov	byte ptr [rcx + 0x10], r15b
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	jl	.label_154
	nop	dword ptr [rax + rax]
.label_170:
	movsx	esi, byte ptr [r12]
	mov	edi, OFFSET FLAT:label_158
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_154
	dec	r12
	cmp	rbp, r12
	jb	.label_170
.label_154:
	movsx	rax, byte ptr [r12]
	mov	eax, eax
	cmp	rax, 0x40
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	add	al, al
	and	r15b, 0xfd
	or	r15b, al
	mov	byte ptr [rbx + 0x10], r15b
	mov	r15d, OFFSET FLAT:wptr
	jmp	.label_171
	nop	word ptr [rax + rax]
.label_162:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_171:
	cmp	r13d, 9
	je	.label_155
	cmp	r13d, 0x20
	jne	.label_159
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_177
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_177:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_162
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	jmp	.label_171
	nop	word ptr [rax + rax]
.label_159:
	mov	ecx, dword ptr [rip + in_column]
	mov	esi, ecx
	sub	esi, dword ptr [rsp + 4]
	mov	rax, qword ptr [rip + word_limit]
	mov	dword ptr [rax + 0xc], esi
	cmp	r13d, -1
	mov	dl, byte ptr [rax + 0x10]
	je	.label_149
	test	dl, 2
	jne	.label_156
	xor	esi, esi
	jmp	.label_160
	nop	dword ptr [rax + rax]
.label_156:
	cmp	r13d, 0xa
	jne	.label_163
.label_149:
	or	dl, 8
	mov	byte ptr [rax + 0x10], dl
	jmp	.label_165
.label_163:
	cmp	esi, 1
	setg	sil
.label_160:
	shl	sil, 3
	and	dl, 0xf7
	or	dl, sil
	mov	byte ptr [rax + 0x10], dl
	cmp	r13d, 0xa
	je	.label_165
	cmp	byte ptr [rip + uniform],  1
	jne	.label_173
	nop	word ptr cs:[rax + rax]
.label_165:
	and	dl, 8
	movzx	edx, dl
	shr	edx, 3
	inc	edx
	mov	dword ptr [rax + 0xc], edx
.label_173:
	mov	edx, OFFSET FLAT:label_179
	cmp	rax, rdx
	jne	.label_180
	cmp	byte ptr [rip + split],  1
	jne	.label_151
	mov	eax, dword ptr [rip + first_indent]
.label_150:
	mov	dword ptr [rip + other_indent],  eax
	jmp	.label_152
.label_151:
	cmp	byte ptr [rip + crown],  1
	je	.label_166
	mov	eax, dword ptr [rip + first_indent]
	cmp	byte ptr [rip + tagged],  1
	jne	.label_150
	cmp	ecx, eax
	jne	.label_166
	cmp	dword ptr [rip + other_indent],  ecx
	jne	.label_152
	xor	eax, eax
	test	ecx, ecx
	sete	al
	lea	eax, [rax + rax*2]
	jmp	.label_150
.label_166:
	mov	dword ptr [rip + other_indent],  ecx
.label_152:
	call	flush_paragraph
	mov	rax, qword ptr [rip + word_limit]
.label_180:
	add	rax, 0x28
	mov	qword ptr [rip + word_limit],  rax
	cmp	r13d, 0xa
	je	.label_169
	cmp	r13d, -1
	jne	.label_178
.label_169:
	mov	rdi, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	get_prefix
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aa0

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r15
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + word_limit]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	rbx, rax
	je	.label_181
	call	fmt_paragraph
	mov	rsi, qword ptr [rip + label_119]
	cmp	rsi, rbx
	je	.label_188
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx, qword ptr [rsi + 0x18]
	lea	rdx, [r8 + 8]
	mov	r14, rbx
	nop	dword ptr [rax]
.label_189:
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rdi + 0x18]
	sub	rcx, rax
	cmp	rcx, rdx
	cmovl	r14, rsi
	cmovg	rcx, rdx
	lea	rdx, [rcx + 9]
	cmp	rcx, r8
	cmovge	rdx, rcx
	cmp	rdi, rbx
	mov	rcx, rax
	mov	rsi, rdi
	jne	.label_189
	jmp	.label_185
.label_181:
	mov	rdx, qword ptr [rip + wptr]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	jmp	.label_187
.label_188:
	mov	r14, rbx
.label_185:
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx, qword ptr [rip + label_119]
	jmp	.label_183
	nop	
.label_186:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_183:
	cmp	rbx, r14
	jne	.label_186
	mov	rsi, qword ptr [r14]
	mov	rbx, qword ptr [rip + wptr]
	mov	rdx, rbx
	sub	rdx, rsi
	mov	r15d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [r14]
	sub	eax, r15d
	cdqe	
	sub	rbx, rax
	mov	qword ptr [rip + wptr],  rbx
	mov	rbx, qword ptr [rip + word_limit]
	cmp	r14, rbx
	ja	.label_184
	neg	rax
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_182:
	add	qword ptr [rcx], rax
	add	rcx, 0x28
	mov	rbx, qword ptr [rip + word_limit]
	cmp	rcx, rbx
	jbe	.label_182
.label_184:
	mov	edx, 0x28
	sub	rdx, r14
	add	rdx, rbx
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsi, r14
	call	memmove
	sub	r14, r15
	movabs	rcx, 0x9999999999999999
	mov	rax, r14
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	add	rdx, rax
	lea	rax, [rdx + rdx*4]
	lea	rax, [rbx + rax*8]
	mov	qword ptr [rip + word_limit],  rax
.label_187:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	dword ptr [rip + out_column],  0
	mov	ebp, dword ptr [rip + prefix_indent]
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_206
	cmp	ebp, 8
	jl	.label_206
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	cmp	ebx, 2
	jl	.label_206
	xor	ecx, ecx
	jmp	.label_204
.label_195:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_191
	nop	dword ptr [rax]
.label_204:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_195
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_191:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_204
	jmp	.label_206
	nop	word ptr [rax + rax]
.label_193:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_206:
	cmp	eax, ebp
	jge	.label_214
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_215
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_193
.label_215:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_193
.label_214:
	mov	rdi, qword ptr [rip + prefix]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	ecx, dword ptr [rip + out_column]
	add	ecx, dword ptr [rip + prefix_length]
	mov	dword ptr [rip + out_column],  ecx
	cmp	byte ptr [rip + tabs],  1
	jne	.label_200
	mov	ebp, r14d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r14d
	and	ebp, 0xfffffff8
	cmp	ecx, ebp
	jge	.label_208
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jl	.label_199
	mov	eax, ecx
	jmp	.label_203
.label_200:
	mov	eax, ecx
	jmp	.label_203
.label_208:
	mov	eax, ecx
	jmp	.label_203
.label_190:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_218
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_190
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_218:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_199
	jmp	.label_203
	nop	word ptr [rax + rax]
.label_216:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_203:
	cmp	eax, r14d
	jge	.label_212
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_213
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_216
.label_213:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_216
.label_212:
	mov	r14, qword ptr [r15 + 0x20]
	add	r14, -0x28
	jmp	.label_221
	nop	word ptr [rax + rax]
.label_198:
	add	r15, 0x28
	mov	eax, ecx
.label_221:
	mov	rbp, qword ptr [r15 + 8]
	xor	ecx, ecx
	test	ebp, ebp
	je	.label_197
	mov	rbx, qword ptr [r15]
	neg	ebp
	jmp	.label_201
.label_220:
	movzx	esi, al
	call	__overflow
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_201:
	movzx	eax, byte ptr [rbx]
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_220
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_205:
	inc	rbx
	inc	ebp
	jne	.label_201
	mov	rbp, qword ptr [r15 + 8]
	mov	eax, dword ptr [rip + out_column]
	mov	ecx, ebp
.label_197:
	add	eax, ecx
	cmp	r15, r14
	mov	dword ptr [rip + out_column],  eax
	je	.label_219
	shr	rbp, 0x20
	add	ebp, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_192
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebx
	jge	.label_196
	cmp	eax, ebx
	jl	.label_202
	mov	ecx, eax
	jmp	.label_194
	nop	dword ptr [rax]
.label_192:
	mov	ecx, eax
	jmp	.label_194
.label_196:
	mov	ecx, eax
	jmp	.label_194
.label_207:
	mov	esi, 9
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_211
	nop	word ptr [rax + rax]
.label_202:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_207
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 9
.label_211:
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [rip + out_column],  ecx
	cmp	ecx, ebx
	mov	eax, ecx
	jl	.label_202
	jmp	.label_194
	nop	word ptr [rax + rax]
.label_209:
	inc	ecx
	mov	dword ptr [rip + out_column],  ecx
.label_194:
	cmp	ecx, ebp
	jge	.label_198
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_210
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 0x20
	jmp	.label_209
.label_210:
	mov	esi, 0x20
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_209
.label_219:
	mov	dword ptr [rip + last_line_length],  eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_217
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_217:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_227
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_223
	cmp	dword ptr [rbp], 0x20
	jne	.label_223
.label_227:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_225
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_224
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_225:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_224:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_226
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
	#Procedure 0x403080
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_228
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_228:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_232
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_230
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_230
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_234
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_234:
	mov	rbx, r14
.label_230:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_232:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_233
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160
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
	#Procedure 0x4031a0
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
	#Procedure 0x4031b0
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
	#Procedure 0x4031c0
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
	#Procedure 0x403200
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
	#Procedure 0x403220
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_235
	test	rdx, rdx
	je	.label_235
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_235:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403250
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
	#Procedure 0x4032d0

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
.label_330:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_328
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_332]
.label_586:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_336
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_278
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_587:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_346
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_346
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_246:
	cmp	r14, r11
	jae	.label_241
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_241:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_246
.label_346:
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
	jmp	.label_254
.label_579:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_254
.label_582:
	mov	al, 1
.label_580:
	mov	r12b, 1
.label_583:
	test	r12b, 1
	mov	cl, 1
	je	.label_268
	mov	ecx, eax
.label_268:
	mov	al, cl
.label_581:
	test	r12b, 1
	jne	.label_271
	test	r11, r11
	je	.label_316
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_316:
	mov	r14d, 1
	jmp	.label_275
.label_271:
	xor	r14d, r14d
.label_275:
	mov	ecx, OFFSET FLAT:label_278
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_254
.label_584:
	test	r12b, 1
	jne	.label_286
	test	r11, r11
	je	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_288:
	mov	r14d, 1
	jmp	.label_291
.label_585:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_292
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_254
.label_286:
	xor	r14d, r14d
.label_291:
	mov	eax, OFFSET FLAT:label_292
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_254:
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
	jmp	.label_309
	nop	dword ptr [rax]
.label_248:
	inc	rsi
.label_309:
	cmp	rbp, -1
	je	.label_347
	cmp	rsi, rbp
	jne	.label_348
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_347:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_354
.label_348:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_356
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_237
	cmp	rbp, -1
	jne	.label_237
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
.label_237:
	cmp	rbx, rbp
	jbe	.label_255
.label_356:
	xor	r8d, r8d
.label_238:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_257
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_261]
.label_606:
	test	rsi, rsi
	jne	.label_250
	jmp	.label_266
	nop	word ptr cs:[rax + rax]
.label_255:
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
	jne	.label_279
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_238
	jmp	.label_290
.label_279:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_238
.label_610:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_298
	test	rsi, rsi
	jne	.label_301
	cmp	rbp, 1
	je	.label_266
	xor	r13d, r13d
	jmp	.label_245
.label_599:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_308
	cmp	byte ptr [rsp + 6], 0
	jne	.label_270
	cmp	r12d, 2
	jne	.label_313
	mov	eax, r9d
	and	al, 1
	jne	.label_313
	cmp	r14, r11
	jae	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_317:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_322
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_322:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_320
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	add	r14, 3
	mov	r9b, 1
.label_313:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_331:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_334
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_334
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_334
	cmp	r14, r11
	jae	.label_272
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_272:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_247
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_247:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_245
.label_600:
	mov	bl, 0x62
	jmp	.label_236
.label_601:
	mov	cl, 0x74
	jmp	.label_259
.label_602:
	mov	bl, 0x76
	jmp	.label_236
.label_603:
	mov	bl, 0x66
	jmp	.label_236
.label_604:
	mov	cl, 0x72
	jmp	.label_259
.label_607:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_243
	cmp	byte ptr [rsp + 6], 0
	jne	.label_249
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
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_264
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_264:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	add	r14, 3
	xor	r9d, r9d
.label_243:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_245
.label_608:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_276
	cmp	r12d, 2
	jne	.label_250
	cmp	byte ptr [rsp + 6], 0
	je	.label_250
	jmp	.label_249
.label_609:
	cmp	r12d, 2
	jne	.label_287
	cmp	byte ptr [rsp + 6], 0
	jne	.label_249
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_244
.label_257:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_295
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
.label_240:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_312
	test	r8b, r8b
	je	.label_312
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_245
.label_298:
	test	rsi, rsi
	jne	.label_299
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_299
.label_266:
	mov	dl, 1
.label_605:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_249
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_245:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_339
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_341
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
.label_339:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_293
.label_341:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_352
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_244
	jmp	.label_239
	nop	dword ptr [rax]
.label_293:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_239
	jmp	.label_244
.label_352:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_239
.label_308:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_248
	xor	r15d, r15d
	jmp	.label_250
.label_287:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_259
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_244
.label_259:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_249
.label_236:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_245
	nop	word ptr cs:[rax + rax]
.label_239:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_270
	cmp	r12d, 2
	jne	.label_273
	mov	eax, r9d
	and	al, 1
	jne	.label_273
	cmp	r14, r11
	jae	.label_333
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_333:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_281:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_262:
	add	r14, 3
	mov	r9b, 1
.label_273:
	cmp	r14, r11
	jae	.label_297
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_297:
	inc	r14
	jmp	.label_310
.label_295:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_296
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_296:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_342:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_319
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_323
	cmp	rbp, -2
	je	.label_327
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_289
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_280:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_314
	bt	rsi, rdx
	jb	.label_344
.label_314:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_280
.label_289:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_285
	xor	r13d, r13d
.label_285:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_342
	jmp	.label_240
.label_334:
	xor	r13d, r13d
	jmp	.label_245
.label_299:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_245
.label_276:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_250
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_250
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_250
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_355
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_302
	cmp	byte ptr [rsp + 6], 0
	jne	.label_345
	cmp	r14, r11
	jae	.label_300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_300:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_324
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_324:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_277
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_277:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_253
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_253:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_245
.label_250:
	xor	eax, eax
.label_301:
	xor	r13d, r13d
	jmp	.label_245
.label_312:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_251:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_294:
	test	r8b, r8b
	je	.label_303
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_305
	cmp	r14, r11
	jae	.label_321
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_321:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_305
	nop	dword ptr [rax]
.label_303:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_290
	cmp	r12d, 2
	jne	.label_318
	mov	eax, r9d
	and	al, 1
	jne	.label_318
	cmp	r14, r11
	jae	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_325
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_325:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_329
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_329:
	add	r14, 3
	mov	r9b, 1
.label_318:
	cmp	r14, r11
	jae	.label_340
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_340:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_337
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_337:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_343
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_343:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_305:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_244
	test	r9b, 1
	je	.label_304
	mov	ebx, eax
	and	bl, 1
	jne	.label_304
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_357
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_357:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_351
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_351:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_304:
	cmp	r14, r11
	jae	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_251
	nop	word ptr cs:[rax + rax]
.label_244:
	test	r9b, 1
	je	.label_260
	and	al, 1
	jne	.label_260
	cmp	r14, r11
	jae	.label_263
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_263:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_267
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	add	r14, 2
	xor	r9d, r9d
.label_260:
	mov	ebx, r15d
.label_310:
	cmp	r14, r11
	jae	.label_306
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_306:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_248
.label_323:
	xor	r13d, r13d
.label_319:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_240
.label_327:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_284
	mov	rsi, qword ptr [rsp + 0x58]
.label_338:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_256
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_338
	xor	r13d, r13d
	jmp	.label_240
.label_284:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_240
.label_256:
	xor	r13d, r13d
	jmp	.label_240
.label_355:
	xor	r13d, r13d
	jmp	.label_245
.label_302:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_245
	nop	dword ptr [rax + rax]
.label_349:
	mov	rcx, rsi
.label_354:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_307
	or	al, dl
	je	.label_311
.label_307:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_315
	or	al, dl
	jne	.label_315
	test	r10b, 1
	jne	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_315
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_330
.label_315:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_335
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_258
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_258
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_353:
	cmp	r14, r11
	jae	.label_350
	mov	byte ptr [rcx + r14], al
.label_350:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_353
	jmp	.label_258
.label_270:
	mov	qword ptr [rsp + 0x20], rbp
.label_290:
	mov	rdx, rdi
	jmp	.label_265
.label_249:
	mov	qword ptr [rsp + 0x20], rbp
.label_344:
	mov	rdx, rdi
	mov	eax, 2
.label_274:
	mov	qword ptr [rsp + 0x38], rax
.label_265:
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
.label_282:
	mov	r14, rax
.label_283:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_311:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_265
.label_326:
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
	jmp	.label_282
.label_335:
	mov	rcx, qword ptr [rsp + 8]
.label_258:
	cmp	r14, r11
	jae	.label_283
	mov	byte ptr [rcx + r14], 0
	jmp	.label_283
.label_345:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_274
.label_328:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0
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
	#Procedure 0x4041b0
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
	je	.label_358
	mov	qword ptr [rax], rbx
.label_358:
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
	#Procedure 0x4042a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_359
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_362:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_362
.label_359:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_363
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_361], OFFSET FLAT:slot0
.label_363:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_360
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_360:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404340
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404350

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
	js	.label_367
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_370
	cmp	r12d, 0x7fffffff
	je	.label_365
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
	jne	.label_368
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_368:
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
.label_370:
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
	jbe	.label_366
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_369
.label_366:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_364
	mov	rdi, r14
	call	free
.label_364:
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
.label_369:
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
.label_367:
	call	abort
.label_365:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404510
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520
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
	#Procedure 0x404540
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
	#Procedure 0x404560
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
	je	.label_371
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
.label_371:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0
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
	je	.label_372
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
.label_372:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640

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
	je	.label_373
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
.label_373:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0
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
	je	.label_374
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
.label_374:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404720
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
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
	#Procedure 0x404790
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
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
	#Procedure 0x404800

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
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
	#Procedure 0x404860
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
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
	#Procedure 0x4048c0

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
	je	.label_378
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
.label_378:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_379
	test	rdx, rdx
	je	.label_379
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_379:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4049d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_380
	test	rdx, rdx
	je	.label_380
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_380:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a40
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_381
	test	rsi, rsi
	je	.label_381
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_381:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ab0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_375]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_376]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_377]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_382
	test	rsi, rsi
	je	.label_382
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
.label_382:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b20
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30
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
	#Procedure 0x404b50
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70

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
	#Procedure 0x404b90

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
	jne	.label_387
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_391
	cmp	ecx, 0x55
	jne	.label_383
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_383
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_383
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_383
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_383
	cmp	byte ptr [rax + 5], 0
	jne	.label_383
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_389
	mov	eax, OFFSET FLAT:label_390
	jmp	.label_386
.label_391:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_383
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_383
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_383
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_383
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_383
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_383
	cmp	byte ptr [rax + 7], 0
	je	.label_388
.label_383:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_292
	mov	eax, OFFSET FLAT:label_278
.label_386:
	cmove	rax, rcx
.label_387:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_388:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_384
	mov	eax, OFFSET FLAT:label_385
	jmp	.label_386
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c60

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
	je	.label_404
	mov	edx, OFFSET FLAT:label_395
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_401
.label_404:
	mov	edx, OFFSET FLAT:label_402
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_401:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_407
	jmp	qword ptr [(r12 * 8) + label_408]
.label_530:
	add	rsp, 8
	jmp	.label_394
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
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
	jmp	.label_394
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
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
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
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
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
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
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
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
	jmp	.label_394
.label_535:
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
	jmp	.label_394
.label_536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_394
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
	jmp	.label_394
.label_539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
	jmp	.label_394
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
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
.label_394:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_411:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_411
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_422
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_424
.label_422:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_424:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_421
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_423
.label_421:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_423:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_419
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_420
.label_419:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_420:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_417
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_418
.label_417:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_418:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_415
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_416
.label_415:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_416:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_413
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_414
.label_413:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_414:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_412:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_425
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_425:
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
	#Procedure 0x405270
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_427
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_430
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_431
	test	rax, rax
	je	.label_430
.label_431:
	pop	rbx
	ret	
.label_430:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_432
	test	rax, rax
	je	.label_433
.label_432:
	pop	rbx
	ret	
.label_433:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405350
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_434
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_435
	test	rbx, rbx
	jne	.label_435
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_435:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_436
	test	rax, rax
	je	.label_434
.label_436:
	pop	rbx
	ret	
.label_434:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_437
	test	rbx, rbx
	jne	.label_437
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_437:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_439
	test	rax, rax
	je	.label_438
.label_439:
	pop	rbx
	ret	
.label_438:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_443
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_445
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_440
.label_443:
	test	rcx, rcx
	jne	.label_446
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_446:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_441
.label_440:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_442
	test	rbx, rbx
	jne	.label_442
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_442:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_444
	test	rax, rax
	je	.label_445
.label_444:
	pop	rbx
	ret	
.label_445:
	call	xalloc_die
.label_441:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405470
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_447
	test	rax, rax
	je	.label_448
.label_447:
	pop	rbx
	ret	
.label_448:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405490
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_451
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_453
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_450
	call	free
	xor	eax, eax
	jmp	.label_452
.label_451:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_449
	mov	qword ptr [rsi], rbx
.label_450:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_452
	test	rax, rax
	je	.label_449
.label_452:
	pop	rbx
	ret	
.label_449:
	call	xalloc_die
.label_453:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405500
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
	je	.label_455
	test	r14, r14
	je	.label_454
.label_455:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_454:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405540
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_456
	call	rpl_calloc
	test	rax, rax
	je	.label_456
	pop	rcx
	ret	
.label_456:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405570

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
	je	.label_457
	test	r15, r15
	je	.label_458
.label_457:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_458:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0
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
	je	.label_460
	test	r15, r15
	je	.label_459
.label_460:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_459:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405630

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_464
	cmp	eax, 1
	je	.label_466
	cmp	eax, 3
	jne	.label_468
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_462
.label_466:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_462
.label_464:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_467
	cmp	rbx, r15
	jbe	.label_463
.label_467:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_465
	mov	dword ptr [rax], 0x4b
	jmp	.label_462
.label_468:
	call	__errno_location
	jmp	.label_462
.label_465:
	mov	dword ptr [rax], 0x22
.label_462:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_226
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_463:
	mov	rax, rbx
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
	#Procedure 0x405700

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405730

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_477
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_469:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_469
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_471
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_479
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_487
	cmp	eax, 0x22
	jne	.label_471
	mov	ebp, 1
.label_487:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_481
	jmp	.label_472
.label_479:
	test	r14, r14
	je	.label_471
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_471
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_471
.label_481:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_472
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_480
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_474
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_474
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_474
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_470
	cmp	eax, 0x44
	je	.label_470
	cmp	eax, 0x69
	jne	.label_474
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_474
.label_470:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_474:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_480
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_489]
.label_555:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_490
.label_480:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_478
.label_556:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_482
.label_557:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_473
.label_559:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_475
.label_553:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_488
.label_554:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_473
.label_558:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_475:
	or	dl, r10b
.label_490:
	or	dl, bl
.label_473:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_476
.label_560:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_483
.label_561:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_483:
	movzx	eax, dl
.label_482:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_476
.label_562:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_488:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_476
.label_563:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_476:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_472:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_478:
	mov	r13d, r15d
.label_471:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_477:
	mov	edi, OFFSET FLAT:label_484
	mov	esi, OFFSET FLAT:label_485
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_486
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_491
	test	rsi, rsi
	mov	ecx, 1
	je	.label_492
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_492
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_491:
	mov	ecx, 1
.label_492:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_493
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_494
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_493
.label_494:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_493
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_495
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_495:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_493:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_496
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_496
	test	byte ptr [rbx + 1], 1
	je	.label_496
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_496:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80

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
	jne	.label_497
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_497
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_498
.label_497:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_498:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_499
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_499:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ef0

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
	je	.label_500
	cmp	r15, -2
	jb	.label_500
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_500
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_500:
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
	#Procedure 0x405f50

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
	jne	.label_502
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_501
	test	cl, cl
	jne	.label_501
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_501
.label_502:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_501
	call	__errno_location
	mov	dword ptr [rax], 0
.label_501:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_504
	cmp	byte ptr [rax], 0x43
	jne	.label_506
	cmp	byte ptr [rax + 1], 0
	je	.label_503
.label_506:
	mov	esi, OFFSET FLAT:label_505
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_504
.label_503:
	xor	ebx, ebx
.label_504:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ff0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_38
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_507
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x406020

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
