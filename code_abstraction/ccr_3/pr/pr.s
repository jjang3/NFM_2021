	.section	.text
	.align	32
	#Procedure 0x401c80

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
	mov	r14, rsi
	mov	r15d, edi
	mov	qword ptr [rsp + 0x38], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_52
	call	setlocale
	mov	edi, OFFSET FLAT:label_58
	mov	esi, OFFSET FLAT:label_59
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_58
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
	cmp	r15d, 2
	jl	.label_67
	lea	eax, [r15 - 1]
	movsxd	rdi, eax
	mov	esi, 8
	call	xnmalloc
	mov	rbx, rax
.label_67:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	lea	r8, [rsp + 0x14]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	je	.label_19
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x30], r14
	xor	r14d, r14d
	xor	r12d, r12d
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x10], 0
	jmp	.label_23
.label_19:
	xor	ebp, ebp
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	jmp	.label_31
.label_994:
	mov	rdx, qword ptr [rip + optarg]
	test	rdx, rdx
	je	.label_34
	mov	edi, dword ptr [rsp + 0x14]
	xor	r15d, r15d
	xor	esi, esi
	call	first_last_page
	test	al, al
	jne	.label_24
	jmp	.label_38
.label_55:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_24
.label_45:
	mov	dword ptr [rsp + 0x10], eax
.label_51:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
.label_23:
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_56
	lea	r15, [r14 + 1]
	cmp	r15, qword ptr [rsp + 0x38]
	jb	.label_60
	mov	rdi, r12
	lea	rsi, [rsp + 0x38]
	call	x2realloc
	mov	r12, rax
.label_60:
	mov	byte ptr [r12 + r14], r13b
	mov	byte ptr [r12 + r14 + 1], 0
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
.label_56:
	add	r13d, 0x83
	cmp	r13d, 0x104
	ja	.label_49
	jmp	qword ptr [(r13 * 8) + label_11]
.label_971:
	mov	byte ptr [rip + use_form_feed],  1
	jmp	.label_14
.label_969:
	cmp	qword ptr [rip + first_page_number],  0
	jne	.label_21
	mov	rdx, qword ptr [rip + optarg]
	cmp	byte ptr [rdx], 0x2b
	jne	.label_21
	inc	rdx
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	xor	r15d, r15d
	test	al, al
	jne	.label_24
.label_21:
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, ebp
	inc	ebp
	mov	qword ptr [rbx + rcx*8], rax
	jmp	.label_14
.label_970:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + date_format],  rax
	jmp	.label_14
.label_972:
	mov	byte ptr [rip + join_lines],  1
	jmp	.label_14
.label_973:
	mov	byte ptr [rip + skip_count],  1
	mov	r13, qword ptr [rip + optarg]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	esi, 0x80000000
	mov	edx, OFFSET FLAT:start_line_num
	jmp	.label_48
.label_974:
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_52
	mov	dword ptr [rip + col_sep_length],  0
	mov	byte ptr [rip + use_col_separator],  1
	mov	rdi, qword ptr [rip + optarg]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_55
	call	separator_string
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_14
.label_975:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  0
	jmp	.label_14
.label_976:
	mov	byte ptr [rip + truncate_lines],  1
	mov	r13, qword ptr [rip + optarg]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:chars_per_line
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	jmp	.label_14
.label_977:
	mov	byte ptr [rip + print_across_flag],  1
	mov	byte ptr [rip + storing_columns],  1
	jmp	.label_14
.label_978:
	mov	byte ptr [rip + balance_columns],  1
	jmp	.label_14
.label_979:
	mov	byte ptr [rip + use_cntrl_prefix],  1
	jmp	.label_14
.label_980:
	mov	byte ptr [rip + double_space],  1
	jmp	.label_14
.label_981:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	je	.label_35
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_35:
	mov	byte ptr [rip + untabify_input],  1
	jmp	.label_14
.label_982:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + custom_header],  rax
	jmp	.label_14
.label_983:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	je	.label_33
	mov	esi, 0x69
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_33:
	mov	byte ptr [rip + tabify_output],  1
	jmp	.label_14
.label_984:
	mov	r13, qword ptr [rip + optarg]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:lines_per_page
	jmp	.label_48
.label_985:
	mov	byte ptr [rip + parallel_files],  1
	mov	byte ptr [rip + storing_columns],  1
	jmp	.label_14
.label_986:
	mov	byte ptr [rip + numbered_lines],  1
	mov	rdi, qword ptr [rip + optarg]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_24
	mov	esi, 0x6e
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	jmp	.label_14
.label_987:
	mov	r13, qword ptr [rip + optarg]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, OFFSET FLAT:chars_per_margin
.label_48:
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	jmp	.label_24
.label_988:
	mov	byte ptr [rip + ignore_failed_opens],  1
	jmp	.label_14
.label_989:
	mov	rdi, qword ptr [rip + optarg]
	xor	r15d, r15d
	mov	al, 1
	test	rdi, rdi
	je	.label_45
	mov	dword ptr [rsp + 0x10], eax
	movzx	eax, byte ptr [rip + use_col_separator]
	xor	al, 1
	test	al, 1
	je	.label_51
	call	separator_string
	xor	r15d, r15d
	jmp	.label_51
.label_990:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
	jmp	.label_14
.label_991:
	mov	byte ptr [rip + use_esc_sequence],  1
	jmp	.label_14
.label_992:
	mov	r13, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	lea	rdx, [rsp + 0x44]
	mov	esi, 1
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	movzx	eax, byte ptr [rip + truncate_lines]
	test	al, al
	jne	.label_17
	mov	eax, dword ptr [rsp + 0x44]
	mov	dword ptr [rip + chars_per_line],  eax
.label_17:
	mov	al, 1
	mov	dword ptr [rsp + 0x10], eax
	xor	r15d, r15d
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_24
.label_993:
	mov	rdi, qword ptr [rip + optarg]
	call	parse_column_count
	mov	rdi, r12
	call	free
	mov	qword ptr [rsp + 0x38], 0
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_14:
	xor	r15d, r15d
.label_24:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r8, [rsp + 0x14]
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	mov	r14, r15
	jne	.label_23
	test	r12, r12
	je	.label_46
	mov	rdi, r12
	call	parse_column_count
	mov	rdi, r12
	call	free
.label_46:
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x18]
	mov	r13d, dword ptr [rsp + 0x10]
.label_31:
	cmp	qword ptr [rip + date_format],  0
	jne	.label_61
	mov	edi, OFFSET FLAT:label_62
	call	getenv
	mov	ecx, OFFSET FLAT:label_65
	test	rax, rax
	je	.label_66
	mov	edi, 2
	call	hard_locale
	mov	edx, OFFSET FLAT:label_65
	mov	ecx, OFFSET FLAT:label_71
	test	al, al
	cmovne	rcx, rdx
.label_66:
	mov	qword ptr [rip + date_format],  rcx
.label_61:
	mov	edi, OFFSET FLAT:label_9
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [rip + localtz],  rax
	cmp	qword ptr [rip + first_page_number],  0
	jne	.label_18
	mov	qword ptr [rip + first_page_number],  1
.label_18:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_26
	cmp	byte ptr [rip + explicit_columns],  1
	je	.label_53
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_26
	cmp	byte ptr [rip + print_across_flag],  1
	je	.label_32
.label_26:
	test	r13b, 1
	je	.label_25
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_30
	test	r12b, 1
	je	.label_25
	test	byte ptr [rip + use_col_separator],  1
	jne	.label_25
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_47
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_25
.label_47:
	mov	al, byte ptr [rip + truncate_lines]
	test	al, al
	jne	.label_43
	mov	byte ptr [rip + join_lines],  1
	cmp	dword ptr [rip + col_sep_length],  0
	jg	.label_43
	jmp	.label_25
.label_30:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_54
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_57
.label_54:
	mov	byte ptr [rip + truncate_lines],  1
	test	r12b, 1
	je	.label_25
.label_43:
	mov	byte ptr [rip + use_col_separator],  1
	jmp	.label_25
.label_57:
	mov	byte ptr [rip + join_lines],  1
.label_25:
	mov	ecx, dword ptr [rip + optind]
	cmp	ecx, r15d
	jge	.label_16
	mov	eax, dword ptr [rip + optind]
	nop	dword ptr [rax]
.label_50:
	movsxd	rcx, ecx
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	edx, ebp
	inc	ebp
	mov	qword ptr [rbx + rdx*8], rcx
	inc	eax
	cmp	eax, r15d
	mov	ecx, eax
	jl	.label_50
	mov	dword ptr [rip + optind],  eax
.label_16:
	test	ebp, ebp
	je	.label_64
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_29
	mov	edi, ebp
	mov	rsi, rbx
	jmp	.label_22
	nop	word ptr cs:[rax + rax]
.label_29:
	mov	edi, 1
	mov	rsi, rbx
	call	print_files
	add	rbx, 8
	dec	ebp
	jne	.label_29
	jmp	.label_28
.label_64:
	xor	edi, edi
	xor	esi, esi
.label_22:
	call	print_files
.label_28:
	call	cleanup
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_20
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_36
.label_20:
	movzx	eax, byte ptr [rip + failed_opens]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_967:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_39
	mov	edx, OFFSET FLAT:label_40
	mov	r8d, OFFSET FLAT:label_41
	mov	r9d, OFFSET FLAT:label_42
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_968:
	xor	edi, edi
	call	usage
.label_49:
	mov	edi, 1
	call	usage
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	jmp	.label_13
.label_36:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	jmp	.label_13
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
.label_13:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402470

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r15d, esi
	mov	r14d, edi
	mov	qword ptr [rsp + 8], -1
	lea	rsi, [rsp]
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_52
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_74
	mov	rbp, qword ptr [rsp]
	xor	eax, eax
	cmp	rbp, rbx
	je	.label_72
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_72
	cmp	byte ptr [rbp], 0x3a
	jne	.label_75
	inc	rbp
	lea	rsi, [rsp]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_52
	mov	rdi, rbp
	call	xstrtoumax
	test	eax, eax
	jne	.label_74
	cmp	rbp, qword ptr [rsp]
	je	.label_76
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x10]
	jb	.label_76
.label_75:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax], 0
	je	.label_73
.label_76:
	xor	eax, eax
	jmp	.label_72
.label_73:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rip + first_page_number],  rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rip + last_page_number],  rax
	mov	al, 1
.label_72:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_74:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	
	.section	.text
	.align	32
	#Procedure 0x402550

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:columns
	mov	rdi, rbx
	mov	rcx, rax
	call	getoptnum
	mov	byte ptr [rip + explicit_columns],  1
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402590

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rcx
	mov	r14d, esi
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jb	.label_78
	inc	rbx
	mov	byte ptr [rdx], al
.label_78:
	cmp	byte ptr [rbx], 0
	je	.label_80
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_52
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_79
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_79
	mov	dword ptr [rbp], ecx
.label_80:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_79:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	jg	.label_82
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	movsx	ebp, r14b
	mov	rdi, rbx
	call	quote
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402660

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	push	rbx
	mov	rax, rcx
	mov	rbx, rdx
	movsxd	rsi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_52
	xor	r9d, r9d
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rbx], eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690

	.globl separator_string
	.type separator_string, @function
separator_string:
	push	rbx
	mov	rbx, rdi
	call	strlen
	test	rax, -0x80000000
	jne	.label_83
	mov	dword ptr [rip + col_sep_length],  eax
	mov	qword ptr [rip + col_sep_string],  rbx
	pop	rbx
	ret	
.label_83:
	call	integer_overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_84
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_84:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
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
	#Procedure 0x402950

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	call	init_parameters
	mov	edi, ebp
	mov	rsi, rbx
	call	init_fps
	test	al, al
	je	.label_104
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_105
	call	init_store_cols
.label_105:
	mov	rdi, qword ptr [rip + first_page_number]
	mov	eax, 1
	cmp	rdi, 2
	jb	.label_106
	call	skip_to_page
	test	al, al
	je	.label_104
	mov	rax, qword ptr [rip + first_page_number]
.label_106:
	mov	qword ptr [rip + page_number],  rax
	call	init_funcs
	mov	eax, dword ptr [rip + line_count]
	mov	dword ptr [rip + line_number],  eax
	nop	word ptr cs:[rax + rax]
.label_103:
	call	print_page
	test	al, al
	jne	.label_103
.label_104:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029d0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rax
	mov	rdi, qword ptr [rip + number_buff]
	call	free
	mov	rdi, qword ptr [rip + clump_buff]
	call	free
	mov	rdi, qword ptr [rip + column_vector]
	call	free
	mov	rdi, qword ptr [rip + line_vector]
	call	free
	mov	rdi, qword ptr [rip + end_vector]
	call	free
	mov	rdi, qword ptr [rip + buff]
	pop	rax
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a20

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_109
	nop	
.label_119:
	mov	edi, OFFSET FLAT:label_39
	call	strcmp
	test	eax, eax
	je	.label_117
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_119
.label_117:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_39
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_112
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_111
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_111
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_39
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_112
	mov	ecx, OFFSET FLAT:label_39
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_115
	mov	ecx, OFFSET FLAT:label_52
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
	#Procedure 0x402ba0

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
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
	.align	32
	#Procedure 0x402bd0

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rax
	mov	eax, dword ptr [rip + lines_per_page]
	add	eax, -0xa
	mov	dword ptr [rip + lines_per_body],  eax
	jle	.label_140
	cmp	byte ptr [rip + extremities],  1
	je	.label_139
	jmp	.label_121
.label_140:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
.label_139:
	mov	eax, dword ptr [rip + lines_per_page]
	mov	dword ptr [rip + lines_per_body],  eax
.label_121:
	cmp	byte ptr [rip + double_space],  1
	jne	.label_124
	mov	eax, dword ptr [rip + lines_per_body]
	mov	ecx, eax
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [rip + lines_per_body],  ecx
.label_124:
	test	edi, edi
	je	.label_132
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_133
	mov	dword ptr [rip + columns],  edi
	jmp	.label_133
.label_132:
	mov	byte ptr [rip + parallel_files],  0
.label_133:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_136
	mov	byte ptr [rip + balance_columns],  1
