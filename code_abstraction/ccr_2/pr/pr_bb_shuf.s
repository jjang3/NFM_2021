	.section	.text
	.align	32
	#Procedure 0x401ba9
	.globl sub_401ba9
	.type sub_401ba9, @function
sub_401ba9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401baa
	.globl sub_401baa
	.type sub_401baa, @function
sub_401baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401be2
	.globl sub_401be2
	.type sub_401be2, @function
sub_401be2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c2a
	.globl sub_401c2a
	.type sub_401c2a, @function
sub_401c2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c4c
	.globl sub_401c4c
	.type sub_401c4c, @function
sub_401c4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c5d
	.globl sub_401c5d
	.type sub_401c5d, @function
sub_401c5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c76
	.globl sub_401c76
	.type sub_401c76, @function
sub_401c76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x401c8e
	.globl sub_401c8e
	.type sub_401c8e, @function
sub_401c8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x401ce5
	.globl sub_401ce5
	.type sub_401ce5, @function
sub_401ce5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cf0

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
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_70
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_41:
	mov	ebp, dword ptr [rip + input_position]
	cmp	ebx, 0xc
	jne	.label_17
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_21
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_24
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_59:
	cmp	ebx, 0xa
	jne	.label_17
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_30
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_17:
	mov	byte ptr [r13 + 0x39], 0
	cmp	ebx, -1
	je	.label_53
	cmp	ebx, 0xa
	je	.label_71
	cmp	ebx, 0xc
	je	.label_42
	movsx	edi, bl
	call	char_to_clump
	mov	r12d, eax
.label_71:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_47
	mov	eax, dword ptr [rip + input_position]
	cmp	eax, dword ptr [rip + chars_per_column]
	jle	.label_47
	mov	dword ptr [rip + input_position],  ebp
	xor	r15d, r15d
	jmp	.label_28
.label_47:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_57
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_19
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_19
	call	print_header
.label_19:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_67
	cmp	byte ptr [rip + align_empty_cols],  1
	jne	.label_67
	mov	dword ptr [rsp], ebx
	mov	eax, dword ptr [rip + separators_not_printed]
	mov	dword ptr [rip + separators_not_printed],  0
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jle	.label_13
	mov	ebx, 1
	mov	rbp, qword ptr [rip + column_vector]
	nop	
.label_64:
	mov	r15d, dword ptr [rbp + 0x34]
	mov	dword ptr [rip + padding_not_printed],  r15d
	mov	eax, dword ptr [rip + col_sep_length]
	mov	r14d, r15d
	sub	r14d, eax
	jle	.label_23
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_56
	sub	r14d, ecx
	mov	dword ptr [rip + spaces_not_printed],  r14d
	jmp	.label_32
	.section	.text
	.align	32
	#Procedure 0x401e65
	.globl sub_401e65
	.type sub_401e65, @function
sub_401e65:

	nop	word ptr cs:[rax + rax]
.label_56:
	cmp	r14d, ecx
	jle	.label_16
	sub	r15d, ecx
	sub	r15d, eax
	jmp	.label_55
.label_46:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_60
	.section	.text
	.align	32
	#Procedure 0x401e89
	.globl sub_401e89
	.type sub_401e89, @function
sub_401e89:

	nop	dword ptr [rax]
.label_55:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_46
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_60:
	dec	r15d
	jne	.label_55
.label_16:
	mov	dword ptr [rip + output_position],  r14d
.label_32:
	mov	dword ptr [rip + padding_not_printed],  0
.label_23:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_58
	call	print_sep_string
.label_58:
	cmp	byte ptr [rbp + 0x38], 0
	je	.label_61
	mov	rdi, rbp
	call	add_line_number
.label_61:
	inc	dword ptr [rip + separators_not_printed]
	add	rbp, 0x40
	cmp	ebx, dword ptr [rsp + 4]
	lea	eax, [rbx + 1]
	mov	ebx, eax
	jne	.label_64
.label_13:
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [rip + padding_not_printed],  eax
	mov	al, byte ptr [rip + truncate_lines]
	xor	ecx, ecx
	test	al, al
	cmovne	ecx, dword ptr [rip + chars_per_column]
	mov	dword ptr [rip + spaces_not_printed],  ecx
	mov	byte ptr [rip + align_empty_cols],  0
	mov	ebx, dword ptr [rsp]
.label_67:
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, dword ptr [rip + padding_not_printed]
	mov	r14d, ebp
	sub	r14d, eax
	jle	.label_18
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_25
	sub	r14d, ecx
	mov	dword ptr [rip + spaces_not_printed],  r14d
	jmp	.label_63
.label_53:
	mov	rdi, r13
	call	close_file
	jmp	.label_34
.label_21:
	mov	byte ptr [r13 + 0x39], 0
.label_42:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_37
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_40:
	cmp	edi, 0xa
	je	.label_45
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_45:
	mov	byte ptr [rip + FF_only],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_48
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_48
	mov	byte ptr [rip + pad_vertically],  1
	call	print_header
	jmp	.label_43
.label_48:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_43
	mov	byte ptr [rip + print_a_FF],  1
.label_43:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_62
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_26
.label_62:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_26
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_69
	mov	esi, edx
	sub	esi, edi
.label_20:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_20
.label_69:
	test	edx, edx
	je	.label_26
	add	rax, 0x10
	neg	edx
	nop	
.label_66:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_66
.label_26:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_34:
	mov	r15b, 1
	jmp	.label_28
.label_25:
	cmp	r14d, ecx
	jle	.label_38
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_36
.label_70:
	call	__uflow
	mov	ebx, eax
	jmp	.label_41
.label_52:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_35
	.section	.text
	.align	32
	#Procedure 0x402093
	.globl sub_402093
	.type sub_402093, @function
sub_402093:

	nop	word ptr cs:[rax + rax]
.label_36:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_52
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_35:
	dec	ebp
	jne	.label_36
.label_38:
	mov	dword ptr [rip + output_position],  r14d
.label_63:
	mov	dword ptr [rip + padding_not_printed],  0
.label_18:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_57
	call	print_sep_string
.label_57:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_65
	mov	rdi, r13
	call	add_line_number
.label_65:
	mov	byte ptr [rip + empty_line],  0
	mov	r15b, 1
	cmp	ebx, 0xa
	je	.label_28
	test	r12d, r12d
	je	.label_12
	mov	rbp, qword ptr [rip + clump_buff]
	nop	dword ptr [rax]
.label_54:
	movsx	edi, byte ptr [rbp]
	inc	rbp
	call	qword ptr [r13 + 0x20]
	dec	r12d
	jne	.label_54
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x402122
	.globl sub_402122
	.type sub_402122, @function
sub_402122:

	nop	word ptr cs:[rax + rax]
.label_51:
	test	ebp, ebp
	je	.label_12
	mov	rbx, qword ptr [rip + clump_buff]
	nop	dword ptr [rax + rax]
.label_27:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r13 + 0x20]
	dec	ebp
	jne	.label_27
	jmp	.label_12
.label_33:
	call	__uflow
	jmp	.label_31
	.section	.text
	.align	32
	#Procedure 0x402157
	.globl sub_402157
	.type sub_402157, @function
sub_402157:

	nop	word ptr [rax + rax]
.label_12:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_33
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	eax, byte ptr [rax]
.label_31:
	cmp	eax, -1
	je	.label_39
	cmp	eax, 0xa
	je	.label_28
	cmp	eax, 0xc
	je	.label_22
	mov	ebx, dword ptr [rip + input_position]
	movsx	edi, al
	call	char_to_clump
	mov	ebp, eax
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_51
	mov	eax, dword ptr [rip + input_position]
	cmp	eax, dword ptr [rip + chars_per_column]
	jle	.label_51
	mov	dword ptr [rip + input_position],  ebx
	xor	r15d, r15d
	jmp	.label_28
.label_39:
	mov	rdi, r13
	call	close_file
	jmp	.label_28
.label_22:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_68
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_50:
	cmp	edi, 0xa
	je	.label_49
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_49:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_73
	mov	byte ptr [rip + print_a_FF],  1
.label_73:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_15
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_14
.label_15:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_14
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_44
	mov	esi, edx
	sub	esi, edi
.label_29:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_29
.label_44:
	test	edx, edx
	je	.label_14
	add	rax, 0x10
	neg	edx
	nop	dword ptr [rax + rax]
.label_72:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_72
.label_14:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_28:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_37:
	call	__uflow
	mov	edi, eax
	jmp	.label_40
.label_24:
	call	__uflow
	mov	ebx, eax
	jmp	.label_59
.label_30:
	call	__uflow
	mov	ebx, eax
	jmp	.label_17
.label_68:
	call	__uflow
	mov	edi, eax
	jmp	.label_50
	.section	.text
	.align	32
	#Procedure 0x4022ea
	.globl sub_4022ea
	.type sub_4022ea, @function
sub_4022ea:

	nop	word ptr [rax + rax]
.label_74:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022f2
	.globl sub_4022f2
	.type sub_4022f2, @function
sub_4022f2:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022f5

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_74
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x402310

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
	.section	.text
	.align	32
	#Procedure 0x402337
	.globl sub_402337
	.type sub_402337, @function
sub_402337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402340
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_75
	nop	word ptr [rax + rax]
.label_76:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_76
.label_75:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402362
	.globl sub_402362
	.type sub_402362, @function
sub_402362:

	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_77
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402390
	.globl sub_402390
	.type sub_402390, @function
sub_402390:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40239f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_80
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_79
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_79
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_78
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_78:
	mov	rbx, r14
.label_79:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402420

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402450

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	ebx, edi
	mov	ecx, dword ptr [rip + buff_current]
	cmp	rcx, qword ptr [rip + buff_allocated]
	mov	rax, qword ptr [rip + buff]
	jb	.label_85
	mov	esi, OFFSET FLAT:buff_allocated
	mov	rdi, rax
	call	x2realloc
	mov	qword ptr [rip + buff],  rax
	mov	ecx, dword ptr [rip + buff_current]
.label_85:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + buff_current],  edx
	mov	ecx, ecx
	mov	byte ptr [rax + rcx], bl
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402493
	.globl sub_402493
	.type sub_402493, @function
sub_402493:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_86
	test	rsi, rsi
	je	.label_86
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_86:
	call	abort
.label_90:
	test	rcx, rcx
	jne	.label_91
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_91:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_92
.label_93:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_88
	test	rbx, rbx
	jne	.label_88
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_92:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402561
	.globl sub_402561
	.type sub_402561, @function
sub_402561:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40256a
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_90
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_87
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_93
.label_87:
	call	xalloc_die
.label_88:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_89
	test	rax, rax
	je	.label_87
.label_89:
	pop	rbx
	ret	
.label_94:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4025b5
	.globl sub_4025b5
	.type sub_4025b5, @function
sub_4025b5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025b9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_94
	test	rsi, rsi
	je	.label_94
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
	.section	.text
	.align	32
	#Procedure 0x402620
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x402674
	.globl sub_402674
	.type sub_402674, @function
sub_402674:

	nop	word ptr cs:[rax + rax]
.label_95:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402685
	.globl sub_402685
	.type sub_402685, @function
sub_402685:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402693
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
	je	.label_96
	test	r15, r15
	je	.label_95
.label_96:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	cmp	dword ptr [rip + separators_not_printed],  0
	jle	.label_106
	mov	r12d, dword ptr [rip + col_sep_length]
	mov	r14, qword ptr [rip + col_sep_string]
	nop	word ptr cs:[rax + rax]
.label_104:
	lea	eax, [r12 - 1]
	test	r12d, r12d
	jle	.label_97
	mov	r15d, eax
	mov	rbx, r14
	jmp	.label_100
	.section	.text
	.align	32
	#Procedure 0x402712
	.globl sub_402712
	.type sub_402712, @function
sub_402712:

	nop	word ptr cs:[rax + rax]
.label_97:
	mov	r12d, eax
	jmp	.label_98
.label_103:
	movzx	esi, al
	call	__overflow
	jmp	.label_101
	.section	.text
	.align	32
	#Procedure 0x40272f
	.globl sub_40272f
	.type sub_40272f, @function
sub_40272f:

	nop	
.label_100:
	movzx	eax, byte ptr [rbx]
	mov	ecx, dword ptr [rip + spaces_not_printed]
	cmp	al, 0x20
	jne	.label_108
	inc	ecx
	mov	dword ptr [rip + spaces_not_printed],  ecx
	jmp	.label_107
	.section	.text
	.align	32
	#Procedure 0x402747
	.globl sub_402747
	.type sub_402747, @function
sub_402747:

	nop	word ptr [rax + rax]
.label_108:
	test	ecx, ecx
	jle	.label_105
	call	print_white_space
	movzx	eax, byte ptr [rbx]
.label_105:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_103
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_101:
	inc	dword ptr [rip + output_position]
.label_107:
	inc	rbx
	dec	r12d
	jg	.label_100
	lea	r14, [r14 + r15 + 1]
	mov	r12d, 0xffffffff
.label_98:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_102
	call	print_white_space
.label_102:
	mov	eax, dword ptr [rip + separators_not_printed]
	lea	ecx, [rax - 1]
	mov	dword ptr [rip + separators_not_printed],  ecx
	cmp	eax, 1
	jg	.label_104
.label_99:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_106:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_99
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	print_white_space
	.section	.text
	.align	32
	#Procedure 0x4027d8
	.globl sub_4027d8
	.type sub_4027d8, @function
sub_4027d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027e0

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
	jge	.label_109
	mov	ecx, ebx
	jmp	.label_112
	.section	.text
	.align	32
	#Procedure 0x4027fd
	.globl sub_4027fd
	.type sub_4027fd, @function
sub_4027fd:

	nop	dword ptr [rax]
.label_110:
	movzx	eax, byte ptr [rip + output_tab_char]
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_111
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_114:
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_109
	jmp	.label_112
.label_111:
	movzx	esi, al
	call	__overflow
	jmp	.label_114
	.section	.text
	.align	32
	#Procedure 0x402835
	.globl sub_402835
	.type sub_402835, @function
sub_402835:

	nop	word ptr cs:[rax + rax]
.label_109:
	mov	ecx, ebx
	mov	ebx, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r14d
	sub	ebp, ebx
	jge	.label_110
.label_112:
	cmp	ecx, r14d
	jge	.label_113
	mov	ebx, r14d
	sub	ebx, ecx
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebx
	jne	.label_115
.label_113:
	mov	dword ptr [rip + output_position],  r14d
	mov	dword ptr [rip + spaces_not_printed],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402894
	.globl sub_402894
	.type sub_402894, @function
sub_402894:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_116:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_116
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4028c1
	.globl sub_4028c1
	.type sub_4028c1, @function
sub_4028c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x40293e
	.globl sub_40293e
	.type sub_40293e, @function
sub_40293e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402940
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_117
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_120:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_120
.label_117:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_121
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_119], OFFSET FLAT:slot0
.label_121:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_118
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_118:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029d1
	.globl sub_4029d1
	.type sub_4029d1, @function
sub_4029d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_122
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_122:
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
	.section	.text
	.align	32
	#Procedure 0x402a63
	.globl sub_402a63
	.type sub_402a63, @function
sub_402a63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a70

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
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_131
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_140:
	cmp	ebp, 0xc
	jne	.label_128
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_128
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_132
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_146:
	cmp	ebp, 0xa
	jne	.label_128
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_139
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_128:
	mov	al, byte ptr [rip + last_line]
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_130
	.section	.text
	.align	32
	#Procedure 0x402aef
	.globl sub_402aef
	.type sub_402aef, @function
sub_402aef:

	nop	
.label_141:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_130:
	cmp	eax, -1
	je	.label_147
	cmp	eax, 0xa
	je	.label_123
	cmp	eax, 0xc
	je	.label_125
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_141
	mov	rdi, rbx
	call	__uflow
	jmp	.label_130
.label_147:
	mov	rdi, r15
	call	close_file
	jmp	.label_123
.label_125:
	cmp	byte ptr [rip + last_line],  1
	jne	.label_133
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_136
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_133
.label_136:
	mov	esi, dword ptr [rip + columns]
	test	esi, esi
	je	.label_133
	mov	rax, qword ptr [rip + column_vector]
	lea	edx, [rsi - 1]
	mov	ecx, esi
	and	ecx, 7
	cmp	edx, 7
	jb	.label_143
	mov	edx, ecx
	sub	edx, esi
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	byte ptr [rax + 0x39], 0
	mov	byte ptr [rax + 0x79], 0
	mov	byte ptr [rax + 0xb9], 0
	mov	byte ptr [rax + 0xf9], 0
	mov	byte ptr [rax + 0x139], 0
	mov	byte ptr [rax + 0x179], 0
	mov	byte ptr [rax + 0x1b9], 0
	mov	byte ptr [rax + 0x1f9], 0
	add	rax, 0x200
	add	edx, 8
	jne	.label_144
.label_143:
	test	ecx, ecx
	je	.label_133
	add	rax, 0x39
	neg	ecx
	nop	word ptr [rax + rax]
.label_138:
	mov	byte ptr [rax], 0
	add	rax, 0x40
	inc	ecx
	jne	.label_138
.label_133:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_142
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_134:
	cmp	edi, 0xa
	je	.label_135
	mov	rsi, rbx
	call	ungetc
.label_135:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_124
	mov	dword ptr [r15 + 0x10], 2
	jmp	.label_126
.label_124:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_126
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_129
	mov	esi, edx
	sub	esi, edi
.label_137:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_137
.label_129:
	test	edx, edx
	je	.label_126
	add	rax, 0x10
	neg	edx
	nop	
.label_145:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_145
.label_126:
	mov	dword ptr [r15 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_123:
	mov	al, byte ptr [rip + skip_count]
	test	al, al
	jne	.label_127
	cmp	r14d, 1
	setne	al
	cmp	ebp, 0xc
	je	.label_127
	and	al, byte ptr [rip + parallel_files]
	jne	.label_127
	inc	dword ptr [rip + line_count]
.label_127:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_131:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_140
.label_142:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_134
.label_132:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_146
.label_139:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_128
	.section	.text
	.align	32
	#Procedure 0x402d03
	.globl sub_402d03
	.type sub_402d03, @function
sub_402d03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d10

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
	je	.label_148
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
.label_148:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402da5
	.globl sub_402da5
	.type sub_402da5, @function
sub_402da5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl print_stored
	.type print_stored, @function
print_stored:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rax, [r14 + 1]
	mov	dword ptr [r15 + 0x28], eax
	mov	rax, qword ptr [rip + line_vector]
	movsxd	rbp, dword ptr [rax + r14*4]
	mov	rbx, qword ptr [rip + buff]
	add	rbx, rbp
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_165
	call	print_header
.label_165:
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_166
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	mov	rax, qword ptr [rip + column_vector]
	jle	.label_151
	lea	edx, [rdi - 1]
	mov	ecx, edi
	and	ecx, 7
	cmp	edx, 7
	mov	rdx, rax
	jb	.label_157
	mov	esi, ecx
	sub	esi, edi
	mov	rdx, rax
.label_156:
	mov	dword ptr [rdx + 0x10], 2
	mov	dword ptr [rdx + 0x50], 2
	mov	dword ptr [rdx + 0x90], 2
	mov	dword ptr [rdx + 0xd0], 2
	mov	dword ptr [rdx + 0x110], 2
	mov	dword ptr [rdx + 0x150], 2
	mov	dword ptr [rdx + 0x190], 2
	mov	dword ptr [rdx + 0x1d0], 2
	add	rdx, 0x200
	add	esi, 8
	jne	.label_156
.label_157:
	test	ecx, ecx
	je	.label_151
	add	rdx, 0x10
	neg	ecx
.label_158:
	mov	dword ptr [rdx], 2
	add	rdx, 0x40
	inc	ecx
	jne	.label_158
.label_151:
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_160
.label_166:
	mov	qword ptr [rsp], rbp
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, dword ptr [rip + padding_not_printed]
	mov	r13d, ebp
	sub	r13d, eax
	jle	.label_162
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_149
	sub	r13d, ecx
	mov	dword ptr [rip + spaces_not_printed],  r13d
	jmp	.label_154
.label_149:
	cmp	r13d, ecx
	jle	.label_159
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_152
.label_160:
	cmp	byte ptr [rip + extremities],  1
	jne	.label_155
	mov	byte ptr [rip + pad_vertically],  0
	jmp	.label_155
.label_161:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_163
	.section	.text
	.align	32
	#Procedure 0x402f0c
	.globl sub_402f0c
	.type sub_402f0c, @function
sub_402f0c:

	nop	dword ptr [rax]
.label_152:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_161
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_163:
	dec	ebp
	jne	.label_152
.label_159:
	mov	dword ptr [rip + output_position],  r13d
.label_154:
	mov	dword ptr [rip + padding_not_printed],  0
.label_162:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_150
	call	print_sep_string
.label_150:
	mov	rax, qword ptr [rsp]
	cmp	eax, r12d
	je	.label_153
	sub	r12, rax
	nop	dword ptr [rax + rax]
.label_164:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	jne	.label_164
.label_153:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jne	.label_155
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax, qword ptr [rip + end_vector]
	mov	eax, dword ptr [rax + r14*4]
	add	eax, edx
	mov	dword ptr [rip + output_position],  eax
	mov	ecx, dword ptr [rip + col_sep_length]
	sub	edx, ecx
	cmp	edx, dword ptr [rip + chars_per_margin]
	jne	.label_155
	sub	eax, ecx
	mov	dword ptr [rip + output_position],  eax
.label_155:
	mov	al, 1
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
	#Procedure 0x402fb9
	.globl sub_402fb9
	.type sub_402fb9, @function
sub_402fb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fc0

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
	jae	.label_197
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
	je	.label_170
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_174
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_175
	mov	r13d, 1
.label_174:
	test	r14, r14
	je	.label_182
	mov	r15d, r13d
	jmp	.label_186
.label_170:
	mov	r13d, 4
	test	r14, r14
	je	.label_175
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_175
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_175
.label_186:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_195
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_178
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_167
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_167
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_167
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_216
	cmp	eax, 0x44
	je	.label_216
	cmp	eax, 0x69
	jne	.label_167
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_167
.label_182:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_175
.label_216:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_167:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_178
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_183]
.label_1265:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_189
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_189:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_200
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_200:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_207
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_207:
	or	ecx, r14d
	jmp	.label_171
.label_178:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_191
.label_1266:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_171
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_171
.label_1267:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_180
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_180:
	cmp	rsi, rdi
	jl	.label_193
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_193:
	or	ecx, r11d
	jmp	.label_171
.label_1269:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_201
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_201:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_213
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_213:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_219
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_219:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_177
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_177:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_171
.label_1263:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_176
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_181
.label_1264:
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
	jl	.label_198
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_198:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_202
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_202:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_205
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_205:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_172
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_172:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_184
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_184:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_192
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_192:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_171
.label_1268:
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
	jl	.label_204
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_204:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_215
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_215:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_220
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_220:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_179
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_179:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_190
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_190:
	or	ecx, r14d
	jmp	.label_171
.label_1270:
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
	jl	.label_199
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_199:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_212
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_212:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_218
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_218:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_173
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_173:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_185
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_185:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_194
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_194:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_203
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_203:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_211
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_169
.label_1271:
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
	jl	.label_217
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_217:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_168
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_168:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_188
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_188:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_196
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_196:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_206
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_206:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_214
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_214:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_211
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_169:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_211:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_171
.label_1272:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_176
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_181
.label_1273:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_187
.label_176:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_171
.label_187:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_181:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_171:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_195:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_191:
	mov	r13d, r15d
.label_175:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_197:
	mov	edi, OFFSET FLAT:label_208
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_210
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4038d8
	.globl sub_4038d8
	.type sub_4038d8, @function
sub_4038d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0

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
	mov	r8d, OFFSET FLAT:label_221
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_224
	mov	rbp, qword ptr [rsp]
	xor	eax, eax
	cmp	rbp, rbx
	je	.label_222
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_222
	mov	dl, byte ptr [rbp]
	mov	rax, -1
	cmp	dl, 0x3a
	jne	.label_227
	inc	rbp
	lea	rsi, [rsp]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_221
	mov	rdi, rbp
	call	xstrtoumax
	test	eax, eax
	jne	.label_224
	mov	rdx, qword ptr [rsp]
	cmp	rbp, rdx
	je	.label_225
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	jae	.label_226
.label_225:
	xor	eax, eax
	jmp	.label_222
.label_223:
	mov	qword ptr [rip + first_page_number],  rcx
	mov	qword ptr [rip + last_page_number],  rax
	mov	al, 1
.label_222:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_224:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	.section	.text
	.align	32
	#Procedure 0x4039ba
	.globl sub_4039ba
	.type sub_4039ba, @function
sub_4039ba:

	nop	word ptr cs:[rax + rax]
.label_226:
	mov	dl, byte ptr [rdx]
.label_227:
	test	dl, dl
	je	.label_223
	xor	eax, eax
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x4039d0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_228
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_230
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_228
.label_230:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_228
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_229
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_229:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_228:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403a44
	.globl sub_403a44
	.type sub_403a44, @function
sub_403a44:

	nop	word ptr cs:[rax + rax]
.label_232:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a55
	.globl sub_403a55
	.type sub_403a55, @function
sub_403a55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a5f
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
	je	.label_231
	test	r14, r14
	je	.label_232
.label_231:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a90

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
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_234
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_234:
	test	al, al
	je	.label_236
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_221
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_233
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_233
	mov	dword ptr [rbp], ecx
.label_236:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_233:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	jg	.label_237
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
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
	.section	.text
	.align	32
	#Procedure 0x403b55
	.globl sub_403b55
	.type sub_403b55, @function
sub_403b55:

	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rax, rbx
	jmp	.label_238
.label_242:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_240:
	xor	eax, eax
.label_238:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b84
	.globl sub_403b84
	.type sub_403b84, @function
sub_403b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b8e

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
	je	.label_238
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_241
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_242
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_239
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_238
.label_239:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x403bf0

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
	je	.label_246
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_243
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_245
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_244
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x28]
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
	jne	.label_244
.label_245:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_244
	mov	qword ptr [rsp], -1
.label_244:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_243
	mov	rax, qword ptr [rsp]
	jmp	.label_247
.label_246:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	.section	.text
	.align	32
	#Procedure 0x403cd3
	.globl sub_403cd3
	.type sub_403cd3, @function
sub_403cd3:

	nop	word ptr cs:[rax + rax]
.label_243:
	mov	rax, -1
.label_247:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_251:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_248:
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
	ja	.label_248
	mov	byte ptr [rsi], 0x2d
.label_250:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d48
	.globl sub_403d48
	.type sub_403d48, @function
sub_403d48:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d55

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_251
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_249:
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
	ja	.label_249
	jmp	.label_250
	.section	.text
	.align	32
	#Procedure 0x403db0

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
	.section	.text
	.align	32
	#Procedure 0x403dd3
	.globl sub_403dd3
	.type sub_403dd3, @function
sub_403dd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403de0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x403de5
	.globl sub_403de5
	.type sub_403de5, @function
sub_403de5:

	nop	word ptr cs:[rax + rax]
.label_256:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_252
	mov	eax, OFFSET FLAT:label_253
	jmp	.label_254
	.section	.text
	.align	32
	#Procedure 0x403dff
	.globl sub_403dff
	.type sub_403dff, @function
sub_403dff:

	nop	word ptr cs:[rax + rax]
.label_261:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_255
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_255
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_255
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_255
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_255
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_255
	cmp	byte ptr [rax + 7], 0
	je	.label_256
.label_255:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_257
	mov	eax, OFFSET FLAT:label_258
.label_254:
	cmove	rax, rcx
.label_262:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e52

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
	jne	.label_262
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_261
	cmp	ecx, 0x55
	jne	.label_255
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_255
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_255
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_255
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_255
	cmp	byte ptr [rax + 5], 0
	jne	.label_255
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_259
	mov	eax, OFFSET FLAT:label_260
	jmp	.label_254
	.section	.text
	.align	32
	#Procedure 0x403ec0

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
	je	.label_263
	test	r15, r15
	je	.label_264
.label_263:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_264:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403efc
	.globl sub_403efc
	.type sub_403efc, @function
sub_403efc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f00

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_265
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_272
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:label_267
	mov	edx, 1
	call	setenv
	jmp	.label_270
.label_272:
	mov	edi, OFFSET FLAT:label_267
	call	unsetenv
.label_270:
	test	eax, eax
	je	.label_266
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_268
.label_266:
	call	tzset
	mov	r12b, 1
.label_268:
	cmp	rbp, 2
	jb	.label_271
	nop	
.label_269:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_269
.label_271:
	mov	dword ptr [r14], r15d
.label_265:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f83
	.globl sub_403f83
	.type sub_403f83, @function
sub_403f83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x118
	mov	dword ptr [rip + output_position],  0
	mov	ebx, dword ptr [rip + chars_per_margin]
	mov	al, byte ptr [rip + tabify_output]
	test	al, al
	je	.label_280
	mov	dword ptr [rip + spaces_not_printed],  ebx
	jmp	.label_281
.label_282:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_277:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_279
	.section	.text
	.align	32
	#Procedure 0x403ffd
	.globl sub_403ffd
	.type sub_403ffd, @function
sub_403ffd:

	nop	word ptr cs:[rax + rax]
.label_280:
	test	ebx, ebx
	jle	.label_275
	mov	ebp, ebx
	jmp	.label_278
.label_278:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_277
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_279:
	dec	ebp
	jne	.label_278
.label_275:
	mov	dword ptr [rip + output_position],  ebx
.label_281:
	call	print_white_space
	cmp	qword ptr [rip + page_number],  0
	je	.label_282
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
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
	mov	esi, OFFSET FLAT:label_273
	mov	ecx, OFFSET FLAT:label_221
	mov	eax, 0
	push	r15
	push	OFFSET FLAT:label_274
	push	rbx
	push	qword ptr [rip + file_text]
	push	OFFSET FLAT:label_274
	call	__printf_chk
	add	rsp, 0x30
	mov	byte ptr [rip + print_a_header],  0
	mov	dword ptr [rip + output_position],  0
	add	rsp, 0x118
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
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
	je	.label_284
	mov	qword ptr [rax], rbx
.label_284:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041ec
	.globl sub_4041ec
	.type sub_4041ec, @function
sub_4041ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041ff
	.globl sub_4041ff
	.type sub_4041ff, @function
sub_4041ff:

	nop	
.label_285:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404205
	.globl sub_404205
	.type sub_404205, @function
sub_404205:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40420b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_285
	test	rdx, rdx
	je	.label_285
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404270
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40427a
	.globl sub_40427a
	.type sub_40427a, @function
sub_40427a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404280
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_287
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_290
	mov	ecx, OFFSET FLAT:label_291
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4042f4
	.globl sub_4042f4
	.type sub_4042f4, @function
sub_4042f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	jmp	.label_292
.label_299:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_298
	.section	.text
	.align	32
	#Procedure 0x404316
	.globl sub_404316
	.type sub_404316, @function
sub_404316:

	nop	word ptr cs:[rax + rax]
.label_292:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_299
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_298:
	cmp	eax, -1
	je	.label_302
	cmp	eax, 0xa
	je	.label_304
	cmp	eax, 0xc
	jne	.label_292
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_296
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_303:
	cmp	edi, 0xa
	je	.label_300
	mov	rsi, rbx
	call	ungetc
.label_300:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_301
	mov	byte ptr [rip + print_a_FF],  1
.label_301:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_305
	mov	dword ptr [r14 + 0x10], 2
	jmp	.label_293
.label_302:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	close_file
.label_305:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_293
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_295
	mov	esi, edx
	sub	esi, edi
	nop	
.label_297:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_297
.label_295:
	test	edx, edx
	je	.label_293
	add	rax, 0x10
	neg	edx
	nop	
.label_294:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_294
.label_293:
	mov	dword ptr [r14 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_304:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_296:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_303
	.section	.text
	.align	32
	#Procedure 0x40443f
	.globl sub_40443f
	.type sub_40443f, @function
sub_40443f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404440
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
	je	.label_306
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
.label_306:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4044a1
	.globl sub_4044a1
	.type sub_4044a1, @function
sub_4044a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0

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
	je	.label_313
	cmp	eax, 1
	je	.label_314
	cmp	eax, 3
	jne	.label_315
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_309
.label_312:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_310
	mov	dword ptr [rax], 0x4b
	jmp	.label_309
.label_313:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_311
	cmp	rbx, r12
	jle	.label_307
.label_311:
	cmp	rbx, 0x40000000
	jl	.label_312
.label_314:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_309
.label_315:
	call	__errno_location
.label_309:
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
	mov	edx, OFFSET FLAT:label_308
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_307:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_310:
	mov	dword ptr [rax], 0x22
	jmp	.label_309
	.section	.text
	.align	32
	#Procedure 0x404584
	.globl sub_404584
	.type sub_404584, @function
sub_404584:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404590
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40459a
	.globl sub_40459a
	.type sub_40459a, @function
sub_40459a:

	nop	word ptr [rax + rax]
.label_316:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4045a5
	.globl sub_4045a5
	.type sub_4045a5, @function
sub_4045a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045af
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_316
	call	rpl_calloc
	test	rax, rax
	je	.label_316
	pop	rcx
	ret	
.label_317:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4045d5
	.globl sub_4045d5
	.type sub_4045d5, @function
sub_4045d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045db
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_318
	test	rax, rax
	je	.label_317
.label_318:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14d, edi
	mov	ecx, dword ptr [rip + lines_per_page]
	mov	eax, ecx
	add	eax, -0xa
	mov	dword ptr [rip + lines_per_body],  eax
	jle	.label_432
	cmp	byte ptr [rip + extremities],  1
	je	.label_441
	jmp	.label_442
.label_432:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
.label_441:
	mov	dword ptr [rip + lines_per_body],  ecx
	mov	eax, ecx
.label_442:
	cmp	byte ptr [rip + double_space],  1
	jne	.label_448
	mov	ecx, eax
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [rip + lines_per_body],  ecx
.label_448:
	test	r14d, r14d
	je	.label_452
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_455
	mov	dword ptr [rip + columns],  r14d
	mov	sil, 1
	jmp	.label_459
.label_452:
	mov	byte ptr [rip + parallel_files],  0
.label_455:
	xor	esi, esi
.label_459:
	mov	cl, byte ptr [rip + storing_columns]
	test	cl, cl
	jne	.label_465
	mov	byte ptr [rip + balance_columns],  1
.label_465:
	mov	r10d, dword ptr [rip + columns]
	cmp	r10d, 2
	jl	.label_472
	mov	al, byte ptr [rip + use_col_separator]
	mov	dl, byte ptr [rip + join_lines]
	test	al, al
	je	.label_476
	cmp	dword ptr [rip + col_sep_length],  1
	jne	.label_478
	mov	eax, edx
	xor	al, 1
	test	al, 1
	je	.label_478
	mov	rax, qword ptr [rip + col_sep_string]
	cmp	byte ptr [rax], 9
	jne	.label_478
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_274
	jmp	.label_478
.label_472:
	mov	byte ptr [rip + storing_columns],  1
	mov	al, byte ptr [rip + join_lines]
	test	al, al
	jne	.label_485
	jmp	.label_489
.label_476:
	mov	eax, OFFSET FLAT:label_385
	mov	edi, OFFSET FLAT:label_274
	test	dl, 1
	cmovne	rdi, rax
	mov	qword ptr [rip + col_sep_string],  rdi
	mov	dword ptr [rip + col_sep_length],  1
	mov	byte ptr [rip + use_col_separator],  1
.label_478:
	mov	byte ptr [rip + truncate_lines],  1
	mov	byte ptr [rip + tabify_output],  1
	test	dl, 1
	je	.label_489
.label_485:
	mov	byte ptr [rip + truncate_lines],  0
.label_489:
	xor	r11d, r11d
	mov	r8b, byte ptr [rip + numbered_lines]
	cmp	r8b, 1
	jne	.label_358
	mov	eax, dword ptr [rip + start_line_num]
	mov	dword ptr [rip + line_count],  eax
	mov	edx, dword ptr [rip + chars_per_number]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_505
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, edx
	and	eax, 0xfffffff8
	mov	edi, edx
	sub	edi, eax
	neg	edi
	lea	edx, [rdx + rdi + 8]
	jmp	.label_510
.label_505:
	inc	edx
.label_510:
	mov	dword ptr [rip + number_width],  edx
	xor	r11d, r11d
	test	sil, sil
	cmovne	r11d, edx
.label_358:
	mov	ebp, dword ptr [rip + col_sep_length]
	test	ebp, ebp
	js	.label_517
	je	.label_417
	test	r10d, r10d
	jle	.label_377
	lea	r9d, [r10 - 1]
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ebp
	jmp	.label_519
.label_517:
	test	r10d, r10d
	jle	.label_523
	cmp	ebp, -1
	je	.label_417
	lea	r9d, [r10 - 1]
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
.label_519:
	cmp	eax, r9d
	jge	.label_417
	jmp	.label_528
.label_377:
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
	jmp	.label_529
.label_523:
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	ebp
.label_529:
	cmp	r10d, eax
	jle	.label_528
.label_417:
	lea	eax, [r10 - 1]
	imul	ebp, eax
	test	ebp, ebp
	js	.label_536
	mov	edi, ebp
.label_528:
	mov	ecx, dword ptr [rip + chars_per_line]
	mov	edx, ecx
	sub	edx, r11d
	mov	esi, edi
	xor	esi, 0x80000000
	xor	eax, eax
	cmp	edx, esi
	mov	ebp, edi
	jge	.label_520
	jmp	.label_322
.label_536:
	lea	r9d, [rbp + 0x7fffffff]
	mov	ecx, dword ptr [rip + chars_per_line]
	mov	esi, ecx
	sub	esi, r11d
	xor	eax, eax
	cmp	r9d, esi
	jl	.label_322
.label_520:
	sub	ecx, r11d
	sub	ecx, ebp
	mov	eax, ecx
.label_322:
	cdq	
	idiv	r10d
	mov	dword ptr [rip + chars_per_column],  eax
	test	eax, eax
	jle	.label_330
	test	r8b, r8b
	je	.label_334
	mov	rdi, qword ptr [rip + number_buff]
	call	free
	movsxd	rax, dword ptr [rip + chars_per_number]
	cmp	rax, 0xb
	mov	edi, 0xb
	cmova	rdi, rax
	inc	rdi
	call	xmalloc
	mov	qword ptr [rip + number_buff],  rax
.label_334:
	mov	rdi, qword ptr [rip + clump_buff]
	call	free
	mov	eax, dword ptr [rip + chars_per_input_tab]
	cmp	eax, 8
	mov	ecx, 8
	cmovge	ecx, eax
	movsxd	rdi, ecx
	call	xmalloc
	mov	qword ptr [rip + clump_buff],  rax
	mov	dword ptr [rip + total_files],  0
	mov	rdi, qword ptr [rip + column_vector]
	call	free
	movsxd	rdi, dword ptr [rip + columns]
	test	rdi, rdi
	js	.label_319
	shl	rdi, 6
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rip + column_vector],  rbp
	cmp	byte ptr [rip + parallel_files],  1
	je	.label_365
	test	r14d, r14d
	jle	.label_371
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	call	open_file
	test	al, al
	je	.label_340
	mov	rbx, qword ptr [rbx]
	mov	rdi, qword ptr [rbp]
	call	fileno
	mov	rdi, rbx
	mov	esi, eax
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
	lea	rbx, [rbp + 8]
	jmp	.label_445