.label_136:
	cmp	dword ptr [rip + columns],  2
	jl	.label_141
	mov	cl, byte ptr [rip + use_col_separator]
	mov	al, byte ptr [rip + join_lines]
	test	cl, cl
	je	.label_142
	cmp	dword ptr [rip + col_sep_length],  1
	jne	.label_123
	xor	al, 1
	test	al, 1
	je	.label_123
	mov	rax, qword ptr [rip + col_sep_string]
	cmp	byte ptr [rax], 9
	jne	.label_123
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_122
	jmp	.label_123
.label_141:
	mov	byte ptr [rip + storing_columns],  1
	jmp	.label_130
.label_142:
	mov	ecx, OFFSET FLAT:label_131
	mov	edx, OFFSET FLAT:label_122
	test	al, 1
	cmovne	rdx, rcx
	mov	qword ptr [rip + col_sep_string],  rdx
	mov	dword ptr [rip + col_sep_length],  1
	mov	byte ptr [rip + use_col_separator],  1
.label_123:
	mov	byte ptr [rip + truncate_lines],  1
	mov	byte ptr [rip + tabify_output],  1
.label_130:
	cmp	byte ptr [rip + join_lines],  1
	jne	.label_125
	mov	byte ptr [rip + truncate_lines],  0
.label_125:
	xor	r9d, r9d
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_143
	mov	eax, dword ptr [rip + start_line_num]
	mov	dword ptr [rip + line_count],  eax
	mov	eax, dword ptr [rip + chars_per_number]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_146
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	mov	edx, eax
	sub	edx, ecx
	neg	edx
	lea	eax, [rax + rdx + 8]
	jmp	.label_126
.label_146:
	inc	eax
.label_126:
	mov	dword ptr [rip + number_width],  eax
	mov	cl, byte ptr [rip + parallel_files]
	xor	r9d, r9d
	test	cl, cl
	cmovne	r9d, eax
.label_143:
	mov	edi, dword ptr [rip + col_sep_length]
	test	edi, edi
	js	.label_135
	je	.label_129
	mov	ecx, dword ptr [rip + columns]
	test	ecx, ecx
	jle	.label_137
	dec	ecx
	mov	esi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	edi
	cmp	eax, ecx
	jge	.label_129
	jmp	.label_128
.label_135:
	mov	r8d, dword ptr [rip + columns]
	test	r8d, r8d
	jle	.label_144
	cmp	edi, -1
	je	.label_129
	dec	r8d
	mov	eax, 0x80000000
	cdq	
	idiv	edi
	mov	esi, 0x7fffffff
	cmp	eax, r8d
	jge	.label_129
	jmp	.label_128
.label_137:
	mov	eax, 0x80000000
	cdq	
	idiv	edi
	mov	esi, 0x7fffffff
	cmp	ecx, eax
	jg	.label_129
	jmp	.label_128
.label_144:
	mov	esi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	edi
	cmp	r8d, eax
	jle	.label_128
.label_129:
	mov	esi, dword ptr [rip + columns]
	dec	esi
	imul	esi, dword ptr [rip + col_sep_length]
	test	esi, esi
	js	.label_134
.label_128:
	mov	ecx, dword ptr [rip + chars_per_line]
	sub	ecx, r9d
	mov	edx, esi
	xor	edx, 0x80000000
	jmp	.label_138
.label_134:
	lea	ecx, [rsi + 0x7fffffff]
	mov	edx, dword ptr [rip + chars_per_line]
	sub	edx, r9d
.label_138:
	xor	eax, eax
	cmp	ecx, edx
	jl	.label_145
	mov	eax, dword ptr [rip + chars_per_line]
	add	esi, r9d
	sub	eax, esi
.label_145:
	cdq	
	idiv	dword ptr [rip + columns]
	mov	dword ptr [rip + chars_per_column],  eax
	test	eax, eax
	jle	.label_148
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_127
	mov	rdi, qword ptr [rip + number_buff]
	call	free
	movsxd	rax, dword ptr [rip + chars_per_number]
	cmp	rax, 0xb
	mov	edi, 0xb
	cmova	rdi, rax
	inc	rdi
	call	xmalloc
	mov	qword ptr [rip + number_buff],  rax
.label_127:
	mov	rdi, qword ptr [rip + clump_buff]
	call	free
	mov	eax, dword ptr [rip + chars_per_input_tab]
	cmp	eax, 8
	mov	ecx, 8
	cmovge	ecx, eax
	movsxd	rdi, ecx
	call	xmalloc
	mov	qword ptr [rip + clump_buff],  rax
	pop	rax
	ret	
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
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
	.align	32
	#Procedure 0x402ea0

	.globl init_fps
	.type init_fps, @function
init_fps:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebp, edi
	mov	dword ptr [rip + total_files],  0
	mov	rdi, qword ptr [rip + column_vector]
	call	free
	movsxd	rdi, dword ptr [rip + columns]
	mov	esi, 0x40
	call	xnmalloc
	mov	rbx, rax
	mov	qword ptr [rip + column_vector],  rbx
	cmp	byte ptr [rip + parallel_files],  1
	je	.label_153
	test	ebp, ebp
	jle	.label_154
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	open_file
	test	al, al
	je	.label_157
	mov	rbp, qword ptr [r14]
	mov	rdi, qword ptr [rbx]
	call	fileno
	mov	rdi, rbp
	mov	esi, eax
	jmp	.label_149
	nop	dword ptr [rax + rax]
.label_156:
	add	rbx, 0x40
	add	r14, 8
.label_153:
	test	ebp, ebp
	je	.label_152
	dec	ebp
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	open_file
	test	al, al
	jne	.label_156
	add	rbx, -0x40
	dec	dword ptr [rip + columns]
	jmp	.label_156
.label_152:
	cmp	dword ptr [rip + columns],  0
	je	.label_157
	mov	edi, OFFSET FLAT:label_52
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_150
.label_157:
	xor	eax, eax
	jmp	.label_151
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbx], rax
	mov	byte ptr [rip + have_read_stdin],  1
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	edi, OFFSET FLAT:label_52
	mov	esi, 0xffffffff
.label_149:
	call	init_header
	mov	dword ptr [rbx + 0x2c], 0
	mov	esi, dword ptr [rip + columns]
	cmp	esi, 1
	je	.label_150
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	add	rbx, 0x40
	mov	edx, 1
	sub	edx, esi
	nop	word ptr [rax + rax]
.label_155:
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	mov	dword ptr [rbx + 0x2c], 0
	add	rbx, 0x40
	inc	edx
	jne	.label_155
.label_150:
	mov	eax, dword ptr [rip + total_files]
	mov	dword ptr [rip + files_ready_to_read],  eax
	mov	al, 1
.label_151:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	push	r14
	push	rbx
	mov	ecx, dword ptr [rip + columns]
	test	ecx, ecx
	js	.label_165
	je	.label_161
	mov	esi, dword ptr [rip + lines_per_body]
	test	esi, esi
	js	.label_164
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ecx
	jmp	.label_168
.label_165:
	mov	esi, dword ptr [rip + lines_per_body]
	test	esi, esi
	js	.label_170
	cmp	ecx, -1
	je	.label_161
	mov	eax, 0x80000000
	cdq	
	idiv	ecx
.label_168:
	cmp	eax, esi
	jge	.label_161
	jmp	.label_159
.label_164:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_162
.label_170:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_162:
	idiv	ecx
	cmp	esi, eax
	jl	.label_159
.label_161:
	mov	ebx, dword ptr [rip + columns]
	imul	ebx, dword ptr [rip + lines_per_body]
	cmp	ebx, 0x7fffffff
	je	.label_159
	mov	ebp, dword ptr [rip + chars_per_column]
	cmp	ebp, 0x7fffffff
	je	.label_159
	inc	ebp
	js	.label_163
	test	ebp, ebp
	je	.label_158
	test	ebx, ebx
	js	.label_167
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ebp
	jmp	.label_166
.label_163:
	test	ebx, ebx
	js	.label_169
	cmp	ebp, -1
	je	.label_158
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
.label_166:
	cmp	eax, ebx
	jge	.label_158
	jmp	.label_159
.label_167:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_160
.label_169:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_160:
	idiv	ebp
	cmp	ebx, eax
	jl	.label_159
.label_158:
	lea	r14d, [rbx + 1]
	imul	ebp, ebx
	mov	rdi, qword ptr [rip + line_vector]
	call	free
	movsxd	rdi, r14d
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [rip + line_vector],  rax
	mov	rdi, qword ptr [rip + end_vector]
	call	free
	movsxd	rdi, ebx
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [rip + end_vector],  rax
	mov	rdi, qword ptr [rip + buff]
	call	free
	movsxd	rbx, ebp
	movzx	esi, byte ptr [rip + use_col_separator]
	inc	rsi
	mov	rdi, rbx
	call	xnmalloc
	mov	qword ptr [rip + buff],  rax
	movzx	eax, byte ptr [rip + use_col_separator]
	inc	rax
	imul	rax, rbx
	mov	qword ptr [rip + buff_allocated],  rax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_159:
	call	integer_overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	r14, 2
	jb	.label_171
	mov	r15d, 1
	nop	dword ptr [rax + rax]
.label_174:
	cmp	dword ptr [rip + lines_per_body],  2
	jl	.label_175
	mov	r12d, 1
	nop	
.label_180:
	cmp	dword ptr [rip + columns],  0
	jle	.label_181
	xor	ebp, ebp
	mov	rbx, qword ptr [rip + column_vector]
	nop	word ptr cs:[rax + rax]
.label_177:
	inc	ebp
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_176
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
.label_176:
	add	rbx, 0x40
	cmp	ebp, dword ptr [rip + columns]
	jl	.label_177
.label_181:
	inc	r12d
	cmp	r12d, dword ptr [rip + lines_per_body]
	jl	.label_180
.label_175:
	mov	byte ptr [rip + last_line],  1
	cmp	dword ptr [rip + columns],  0
	jle	.label_183
	xor	ebp, ebp
	mov	rbx, qword ptr [rip + column_vector]
	nop	word ptr cs:[rax + rax]
.label_182:
	inc	ebp
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_172
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
.label_172:
	add	rbx, 0x40
	cmp	ebp, dword ptr [rip + columns]
	jl	.label_182
.label_183:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_173
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	jle	.label_173
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, dword ptr [rip + columns]
	add	rax, 0x10
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_184:
	cmp	dword ptr [rax], 3
	je	.label_179
	mov	dword ptr [rax], 2
.label_179:
	inc	edx
	add	rax, 0x40
	cmp	edx, ecx
	jl	.label_184
.label_173:
	call	reset_status
	mov	byte ptr [rip + last_line],  0
	cmp	dword ptr [rip + files_ready_to_read],  0
	jle	.label_185
	inc	r15
	cmp	r15, r14
	jb	.label_174
	jmp	.label_171
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	mov	r8, r15
	call	error
.label_171:
	cmp	dword ptr [rip + files_ready_to_read],  0
	setg	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	mov	eax, dword ptr [rip + chars_per_margin]
	xor	esi, esi
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_189
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_186
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_186
	mov	esi, dword ptr [rip + chars_per_column]
	add	esi, eax
	add	esi, dword ptr [rip + number_width]
	jmp	.label_189
.label_186:
	mov	esi, dword ptr [rip + chars_per_column]
	add	esi, eax
.label_189:
	push	rbp
	push	r15
	push	r14
	push	rbx
	add	eax, dword ptr [rip + col_sep_length]
	mov	rcx, qword ptr [rip + column_vector]
	mov	edx, 1
	mov	bl, byte ptr [rip + storing_columns]
	cmp	dword ptr [rip + columns],  2
	jl	.label_195
	mov	r11b, byte ptr [rip + numbered_lines]
	mov	r8b, byte ptr [rip + parallel_files]
	xor	r8b, 1
	mov	r9b, byte ptr [rip + truncate_lines]
	mov	r14d, dword ptr [rip + col_sep_length]
	mov	r15d, dword ptr [rip + chars_per_column]
	mov	ebp, dword ptr [rip + columns]
	mov	edx, 1
	mov	r10b, byte ptr [rip + storing_columns]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_196:
	test	bl, 1
	je	.label_191
	mov	qword ptr [rcx + 32], OFFSET FLAT:print_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:read_line
	jmp	.label_194
	nop	word ptr [rax + rax]
.label_191:
	mov	qword ptr [rcx + 32], OFFSET FLAT:store_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:print_stored
.label_194:
	test	r11b, 1
	je	.label_188
	cmp	edx, 1
	sete	bl
	or	bl, r8b
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_188:
	xor	ebx, ebx
.label_187:
	and	bl, 1
	mov	byte ptr [rcx + 0x38], bl
	mov	dword ptr [rcx + 0x34], eax
	add	esi, r14d
	mov	eax, esi
	lea	esi, [rsi + r15]
	mov	ebx, r9d
	and	bl, 1
	cmove	eax, edi
	test	bl, bl
	cmove	esi, edi
	add	rcx, 0x40
	inc	edx
	cmp	edx, ebp
	mov	ebx, r10d
	jl	.label_196
	mov	ebx, r10d
.label_195:
	test	bl, 1
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jne	.label_193
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_193
	mov	qword ptr [rcx + 32], OFFSET FLAT:store_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:print_stored
	jmp	.label_197
.label_193:
	mov	qword ptr [rcx + 32], OFFSET FLAT:print_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:read_line
.label_197:
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_190
	mov	sil, byte ptr [rip + parallel_files]
	cmp	edx, 1
	sete	dl
	xor	sil, 1
	or	sil, dl
	jmp	.label_192
.label_190:
	xor	esi, esi
.label_192:
	and	sil, 1
	mov	byte ptr [rcx + 0x38], sil
	mov	dword ptr [rcx + 0x34], eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	init_page
	call	cols_ready_to_print
	test	eax, eax
	je	.label_206
	mov	al, byte ptr [rip + extremities]
	test	al, al
	jne	.label_222
	mov	byte ptr [rip + print_a_header],  1
.label_222:
	mov	byte ptr [rip + pad_vertically],  0
	mov	r14d, dword ptr [rip + lines_per_body]
	mov	cl, byte ptr [rip + double_space]
	shl	r14d, cl
	xor	r15d, r15d
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_216:
	mov	edi, 0xa
	call	putchar_unlocked
	dec	r14d