.label_387:
	add	rbp, 0x40
	add	rbx, 8
.label_365:
	test	r14d, r14d
	je	.label_383
	dec	r14d
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	call	open_file
	test	al, al
	jne	.label_387
	add	rbp, -0x40
	dec	dword ptr [rip + columns]
	jmp	.label_387
.label_383:
	cmp	dword ptr [rip + columns],  0
	je	.label_340
	mov	edi, OFFSET FLAT:label_221
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_393
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	lea	rbx, [rbp + 8]
	mov	qword ptr [rbp + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbp], rax
	mov	byte ptr [rip + have_read_stdin],  1
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	edi, OFFSET FLAT:label_221
	mov	esi, 0xffffffff
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
.label_445:
	mov	edi, dword ptr [rip + columns]
	mov	eax, edi
	dec	eax
	je	.label_393
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbp]
	add	rbp, 0x40
	lea	esi, [rdi - 2]
	and	eax, 3
	cmp	esi, 3
	jb	.label_421
	lea	esi, [rax + 1]
	sub	esi, edi
	nop	dword ptr [rax]
.label_347:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	mov	qword ptr [rbp + 0x48], rcx
	mov	qword ptr [rbp + 0x40], rdx
	mov	dword ptr [rbp + 0x50], 0
	mov	byte ptr [rbp + 0x79], 0
	mov	dword ptr [rbp + 0x6c], 0
	mov	qword ptr [rbp + 0x88], rcx
	mov	qword ptr [rbp + 0x80], rdx
	mov	dword ptr [rbp + 0x90], 0
	mov	byte ptr [rbp + 0xb9], 0
	mov	dword ptr [rbp + 0xac], 0
	mov	qword ptr [rbp + 0xc8], rcx
	mov	qword ptr [rbp + 0xc0], rdx
	mov	dword ptr [rbp + 0xd0], 0
	mov	byte ptr [rbp + 0xf9], 0
	mov	dword ptr [rbp + 0xec], 0
	add	rbp, 0x100
	add	esi, 4
	jne	.label_347
.label_421:
	test	eax, eax
	je	.label_393
	neg	eax
	nop	dword ptr [rax]
.label_475:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	add	rbp, 0x40
	inc	eax
	jne	.label_475
.label_393:
	mov	eax, dword ptr [rip + total_files]
	mov	dword ptr [rip + files_ready_to_read],  eax
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_331
	mov	ecx, dword ptr [rip + columns]
	test	ecx, ecx
	js	.label_486
	mov	r14d, dword ptr [rip + lines_per_body]
	je	.label_488
	test	r14d, r14d
	js	.label_490
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ecx
	jmp	.label_492
.label_486:
	mov	r14d, dword ptr [rip + lines_per_body]
	test	r14d, r14d
	js	.label_494
	cmp	ecx, -1
	je	.label_488
	mov	eax, 0x80000000
	cdq	
	idiv	ecx
.label_492:
	cmp	eax, r14d
	jge	.label_488
	jmp	.label_501
.label_490:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_502
.label_494:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_502:
	idiv	ecx
	cmp	r14d, eax
	jl	.label_501
.label_488:
	imul	r14d, ecx
	cmp	r14d, 0x7fffffff
	je	.label_501
	mov	ebp, dword ptr [rip + chars_per_column]
	cmp	ebp, 0x7fffffff
	je	.label_501
	inc	ebp
	js	.label_511
	test	ebp, ebp
	je	.label_512
	test	r14d, r14d
	js	.label_323
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ebp
	jmp	.label_514
.label_511:
	test	r14d, r14d
	js	.label_345
	cmp	ebp, -1
	je	.label_512
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
.label_514:
	cmp	eax, r14d
	jge	.label_512
	jmp	.label_501
.label_323:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_518
.label_345:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_518:
	idiv	ebp
	cmp	r14d, eax
	jl	.label_501
.label_512:
	lea	ebx, [r14 + 1]
	mov	rdi, qword ptr [rip + line_vector]
	call	free
	test	ebx, ebx
	js	.label_319
	movsxd	rdi, ebx
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + line_vector],  rax
	mov	rdi, qword ptr [rip + end_vector]
	call	free
	test	r14d, r14d
	js	.label_319
	imul	ebp, r14d
	movsxd	rdi, r14d
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + end_vector],  rax
	mov	rdi, qword ptr [rip + buff]
	call	free
	movsxd	rbx, ebp
	mov	al, byte ptr [rip + use_col_separator]
	test	al, al
	movabs	rcx, 0x3fffffffffffffff
	movabs	rdx, 0x7fffffffffffffff
	cmovne	rdx, rcx
	cmp	rdx, rbx
	jb	.label_319
	movzx	edi, al
	inc	rdi
	imul	rdi, rbx
	call	xmalloc
	mov	qword ptr [rip + buff],  rax
	movzx	eax, byte ptr [rip + use_col_separator]
	inc	rax
	imul	rax, rbx
	mov	qword ptr [rip + buff_allocated],  rax
.label_331:
	mov	r14, qword ptr [rip + first_page_number]
	mov	eax, 1
	cmp	r14, 2
	jb	.label_339
	mov	eax, dword ptr [rip + columns]
	mov	r15d, 1
	nop	dword ptr [rax]
.label_477:
	mov	ecx, dword ptr [rip + lines_per_body]
	cmp	ecx, 2
	jl	.label_348
	mov	r12d, 1
	nop	word ptr cs:[rax + rax]
.label_370:
	test	eax, eax
	jle	.label_357
	mov	ebp, 1
	mov	rbx, qword ptr [rip + column_vector]
.label_363:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_328
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax, dword ptr [rip + columns]
.label_328:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_363
	mov	ecx, dword ptr [rip + lines_per_body]
.label_357:
	inc	r12d
	cmp	r12d, ecx
	jl	.label_370
.label_348:
	mov	byte ptr [rip + last_line],  1
	test	eax, eax
	jle	.label_372
	mov	ebp, 1
	mov	rbx, qword ptr [rip + column_vector]
	nop	dword ptr [rax]
.label_378:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_376
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax, dword ptr [rip + columns]
.label_376:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_378
	mov	cl, byte ptr [rip + storing_columns]
	test	eax, eax
	jle	.label_382
	test	cl, 1
	jne	.label_382
	mov	rcx, qword ptr [rip + column_vector]
	lea	esi, [rax - 1]
	mov	edx, eax
	and	edx, 3
	cmp	esi, 3
	jb	.label_386
	mov	esi, edx
	sub	esi, eax
	nop	word ptr cs:[rax + rax]
.label_416:
	cmp	dword ptr [rcx + 0x10], 3
	je	.label_392
	mov	dword ptr [rcx + 0x10], 2
.label_392:
	cmp	dword ptr [rcx + 0x50], 3
	je	.label_397
	mov	dword ptr [rcx + 0x50], 2
.label_397:
	cmp	dword ptr [rcx + 0x90], 3
	je	.label_401
	mov	dword ptr [rcx + 0x90], 2
.label_401:
	cmp	dword ptr [rcx + 0xd0], 3
	je	.label_405
	mov	dword ptr [rcx + 0xd0], 2
.label_405:
	add	rcx, 0x100
	add	esi, 4
	jne	.label_416
.label_386:
	test	edx, edx
	je	.label_414
	add	rcx, 0x10
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_419:
	cmp	dword ptr [rcx], 3
	je	.label_497
	mov	dword ptr [rcx], 2
.label_497:
	add	rcx, 0x40
	inc	edx
	jne	.label_419
.label_414:
	xor	ecx, ecx
	jmp	.label_382
	.section	.text
	.align	32
	#Procedure 0x404dd7
	.globl sub_404dd7
	.type sub_404dd7, @function
sub_404dd7:

	nop	word ptr [rax + rax]
.label_372:
	mov	cl, byte ptr [rip + storing_columns]
.label_382:
	mov	rdx, qword ptr [rip + column_vector]
	test	eax, eax
	je	.label_428
	mov	ebp, eax
	and	ebp, 1
	cmp	eax, 1
	mov	rsi, rdx
	je	.label_433
	mov	edi, ebp
	sub	edi, eax
	mov	rsi, rdx
	nop	word ptr cs:[rax + rax]
.label_446:
	cmp	dword ptr [rsi + 0x10], 2
	jne	.label_440
	mov	dword ptr [rsi + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_440:
	cmp	dword ptr [rsi + 0x50], 2
	jne	.label_443
	mov	dword ptr [rsi + 0x50], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_443:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_446
.label_433:
	test	ebp, ebp
	je	.label_428
	cmp	dword ptr [rsi + 0x10], 2
	jne	.label_428
	mov	dword ptr [rsi + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
	nop	word ptr cs:[rax + rax]
.label_428:
	test	cl, 1
	je	.label_460
	mov	ecx, dword ptr [rip + files_ready_to_read]
	mov	byte ptr [rip + last_line],  0
	test	ecx, ecx
	jg	.label_462
	jmp	.label_466
	.section	.text
	.align	32
	#Procedure 0x404e78
	.globl sub_404e78
	.type sub_404e78, @function
sub_404e78:

	nop	dword ptr [rax + rax]
.label_460:
	cmp	dword ptr [rdx + 0x10], 3
	je	.label_470
	mov	dword ptr [rip + files_ready_to_read],  1
	mov	byte ptr [rip + last_line],  0
.label_462:
	inc	r15
	cmp	r15, r14
	jb	.label_477
	jmp	.label_479
.label_470:
	mov	dword ptr [rip + files_ready_to_read],  0
	mov	byte ptr [rip + last_line],  0
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
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
	cmp	dword ptr [rip + files_ready_to_read],  0
	jle	.label_340
.label_479:
	mov	rax, qword ptr [rip + first_page_number]
.label_339:
	mov	qword ptr [rip + page_number],  rax
	mov	ecx, dword ptr [rip + chars_per_margin]
	xor	edi, edi
	mov	r11b, byte ptr [rip + truncate_lines]
	cmp	r11b, 1
	jne	.label_496
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_447
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_447
	mov	edi, dword ptr [rip + chars_per_column]
	add	edi, ecx
	add	edi, dword ptr [rip + number_width]
	jmp	.label_496
.label_447:
	mov	edi, dword ptr [rip + chars_per_column]
	add	edi, ecx
.label_496:
	mov	r14d, dword ptr [rip + col_sep_length]
	add	ecx, r14d
	mov	r12, qword ptr [rip + column_vector]
	mov	eax, dword ptr [rip + columns]
	mov	ebp, 1
	mov	dl, byte ptr [rip + storing_columns]
	cmp	eax, 2
	jl	.label_508
	mov	r15b, byte ptr [rip + numbered_lines]
	mov	bl, byte ptr [rip + parallel_files]
	xor	bl, 1
	mov	byte ptr [rsp + 0xb], bl
	mov	r13d, dword ptr [rip + chars_per_column]
	mov	r8d, OFFSET FLAT:print_char
	mov	ebx, OFFSET FLAT:store_char
	mov	esi, OFFSET FLAT:read_line
	mov	ebp, OFFSET FLAT:print_stored
	mov	dword ptr [rsp + 0xc], edx
	and	dl, 1
	cmovne	rbp, rsi
	test	dl, dl
	cmovne	rbx, r8
	lea	edx, [rax - 2]
	inc	rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdx, [r12 + 0x38]
	mov	esi, 1
	sub	esi, eax
	xor	r8d, r8d
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_538:
	mov	qword ptr [rdx - 0x18], rbx
	mov	qword ptr [rdx - 0x20], rbp
	test	r15b, 1
	je	.label_532
	test	r10d, r10d
	sete	r9b
	or	r9b, byte ptr [rsp + 0xb]
	jmp	.label_534
	.section	.text
	.align	32
	#Procedure 0x404fec
	.globl sub_404fec
	.type sub_404fec, @function
sub_404fec:

	nop	dword ptr [rax]
.label_532:
	xor	r9d, r9d
.label_534:
	and	r9b, 1
	mov	byte ptr [rdx], r9b
	mov	dword ptr [rdx - 4], ecx
	add	edi, r14d
	mov	ecx, edi
	lea	edi, [rdi + r13]
	test	r11b, r11b
	cmove	ecx, r8d
	cmove	edi, r8d
	add	rdx, 0x40
	dec	r10d
	cmp	esi, r10d
	jne	.label_538
	mov	rdi, qword ptr [rsp + 0x10]
	shl	rdi, 6
	add	rdi, r12
	mov	ebp, eax
	mov	edx, dword ptr [rsp + 0xc]
	jmp	.label_326
.label_508:
	mov	rdi, r12
.label_326:
	test	dl, 1
	jne	.label_333
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_333
	mov	qword ptr [rdi + 32], OFFSET FLAT:store_char
	mov	qword ptr [rdi + 24], OFFSET FLAT:print_stored
	jmp	.label_336
.label_333:
	mov	qword ptr [rdi + 32], OFFSET FLAT:print_char
	mov	qword ptr [rdi + 24], OFFSET FLAT:read_line
.label_336:
	xor	esi, esi
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_341
	mov	sil, byte ptr [rip + parallel_files]
	cmp	ebp, 1
	sete	bl
	xor	sil, 1
	or	sil, bl
.label_341:
	and	sil, 1
	mov	byte ptr [rdi + 0x38], sil
	mov	dword ptr [rdi + 0x34], ecx
	mov	ecx, dword ptr [rip + line_count]
	mov	dword ptr [rip + line_number],  ecx
	jmp	.label_350
	.section	.text
	.align	32
	#Procedure 0x40509c
	.globl sub_40509c
	.type sub_40509c, @function
sub_40509c:

	nop	dword ptr [rax]
.label_375:
	xor	ecx, ecx
	cmp	dword ptr [r12 + 0x10], 3
	setne	cl
	mov	dword ptr [rip + files_ready_to_read],  ecx
	xor	edx, edx
.label_350:
	test	dl, 1
	jne	.label_360
	mov	dword ptr [rip + buff_current],  0
	mov	cl, byte ptr [rip + balance_columns]
	mov	edx, ecx
	not	dl
	movzx	edi, dl
	mov	edx, edi
	and	edx, 1
	mov	r14d, eax
	sub	r14d, edx
	test	r14d, r14d
	jle	.label_362
	shl	edi, 0x1f
	sar	edi, 0x1f
	lea	ebp, [rax + rdi]
	lea	edx, [rax + rdi - 1]
	and	ebp, 7
	cmp	edx, 7
	mov	rsi, r12
	jb	.label_395
	mov	edx, ebp
	sub	edx, eax
	sub	edx, edi
	mov	rsi, r12
	nop	dword ptr [rax + rax]
.label_461:
	mov	dword ptr [rsi + 0x2c], 0
	mov	dword ptr [rsi + 0x6c], 0
	mov	dword ptr [rsi + 0xac], 0
	mov	dword ptr [rsi + 0xec], 0
	mov	dword ptr [rsi + 0x12c], 0
	mov	dword ptr [rsi + 0x16c], 0
	mov	dword ptr [rsi + 0x1ac], 0
	mov	dword ptr [rsi + 0x1ec], 0
	add	rsi, 0x200
	add	edx, 8
	jne	.label_461
.label_395:
	test	ebp, ebp
	je	.label_342
	add	rsi, 0x2c
	neg	ebp
.label_398:
	mov	dword ptr [rsi], 0
	add	rsi, 0x40
	inc	ebp
	jne	.label_398
.label_342:
	test	r14d, r14d
	jle	.label_362
	mov	edx, dword ptr [rip + files_ready_to_read]
	test	edx, edx
	je	.label_362
	mov	r15d, 1
	xor	eax, eax
	xor	r13d, r13d
.label_458:
	mov	dword ptr [r12 + 0x28], r13d
	test	edx, edx
	je	.label_410
	mov	esi, dword ptr [rip + lines_per_body]
	test	esi, esi
	je	.label_410
	mov	ecx, dword ptr [r12 + 0x10]
	mov	ebx, 1
	sub	ebx, esi
	mov	ebp, eax
	nop	dword ptr [rax]
.label_450:
	test	ecx, ecx
	je	.label_422
	mov	eax, ebp
	jmp	.label_424
	.section	.text
	.align	32
	#Procedure 0x4051d8
	.globl sub_4051d8
	.type sub_4051d8, @function
sub_4051d8:

	nop	dword ptr [rax + rax]
.label_422:
	mov	dword ptr [rip + input_position],  0
	mov	rdi, r12
	call	read_line
	test	al, al
	jne	.label_434
	mov	rdi, r12
	call	read_rest_of_line
.label_434:
	mov	ecx, dword ptr [r12 + 0x10]
	mov	eax, dword ptr [rip + buff_current]
	test	ecx, ecx
	je	.label_436
	cmp	ebp, eax
	jne	.label_436
	mov	eax, ebp
	jmp	.label_424
.label_436:
	inc	dword ptr [r12 + 0x2c]
	mov	edx, r13d
	mov	rsi, qword ptr [rip + line_vector]
	mov	dword ptr [rsi + rdx*4], ebp
	mov	esi, dword ptr [rip + input_position]
	inc	r13d
	mov	rdi, qword ptr [rip + end_vector]
	mov	dword ptr [rdi + rdx*4], esi
	nop	word ptr [rax + rax]
.label_424:
	mov	edx, dword ptr [rip + files_ready_to_read]
	test	ebx, ebx
	je	.label_410
	inc	ebx
	test	edx, edx
	mov	ebp, eax
	jne	.label_450
.label_410:
	cmp	r15d, r14d
	jge	.label_456
	inc	r15d
	add	r12, 0x40
	test	edx, edx
	jne	.label_458
.label_456:
	mov	cl, byte ptr [rip + balance_columns]
	mov	edx, r13d
	mov	rsi, qword ptr [rip + line_vector]
	mov	dword ptr [rsi + rdx*4], eax
	test	cl, cl
	jne	.label_499
	xor	r8d, r8d
	jmp	.label_471
	.section	.text
	.align	32
	#Procedure 0x405289
	.globl sub_405289
	.type sub_405289, @function
sub_405289:

	nop	dword ptr [rax]
.label_362:
	mov	rax, qword ptr [rip + line_vector]
	mov	dword ptr [rax], 0
	xor	r13d, r13d
	test	cl, 1
	mov	r8d, 0
	je	.label_471
.label_499:
	mov	r9d, dword ptr [rip + columns]
	mov	r8b, 1
	test	r9d, r9d
	jle	.label_471
	mov	rsi, qword ptr [rip + column_vector]
	mov	eax, r13d
	cdq	
	idiv	r9d
	lea	ebp, [r9 - 1]
	mov	r10d, r9d
	and	r10d, 3
	cmp	ebp, 3
	jae	.label_483
	mov	ebp, 1
	xor	ebx, ebx
	jmp	.label_491
.label_483:
	sub	r9d, r10d
	xor	ebp, ebp
	xor	ebx, ebx
.label_411:
	lea	r11d, [rbp + 1]
	xor	edi, edi
	xor	ecx, ecx
	cmp	r11d, edx
	setle	dil
	setl	cl
	add	edi, eax
	mov	dword ptr [rsi + 0x2c], edi
	mov	dword ptr [rsi + 0x28], ebx
	add	edi, ebx
	add	ecx, eax
	mov	dword ptr [rsi + 0x6c], ecx
	mov	dword ptr [rsi + 0x68], edi
	add	ecx, edi
	lea	ebx, [rbp + 3]
	xor	edi, edi
	cmp	ebx, edx
	setle	dil
	add	edi, eax
	mov	dword ptr [rsi + 0xac], edi
	mov	dword ptr [rsi + 0xa8], ecx
	add	edi, ecx
	add	ebp, 4
	xor	ebx, ebx
	cmp	ebp, edx
	setle	bl
	add	ebx, eax
	mov	dword ptr [rsi + 0xec], ebx
	mov	dword ptr [rsi + 0xe8], edi
	add	ebx, edi
	add	rsi, 0x100
	cmp	r9d, ebp
	jne	.label_411
	inc	ebp
.label_491:
	test	r10d, r10d
	je	.label_471
	add	rsi, 0x2c
	neg	r10d
	nop	word ptr cs:[rax + rax]
.label_516:
	xor	ecx, ecx
	cmp	ebp, edx
	setle	cl
	add	ecx, eax
	mov	dword ptr [rsi], ecx
	mov	dword ptr [rsi - 4], ebx
	add	ebx, ecx
	inc	ebp
	add	rsi, 0x40
	inc	r10d
	jne	.label_516
	nop	dword ptr [rax + rax]
.label_471:
	mov	eax, dword ptr [rip + columns]
	mov	r12, qword ptr [rip + column_vector]
	mov	ecx, eax
	dec	ecx
	mov	rdx, r12
	je	.label_403
	lea	edx, [rax - 2]
	and	ecx, 7
	cmp	edx, 7
	mov	rsi, r12
	jb	.label_526
	lea	edi, [rcx + 1]
	sub	edi, eax
	mov	rsi, r12
.label_530:
	mov	ebp, dword ptr [rsi + 0x2c]
	mov	dword ptr [rsi + 0x30], ebp
	mov	ebp, dword ptr [rsi + 0x6c]
	mov	dword ptr [rsi + 0x70], ebp
	mov	ebp, dword ptr [rsi + 0xac]
	mov	dword ptr [rsi + 0xb0], ebp
	mov	ebp, dword ptr [rsi + 0xec]
	mov	dword ptr [rsi + 0xf0], ebp
	mov	ebp, dword ptr [rsi + 0x12c]
	mov	dword ptr [rsi + 0x130], ebp
	mov	ebp, dword ptr [rsi + 0x16c]
	mov	dword ptr [rsi + 0x170], ebp
	mov	ebp, dword ptr [rsi + 0x1ac]
	mov	dword ptr [rsi + 0x1b0], ebp
	mov	ebp, dword ptr [rsi + 0x1ec]
	mov	dword ptr [rsi + 0x1f0], ebp
	add	rsi, 0x200
	add	edi, 8
	jne	.label_530
.label_526:
	test	ecx, ecx
	je	.label_327
	add	rsi, 0x30
	neg	ecx
	nop	word ptr [rax + rax]
.label_332:
	mov	edi, dword ptr [rsi - 4]
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	ecx
	jne	.label_332
.label_327:
	mov	ecx, edx
	shl	rcx, 6
	lea	rdx, [r12 + rcx + 0x40]
.label_403:
	test	r8b, r8b
	je	.label_337
	mov	ecx, dword ptr [rdx + 0x2c]
	mov	dword ptr [rdx + 0x30], ecx
	jmp	.label_343
	.section	.text
	.align	32
	#Procedure 0x405458
	.globl sub_405458
	.type sub_405458, @function
sub_405458:

	nop	dword ptr [rax + rax]
.label_337:
	cmp	dword ptr [rdx + 0x10], 0
	je	.label_430
	mov	dword ptr [rdx + 0x30], 0
	jmp	.label_343
.label_430:
	mov	ecx, dword ptr [rip + lines_per_body]
	mov	dword ptr [rdx + 0x30], ecx
	jmp	.label_343
.label_360:
	test	eax, eax
	je	.label_340
	mov	ecx, dword ptr [rip + lines_per_body]
	lea	esi, [rax - 1]
	mov	edx, eax
	and	edx, 3
	cmp	esi, 3
	mov	rsi, r12
	jb	.label_352
	mov	edi, edx
	sub	edi, eax
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_359:
	cmp	dword ptr [rsi + 0x10], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0x30], ebp
	cmp	dword ptr [rsi + 0x50], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0x70], ebp
	cmp	dword ptr [rsi + 0x90], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0xb0], ebp
	cmp	dword ptr [rsi + 0xd0], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0xf0], ebp
	add	rsi, 0x100
	add	edi, 4
	jne	.label_359
.label_352:
	test	edx, edx
	je	.label_343
	add	rsi, 0x30
	neg	edx
	nop	
.label_474:
	cmp	dword ptr [rsi - 0x20], 0
	mov	edi, 0
	cmove	edi, ecx
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	edx
	jne	.label_474
.label_343:
	test	eax, eax
	je	.label_340
	mov	dl, byte ptr [rip + storing_columns]
	mov	ebp, eax
	and	ebp, 1
	xor	ecx, ecx
	cmp	eax, 1
	mov	rsi, r12
	je	.label_384
	mov	edi, ebp
	sub	edi, eax
	xor	ecx, ecx
	mov	rsi, r12
	nop	dword ptr [rax]
.label_406:
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_390
	test	dl, 1
	jne	.label_391
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_391
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_391
	nop	word ptr [rax + rax]
.label_390:
	inc	ecx
.label_391:
	cmp	dword ptr [rsi + 0x50], 2
	jb	.label_399
	test	dl, 1
	jne	.label_400
	cmp	dword ptr [rsi + 0x6c], 0
	jle	.label_400
	cmp	dword ptr [rsi + 0x70], 0
	jle	.label_400
	nop	dword ptr [rax]
.label_399:
	inc	ecx
.label_400:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_406
.label_384:
	test	ebp, ebp
	je	.label_408
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_409
	test	dl, 1
	jne	.label_408
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_408
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_408
	nop	word ptr cs:[rax + rax]
.label_409:
	inc	ecx
.label_408:
	test	ecx, ecx
	je	.label_340
	mov	cl, byte ptr [rip + extremities]
	test	cl, cl
	jne	.label_418
	mov	byte ptr [rip + print_a_header],  1
.label_418:
	mov	byte ptr [rip + pad_vertically],  0
	mov	r14d, dword ptr [rip + lines_per_body]
	mov	cl, byte ptr [rip + double_space]
	shl	r14d, cl
	xor	r15d, r15d
	test	r14d, r14d
	jg	.label_427
	jmp	.label_435
	.section	.text
	.align	32
	#Procedure 0x4055ff
	.globl sub_4055ff
	.type sub_4055ff, @function
sub_4055ff:

	nop	
.label_480:
	mov	r12, qword ptr [rip + column_vector]
	mov	dl, byte ptr [rip + storing_columns]
.label_427:
	mov	ebp, eax
	and	ebp, 1
	cmp	eax, 1
	mov	ecx, 0
	mov	rsi, r12
	je	.label_338
	mov	edi, ebp
	sub	edi, eax
	xor	ecx, ecx
	mov	rsi, r12
	nop	dword ptr [rax + rax]
.label_464:
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_381
	test	dl, 1
	jne	.label_389
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_389
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_389
	nop	word ptr [rax + rax]
.label_381:
	inc	ecx
.label_389:
	cmp	dword ptr [rsi + 0x50], 2
	jb	.label_454
	test	dl, 1
	jne	.label_457
	cmp	dword ptr [rsi + 0x6c], 0
	jle	.label_457
	cmp	dword ptr [rsi + 0x70], 0
	jle	.label_457
	nop	dword ptr [rax]
.label_454:
	inc	ecx
.label_457:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_464
.label_338:
	test	ebp, ebp
	je	.label_467
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_469
	test	dl, 1
	jne	.label_467
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_467
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_467
	nop	word ptr cs:[rax + rax]
.label_469:
	inc	ecx
.label_467:
	test	ecx, ecx
	je	.label_435
	mov	dword ptr [rip + output_position],  0
	mov	dword ptr [rip + spaces_not_printed],  0
	mov	dword ptr [rip + separators_not_printed],  0
	mov	byte ptr [rip + pad_vertically],  0
	mov	byte ptr [rip + align_empty_cols],  0
	mov	byte ptr [rip + empty_line],  1
	test	eax, eax
	jle	.label_425
	mov	r13d, 1
	nop	dword ptr [rax + rax]
.label_402:
	mov	dword ptr [rip + input_position],  0
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbx, rax
	shr	rbx, 0x20
	test	eax, eax
	jg	.label_495
	cmp	dword ptr [r12 + 0x10], 1
	jne	.label_500
.label_495:
	mov	byte ptr [rip + FF_only],  0
	mov	dword ptr [rip + padding_not_printed],  ebx
	mov	rdi, r12
	call	qword ptr [r12 + 0x18]
	test	al, al
	jne	.label_504
	mov	rdi, r12
	call	read_rest_of_line
.label_504:
	mov	r8b, byte ptr [rip + pad_vertically]
	and	r15b, 1
	or	r15b, r8b
	mov	rbx, qword ptr [r12 + 0x30]
	lea	eax, [rbx - 1]
	mov	dword ptr [r12 + 0x30], eax
	cmp	ebx, 1
	jg	.label_507
	mov	edx, dword ptr [rip + columns]
	xor	eax, eax
	test	edx, edx
	je	.label_407
	mov	rsi, qword ptr [rip + column_vector]
	mov	cl, byte ptr [rip + storing_columns]
	mov	ebp, edx
	and	ebp, 1
	xor	eax, eax
	cmp	edx, 1
	je	.label_515
	mov	edi, ebp
	sub	edi, edx
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_533:
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_412
	test	cl, 1
	jne	.label_522
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_522
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_522
	nop	word ptr [rax + rax]
.label_412:
	inc	eax
.label_522:
	cmp	dword ptr [rsi + 0x50], 2
	jb	.label_527
	test	cl, 1
	jne	.label_453
	cmp	dword ptr [rsi + 0x6c], 0
	jle	.label_453
	cmp	dword ptr [rsi + 0x70], 0
	jle	.label_453
	nop	dword ptr [rax]
.label_527:
	inc	eax
.label_453:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_533
.label_515:
	test	ebp, ebp
	je	.label_373
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_535
	test	cl, 1
	jne	.label_373
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_373
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_373
.label_535:
	inc	eax
.label_373:
	test	eax, eax
	je	.label_539
.label_507:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_320
	mov	eax, dword ptr [r12 + 0x10]
	test	eax, eax
	je	.label_320
	cmp	byte ptr [rip + empty_line],  1
	jne	.label_325
	mov	byte ptr [rip + align_empty_cols],  1
	jmp	.label_320
.label_500:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_320
	cmp	byte ptr [rip + empty_line],  1
	jne	.label_394
	mov	byte ptr [rip + align_empty_cols],  1
	jmp	.label_320
.label_325:
	cmp	eax, 3
	je	.label_429
	cmp	eax, 2
	jne	.label_320
	cmp	byte ptr [rip + FF_only],  1
	jne	.label_320
.label_429:
	shr	rbx, 0x20
	mov	dword ptr [rip + padding_not_printed],  ebx
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, ebx
	sub	ebp, eax
	jle	.label_346
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	jne	.label_351
	cmp	ebp, ecx
	jle	.label_356
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_321
.label_394:
	mov	dword ptr [rip + padding_not_printed],  ebx
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, ebx
	sub	ebp, eax
	jle	.label_346
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_361
.label_351:
	sub	ebp, ecx
	mov	dword ptr [rip + spaces_not_printed],  ebp
	jmp	.label_364
.label_361:
	cmp	ebp, ecx
	jle	.label_356
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_369
.label_493:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_374
	.section	.text
	.align	32
	#Procedure 0x4058ea
	.globl sub_4058ea
	.type sub_4058ea, @function
sub_4058ea:

	nop	word ptr [rax + rax]
.label_321:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_493
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_374:
	dec	ebx
	jne	.label_321
	jmp	.label_356
.label_353:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_379
	.section	.text
	.align	32
	#Procedure 0x40591e
	.globl sub_40591e
	.type sub_40591e, @function
sub_40591e:

	nop	
.label_369:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_353
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_379:
	dec	ebx
	jne	.label_369
.label_356:
	mov	dword ptr [rip + output_position],  ebp
.label_364:
	mov	dword ptr [rip + padding_not_printed],  0
.label_346:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_525
	call	print_sep_string
.label_525:
	cmp	byte ptr [r12 + 0x38], 0
	je	.label_320
	mov	rdi, r12
	call	add_line_number
	nop	
.label_320:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_420
	inc	dword ptr [rip + separators_not_printed]
.label_420:
	add	r12, 0x40
	mov	eax, dword ptr [rip + columns]
	cmp	r13d, eax
	lea	ecx, [r13 + 1]
	mov	r13d, ecx
	jl	.label_402
	mov	r8b, byte ptr [rip + pad_vertically]
	jmp	.label_407
.label_539:
	mov	eax, edx
.label_407:
	test	r8b, r8b
	je	.label_425
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_413
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_487:
	dec	r14d
	mov	eax, dword ptr [rip + columns]
.label_425:
	test	eax, eax
	je	.label_423
	mov	rdx, qword ptr [rip + column_vector]
	mov	bl, byte ptr [rip + storing_columns]
	mov	esi, eax
	and	esi, 1
	xor	ecx, ecx
	cmp	eax, 1
	je	.label_426
	mov	edi, esi
	sub	edi, eax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_449:
	cmp	dword ptr [rdx + 0x10], 2
	jb	.label_438
	test	bl, 1
	jne	.label_344
	cmp	dword ptr [rdx + 0x2c], 0
	jle	.label_344
	cmp	dword ptr [rdx + 0x30], 0
	jle	.label_344
	nop	word ptr [rax + rax]
.label_438:
	inc	ecx
.label_344:
	cmp	dword ptr [rdx + 0x50], 2
	jb	.label_366
	test	bl, 1
	jne	.label_444
	cmp	dword ptr [rdx + 0x6c], 0
	jle	.label_444
	cmp	dword ptr [rdx + 0x70], 0
	jle	.label_444
	nop	dword ptr [rax]
.label_366:
	inc	ecx
.label_444:
	sub	rdx, -0x80
	add	edi, 2
	jne	.label_449
.label_426:
	test	esi, esi
	je	.label_437
	cmp	dword ptr [rdx + 0x10], 2
	jb	.label_451
	test	bl, 1
	jne	.label_437
	cmp	dword ptr [rdx + 0x2c], 0
	jle	.label_437
	cmp	dword ptr [rdx + 0x30], 0
	jle	.label_437
.label_451:
	inc	ecx
.label_437:
	test	ecx, ecx
	jne	.label_463
.label_423:
	mov	al, byte ptr [rip + extremities]
	test	al, al
	jne	.label_435
.label_463:
	test	r15b, 1
	je	.label_468
	mov	al, byte ptr [rip + double_space]
	xor	al, 1
	test	al, 1
	jne	.label_468
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_473
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_484:
	dec	r14d