.label_212:
	test	r14d, r14d
	jle	.label_214
	call	cols_ready_to_print
	test	eax, eax
	je	.label_207
	mov	dword ptr [rip + output_position],  0
	mov	dword ptr [rip + spaces_not_printed],  0
	mov	dword ptr [rip + separators_not_printed],  0
	mov	byte ptr [rip + pad_vertically],  0
	mov	byte ptr [rip + align_empty_cols],  0
	mov	byte ptr [rip + empty_line],  1
	cmp	dword ptr [rip + columns],  0
	jle	.label_199
	xor	ebp, ebp
	mov	rbx, qword ptr [rip + column_vector]
	nop	dword ptr [rax]
.label_202:
	mov	dword ptr [rip + input_position],  0
	cmp	dword ptr [rbx + 0x30], 0
	jg	.label_215
	cmp	dword ptr [rbx + 0x10], 1
	jne	.label_218
.label_215:
	mov	byte ptr [rip + FF_only],  0
	mov	eax, dword ptr [rbx + 0x34]
	mov	dword ptr [rip + padding_not_printed],  eax
	mov	rdi, rbx
	call	qword ptr [rbx + 0x18]
	test	al, al
	jne	.label_223
	mov	rdi, rbx
	call	read_rest_of_line
.label_223:
	and	r15b, 1
	or	r15b, byte ptr [rip + pad_vertically]
	mov	eax, dword ptr [rbx + 0x30]
	lea	ecx, [rax - 1]
	mov	dword ptr [rbx + 0x30], ecx
	cmp	eax, 1
	jg	.label_200
	call	cols_ready_to_print
	test	eax, eax
	je	.label_208
.label_200:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_209
	mov	eax, dword ptr [rbx + 0x10]
	test	eax, eax
	je	.label_209
	cmp	byte ptr [rip + empty_line],  1
	je	.label_217
	cmp	eax, 3
	je	.label_201
	cmp	eax, 2
	jne	.label_209
	cmp	byte ptr [rip + FF_only],  1
	je	.label_201
	jmp	.label_209
.label_218:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_209
	cmp	byte ptr [rip + empty_line],  1
	jne	.label_201
.label_217:
	mov	byte ptr [rip + align_empty_cols],  1
	jmp	.label_209
.label_201:
	mov	rdi, rbx
	call	align_column
	nop	dword ptr [rax + rax]
.label_209:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_198
	inc	dword ptr [rip + separators_not_printed]
.label_198:
	add	rbx, 0x40
	inc	ebp
	cmp	ebp, dword ptr [rip + columns]
	jl	.label_202
.label_208:
	cmp	byte ptr [rip + pad_vertically],  0
	je	.label_199
	mov	edi, 0xa
	call	putchar_unlocked
	dec	r14d
.label_199:
	call	cols_ready_to_print
	test	eax, eax
	jne	.label_213
	mov	al, byte ptr [rip + extremities]
	test	al, al
	jne	.label_214
.label_213:
	test	r15b, 1
	je	.label_212
	mov	al, byte ptr [rip + double_space]
	xor	al, 1
	test	al, 1
	je	.label_216
	jmp	.label_212
.label_214:
	test	r14d, r14d
	jne	.label_207
	cmp	dword ptr [rip + columns],  0
	jle	.label_220
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, dword ptr [rip + columns]
	add	rax, 0x39
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_205:
	cmp	dword ptr [rax - 0x29], 0
	jne	.label_219
	mov	byte ptr [rax], 1
.label_219:
	add	rax, 0x40
	inc	edx
	cmp	edx, ecx
	jl	.label_205
	jmp	.label_207
.label_206:
	xor	eax, eax
	jmp	.label_203
.label_220:
	xor	r14d, r14d
.label_207:
	and	r15b, 1
	mov	byte ptr [rip + pad_vertically],  r15b
	je	.label_210
	mov	al, byte ptr [rip + extremities]
	test	al, al
	je	.label_211
.label_210:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_204
	cmp	byte ptr [rip + print_a_FF],  1
	jne	.label_204
	mov	edi, 0xc
	call	putchar_unlocked
	mov	byte ptr [rip + print_a_FF],  0
	jmp	.label_204
.label_211:
	add	r14d, 5
	mov	edi, r14d
	call	pad_down
.label_204:
	mov	rax, qword ptr [rip + last_page_number]
	mov	rcx, qword ptr [rip + page_number]
	inc	rcx
	mov	qword ptr [rip + page_number],  rcx
	cmp	rax, rcx
	jae	.label_221
	xor	eax, eax
	jmp	.label_203
.label_221:
	call	reset_status
	mov	al, 1
.label_203:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_228
	cmp	byte ptr [r14 + 1], 0
	je	.label_224
.label_228:
	mov	qword ptr [rbx + 8], r14
	mov	esi, OFFSET FLAT:label_226
	mov	rdi, r14
	call	fopen_safer
	mov	qword ptr [rbx], rax
	jmp	.label_231
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbx], rax
	mov	byte ptr [rip + have_read_stdin],  1
.label_231:
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_225
	mov	esi, 2
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	bl, 1
	jmp	.label_229
.label_225:
	mov	byte ptr [rip + failed_opens],  1
	mov	al, byte ptr [rip + ignore_failed_opens]
	test	al, al
	je	.label_227
	xor	ebx, ebx
	jmp	.label_229
.label_227:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_229:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r13, rdi
	movzx	ecx, byte ptr [r13]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_232
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_232:
	cmp	eax, 1
	sbb	r15d, r15d
	or	r15d, esi
	js	.label_238
	lea	rsi, [rsp + 0x68]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_233
.label_238:
	cmp	qword ptr [rip + init_header.timespec],  0
	jne	.label_234
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_234:
	movups	xmm0, xmmword ptr [rip + init_header.timespec]
	movaps	xmmword ptr [rsp], xmm0
	jmp	.label_237
.label_233:
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
.label_237:
	mov	r14d, dword ptr [rsp + 8]
	mov	rdi, qword ptr [rip + localtz]
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x30]
	call	localtime_rz
	test	rax, rax
	je	.label_236
	mov	rdx, qword ptr [rip + date_format]
	mov	r8, qword ptr [rip + localtz]
	lea	r12, [rsp + 0x30]
	xor	edi, edi
	mov	rsi, -1
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rax
	mov	rdx, qword ptr [rip + date_format]
	mov	r8, qword ptr [rip + localtz]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	jmp	.label_239
.label_236:
	mov	edi, 0x21
	call	xmalloc
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	timetostr
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	mov	r9d, r14d
	call	__sprintf_chk
.label_239:
	mov	rdi, qword ptr [rip + date_text]
	call	free
	mov	qword ptr [rip + date_text],  rbp
	mov	rax, qword ptr [rip + custom_header]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:label_52
	cmovs	r13, rcx
	test	rax, rax
	cmovne	r13, rax
	mov	qword ptr [rip + file_text],  r13
	mov	ebx, dword ptr [rip + chars_per_line]
	mov	rdi, qword ptr [rip + date_text]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	rdi, qword ptr [rip + file_text]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	dword ptr [rip + header_width_available],  ebx
	add	rsp, 0xf8
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
	#Procedure 0x4039b0

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039c0

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, 0xc
	jne	.label_244
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_244
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, 0xa
	jne	.label_244
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
.label_244:
	mov	al, byte ptr [rip + last_line]
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_249:
	mov	rdi, rbx
	call	getc_unlocked
.label_242:
	cmp	eax, -1
	je	.label_248
	cmp	eax, 0xa
	je	.label_245
	cmp	eax, 0xc
	jne	.label_249
	cmp	byte ptr [rip + last_line],  1
	jne	.label_243
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_240
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_243
.label_248:
	mov	rdi, r15
	call	close_file
	jmp	.label_245
.label_240:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_243
	mov	rcx, qword ptr [rip + column_vector]
	add	rcx, 0x39
.label_247:
	mov	byte ptr [rcx], 0
	add	rcx, 0x40
	dec	eax
	jne	.label_247
.label_243:
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_241
	mov	edi, eax
	mov	rsi, rbx
	call	ungetc
.label_241:
	mov	rdi, r15
	call	hold_file
.label_245:
	mov	al, byte ptr [rip + skip_count]
	test	al, al
	jne	.label_246
	cmp	r14d, 1
	setne	al
	cmp	ebp, 0xc
	je	.label_246
	and	al, byte ptr [rip + parallel_files]
	jne	.label_246
	inc	dword ptr [rip + line_count]
.label_246:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ad0

	.globl reset_status
	.type reset_status, @function
reset_status:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_250
	mov	rcx, qword ptr [rip + column_vector]
	add	rcx, 0x10
	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	dword ptr [rcx], 2
	jne	.label_251
	mov	dword ptr [rcx], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_251:
	add	rcx, 0x40
	dec	eax
	jne	.label_253
.label_250:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_254
	mov	rax, qword ptr [rip + column_vector]
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_252
	mov	dword ptr [rip + files_ready_to_read],  0
	ret	
.label_252:
	mov	dword ptr [rip + files_ready_to_read],  1
.label_254:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40

	.globl hold_file
	.type hold_file, @function
hold_file:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_255
	mov	dword ptr [rdi + 0x10], 2
	jmp	.label_257
.label_255:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_257
	mov	rcx, qword ptr [rip + column_vector]
	movzx	edx, byte ptr [rip + storing_columns]
	inc	edx
	add	rcx, 0x10
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	dword ptr [rcx], edx
	add	rcx, 0x40
	dec	eax
	jne	.label_256
.label_257:
	mov	dword ptr [rdi + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x10], 3
	je	.label_258
	mov	rdi, qword ptr [rbx]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_261
	mov	rdi, qword ptr [rbx]
	call	fileno
	test	eax, eax
	je	.label_259
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_261
.label_259:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_263
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_262
.label_263:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_262
	mov	rcx, qword ptr [rip + column_vector]
	add	rcx, 0x30
	nop	
.label_264:
	mov	dword ptr [rcx - 0x20], 3
	cmp	dword ptr [rcx - 4], 0
	jne	.label_260
	mov	dword ptr [rcx], 0
.label_260:
	add	rcx, 0x40
	dec	eax
	jne	.label_264
.label_262:
	dec	dword ptr [rip + files_ready_to_read]
.label_258:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_261:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	ebx, edi
	mov	eax, dword ptr [rip + buff_current]
	cmp	rax, qword ptr [rip + buff_allocated]
	jb	.label_265
	mov	rdi, qword ptr [rip + buff]
	mov	esi, OFFSET FLAT:buff_allocated
	call	x2realloc
	mov	qword ptr [rip + buff],  rax
.label_265:
	mov	eax, dword ptr [rip + buff_current]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + buff_current],  ecx
	mov	rcx, qword ptr [rip + buff]
	mov	byte ptr [rcx + rax], bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl print_stored
	.type print_stored, @function
print_stored:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rax, [r14 + 1]
	mov	dword ptr [r15 + 0x28], eax
	mov	rax, qword ptr [rip + line_vector]
	movsxd	r13, dword ptr [rax + r14*4]
	mov	rbx, qword ptr [rip + buff]
	add	rbx, r13
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_269
	call	print_header
.label_269:
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_272
	cmp	dword ptr [rip + columns],  0
	jle	.label_275
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, dword ptr [rip + columns]
	add	rax, 0x10
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_268:
	mov	dword ptr [rax], 2
	inc	edx
	add	rax, 0x40
	cmp	edx, ecx
	jl	.label_268
.label_275:
	mov	rax, qword ptr [rip + column_vector]
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_271
.label_272:
	mov	edi, dword ptr [rip + padding_not_printed]
	sub	edi, dword ptr [rip + col_sep_length]
	jle	.label_274
	call	pad_across_to
	mov	dword ptr [rip + padding_not_printed],  0
.label_274:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_267
	call	print_sep_string
.label_267:
	cmp	r13d, r12d
	je	.label_270
	sub	r12, r13
.label_273:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	jne	.label_273
.label_270:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jne	.label_266
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax, qword ptr [rip + end_vector]
	mov	eax, dword ptr [rax + r14*4]
	add	eax, edx
	mov	dword ptr [rip + output_position],  eax
	mov	ecx, dword ptr [rip + col_sep_length]
	sub	edx, ecx
	cmp	edx, dword ptr [rip + chars_per_margin]
	jne	.label_266
	sub	eax, ecx
	mov	dword ptr [rip + output_position],  eax
	jmp	.label_266
.label_271:
	cmp	byte ptr [rip + extremities],  1
	jne	.label_266
	mov	byte ptr [rip + pad_vertically],  0
.label_266:
	mov	al, 1
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl print_char
	.type print_char, @function
print_char:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	byte ptr [rip + tabify_output],  1
	jne	.label_276
	cmp	bl, 0x20
	mov	eax, dword ptr [rip + spaces_not_printed]
	jne	.label_279
	inc	eax
	mov	dword ptr [rip + spaces_not_printed],  eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_279:
	test	eax, eax
	jle	.label_278
	call	print_white_space
.label_278:
	movsx	edi, bl
	call	to_uchar
	movzx	r14d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_277
	cmp	bl, 8
	jne	.label_276
	dec	dword ptr [rip + output_position]
	jmp	.label_276
.label_277:
	inc	dword ptr [rip + output_position]
.label_276:
	movsx	edi, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e60

	.globl read_line
	.type read_line, @function
read_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdi
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
	mov	ebp, dword ptr [rip + input_position]
	cmp	r12d, 0xc
	jne	.label_287
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_281
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
	cmp	r12d, 0xa
	jne	.label_287
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
.label_287:
	mov	byte ptr [r13 + 0x39], 0
	cmp	r12d, -1
	je	.label_289
	cmp	r12d, 0xa
	je	.label_302
	cmp	r12d, 0xc
	je	.label_296
	movsx	edi, r12b
	call	char_to_clump
	mov	r14d, eax
.label_302:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_298
	mov	eax, dword ptr [rip + input_position]
	cmp	eax, dword ptr [rip + chars_per_column]
	jle	.label_298
	mov	dword ptr [rip + input_position],  ebp
	xor	r15d, r15d
	jmp	.label_286
.label_298:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_292
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_284
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_284
	call	print_header