.label_468:
	test	r14d, r14d
	jle	.label_435
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	jne	.label_480
	jmp	.label_388
.label_473:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_484
.label_413:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_487
	.section	.text
	.align	32
	#Procedure 0x405ada
	.globl sub_405ada
	.type sub_405ada, @function
sub_405ada:

	nop	word ptr [rax + rax]
.label_435:
	test	r14d, r14d
	jne	.label_388
	mov	esi, dword ptr [rip + columns]
	xor	r14d, r14d
	test	esi, esi
	jle	.label_388
	mov	rax, qword ptr [rip + column_vector]
	lea	edx, [rsi - 1]
	mov	ecx, esi
	and	ecx, 3
	cmp	edx, 3
	jb	.label_498
	mov	edx, ecx
	sub	edx, esi
	nop	word ptr cs:[rax + rax]
.label_513:
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_482
	mov	byte ptr [rax + 0x39], 1
.label_482:
	cmp	dword ptr [rax + 0x50], 0
	jne	.label_503
	mov	byte ptr [rax + 0x79], 1
.label_503:
	cmp	dword ptr [rax + 0x90], 0
	jne	.label_506
	mov	byte ptr [rax + 0xb9], 1
.label_506:
	cmp	dword ptr [rax + 0xd0], 0
	jne	.label_509
	mov	byte ptr [rax + 0xf9], 1
.label_509:
	add	rax, 0x100
	add	edx, 4
	jne	.label_513
.label_498:
	test	ecx, ecx
	je	.label_388
	add	rax, 0x39
	neg	ecx
	nop	dword ptr [rax]
.label_368:
	cmp	dword ptr [rax - 0x29], 0
	jne	.label_439
	mov	byte ptr [rax], 1
.label_439:
	add	rax, 0x40
	inc	ecx
	jne	.label_368
	nop	word ptr cs:[rax + rax]
.label_388:
	and	r15b, 1
	mov	byte ptr [rip + pad_vertically],  r15b
	je	.label_521
	mov	al, byte ptr [rip + extremities]
	test	al, al
	je	.label_415
.label_521:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_324
	cmp	byte ptr [rip + print_a_FF],  1
	jne	.label_324
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_531
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
.label_380:
	mov	byte ptr [rip + print_a_FF],  0
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x405bea
	.globl sub_405bea
	.type sub_405bea, @function
sub_405bea:

	nop	word ptr [rax + rax]
.label_415:
	mov	al, byte ptr [rip + use_form_feed]
	test	al, al
	je	.label_537
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_540
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x405c1c
	.globl sub_405c1c
	.type sub_405c1c, @function
sub_405c1c:

	nop	dword ptr [rax]
.label_537:
	mov	eax, r14d
	add	eax, 5
	je	.label_324
	mov	ebx, 0xfffffffb
	sub	ebx, r14d
	jmp	.label_329
.label_335:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_431
	.section	.text
	.align	32
	#Procedure 0x405c3e
	.globl sub_405c3e
	.type sub_405c3e, @function
sub_405c3e:

	nop	
.label_329:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_335
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_431:
	inc	ebx
	jne	.label_329
.label_324:
	mov	rax, qword ptr [rip + last_page_number]
	mov	rcx, qword ptr [rip + page_number]
	inc	rcx
	mov	qword ptr [rip + page_number],  rcx
	cmp	rax, rcx
	jb	.label_340
	mov	eax, dword ptr [rip + columns]
	mov	r12, qword ptr [rip + column_vector]
	test	eax, eax
	je	.label_349
	mov	edx, eax
	and	edx, 1
	cmp	eax, 1
	mov	rcx, r12
	je	.label_354
	mov	esi, edx
	sub	esi, eax
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_367:
	cmp	dword ptr [rcx + 0x10], 2
	jne	.label_404
	mov	dword ptr [rcx + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_404:
	cmp	dword ptr [rcx + 0x50], 2
	jne	.label_355
	mov	dword ptr [rcx + 0x50], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_355:
	sub	rcx, -0x80
	add	esi, 2
	jne	.label_367
.label_354:
	test	edx, edx
	je	.label_349
	cmp	dword ptr [rcx + 0x10], 2
	jne	.label_349
	mov	dword ptr [rcx + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
	nop	word ptr cs:[rax + rax]
.label_349:
	mov	cl, byte ptr [rip + storing_columns]
	test	cl, cl
	je	.label_375
	jmp	.label_360
.label_531:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_380
.label_540:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_324
.label_340:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_319:
	call	xalloc_die
.label_330:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_501:
	call	integer_overflow
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_542
	cmp	byte ptr [rax], 0x43
	jne	.label_544
	cmp	byte ptr [rax + 1], 0
	je	.label_541
.label_544:
	mov	esi, OFFSET FLAT:label_543
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_542
.label_541:
	xor	ebx, ebx
.label_542:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405da1
	.globl sub_405da1
	.type sub_405da1, @function
sub_405da1:

	nop	word ptr cs:[rax + rax]
.label_545:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405db5
	.globl sub_405db5
	.type sub_405db5, @function
sub_405db5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405db7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_545
	test	rdx, rdx
	je	.label_545
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e20

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
	jae	.label_552
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_564:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_564
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_556
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
	je	.label_554
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_560
	cmp	eax, 0x22
	jne	.label_556
	mov	ebp, 1
.label_560:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_562
	jmp	.label_548
.label_554:
	test	r14, r14
	je	.label_556
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_556
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_556
.label_562:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_548
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_555
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_550
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_550
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_550
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_547
	cmp	eax, 0x44
	je	.label_547
	cmp	eax, 0x69
	jne	.label_550
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_550
.label_547:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_550:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_555
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_561]
.label_1411:
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
	jmp	.label_563
.label_555:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_553
.label_1412:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_557
.label_1413:
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
	jmp	.label_549
.label_1415:
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
	jmp	.label_551
.label_1409:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_565
.label_1410:
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
	jmp	.label_549
.label_1414:
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
.label_551:
	or	dl, r10b
.label_563:
	or	dl, bl
.label_549:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_546
.label_1416:
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
	jmp	.label_558
.label_1417:
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
.label_558:
	movzx	eax, dl
.label_557:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_546
.label_1418:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_565:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_546
.label_1419:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_546:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_548:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_553:
	mov	r13d, r15d
.label_556:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_552:
	mov	edi, OFFSET FLAT:label_208
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_559
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x406451
	.globl sub_406451
	.type sub_406451, @function
sub_406451:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406460

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x40646d
	.globl sub_40646d
	.type sub_40646d, @function
sub_40646d:

	nop	dword ptr [rax]
.label_567:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_566
	call	__errno_location
	mov	dword ptr [rax], 0
.label_566:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40648b

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
	jne	.label_567
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_566
	test	cl, cl
	jne	.label_566
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_566
	.section	.text
	.align	32
	#Procedure 0x4064d0

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
	mov	ecx, OFFSET FLAT:label_573
	xor	eax, eax
	call	__sprintf_chk
	inc	dword ptr [rip + line_number]
	mov	ebp, dword ptr [rip + chars_per_number]
	test	ebp, ebp
	jle	.label_569
	sub	eax, ebp
	movsxd	rbx, eax
	add	rbx, qword ptr [rip + number_buff]
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_575:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_575
.label_569:
	cmp	dword ptr [rip + columns],  2
	jl	.label_570
	mov	al, byte ptr [rip + number_separator]
	cmp	al, 9
	jne	.label_572
	mov	ebx, dword ptr [rip + number_width]
	mov	eax, dword ptr [rip + chars_per_number]
	cmp	ebx, eax
	jle	.label_568
	inc	ebx
	sub	ebx, eax
	nop	dword ptr [rax + rax]
.label_574:
	mov	edi, 0x20
	call	qword ptr [r14 + 0x20]
	dec	ebx
	cmp	ebx, 1
	jg	.label_574
	jmp	.label_568
.label_572:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_568:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_571
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_571
	mov	eax, dword ptr [rip + number_width]
	add	dword ptr [rip + input_position],  eax
.label_571:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065ad
	.globl sub_4065ad
	.type sub_4065ad, @function
sub_4065ad:

	nop	
.label_570:
	movsx	edi, byte ptr [rip + number_separator]
	call	qword ptr [r14 + 0x20]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_568
	mov	ecx, dword ptr [rip + output_position]
	mov	esi, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	esi
	add	esi, ecx
	sub	esi, edx
	mov	dword ptr [rip + output_position],  esi
	jmp	.label_568
	.section	.text
	.align	32
	#Procedure 0x4065e0

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
	mov	edx, OFFSET FLAT:label_221
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
	je	.label_674
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_691
.label_674:
	xor	r8d, r8d
	jmp	.label_697
.label_659:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_724:
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
	jne	.label_724
.label_664:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_645
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_716:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_716
.label_645:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_678
.label_703:
	mov	esi, 0x20
.label_705:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_699:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_696:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_620
.label_722:
	mov	edi, 3
	jmp	.label_731
	.section	.text
	.align	32
	#Procedure 0x40674e
	.globl sub_40674e
	.type sub_40674e, @function
sub_40674e:

	nop	
.label_691:
	cmp	al, 0x25
	jne	.label_735
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1238:
	mov	ebx, eax
	mov	al, r12b
.label_750:
	mov	r12b, al
	inc	rbp
	jmp	.label_741
	.section	.text
	.align	32
	#Procedure 0x406774
	.globl sub_406774
	.type sub_406774, @function
sub_406774:

	nop	word ptr cs:[rax + rax]
.label_748:
	inc	rbp
	mov	r9d, edx
.label_741:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_746
	jmp	qword ptr [(rsi * 8) + label_747]
	.section	.text
	.align	32
	#Procedure 0x40679d
	.globl sub_40679d
	.type sub_40679d, @function
sub_40679d:

	nop	dword ptr [rax]
.label_746:
	cmp	edx, 0x5f
	je	.label_748
	cmp	edx, 0x5e
	je	.label_750
.label_1239:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_751
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_738:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_753
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_757
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_753
.label_757:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_753:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_738
.label_751:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_765
	cmp	r8d, 0x45
	jne	.label_579
.label_765:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_584
	.section	.text
	.align	32
	#Procedure 0x40681c
	.globl sub_40681c
	.type sub_40681c, @function
sub_40681c:

	nop	dword ptr [rax]
.label_735:
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
	jae	.label_589
	test	r10, r10
	mov	edx, 0
	je	.label_601
	cmp	ecx, 2
	jb	.label_602
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
.label_602:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_601:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_589:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_733:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_620
	jmp	.label_622
.label_579:
	xor	r8d, r8d
.label_584:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_605
	mov	r15d, OFFSET FLAT:label_629
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_630]
.label_1289:
	cmp	r8d, 0x45
	je	.label_605
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
	js	.label_636
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_653
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
.label_653:
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
	jmp	.label_669
.label_1303:
	test	bl, bl
	je	.label_680
	mov	r12b, 1
.label_680:
	cmp	r8d, 0x45
	jne	.label_681
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_605
.label_1281:
	dec	rbp
	jmp	.label_605
.label_1282:
	test	r8d, r8d
	jne	.label_605
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
	jae	.label_640
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_696
	cmp	eax, 2
	jb	.label_699
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_701
	cmp	r9d, 0x2b
	jne	.label_703
.label_701:
	mov	esi, 0x30
	jmp	.label_705
.label_1283:
	mov	edx, 1
	jmp	.label_708
	.section	.text
	.align	32
	#Procedure 0x406aaa
	.globl sub_406aaa
	.type sub_406aaa, @function
sub_406aaa:

	nop	word ptr [rax + rax]
.label_710:
	inc	rdx
.label_708:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_710
	cmp	bl, 0x7a
	jne	.label_605
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1320:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_713
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_683
	test	r9d, r9d
	je	.label_719
	xor	esi, esi
	jmp	.label_683
.label_1284:
	test	r8d, r8d
	jne	.label_605
	test	bl, bl
	je	.label_725
	mov	r12b, 1
.label_725:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_614
.label_1285:
	cmp	r8d, 0x45
	je	.label_605
	test	bl, bl
	je	.label_727
	mov	r12b, 1
.label_727:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_614
.label_1286:
	cmp	r8d, 0x45
	jne	.label_729
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_614
.label_1287:
	test	r8d, r8d
	jne	.label_605
	mov	r15d, OFFSET FLAT:label_736
	mov	r10d, 0xffffffff
	jmp	.label_613
.label_1288:
	test	r8d, r8d
	jne	.label_605
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_744
	test	ecx, ecx
	jns	.label_744
	mov	r15d, OFFSET FLAT:label_612
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_613
.label_1290:
	cmp	r8d, 0x45
	je	.label_605
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_623
.label_1291:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_605
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_728
.label_1292:
	cmp	r8d, 0x45
	je	.label_605
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_623
.label_1293:
	cmp	r8d, 0x45
	je	.label_605
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_762
	cmp	r11d, 8
	jg	.label_576
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_581
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_657:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_657
.label_581:
	test	edx, edx
	je	.label_604
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_707:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_707
.label_604:
	mov	edi, r11d
	jmp	.label_591
.label_1294:
	mov	dil, 1
.label_1312:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_615
	mov	r12d, 0
.label_615:
	je	.label_618
	mov	dil, 1
.label_618:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_611
.label_1295:
	cmp	r8d, 0x45
	je	.label_605
	mov	r13d, dword ptr [r11]
	jmp	.label_623
.label_1296:
	mov	r15d, OFFSET FLAT:label_624
.label_613:
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
	jae	.label_640
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_649
	cmp	rbx, rax
	jae	.label_651
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_607
	cmp	eax, 0x2b
	jne	.label_658
.label_607:
	mov	esi, 0x30
	jmp	.label_660
.label_1297:
	cmp	r8d, 0x45
	je	.label_605
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_666
.label_1298:
	cmp	r8d, 0x45
	je	.label_605
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
.label_666:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_623
.label_1299:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_605
	mov	dl, 0x58
	jmp	.label_685
.label_1300:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_686
	cmp	r8d, 0x4f
	je	.label_605
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	sil
	add	r13d, 0x76c
	mov	r15d, 4
	jmp	.label_634
.label_1301:
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
	jae	.label_640
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_678
	cmp	r10, rax
	jae	.label_712
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_625
	cmp	r15d, 0x2b
	jne	.label_715
.label_625:
	mov	esi, 0x30
	jmp	.label_717
.label_1302:
	test	r8d, r8d
	jne	.label_605
	test	bl, bl
	je	.label_720
	mov	r12b, 1
.label_720:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_614
.label_1304:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_605
	mov	dl, 0x63
	jmp	.label_685
.label_1305:
	cmp	r8d, 0x45
	je	.label_605
	mov	r13d, dword ptr [r11 + 0xc]
.label_623:
	mov	edi, 2
	jmp	.label_728
.label_1306:
	cmp	r8d, 0x45
	je	.label_605
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_734
.label_1307:
	cmp	r8d, 0x45
	je	.label_605
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 3
	jmp	.label_737
.label_1308:
	cmp	r8d, 0x45
	je	.label_605
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_734
.label_1309:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_605
.label_734:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_728
.label_1310:
	cmp	r8d, 0x45
	je	.label_605
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 2
.label_737:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_755
.label_1311:
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
	jae	.label_640
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_580
	cmp	eax, 2
	jb	.label_586
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_732
	cmp	r9d, 0x2b
	jne	.label_593
.label_732:
	mov	esi, 0x30
	jmp	.label_594
.label_1313:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	esi, esi
.label_755:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_682
.label_1314:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r15, qword ptr [rsp + 0x10]
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
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_647:
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
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_647
	xor	edx, edx
	mov	r8, r14
	mov	r10, r15
	mov	ebx, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_643
.label_1315:
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
	jae	.label_640
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_580
	cmp	eax, 2
	jb	.label_663
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_665
	cmp	r9d, 0x2b
	jne	.label_667
.label_665:
	mov	esi, 0x30
	jmp	.label_668
.label_1316:
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
	jmp	.label_670
.label_1317:
	cmp	r8d, 0x45
	je	.label_605
	mov	r13d, dword ptr [r11 + 0x18]
.label_670:
	mov	edi, 1
.label_728:
	mov	r11, qword ptr [rsp + 8]
.label_617:
	mov	r10, qword ptr [rsp + 0x10]
.label_591:
	mov	esi, r13d
	shr	esi, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_682
.label_1318:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_605
	mov	dl, 0x78
	jmp	.label_685
.label_1319:
	cmp	r8d, 0x45
	jne	.label_689
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_614
.label_681:
	xor	eax, eax
	mov	edx, ecx
.label_614:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_611
.label_651:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_692
.label_636:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_695
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
.label_695:
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
.label_669:
	cmp	esi, 0x47
	je	.label_675
	cmp	esi, 0x67
	jne	.label_721
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
	mov	r15d, 2
	jns	.label_723
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, esi
.label_723:
	xor	esi, esi
	jmp	.label_740
.label_713:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_620
.label_729:
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
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	r15d, 2
	jmp	.label_634
.label_689:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	r15d, 2
	jns	.label_754
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, esi
.label_754:
	xor	esi, esi
.label_634:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_577
.label_675:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	sil
	lea	r13d, [r11 + rax + 0x76c]
	mov	r15d, 4
.label_740:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_577:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_598
	cmp	r15d, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	setb	bl
	cmp	r15d, r11d
	setl	dl
	or	dl, bl
.label_598:
	mov	rdi, r15
.label_682:
	cmp	r8d, 0x4f
	jne	.label_609
	test	sil, sil
	jne	.label_609
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_611
.label_609:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	sil, sil
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rbx, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	
.label_626:
	test	r14b, 1
	je	.label_610
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_610:
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
	ja	.label_626
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_626
	xor	eax, eax
.label_643:
	cmp	ebx, r11d
	cmovl	ebx, r11d
	test	dl, dl
	je	.label_637
	mov	dl, 0x2b
.label_637:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_638
	mov	esi, edx
.label_638:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_642
	test	sil, sil
	je	.label_597
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
	jae	.label_640
	xor	ecx, ecx
	test	r10, r10
	je	.label_655
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_595
	test	al, al
	jne	.label_595
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_595
.label_642:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	r13, r13
	add	r13, rcx
	add	r13, rax
	test	r13d, r13d
	jle	.label_673
	cmp	r9d, 0x5f
	jne	.label_679
	movsxd	r14, r13d
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_640
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_684
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r8, rbx
	add	r15, r14