.label_284:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_282
	cmp	byte ptr [rip + align_empty_cols],  1
	jne	.label_282
	mov	ebx, dword ptr [rip + separators_not_printed]
	mov	dword ptr [rip + separators_not_printed],  0
	test	ebx, ebx
	jle	.label_294
	mov	rbp, qword ptr [rip + column_vector]
	nop	dword ptr [rax]
.label_299:
	mov	rdi, rbp
	call	align_column
	inc	dword ptr [rip + separators_not_printed]
	add	rbp, 0x40
	dec	ebx
	jne	.label_299
.label_294:
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [rip + padding_not_printed],  eax
	mov	al, byte ptr [rip + truncate_lines]
	xor	ecx, ecx
	test	al, al
	cmovne	ecx, dword ptr [rip + chars_per_column]
	mov	dword ptr [rip + spaces_not_printed],  ecx
	mov	byte ptr [rip + align_empty_cols],  0
.label_282:
	mov	edi, dword ptr [rip + padding_not_printed]
	sub	edi, dword ptr [rip + col_sep_length]
	jle	.label_288
	call	pad_across_to
	mov	dword ptr [rip + padding_not_printed],  0
.label_288:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_292
	call	print_sep_string
.label_292:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_297
	mov	rdi, r13
	call	add_line_number
.label_297:
	mov	byte ptr [rip + empty_line],  0
	mov	r15b, 1
	cmp	r12d, 0xa
	je	.label_286
	mov	rdx, qword ptr [rip + clump_buff]
	mov	rdi, r13
	mov	esi, r14d
	jmp	.label_300
	nop	dword ptr [rax + rax]
.label_295:
	mov	rdx, qword ptr [rip + clump_buff]
	mov	rdi, r13
	mov	esi, eax
.label_300:
	call	print_clump
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, -1
	je	.label_285
	cmp	eax, 0xa
	je	.label_286
	cmp	eax, 0xc
	je	.label_293
	mov	ebx, dword ptr [rip + input_position]
	movsx	edi, al
	call	char_to_clump
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_295
	mov	ecx, dword ptr [rip + input_position]
	cmp	ecx, dword ptr [rip + chars_per_column]
	jle	.label_295
	mov	dword ptr [rip + input_position],  ebx
	xor	r15d, r15d
	jmp	.label_286
.label_289:
	mov	rdi, r13
	call	close_file
	jmp	.label_301
.label_281:
	mov	byte ptr [r13 + 0x39], 0
.label_296:
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_303
	mov	rsi, qword ptr [r13]
	mov	edi, eax
	call	ungetc
.label_303:
	mov	byte ptr [rip + FF_only],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_283
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_283
	mov	byte ptr [rip + pad_vertically],  1
	call	print_header
	jmp	.label_290
.label_283:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_290
	mov	byte ptr [rip + print_a_FF],  1
.label_290:
	mov	rdi, r13
	call	hold_file
.label_301:
	mov	r15b, 1
.label_286:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_285:
	mov	rdi, r13
	call	close_file
	jmp	.label_286
.label_293:
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_291
	mov	rsi, qword ptr [r13]
	mov	edi, eax
	call	ungetc
.label_291:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_280
	mov	byte ptr [rip + print_a_FF],  1
.label_280:
	mov	rdi, r13
	call	hold_file
	jmp	.label_286
	nop	
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl print_header
	.type print_header, @function
print_header:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x120
	mov	dword ptr [rip + output_position],  0
	mov	edi, dword ptr [rip + chars_per_margin]
	call	pad_across_to
	call	print_white_space
	cmp	qword ptr [rip + page_number],  0
	je	.label_305
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rip + page_number]
	lea	r15, [rsp]
	mov	esi, 1
	mov	edx, 0x114
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	ebx, dword ptr [rip + header_width_available]
	xor	esi, esi
	mov	rdi, r15
	call	gnu_mbswidth
	sub	ebx, eax
	cmovs	ebx, r14d
	mov	r9d, ebx
	sar	r9d, 1
	sub	ebx, r9d
	mov	edx, dword ptr [rip + chars_per_margin]
	mov	r8, qword ptr [rip + date_text]
	sub	rsp, 8
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_307
	mov	ecx, OFFSET FLAT:label_52
	mov	eax, 0
	push	r15
	push	OFFSET FLAT:label_122
	push	rbx
	push	qword ptr [rip + file_text]
	push	OFFSET FLAT:label_122
	call	__printf_chk
	add	rsp, 0x30
	mov	byte ptr [rip + print_a_header],  0
	mov	dword ptr [rip + output_position],  0
	add	rsp, 0x120
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	#Procedure 0x404230

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	eax, dword ptr [rip + output_position]
	mov	cl, byte ptr [rip + tabify_output]
	test	cl, cl
	je	.label_308
	sub	ebx, eax
	mov	dword ptr [rip + spaces_not_printed],  ebx
	jmp	.label_309
.label_308:
	cmp	eax, ebx
	jge	.label_311
	mov	ebp, ebx
	sub	ebp, eax
	nop	word ptr [rax + rax]
.label_310:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebp
	jne	.label_310
.label_311:
	mov	dword ptr [rip + output_position],  ebx
.label_309:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404280

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	cmp	dword ptr [rip + separators_not_printed],  0
	jle	.label_312
	mov	r12d, dword ptr [rip + col_sep_length]
	mov	r14, qword ptr [rip + col_sep_string]
	nop	word ptr cs:[rax + rax]
.label_314:
	lea	eax, [r12 - 1]
	test	r12d, r12d
	jle	.label_316
	mov	r15d, eax
	mov	rbx, r14
.label_318:
	mov	eax, dword ptr [rip + spaces_not_printed]
	cmp	byte ptr [rbx], 0x20
	jne	.label_319
	inc	eax
	mov	dword ptr [rip + spaces_not_printed],  eax
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_319:
	test	eax, eax
	jle	.label_320
	call	print_white_space
.label_320:
	movsx	edi, byte ptr [rbx]
	call	putchar_unlocked
	inc	dword ptr [rip + output_position]
.label_315:
	inc	rbx
	dec	r12d
	jg	.label_318
	lea	r14, [r14 + r15 + 1]
	mov	r12d, 0xffffffff
	jmp	.label_321
	nop	dword ptr [rax]
.label_316:
	mov	r12d, eax
.label_321:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_317
	call	print_white_space
.label_317:
	mov	eax, dword ptr [rip + separators_not_printed]
	lea	ecx, [rax - 1]
	mov	dword ptr [rip + separators_not_printed],  ecx
	cmp	eax, 1
	jg	.label_314
.label_313:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_312:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_313
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	print_white_space
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404360

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	push	r14
	push	rbx
	mov	ebx, dword ptr [rip + output_position]
	mov	eax, dword ptr [rip + spaces_not_printed]
	lea	r14d, [rax + rbx]
	cmp	eax, 2
	jl	.label_322
	nop	dword ptr [rax]
.label_326:
	mov	ecx, ebx
	mov	ebx, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r14d
	sub	ebp, ebx
	jl	.label_323
	movsx	edi, byte ptr [rip + output_tab_char]
	call	putchar_unlocked
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_326
	jmp	.label_323
.label_322:
	mov	ecx, ebx
.label_323:
	cmp	ecx, r14d
	jge	.label_325
	mov	ebx, r14d
	sub	ebx, ecx
	nop	dword ptr [rax]
.label_324:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebx
	jne	.label_324
.label_325:
	mov	dword ptr [rip + output_position],  r14d
	mov	dword ptr [rip + spaces_not_printed],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	mov	r15, qword ptr [rip + clump_buff]
	mov	al, byte ptr [rip + input_tab_char]
	cmp	al, bpl
	mov	ecx, 8
	cmove	ecx, dword ptr [rip + chars_per_input_tab]
	cmp	bpl, 9
	je	.label_327
	cmp	al, bpl
	je	.label_327
	movzx	r14d, bpl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_342
	cmp	byte ptr [rip + use_esc_sequence],  1
	jne	.label_331
	mov	byte ptr [r15], 0x5c
	xor	ebp, ebp
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:label_335
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	nop	dword ptr [rax]
.label_340:
	movzx	eax, byte ptr [rsp + rbp + 4]
	mov	byte ptr [r15 + rbp + 1], al
	inc	rbp
	mov	ebx, 4
	cmp	rbp, 3
	jne	.label_340
	jmp	.label_336
.label_327:
	mov	eax, dword ptr [rip + input_position]
	cdq	
	idiv	ecx
	mov	ebx, ecx
	sub	ebx, edx
	cmp	byte ptr [rip + untabify_input],  1
	jne	.label_337
	test	ebx, ebx
	je	.label_341
	dec	ecx
	sub	ecx, edx
	inc	rcx
	mov	esi, 0x20
	mov	rdi, r15
	mov	rdx, rcx
	call	memset
	mov	eax, ebx
	jmp	.label_332
.label_342:
	mov	byte ptr [r15], bpl
	mov	ebx, 1
.label_336:
	mov	ecx, dword ptr [rip + input_position]
	mov	eax, ebx
.label_330:
	add	ebx, ecx
	mov	dword ptr [rip + input_position],  ebx
	jmp	.label_329
.label_337:
	mov	byte ptr [r15], bpl
.label_339:
	mov	eax, 1
.label_332:
	mov	edx, ebx
	shr	edx, 0x1f
	mov	ecx, dword ptr [rip + input_position]
	test	ebx, ebx
	jns	.label_328
	test	ecx, ecx
	jne	.label_328
	mov	dword ptr [rip + input_position],  0
	xor	eax, eax
	jmp	.label_329
.label_331:
	cmp	byte ptr [rip + use_cntrl_prefix],  1
	jne	.label_334
	test	bpl, bpl
	js	.label_338
	mov	byte ptr [r15], 0x5e
	xor	bpl, 0x40
	mov	byte ptr [r15 + 1], bpl
	mov	ebx, 2
	jmp	.label_336
.label_341:
	xor	edx, edx
	mov	ecx, dword ptr [rip + input_position]
	xor	eax, eax
	xor	ebx, ebx
.label_328:
	mov	esi, ebx
	neg	esi
	cmp	ecx, esi
	jg	.label_330
	xor	dl, 1
	jne	.label_330
	mov	dword ptr [rip + input_position],  0
.label_329:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_334:
	mov	byte ptr [r15], bpl
	xor	eax, eax
	cmp	bpl, 8
	mov	ebx, 0xffffffff
	cmovne	ebx, eax
	jmp	.label_339
.label_338:
	mov	byte ptr [r15], 0x5c
	xor	ebp, ebp
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:label_335
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	nop	dword ptr [rax + rax]
.label_333:
	movzx	eax, byte ptr [rsp + rbp + 4]
	mov	byte ptr [r15 + rbp + 1], al
	inc	rbp
	mov	ebx, 4
	cmp	rbp, 3
	jne	.label_333
	jmp	.label_336
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0

	.globl align_column
	.type align_column, @function
align_column:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx + 0x34]
	mov	dword ptr [rip + padding_not_printed],  edi
	sub	edi, dword ptr [rip + col_sep_length]
	jle	.label_343
	call	pad_across_to
	mov	dword ptr [rip + padding_not_printed],  0
.label_343:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_345
	call	print_sep_string
.label_345:
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_344
	mov	rdi, rbx
	pop	rbx
	jmp	add_line_number
.label_344:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404600

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [rip + number_buff]
	mov	r8d, dword ptr [rip + chars_per_number]
	mov	r9d, dword ptr [rip + line_number]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_346
	xor	eax, eax
	call	__sprintf_chk
	inc	dword ptr [rip + line_number]
	mov	ebp, dword ptr [rip + chars_per_number]
	test	ebp, ebp
	jle	.label_351
	sub	eax, ebp
	movsxd	rbx, eax
	add	rbx, qword ptr [rip + number_buff]
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_349:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_349
.label_351:
	cmp	dword ptr [rip + columns],  2
	jl	.label_350
	mov	al, byte ptr [rip + number_separator]
	cmp	al, 9
	jne	.label_352
	mov	ebx, dword ptr [rip + number_width]
	mov	eax, dword ptr [rip + chars_per_number]
	cmp	ebx, eax
	jle	.label_347
	inc	ebx
	sub	ebx, eax
	nop	dword ptr [rax + rax]
.label_353:
	mov	edi, 0x20
	call	qword ptr [r14 + 0x20]
	dec	ebx
	cmp	ebx, 1
	jg	.label_353
	jmp	.label_347
.label_350:
	movsx	edi, byte ptr [rip + number_separator]
	call	qword ptr [r14 + 0x20]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_347
	mov	ecx, dword ptr [rip + output_position]
	mov	esi, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	esi
	add	esi, ecx
	sub	esi, edx
	mov	dword ptr [rip + output_position],  esi
	jmp	.label_347
.label_352:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_347:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_348
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_348
	mov	eax, dword ptr [rip + number_width]
	add	dword ptr [rip + input_position],  eax
.label_348:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404710

	.globl print_clump
	.type print_clump, @function
print_clump:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14, rdi
	test	ebp, ebp
	je	.label_354
.label_355:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	jne	.label_355
.label_354:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404740

	.globl init_page
	.type init_page, @function
init_page:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	je	.label_356
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_359
	mov	rcx, qword ptr [rip + column_vector]
	mov	edx, dword ptr [rip + lines_per_body]
	add	rcx, 0x30
	nop	word ptr cs:[rax + rax]
.label_361:
	cmp	dword ptr [rcx - 0x20], 0
	mov	esi, 0
	cmove	esi, edx
	mov	dword ptr [rcx], esi
	add	rcx, 0x40
	dec	eax
	jne	.label_361
.label_359:
	ret	
.label_356:
	push	rax
	call	store_columns
	mov	esi, dword ptr [rip + columns]
	mov	rax, qword ptr [rip + column_vector]
	cmp	esi, 1
	lea	rsp, [rsp + 8]
	je	.label_360
	lea	ecx, [rsi - 2]
	inc	rcx
	mov	edx, 1
	sub	edx, esi
	lea	rsi, [rax + 0x30]
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	edi, dword ptr [rsi - 4]
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	edx
	jne	.label_357
	shl	rcx, 6
	add	rax, rcx
.label_360:
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_362
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rax + 0x30], ecx
	ret	
.label_362:
	cmp	dword ptr [rax + 0x10], 0
	je	.label_358
	mov	dword ptr [rax + 0x30], 0
	ret	