.label_684:
	add	r8, r14
	sub	r11d, r13d
	cmovg	edx, r11d
	test	sil, sil
	je	.label_693
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
	jae	.label_640
	xor	r10d, r10d
	test	r15, r15
	je	.label_704
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_706
	test	al, al
	jne	.label_706
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	sil, byte ptr [rsp + 0x50]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_706:
	mov	byte ptr [r15], sil
	inc	r15
	mov	r10, r15
.label_704:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_597
.label_673:
	test	sil, sil
	je	.label_597
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
	jae	.label_640
	xor	ecx, ecx
	test	r10, r10
	je	.label_655
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_595
	test	al, al
	jne	.label_595
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	mov	byte ptr [rsp + 0x50], sil
	je	.label_590
	cmp	eax, 0x2b
	jne	.label_739
.label_590:
	mov	esi, 0x30
	jmp	.label_743
.label_679:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_640
	test	sil, sil
	je	.label_677
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_640
	xor	ecx, ecx
	test	r10, r10
	je	.label_752
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_718
	test	al, al
	jne	.label_718
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	byte ptr [rsp + 0x50], sil
	je	.label_760
	cmp	eax, 0x2b
	jne	.label_763
.label_760:
	mov	esi, 0x30
	jmp	.label_758
.label_721:
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
	jmp	.label_591
.label_693:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_597
.label_686:
	mov	dl, 0x59
.label_685:
	xor	eax, eax
.label_611:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_600
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_600:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_616
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
	jae	.label_640
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_627
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_632
	test	al, al
	jne	.label_632
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_676
	cmp	eax, 0x2b
	jne	.label_639
.label_676:
	mov	esi, 0x30
	jmp	.label_641
.label_616:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_620
.label_632:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_646
.label_639:
	mov	esi, 0x20
.label_641:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_646:
	test	al, 1
	jne	.label_654
	test	r15b, 1
	jne	.label_656
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_662
.label_654:
	test	r10, r10
	je	.label_662
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
	jb	.label_671
	lea	r8, [r9 + 1]
	nop	
.label_585:
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
	jne	.label_585
	dec	rbx
	mov	rsi, rbx
.label_671:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_662
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_633:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_633
	jmp	.label_662
.label_656:
	test	r10, r10
	je	.label_662
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
	jb	.label_759
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_714:
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
	jne	.label_714
	dec	rbx
	mov	rsi, rbx
.label_759:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_662
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_761:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_761
.label_662:
	add	rdi, r10
	mov	rcx, rdi
.label_627:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_742
.label_712:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_745
.label_658:
	mov	esi, 0x20
.label_660:
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
.label_692:
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
.label_649:
	add	r8, r14
	jmp	.label_764
.label_719:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_683:
	cmp	r10, 3
	ja	.label_578
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
	jmp	qword ptr [(r10 * 8) + label_583]
.label_1356:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_731:
	xor	r14d, r14d
	jmp	.label_608
.label_744:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_612
	jmp	.label_613
.label_762:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_617
.label_578:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_621
.label_1359:
	test	r9d, r9d
	je	.label_596
.label_1358:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_608
.label_576:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_617
.label_715:
	mov	esi, 0x20
.label_717:
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
.label_745:
	test	bl, bl
	je	.label_644
	test	r10, r10
	je	.label_645
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_648
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_650
.label_644:
	test	al, al
	je	.label_652
	test	r10, r10
	je	.label_645
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_659
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_664
.label_648:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_672:
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
	jne	.label_672
.label_650:
	test	rcx, rcx
	je	.label_645
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_687:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_687
	jmp	.label_645
.label_593:
	mov	esi, 0x20
.label_594:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_586:
	mov	byte ptr [rdi], 0xa
	jmp	.label_700
.label_667:
	mov	esi, 0x20
.label_668:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_663:
	mov	byte ptr [rdi], 9
.label_700:
	inc	rdi
	mov	rcx, rdi
.label_580:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_620
.label_739:
	mov	esi, 0x20
.label_743:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_595:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_655:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_597
.label_652:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_645
.label_596:
	test	edi, edi
	je	.label_722
.label_1357:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_608:
	mov	r15d, 0x21
.label_621:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_726
	mov	dl, 1
	cmp	bl, 0x21
	je	.label_682
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_733
.label_726:
	mov	qword ptr [rsp + 0x20], rdi
.label_605:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
.label_635:
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
	jne	.label_635
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
	jae	.label_640
	test	rdi, rdi
	mov	ecx, 0
	je	.label_709
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_582
	cmp	r12d, eax
	jae	.label_582
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_592
	cmp	r9d, 0x2b
	jne	.label_587
.label_592:
	mov	esi, 0x30
	jmp	.label_588
.label_587:
	mov	esi, 0x20
.label_588:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_582:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_599
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_603
.label_599:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_606
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_619:
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
	jne	.label_619
.label_606:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_603
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_711:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_711
.label_603:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_709:
	add	r8, rsi
.label_764:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_620
.label_763:
	mov	esi, 0x20
.label_758:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r10, rbx
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_718:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_752:
	add	r8, r15
	mov	r10, rcx
.label_677:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, r13d
	mov	eax, 0
	je	.label_661
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
.label_661:
	add	r8, r15
	mov	r10, rax
.label_597:
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
	jae	.label_640
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_678
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_631
	test	al, al
	jne	.label_631
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_756
	cmp	eax, 0x2b
	jne	.label_688
.label_756:
	mov	esi, 0x30
	jmp	.label_690
.label_688:
	mov	esi, 0x20
.label_690:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_631:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_694
	test	r15, r15
	je	.label_698
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
	jb	.label_702
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	word ptr [rax + rax]
.label_628:
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
	jne	.label_628
	sub	rdx, r12
.label_702:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_698
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_730:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_730
	jmp	.label_698
.label_694:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_698:
	add	r10, r15
	mov	rcx, r10
.label_678:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_742:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_620:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_691
.label_697:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_749
	test	r10, r10
	je	.label_749
	mov	byte ptr [r10], 0
.label_749:
	mov	qword ptr [rsp + 0x70], r8
.label_622:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_640:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_622
	.section	.text
	.align	32
	#Procedure 0x4083d9
	.globl sub_4083d9
	.type sub_4083d9, @function
sub_4083d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083e0
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
	.section	.text
	.align	32
	#Procedure 0x408455
	.globl sub_408455
	.type sub_408455, @function
sub_408455:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408460

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:label_267
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_774
	test	bl, bl
	je	.label_766
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_768
.label_766:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_770
.label_774:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_768
.label_770:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_768
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_773
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_773:
	test	bl, bl
	je	.label_769
	add	r14, 9
	mov	edi, OFFSET FLAT:label_267
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_775
.label_769:
	mov	edi, OFFSET FLAT:label_267
	call	unsetenv
.label_775:
	test	eax, eax
	je	.label_772
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_767
	nop	dword ptr [rax]
.label_771:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_771
.label_767:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_768
.label_772:
	call	tzset
	mov	rax, r13
.label_768:
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
	#Procedure 0x408592
	.globl sub_408592
	.type sub_408592, @function
sub_408592:

	nop	word ptr cs:[rax + rax]
.label_777:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_308
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_778:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_777
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_779:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40861d

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_780
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_778
	cmp	dword ptr [rbp], 0x20
	jne	.label_778
.label_780:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_779
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_785:
	test	eax, eax
	jle	.label_781
	call	print_white_space
.label_781:
	movzx	r14d, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_783
	cmp	bl, 8
	jne	.label_782
	dec	dword ptr [rip + output_position]
	jmp	.label_782
.label_784:
	movzx	esi, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__overflow
	.section	.text
	.align	32
	#Procedure 0x408699
	.globl sub_408699
	.type sub_408699, @function
sub_408699:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086a3

	.globl print_char
	.type print_char, @function
print_char:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	byte ptr [rip + tabify_output],  1
	jne	.label_782
	mov	eax, dword ptr [rip + spaces_not_printed]
	cmp	bl, 0x20
	jne	.label_785
	inc	eax
	mov	dword ptr [rip + spaces_not_printed],  eax
	jmp	.label_786
.label_783:
	inc	dword ptr [rip + output_position]
.label_782:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_784
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_786:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_221
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_787
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408715
	.globl sub_408715
	.type sub_408715, @function
sub_408715:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408720

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x408737
	.globl sub_408737
	.type sub_408737, @function
sub_408737:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740
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
	.section	.text
	.align	32
	#Procedure 0x408758
	.globl sub_408758
	.type sub_408758, @function
sub_408758:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408760
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
	.section	.text
	.align	32
	#Procedure 0x408796
	.globl sub_408796
	.type sub_408796, @function
sub_408796:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087a0

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_788
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
	#Procedure 0x4087d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087d8
	.globl sub_4087d8
	.type sub_4087d8, @function
sub_4087d8:

	nop	dword ptr [rax + rax]
.label_790:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_789
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_789:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408814
	.globl sub_408814
	.type sub_408814, @function
sub_408814:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408816

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
	jne	.label_791
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_791
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_790
.label_791:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x408850
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40885e
	.globl sub_40885e
	.type sub_40885e, @function
sub_40885e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408860

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
	js	.label_792
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_795
	cmp	r12d, 0x7fffffff
	je	.label_797
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
	jne	.label_793
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_793:
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
.label_795:
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
	jbe	.label_798
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_794
.label_798:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_796
	mov	rdi, r14
	call	free
.label_796:
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
.label_794:
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
.label_792:
	call	abort
.label_797:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408a1d
	.globl sub_408a1d
	.type sub_408a1d, @function
sub_408a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a20

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
	je	.label_799
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_802
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_800
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_800:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_801
.label_799:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_802:
	xor	eax, eax
.label_801:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408aa7
	.globl sub_408aa7
	.type sub_408aa7, @function
sub_408aa7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ab0

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
.label_890:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_888
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_892]
.label_1369:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_896
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_258
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1370:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_911
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_911
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_922:
	cmp	r14, r11
	jae	.label_836
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_836:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_922
.label_911:
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
	jmp	.label_809
.label_1362:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_809
.label_1365:
	mov	al, 1
.label_1363:
	mov	r12b, 1
.label_1366:
	test	r12b, 1
	mov	cl, 1
	je	.label_822
	mov	ecx, eax
.label_822:
	mov	al, cl
.label_1364:
	test	r12b, 1
	jne	.label_826
	test	r11, r11
	je	.label_865
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_865:
	mov	r14d, 1
	jmp	.label_831
.label_826:
	xor	r14d, r14d
.label_831:
	mov	ecx, OFFSET FLAT:label_258
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_809
.label_1367:
	test	r12b, 1
	jne	.label_845
	test	r11, r11
	je	.label_847
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_847:
	mov	r14d, 1
	jmp	.label_851
.label_1368:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_257
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_809
.label_845:
	xor	r14d, r14d
.label_851:
	mov	eax, OFFSET FLAT:label_257
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_809:
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
	jmp	.label_870
	.section	.text
	.align	32
	#Procedure 0x408d9d
	.globl sub_408d9d
	.type sub_408d9d, @function
sub_408d9d:

	nop	dword ptr [rax]
.label_804:
	inc	rsi
.label_870:
	cmp	rbp, -1
	je	.label_903
	cmp	rsi, rbp
	jne	.label_904
	jmp	.label_905
	.section	.text
	.align	32
	#Procedure 0x408db3
	.globl sub_408db3
	.type sub_408db3, @function
sub_408db3:

	nop	word ptr cs:[rax + rax]
.label_903:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_912
.label_904:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_861
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_917
	cmp	rbp, -1
	jne	.label_917
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
.label_917:
	cmp	rbx, rbp
	jbe	.label_810
.label_861:
	xor	r8d, r8d
.label_840:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_813
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_815]
.label_1392:
	test	rsi, rsi
	jne	.label_806
	jmp	.label_821
	.section	.text
	.align	32
	#Procedure 0x408e55
	.globl sub_408e55
	.type sub_408e55, @function
sub_408e55:

	nop	word ptr cs:[rax + rax]
.label_810:
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
	jne	.label_835
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_840
	jmp	.label_850
.label_835:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_840
.label_1396:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_860
	test	rsi, rsi
	jne	.label_862
	cmp	rbp, 1
	je	.label_821
	xor	r13d, r13d
	jmp	.label_818
.label_1385:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_869
	cmp	byte ptr [rsp + 6], 0
	jne	.label_825
	cmp	r12d, 2
	jne	.label_873
	mov	eax, r9d
	and	al, 1
	jne	.label_873
	cmp	r14, r11
	jae	.label_876
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_876:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_880
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_880:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_908
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_908:
	add	r14, 3
	mov	r9b, 1
.label_873:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_891
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_891:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_893
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_893
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_893
	cmp	r14, r11
	jae	.label_914
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_914:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_875
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_875:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_818
.label_1386:
	mov	bl, 0x62
	jmp	.label_915
.label_1387:
	mov	cl, 0x74
	jmp	.label_844
.label_1388:
	mov	bl, 0x76
	jmp	.label_915
.label_1389:
	mov	bl, 0x66
	jmp	.label_915
.label_1390:
	mov	cl, 0x72
	jmp	.label_844
.label_1393:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_921
	cmp	byte ptr [rsp + 6], 0
	jne	.label_805
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
	jae	.label_808
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_808:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_819
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_819:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_823
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_823:
	add	r14, 3
	xor	r9d, r9d
.label_921:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_818
.label_1394:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_833
	cmp	r12d, 2
	jne	.label_806
	cmp	byte ptr [rsp + 6], 0
	je	.label_806
	jmp	.label_805
.label_1395:
	cmp	r12d, 2
	jne	.label_846
	cmp	byte ptr [rsp + 6], 0
	jne	.label_805
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_812
.label_813:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_854
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
.label_855:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_872
	test	r8b, r8b
	je	.label_872
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_818
.label_860:
	test	rsi, rsi
	jne	.label_832
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_832
.label_821:
	mov	dl, 1
.label_1391:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_805
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_818:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_899
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_900
	jmp	.label_811
	.section	.text
	.align	32
	#Procedure 0x4091a4
	.globl sub_4091a4
	.type sub_4091a4, @function
sub_4091a4:

	nop	word ptr cs:[rax + rax]
.label_899:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_811
.label_900:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_909
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_812
	jmp	.label_920
	.section	.text
	.align	32
	#Procedure 0x4091ed
	.globl sub_4091ed
	.type sub_4091ed, @function
sub_4091ed:

	nop	dword ptr [rax]
.label_811:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_920
	jmp	.label_812
.label_909:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_920
.label_869:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_804
	xor	r15d, r15d
	jmp	.label_806
.label_846:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_844
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_812
.label_844:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_805
.label_915:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_818
	nop	word ptr cs:[rax + rax]
.label_920:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_825
	cmp	r12d, 2
	jne	.label_827
	mov	eax, r9d
	and	al, 1
	jne	.label_827
	cmp	r14, r11
	jae	.label_857
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_857:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_828
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_828:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_838
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_838:
	add	r14, 3
	mov	r9b, 1
.label_827:
	cmp	r14, r11
	jae	.label_849
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_849:
	inc	r14
	jmp	.label_837
.label_854:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_856
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_856:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_866:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_878
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_882
	cmp	rbp, -2
	je	.label_887
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_858
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_919:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_906
	bt	rsi, rdx
	jb	.label_902
.label_906:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_919
.label_858:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_829
	xor	r13d, r13d
.label_829:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_866
	jmp	.label_855
.label_893:
	xor	r13d, r13d
	jmp	.label_818
.label_832:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_818
.label_833:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_806
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_806
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_806
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_814
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_895
	cmp	byte ptr [rsp + 6], 0
	jne	.label_916
	cmp	r14, r11
	jae	.label_830
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_830:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_843
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_843:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_834
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_834:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_803
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_803:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_818
.label_806:
	xor	eax, eax
.label_862:
	xor	r13d, r13d
	jmp	.label_818
.label_872:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_853
	.section	.text
	.align	32
	#Procedure 0x4094d2
	.globl sub_4094d2
	.type sub_4094d2, @function
sub_4094d2:

	nop	word ptr cs:[rax + rax]
.label_807:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_853:
	test	r8b, r8b
	je	.label_863
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_864
	cmp	r14, r11
	jae	.label_867
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_867:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_864
	.section	.text
	.align	32
	#Procedure 0x40951c
	.globl sub_40951c
	.type sub_40951c, @function
sub_40951c:

	nop	dword ptr [rax]
.label_863:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_850
	cmp	r12d, 2
	jne	.label_877
	mov	eax, r9d
	and	al, 1
	jne	.label_877
	cmp	r14, r11
	jae	.label_881
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_881:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_885
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_885:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_889
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_889:
	add	r14, 3
	mov	r9b, 1
.label_877:
	cmp	r14, r11
	jae	.label_848
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_848:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_897
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_897:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_901
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_901:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_864:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_812
	test	r9b, 1
	je	.label_879
	mov	ebx, eax
	and	bl, 1
	jne	.label_879
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_918
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_918:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_859
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_859:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_879:
	cmp	r14, r11
	jae	.label_807
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_807
	.section	.text
	.align	32
	#Procedure 0x409623
	.globl sub_409623
	.type sub_409623, @function
sub_409623:

	nop	word ptr cs:[rax + rax]
.label_812:
	test	r9b, 1
	je	.label_816
	and	al, 1
	jne	.label_816
	cmp	r14, r11
	jae	.label_817
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_817:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_884
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_884:
	add	r14, 2
	xor	r9d, r9d
.label_816:
	mov	ebx, r15d
.label_837:
	cmp	r14, r11
	jae	.label_824
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_824:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_804
.label_882:
	xor	r13d, r13d
.label_878:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_855
.label_887:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_842
	mov	rsi, qword ptr [rsp + 0x58]
.label_852:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_883
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_852
	xor	r13d, r13d
	jmp	.label_855
.label_842:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_855
.label_883:
	xor	r13d, r13d
	jmp	.label_855
.label_814:
	xor	r13d, r13d
	jmp	.label_818
.label_895:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_818
	.section	.text
	.align	32
	#Procedure 0x4096f8
	.globl sub_4096f8
	.type sub_4096f8, @function
sub_4096f8:

	nop	dword ptr [rax + rax]
.label_905:
	mov	rcx, rsi
.label_912:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_868
	or	al, dl
	je	.label_871
.label_868:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_874
	or	al, dl
	jne	.label_874
	test	r10b, 1
	jne	.label_886
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_874
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_890
.label_874:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_894
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_898
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_898
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_910:
	cmp	r14, r11
	jae	.label_907
	mov	byte ptr [rcx + r14], al