.label_358:
	mov	ecx, dword ptr [rip + lines_per_body]
	mov	dword ptr [rax + 0x30], ecx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404800

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	xor	eax, eax
	cmp	dword ptr [rip + columns],  0
	je	.label_363
	mov	rcx, qword ptr [rip + column_vector]
	mov	edx, dword ptr [rip + columns]
	mov	sil, byte ptr [rip + storing_columns]
	add	rcx, 0x30
	xor	eax, eax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_365:
	cmp	dword ptr [rcx - 0x20], 2
	jb	.label_364
	test	sil, 1
	jne	.label_366
	cmp	dword ptr [rcx - 4], 0
	jle	.label_366
	cmp	dword ptr [rcx], 0
	jle	.label_366
	nop	word ptr [rax + rax]
.label_364:
	inc	eax
.label_366:
	inc	edi
	add	rcx, 0x40
	cmp	edi, edx
	jb	.label_365
.label_363:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	nop	word ptr [rax + rax]
.label_367:
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, -1
	je	.label_370
	cmp	eax, 0xa
	je	.label_369
	cmp	eax, 0xc
	jne	.label_367
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_368
	mov	edi, eax
	mov	rsi, rbx
	call	ungetc
.label_368:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_371
	mov	byte ptr [rip + print_a_FF],  1
.label_371:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	hold_file
.label_370:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	close_file
.label_369:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e0

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbx
	mov	ebx, edi
	mov	al, byte ptr [rip + use_form_feed]
	test	al, al
	je	.label_372
	mov	edi, 0xc
	pop	rbx
	jmp	putchar_unlocked
.label_372:
	test	ebx, ebx
	je	.label_373
	nop	dword ptr [rax]
.label_374:
	mov	edi, 0xa
	call	putchar_unlocked
	dec	ebx
	jne	.label_374
.label_373:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404910

	.globl store_columns
	.type store_columns, @function
store_columns:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rip + buff_current],  0
	mov	al, byte ptr [rip + balance_columns]
	mov	r14d, dword ptr [rip + columns]
	not	al
	movzx	eax, al
	and	eax, 1
	sub	r14d, eax
	xor	r15d, r15d
	test	r14d, r14d
	jle	.label_381
	mov	rax, qword ptr [rip + column_vector]
	add	rax, 0x2c
	mov	ecx, r14d
	nop	word ptr [rax + rax]
.label_380:
	mov	dword ptr [rax], 0
	add	rax, 0x40
	dec	ecx
	jne	.label_380
	test	r14d, r14d
	jle	.label_381
	mov	eax, dword ptr [rip + files_ready_to_read]
	test	eax, eax
	mov	r13d, 0
	je	.label_378
	mov	r12d, 1
	xor	r13d, r13d
	mov	rbx, qword ptr [rip + column_vector]
	xor	r15d, r15d
	nop	
.label_376:
	mov	dword ptr [rbx + 0x28], r15d
	mov	eax, dword ptr [rip + lines_per_body]
	test	eax, eax
	je	.label_375
	mov	ecx, dword ptr [rip + files_ready_to_read]
	test	ecx, ecx
	je	.label_375
	mov	ebp, 1
	sub	ebp, eax
	nop	word ptr [rax + rax]
.label_383:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_377
	mov	dword ptr [rip + input_position],  0
	mov	rdi, rbx
	call	read_line
	test	al, al
	jne	.label_382
	mov	rdi, rbx
	call	read_rest_of_line
.label_382:
	cmp	dword ptr [rbx + 0x10], 0
	je	.label_384
	cmp	r13d, dword ptr [rip + buff_current]
	je	.label_377
.label_384:
	inc	dword ptr [rbx + 0x2c]
	mov	eax, r15d
	mov	rcx, qword ptr [rip + line_vector]
	mov	dword ptr [rcx + rax*4], r13d
	mov	ecx, dword ptr [rip + input_position]
	inc	r15d
	mov	rdx, qword ptr [rip + end_vector]
	mov	dword ptr [rdx + rax*4], ecx
	mov	r13d, dword ptr [rip + buff_current]
	nop	
.label_377:
	test	ebp, ebp
	je	.label_375
	mov	eax, dword ptr [rip + files_ready_to_read]
	inc	ebp
	test	eax, eax
	jne	.label_383
.label_375:
	cmp	r12d, r14d
	jge	.label_378
	inc	r12d
	add	rbx, 0x40
	mov	eax, dword ptr [rip + files_ready_to_read]
	test	eax, eax
	jne	.label_376
	jmp	.label_378
.label_381:
	xor	r13d, r13d
.label_378:
	mov	eax, r15d
	mov	rcx, qword ptr [rip + line_vector]
	mov	dword ptr [rcx + rax*4], r13d
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_379
	mov	edi, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	balance
.label_379:
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
	#Procedure 0x404aa0

	.globl balance
	.type balance, @function
balance:
	mov	r8d, edi
	mov	r10d, dword ptr [rip + columns]
	test	r10d, r10d
	jle	.label_385
	mov	rsi, qword ptr [rip + column_vector]
	mov	r9d, dword ptr [rip + columns]
	add	rsi, 0x2c
	xor	ecx, ecx
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_386:
	inc	ecx
	mov	eax, r8d
	cdq	
	idiv	r10d
	xor	edi, edi
	cmp	ecx, edx
	setle	dil
	add	edi, eax
	mov	dword ptr [rsi], edi
	mov	dword ptr [rsi - 4], r11d
	add	r11d, edi
	add	rsi, 0x40
	cmp	ecx, r9d
	mov	r10d, r9d
	jl	.label_386
.label_385:
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b00
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b10
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_389
	cmp	byte ptr [rip + ignore_EPIPE],  0
	je	.label_387
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_387
.label_389:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_390
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_388
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_390:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_388:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_393
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_393:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10

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
	je	.label_395
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_397
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_398
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_394
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_395
.label_394:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_396
.label_397:
	mov	rax, rbx
	jmp	.label_395
.label_398:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_396:
	xor	eax, eax
.label_395:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_400
	cmp	byte ptr [rax], 0x43
	jne	.label_402
	cmp	byte ptr [rax + 1], 0
	je	.label_399
.label_402:
	mov	esi, OFFSET FLAT:label_401
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_400
.label_399:
	xor	ebx, ebx
.label_400:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d10

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_403
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_404:
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
	ja	.label_404
	jmp	.label_406
.label_403:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_405:
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
	ja	.label_405
	mov	byte ptr [rsi], 0x2d
.label_406:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	mov	edx, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404df0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_409
	xor	ebp, ebp
	test	r15, r15
	jle	.label_412
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 1
	mov	eax, r14d
	xor	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	lea	eax, [r14*4]
	xor	eax, 5
	mov	dword ptr [rsp + 0x10], eax
	xor	r15d, r15d
	lea	r13, [rsp]
	mov	ebp, 0x7fffffff
	nop	dword ptr [rax + rax]
.label_425:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_419
	jmp	qword ptr [(rax * 8) + label_423]
.label_1039:
	inc	rbx
	inc	r15d
.label_407:
	cmp	rbx, r12
	jb	.label_425
	jmp	.label_411
.label_419:
	mov	qword ptr [rsp], 0
	nop	word ptr [rax + rax]
.label_424:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	r13, rax
	cmp	r13, -2
	je	.label_415
	test	r13, r13
	je	.label_416
	cmp	r13, -1
	jne	.label_417
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_410
	inc	rbx
	inc	r15d
	mov	ecx, 5
	jmp	.label_410
	nop	dword ptr [rax + rax]
.label_415:
	add	r15d, dword ptr [rsp + 0x14]
	test	r14d, r14d
	cmove	rbx, r12
	mov	ecx, dword ptr [rsp + 0x10]
	jmp	.label_410
	nop	word ptr cs:[rax + rax]
.label_416:
	mov	r13d, 1
.label_417:
	mov	edi, dword ptr [rsp + 8]
	call	wcwidth
	test	eax, eax
	js	.label_408
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_410
	add	r15d, eax
	jmp	.label_414
.label_408:
	mov	ecx, 1
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_410
	mov	edi, dword ptr [rsp + 8]
	call	iswcntrl
	test	eax, eax
	jne	.label_414
	cmp	r15d, 0x7fffffff
	jne	.label_420
	mov	ecx, 7
	mov	r15d, 0x7fffffff
	jmp	.label_410
.label_420:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_414:
	add	rbx, r13
	xor	ecx, ecx
.label_410:
	lea	r13, [rsp]
	mov	eax, ecx
	and	al, 7
	jne	.label_422
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	je	.label_424
	jmp	.label_407
.label_422:
	cmp	al, 5
	je	.label_407
	and	cl, 7
	je	.label_407
	mov	r15d, 0xffffffff
	cmp	cl, 7
	jne	.label_411
	jmp	.label_412
.label_409:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_413
.label_421:
	inc	r15d
	nop	
.label_413:
	cmp	rbx, r12
	jae	.label_411
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_418
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_412
	test	al, 2
	jne	.label_413
.label_418:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_421
	jmp	.label_412
.label_411:
	mov	ebp, r15d
.label_412:
	mov	eax, ebp
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
	#Procedure 0x405000

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
	#Procedure 0x405030

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x74], r8d
	mov	r13, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:label_52
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebp, 0xc
	cmovne	ebp, eax
	cmp	eax, 0xc
	cmovg	ebp, edx
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	cmp	byte ptr [r13], 0
	je	.label_434
	mov	dword ptr [rsp + 0x64], ebp
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x70], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	xor	r8d, r8d
	jmp	.label_429
.label_434:
	xor	r8d, r8d
	jmp	.label_458
.label_476:
	mov	ebx, 3
	jmp	.label_460
	nop	word ptr cs:[rax + rax]
.label_429:
	cmp	byte ptr [r13], 0x25
	jne	.label_464
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	sil, cl
	xor	r15d, r15d
.label_1098:
	mov	r12d, eax
	mov	eax, esi
	jmp	.label_465
	nop	word ptr [rax + rax]
.label_469:
	movsx	r15d, byte ptr [r13]
.label_465:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_492
	jmp	qword ptr [(rdx * 8) + label_468]
	nop	
.label_492:
	cmp	ecx, 0x5f
	je	.label_469
	cmp	ecx, 0x5e
	jne	.label_470
	mov	sil, al
	jmp	.label_465
	nop	word ptr cs:[rax + rax]
.label_464:
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_477
	test	rdi, rdi
	mov	edx, 0
	je	.label_489
	cmp	eax, 2
	jb	.label_491
	mov	qword ptr [rsp + 0x28], rbp
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	esi, 0x20
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	lea	rdi, [rdi + rbp - 1]
	mov	rbp, qword ptr [rsp + 0x28]
.label_491:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
	inc	rdi
	mov	rdx, rdi
.label_489:
	add	r8, rbx
	xor	ecx, ecx
	mov	rdi, rdx
.label_477:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_559:
	or	ecx, 4
	cmp	ecx, 4
	je	.label_442
	jmp	.label_503
	nop	
.label_470:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_505
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_514:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_508
	jne	.label_510
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_508
.label_510:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_508:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_514
.label_505:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	mov	qword ptr [rsp + 0x28], rbp
	je	.label_518
	xor	r9d, r9d
	cmp	eax, 0x45
	jne	.label_459
.label_518:
	movsx	r9d, byte ptr [r13]
	inc	r13
.label_459:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rdi
	movsx	edx, byte ptr [r13]
	mov	ebp, OFFSET FLAT:label_524
	xor	ebx, ebx
	cmp	edx, 0x7a
	ja	.label_426
	mov	al, 0x72
	mov	r10d, 0xffffffff
	xor	esi, esi
	xor	ecx, ecx
	jmp	qword ptr [(rdx * 8) + label_531]
.label_1175:
	cmp	r9d, 0x45
	je	.label_426
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp + 0x28], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebp, [rax + rcx - 0x64]
	mov	r12d, dword ptr [rdx + 0x1c]
	mov	edi, r12d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_542
	mov	eax, 0x16d
	test	bpl, 3
	jne	.label_588
	movsxd	rax, ebp
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
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_588:
	sub	r12d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r12d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_552
.label_1189:
	test	r12b, r12b
	je	.label_555
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_555:
	xor	esi, esi
	mov	eax, r9d
	cmp	eax, 0x45
	jne	.label_558
	xor	ebx, ebx
	jmp	.label_426
.label_1167:
	dec	r13
	jmp	.label_426
.label_1168:
	test	r9d, r9d
	jne	.label_426
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_478
	cmp	eax, 2
	jb	.label_565
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	je	.label_566
	cmp	r15d, 0x2b
	jne	.label_570
.label_566:
	mov	esi, 0x30
	jmp	.label_501
.label_1169:
	mov	eax, 1
	jmp	.label_574
	nop	
.label_576:
	inc	rax
.label_574:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_576
	cmp	cl, 0x7a
	jne	.label_426
	add	r13, rax
	mov	rbx, rax
.label_1206:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_582
	mov	r10, qword ptr [rsp]
	mov	eax, dword ptr [rax + 0x28]
	mov	sil, 1
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12d, r9d
	js	.label_587
	test	eax, eax
	je	.label_592
	xor	esi, esi
	jmp	.label_587
.label_1170:
	mov	eax, r9d
	test	eax, eax
	jne	.label_426
	test	r12b, r12b
	je	.label_427
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_427:
	xor	esi, esi
	mov	al, 0x41
	jmp	.label_430
.label_1171:
	mov	eax, r9d
	cmp	eax, 0x45
	je	.label_426
	test	r12b, r12b
	je	.label_435
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_435:
	xor	esi, esi
	mov	al, 0x42
	jmp	.label_430
.label_1172:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_440
	xor	esi, esi
	mov	al, 0x43
	jmp	.label_430
.label_1173:
	mov	ebp, OFFSET FLAT:label_447
	test	r9d, r9d
	jne	.label_426
	mov	r10d, 0xffffffff
	jmp	.label_451
.label_1174:
	test	r9d, r9d
	jne	.label_426
	mov	ebp, OFFSET FLAT:label_453
	test	r15d, r15d
	jne	.label_454
	test	r14d, r14d
	jns	.label_454
	mov	r15d, 0x2b
	mov	r10d, 4
	jmp	.label_451