.label_907:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_910
	jmp	.label_898
.label_825:
	mov	qword ptr [rsp + 0x20], rbp
.label_850:
	mov	rdx, rdi
	jmp	.label_820
.label_805:
	mov	qword ptr [rsp + 0x20], rbp
.label_902:
	mov	rdx, rdi
	mov	eax, 2
.label_913:
	mov	qword ptr [rsp + 0x38], rax
.label_820:
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
.label_839:
	mov	r14, rax
.label_841:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_871:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_820
.label_886:
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
	jmp	.label_839
.label_894:
	mov	rcx, qword ptr [rsp + 8]
.label_898:
	cmp	r14, r11
	jae	.label_841
	mov	byte ptr [rcx + r14], 0
	jmp	.label_841
.label_916:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_913
.label_888:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4098b7
	.globl sub_4098b7
	.type sub_4098b7, @function
sub_4098b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098c0
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
	je	.label_923
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
.label_923:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409928
	.globl sub_409928
	.type sub_409928, @function
sub_409928:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409930

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x409949
	.globl sub_409949
	.type sub_409949, @function
sub_409949:

	nop	dword ptr [rax]
.label_924:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_925:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409982
	.globl sub_409982
	.type sub_409982, @function
sub_409982:

	nop	word ptr cs:[rax + rax]
.label_929:
	mov	byte ptr [rip + failed_opens],  1
	mov	al, byte ptr [rip + ignore_failed_opens]
	test	al, al
	je	.label_924
	xor	ebx, ebx
	jmp	.label_925
.label_926:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbx], rax
	mov	byte ptr [rip + have_read_stdin],  1
.label_928:
	test	rax, rax
	je	.label_929
	mov	esi, 2
	mov	rdi, rax
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	bl, 1
	jmp	.label_925
	.section	.text
	.align	32
	#Procedure 0x4099f3

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_930
	cmp	byte ptr [r14 + 1], 0
	je	.label_926
.label_930:
	mov	qword ptr [rbx + 8], r14
	mov	esi, OFFSET FLAT:label_927
	mov	rdi, r14
	call	fopen_safer
	mov	qword ptr [rbx], rax
	jmp	.label_928
	.section	.text
	.align	32
	#Procedure 0x409a20
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x409a31
	.globl sub_409a31
	.type sub_409a31, @function
sub_409a31:

	nop	word ptr cs:[rax + rax]
.label_933:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409a45

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_932
	test	rbx, rbx
	jne	.label_932
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_932:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_931
	test	rax, rax
	je	.label_933
.label_931:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a70

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_957
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_961
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_956
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_936
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_952
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_939
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_955
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_951
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_953
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_946
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_960
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_947
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_958
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_935
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_948
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_954
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_944
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_943
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_949
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_962
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_290
	mov	ecx, OFFSET FLAT:label_291
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_940
	mov	esi, OFFSET FLAT:label_941
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_940
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_942
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_940:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_950
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_291
	mov	ecx, OFFSET FLAT:label_937
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_934
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_937
	mov	ecx, OFFSET FLAT:label_938
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_957:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_945
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
	.section	.text
	.align	32
	#Procedure 0x409deb
	.globl sub_409deb
	.type sub_409deb, @function
sub_409deb:

	nop	dword ptr [rax + rax]
.label_963:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409df5
	.globl sub_409df5
	.type sub_409df5, @function
sub_409df5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_963
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_964
	test	rax, rax
	je	.label_963
.label_964:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e30
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
	.section	.text
	.align	32
	#Procedure 0x409e48
	.globl sub_409e48
	.type sub_409e48, @function
sub_409e48:

	nop	dword ptr [rax + rax]
.label_968:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409e55

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_967
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_969
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_966
	call	free
	xor	eax, eax
	jmp	.label_965
.label_969:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409e8c
	.globl sub_409e8c
	.type sub_409e8c, @function
sub_409e8c:

	nop	word ptr cs:[rax + rax]
.label_967:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_968
	mov	qword ptr [rsi], rbx
.label_966:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_965
	test	rax, rax
	je	.label_968
.label_965:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ec0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ed3
	.globl sub_409ed3
	.type sub_409ed3, @function
sub_409ed3:

	nop	word ptr cs:[rax + rax]
.label_970:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409ee6
	.globl sub_409ee6
	.type sub_409ee6, @function
sub_409ee6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409eeb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_970
	test	rdx, rdx
	je	.label_970
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f10
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x409f7f
	.globl sub_409f7f
	.type sub_409f7f, @function
sub_409f7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409f80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f88
	.globl sub_409f88
	.type sub_409f88, @function
sub_409f88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f90
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f9f
	.globl sub_409f9f
	.type sub_409f9f, @function
sub_409f9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409fa0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_976
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_976:
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
	ja	.label_980
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_987
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_982
	test	esi, esi
	jne	.label_980
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_981
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_983
.label_980:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_984
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_982
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_989
.label_987:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_972
.label_982:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_973
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_974
.label_973:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_974:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_975:
	call	fcntl
.label_972:
	mov	ebp, eax
.label_971:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_989:
	cmp	eax, 6
	jne	.label_984
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_986
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_978
.label_984:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_988
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_991
.label_981:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_983:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_975
.label_986:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_978:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_979
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_985
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_985
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_971
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_990
.label_985:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_971
.label_988:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_991:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_972
.label_979:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_990:
	test	al, al
	je	.label_971
	test	ebp, ebp
	js	.label_971
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_977
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_971
.label_977:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_971
	.section	.text
	.align	32
	#Procedure 0x40a231
	.globl sub_40a231
	.type sub_40a231, @function
sub_40a231:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a240

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_1002
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_1020
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_1022
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_1017
	mov	ebp, 1
.label_1022:
	test	r14, r14
	je	.label_1027
	mov	ebx, ebp
	jmp	.label_1029
.label_1020:
	mov	ebp, 4
	test	r14, r14
	je	.label_1017
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_1017
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	r12d, 1
	test	rax, rax
	je	.label_1017
.label_1029:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1041
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_997
	mov	edi, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1001
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1001
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	edi, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_1001
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	edi, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_1013
	cmp	eax, 0x44
	je	.label_1013
	cmp	eax, 0x69
	jne	.label_1001
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rdi, [rax + rax + 1]
	mov	r8d, 0x400
	jmp	.label_1001
.label_1027:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	jmp	.label_1017
.label_1013:
	mov	edi, 2
	mov	r8d, 0x3e8
.label_1001:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_997
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r14, r12
	jmp	qword ptr [(r13 * 8) + label_1032]
.label_1340:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_1037
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_1037:
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_1000
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rbp, r9
.label_1000:
	or	r11d, ecx
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_1008
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1008:
	or	ecx, r11d
	jmp	.label_996
.label_997:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	ebx, 2
	jmp	.label_1009
.label_1341:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	cmp	r12, rax
	mov	ecx, 1
	jl	.label_996
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, r12
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
	jmp	.label_996
.label_1342:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	rbp, rax
	cmp	r12, rbp
	mov	ecx, 1
	mov	rsi, r14
	mov	r10d, 1
	jl	.label_1043
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	r10d, r10d
	cmp	rax, r12
	setl	r10b
	cmovl	rsi, r9
.label_1043:
	cmp	rsi, rbp
	jl	.label_1042
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1042:
	or	ecx, r10d
	jmp	.label_996
.label_1344:
	mov	r13, rdi
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_1024
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_1024:
	cmp	rsi, r10
	mov	rdi, r14
	jl	.label_1012
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rdi, r9
.label_1012:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1018
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_1018:
	or	ebp, r11d
	cmp	rsi, r10
	jl	.label_1028
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1028:
	or	ecx, ebp
	mov	rdi, r13
	jmp	.label_996
.label_1338:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_1011
	mov	r14, r12
	shl	r14, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1039
.label_1339:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_994
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_994:
	mov	qword ptr [rsp + 0x18], rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_1010
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_1010:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_1030
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_1030:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_1026
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_1026:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	mov	rdi, r14
	mov	r12d, 1
	jl	.label_1036
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rbp
	imul	rdi, r8
	xor	r12d, r12d
	cmp	rax, rbp
	setl	r12b
	cmovl	rdi, r9
.label_1036:
	or	r12d, r11d
	cmp	rdi, r10
	jl	.label_992
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_992:
	or	ecx, r12d
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_996
.label_1343:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_1005
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_1005:
	mov	r12, rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_995
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_995:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_1023
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_1023:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_1034
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_1034:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_1040
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1040:
	or	ecx, r11d
	mov	rdi, r12
	jmp	.label_996
.label_1345:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1003
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_1003:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_1038
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_1038:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1019
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1019:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_999
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_999:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_1033
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_1033:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_998
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_998:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	r11d, 1
	jl	.label_1006
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbp
	imul	rsi, r8
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_1006:
	or	r11d, r12d
	cmp	rsi, r10
	jl	.label_1016
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1016:
	or	ecx, r11d
	jmp	.label_996
.label_1346:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1025
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_1025:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_1035
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_1035:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1044
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1044:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_1004
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_1004:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_1031
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_1031:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_1021
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_1021:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_1007
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1007:
	or	ecx, r12d
	jmp	.label_996
.label_1347:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_1011
	mov	r14, r12
	shl	r14, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1039
.label_1348:
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_993
.label_1011:
	inc	r9
	mov	ecx, 1
	mov	r14, r9
	jmp	.label_996
.label_993:
	lea	r14, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_1039:
	xor	ecx, ecx
	cmp	r12, rax
	setg	cl
	cmovg	r14, r9
.label_996:
	or	ecx, ebx
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + rdi]
	mov	qword ptr [r15], rax
	lea	ebx, [rcx + 2]
	cmp	byte ptr [rdx + rdi], 0
	cmove	ebx, ecx
	mov	r12, r14
.label_1041:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_1009:
	mov	ebp, ebx
.label_1017:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1002:
	mov	edi, OFFSET FLAT:label_208
	mov	esi, OFFSET FLAT:label_1014
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1015
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40ab89
	.globl sub_40ab89
	.type sub_40ab89, @function
sub_40ab89:

	nop	dword ptr [rax]
.label_1046:
	mov	ecx, 1
.label_1045:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40aba0
	.globl sub_40aba0
	.type sub_40aba0, @function
sub_40aba0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aba5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1046
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1045
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1045
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abe0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40abf9
	.globl sub_40abf9
	.type sub_40abf9, @function
sub_40abf9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ac00

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
	je	.label_1047
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1047:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1048
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1048
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1048:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1050:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1051
	test	rax, rax
	je	.label_1049
.label_1051:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac94
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1049
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1050
	test	rbx, rbx
	jne	.label_1050
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1049:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40acc8
	.globl sub_40acc8
	.type sub_40acc8, @function
sub_40acc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acd0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1056
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1059
.label_1056:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1059:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1058
	cmp	r10d, 0x29
	jae	.label_1055
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1057
.label_1055:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1057:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1058
	cmp	r10d, 0x29
	jae	.label_1053
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1054
.label_1053:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1054:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1058
	cmp	r10d, 0x29
	jae	.label_1064
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1052
.label_1064:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1052:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1058
	cmp	r10d, 0x29
	jae	.label_1062
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1063
.label_1062:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1063:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1058
	cmp	r10d, 0x29
	jae	.label_1060
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1061
.label_1060:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1061:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1058
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1058
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1058
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1058
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1058:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aeb2
	.globl sub_40aeb2
	.type sub_40aeb2, @function
sub_40aeb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aec0
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
	.section	.text
	.align	32
	#Procedure 0x40aedf
	.globl sub_40aedf
	.type sub_40aedf, @function
sub_40aedf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40aee0

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
	je	.label_1077
	mov	edx, OFFSET FLAT:label_1068
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1074
.label_1077:
	mov	edx, OFFSET FLAT:label_1075
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1074:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1079
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
	mov	esi, OFFSET FLAT:label_1076
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1080
	jmp	qword ptr [(r12 * 8) + label_1081]
.label_1375:
	add	rsp, 8
	jmp	.label_1067
.label_1080:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1071
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
	jmp	.label_1067
.label_1376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1066
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
.label_1377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1072
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
.label_1378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1069
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
.label_1379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1083
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
	jmp	.label_1067
.label_1380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1082
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
	jmp	.label_1067
.label_1381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1065
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
	jmp	.label_1067
.label_1382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1070
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
	jmp	.label_1067
.label_1384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1073
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
	jmp	.label_1067
.label_1383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1078
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
.label_1067:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b238
	.globl sub_40b238
	.type sub_40b238, @function
sub_40b238:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b240

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	mov	r14, qword ptr [rip + clump_buff]
	mov	al, byte ptr [rip + input_tab_char]
	cmp	al, bl
	mov	ecx, 8
	cmove	ecx, dword ptr [rip + chars_per_input_tab]
	cmp	bl, 9
	je	.label_1084
	cmp	al, bl
	je	.label_1084
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_1094
	cmp	byte ptr [rip + use_esc_sequence],  1
	je	.label_1086
	cmp	byte ptr [rip + use_cntrl_prefix],  1
	jne	.label_1089
	test	bl, bl
	js	.label_1086
	mov	byte ptr [r14], 0x5e
	xor	bl, 0x40
	mov	byte ptr [r14 + 1], bl
	mov	ebp, 2
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, 2
	jmp	.label_1087
.label_1084:
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, r15d
	cdq	
	idiv	ecx
	mov	ebp, ecx
	sub	ebp, edx
	cmp	byte ptr [rip + untabify_input],  1
	jne	.label_1088
	xor	eax, eax
	test	ebp, ebp
	je	.label_1091
	dec	ecx
	sub	ecx, edx
	inc	rcx
	mov	esi, 0x20
	mov	rdi, r14
	mov	rdx, rcx
	call	memset
	mov	eax, ebp
	jmp	.label_1085
.label_1094:
	mov	byte ptr [r14], bl
	mov	ebp, 1
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, 1
	jmp	.label_1087
.label_1088:
	mov	byte ptr [r14], bl
	mov	eax, 1
.label_1085:
	test	ebp, ebp
	jns	.label_1093
	test	r15d, r15d
	jne	.label_1093
	mov	dword ptr [rip + input_position],  0
	xor	eax, eax
	jmp	.label_1092
.label_1093:
	test	ebp, ebp
	setns	cl
	mov	edx, ebp
	neg	edx
	cmp	r15d, edx
	jg	.label_1087
	test	cl, cl
	jne	.label_1087
	mov	dword ptr [rip + input_position],  0
	jmp	.label_1092
.label_1086:
	mov	byte ptr [r14], 0x5c
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:label_1090
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
	mov	al, byte ptr [rsp + 4]
	mov	byte ptr [r14 + 1], al
	mov	al, byte ptr [rsp + 5]
	mov	byte ptr [r14 + 2], al
	mov	al, byte ptr [rsp + 6]
	mov	byte ptr [r14 + 3], al
	mov	ebp, 4
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, 4
	jmp	.label_1087
.label_1091:
	xor	ebp, ebp
.label_1087:
	add	ebp, r15d
	mov	dword ptr [rip + input_position],  ebp
.label_1092:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1089:
	mov	byte ptr [r14], bl
	xor	eax, eax
	cmp	bl, 8
	mov	ebp, 0xffffffff
	cmovne	ebp, eax
	mov	eax, 1
	mov	r15d, dword ptr [rip + input_position]
	jmp	.label_1085
	.section	.text
	.align	32
	#Procedure 0x40b3df
	.globl sub_40b3df
	.type sub_40b3df, @function
sub_40b3df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b3e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1095
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1095
	test	byte ptr [rbx + 1], 1
	je	.label_1095
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1095:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x40b413
	.globl sub_40b413
	.type sub_40b413, @function
sub_40b413:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b420
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
	je	.label_1096
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
.label_1096:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b488
	.globl sub_40b488
	.type sub_40b488, @function
sub_40b488:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b490

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x10], 3
	je	.label_1102
	mov	rdi, qword ptr [rbx]
	test	byte ptr [rdi], 0x20
	jne	.label_1101
	call	fileno
	test	eax, eax
	je	.label_1103
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_1101
.label_1103:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_1098
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_1099
.label_1098:
	mov	esi, dword ptr [rip + columns]
	test	esi, esi
	je	.label_1099
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, esi
	and	ecx, 1
	cmp	esi, 1
	je	.label_1105
	mov	edx, ecx
	sub	edx, esi
	nop	
.label_1104:
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_1097
	mov	dword ptr [rax + 0x30], 0
.label_1097:
	mov	dword ptr [rax + 0x50], 3
	cmp	dword ptr [rax + 0x6c], 0
	jne	.label_1100
	mov	dword ptr [rax + 0x70], 0
.label_1100:
	sub	rax, -0x80
	add	edx, 2
	jne	.label_1104
.label_1105:
	test	ecx, ecx
	je	.label_1099
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_1099
	mov	dword ptr [rax + 0x30], 0
.label_1099:
	dec	dword ptr [rip + files_ready_to_read]
.label_1102:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1101:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
.label_1106:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b595
	.globl sub_40b595
	.type sub_40b595, @function
sub_40b595:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b599
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
	je	.label_1106
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
	.section	.text
	.align	32
	#Procedure 0x40b600
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
	.section	.text
	.align	32
	#Procedure 0x40b6c1
	.globl sub_40b6c1
	.type sub_40b6c1, @function
sub_40b6c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6d0
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
	.section	.text
	.align	32
	#Procedure 0x40b703
	.globl sub_40b703
	.type sub_40b703, @function
sub_40b703:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b710

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
	je	.label_1115
	cmp	r15, rbx
	ja	.label_1119
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1115
.label_1119:
	mov	ebp, OFFSET FLAT:label_221
	cmp	byte ptr [rbx], 0
	je	.label_1107
	lea	rbp, [r12 + 9]
	jmp	.label_1110
.label_1117:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1110:
	lea	r13, [r12 + 9]
.label_1114:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1107
	cmp	byte ptr [rbp], 0
	jne	.label_1112
	cmp	rbp, r13
	jne	.label_1108
	cmp	byte ptr [r12 + 8], 0
	je	.label_1109
.label_1112:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_1114
	jmp	.label_1117
.label_1113:
	mov	qword ptr [r12], 0
	jmp	.label_1118
	.section	.text
	.align	32
	#Procedure 0x40b7bc
	.globl sub_40b7bc
	.type sub_40b7bc, @function
sub_40b7bc:

	nop	word ptr cs:[rax + rax]
.label_1109:
	mov	rbp, r13