.label_1176:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 8]
	mov	ecx, 2
	jmp	.label_433
.label_1177:
	mov	ecx, 2
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	eax, dword ptr [rsp + 0x64]
	jmp	.label_466
.label_1178:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 4]
	mov	ecx, 2
	jmp	.label_433
.label_1179:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	ecx, 9
	cmp	r14d, -1
	je	.label_472
	cmp	r14d, 8
	jg	.label_544
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	ebp, ecx
	mov	rdi, qword ptr [rsp]
	nop	word ptr [rax + rax]
.label_484:
	movsxd	rcx, ebp
	imul	rbp, rcx, 0x66666667
	mov	rcx, rbp
	shr	rcx, 0x3f
	sar	rbp, 0x22
	add	ebp, ecx
	dec	eax
	cmp	r14d, eax
	jne	.label_484
	mov	ecx, r14d
	jmp	.label_436
.label_1180:
	mov	cl, 1
.label_1198:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_494
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
.label_494:
	je	.label_496
	mov	cl, 1
.label_496:
	mov	al, 0x70
	mov	sil, cl
	jmp	.label_428
.label_1181:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax]
	mov	ecx, 2
	jmp	.label_433
.label_1182:
	mov	ebp, OFFSET FLAT:label_499
.label_451:
	mov	qword ptr [rsp + 0x10], r8
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	setne	r8b
	sub	rsp, 8
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	mov	qword ptr [rsp + 0x58], r10
	push	r10
	mov	dword ptr [rsp + 0x28], r11d
	call	__strftime_internal
	mov	r11d, dword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rsi, ebx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	r12, qword ptr [rsp + 0x38]
	sub	r12, r8
	cmp	rbx, r12
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_438
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	jae	.label_528
	movsxd	rcx, r14d
	sub	rcx, rax
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x48], rcx
	je	.label_532
	cmp	r15d, 0x2b
	jne	.label_526
.label_532:
	mov	esi, 0x30
	jmp	.label_536
.label_1183:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rbp, eax
	jmp	.label_539
.label_1184:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rbp, rdx
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
	mov	rdx, rbp
	movsxd	rbp, ecx
.label_539:
	imul	rax, rbp, -0x6db6db6d
	shr	rax, 0x20
	add	ebp, eax
	mov	eax, ebp
	shr	eax, 0x1f
	sar	ebp, 2
	add	ebp, eax
	mov	ecx, 2
	jmp	.label_433
.label_1185:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_426
	mov	al, 0x58
	xor	esi, esi
	jmp	.label_428
.label_1186:
	xor	ebx, ebx
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_543
	cmp	r12d, 0x4f
	je	.label_426
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x14]
	cmp	ebp, 0xfffff894
	setl	sil
	add	ebp, 0x76c
	mov	ebx, 4
	jmp	.label_448
.label_1187:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 8], r11d
	call	strlen
	mov	r11d, dword ptr [rsp + 8]
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ecx, ecx
	test	r14d, r14d
	cmovns	ecx, r14d
	movsxd	rsi, ecx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_438
	cmp	rax, rsi
	jae	.label_578
	movsxd	r14, r14d
	mov	qword ptr [rsp + 0x40], rax
	sub	r14, rax
	cmp	r15d, 0x30
	je	.label_579
	cmp	r15d, 0x2b
	jne	.label_584
.label_579:
	mov	esi, 0x30
	jmp	.label_586
.label_1188:
	mov	eax, r9d
	test	eax, eax
	jne	.label_426
	test	r12b, r12b
	je	.label_591
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_591:
	xor	esi, esi
	mov	al, 0x61
	jmp	.label_430
.label_1190:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_426
	mov	al, 0x63
	xor	esi, esi
	jmp	.label_428
.label_1191:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0xc]
	mov	ecx, 2
	jmp	.label_433
.label_1192:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_439
.label_1193:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x1c]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 3
	jmp	.label_446
.label_1194:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_439
.label_1195:
	mov	r12d, r9d
	cmp	r12d, 0x45
	mov	eax, dword ptr [rsp + 0x64]
	je	.label_426
.label_439:
	test	r15d, r15d
	mov	ecx, 0x5f
	cmove	r15d, ecx
	mov	ecx, 2
.label_466:
	mov	ebp, eax
.label_433:
	mov	rdi, qword ptr [rsp]
.label_436:
	mov	esi, ebp
	shr	esi, 0x1f
	xor	r11d, r11d
	xor	r10d, r10d
	mov	ebx, ecx
	jmp	.label_462
.label_1196:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x10]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 2
.label_446:
	xor	r11d, r11d
	xor	r10d, r10d
	mov	rdi, qword ptr [rsp]
	jmp	.label_462
.label_1197:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_478
	cmp	eax, 2
	jb	.label_480
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_482
	cmp	r15d, 0x2b
	jne	.label_487
.label_482:
	mov	esi, 0x30
	jmp	.label_490
.label_1199:
	mov	rax, qword ptr [rsp + 0x18]
	imul	ebp, dword ptr [rax + 0x10], 0xb
	sar	ebp, 5
	inc	ebp
	mov	ebx, 1
	xor	r11d, r11d
	xor	r10d, r10d
	xor	esi, esi
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_462
.label_1200:
	mov	dword ptr [rsp + 8], r11d
	mov	rbx, r8
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x97]
	nop	dword ptr [rax]
.label_572:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_572
	xor	r10d, r10d
	mov	r8, rbx
	mov	ebx, 1
	mov	rdi, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_527
.label_1201:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_478
	cmp	eax, 2
	jb	.label_541
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_573
	cmp	r15d, 0x2b
	jne	.label_546
.label_573:
	mov	esi, 0x30
	jmp	.label_444
.label_1202:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rbp, ecx
	imul	rcx, rbp, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	ebp, ecx
	inc	ebp
	mov	ecx, 1
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_436
.label_1203:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_426
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_433
.label_1204:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_426
	mov	al, 0x78
	xor	esi, esi
	jmp	.label_428
.label_1205:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_563
	xor	esi, esi
	mov	al, 0x79
	jmp	.label_430
.label_558:
	mov	eax, edx
.label_430:
	xor	ebx, ebx
	jmp	.label_428
.label_528:
	mov	rcx, qword ptr [rsp + 0x18]
	jmp	.label_560
.label_542:
	dec	ebp
	mov	edi, 0x16d
	test	bpl, 3
	jne	.label_561
	movsxd	rax, ebp
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
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_561:
	add	edi, r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_552:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	r12d, dword ptr [rsp + 0x28]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_581
	cmp	eax, 0x67
	jne	.label_571
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
	movsxd	rbp, esi
	imul	rdx, rbp, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	ebp, edx
	mov	ebx, 2
	jns	.label_590
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, edx
	cmovl	ebp, ecx
.label_590:
	xor	esi, esi
	jmp	.label_441
.label_582:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp]
	jmp	.label_442
.label_440:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	cl
	imul	rbp, rax, 0x51eb851f
	mov	rdx, rbp
	shr	rdx, 0x3f
	sar	rbp, 0x25
	add	ebp, edx
	imul	edx, ebp, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	ebp, eax
	add	ebp, 0x13
	mov	ebx, 2
	jmp	.label_448
.label_563:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	ebp, eax
	sub	ebp, ecx
	mov	ebx, 2
	jns	.label_589
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, 0xfffff894
	cmovl	ebp, ecx
.label_589:
	xor	esi, esi
.label_448:
	mov	rdi, qword ptr [rsp]
	jmp	.label_441
.label_581:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	ebp, [rcx + rax + 0x76c]
	mov	ebx, 4
.label_441:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x70]
	xor	r11d, r11d
	cmp	r15d, 0x2b
	mov	r10d, 0
	jne	.label_473
	cmp	ebx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, ebp
	setb	cl
	cmp	ebx, r14d
	setl	r10b
	or	r10b, cl
.label_473:
	mov	rdx, qword ptr [rsp + 8]
.label_462:
	cmp	r12d, 0x4f
	jne	.label_486
	test	sil, sil
	jne	.label_486
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	xor	esi, esi
	mov	eax, edx
.label_428:
	mov	dword ptr [rsp + 0x30], esi
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp]
	mov	word ptr [rsp + 0x53], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x55]
	je	.label_495
	mov	byte ptr [rsp + 0x55], r9b
	lea	rcx, [rsp + 0x56]
.label_495:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x53]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_504
	dec	rbx
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_467
	xor	ecx, ecx
	mov	rdi, rbp
	test	rdi, rdi
	mov	r11d, dword ptr [rsp + 8]
	je	.label_512
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_517
	test	al, al
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jne	.label_463
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_525
	cmp	r15d, 0x2b
	jne	.label_506
.label_525:
	mov	esi, 0x30
	jmp	.label_529
.label_486:
	mov	eax, ebp
	neg	eax
	test	sil, sil
	cmove	eax, ebp
	lea	r12, [rsp + 0x97]
.label_538:
	test	r11b, 1
	je	.label_534
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_534:
	sar	r11d, 1
	mov	edx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rdx
	shr	rbp, 0x23
	lea	edx, [rbp + rbp]
	lea	edx, [rdx + rdx*4]
	mov	ecx, eax
	sub	ecx, edx
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_538
	test	r11d, r11d
	mov	eax, ebp
	jne	.label_538
.label_527:
	cmp	ebx, r14d
	cmovl	ebx, r14d
	test	r10b, r10b
	je	.label_545
	mov	r10b, 0x2b
.label_545:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_547
	mov	esi, r10d
.label_547:
	cmp	r15d, 0x2d
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_548
	test	sil, sil
	je	.label_549
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	r9, qword ptr [rsp + 0x20]
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_554
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_556
	test	al, al
	jne	.label_556
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	lea	rdi, [rdi + rbp - 1]
.label_556:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_554:
	add	r8, rbx
	jmp	.label_562
.label_504:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_442
.label_548:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_567
	cmp	r15d, 0x5f
	mov	r9, qword ptr [rsp + 0x20]
	jne	.label_575
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x38]
	sub	rax, r8
	cmp	rdx, rax
	jae	.label_467
	xor	r10d, r10d
	test	rdi, rdi
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	je	.label_585
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x78], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x78]
	xor	r10d, r10d
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, rdx
	mov	qword ptr [rsp + 0x48], rbp
.label_585:
	add	r8, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	sil, sil
	je	.label_431
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_467
	xor	edi, edi
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_449
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_452
	test	al, al
	jne	.label_452
	movsxd	rbx, r10d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	mov	qword ptr [rsp], r10
	je	.label_455
	cmp	r15d, 0x2b
	jne	.label_522
.label_455:
	mov	esi, 0x30
	jmp	.label_461
.label_517:
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jmp	.label_463
.label_549:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_457
.label_567:
	test	sil, sil
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_457
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_471
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_474
	test	al, al
	jne	.label_474
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_479
	cmp	r15d, 0x2b
	jne	.label_485
.label_479:
	mov	esi, 0x30
	jmp	.label_488
.label_575:
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_467
	test	sil, sil
	je	.label_493
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebp, 1
	cmova	rbp, rdx
	cmp	rbp, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_537
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_500
	test	al, al
	jne	.label_500
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_502
	cmp	r15d, 0x2b
	jne	.label_475
.label_502:
	mov	esi, 0x30
	jmp	.label_553
.label_506:
	mov	esi, 0x20
.label_529:
	mov	rdx, r14
	call	memset
	mov	ecx, dword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	add	rdi, r14
.label_463:
	lea	rsi, [rsp + 0xa1]
	mov	rdx, rbx
	mov	rbp, rdi
	test	cl, 1
	jne	.label_515
	test	al, 1
	jne	.label_519
	call	memcpy
	jmp	.label_520
.label_515:
	call	memcpy_lowcase
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_521
.label_519:
	call	memcpy_uppcase
.label_520:
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_521:
	add	rcx, rbx
.label_512:
	add	r8, r12
	jmp	.label_498
.label_571:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	ebp, [rcx + rax + 1]
	mov	ecx, 2
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_436
.label_431:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r14d, r10d
	jmp	.label_457
.label_543:
	mov	al, 0x59
	xor	esi, esi
	jmp	.label_428
.label_578:
	mov	rsi, qword ptr [rsp + 0x68]
	jmp	.label_540
.label_526:
	mov	esi, 0x20
.label_536:
	mov	rdx, rcx
	mov	r14, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x18]
	add	r14, qword ptr [rsp + 0x48]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x20]
.label_560:
	mov	r10, qword ptr [rsp + 0x40]
	xor	r8d, r8d
	test	dl, dl
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	rdx, rbp
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	push	r10
	mov	rbp, rdi
	call	__strftime_internal
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x30]
	add	rax, rbp
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_438:
	add	r8, rbx
	jmp	.label_498
.label_592:
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rcx], 0x2d
	sete	sil
.label_587:
	cmp	rbx, 3
	mov	qword ptr [rsp + 8], rdx
	ja	.label_557
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbp, rcx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, eax
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
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
	jmp	qword ptr [(rbx * 8) + label_551]
.label_998:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 5
.label_460:
	xor	r11d, r11d
	jmp	.label_569
.label_454:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	ebp, OFFSET FLAT:label_453
	jmp	.label_451
.label_472:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	r14d, 9
	jmp	.label_433
.label_557:
	xor	ebx, ebx
	mov	ecx, 0xe
	jmp	.label_580
.label_1001:
	test	eax, eax
	je	.label_583
.label_1000:
	imul	ebp, ebp, 0x2710
	imul	ecx, ecx, 0x64
	add	ebp, eax
	add	ebp, ecx
	mov	ebx, 9
	mov	r11d, 0x14
	jmp	.label_569
.label_544:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	ecx, r14d
	jmp	.label_433
.label_584:
	mov	esi, 0x20
.label_586:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdi, r15
	mov	rdx, rbp
	mov	rax, qword ptr [rsp + 0x40]
.label_540:
	test	r12b, r12b
	je	.label_432
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_lowcase
	mov	rax, rbp
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	rcx, rax
	jmp	.label_438
.label_432:
	test	dl, dl
	je	.label_443
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_uppcase
	jmp	.label_450
.label_487:
	mov	esi, 0x20
.label_490:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_480:
	mov	byte ptr [rdi], 0xa
	jmp	.label_456