.label_1108:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1111
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1118:
	xor	r14d, r14d
	jmp	.label_1115
.label_1116:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1113
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
.label_1107:
	mov	qword ptr [r15 + 0x30], rbp
.label_1115:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1111:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1116
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_1107
	.section	.text
	.align	32
	#Procedure 0x40b880

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
	je	.label_1120
	cmp	r15, -2
	jb	.label_1120
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1120
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1120:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8d6
	.globl sub_40b8d6
	.type sub_40b8d6, @function
sub_40b8d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8e0

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
	mov	ebx, edi
	mov	qword ptr [rsp + 0x40], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_221
	call	setlocale
	mov	edi, OFFSET FLAT:label_1127
	mov	esi, OFFSET FLAT:label_1128
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1127
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_1139
	movsxd	rax, ebx
	lea	rdi, [rax*8 - 8]
	call	xmalloc
	mov	r14, rax
.label_1139:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	lea	r8, [rsp + 0x14]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	je	.label_1151
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x30], r14
	xor	r15d, r15d
	mov	ebx, 0
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_1154
	.section	.text
	.align	32
	#Procedure 0x40b9b3
	.globl sub_40b9b3
	.type sub_40b9b3, @function
sub_40b9b3:

	nop	word ptr cs:[rax + rax]
.label_1158:
	add	r13d, 0x83
	cmp	r13d, 0x104
	ja	.label_1170
	jmp	qword ptr [(r13 * 8) + label_1174]
.label_1435:
	mov	byte ptr [rip + use_form_feed],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1440:
	mov	byte ptr [rip + truncate_lines],  1
	mov	r13, qword ptr [rip + optarg]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1155
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_221
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + chars_per_line],  eax
	xor	r14d, r14d
	jmp	.label_1133
.label_1442:
	mov	byte ptr [rip + balance_columns],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1443:
	mov	byte ptr [rip + use_cntrl_prefix],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1446:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + custom_header],  rax
	xor	r14d, r14d
	jmp	.label_1133
.label_1450:
	mov	byte ptr [rip + numbered_lines],  1
	mov	rdi, qword ptr [rip + optarg]
	xor	r14d, r14d
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1123
	mov	esi, 0x6e
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	xor	r14d, r14d
	jmp	.label_1123
.label_1452:
	mov	byte ptr [rip + ignore_failed_opens],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1453:
	mov	r13, qword ptr [rip + optarg]
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
	test	r13, r13
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1168
	movzx	eax, byte ptr [rip + use_col_separator]
	xor	al, 1
	test	al, 1
	je	.label_1168
	mov	rdi, r13
	call	strlen
	test	rax, -0x80000000
	jne	.label_1143
	mov	dword ptr [rip + col_sep_length],  eax
	mov	qword ptr [rip + col_sep_string],  r13
	xor	r14d, r14d
.label_1168:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1123
.label_1457:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1126
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_221
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + columns],  eax
	mov	byte ptr [rip + explicit_columns],  1
	mov	rdi, rbx
	call	free
	mov	qword ptr [rsp + 0x40], 0
	xor	ebx, ebx
	jmp	.label_1133
.label_1433:
	cmp	qword ptr [rip + first_page_number],  0
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_1150
	mov	rdx, qword ptr [rip + optarg]
	cmp	byte ptr [rdx], 0x2b
	jne	.label_1150
	inc	rdx
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	xor	r14d, r14d
	test	al, al
	jne	.label_1123
.label_1150:
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, r12d
	inc	r12d
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rdx + rcx*8], rax
	xor	r14d, r14d
	jmp	.label_1123
.label_1434:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + date_format],  rax
	xor	r14d, r14d
	jmp	.label_1133
.label_1436:
	mov	byte ptr [rip + join_lines],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1437:
	mov	byte ptr [rip + skip_count],  1
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1177
	mov	edx, 5
	call	dcgettext
	mov	rsi, -0x80000000
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_221
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + start_line_num],  eax
	jmp	.label_1133
.label_1438:
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_221
	mov	dword ptr [rip + col_sep_length],  0
	mov	byte ptr [rip + use_col_separator],  1
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	test	r13, r13
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1141
	mov	rdi, r13
	call	strlen
	test	rax, -0x80000000
	jne	.label_1143
	mov	dword ptr [rip + col_sep_length],  eax
	mov	qword ptr [rip + col_sep_string],  r13
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r14d, r14d
	jmp	.label_1123
.label_1439:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  0
	xor	r14d, r14d
	jmp	.label_1133
.label_1441:
	mov	byte ptr [rip + print_across_flag],  1
	jmp	.label_1166
.label_1444:
	mov	byte ptr [rip + double_space],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1445:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1173
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_1173:
	mov	byte ptr [rip + untabify_input],  1
	xor	r14d, r14d
	jmp	.label_1123
.label_1447:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1182
	mov	esi, 0x69
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_1182:
	mov	byte ptr [rip + tabify_output],  1
	xor	r14d, r14d
	jmp	.label_1123
.label_1448:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1138
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_221
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + lines_per_page],  eax
	jmp	.label_1133
.label_1449:
	mov	byte ptr [rip + parallel_files],  1
.label_1166:
	mov	byte ptr [rip + storing_columns],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1451:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1157
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_221
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + chars_per_margin],  eax
	jmp	.label_1133
.label_1454:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1455:
	mov	byte ptr [rip + use_esc_sequence],  1
	xor	r14d, r14d
	jmp	.label_1133
.label_1456:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1180
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_221
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	cl, 1
	mov	qword ptr [rsp + 0x28], rcx
	movzx	ecx, byte ptr [rip + truncate_lines]
	test	cl, cl
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_1125
	mov	dword ptr [rip + chars_per_line],  eax
	xor	r14d, r14d
.label_1125:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1123
.label_1458:
	mov	rdx, qword ptr [rip + optarg]
	test	rdx, rdx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1144
	mov	edi, dword ptr [rsp + 0x14]
	xor	r14d, r14d
	xor	esi, esi
	call	first_last_page
	test	al, al
	jne	.label_1123
	jmp	.label_1153
.label_1141:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1123
	.section	.text
	.align	32
	#Procedure 0x40be8a
	.globl sub_40be8a
	.type sub_40be8a, @function
sub_40be8a:

	nop	word ptr [rax + rax]
.label_1154:
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_1158
	lea	r14, [r15 + 1]
	cmp	r14, qword ptr [rsp + 0x40]
	jb	.label_1162
	mov	rdi, rbx
	lea	rsi, [rsp + 0x40]
	call	x2realloc
	mov	rbx, rax
.label_1162:
	mov	byte ptr [rbx + r15], r13b
	mov	byte ptr [rbx + r15 + 1], 0
.label_1133:
	mov	rbp, qword ptr [rsp + 8]
.label_1123:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	r8, [rsp + 0x14]
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	mov	r15, r14
	jne	.label_1154
	test	rbx, rbx
	je	.label_1181
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1126
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_221
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + columns],  eax
	mov	byte ptr [rip + explicit_columns],  1
	mov	rdi, rbx
	call	free
.label_1181:
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1140
.label_1151:
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	xor	ebp, ebp
.label_1140:
	cmp	qword ptr [rip + date_format],  0
	jne	.label_1149
	mov	edi, OFFSET FLAT:label_1152
	call	getenv
	mov	ecx, OFFSET FLAT:label_1159
	test	rax, rax
	je	.label_1178
	mov	edi, 2
	call	hard_locale
	mov	edx, OFFSET FLAT:label_1159
	mov	ecx, OFFSET FLAT:label_1160
	test	al, al
	cmovne	rcx, rdx
.label_1178:
	mov	qword ptr [rip + date_format],  rcx
.label_1149:
	mov	edi, OFFSET FLAT:label_267
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [rip + localtz],  rax
	cmp	qword ptr [rip + first_page_number],  0
	jne	.label_1147
	mov	qword ptr [rip + first_page_number],  1
.label_1147:
	mov	r8b, byte ptr [rip + parallel_files]
	cmp	r8b, 1
	jne	.label_1175
	cmp	byte ptr [rip + explicit_columns],  1
	je	.label_1176
	cmp	byte ptr [rip + print_across_flag],  1
	je	.label_1136
.label_1175:
	test	bpl, 1
	je	.label_1134
	test	r13b, 1
	jne	.label_1148
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_1134
	test	byte ptr [rip + use_col_separator],  1
	jne	.label_1134
	test	r8b, r8b
	jne	.label_1131
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_1134
.label_1131:
	mov	al, byte ptr [rip + truncate_lines]
	test	al, al
	jne	.label_1122
	mov	byte ptr [rip + join_lines],  1
	cmp	dword ptr [rip + col_sep_length],  0
	jg	.label_1122
	jmp	.label_1134
.label_1148:
	test	r8b, r8b
	jne	.label_1163
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_1169
.label_1163:
	mov	byte ptr [rip + truncate_lines],  1
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_1134
.label_1122:
	mov	byte ptr [rip + use_col_separator],  1
	jmp	.label_1134
.label_1169:
	mov	byte ptr [rip + join_lines],  1
.label_1134:
	mov	ecx, dword ptr [rip + optind]
	cmp	ecx, ebx
	jge	.label_1167
	mov	r11d, ebx
	sub	r11d, ecx
	lea	eax, [rbx - 1]
	sub	eax, ecx
	and	r11d, 3
	cmp	eax, 3
	jb	.label_1124
	movsxd	rax, ecx
	lea	rdi, [r15 + rax*8 + 0x18]
	mov	r9d, r12d
	mov	r10d, r11d
	sub	r10d, ebx
	add	r10, rcx
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1156:
	lea	rbp, [r9 + rsi]
	mov	rax, qword ptr [rdi + rsi*8 - 0x18]
	lea	ebx, [rbp + 1]
	mov	edx, ebp
	mov	qword ptr [r14 + rdx*8], rax
	mov	rax, qword ptr [rdi + rsi*8 - 0x10]
	lea	edx, [rbp + 2]
	mov	qword ptr [r14 + rbx*8], rax
	mov	rax, qword ptr [rdi + rsi*8 - 8]
	add	ebp, 3
	mov	qword ptr [r14 + rdx*8], rax
	mov	rax, qword ptr [rdi + rsi*8]
	mov	qword ptr [r14 + rbp*8], rax
	add	rsi, 4
	mov	eax, r10d
	add	eax, esi
	jne	.label_1156
	lea	ecx, [rcx + rsi]
	add	r12d, esi
.label_1124:
	test	r11d, r11d
	je	.label_1179
	movsxd	rcx, ecx
	neg	r11d
	nop	
.label_1121:
	mov	rax, qword ptr [r15 + rcx*8]
	mov	edx, r12d
	inc	r12d
	mov	qword ptr [r14 + rdx*8], rax
	inc	rcx
	inc	r11d
	jne	.label_1121
.label_1179:
	mov	dword ptr [rip + optind],  ecx
.label_1167:
	test	r12d, r12d
	je	.label_1132
	test	r8b, r8b
	je	.label_1135
	mov	edi, r12d
	mov	rsi, r14
	jmp	.label_1137
	.section	.text
	.align	32
	#Procedure 0x40c12e
	.globl sub_40c12e
	.type sub_40c12e, @function
sub_40c12e:

	nop	
.label_1135:
	mov	edi, 1
	mov	rsi, r14
	call	print_files
	add	r14, 8
	dec	r12d
	jne	.label_1135
	jmp	.label_1142
.label_1132:
	xor	edi, edi
	xor	esi, esi
.label_1137:
	call	print_files
.label_1142:
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
	call	free
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_1161
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_1164
.label_1161:
	movzx	eax, byte ptr [rip + failed_opens]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1431:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_937
	mov	edx, OFFSET FLAT:label_290
	mov	r8d, OFFSET FLAT:label_1171
	mov	r9d, OFFSET FLAT:label_1172
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1432:
	xor	edi, edi
	call	usage
.label_1170:
	mov	edi, 1
	call	usage
.label_1176:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1129
	jmp	.label_1130
.label_1136:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1165
	jmp	.label_1130
.label_1164:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_1143:
	call	integer_overflow
.label_1144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1146
.label_1130:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_1153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1145
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
	.section	.text
	.align	32
	#Procedure 0x40c2b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1183
	test	rax, rax
	je	.label_1184
.label_1183:
	pop	rbx
	ret	
.label_1184:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40c2ca
	.globl sub_40c2ca
	.type sub_40c2ca, @function
sub_40c2ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2d0

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
	jne	.label_1188
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_1188:
	cmp	eax, 1
	sbb	r15d, r15d
	or	r15d, esi
	js	.label_1192
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	je	.label_1186
.label_1192:
	cmp	qword ptr [rip + init_header.timespec],  0
	jne	.label_1187
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_1187:
	movdqu	xmm0, xmmword ptr [rip + init_header.timespec]
	movdqa	xmmword ptr [rsp], xmm0
	mov	r14, qword ptr [rsp + 8]
	lea	rsi, [rsp]
	jmp	.label_1190
.label_1186:
	movdqu	xmm0, xmmword ptr [rsp + 0xc0]
	lea	rsi, [rsp]
	movdqa	xmmword ptr [rsp], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r14, xmm0
.label_1190:
	mov	rdi, qword ptr [rip + localtz]
	lea	rdx, [rsp + 0x30]
	call	localtime_rz
	test	rax, rax
	je	.label_1191
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
	jmp	.label_1185
.label_1191:
	mov	edi, 0x21
	call	xmalloc
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	imaxtostr
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_1189
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	mov	r9d, r14d
	call	__sprintf_chk
.label_1185:
	mov	rdi, qword ptr [rip + date_text]
	call	free
	mov	qword ptr [rip + date_text],  rbp
	mov	rax, qword ptr [rip + custom_header]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:label_221
	cmovs	r13, rcx
	test	rax, rax
	cmovne	r13, rax
	mov	qword ptr [rip + file_text],  r13
	mov	ebx, dword ptr [rip + chars_per_line]
	xor	esi, esi
	mov	rdi, rbp
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
	.section	.text
	.align	32
	#Procedure 0x40c47e
	.globl sub_40c47e
	.type sub_40c47e, @function
sub_40c47e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40c480

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
	.section	.text
	.align	32
	#Procedure 0x40c49d
	.globl sub_40c49d
	.type sub_40c49d, @function
sub_40c49d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c4a0

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
	jbe	.label_1204
	xor	ebp, ebp
	test	r15, r15
	jle	.label_1197
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 4], eax
	and	r14d, 1
	mov	eax, r14d
	xor	eax, 1
	mov	dword ptr [rsp + 0xc], eax
	lea	eax, [r14*4]
	xor	eax, 5
	mov	dword ptr [rsp + 8], eax
	xor	ebp, ebp
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1200:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_1195
	jmp	qword ptr [(rax * 8) + label_1198]
.label_1421:
	inc	rbx
	inc	ebp
.label_1201:
	cmp	rbx, r12
	jb	.label_1200
	jmp	.label_1197
.label_1195:
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr [rax + rax]
.label_1199:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp]
	mov	rsi, rbx
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	r13, rax
	cmp	r13, -2
	je	.label_1212
	test	r13, r13
	je	.label_1207
	cmp	r13, -1
	jne	.label_1209
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_1205
	inc	rbx
	inc	ebp
	mov	ecx, 5
	jmp	.label_1205
	.section	.text
	.align	32
	#Procedure 0x40c586
	.globl sub_40c586
	.type sub_40c586, @function
sub_40c586:

	nop	word ptr cs:[rax + rax]
.label_1212:
	add	ebp, dword ptr [rsp + 0xc]
	test	r14d, r14d
	cmove	rbx, r12
	mov	ecx, dword ptr [rsp + 8]
	jmp	.label_1205
	.section	.text
	.align	32
	#Procedure 0x40c5a1
	.globl sub_40c5a1
	.type sub_40c5a1, @function
sub_40c5a1:

	nop	word ptr cs:[rax + rax]
.label_1207:
	mov	r13d, 1
.label_1209:
	mov	edi, dword ptr [rsp]
	call	wcwidth
	test	eax, eax
	js	.label_1203
	mov	edx, 0x7fffffff
	sub	edx, ebp
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_1205
	add	ebp, eax
	jmp	.label_1206
.label_1203:
	mov	ecx, 1
	cmp	dword ptr [rsp + 4], 0
	jne	.label_1205
	mov	edi, dword ptr [rsp]
	call	iswcntrl
	test	eax, eax
	jne	.label_1206
	cmp	ebp, 0x7fffffff
	jne	.label_1210
	mov	ecx, 7
	mov	ebp, 0x7fffffff
	jmp	.label_1205
.label_1210:
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_1206:
	add	rbx, r13
	xor	ecx, ecx
.label_1205:
	and	cl, 7
	jne	.label_1196
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_1199
	jmp	.label_1201
.label_1196:
	cmp	cl, 5
	je	.label_1201
	cmp	cl, 7
	mov	ecx, 0x7fffffff
	mov	eax, 0xffffffff
	cmove	eax, ecx
	jmp	.label_1202
.label_1204:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_1193
.label_1194:
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_1193:
	cmp	rbx, r12
	jae	.label_1208
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_1211
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_1197
	test	al, 2
	jne	.label_1193
.label_1211:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_1194
	jmp	.label_1197
.label_1208:
	mov	ebp, r15d
.label_1197:
	mov	eax, ebp
.label_1202:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6ae
	.globl sub_40c6ae
	.type sub_40c6ae, @function
sub_40c6ae:

	nop	
.label_1217:
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	mov	ebx, OFFSET FLAT:label_1213
.label_1214:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	call	error
.label_1215:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c6e8
	.globl sub_40c6e8
	.type sub_40c6e8, @function
sub_40c6e8:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6ee

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, r8
	mov	eax, esi
	mov	ebp, dword ptr [rip + exit_failure]
	dec	edi
	cmp	edi, 4
	jae	.label_1215
	movsxd	rsi, edi
	mov	rsi, qword ptr [(rsi * 8) + label_1216]
	cdqe	
	test	eax, eax
	jns	.label_1217
	lea	r14, [rsp + 6]
	mov	ebx, OFFSET FLAT:label_1213
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	jmp	.label_1214
	.section	.text
	.align	32
	#Procedure 0x40c795
	.globl sub_40c795
	.type sub_40c795, @function
sub_40c795:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7a2
	.globl sub_40c7a2
	.type sub_40c7a2, @function
sub_40c7a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7c6
	.globl sub_40c7c6
	.type sub_40c7c6, @function
sub_40c7c6:

	nop	word ptr cs:[rax + rax]