.label_546:
	mov	esi, 0x20
.label_444:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_541:
	mov	byte ptr [rdi], 9
	jmp	.label_456
.label_485:
	mov	esi, 0x20
.label_488:
	mov	rdx, rbx
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, rbx
.label_474:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_471:
	add	r8, rbp
.label_562:
	mov	rdi, rcx
	jmp	.label_457
.label_443:
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy
.label_450:
	mov	rax, rbp
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
	add	rcx, rax
	jmp	.label_438
.label_583:
	test	ecx, ecx
	je	.label_476
.label_999:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 6
	mov	r11d, 4
.label_569:
	mov	ecx, 0x21
.label_580:
	mov	rdi, r10
	mov	edx, ecx
	and	dl, 0x3f
	cmp	dl, 0xe
	je	.label_483
	mov	r10b, 1
	cmp	dl, 0x21
	mov	rdx, qword ptr [rsp + 8]
	je	.label_462
	jmp	.label_559
.label_483:
	mov	qword ptr [rsp + 0x28], rbp
.label_426:
	mov	r9, rbx
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_497:
	add	rbx, rax
	cmp	byte ptr [r13 + rbp], 0x25
	lea	rbp, [rbp - 1]
	jne	.label_497
	mov	rax, rbp
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	r12, edx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	cmp	r12, rdx
	mov	rdi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x20]
	jae	.label_467
	test	rdi, rdi
	mov	esi, 0
	je	.label_507
	sar	rbx, 0x20
	test	r9d, r9d
	jne	.label_509
	cmp	eax, ecx
	jae	.label_509
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_511
	cmp	r15d, 0x2b
	jne	.label_513
.label_511:
	mov	esi, 0x30
	jmp	.label_516
.label_513:
	mov	esi, 0x20
.label_516:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r11d, dword ptr [rsp + 8]
.label_509:
	mov	r15d, r11d
	mov	r14, r8
	lea	rsi, [r13 + rbp + 1]
	test	dl, 1
	jne	.label_523
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy
	jmp	.label_530
.label_523:
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy_uppcase
.label_530:
	add	rbp, rbx
	mov	rsi, rbp
	mov	r8, r14
	mov	r11d, r15d
.label_507:
	add	r8, r12
	mov	rdi, rsi
	jmp	.label_533
.label_522:
	mov	esi, 0x20
.label_461:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	r14, r9
	call	memset
	mov	r10, qword ptr [rsp]
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	qword ptr [rsp + 0x48], rbx
.label_452:
	mov	rax, qword ptr [rsp + 0x48]
	mov	byte ptr [rax], sil
	inc	rax
	mov	rdi, rax
.label_449:
	add	r8, rbp
	mov	r14d, r10d
	jmp	.label_457
.label_475:
	mov	esi, 0x20
.label_553:
	mov	rdx, r14
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, r14
.label_500:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_537:
	add	r8, rbp
	mov	rdi, rcx
.label_493:
	xor	r14d, r14d
	test	rdi, rdi
	mov	ebp, 0
	je	.label_550
	movsxd	rdx, ebx
	mov	qword ptr [rsp], rdx
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	call	memset
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, qword ptr [rsp]
.label_550:
	movsxd	rcx, ebx
	add	r8, rcx
	mov	rdi, rbp
.label_457:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rbp, rbx
	cmovb	rbp, rax
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_478
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_445
	test	al, al
	jne	.label_445
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_564
	cmp	r15d, 0x2b
	jne	.label_481
.label_564:
	mov	esi, 0x30
	jmp	.label_568
.label_481:
	mov	esi, 0x20
.label_568:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	r9, qword ptr [rsp + 0x20]
.label_445:
	mov	r14, r8
	mov	rsi, r12
	mov	rdx, rbx
	mov	r15, rdi
	test	r9b, r9b
	je	.label_577
	call	memcpy_uppcase
	jmp	.label_535
.label_577:
	call	memcpy
.label_535:
	add	r15, rbx
	mov	rcx, r15
	mov	r8, r14
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_478
.label_570:
	mov	esi, 0x20
.label_501:
	mov	rdx, rbx
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	add	rdi, rbx
.label_565:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
.label_456:
	inc	rdi
	mov	rcx, rdi
.label_478:
	add	r8, rbp
.label_498:
	mov	rdi, rcx
.label_533:
	mov	rbp, qword ptr [rsp + 0x28]
.label_442:
	mov	r14d, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	jne	.label_429
.label_458:
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_437
	test	rdi, rdi
	je	.label_437
	mov	byte ptr [rdi], 0
.label_437:
	mov	qword ptr [rsp + 0x58], r8
.label_503:
	mov	rax, qword ptr [rsp + 0x58]
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_467:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_503
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406870

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_593
	call	__ctype_tolower_loc
	nop	dword ptr [rax + rax]
.label_594:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_594
.label_593:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068b0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_595
	call	__ctype_toupper_loc
	nop	dword ptr [rax + rax]
.label_596:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_596
.label_595:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0

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
	#Procedure 0x406930

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_600
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_599
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_598
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_599
	mov	esi, OFFSET FLAT:label_602
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_597
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_597:
	mov	rbx, r14
.label_599:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_600:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_601
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0
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
	#Procedure 0x406a20
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
	#Procedure 0x406a30
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
	#Procedure 0x406a40

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
	#Procedure 0x406a80
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
	#Procedure 0x406aa0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_603
	test	rdx, rdx
	je	.label_603
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_603:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ad0
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
	#Procedure 0x406b50

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
.label_715:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_717
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_607]
.label_1146:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_614
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_620
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1147:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_630
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_630
	xor	r14d, r14d
.label_645:
	cmp	r14, r11
	jae	.label_640
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_640:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_645
.label_630:
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
	jmp	.label_649
.label_1139:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_649
.label_1142:
	mov	al, 1
.label_1140:
	mov	r12b, 1
.label_1143:
	test	r12b, 1
	mov	cl, 1
	je	.label_662
	mov	ecx, eax
.label_662:
	mov	al, cl
.label_1141:
	test	r12b, 1
	jne	.label_665
	test	r11, r11
	je	.label_667
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_667:
	mov	r14d, 1
	jmp	.label_671
.label_665:
	xor	r14d, r14d
.label_671:
	mov	ecx, OFFSET FLAT:label_620
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_649
.label_1144:
	test	r12b, 1
	jne	.label_679
	test	r11, r11
	je	.label_685
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_685:
	mov	r14d, 1
	jmp	.label_681
.label_1145:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_683
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_649
.label_679:
	xor	r14d, r14d
.label_681:
	mov	eax, OFFSET FLAT:label_683
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_649:
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
	jmp	.label_706
	nop	dword ptr [rax]
.label_641:
	inc	rsi
.label_706:
	cmp	rbp, -1
	je	.label_619
	cmp	rsi, rbp
	jne	.label_622
	jmp	.label_624
	nop	word ptr cs:[rax + rax]
.label_619:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_624
.label_622:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_633
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_636
	cmp	rbp, -1
	jne	.label_636
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
.label_636:
	cmp	rbx, rbp
	jbe	.label_647
.label_633:
	xor	r8d, r8d
.label_672:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_650
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_654]
.label_1009:
	test	rsi, rsi
	jne	.label_643
	jmp	.label_658
	nop	
.label_647:
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
	jne	.label_669
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_672
	jmp	.label_613
.label_669:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_672
.label_1013:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_618
	test	rsi, rsi
	jne	.label_687
	cmp	rbp, 1
	je	.label_658
	xor	r13d, r13d
	jmp	.label_625
.label_1002:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_693
	cmp	byte ptr [rsp + 7], 0
	jne	.label_642
	cmp	r12d, 2
	jne	.label_626
	mov	eax, r9d
	and	al, 1
	jne	.label_626
	cmp	r14, r11
	jae	.label_698
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_698:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_702
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_702:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_708
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_708:
	add	r14, 3
	mov	r9b, 1
.label_626:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_714
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_714:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_605
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_605
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_605
	cmp	r14, r11
	jae	.label_655
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_655:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_677
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_677:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_625
.label_1003:
	mov	bl, 0x62
	jmp	.label_628
.label_1004:
	mov	cl, 0x74
	jmp	.label_632
.label_1005:
	mov	bl, 0x76
	jmp	.label_628
.label_1006:
	mov	bl, 0x66
	jmp	.label_628
.label_1007:
	mov	cl, 0x72
	jmp	.label_632
.label_1010:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_639
	cmp	byte ptr [rsp + 7], 0
	jne	.label_642
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
	jae	.label_646
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_646:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_656
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_656:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_659
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_659:
	add	r14, 3
	xor	r9d, r9d
.label_639:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_625
.label_1011:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_668
	cmp	r12d, 2
	jne	.label_643
	cmp	byte ptr [rsp + 7], 0
	je	.label_643
	jmp	.label_642
.label_1012:
	cmp	r12d, 2
	jne	.label_676
	cmp	byte ptr [rsp + 7], 0
	jne	.label_642
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_629
.label_650:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_699
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
.label_627:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_696
	test	r8b, r8b
	je	.label_696
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_625
.label_618:
	test	rsi, rsi
	jne	.label_716
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_716
.label_658:
	mov	dl, 1
.label_1008:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_642
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_625:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_609
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_611
	jmp	.label_616
	nop	word ptr cs:[rax + rax]
.label_609:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_616
.label_611:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_621
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_629
	jmp	.label_638
	nop	dword ptr [rax]
.label_616:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_638
	jmp	.label_629
.label_621:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_638
.label_693:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_641
	xor	r15d, r15d
	jmp	.label_643
.label_676:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_632
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_629
.label_632:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_642
.label_628:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_625
	nop	word ptr cs:[rax + rax]
.label_638:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_642
	cmp	r12d, 2
	jne	.label_663
	mov	eax, r9d
	and	al, 1
	jne	.label_663
	cmp	r14, r11
	jae	.label_666
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_666:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_617
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_617:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_674
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_674:
	add	r14, 3
	mov	r9b, 1
.label_663:
	cmp	r14, r11
	jae	.label_678
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_678:
	inc	r14
	jmp	.label_695
.label_699:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_682
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_682:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_697:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_700
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_704
	cmp	rbp, -2
	je	.label_657
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_712
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_705:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_694
	bt	rsi, rdx
	jb	.label_613
.label_694:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_705
.label_712:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_623
	xor	r13d, r13d
.label_623:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_697
	jmp	.label_627
.label_605:
	xor	r13d, r13d
	jmp	.label_625
.label_716:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_625
.label_668:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_643
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_643
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_643
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_651
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_608
	cmp	byte ptr [rsp + 7], 0
	jne	.label_642
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_660
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_660:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_690
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_690:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_670
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_670:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_673
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_673:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_625
.label_643:
	xor	eax, eax
.label_687:
	xor	r13d, r13d
	jmp	.label_625
.label_696:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_680
	nop	word ptr cs:[rax + rax]
.label_644:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_680:
	test	r8b, r8b
	je	.label_688
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_689
	cmp	r14, r11
	jae	.label_691
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_691:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_689
	nop	dword ptr [rax]
.label_688:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_613
	cmp	r12d, 2
	jne	.label_701
	mov	eax, r9d
	and	al, 1
	jne	.label_701
	cmp	r14, r11
	jae	.label_703
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_703:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_707
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_707:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_713
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_713:
	add	r14, 3
	mov	r9b, 1
.label_701:
	cmp	r14, r11
	jae	.label_610
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_610:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_711
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_711:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_612
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_612:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_689:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_629
	test	r9b, 1
	je	.label_631
	mov	ebx, eax
	and	bl, 1
	jne	.label_631
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_635
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_635:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_634
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_634:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_631:
	cmp	r14, r11
	jae	.label_644
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_644
	nop	word ptr cs:[rax + rax]
.label_629:
	test	r9b, 1
	je	.label_615
	and	al, 1
	jne	.label_615
	cmp	r14, r11
	jae	.label_653
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_653:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_652
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_652:
	add	r14, 2
	xor	r9d, r9d
.label_615:
	mov	ebx, r15d
.label_695:
	cmp	r14, r11
	jae	.label_661
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_661:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_641
.label_704:
	xor	r13d, r13d
.label_700:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_627
.label_657:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_675
	mov	rsi, qword ptr [rsp + 0x50]
.label_648:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_637
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_648
	xor	r13d, r13d
	jmp	.label_627
.label_675:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_627
.label_637:
	xor	r13d, r13d
	jmp	.label_627
.label_651:
	xor	r13d, r13d
	jmp	.label_625
.label_608:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_625
	nop	dword ptr [rax + rax]
.label_624:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_692
	or	dl, al
	je	.label_613
.label_692:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_709
	or	dl, al
	jne	.label_709
	test	r10b, 1
	jne	.label_710
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_709
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_715
.label_709:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_718
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_606
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_606
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_684:
	cmp	r14, r11
	jae	.label_686
	mov	byte ptr [rcx + r14], al
.label_686:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_684
	jmp	.label_606
.label_642:
	mov	qword ptr [rsp + 0x20], rbp
.label_613:
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
.label_664:
	mov	r14, rax
.label_604:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_710:
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
	jmp	.label_664
.label_718:
	mov	rcx, qword ptr [rsp + 8]
.label_606:
	cmp	r14, r11
	jae	.label_604
	mov	byte ptr [rcx + r14], 0
	jmp	.label_604
.label_717:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407910
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
	#Procedure 0x407920

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
	je	.label_719
	mov	qword ptr [rax], rbx
.label_719:
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
	#Procedure 0x407a10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_720
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_722:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_722
.label_720:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_723
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_724], OFFSET FLAT:slot0
.label_723:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_721
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_721:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ab0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ac0

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
	js	.label_725
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_728
	cmp	r12d, 0x7fffffff
	je	.label_730
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
	jne	.label_726
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_726:
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
.label_728:
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
	jbe	.label_731
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_727
.label_731:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_729
	mov	rdi, r14
	call	free
.label_729:
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
.label_727:
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
.label_725:
	call	abort
.label_730:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c80

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c90
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
	#Procedure 0x407ca0
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
	#Procedure 0x407cb0

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
	#Procedure 0x407cf0

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
	je	.label_732
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
.label_732:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d50

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
	#Procedure 0x407d90
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
	#Procedure 0x407db0
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
	#Procedure 0x407dd0

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
	mov	rcx, qword ptr [rip + label_733]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_734]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_735]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407e40

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
	#Procedure 0x407e50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e70

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
	#Procedure 0x407ec0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ed0

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
	mov	rax, qword ptr [rip + label_733]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_734]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_735]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407f40
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
	#Procedure 0x407f60
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
	#Procedure 0x407f80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f90
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
	#Procedure 0x407fa0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407fb0

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
	#Procedure 0x407fc0

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
	jne	.label_741
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
	je	.label_740
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_742
	mov	eax, OFFSET FLAT:label_743
	jmp	.label_738
.label_740:
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
	je	.label_739
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_736
	mov	eax, OFFSET FLAT:label_737
	jmp	.label_738
.label_739:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_683
	mov	eax, OFFSET FLAT:label_620
.label_738:
	cmove	rax, rcx
.label_741:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408080

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
	je	.label_744
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_746
	jmp	.label_745
.label_744:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_745
.label_746:
	mov	eax, 1
	test	bpl, bpl
	je	.label_745
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
.label_745:
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
	#Procedure 0x408100

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
	je	.label_749
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_747
	jmp	.label_748
.label_749:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_748
.label_747:
	mov	eax, 1
	test	bpl, bpl
	je	.label_748
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
.label_748:
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
	#Procedure 0x408190

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
	je	.label_750
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_752
	jmp	.label_751
.label_750:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_751
.label_752:
	mov	eax, 1
	test	bpl, bpl
	je	.label_751
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
.label_751:
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
	#Procedure 0x408210

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
	je	.label_755
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_754
	jmp	.label_753
.label_755:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_753
.label_754:
	mov	eax, 1
	test	bpl, bpl
	je	.label_753
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
.label_753:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408280

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
	je	.label_758
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_756
	jmp	.label_757
.label_758:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_757
.label_756:
	mov	eax, 1
	test	bpl, bpl
	je	.label_757
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_757:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4082e0

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
	je	.label_759
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_761
	jmp	.label_760
.label_759:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_760
.label_761:
	mov	eax, 1
	test	bpl, bpl
	je	.label_760
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_760:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408330

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
	je	.label_764
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_763
	jmp	.label_762
.label_764:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_762
.label_763:
	mov	eax, 1
	test	bpl, bpl
	je	.label_762
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_762:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408380

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_767
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_766
	jmp	.label_765
.label_767:
	mov	eax, 1
	test	cl, cl
	je	.label_765
.label_766:
	xor	eax, eax
.label_765:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4083b0
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083c0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083d0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083e0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083f0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408400
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408410

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408420
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408430
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408440

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
	#Procedure 0x408450

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
	je	.label_777
	mov	edx, OFFSET FLAT:label_783
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_770
.label_777:
	mov	edx, OFFSET FLAT:label_772
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_770:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
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
	mov	esi, OFFSET FLAT:label_773
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_778
	jmp	qword ptr [(r12 * 8) + label_779]
.label_1122:
	add	rsp, 8
	jmp	.label_771
.label_778:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_786
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
	jmp	.label_771
.label_1123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_774
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
.label_1124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_768
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
.label_1125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_784
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
.label_1126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_781
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
	jmp	.label_771
.label_1127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_780
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
	jmp	.label_771
.label_1128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_782
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
	jmp	.label_771
.label_1129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_785
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
	jmp	.label_771
.label_1131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_769
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
	jmp	.label_771
.label_1130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_775
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
.label_771:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_787:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_787
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_789:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_788
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_790
	nop	dword ptr [rax]
.label_788:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_790:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_791
	inc	r9
	cmp	r9, 0xa
	jb	.label_789
.label_791:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408840

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_792
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_792:
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
	#Procedure 0x4088d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_793
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_794
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_796
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_112
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_795
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408950

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_797
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_797:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408980

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_798
	test	rax, rax
	je	.label_799
.label_798:
	pop	rbx
	ret	
.label_799:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_800
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_800:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_801
	test	rbx, rbx
	jne	.label_801
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_801:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_803
	test	rax, rax
	je	.label_802
.label_803:
	pop	rbx
	ret	
.label_802:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408a00

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_804
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_807
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_805
.label_804:
	test	rcx, rcx
	jne	.label_808
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_808:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_806
.label_805:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_807:
	call	xalloc_die
.label_806:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a80

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a90

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408aa0
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
	#Procedure 0x408ad0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_809
	call	rpl_calloc
	test	rax, rax
	je	.label_809
	pop	rcx
	ret	
.label_809:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b00

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
	#Procedure 0x408b30
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
	#Procedure 0x408b50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_810
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408b80

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
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	cmp	eax, 3
	je	.label_815
	cmp	eax, 1
	je	.label_813
	test	eax, eax
	jne	.label_811
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jl	.label_816
	cmp	rbx, r15
	jle	.label_817
.label_816:
	cmp	rbx, 0x40000000
	jl	.label_812
.label_813:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_811
.label_815:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_811:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_817:
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_812:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_814
	mov	dword ptr [rax], 0x4b
	jmp	.label_811
.label_814:
	mov	dword ptr [rax], 0x22
	jmp	.label_811
	nop	
	.section	.text
	.align	32
	#Procedure 0x408c50

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
	.align	32
	#Procedure 0x408c80

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
	jae	.label_818
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
	je	.label_826
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_828
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_819
	mov	r12d, 1
.label_828:
	test	r13, r13
	jne	.label_833
	jmp	.label_825
.label_826:
	mov	r12d, 4
	test	r13, r13
	je	.label_819
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_819
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_819
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_833:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_825
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_827
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_824
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_824
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_820
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_821
	cmp	ecx, 0x44
	je	.label_821
	cmp	ecx, 0x69
	jne	.label_824
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_824
.label_820:
	mov	esi, 0x400
	jmp	.label_824
.label_821:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_824:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_827
	xor	eax, eax
	jmp	qword ptr [(rcx * 8) + label_829]
.label_1150:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_822
.label_827:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_819
.label_1151:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_822
.label_1152:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_822
.label_1154:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_822
.label_1148:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_823
.label_1149:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_822
.label_1153:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_822
.label_1155:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_822
.label_1156:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_822
.label_1157:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_823
.label_1158:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_823:
	call	bkm_scale
.label_822:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_825:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_819:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_818:
	mov	edi, OFFSET FLAT:label_830
	mov	esi, OFFSET FLAT:label_831
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_832
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f00

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
	jge	.label_834
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_834:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_835
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_835:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f50

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
	je	.label_836
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_837:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_837
.label_836:
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
	#Procedure 0x408f90

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
	jae	.label_848
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
	je	.label_846
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_849
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_842
	mov	r12d, 1
.label_849:
	test	r13, r13
	jne	.label_839
	jmp	.label_841
.label_846:
	mov	r12d, 4
	test	r13, r13
	je	.label_842
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_842
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_842
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_839:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_841
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_847
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_840
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_840
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_843
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_844
	cmp	ecx, 0x44
	je	.label_844
	cmp	ecx, 0x69
	jne	.label_840
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_840
.label_843:
	mov	esi, 0x400
	jmp	.label_840
.label_844:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_840:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_847
	xor	eax, eax
	jmp	qword ptr [(rcx * 8) + label_850]
.label_1057:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_847:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_842
.label_1058:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_1059:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_1061:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_1055:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_845
.label_1056:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_1060:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_1062:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_1063:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power_0
	jmp	.label_838
.label_1064:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_845
.label_1065:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_845:
	call	bkm_scale_0
.label_838:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_841:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_842:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_848:
	mov	edi, OFFSET FLAT:label_830
	mov	esi, OFFSET FLAT:label_851
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_852
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x409210

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_853
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_853:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_854
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_854:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409260

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
	je	.label_855
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_856:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_856
.label_855:
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
	#Procedure 0x4092a0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d, dword ptr [rip + exit_failure]
	call	xstrtol_error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092c0

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
	jae	.label_857
	movsxd	rsi, edi
	mov	rsi, qword ptr [(rsi * 8) + label_858]
	cdqe	
	test	eax, eax
	js	.label_859
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:label_860
	jmp	.label_861
.label_859:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:label_860
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_861:
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
.label_857:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409350

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
	jae	.label_872
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_869:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_869
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_865
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_873
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_876
	cmp	eax, 0x22
	jne	.label_865
	mov	r12d, 1
.label_876:
	test	rbp, rbp
	jne	.label_863
	jmp	.label_864
.label_873:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_865
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_865
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_865
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_863:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_864
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_874
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_875
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_875
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_866
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_870
	cmp	ecx, 0x44
	je	.label_870
	cmp	ecx, 0x69
	jne	.label_866
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_866
.label_870:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_866
.label_875:
	mov	rsi, r14
.label_866:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_874
	xor	eax, eax
	jmp	qword ptr [(rcx * 8) + label_877]
.label_1028:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_867
.label_874:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_862
.label_1029:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_867
.label_1030:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_867
.label_1032:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_867
.label_1026:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_1
	jmp	.label_868
.label_1027:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_867
.label_1031:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_867
.label_1033:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_867
.label_1034:
	lea	rdi, [rsp]
	mov	edx, 7
.label_867:
	mov	esi, r15d
	call	bkm_scale_by_power_1
.label_868:
	mov	rsi, r14
.label_1036:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_864:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_862:
	mov	r15d, r12d
.label_865:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1035:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_1
	jmp	.label_868
.label_1037:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_1
	jmp	.label_868
.label_872:
	mov	edi, OFFSET FLAT:label_830
	mov	esi, OFFSET FLAT:label_831
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_871
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409600

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
	#Procedure 0x409630

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
	je	.label_878
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_879:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_1
	or	ebp, eax
	dec	ebx
	jne	.label_879
.label_878:
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
	#Procedure 0x409670

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_880
	test	rsi, rsi
	mov	ecx, 1
	je	.label_881
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_881
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_880:
	mov	ecx, 1
.label_881:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_882
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_883
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_882
.label_883:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_882
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_884
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_884:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_882:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_885
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_885:
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
	ja	.label_887
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_886
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_888
	test	esi, esi
	jne	.label_887
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_891
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_894
.label_887:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_892
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_888
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_890
.label_886:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_888:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_895
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_897
.label_895:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_897:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_890:
	cmp	eax, 6
	jne	.label_892
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_893
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_896
.label_892:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_889
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_898
.label_891:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_894:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_893:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_896:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_889:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_898:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409900

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
	#Procedure 0x409910

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_901
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_903
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_903
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_900
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	jmp	.label_899
.label_903:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_899
.label_901:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_899:
	test	ebx, ebx
	js	.label_900
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	jne	.label_900
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_902
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_900
.label_902:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_900:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_904
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_904
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_904:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a10

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_905
	ret	
.label_905:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a30

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
	jne	.label_906
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_906
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_907
.label_906:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_907:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_908
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_908:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409aa0

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
	je	.label_909
	cmp	r15, -2
	jb	.label_909
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_909
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_909:
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
	#Procedure 0x409b00

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_910
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_910:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_911
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_911
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_911:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409b70

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
	#Procedure 0x409b90

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_912
	nop	word ptr [rax + rax]
.label_913:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_913
.label_912:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bc0

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
	je	.label_914
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_917
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_915
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_915:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_916
.label_914:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_917:
	xor	eax, eax
.label_916:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c50

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
	je	.label_921
	test	cl, cl
	je	.label_919
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_919
	jmp	.label_918
.label_921:
	mov	eax, 1
	test	cl, cl
	je	.label_918
.label_919:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_918
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_920
	mov	rax, rbx
	jmp	.label_918
.label_920:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_918:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409cd0

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
	je	.label_924
	cmp	r15, rbx
	ja	.label_929
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_924
.label_929:
	mov	r14d, OFFSET FLAT:label_52
	cmp	byte ptr [rbx], 0
	je	.label_922
	lea	r14, [r12 + 9]
	jmp	.label_926
.label_930:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_926:
	lea	r13, [r12 + 9]
.label_928:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_932
	cmp	byte ptr [r14], 0
	jne	.label_933
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_923
	cmp	byte ptr [r12 + 8], 0
	je	.label_923
.label_933:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_928
	jmp	.label_930
.label_923:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_931
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_924
.label_931:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_927
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_932:
	mov	al, 1
.label_922:
	mov	qword ptr [r15 + 0x30], r14
.label_924:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_927:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_925
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_922
.label_925:
	xor	eax, eax
	jmp	.label_924
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409df0

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
	je	.label_934
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_935
	mov	ebp, dword ptr [r15]
.label_935:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_934:
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
	#Procedure 0x409e40

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
	je	.label_936
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_937
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_939
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_938
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_938
.label_939:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_938
	mov	qword ptr [rsp], -1
.label_938:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_937
	mov	rax, qword ptr [rsp]
	jmp	.label_940
.label_937:
	mov	rax, -1
.label_940:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_936:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ef0

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
	#Procedure 0x409f40

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_9
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f50

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
	jne	.label_941
	call	tzset
	mov	bl, 1
.label_941:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f80

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_9
	test	rax, rax
	je	.label_942
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_942:
	jmp	unsetenv
	nop	
	.section	.text
	.align	32
	#Procedure 0x409fa0

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
	#Procedure 0x409fc0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_943
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_943
.label_944:
	ret	
.label_943:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_944
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ff0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_945
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_945:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a010
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a020
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
	#Procedure 0x40a030
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_946
.label_947:
	ret	
.label_946:
	cmp	edi, 0x7f
	je	.label_947
	xor	eax, eax
	jmp	.label_947
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a050
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
	#Procedure 0x40a060
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
	#Procedure 0x40a070
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
	#Procedure 0x40a080
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
	#Procedure 0x40a090
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_948
	mov	al, 1
	jmp	qword ptr [(rdi * 8) + label_949]
.label_950:
	ret	
.label_948:
	xor	eax, eax
	jmp	.label_950
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_951
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_951:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0d0

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
	#Procedure 0x40a0e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_952
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_952:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a100
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
	#Procedure 0x40a110
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
	#Procedure 0x40a120

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
	je	.label_953
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_954
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_954
.label_953:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_954
	test	cl, cl
	jne	.label_954
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_954:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_52
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_955
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1c0

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
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x40a290

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
