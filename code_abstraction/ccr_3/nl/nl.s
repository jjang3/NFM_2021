	.section	.text
	.align	32
	#Procedure 0x401980

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
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_30
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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
	mov	esi, OFFSET FLAT:label_13
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
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_26
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	#Procedure 0x401c20

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
	mov	r12d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_38
	call	setlocale
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_72
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_37
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	bpl, 1
	movabs	r14, 0x7fffffffffffffff
	mov	eax, OFFSET FLAT:body_fastmap
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	eax, OFFSET FLAT:footer_fastmap
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	eax, OFFSET FLAT:header_fastmap
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x10], xmm0
	jmp	.label_33
.label_50:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
.label_33:
	mov	ebx, ebp
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_74
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_75
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_33
	jmp	qword ptr [(rax * 8) + label_35]
.label_2562:
	mov	rax, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	cmp	ecx, 0x13
	ja	.label_36
	jmp	qword ptr [(rcx * 8) + label_40]
.label_2461:
	mov	qword ptr [rip + body_type],  rax
	mov	bpl, bl
	jmp	.label_33
.label_75:
	cmp	eax, -1
	je	.label_43
	cmp	eax, 0xffffff7d
	je	.label_46
	cmp	eax, 0xffffff7e
	jne	.label_33
	jmp	.label_52
.label_2563:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + section_del],  rax
	mov	bpl, bl
	jmp	.label_33
.label_2564:
	mov	rax, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	cmp	ecx, 0x13
	ja	.label_77
	jmp	qword ptr [(rcx * 8) + label_63]
.label_2609:
	mov	qword ptr [rip + footer_type],  rax
	mov	bpl, bl
	jmp	.label_33
.label_2565:
	mov	rax, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	cmp	ecx, 0x13
	ja	.label_66
	jmp	qword ptr [(rcx * 8) + label_62]
.label_2579:
	mov	qword ptr [rip + header_type],  rax
	mov	bpl, bl
	jmp	.label_33
.label_2566:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [rip + page_incr],  rax
	mov	bpl, bl
	jmp	.label_33
.label_2567:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [rip + blank_join],  rax
	mov	bpl, bl
	jmp	.label_33
.label_2568:
	mov	rax, qword ptr [rip + optarg]
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x72
	je	.label_71
	cmp	cl, 0x6c
	jne	.label_55
	cmp	byte ptr [rax + 1], 0x6e
	jne	.label_56
	cmp	byte ptr [rax + 2], 0
	je	.label_58
.label_56:
	cmp	cl, 0x72
	jne	.label_55
.label_71:
	cmp	byte ptr [rax + 1], 0x6e
	jne	.label_59
	cmp	byte ptr [rax + 2], 0
	je	.label_61
.label_59:
	cmp	byte ptr [rax + 1], 0x7a
	jne	.label_55
	cmp	byte ptr [rax + 2], 0
	je	.label_64
.label_55:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	jmp	.label_50
.label_2569:
	mov	byte ptr [rip + reset_numbers],  1
	mov	bpl, bl
	jmp	.label_33
.label_2570:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator_str],  rax
	mov	bpl, bl
	jmp	.label_33
.label_2571:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r14 + 1]
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [rip + starting_line_number],  rax
	mov	bpl, bl
	jmp	.label_33
.label_2572:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + lineno_width],  eax
	mov	bpl, bl
	jmp	.label_33
.label_36:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	jmp	.label_50
.label_2462:
	lea	rbp, [rax + 1]
	mov	qword ptr [rip + optarg],  rbp
	mov	qword ptr [rip + body_type],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + body_regex],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rip + label_54],  xmm0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:body_regex
	jmp	.label_60
.label_77:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	jmp	.label_50
.label_2610:
	lea	rbp, [rax + 1]
	mov	qword ptr [rip + optarg],  rbp
	mov	qword ptr [rip + footer_type],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + footer_regex],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rip + label_70],  xmm0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:footer_regex
	jmp	.label_60
.label_66:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	jmp	.label_50
.label_2580:
	lea	rbp, [rax + 1]
	mov	qword ptr [rip + optarg],  rbp
	mov	qword ptr [rip + header_type],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + header_regex],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rip + label_79],  xmm0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:header_regex
.label_60:
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	mov	bpl, bl
	je	.label_33
	jmp	.label_53
.label_61:
	mov	qword ptr [rip + lineno_format], OFFSET FLAT:FORMAT_RIGHT_NOLZ
	mov	bpl, bl
	jmp	.label_33
.label_64:
	mov	qword ptr [rip + lineno_format], OFFSET FLAT:FORMAT_RIGHT_LZ
	mov	bpl, bl
	jmp	.label_33
.label_58:
	mov	qword ptr [rip + lineno_format], OFFSET FLAT:FORMAT_LEFT
	mov	bpl, bl
	jmp	.label_33
.label_43:
	test	bl, bl
	je	.label_65
	mov	rdi, qword ptr [rip + section_del]
	call	strlen
	mov	rbp, rax
	lea	rax, [rbp + rbp*2]
	mov	qword ptr [rip + header_del_len],  rax
	lea	rdi, [rbp + rbp*2 + 1]
	call	xmalloc
	mov	qword ptr [rip + header_del],  rax
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	lea	rax, [rbp + rbp]
	mov	qword ptr [rip + body_del_len],  rax
	lea	rdi, [rbp + rbp + 1]
	call	xmalloc
	mov	qword ptr [rip + body_del],  rax
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	qword ptr [rip + footer_del_len],  rbp
	lea	rdi, [rbp + 1]
	call	xmalloc
	mov	qword ptr [rip + footer_del],  rax
	mov	rsi, qword ptr [rip + section_del]
	mov	rdi, rax
	call	stpcpy
	mov	edi, OFFSET FLAT:line_buf
	call	initbuffer
	mov	rdi, qword ptr [rip + separator_str]
	call	strlen
	mov	r14, rax
	movsxd	rax, dword ptr [rip + lineno_width]
	lea	rdi, [r14 + rax + 1]
	call	xmalloc
	mov	r13, rax
	mov	qword ptr [rip + print_no_line_fmt],  r13
	movsxd	rbp, dword ptr [rip + lineno_width]
	add	rbp, r14
	mov	esi, 0x20
	mov	rdi, r13
	mov	rdx, rbp
	call	memset
	mov	byte ptr [r13 + rbp], 0
	mov	rax, qword ptr [rip + starting_line_number]
	mov	qword ptr [rip + line_no],  rax
	mov	rax, qword ptr [rip + body_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:body_regex
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r12d
	jne	.label_73
	mov	edi, OFFSET FLAT:label_68
	call	nl_file
	mov	ebx, eax
	jmp	.label_41
.label_73:
	jge	.label_41
	nop	dword ptr [rax]
.label_78:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	nl_file
	and	bl, al
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r12d
	jl	.label_78
.label_41:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_57
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_39
.label_57:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_19
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_44
	mov	r9d, OFFSET FLAT:label_45
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_52:
	xor	edi, edi
	call	usage
.label_65:
	mov	edi, 1
	call	usage
.label_53:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	call	error
.label_39:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022c0

	.globl nl_file
	.type nl_file, @function
nl_file:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_99
	cmp	byte ptr [r14 + 1], 0
	je	.label_102
.label_99:
	mov	esi, OFFSET FLAT:label_104
	mov	rdi, r14
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_105
	jmp	.label_93
.label_102:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
.label_105:
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	jmp	.label_80
	nop	
.label_85:
	mov	rdi, qword ptr [rip + label_82]
	mov	rdx, qword ptr [rip + label_83]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
.label_80:
	mov	edi, OFFSET FLAT:line_buf
	mov	rsi, r15
	call	readlinebuffer
	test	rax, rax
	je	.label_107
	mov	rbp, qword ptr [rip + label_83]
	lea	rbx, [rbp - 1]
	cmp	rbx, 2
	jb	.label_96
	mov	r12, qword ptr [rip + label_82]
	mov	rax, qword ptr [rip + section_del]
	movzx	ecx, word ptr [r12]
	cmp	cx, word ptr [rax]
	jne	.label_96
	cmp	rbx, qword ptr [rip + header_del_len]
	jne	.label_92
	mov	rsi, qword ptr [rip + header_del]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_101
.label_92:
	cmp	rbx, qword ptr [rip + body_del_len]
	jne	.label_87
	mov	rsi, qword ptr [rip + body_del]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_90
.label_87:
	cmp	rbx, qword ptr [rip + footer_del_len]
	jne	.label_96
	mov	rsi, qword ptr [rip + footer_del]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_103
	nop	dword ptr [rax + rax]
.label_96:
	mov	rax, qword ptr [rip + current_type]
	movsx	eax, byte ptr [rax]
	add	eax, -0x61
	cmp	eax, 0x13
	ja	.label_85
	jmp	qword ptr [(rax * 8) + label_108]
.label_2419:
	mov	rax, qword ptr [rip + blank_join]
	cmp	rax, 2
	jl	.label_89
	cmp	rbp, 1
	ja	.label_81
	mov	rcx, qword ptr [rip + proc_text.blank_lines]
	inc	rcx
	mov	qword ptr [rip + proc_text.blank_lines],  rcx
	cmp	rcx, rax
	jne	.label_86
.label_81:
	mov	rsi, qword ptr [rip + lineno_format]
	mov	edx, dword ptr [rip + lineno_width]
	mov	rcx, qword ptr [rip + line_no]
	mov	r8, qword ptr [rip + separator_str]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	mov	rax, qword ptr [rip + page_incr]
	test	rax, rax
	js	.label_84
	add	qword ptr [rip + line_no],  rax
	mov	qword ptr [rip + proc_text.blank_lines],  0
	jmp	.label_85
.label_2420:
	mov	rdi, qword ptr [rip + current_regex]
	mov	rsi, qword ptr [rip + label_82]
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdx, rbx
	mov	r8, rbx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_86
	cmp	rax, -2
	jne	.label_89
	jmp	.label_91
.label_2421:
	cmp	rbp, 2
	jb	.label_86
.label_89:
	mov	rsi, qword ptr [rip + lineno_format]
	mov	edx, dword ptr [rip + lineno_width]
	mov	rcx, qword ptr [rip + line_no]
	mov	r8, qword ptr [rip + separator_str]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	mov	rax, qword ptr [rip + page_incr]
	test	rax, rax
	js	.label_84
	add	qword ptr [rip + line_no],  rax
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rdi, qword ptr [rip + print_no_line_fmt]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	jmp	.label_85
.label_101:
	mov	rax, qword ptr [rip + header_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:header_regex
	jmp	.label_88
.label_90:
	mov	rax, qword ptr [rip + body_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:body_regex
	jmp	.label_88
.label_103:
	mov	rax, qword ptr [rip + footer_type]
	mov	qword ptr [rip + current_type],  rax
	mov	qword ptr [rip + current_regex], OFFSET FLAT:footer_regex
.label_88:
	movzx	eax, byte ptr [rip + reset_numbers]
	test	al, al
	jne	.label_106
	mov	rax, qword ptr [rip + starting_line_number]
	mov	qword ptr [rip + line_no],  rax
.label_106:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_94
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_80
.label_94:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_80
.label_107:
	test	byte ptr [r15], 0x20
	jne	.label_93
	cmp	byte ptr [r14], 0x2d
	jne	.label_95
	cmp	byte ptr [r14 + 1], 0
	je	.label_97
.label_95:
	mov	rdi, r15
	call	rpl_fclose
	mov	bl, 1
	cmp	eax, -1
	jne	.label_100
.label_93:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_100:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_97:
	mov	rdi, r15
	call	clearerr_unlocked
	mov	bl, 1
	jmp	.label_100
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_91:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402670
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402680
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_115
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_112
	cmp	dword ptr [rbp], 0x20
	jne	.label_112
.label_115:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_111
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_110
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_111:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_110:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_114
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
	#Procedure 0x402750
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_116
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_116:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_120
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_122:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_117
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_119:
	cmp	rbx, r12
	jne	.label_121
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_121:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_122
	jmp	.label_118
.label_117:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_119
	cmp	rbx, r15
	mov	eax, 0
	je	.label_120
	test	byte ptr [r13], 0x20
	jne	.label_120
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_119
.label_118:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_120:
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
	#Procedure 0x402850
	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_126
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_127
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_123:
	cmp	r13, r14
	jne	.label_124
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_124:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_125
	jmp	.label_128
.label_127:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_123
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_126
	test	byte ptr [rbp], 0x20
	jne	.label_126
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_123
.label_128:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_126:
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
	#Procedure 0x402920
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402930

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_132
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_131
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_131
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_129
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_129:
	mov	rbx, r14
.label_131:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_132:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_133
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0
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
	#Procedure 0x402a20
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
	#Procedure 0x402a30
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
	#Procedure 0x402a40
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
	#Procedure 0x402a80
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
	#Procedure 0x402aa0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_135
	test	rdx, rdx
	je	.label_135
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_135:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ad0
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
	#Procedure 0x402b50

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
	jmp	.label_160
	nop	
.label_158:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_137
	or	al, dl
	jne	.label_137
	test	dil, 1
	jne	.label_155
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_137
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_160
	jmp	.label_137
.label_2490:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_166
	test	rbp, rbp
	je	.label_171
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_171:
	mov	r14d, 1
	jmp	.label_173
.label_2491:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_175
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_151
.label_166:
	xor	r14d, r14d
.label_173:
	mov	eax, OFFSET FLAT:label_175
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_184
	nop	
.label_160:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_192
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_197]
.label_2492:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_203
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_209
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_2493:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_220
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_220
	xor	r14d, r14d
	nop	
.label_233:
	cmp	r14, rbp
	jae	.label_228
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_228:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_233
.label_220:
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
	jmp	.label_151
.label_2485:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_151
.label_2488:
	mov	al, 1
.label_2486:
	mov	r12b, 1
.label_2489:
	test	r12b, 1
	mov	cl, 1
	je	.label_248
	mov	ecx, eax
.label_248:
	mov	al, cl
.label_2487:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_250
	test	rbp, rbp
	je	.label_256
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_256:
	mov	r14d, 1
	jmp	.label_234
.label_250:
	xor	r14d, r14d
.label_234:
	mov	ecx, OFFSET FLAT:label_209
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_184:
	mov	sil, r12b
.label_151:
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
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_147:
	inc	r12
.label_144:
	cmp	r11, -1
	je	.label_178
	cmp	r12, r11
	jne	.label_180
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_178:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_262
.label_180:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_193
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_196
	cmp	r11, -1
	jne	.label_196
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_196:
	cmp	rbx, r11
	jbe	.label_208
.label_193:
	xor	esi, esi
.label_235:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_210
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_215]
.label_2516:
	test	r12, r12
	jne	.label_169
	jmp	.label_221
	nop	word ptr cs:[rax + rax]
.label_208:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_231
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_235
	jmp	.label_162
.label_231:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_235
.label_2520:
	xor	eax, eax
	cmp	r11, -1
	je	.label_243
	test	r12, r12
	jne	.label_245
	cmp	r11, 1
	je	.label_221
	xor	r13d, r13d
	jmp	.label_152
.label_2509:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_252
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_258
	mov	eax, r9d
	and	al, 1
	jne	.label_258
	cmp	r14, rbp
	jae	.label_260
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_139:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_148
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	r14, 3
	mov	r9b, 1
.label_258:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_153
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_153:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_164
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_164
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_164
	cmp	r14, rbp
	jae	.label_179
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_179:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_205
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_205:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_152
.label_2510:
	mov	bl, 0x62
	jmp	.label_154
.label_2511:
	mov	cl, 0x74
	jmp	.label_143
.label_2512:
	mov	bl, 0x76
	jmp	.label_154
.label_2513:
	mov	bl, 0x66
	jmp	.label_154
.label_2514:
	mov	cl, 0x72
	jmp	.label_143
.label_2517:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_190
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_136
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
	jae	.label_198
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_212
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_218
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_218:
	add	r14, 3
	xor	r9d, r9d
.label_190:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_152
.label_2518:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_223
	cmp	r8d, 2
	jne	.label_169
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_169
	jmp	.label_136
.label_2519:
	cmp	r8d, 2
	jne	.label_237
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_136
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_224
.label_210:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_240
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_138
.label_243:
	test	r12, r12
	jne	.label_259
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_259
.label_221:
	mov	dl, 1
.label_2515:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_136
	xor	eax, eax
	mov	r13b, dl
.label_152:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_145
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_149
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_145:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_150
.label_149:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_156
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_161
	nop	dword ptr [rax]
.label_150:
	test	sil, sil
.label_161:
	mov	ebx, r15d
	je	.label_165
	jmp	.label_168
.label_156:
	mov	ebx, r15d
	jmp	.label_168
.label_252:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_147
	xor	r15d, r15d
	jmp	.label_169
.label_237:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_143
	xor	eax, eax
	mov	r15b, 0x5c
.label_224:
	xor	r13d, r13d
	jmp	.label_165
.label_143:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_136
.label_154:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_152
	nop	
.label_168:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_191
	mov	eax, r9d
	and	al, 1
	jne	.label_191
	cmp	r14, rbp
	jae	.label_195
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_195:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_199:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	add	r14, 3
	mov	r9b, 1
.label_191:
	cmp	r14, rbp
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_246:
	inc	r14
	jmp	.label_189
.label_240:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_216
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_216:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_222
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_170:
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
	je	.label_238
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_244
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_187
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_254
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_157:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_241
	bt	rsi, rdx
	jb	.label_136
.label_241:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_157
.label_254:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_200
	xor	r13d, r13d
.label_200:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_170
	jmp	.label_163
.label_164:
	xor	r13d, r13d
	jmp	.label_152
.label_259:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_152
.label_223:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_169
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_169
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_169
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_177
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_261
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_186
	cmp	r14, rbp
	jae	.label_188
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_194
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_230
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_230:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_253
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_253:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_261:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_152
.label_169:
	xor	eax, eax
.label_245:
	xor	r13d, r13d
	jmp	.label_152
.label_222:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_242:
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
	je	.label_176
	cmp	rbp, -1
	je	.label_236
	cmp	rbp, -2
	je	.label_238
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_239
	xor	r13d, r13d
.label_239:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_242
	jmp	.label_163
.label_238:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_249
	lea	rax, [r10 + r12]
.label_214:
	cmp	byte ptr [rax + rsi], 0
	je	.label_249
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_214
.label_249:
	mov	qword ptr [rsp + 0x40], rsi
.label_244:
	xor	r13d, r13d
	jmp	.label_187
.label_236:
	xor	r13d, r13d
.label_176:
	mov	r10, qword ptr [rsp + 0x28]
.label_187:
	mov	r12, qword ptr [rsp + 0x40]
.label_163:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_138:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_142
	test	al, al
	je	.label_142
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_152
.label_142:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_159
	nop	word ptr [rax + rax]
.label_247:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_159:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_167
	test	sil, 1
	je	.label_182
	cmp	r14, rbp
	jae	.label_172
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_172:
	inc	r14
	xor	esi, esi
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_181
	mov	eax, r9d
	and	al, 1
	jne	.label_181
	cmp	r14, rbp
	jae	.label_185
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_185:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_207
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_207:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_217
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_217:
	add	r14, 3
	mov	r9b, 1
.label_181:
	cmp	r14, rbp
	jae	.label_201
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_201:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_141
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_141:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_213
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_213:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_182:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_165
	test	r9b, 1
	je	.label_225
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_257
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_229
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_229:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_146
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_146:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	rbx, rcx
.label_225:
	cmp	r14, rbp
	jae	.label_247
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_247
	nop	
.label_165:
	test	r9b, 1
	je	.label_251
	and	al, 1
	jne	.label_251
	cmp	r14, rbp
	jae	.label_255
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_255:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	add	r14, 2
	xor	r9d, r9d
.label_251:
	mov	ebx, r15d
.label_189:
	cmp	r14, rbp
	jae	.label_140
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_140:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_147
.label_177:
	xor	r13d, r13d
	jmp	.label_152
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	rcx, r12
.label_262:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_158
	or	al, dl
	jne	.label_158
	mov	r11, rcx
	jmp	.label_162
.label_136:
	mov	eax, 2
.label_226:
	mov	qword ptr [rsp + 0x38], rax
.label_162:
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
.label_219:
	mov	r14, rax
.label_227:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_137:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_211
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_174
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_174
	inc	rdx
	nop	dword ptr [rax + rax]
.label_206:
	cmp	r14, rbp
	jae	.label_204
	mov	byte ptr [rcx + r14], al
.label_204:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_206
	jmp	.label_174
.label_155:
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
	jmp	.label_219
.label_211:
	mov	rcx, qword ptr [rsp + 0x10]
.label_174:
	cmp	r14, rbp
	jae	.label_227
	mov	byte ptr [rcx + r14], 0
	jmp	.label_227
.label_186:
	mov	eax, 5
	jmp	.label_226
.label_192:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403980
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
	#Procedure 0x403a50
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
	je	.label_263
	mov	qword ptr [rax], rbx
.label_263:
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
	#Procedure 0x403b40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_264
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_267:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_267
.label_264:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_268
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_266], OFFSET FLAT:slot0
.label_268:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_265
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_265:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403bf0

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
	js	.label_272
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_275
	cmp	r12d, 0x7fffffff
	je	.label_270
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
	jne	.label_273
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_273:
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
.label_275:
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
	jbe	.label_271
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_274
.label_271:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_269
	mov	rdi, r14
	call	free
.label_269:
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
.label_274:
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
.label_272:
	call	abort
.label_270:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403db0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dc0
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
	#Procedure 0x403de0
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
	#Procedure 0x403e00
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
	je	.label_276
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
.label_276:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
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
	je	.label_277
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
.label_277:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0
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
	je	.label_278
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
.label_278:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f50
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
	je	.label_279
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
.label_279:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
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
	#Procedure 0x404030
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
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
	#Procedure 0x4040a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
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
	#Procedure 0x404100
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
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
	#Procedure 0x404160

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
	je	.label_283
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
.label_283:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_284
	test	rdx, rdx
	je	.label_284
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_284:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404270
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
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
.label_285:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_286
	test	rsi, rsi
	je	.label_286
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_286:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404350
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_280]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_281]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_287
	test	rsi, rsi
	je	.label_287
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
.label_287:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0
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
	#Procedure 0x4043f0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410

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
	#Procedure 0x404430

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
	jne	.label_289
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_294
	cmp	ecx, 0x55
	jne	.label_288
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_288
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_288
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_288
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_288
	cmp	byte ptr [rax + 5], 0
	jne	.label_288
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_291
	mov	eax, OFFSET FLAT:label_292
	jmp	.label_293
.label_294:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_288
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_288
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_288
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_288
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_288
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_288
	cmp	byte ptr [rax + 7], 0
	je	.label_290
.label_288:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_175
	mov	eax, OFFSET FLAT:label_209
.label_293:
	cmove	rax, rcx
.label_289:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_290:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_295
	mov	eax, OFFSET FLAT:label_296
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404500

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
	je	.label_297
	mov	edx, OFFSET FLAT:label_307
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_313
.label_297:
	mov	edx, OFFSET FLAT:label_314
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_302
	jmp	qword ptr [(r12 * 8) + label_303]
.label_2546:
	add	rsp, 8
	jmp	.label_301
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
	jmp	.label_301
.label_2547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
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
.label_2548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
.label_2549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
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
.label_2550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
	jmp	.label_301
.label_2551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
	jmp	.label_301
.label_2552:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	jmp	.label_301
.label_2553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
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
	jmp	.label_301
.label_2555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
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
	jmp	.label_301
.label_2554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
.label_301:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_316:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_316
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_322
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_324
.label_322:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_324:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_321
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_323
.label_321:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_323:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_319
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_320
.label_319:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_320:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_329
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_318
.label_329:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_318:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_327
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_328
.label_327:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_328:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_325
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_326
.label_325:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_326:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_317:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_330
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_330:
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
	#Procedure 0x404b10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_332
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_335
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_336
	test	rax, rax
	je	.label_335
.label_336:
	pop	rbx
	ret	
.label_335:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_337
	test	rax, rax
	je	.label_338
.label_337:
	pop	rbx
	ret	
.label_338:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_339
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_340
	test	rbx, rbx
	jne	.label_340
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_340:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_341
	test	rax, rax
	je	.label_339
.label_341:
	pop	rbx
	ret	
.label_339:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_342
	test	rbx, rbx
	jne	.label_342
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_342:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_344
	test	rax, rax
	je	.label_343
.label_344:
	pop	rbx
	ret	
.label_343:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c70
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_348
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_350
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_345
.label_348:
	test	rcx, rcx
	jne	.label_351
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_351:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_346
.label_345:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_347
	test	rbx, rbx
	jne	.label_347
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_347:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_349
	test	rax, rax
	je	.label_350
.label_349:
	pop	rbx
	ret	
.label_350:
	call	xalloc_die
.label_346:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_352
	test	rax, rax
	je	.label_353
.label_352:
	pop	rbx
	ret	
.label_353:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_356
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_358
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_355
	call	free
	xor	eax, eax
	jmp	.label_357
.label_356:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_354
	mov	qword ptr [rsi], rbx
.label_355:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_357
	test	rax, rax
	je	.label_354
.label_357:
	pop	rbx
	ret	
.label_354:
	call	xalloc_die
.label_358:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0
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
	je	.label_360
	test	r14, r14
	je	.label_359
.label_360:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_359:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404de0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_361
	call	rpl_calloc
	test	rax, rax
	je	.label_361
	pop	rcx
	ret	
.label_361:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10

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
	je	.label_362
	test	r15, r15
	je	.label_363
.label_362:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_363:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e50
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
	je	.label_365
	test	r15, r15
	je	.label_364
.label_365:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_364:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ed0

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
	je	.label_370
	cmp	eax, 1
	je	.label_371
	cmp	eax, 3
	jne	.label_372
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_368
.label_370:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_369
	cmp	rbx, r12
	jle	.label_373
.label_369:
	cmp	rbx, 0x40000000
	jl	.label_374
.label_371:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_368
.label_372:
	call	__errno_location
.label_368:
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
	mov	edx, OFFSET FLAT:label_114
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_373:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_374:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_367
	mov	dword ptr [rax], 0x4b
	jmp	.label_368
.label_367:
	mov	dword ptr [rax], 0x22
	jmp	.label_368
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0

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
	#Procedure 0x404fe0

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
	jae	.label_418
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
	je	.label_383
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_388
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_386
	mov	r13d, 1
.label_388:
	test	r14, r14
	je	.label_395
	mov	r15d, r13d
	jmp	.label_400
.label_383:
	mov	r13d, 4
	test	r14, r14
	je	.label_386
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_386
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_386
.label_400:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_410
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_391
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_380
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_380
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_380
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_375
	cmp	eax, 0x44
	je	.label_375
	cmp	eax, 0x69
	jne	.label_380
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_380
.label_395:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_386
.label_375:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_380:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_391
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_396]
.label_2439:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_403
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_403:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_415
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_415:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_420
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_420:
	or	ecx, r14d
	jmp	.label_379
.label_391:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_376
.label_2440:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_379
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_379
.label_2441:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_392
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_392:
	cmp	rsi, rdi
	jl	.label_407
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_407:
	or	ecx, r11d
	jmp	.label_379
.label_2443:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_416
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_416:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_426
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_426:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_381
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_381:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_390
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_390:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_379
.label_2437:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_405
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_394
.label_2438:
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
	jl	.label_412
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_412:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_393
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_393:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_384
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_384:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_385
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_385:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_397
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_397:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_406
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_406:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_379
.label_2442:
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
	jl	.label_417
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_417:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_428
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_428:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_382
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_382:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_424
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_424:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_404
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_404:
	or	ecx, r14d
	jmp	.label_379
.label_2444:
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
	jl	.label_413
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_413:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_425
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_425:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_378
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_378:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_387
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_387:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_399
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_399:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_409
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_409:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_398
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_398:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_414
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_408
.label_2445:
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
	jl	.label_377
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_377:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_389
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_389:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_402
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_402:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_411
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_411:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_419
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_419:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_427
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_427:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_414
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_408:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_414:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_379
.label_2446:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_405
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_394
.label_2447:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_401
.label_405:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_379
.label_401:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_394:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_379:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_410:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_376:
	mov	r13d, r15d
.label_386:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_418:
	mov	edi, OFFSET FLAT:label_421
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_423
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405900

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_429
	test	rsi, rsi
	mov	ecx, 1
	je	.label_430
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_430
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_429:
	mov	ecx, 1
.label_430:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_431
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_433
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_431
.label_433:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_431
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_432
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_432:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_431:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_434
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_434
	test	byte ptr [rbx + 1], 1
	je	.label_434
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_434:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a10

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
	jne	.label_435
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_435
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_436
.label_435:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_436:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_437
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_437:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a80

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
	je	.label_438
	cmp	r15, -2
	jb	.label_438
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_438
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_438:
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
	#Procedure 0x405ae0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_439
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_439:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b40

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_852
.label_495:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_861
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_887:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_887
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_880
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_880
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_880
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_880
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_880
	or	byte ptr [r12 + 0xb0], 4
.label_880:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_906
	test	al, 4
	jne	.label_912
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_861
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_925:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_999
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_999:
	cmp	ebp, 0x7f
	ja	.label_923
	cmp	ebp, eax
	je	.label_923
	or	byte ptr [r12 + 0xb0], 8
.label_923:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_925
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_935:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_932
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_932:
	cmp	ebx, eax
	je	.label_523
	or	byte ptr [r12 + 0xb0], 8
.label_523:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_935
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_948:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_941
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_941:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_948
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_602:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_949
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_949:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_602
	jmp	.label_906
.label_912:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_906:
	cmp	qword ptr [r12], 0
	je	.label_861
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_861
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_954
	cmp	edx, 2
	jl	.label_984
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_443
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_443
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_984:
	xor	eax, eax
	test	bpl, bpl
	mov	edx, 0
	je	.label_994
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_443
	mov	qword ptr [rsp + 0x50], rax
	mov	dl, bpl
	mov	r12, qword ptr [rsp + 0x18]
.label_994:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	mov	ebp, edx
	jmp	.label_1001
.label_861:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_477
.label_954:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_1001:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_1012
	cmp	ecx, 2
	jl	.label_442
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_443
	lea	rbx, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_482:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_447
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_447
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_457
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_443
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_443
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_457
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_443
	mov	qword ptr [rsp + 0x60], rax
.label_457:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_471
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_443
	mov	qword ptr [rsp + 0x50], rax
.label_471:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_482
.label_443:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_487
.label_1012:
	cmp	ecx, 2
	jl	.label_490
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_447
.label_442:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_493
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_498
	nop	dword ptr [rax]
.label_513:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_498:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_505
.label_516:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_509
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_509:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_513
	jmp	.label_515
.label_505:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_516
.label_490:
	test	rbx, rbx
	je	.label_825
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_520
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_520
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_527:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_527
	mov	rcx, rdi
.label_520:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_447
.label_515:
	mov	rax, r13
	jmp	.label_493
.label_825:
	mov	rax, qword ptr [rsp + 8]
.label_493:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_447:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_543
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_545
.label_543:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_546
	mov	rax, qword ptr [rbx + 0x70]
.label_503:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_499:
	test	r14, r14
	mov	rcx, rbp
	je	.label_561
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_564
	mov	rax, qword ptr [rbx + 0x70]
.label_510:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_508
	mov	qword ptr [rbp], rcx
.label_561:
	test	rbp, rbp
	je	.label_508
	test	rcx, rcx
	je	.label_508
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
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
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_587
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_587
	test	rax, rax
	je	.label_587
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_587
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	r8, rbx
	mov	qword ptr [rsp + 8], r8
	je	.label_594
	test	rbp, rbp
	je	.label_596
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_598
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_598
	lea	rbx, [rcx - 4]
	mov	rdi, rbx
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	esi, 1
	cmp	rbx, 0xc
	jae	.label_625
	movq	xmm0, rsi
	pslldq	xmm0, 8
	jmp	.label_601
.label_594:
	lea	r12, [r8 + 0x68]
	jmp	.label_603
.label_625:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_604]
	movdqa	xmm9, xmmword ptr [rip + label_605]
	movdqa	xmm10, xmmword ptr [rip + label_606]
	movdqa	xmm11, xmmword ptr [rip + label_607]
	movdqa	xmm5, xmmword ptr [rip + label_608]
	movdqa	xmm6, xmmword ptr [rip + label_609]
	movdqa	xmm7, xmmword ptr [rip + label_610]
	movdqa	xmm1, xmmword ptr [rip + label_611]
	nop	word ptr cs:[rax + rax]
.label_626:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_626
.label_601:
	test	rdx, rdx
	je	.label_642
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_604]
	movdqa	xmm2, xmmword ptr [rip + label_605]
	nop	word ptr cs:[rax + rax]
.label_651:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_651
.label_642:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_596
	nop	dword ptr [rax]
.label_598:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_598
.label_596:
	mov	rdx, qword ptr [r8 + 0x68]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_656
	cmp	cl, 4
	jne	.label_575
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r8 + 0xa0], rcx
	jmp	.label_575
.label_656:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_575
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_575
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_668
	mov	qword ptr [rsi], rdx
.label_668:
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_575
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_575:
	lea	r12, [r8 + 0x68]
	jmp	.label_679
.label_730:
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_679:
	mov	rsi, rax
.label_700:
	test	rsi, rsi
	jne	.label_682
	mov	rdi, rdx
.label_699:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jne	.label_684
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_693:
	mov	rsi, rcx
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rsi
	je	.label_688
	test	rdx, rdx
	jne	.label_684
.label_688:
	mov	rdi, qword ptr [rcx]
	test	rdi, rdi
	jne	.label_693
	jmp	.label_717
.label_684:
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_697
	cmp	cl, 4
	mov	esi, 0
	mov	rdi, rdx
	jne	.label_699
	jmp	.label_700
.label_697:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rdi, rdx
	je	.label_699
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rdi, rdx
	jne	.label_699
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_491
.label_722:
	movsxd	rcx, dword ptr [rdi]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	movsxd	rcx, edi
	or	qword ptr [r8 + 0xa0], rcx
.label_682:
	mov	rbp, rdx
.label_719:
	mov	rdx, qword ptr [rbp + 8]
	test	rdx, rdx
	jne	.label_713
	xor	ecx, ecx
.label_715:
	mov	rdi, rcx
	mov	rcx, rbp
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rdi
	je	.label_710
	test	rdx, rdx
	jne	.label_713
.label_710:
	mov	rbp, qword ptr [rcx]
	test	rbp, rbp
	jne	.label_715
	jmp	.label_717
	nop	
.label_713:
	lea	rdi, [rdx + 0x28]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_718
	cmp	cl, 4
	mov	rbp, rdx
	jne	.label_719
	jmp	.label_722
.label_718:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rbp, rdx
	je	.label_719
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rbp, rdx
	jne	.label_719
	lea	rsi, [rdx + 8]
.label_491:
	mov	rbp, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	test	rbp, rbp
	je	.label_726
	mov	qword ptr [rbp], rdx
.label_726:
	mov	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_700
	jmp	.label_730
.label_717:
	mov	rcx, qword ptr [r15 + 0x30]
	xor	edx, edx
	test	rcx, rcx
	je	.label_731
	xor	edx, edx
	nop	dword ptr [rax]
.label_734:
	cmp	rdx, qword ptr [rax + rdx*8]
	jne	.label_731
	inc	rdx
	cmp	rdx, rcx
	jb	.label_734
.label_731:
	cmp	rdx, rcx
	jne	.label_603
	mov	rdi, rax
	call	free
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0xe0], 0
.label_603:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_740
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_740
	xor	ecx, ecx
	jmp	.label_1004
	nop	dword ptr [rax]
.label_759:
	mov	rcx, qword ptr [rdx + 8]
	mov	rbx, rdx
.label_1004:
	mov	dword ptr [rsp + 0x20], 0
	test	rcx, rcx
	je	.label_743
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_743
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_743
	mov	qword ptr [rax], rbx
	nop	word ptr [rax + rax]
.label_743:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_751
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_751
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_751
	mov	qword ptr [rax], rbx
	nop	
.label_751:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_486
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	je	.label_755
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	je	.label_759
	test	rax, rax
	je	.label_759
	jmp	.label_740
.label_755:
	mov	rax, qword ptr [r12]
	mov	ebx, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_753:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_753
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_753
	nop	word ptr cs:[rax + rax]
.label_788:
	cmp	byte ptr [rbp + 0x30], 0x10
	jne	.label_768
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_769
	nop	dword ptr [rax]
.label_768:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r8
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_587
	cmp	byte ptr [rbp + 0x30], 0xc
	mov	r8, qword ptr [rsp + 8]
	jne	.label_769
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r8]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_769:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_785
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_788
	test	rax, rax
	mov	rbp, rcx
	je	.label_788
	jmp	.label_753
.label_785:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_793
	cmp	al, 0xb
	jne	.label_796
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_798
.label_793:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_799
.label_796:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_801
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_801:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_798
.label_799:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_798:
	mov	rdx, rbp
	jmp	.label_806
.label_815:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_806:
	test	rax, rax
	mov	rcx, rax
	jne	.label_811
	xor	eax, eax
	nop	dword ptr [rax]
.label_812:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_809
	test	rcx, rcx
	jne	.label_811
.label_809:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_812
	jmp	.label_813
	nop	
.label_811:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_815
	cmp	al, 0xb
	jne	.label_817
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_806
.label_817:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_820
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_820:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_806
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_806
.label_813:
	mov	rdi, r8
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_486
	nop	word ptr [rax + rax]
.label_836:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_833
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_834:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_832
	test	rbx, rbx
	jne	.label_833
.label_832:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_834
	jmp	.label_835
	nop	
.label_833:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_836
	jmp	.label_486
.label_835:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_838
	nop	dword ptr [rax + rax]
.label_844:
	inc	rbp
	mov	rax, rbp
.label_838:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_839
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_840
	jmp	.label_842
	nop	dword ptr [rax]
.label_839:
	mov	rbp, rax
.label_840:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_844
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_486
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_844
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_844
.label_842:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_849
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_849
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_855
.label_849:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_856
.label_855:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_587
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_856
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_859
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_865:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_865
.label_859:
	test	rax, rax
	je	.label_856
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_897:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_872
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_891:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_876
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_883
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_885
	nop	word ptr cs:[rax + rax]
.label_876:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_885:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_891
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_872:
	inc	rbp
	cmp	rbp, rax
	jb	.label_897
.label_856:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_478
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_478
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_478
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_931
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_927:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_911
	jmp	qword ptr [(rsi * 8) + label_913]
.label_2466:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_915
	mov	esi, r10d
.label_915:
	mov	r10b, sil
	jmp	.label_918
.label_2467:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_478
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_918
	jmp	.label_478
.label_2468:
	mov	r9b, 1
	jmp	.label_918
.label_2469:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_922
	bt	r8, rbx
	jb	.label_918
.label_922:
	cmp	esi, 0x80
	jne	.label_478
.label_918:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_927
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_929
	xor	eax, eax
	mov	edx, 8
	jmp	.label_934
.label_587:
	mov	eax, 0xc
.label_486:
	mov	dword ptr [rsp + 4], eax
.label_487:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_936
.label_946:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_934:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_937
	cmp	sil, 1
	jne	.label_939
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_939
	and	esi, 0xffdfffff
	jmp	.label_942
.label_937:
	and	esi, 0xffffff00
	or	esi, 7
.label_942:
	mov	dword ptr [rbp + rdx], esi
.label_939:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_946
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_929
.label_931:
	xor	ecx, ecx
.label_929:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_478:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_615
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_955
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_961
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_961
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_964
	nop	dword ptr [rax + rax]
.label_997:
	mov	rbp, qword ptr [rsp + 0x30]
.label_964:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_489
	test	r13, r13
	mov	edi, 0
	jle	.label_971
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_976:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_579
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_971
.label_579:
	inc	rdi
	cmp	rdi, r13
	jl	.label_976
.label_971:
	cmp	rdi, r13
	je	.label_489
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_978
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_983
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_985:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_985
.label_983:
	cmp	rsi, -1
	je	.label_978
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_489
.label_978:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_481
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_489:
	inc	rax
	cmp	rax, r13
	jl	.label_997
	jmp	.label_961
.label_615:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_961:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_1007
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1009
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_1010
.label_1009:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_450
	test	rax, rax
	je	.label_450
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_450
.label_1010:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_481:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_460
	nop	dword ptr [rax]
.label_464:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_464
.label_460:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_474
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_474:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_477
	jmp	.label_480
.label_450:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_481
.label_883:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_486
.label_852:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_477
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_495
.label_546:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_499
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_503
.label_564:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_508
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_510
.label_508:
	mov	dword ptr [rsp + 4], 0xc
.label_545:
	mov	qword ptr [r12 + 0x68], 0
.label_936:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_518
	nop	word ptr cs:[rax + rax]
.label_524:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_524
.label_518:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_480
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_480:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_477:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1007:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_481
.label_955:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_481
.label_911:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x407290
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4072a0
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
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_1014
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1014:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1013
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1013:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1015
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1015:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407370

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rbx, qword ptr [r13]
	cmp	dword ptr [rbx + 0xb4], 1
	jne	.label_1089
	mov	al, byte ptr [r13 + 0x1a]
	and	al, 0x40
	shr	al, 6
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1096
.label_1089:
	mov	dword ptr [rsp + 0xc], 0
.label_1096:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_778
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax + rax]
.label_795:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_597
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_589]
.label_2575:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_746
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_592
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_592:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_746:
	test	byte ptr [r13 + 0x1a], 0x40
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_597
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_597
	mov	rax, qword ptr [rbx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	edx, 0x2000ff
	jae	.label_599
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_614:
	mov	rax, qword ptr [rbx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_599
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rbx + 0x10]
	jb	.label_614
.label_599:
	mov	r12, rbx
	mov	qword ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_623
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_623
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_623:
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_805
	nop	word ptr [rax + rax]
.label_2577:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_628
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_639:
	bt	rbp, rbx
	jae	.label_632
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_633
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_635
	nop	word ptr cs:[rax + rax]
.label_633:
	mov	eax, ebx
.label_635:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_632:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_639
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_654:
	bt	r13, rbp
	jae	.label_647
	mov	byte ptr [r15 + rbp + 0x40], 1
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_648
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_950
	nop	word ptr [rax + rax]
.label_648:
	lea	rax, [rbp + 0x40]
.label_950:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_647:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_654
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 0x10]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_671:
	bt	r13, rbp
	jae	.label_657
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	cmp	eax, 0x180
	jae	.label_659
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_666
	nop	dword ptr [rax]
.label_659:
	mov	rax, rbp
	sub	rax, -0x80
.label_666:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_657:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_671
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r12, qword ptr [rax + 0x18]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_687:
	bt	r12, rbp
	jae	.label_677
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	jae	.label_680
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_683
	nop	dword ptr [rax]
.label_680:
	lea	rax, [rbp + 0xc0]
.label_683:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_677:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_687
	jmp	.label_597
	nop	dword ptr [rax]
.label_2578:
	mov	r12, qword ptr [rsi]
	cmp	dword ptr [rbx + 0xb4], 1
	jle	.label_692
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_695
	test	byte ptr [r12 + 0x20], 1
	jne	.label_695
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_692
.label_695:
	mov	r12, rbx
	mov	byte ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	lea	rbx, [rsp]
	nop	word ptr cs:[rax + rax]
.label_709:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp]
	cmp	rax, -2
	jne	.label_708
	mov	byte ptr [r15 + rcx], 1
.label_708:
	inc	cl
	mov	byte ptr [rsp], cl
	jne	.label_709
.label_805:
	mov	rbx, r12
	jmp	.label_597
.label_692:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_597
	mov	eax, dword ptr [rsp + 0xc]
	xor	ebp, ebp
	test	al, al
	je	.label_533
	nop	word ptr cs:[rax + rax]
.label_737:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_725
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_727
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_727:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
	mov	rbx, qword ptr [rsp + 0x10]
.label_725:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_526
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_526
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_526
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_526:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_737
	jmp	.label_597
	nop	word ptr cs:[rax + rax]
.label_533:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_745
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_745:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_519
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_519
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_519
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_519:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_533
	jmp	.label_597
.label_628:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_763:
	bt	rbp, rax
	jae	.label_756
	mov	byte ptr [r15 + rax], 1
.label_756:
	lea	rcx, [rax + 1]
	bt	rbp, rcx
	jae	.label_760
	mov	byte ptr [r15 + rax + 1], 1
.label_760:
	inc	rcx
	cmp	rcx, 0x40
	mov	rax, rcx
	jne	.label_763
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_770:
	bt	rax, rcx
	jae	.label_766
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_766:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_767
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_767:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_770
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_781:
	bt	rax, rcx
	jae	.label_664
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_664:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_681
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_681:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_781
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x18]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_791:
	bt	rax, rcx
	jae	.label_787
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_787:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_790
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_790:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_791
	nop	dword ptr [rax + rax]
.label_597:
	inc	r14
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rsi + 0x10]
	jl	.label_795
	jmp	.label_778
.label_2576:
	movaps	xmm0, xmmword ptr [rip + label_800]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
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
	cmp	eax, 2
	jne	.label_778
	or	byte ptr [r13 + 0x38], 1
.label_778:
	add	rsp, 0x138
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
	#Procedure 0x407a10
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
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
	je	.label_1111
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1110
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1112
.label_1110:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1112:
	mov	byte ptr [r15 + 0x38], al
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
	jne	.label_1109
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1108
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1108:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1113
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1113:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_1114
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1114:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_1111:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1109:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1111
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0
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
	jae	.label_1115
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1117
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1118
.label_1116:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1117:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1118:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1116
.label_1115:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c40
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1119
	call	free_dfa_content
.label_1119:
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
	#Procedure 0x407c80

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1120
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1120
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1124
	nop	dword ptr [rax]
.label_1122:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1124:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1126
	cmp	ecx, 6
	jne	.label_1129
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1134
	nop	word ptr cs:[rax + rax]
.label_1126:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1134:
	call	free
.label_1129:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1122
.label_1120:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1123
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1136:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1128
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1128:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1131
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1131:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1132
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1132:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1136
	jmp	.label_1121
.label_1123:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1121:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1125
	xor	r15d, r15d
	jmp	.label_1127
.label_1137:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1127:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1130
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1133:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1133
.label_1130:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1137
	mov	rdi, qword ptr [r14 + 0x40]
.label_1125:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1135
	call	free
.label_1135:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e50
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
	ja	.label_1139
	test	bl, 4
	jne	.label_1140
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1142
.label_1140:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1142:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1138
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
	jmp	.label_1141
.label_1138:
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
.label_1141:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1139:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ef0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x228
	mov	r14, r9
	mov	rbp, rcx
	mov	r11, qword ptr [rsp + 0x260]
	mov	r10, qword ptr [rdi]
	xorps	xmm0, xmm0
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
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xf8], r10
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1146
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1146:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r11 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r11
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_816
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_816
	mov	rcx, qword ptr [r10 + 0x50]
	test	rcx, rcx
	je	.label_816
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_816
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_816
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x160], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1147
	mov	qword ptr [rsp + 8], r8
	mov	r14, rsi
	jmp	.label_1151
.label_1147:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1152
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1153
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1152
.label_1153:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbp, rbp
	je	.label_1155
	test	r8, r8
	mov	ebp, 0
	jne	.label_816
	jmp	.label_1151
.label_1152:
	mov	qword ptr [rsp + 8], r8
.label_1151:
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	sub	r11, r12
	mov	qword ptr [rsp + 0x38], r11
	mov	byte ptr [rsp + 3], 1
	jne	.label_1158
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 3]
.label_1158:
	mov	r15, qword ptr [r10 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x58], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r10 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0xb8], rbx
	mov	qword ptr [rsp + 0xb0], rbx
	mov	rsi, qword ptr [rsp + 0x160]
	mov	qword ptr [rsp + 0xd8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0xe8], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0xeb], r12b
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, byte ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0xe9], dl
	mov	byte ptr [rsp + 0xea], cl
	mov	qword ptr [rsp + 0xc8], rsi
	mov	qword ptr [rsp + 0x170], rsi
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x28], r10
	jl	.label_1149
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_554
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_554
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, qword ptr [rsp + 0x28]
.label_1149:
	mov	al, 1
	test	r12b, r12b
	je	.label_1150
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_554
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
.label_1150:
	mov	qword ptr [rsp + 0xa0], r15
	lea	rcx, [r10 + 0xb8]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0xee], dl
	xor	edx, edx
	test	al, al
	je	.label_1157
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x68], rax
	xor	edx, edx
	cmp	ecx, 1
	cmovle	rdx, qword ptr [rsp + 0x170]
.label_1157:
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x98], rdx
	mov	qword ptr [rsp + 0xc8], r14
	mov	qword ptr [rsp + 0xc0], r14
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0xed], al
	mov	r14, qword ptr [r10 + 0x98]
	lea	r13, [r14 + r14]
	mov	eax, dword ptr [rsp + 0x270]
	mov	dword ptr [rsp + 0x100], eax
	mov	qword ptr [rsp + 0x108], -1
	test	r14, r14
	jle	.label_1148
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_554
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x138], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x158], rax
	test	r12, r12
	je	.label_554
	test	rax, rax
	je	.label_554
.label_1148:
	mov	qword ptr [rsp + 0x130], r13
	mov	dword ptr [rsp + 0x140], 1
	mov	qword ptr [rsp + 0x150], r13
	cmp	qword ptr [rsp + 0x38], 1
	ja	.label_1156
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1156
	mov	qword ptr [rsp + 0x118], 0
	jmp	.label_1144
.label_1156:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_554
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x118], rax
	test	rax, rax
	je	.label_554
.label_1144:
	mov	qword ptr [rsp + 0x20], rbp
	mov	eax, dword ptr [rsp + 0x270]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xd0], eax
	mov	rdi, qword ptr [rsp + 8]
	cmp	rdi, rbp
	mov	r14, rbp
	cmovle	r14, rdi
	mov	r12, rdi
	cmovl	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	eax, dword ptr [rax + 0xb4]
	mov	dword ptr [rsp + 0x17c], eax
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1154
	cmp	dword ptr [rsp + 0x17c], 1
	mov	rsi, qword ptr [rsp + 0x160]
	je	.label_1145
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1143
	mov	rdx, qword ptr [rsp + 0x58]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1143
.label_1145:
	mov	eax, 4
.label_1143:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rdi
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1154:
	lea	r15, [rsp + 0x98]
	cmp	rdi, rbp
	mov	eax, 1
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x1f0], rdx
	xor	edx, edx
	cmp	rbp, rdi
	setle	byte ptr [rsp + 2]
	lea	rsi, [rsp + 0x20]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1e8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x210], rsi
	add	ecx, -4
	mov	qword ptr [rsp + 0x218], rcx
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x198], r14
	jmp	.label_701
.label_1155:
	xor	ebp, ebp
	jmp	.label_1151
.label_618:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_574
	cmp	ebx, 1
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_522
	jmp	.label_554
.label_830:
	test	al, al
	js	.label_612
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbx
	mov	ecx, 1
	jne	.label_613
	mov	rbp, rbx
	jmp	.label_550
.label_827:
	mov	rax, qword ptr [r14 + 0x10]
	test	rax, rax
	jle	.label_616
	mov	r15, qword ptr [rsp + 0xf8]
	xor	ebx, ebx
	jmp	.label_619
.label_612:
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbx
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 3]
	je	.label_622
	or	rdx, rbx
	jmp	.label_613
.label_622:
	mov	rbp, rbx
	jmp	.label_550
.label_676:
	mov	r12, qword ptr [rsp + 0x168]
	jmp	.label_627
.label_640:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_629
	add	r12, r12
	mov	qword ptr [rsp + 0x158], rax
	mov	qword ptr [rsp + 0x150], r12
	jmp	.label_631
.label_619:
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r13, qword ptr [rcx + rbx*8]
	mov	rcx, qword ptr [r15]
	mov	rdx, r13
	shl	rdx, 4
	cmp	byte ptr [rcx + rdx + 8], 8
	jne	.label_634
	mov	rcx, qword ptr [rcx + rdx]
	cmp	rcx, 0x3f
	jg	.label_634
	mov	rdx, qword ptr [r15 + 0xa0]
	bt	rdx, rcx
	jae	.label_634
	mov	r12, qword ptr [rsp + 0x148]
	cmp	r12, qword ptr [rsp + 0x150]
	je	.label_640
.label_631:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rsp + 0x158]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_629
	mov	qword ptr [rax + 8], r13
	inc	rcx
	mov	qword ptr [rsp + 0x148], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
.label_634:
	inc	rbx
	cmp	rbx, rax
	jl	.label_619
.label_616:
	mov	dword ptr [rsp + 4], 0
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_567
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x60]
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_660
.label_567:
	mov	dword ptr [rsp + 8], 0
	lea	r15, [rsp + 0x98]
	jmp	.label_663
.label_629:
	mov	ebp, 0xc
	jmp	.label_667
.label_660:
	movsxd	rbp, eax
	lea	r15, [rsp + 0x98]
	jmp	.label_550
	nop	
.label_701:
	mov	rax, qword ptr [rsp + 0x218]
	cmp	eax, 4
	ja	.label_672
	jmp	qword ptr [(rax * 8) + label_645]
.label_2482:
	cmp	rbp, r14
	jl	.label_675
	mov	rdi, qword ptr [rsp + 0x160]
	test	rdi, rdi
	je	.label_678
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_691:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_686
	movzx	eax, byte ptr [rdx + rbp]
.label_686:
	movzx	eax, byte ptr [rdi + rax]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_675
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_691
	jmp	.label_696
.label_2484:
	cmp	rbp, r12
	jge	.label_698
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x160]
	nop	dword ptr [rax]
.label_704:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_698
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_704
	jmp	.label_698
.label_2483:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	jge	.label_698
	nop	dword ptr [rax]
.label_824:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_698
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_824
	nop	word ptr [rax + rax]
.label_698:
	cmp	rbp, r12
	jne	.label_714
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_716
	movzx	eax, byte ptr [rcx + r12]
.label_716:
	mov	rcx, qword ptr [rsp + 0x160]
	test	rcx, rcx
	je	.label_720
	movzx	eax, byte ptr [rcx + rax]
.label_720:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_714
	jmp	.label_554
.label_672:
	mov	rax, qword ptr [rsp + 0x88]
	jmp	.label_728
	nop	word ptr cs:[rax + rax]
.label_452:
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_554
	cmp	rbp, r12
	jle	.label_728
	jmp	.label_554
.label_739:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_554
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_736
	nop	dword ptr [rax + rax]
.label_728:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x98]
	jae	.label_739
.label_736:
	cmp	rbp, qword ptr [rsp + 0x170]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x48]
	jge	.label_741
	mov	rdx, qword ptr [rsp + 0x68]
	movzx	edx, byte ptr [rdx + rcx]
.label_741:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_452
	jmp	.label_714
.label_678:
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_752:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_749
	movzx	eax, byte ptr [rdx + rbp]
.label_749:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_675
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_752
	jmp	.label_696
	nop	word ptr [rax + rax]
.label_675:
	mov	rax, rbp
.label_696:
	mov	ebx, 1
	cmp	rax, r14
	mov	rbp, rax
	jl	.label_554
.label_714:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_554
	cmp	dword ptr [rsp + 0x17c], 1
	je	.label_761
	mov	rax, qword ptr [rsp + 0x90]
	test	rax, rax
	je	.label_761
	mov	rax, qword ptr [rsp + 0x70]
	cmp	dword ptr [rax], -1
	je	.label_764
.label_761:
	mov	dword ptr [rsp + 0x140], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x88], xmm0
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [r13 + 0x48]
	cmp	byte ptr [r14 + 0x68], 0
	jns	.label_765
	test	rbx, rbx
	jle	.label_772
	lea	rax, [rbx - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_777
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_779
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_784:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_783
	dec	rcx
	jg	.label_784
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_786
.label_779:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_789
	cmp	al, 0xa
	je	.label_794
	jmp	.label_765
.label_783:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_797
.label_821:
	cmp	ebp, 0xa
	jne	.label_765
.label_794:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_786:
	test	cl, 1
	jne	.label_789
	mov	rbp, rbx
	test	ecx, ecx
	je	.label_802
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	mov	bl, byte ptr [rsp + 2]
	je	.label_804
	test	sil, sil
	jne	.label_804
	mov	r14, qword ptr [r13 + 0x60]
	jmp	.label_807
	nop	dword ptr [rax]
.label_765:
	mov	rbp, rbx
	jmp	.label_802
.label_804:
	test	edx, edx
	jne	.label_808
	test	eax, eax
	je	.label_807
	mov	rdx, qword ptr [r14 + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r13
	call	re_acquire_state_context
	mov	r14, rax
	jmp	.label_807
.label_808:
	mov	r14, qword ptr [r13 + 0x58]
	jmp	.label_807
.label_772:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_786
.label_777:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_786
.label_797:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_789
	test	eax, eax
	je	.label_821
.label_789:
	mov	rbp, rbx
	mov	r14, qword ptr [r13 + 0x50]
.label_802:
	mov	bl, byte ptr [rsp + 2]
.label_807:
	test	r14, r14
	je	.label_823
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	mov	cl, bl
	mov	dword ptr [rsp + 8], ecx
	je	.label_663
	mov	qword ptr [rax + rbp*8], r14
	cmp	qword ptr [r13 + 0x98], 0
	mov	al, bl
	mov	dword ptr [rsp + 8], eax
	jne	.label_827
.label_663:
	mov	al, byte ptr [r14 + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	mov	rbx, rbp
	jne	.label_830
.label_613:
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0x210]
.label_1008:
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x168], rdx
	mov	qword ptr [rsp + 0x180], rbx
	cmp	qword ptr [rsp + 0xc8], rbp
	jle	.label_542
	test	rcx, rcx
	sete	bl
	or	bl, byte ptr [rsp + 3]
	mov	r13, r14
	jmp	.label_539
.label_479:
	add	ebp, 2
	lea	rdi, [rsp + 0x60]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_841
	jmp	.label_476
.label_673:
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_845
	mov	r8, qword ptr [rsp + 0xf8]
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r8
	jmp	.label_451
.label_494:
	mov	rax, qword ptr [rsp + 0xa8]
	test	rax, rax
	jle	.label_847
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0xb8], rdx
	je	.label_459
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_848
	mov	rcx, qword ptr [rsp + 0x70]
.label_854:
	mov	r14d, dword ptr [rcx + rax*4 - 4]
	cmp	r14d, -1
	jne	.label_851
	dec	rax
	jg	.label_854
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_459
.label_532:
	cmp	r13, r14
	je	.label_857
	mov	dword ptr [rsp + 8], 0
.label_857:
	mov	rax, qword ptr [rsp + 0x180]
	cmove	rax, r12
	mov	qword ptr [rsp + 0x180], rax
	jmp	.label_858
.label_848:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rdx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_459
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_863
	jmp	.label_459
.label_851:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_864
.label_581:
	xor	ecx, ecx
	cmp	r14d, 0xa
	jne	.label_459
.label_863:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_459:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	r14, qword ptr [rsi + rcx*8]
	jmp	.label_456
.label_987:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_871
.label_988:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_871
.label_1005:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_875
	test	eax, eax
	lea	r15, [rsp + 0x98]
	je	.label_877
	jmp	.label_871
.label_875:
	lea	r15, [rsp + 0x98]
	jmp	.label_871
.label_451:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_445
	mov	edi, eax
	shr	edi, 8
	test	di, 0x3ff
	mov	rcx, qword ptr [rsp + 0xa8]
	je	.label_689
	test	rcx, rcx
	mov	dword ptr [rsp + 0x10], eax
	js	.label_886
	cmp	qword ptr [rsp + 0xb8], rcx
	je	.label_889
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_893
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdx, [rcx + 1]
.label_895:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_894
	dec	rdx
	test	rdx, rdx
	jg	.label_895
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_658
.label_893:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rcx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rbp + rdx*8]
	xor	r9d, r9d
	bt	rdx, rax
	jae	.label_898
	mov	r9d, 1
	xor	edx, edx
	jmp	.label_903
.label_894:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_905
.label_928:
	xor	r9d, r9d
	cmp	ebp, 0xa
	je	.label_907
	jmp	.label_658
.label_898:
	cmp	al, 0xa
	jne	.label_658
.label_907:
	xor	r9d, r9d
	cmp	byte ptr [rsp + 0xed], 0
	setne	r9b
	add	r9d, r9d
.label_658:
	mov	eax, r9d
	and	eax, 1
	sete	dl
	test	dil, 4
	je	.label_903
	test	eax, eax
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_445
	jmp	.label_916
.label_886:
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_658
.label_889:
	mov	r9d, dword ptr [rsp + 0x100]
	and	r9d, 2
	xor	r9d, 0xa
	jmp	.label_658
.label_905:
	mov	dword ptr [rsp + 0x178], edi
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebp
	call	iswalnum
	xor	edx, edx
	cmp	ebp, 0x5f
	mov	r9d, 1
	je	.label_926
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_928
	jmp	.label_916
.label_926:
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
.label_903:
	mov	eax, dword ptr [rsp + 0x10]
.label_916:
	test	ah, 8
	je	.label_943
	test	dl, dl
	je	.label_445
.label_943:
	test	ah, 0x20
	je	.label_945
	mov	eax, r9d
	and	eax, 2
	je	.label_445
.label_945:
	test	dil, dil
	jns	.label_689
	and	r9d, 8
	je	.label_445
.label_689:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x60]
	call	check_node_accept_bytes
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	je	.label_445
	movsxd	rbp, eax
	add	rbp, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rsp + 0x140]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x140], ecx
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	rcx, rbp
	mov	qword ptr [rsp + 0x10], rbp
	jg	.label_952
	cmp	rcx, rax
	jl	.label_957
.label_952:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	rcx, rbp
	jg	.label_959
	cmp	rcx, rax
	jge	.label_959
.label_957:
	lea	esi, [rbp + 1]
	mov	rbp, rdi
	lea	rdi, [rsp + 0x60]
	call	extend_buffers
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_962
.label_959:
	mov	rdx, rbp
	sub	rdx, rdi
	jle	.label_963
	mov	rax, qword ptr [rsp + 0x118]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x120], rbp
.label_963:
	mov	dword ptr [rsp + 0x1f8], 0
	mov	rax, qword ptr [r8 + 0x18]
	mov	rax, qword ptr [rax + rsi*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [r8 + 0x30]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x30], rax
	je	.label_782
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rsp + 0x1a0]
	call	re_node_set_init_union
	mov	rbp, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0x1f8], eax
	test	eax, eax
	je	.label_980
	jmp	.label_507
.label_782:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
.label_980:
	test	rbp, rbp
	jle	.label_987
	lea	rax, [rbp - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_988
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_990
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbp
.label_995:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_993
	dec	rcx
	jg	.label_995
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_871
.label_990:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_871
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_1002
	jmp	.label_871
.label_993:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1005
.label_877:
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_871
.label_1002:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_871:
	lea	rdi, [rsp + 0x1f8]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x1a0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x118]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_440
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
	mov	rdx, qword ptr [rsp + 0x10]
.label_440:
	mov	rax, qword ptr [rsp + 0x118]
	cmp	qword ptr [rax + rdx*8], 0
	mov	r8, qword ptr [rsp + 0x18]
	jne	.label_445
	mov	eax, dword ptr [rsp + 0x1f8]
	test	eax, eax
	jne	.label_507
.label_445:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_451
.label_845:
	mov	dword ptr [rsp + 4], 0
	jmp	.label_453
.label_962:
	mov	dword ptr [rsp + 0x1f8], eax
.label_507:
	mov	dword ptr [rsp + 4], eax
.label_502:
	xor	r14d, r14d
	jmp	.label_456
.label_847:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_459
.label_864:
	mov	qword ptr [rsp + 0x18], rsi
	mov	edi, r14d
	call	iswalnum
	cmp	r14d, 0x5f
	mov	ecx, 1
	je	.label_463
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	je	.label_581
	jmp	.label_459
.label_463:
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	jmp	.label_459
	nop	dword ptr [rax + rax]
.label_539:
	lea	r12, [rbp + 1]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	r12, rcx
	jl	.label_470
	cmp	rcx, rax
	jl	.label_479
.label_470:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	r12, rcx
	jl	.label_476
	cmp	rcx, rax
	jl	.label_479
.label_476:
	test	byte ptr [r13 + 0x68], 0x20
	jne	.label_673
.label_453:
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xa8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	movzx	ebp, byte ptr [rcx + rax]
.label_500:
	mov	rax, qword ptr [r13 + 0x58]
	test	rax, rax
	jne	.label_492
	mov	rsi, qword ptr [r13 + 0x60]
	test	rsi, rsi
	jne	.label_494
	mov	rdi, qword ptr [rsp + 0xf8]
	mov	rsi, r13
	call	build_trtable
	test	al, al
	jne	.label_500
	mov	dword ptr [rsp + 4], 0xc
	jmp	.label_502
	nop	word ptr [rax + rax]
.label_492:
	mov	r14, qword ptr [rax + rbp*8]
.label_456:
	cmp	qword ptr [rsp + 0x118], 0
	je	.label_504
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r14
	call	merge_state_with_log
	mov	r14, rax
.label_504:
	test	r14, r14
	jne	.label_511
	cmp	dword ptr [rsp + 4], 0
	jne	.label_512
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	setne	cl
	and	cl, bl
	cmp	cl, 1
	je	.label_514
	jmp	.label_521
	nop	word ptr cs:[rax + rax]
.label_908:
	mov	rax, qword ptr [rsp + 0x118]
.label_514:
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x120]
	nop	dword ptr [rax + rax]
.label_529:
	cmp	rdx, rcx
	jge	.label_521
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xa8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_529
	xor	edx, edx
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	call	merge_state_with_log
	mov	r14, rax
	test	r14, r14
	jne	.label_530
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	je	.label_908
.label_530:
	test	r14, r14
	je	.label_521
	nop	word ptr [rax + rax]
.label_511:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_532
.label_858:
	mov	r12, qword ptr [rsp + 0x40]
	mov	al, byte ptr [r14 + 0x68]
	test	al, 0x10
	jne	.label_534
	mov	rbp, qword ptr [rsp + 0xa8]
	jmp	.label_535
	nop	word ptr cs:[rax + rax]
.label_534:
	mov	rbp, qword ptr [rsp + 0xa8]
	test	al, al
	jns	.label_538
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_538
.label_535:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	r13, r14
	jg	.label_539
	jmp	.label_542
.label_538:
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbp
	mov	ecx, 1
	mov	eax, 0
	mov	rbx, qword ptr [rsp + 0x180]
	jne	.label_1008
	jmp	.label_550
	nop	word ptr cs:[rax + rax]
.label_521:
	mov	r12, qword ptr [rsp + 0x40]
.label_542:
	mov	rcx, qword ptr [rsp + 0x220]
	test	rcx, rcx
	je	.label_551
	mov	rax, qword ptr [rsp + 0x180]
	add	qword ptr [rcx], rax
.label_551:
	mov	rbp, qword ptr [rsp + 0x168]
.label_550:
	cmp	rbp, -1
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_522
	mov	ebx, 0xc
	cmp	rbp, -2
	je	.label_554
.label_667:
	mov	r15, qword ptr [rsp + 0x38]
	cmp	r15, 1
	seta	al
	mov	qword ptr [rsp + 0x108], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r14b
	and	r14b, al
	je	.label_565
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_572
.label_565:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_574
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	test	r14b, 1
	je	.label_637
.label_572:
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_580
.label_637:
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_574
.label_580:
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_512
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r12, qword ptr [rsp + 0x110]
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	mov	r13d, 0
	je	.label_586
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_590
	mov	qword ptr [rsp + 8], r15
	mov	rdi, rbx
	call	malloc
	mov	r13, rax
	test	r13, r13
	je	.label_591
	xor	esi, esi
	mov	rdi, r13
	mov	rdx, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	jmp	.label_595
.label_590:
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_618
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	je	.label_621
	jmp	.label_624
.label_646:
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	r12, rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r13
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
.label_595:
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_618
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	jne	.label_636
	cmp	qword ptr [r13], 0
	mov	esi, 0
	jne	.label_636
	test	rbp, rbp
	jle	.label_621
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_649:
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rax + rcx*8 - 8]
	test	rsi, rsi
	je	.label_644
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_646
.label_644:
	cmp	rcx, 2
	mov	rcx, rbp
	jge	.label_649
.label_621:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	mov	r12, qword ptr [rsp + 0x40]
.label_522:
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
.label_764:
	mov	rbp, qword ptr [rsp + 0x20]
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_554
	cmp	r12, rbp
	jge	.label_701
	jmp	.label_554
.label_636:
	test	rbp, rbp
	js	.label_662
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x168], r12
	jmp	.label_665
	nop	word ptr cs:[rax + rax]
.label_690:
	mov	rsi, qword ptr [r14 + r15*8 + 8]
	inc	r15
.label_665:
	mov	rdx, qword ptr [r13 + r15*8]
	test	rsi, rsi
	je	.label_670
	test	rdx, rdx
	je	.label_674
	add	rsi, 8
	add	rdx, 8
	lea	r12, [rsp + 0x1f8]
	mov	rdi, r12
	call	re_node_set_init_union
	mov	ebx, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	jne	.label_676
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	call	re_acquire_state
	mov	qword ptr [r14 + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x208]
	call	free
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x168]
	je	.label_674
	jmp	.label_627
.label_670:
	mov	qword ptr [r14 + r15*8], rdx
.label_674:
	cmp	r15, rbp
	jl	.label_690
.label_662:
	xor	ebx, ebx
.label_627:
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_618
.label_624:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	qword ptr [rsp + 0x118], r14
	mov	qword ptr [rsp + 0x110], r12
	mov	qword ptr [rsp + 0x108], rbp
	mov	r15, qword ptr [rsp + 0x38]
.label_574:
	test	r15, r15
	je	.label_703
	cmp	r15, 1
	je	.label_705
	mov	rax, qword ptr [rsp + 0x268]
	lea	rdi, [rax + 0x10]
	cmp	r15, 2
	mov	edx, 2
	cmova	rdx, r15
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_705:
	mov	rax, qword ptr [rsp + 0x268]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rcx + 8], rax
	cmp	r15, 2
	jb	.label_712
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_712
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_721
	xor	eax, eax
	jmp	.label_724
.label_703:
	xor	ebx, ebx
	jmp	.label_554
.label_721:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_724:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rcx]
	movzx	r8d, al
	lea	rsi, [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x268]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_554
.label_712:
	cmp	byte ptr [rsp + 0xec], 0
	jne	.label_732
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	mov	edx, r15d
	and	edx, 1
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x190], rbx
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_733
	mov	rsi, r15
	sub	rsi, rdx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rdi, [rcx + 0x18]
	xor	ecx, ecx
	nop	
.label_744:
	mov	rbp, qword ptr [rdi - 0x18]
	cmp	rbp, -1
	je	.label_986
	add	rbp, rax
	mov	qword ptr [rdi - 0x18], rbp
	add	qword ptr [rdi - 0x10], rax
.label_986:
	mov	rbp, qword ptr [rdi - 8]
	cmp	rbp, -1
	je	.label_742
	add	rbp, rax
	mov	qword ptr [rdi - 8], rbp
	add	qword ptr [rdi], rax
.label_742:
	add	rcx, 2
	add	rdi, 0x20
	cmp	rsi, rcx
	jne	.label_744
.label_733:
	test	rdx, rdx
	je	.label_747
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rdx + rcx]
	cmp	rdx, -1
	je	.label_747
	mov	rsi, qword ptr [rsp + 0x268]
	mov	rdi, rsi
	lea	rsi, [rdi + rcx]
	add	rdx, rax
	mov	qword ptr [rsi], rdx
	add	qword ptr [rdi + rcx + 8], rax
.label_747:
	test	rbx, rbx
	jle	.label_754
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x268]
	mov	rdx, rbx
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_754:
	mov	rax, qword ptr [r14 + 0xe0]
	test	rax, rax
	je	.label_541
	cmp	r15, 2
	mov	ebx, 0
	jb	.label_554
	mov	rcx, qword ptr [rsp + 0x188]
	sub	qword ptr [rsp + 0x190], rcx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_771:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_998
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_998:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x190], rdx
	jne	.label_771
	jmp	.label_554
.label_541:
	xor	ebx, ebx
	jmp	.label_554
.label_841:
	cmp	eax, 0xc
	je	.label_512
	mov	edi, OFFSET FLAT:label_774
	mov	esi, OFFSET FLAT:label_775
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_776
	call	__assert_fail
.label_823:
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_512
	mov	edi, OFFSET FLAT:label_774
	mov	esi, OFFSET FLAT:label_775
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_776
	call	__assert_fail
.label_591:
	mov	qword ptr [rsp + 0x1e8], r14
.label_586:
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, r13
	call	free
.label_512:
	mov	ebx, 0xc
.label_554:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_792
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
.label_792:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	free
	cmp	byte ptr [rsp + 0xeb], 0
	je	.label_816
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
.label_816:
	mov	eax, ebx
	add	rsp, 0x228
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_732:
	mov	r8, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 8]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x188]
.label_826:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	je	.label_870
	mov	rdi, qword ptr [rsp + 0x90]
	cmp	rsi, rdi
	lea	rsi, [r8 + rsi*8]
	lea	rbp, [rsp + 0x98]
	mov	rax, rbp
	cmove	rsi, rax
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx - 8], rsi
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	lea	rdi, [r8 + rbp*8]
	cmove	rdi, rax
	mov	rbp, qword ptr [rsp + 0x20]
	add	rsi, rbp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	qword ptr [rcx], rbp
.label_870:
	add	rcx, 0x10
	dec	rdx
	jne	.label_826
	jmp	.label_747
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a60
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
	#Procedure 0x409a80

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
	mov	rbx, rcx
	test	rbx, rbx
	mov	rbp, -1
	js	.label_1159
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], r9
	cmp	rbx, rdx
	jg	.label_1159
	xor	r12d, r12d
	add	r8, rbx
	js	.label_1173
	mov	r12, r8
.label_1173:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rbx
	mov	eax, r13d
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_1172
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1172
	mov	rbp, qword ptr [rdi + 0x20]
	test	rbp, rbp
	mov	eax, r13d
	je	.label_1172
	mov	r14, rbx
	mov	rbx, qword ptr [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdx, rbp
	mov	r15, rdi
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1188
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1188:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1164
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1164:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1169
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rdi, qword ptr [rsp + 8]
.label_1169:
	mov	al, byte ptr [rdi + 0x38]
	or	al, 8
	mov	byte ptr [rdi + 0x38], al
	mov	rbx, r14
	mov	rsi, qword ptr [rsp + 0x60]
.label_1172:
	xor	r14d, r14d
	test	rsi, rsi
	mov	r15d, 1
	je	.label_1161
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1161
	and	al, 6
	cmp	al, 4
	jne	.label_1191
	mov	rax, qword ptr [rsi]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1187
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1193
	mov	r14, rsi
.label_1193:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1161
	mov	r15, rax
	jmp	.label_1161
.label_1191:
	mov	r15, qword ptr [rdi + 0x30]
.label_1187:
	inc	r15
	mov	r14, rsi
.label_1161:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1159
	mov	ecx, r13d
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x20]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1192
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1171:
	call	free
.label_1159:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1192:
	test	r14, r14
	mov	rdi, r12
	je	.label_1176
	mov	qword ptr [rsp + 0x10], rbx
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1179
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1178
	test	al, al
	jne	.label_1182
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1166
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1162
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1190:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1167
.label_1179:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1167
	mov	edi, OFFSET FLAT:label_1174
	mov	esi, OFFSET FLAT:label_775
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1175
	call	__assert_fail
.label_1178:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1180
	mov	rbx, rax
.label_1167:
	test	r15, r15
	jle	.label_1183
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1186
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1177:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1177
.label_1186:
	test	r9, r9
	je	.label_1181
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1181:
	mov	rbx, qword ptr [r14]
	jmp	.label_1163
.label_1183:
	xor	r15d, r15d
.label_1163:
	cmp	r15, rbx
	jae	.label_1189
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1165:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1165
	mov	ebp, r13d
	jmp	.label_1168
.label_1189:
	mov	ebp, r13d
	mov	rbx, qword ptr [rsp + 0x10]
.label_1168:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1171
.label_1176:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1171
	cmp	rbp, rbx
	jne	.label_1185
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rbx
	jmp	.label_1171
.label_1180:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x18], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1166
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	test	rax, rax
	je	.label_1170
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1190
.label_1162:
	mov	rdi, qword ptr [rsp + 0x18]
.label_1160:
	call	free
.label_1166:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1168
.label_1182:
	mov	edi, OFFSET FLAT:label_1184
	mov	esi, OFFSET FLAT:label_775
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1175
	call	__assert_fail
.label_1185:
	mov	edi, OFFSET FLAT:label_1194
	mov	esi, OFFSET FLAT:label_775
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1195
	call	__assert_fail
.label_1170:
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1160
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f20

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
	#Procedure 0x409f40
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1196
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1199
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1196
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1197
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1200
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1196
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1197
.label_1199:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1198
.label_1196:
	mov	rax, -2
	jmp	.label_1201
.label_1198:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1197
.label_1200:
	mov	r13, r15
.label_1197:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1201:
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
	#Procedure 0x40a050
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1205
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1207
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1205
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1204
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1202
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1205
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1204
.label_1207:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1206
.label_1205:
	mov	rax, -2
	jmp	.label_1203
.label_1206:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1204
.label_1202:
	mov	r13, r15
.label_1204:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1203:
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
	#Procedure 0x40a160
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_1208
	mov	eax, r9d
.label_1208:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a190

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
	je	.label_1209
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1209:
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
	#Procedure 0x40a1f0

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
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_1222
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1222
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1225
.label_1222:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1227
.label_1225:
	cmp	rdx, r15
	jle	.label_1234
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1236
.label_1233:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1241
	cmp	rbp, -2
	jne	.label_1242
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1242
.label_1241:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_1247
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1247
	nop	
.label_1236:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1256
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1256
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1247:
	mov	rax, r15
	jmp	.label_1210
	nop	dword ptr [rax]
.label_1256:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1233
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_1239
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_1235
	nop	word ptr cs:[rax + rax]
.label_1239:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_1252
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_1235:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1210
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1210:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1236
	jmp	.label_1245
.label_1252:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_1268
.label_1242:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1234:
	mov	rax, r15
.label_1245:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1214
.label_1227:
	cmp	r15, rdx
	jge	.label_1219
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_1268:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1226
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1257:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1243
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1246
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1253
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1255
.label_1226:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1257
	xor	esi, esi
.label_1262:
	cmp	rsi, rdx
	jge	.label_1257
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1262
	jmp	.label_1257
.label_1243:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1269
	cmp	r14, -2
	jne	.label_1211
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1211
.label_1269:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1216
.label_1270:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1221
.label_1229:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1238
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1238
.label_1253:
	cmp	rcx, -1
	je	.label_1246
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1248
.label_1211:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1219:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1214:
	xor	eax, eax
.label_1267:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1246:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1255:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1260
.label_1254:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1238
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1217
.label_1238:
	mov	rbp, r15
.label_1217:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1227
.label_1260:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1218
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1218
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1231
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_605]
	movdqa	xmm3, xmmword ptr [rip + label_604]
	movdqa	xmm4, xmmword ptr [rip + label_607]
	movdqa	xmm5, xmmword ptr [rip + label_606]
.label_1220:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_1220
	jmp	.label_1230
.label_1248:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1266
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1250
.label_1266:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1249
	test	r15, r15
	je	.label_1223
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1212
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1212
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1237
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1240
.label_1231:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1230:
	test	rdx, rdx
	je	.label_1251
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_604]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1251:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1254
.label_1218:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1258:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1258
	jmp	.label_1254
.label_1250:
	mov	eax, 0xc
	jmp	.label_1267
.label_1237:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_604]
	movdqa	xmm9, xmmword ptr [rip + label_605]
	movdqa	xmm10, xmmword ptr [rip + label_606]
	movdqa	xmm11, xmmword ptr [rip + label_607]
	movdqa	xmm5, xmmword ptr [rip + label_608]
	movdqa	xmm6, xmmword ptr [rip + label_609]
	movdqa	xmm7, xmmword ptr [rip + label_610]
	movdqa	xmm1, xmmword ptr [rip + label_611]
.label_1232:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1232
.label_1240:
	test	rdx, rdx
	je	.label_1259
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_604]
	movdqa	xmm2, xmmword ptr [rip + label_605]
.label_1215:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1215
.label_1259:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1223
.label_1212:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1212
.label_1223:
	mov	byte ptr [r13 + 0x8c], 1
.label_1249:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_1228
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1244
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1244
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1263]
	movdqa	xmm8, xmmword ptr [rip + label_604]
	movdqa	xmm9, xmmword ptr [rip + label_605]
	movdqa	xmm10, xmmword ptr [rip + label_1264]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1265],  0xe8
	mov	rdi, r8
.label_1224:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_1224
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1228
.label_1244:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1213:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1213
.label_1228:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1261
	add	qword ptr [r13 + 0x68], rcx
.label_1261:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1227
.label_1216:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1270
.label_1221:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1229
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab20

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
	jle	.label_1279
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1273
	nop	dword ptr [rax + rax]
.label_1275:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1280
.label_1277:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1274:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1271
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1271:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1273
	jmp	.label_1283
.label_1281:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1274
.label_1282:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1272
	xor	eax, eax
.label_1278:
	cmp	rax, rdx
	jge	.label_1276
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
	jl	.label_1278
	lea	rsi, [rsp + 0x10]
	jmp	.label_1272
.label_1280:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1277
.label_1276:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1272
	nop	
.label_1273:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1282
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1272:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1275
	cmp	rax, -2
	jne	.label_1281
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1275
	mov	qword ptr [r14], rbp
.label_1279:
	mov	rcx, rbx
.label_1283:
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
	#Procedure 0x40aca0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x18], r8
	mov	qword ptr [rsp + 0x10], r9
	call	parse_branch
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_1301
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1287
.label_1301:
	cmp	byte ptr [r12 + 8], 0xa
	jne	.label_1305
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_1300
	jmp	.label_1284
.label_1305:
	mov	r13, rbx
	jmp	.label_1287
.label_1304:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1299
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1294
	nop	word ptr cs:[rax + rax]
.label_1300:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r14d, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_1289
	cmp	eax, 9
	mov	r14d, 0
	je	.label_1289
	mov	rbp, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r13
	call	parse_branch
	mov	r14, rax
	test	r14, r14
	jne	.label_1298
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1286
.label_1298:
	or	qword ptr [r15 + 0xa8], rbp
	nop	dword ptr [rax]
.label_1289:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1304
	mov	rax, qword ptr [r15 + 0x70]
.label_1294:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1285
	mov	qword ptr [rbx], r13
.label_1285:
	test	r14, r14
	je	.label_1297
	mov	qword ptr [r14], r13
.label_1297:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_1300
	jmp	.label_1287
.label_1290:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1299
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1303
	nop	word ptr [rax + rax]
.label_1284:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	mov	ebp, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_1293
	mov	r14, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1307
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1286
.label_1307:
	or	qword ptr [r15 + 0xa8], r14
.label_1293:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1290
	mov	rax, qword ptr [r15 + 0x70]
.label_1303:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1292
	mov	qword ptr [rbx], r13
.label_1292:
	test	rbp, rbp
	je	.label_1306
	mov	qword ptr [rbp], r13
.label_1306:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_1284
.label_1287:
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1286:
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_1287
	mov	r14d, 0x400ff
	xor	r13d, r13d
.label_1291:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1291
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1291
.label_1288:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1296
	cmp	eax, 6
	jne	.label_1295
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1302
.label_1296:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1302:
	call	free
.label_1295:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1287
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1288
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1288
	jmp	.label_1291
.label_1299:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_1287
	.section	.text
	.align	32
	#Procedure 0x40b040

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1336
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1315
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1315
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1319
.label_1315:
	cmp	bl, 0x5c
	jne	.label_1325
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1330
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1334
.label_1321:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_1333:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1339
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_1338
.label_1336:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_475
.label_1325:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1332
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1341
.label_1330:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_1311
.label_1332:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1341:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_475
	jmp	qword ptr [(rcx * 8) + label_1322]
.label_2587:
	mov	rcx, r12
	test	ch, 8
	je	.label_475
	jmp	.label_525
.label_1339:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1338:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_475
	jmp	qword ptr [(rcx * 8) + label_1323]
.label_2621:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_475
.label_1319:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_1311:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_475:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2588:
	mov	rdx, r12
	test	dl, 8
	jne	.label_537
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_537
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_475
	mov	eax, dword ptr [r15 + 8]
.label_537:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_475
.label_2589:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_475
	jmp	.label_549
.label_2590:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_475
	jmp	.label_982
.label_2591:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2592:
	test	r12w, 0x402
	jne	.label_475
	jmp	.label_555
.label_2593:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2594:
	test	r12w, 0x402
	jne	.label_475
	jmp	.label_563
.label_2595:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2596:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_552
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_552
	test	dh, 8
	je	.label_475
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_475
.label_552:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_475
.label_2597:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_475
	jmp	.label_576
.label_2598:
	mov	rcx, r12
	test	ch, 4
	jne	.label_475
	test	cx, cx
	js	.label_525
	jmp	.label_475
.label_2599:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_475
	jmp	.label_583
.label_2617:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_475
.label_2618:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_475
.label_549:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2619:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_475
.label_982:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2620:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_475
.label_555:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2622:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_475
.label_2623:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_475
.label_2624:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_475
.label_563:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2625:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_475
.label_2626:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2627:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2628:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_475
.label_2629:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_475
.label_2630:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2631:
	test	r12d, 0x80000
	jne	.label_475
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2632:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_475
.label_576:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2633:
	mov	rcx, r12
	test	ch, 4
	jne	.label_475
	test	cx, cx
	js	.label_475
.label_525:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_2634:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_475
.label_583:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_475
.label_1334:
	cmp	edx, 2
	jl	.label_1317
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1321
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1317
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1321
.label_1317:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1326
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1326:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_1333
	test	bl, bl
	js	.label_1321
	jmp	.label_1333
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b660

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
	mov	rbp, r9
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, qword ptr [r13]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], r8
	call	parse_expression
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_1371
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1358
.label_1371:
	cmp	qword ptr [rsp], 0
	jne	.label_1356
	jmp	.label_1357
	nop	word ptr cs:[rax + rax]
.label_1352:
	test	rbx, rbx
	cmove	rbx, r14
.label_1357:
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	je	.label_1374
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1379
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_1349
.label_1379:
	test	rbx, rbx
	je	.label_1352
	test	r14, r14
	je	.label_1352
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1354
	mov	rax, qword ptr [r15 + 0x70]
.label_1370:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1357
.label_1354:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1368
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1370
	nop	word ptr cs:[rax + rax]
.label_1351:
	test	rbx, rbx
	cmove	rbx, r14
.label_1356:
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1374
	cmp	eax, 9
	je	.label_1374
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1378
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_1349
.label_1378:
	test	rbx, rbx
	je	.label_1351
	test	r14, r14
	je	.label_1351
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1353
	mov	rax, qword ptr [r15 + 0x70]
.label_1369:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1356
.label_1353:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1368
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1369
.label_1374:
	mov	r14, rbx
.label_1358:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1349:
	xor	r14d, r14d
	test	al, al
	je	.label_1358
	mov	r15d, 0x400ff
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1363:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1363
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1363
.label_1360:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1377
	cmp	eax, 6
	jne	.label_1372
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1355
.label_1377:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1355:
	call	free
.label_1372:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1358
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1360
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1360
	jmp	.label_1363
.label_1368:
	mov	rcx, rbp
	mov	r15d, 0x400ff
.label_1364:
	mov	r12, r14
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jne	.label_1364
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	jne	.label_1364
.label_1376:
	mov	eax, dword ptr [r12 + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1366
	cmp	eax, 6
	jne	.label_1367
	mov	r14, qword ptr [r12 + 0x28]
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 8]
	call	free
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	jmp	.label_1373
.label_1366:
	mov	rdi, qword ptr [r12 + 0x28]
.label_1373:
	call	free
	mov	rcx, rbp
.label_1367:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1375
	mov	r14, qword ptr [rax + 0x10]
	cmp	r14, r12
	mov	r12, rax
	je	.label_1376
	test	r14, r14
	mov	r12, rax
	je	.label_1376
	jmp	.label_1364
.label_1375:
	mov	r14d, 0x400ff
.label_1365:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1365
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1365
.label_1362:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1380
	cmp	eax, 6
	jne	.label_1350
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1359
.label_1380:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1359:
	call	free
	mov	rcx, rbp
.label_1350:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1361
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1362
	test	rbx, rbx
	mov	r15, rax
	je	.label_1362
	jmp	.label_1365
.label_1361:
	mov	dword ptr [rcx], 0xc
	xor	r14d, r14d
	jmp	.label_1358
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba70

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_819
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1381]
.label_2542:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_466
	mov	ecx, OFFSET FLAT:label_467
	jmp	.label_468
.label_2543:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_843
	mov	ecx, OFFSET FLAT:label_38
.label_468:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_846
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_506:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_517
	jmp	.label_819
.label_846:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_517
.label_2533:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_850
	mov	rax, qword ptr [rdi + 0x70]
.label_879:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_853
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_862
	mov	rbp, r14
	jmp	.label_517
.label_917:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_866
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_868
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_904:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_899:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_882
	mov	rax, qword ptr [rsi + 0x70]
.label_914:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_557
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_862
	jmp	.label_517
.label_868:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_899
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_904
.label_882:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_557
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_914
.label_862:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_917
	mov	rbp, r14
	jmp	.label_517
.label_2534:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_920
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_924
	mov	rax, qword ptr [rdi + 0x70]
.label_901:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_517
.label_2535:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_947
	mov	rax, qword ptr [rdi + 0x70]
.label_874:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_517
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_517
.label_2536:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_960
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_819
	cmp	byte ptr [r10 + 8], 9
	jne	.label_967
	mov	r15, rbp
.label_960:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_970
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_970:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_973
	mov	rax, qword ptr [rsi + 0x70]
.label_944:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_975
	mov	qword ptr [rdi], rbp
.label_975:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_517
.label_2539:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_989
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_977
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_991
	movdqa	xmm0, xmmword ptr [rip + label_996]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_991
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_977:
	mov	eax, dword ptr [r10]
.label_989:
	cmp	eax, 0x200
	je	.label_1003
	cmp	eax, 0x100
	jne	.label_966
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1006
	mov	rax, qword ptr [rdi + 0x70]
.label_981:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1011
.label_2541:
	test	ebx, 0x1000000
	jne	.label_448
.label_2538:
	test	bl, 0x20
	jne	.label_448
	test	bl, 0x10
	jne	.label_454
.label_2537:
	test	ebx, 0x20000
	jne	.label_455
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_455
	mov	dword ptr [r12], 0x10
	jmp	.label_458
.label_455:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_461
	mov	rax, qword ptr [rdi + 0x70]
.label_869:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_750:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_517
.label_2540:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_488
	test	r15, r15
	je	.label_488
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_496
	cmp	cl, 2
	je	.label_497
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_501
.label_2544:
	mov	dword ptr [r12], 5
	jmp	.label_458
.label_454:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_853:
	mov	rbp, r14
	jmp	.label_517
.label_496:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_829
	or	byte ptr [r14 + 1], 4
.label_829:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_497
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_501:
	cmp	cl, 0x15
	jne	.label_528
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_528:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_531
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_540
.label_860:
	cmp	al, 2
	je	.label_536
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_540
	jmp	.label_531
.label_2473:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_544
	mov	rax, qword ptr [r15]
.label_600:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_548
.label_2474:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_553
	jmp	.label_556
.label_694:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_558
.label_748:
	xor	eax, eax
.label_558:
	cmp	r15d, 3
	je	.label_559
	test	r15d, r15d
	jne	.label_560
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_562
.label_559:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_562
.label_560:
	xor	ebx, ebx
.label_562:
	cmp	ebp, 3
	je	.label_566
	test	ebp, ebp
	jne	.label_568
.label_566:
	test	r12, r12
	movzx	edx, al
	je	.label_569
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_569
.label_568:
	mov	edx, dword ptr [rsp + 0x58]
.label_569:
	cmp	r15d, 3
	je	.label_570
	test	r15d, r15d
	jne	.label_571
.label_570:
	test	r12, r12
	movzx	eax, bl
	je	.label_573
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_573
.label_571:
	mov	eax, dword ptr [rsp + 0xa0]
.label_573:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_577
	cmp	eax, -1
	je	.label_577
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_578
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_577
.label_578:
	test	r12, r12
	je	.label_582
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_584
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_620:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_582:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_593:
	cmp	rdx, rcx
	ja	.label_588
	cmp	rcx, rax
	ja	.label_588
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_588:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_593
	mov	dword ptr [r12], 0
	jmp	.label_548
.label_544:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_472
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_600
.label_584:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_617
	test	rbp, rbp
	je	.label_617
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_620
.label_540:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_956
	cmp	ebp, 4
	jne	.label_630
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_548
	jmp	.label_469
.label_630:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_638
	cmp	al, 2
	jne	.label_641
	jmp	.label_643
.label_638:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_650
	cmp	cl, 2
	je	.label_652
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_661
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_577
	cmp	r15d, 4
	je	.label_577
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_655
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_577
.label_655:
	cmp	r15d, 3
	jne	.label_685
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_577
.label_685:
	cmp	ebp, 3
	je	.label_694
	test	ebp, ebp
	jne	.label_748
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_558
.label_650:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_641:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_702
	jmp	qword ptr [(rax * 8) + label_706]
.label_2472:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_707
.label_956:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_711
.label_553:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_707:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_548:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_860
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_723
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_723:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_729
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_729:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_735
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_735
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_735
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_735
	cmp	eax, 2
	jl	.label_738
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_735
	test	byte ptr [r15 + 0x20], 1
	jne	.label_735
.label_738:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_837
	mov	rax, qword ptr [rsi + 0x70]
.label_473:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_750
.label_735:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_757
	mov	rax, qword ptr [r9 + 0x70]
.label_909:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_653
	cmp	qword ptr [r14 + 8], 0
	jne	.label_653
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_653
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_773
.label_653:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_669
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_919:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_780
	mov	rax, qword ptr [r9 + 0x70]
.label_933:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_517:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_1032:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_819
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_819
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_822
	mov	rsi, -1
	jmp	.label_810
	nop	word ptr cs:[rax + rax]
.label_822:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_930:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_940
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_1090
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_1049
.label_1077:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1034
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_1054:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1054
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1054
	nop	word ptr cs:[rax + rax]
.label_1071:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_1035
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1035
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1035:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1034
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1071
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1071
	jmp	.label_1054
	nop	word ptr cs:[rax + rax]
.label_1034:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1080
	mov	rax, qword ptr [rbp + 0x70]
.label_1053:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1087
	mov	qword ptr [r12], r14
.label_1087:
	add	r11, 2
	cmp	r11, r15
	jg	.label_1059
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1061
.label_884:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_810:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_873
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_878
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_881
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_810
	cmp	eax, 1
	jne	.label_810
	cmp	r13, -2
	je	.label_810
	cmp	dl, 0x39
	ja	.label_810
	cmp	r13, -1
	jne	.label_884
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_810
	nop	dword ptr [rax]
.label_873:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_881:
	cmp	r13, -1
	jne	.label_888
	cmp	sil, 0x2c
	jne	.label_890
	cmp	eax, 1
	mov	r13d, 0
	je	.label_892
	jmp	.label_890
	nop	word ptr [rax + rax]
.label_888:
	cmp	r13, -2
	je	.label_878
.label_892:
	cmp	bl, 0x18
	je	.label_896
	cmp	bl, 1
	jne	.label_878
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_878
	mov	rdx, -1
	jmp	.label_900
.label_896:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_902
.label_921:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_900:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_910
	cmp	al, 2
	je	.label_878
	cmp	cl, 0x2c
	je	.label_910
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_900
	cmp	eax, 1
	jne	.label_900
	cmp	r15, -2
	je	.label_900
	cmp	cl, 0x39
	ja	.label_900
	cmp	r15, -1
	jne	.label_921
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_900
.label_910:
	cmp	r15, -2
	je	.label_878
.label_902:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_890
	cmp	eax, 0x18
	jne	.label_890
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_930
	mov	dword ptr [r12], 0xf
	jmp	.label_585
	nop	dword ptr [rax]
.label_890:
	mov	dword ptr [r12], 0xa
	jmp	.label_585
.label_878:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_938
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_940
.label_1062:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1106
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1107
.label_1084:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1028
.label_1055:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1019
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1060
.label_1106:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1045
.label_1031:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_1045:
	xor	r12d, r12d
.label_1028:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_1019
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1095
	nop	dword ptr [rax + rax]
.label_1061:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1062
	mov	rax, qword ptr [rbp + 0x70]
.label_1107:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_1070
	nop	dword ptr [rax + rax]
.label_1030:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_1070:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1103
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_1104
	nop	dword ptr [rax]
.label_1103:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1040:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1016
	test	r12, r12
	jne	.label_1020
.label_1016:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_1040
	jmp	.label_1023
.label_1020:
	lea	rbx, [r13 + 0x10]
.label_1104:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1051
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1030
.label_1051:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1031
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1030
.label_1023:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1084
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_1095:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_1019
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1055
	mov	rax, qword ptr [rbp + 0x70]
.label_1060:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_1061
.label_1059:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_1083
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_1085
	mov	rax, qword ptr [rbp + 0x70]
.label_1072:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_1093
.label_1083:
	mov	r12, qword ptr [rsp + 0x48]
.label_1093:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_1026
.label_1090:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_1041:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1041
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1041
.label_1039:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1018
	cmp	eax, 6
	jne	.label_1021
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1029
.label_1018:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1029:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_1021:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_940
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1039
	test	rax, rax
	mov	rbx, rdx
	je	.label_1039
	jmp	.label_1041
.label_1049:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_1063
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1042
.label_1080:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1019
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1053
.label_1085:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_940
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1072
.label_938:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_585
.label_1022:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1088
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1091
.label_1097:
	mov	r12, rbx
	jmp	.label_1098
.label_1088:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1099
.label_1065:
	mov	qword ptr [r15], 0
.label_1099:
	xor	r12d, r12d
.label_1098:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_1019
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1017
.label_1042:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_1022
	mov	rax, qword ptr [rbp + 0x70]
.label_1091:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_1027
.label_1079:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1027:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_1050
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_1056
.label_1050:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_1067:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1043
	test	r12, r12
	jne	.label_1047
.label_1043:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_1067
	jmp	.label_1073
.label_1047:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_1056:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1076
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1079
.label_1076:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1065
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1079
.label_1073:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1097
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_1017:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1101
	mov	qword ptr [rbx], rdx
.label_1101:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_1019
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_1042
.label_1063:
	cmp	r11, r15
	jne	.label_1025
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_940
.label_1025:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_1094
	mov	rax, qword ptr [rbp + 0x70]
.label_1102:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_1033
.label_1081:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1033:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1057
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_1064
.label_1057:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_1074:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1069
	test	rbx, rbx
	jne	.label_1075
.label_1069:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_1074
	jmp	.label_1077
.label_1075:
	lea	r15, [r14 + 0x10]
.label_1064:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1078
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1081
.label_1078:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1086
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1081
.label_1094:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1100
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1102
.label_1100:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1105
.label_1086:
	mov	qword ptr [r15], 0
.label_1105:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_1019:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_585:
	xor	ecx, ecx
.label_940:
	test	rcx, rcx
	sete	al
	jne	.label_1024
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1026
	jmp	.label_1037
	nop	word ptr cs:[rax + rax]
.label_1024:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_1026:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_1032
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_1038
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_1032
.label_1038:
	test	al, al
	jne	.label_448
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_1044:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1044
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1044
	nop	word ptr cs:[rax + rax]
.label_1058:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1046
	cmp	eax, 6
	jne	.label_1036
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1052
	nop	dword ptr [rax]
.label_1046:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1052:
	call	free
.label_1036:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_448
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1058
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1058
	jmp	.label_1044
.label_448:
	mov	dword ptr [r12], 0xd
.label_458:
	xor	r15d, r15d
.label_819:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1003:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_867
	mov	rax, qword ptr [rdi + 0x70]
.label_992:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1011:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_803
	mov	rax, qword ptr [rdi + 0x70]
.label_953:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_951:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_814
	mov	rax, qword ptr [rdi + 0x70]
.label_958:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_818
	mov	qword ptr [r14], r15
.label_818:
	test	rbp, rbp
	je	.label_557
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_828
	jmp	.label_557
.label_966:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_831
	mov	rax, qword ptr [rdi + 0x70]
.label_1000:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_828:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_819
.label_866:
	mov	rbp, r14
	jmp	.label_517
.label_1037:
	xor	r15d, r15d
	test	r9, r9
	je	.label_819
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1048:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_1048
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_1048
.label_1092:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1068
	cmp	eax, 6
	jne	.label_1066
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1082
.label_1068:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1082:
	call	free
.label_1066:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_819
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_1092
	test	r9, r9
	mov	rbx, rax
	je	.label_1092
	jmp	.label_1048
.label_773:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_517
.label_531:
	mov	dword ptr [r12], eax
	jmp	.label_469
.label_536:
	mov	dword ptr [r12], 7
	jmp	.label_469
.label_461:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_557
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_869
.label_497:
	mov	dword ptr [r12], 2
	jmp	.label_469
.label_850:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_557
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_879
.label_920:
	mov	dword ptr [r12], 6
	jmp	.label_458
.label_947:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_557
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_874
.label_488:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_557
.label_924:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_557
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_901
.label_757:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_472
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_909
.label_669:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_472
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_919
.label_780:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_472
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_933
.label_711:
	mov	dword ptr [r12], 3
	jmp	.label_469
.label_973:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_557
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_944
.label_803:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_951
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_953
.label_814:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_557
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_958
.label_643:
	mov	dword ptr [r12], 7
	jmp	.label_469
.label_991:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_974:
	mov	rsi, r14
	xor	eax, eax
.label_972:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_965
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_965:
	cmp	esi, 0x5f
	je	.label_968
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_969
.label_968:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_969:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_972
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_974
	jmp	.label_977
.label_1006:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_979
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_981
.label_867:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_979
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_992
.label_831:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_557
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1000
.label_557:
	mov	dword ptr [r12], 0xc
	jmp	.label_458
.label_652:
	mov	dword ptr [r12], 7
	jmp	.label_465
.label_979:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1011
.label_967:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_441
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_444:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_444
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_444
.label_462:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_446
	cmp	eax, 6
	jne	.label_449
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_547
.label_446:
	mov	rdi, qword ptr [rbp + 0x28]
.label_547:
	call	free
.label_449:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_441
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_462
	test	rcx, rcx
	mov	rbp, rax
	je	.label_462
	jmp	.label_444
.label_441:
	mov	dword ptr [r12], 8
	jmp	.label_458
.label_661:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_465
.label_556:
	mov	dword ptr [r12], 3
	jmp	.label_469
.label_837:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_472
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_473
.label_472:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_465
.label_702:
	mov	edi, OFFSET FLAT:label_483
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_485
	call	__assert_fail
.label_617:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_577:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_465:
	mov	r15, qword ptr [rsp + 0x30]
.label_469:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_506
	.section	.text
	.align	32
	#Procedure 0x40e190

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1394
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1398
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1385
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1387
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1391:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1391
.label_1387:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1399
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1399:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1383
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1383:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1392
	mov	rax, qword ptr [r12 + 0x70]
.label_1384:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1396
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1388
	mov	rbp, qword ptr [r12 + 0x70]
.label_1397:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1395
	mov	rcx, qword ptr [r12 + 0x70]
.label_1393:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1386
.label_1396:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_1386:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1394:
	mov	dword ptr [r15], 0xc
	jmp	.label_1389
.label_1398:
	mov	rdi, rbx
	jmp	.label_1390
.label_1385:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_1389
.label_1392:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1382
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1384
.label_1388:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1382
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1397
.label_1382:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1390:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1389:
	xor	eax, eax
	jmp	.label_1386
.label_1395:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1386
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1393
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e570

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1409
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1403
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1403
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1401
.label_1403:
	test	dl, 1
	je	.label_1407
	cmp	al, 0x5c
	jne	.label_1407
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1407
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1401
.label_1409:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1407:
	cmp	al, 0x5c
	jg	.label_1404
	cmp	al, 0x2d
	je	.label_1405
	cmp	al, 0x5b
	jne	.label_1401
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1406
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_1408
	cmp	al, 0x3a
	je	.label_1410
	cmp	al, 0x2e
	jne	.label_1402
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1404:
	cmp	al, 0x5d
	je	.label_1400
	cmp	al, 0x5e
	jne	.label_1401
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1401:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1405:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1400:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1406:
	mov	byte ptr [rdi], 0
.label_1402:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1408:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1410:
	test	dl, 4
	je	.label_1402
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e660

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1411
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1411
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_1414:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_1412
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_1414
.label_1412:
	cmp	edi, 2
	jl	.label_1411
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1415
.label_1411:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_758
	jmp	qword ptr [(rax * 8) + label_1413]
.label_2478:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_762
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_1335
	nop	word ptr cs:[rax + rax]
.label_1308:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_1335:
	cmp	dil, 0x1e
	jne	.label_1345
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1331
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1313
	nop	dword ptr [rax]
.label_1345:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1320:
	mov	bl, byte ptr [rbx + rdx]
.label_1313:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_762
	cmp	bl, r11b
	jne	.label_1318
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_1346
.label_1318:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_1308
	jmp	.label_762
.label_1331:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1344
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1327
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1343
.label_1327:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1343
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1312
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1312
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1348:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1312
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1348
.label_1312:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1313
.label_1344:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1320
.label_1343:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1313
.label_1346:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_1314
	cmp	cl, 0x1c
	je	.label_1340
	cmp	cl, 0x1a
	jne	.label_762
	mov	dword ptr [r14], 3
	jmp	.label_762
.label_1314:
	mov	dword ptr [r14], 4
	jmp	.label_762
.label_1340:
	mov	dword ptr [r14], 2
	jmp	.label_762
.label_2477:
	test	r9b, r9b
	jne	.label_758
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_762
.label_758:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1415:
	xor	eax, eax
.label_762:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8c0

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
	je	.label_1447
	mov	esi, OFFSET FLAT:label_1443
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1481
	mov	esi, OFFSET FLAT:label_1452
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1447
.label_1481:
	mov	r12d, OFFSET FLAT:label_1454
.label_1447:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1455
.label_1421:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_466
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1464
	mov	esi, OFFSET FLAT:label_1466
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1467
	mov	esi, OFFSET FLAT:label_1452
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1471
	mov	esi, OFFSET FLAT:label_843
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1474
	mov	esi, OFFSET FLAT:label_1454
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1479
	mov	esi, OFFSET FLAT:label_1480
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1485
	mov	esi, OFFSET FLAT:label_1487
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1490
	mov	esi, OFFSET FLAT:label_1443
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1492
	mov	esi, OFFSET FLAT:label_1495
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1497
	mov	esi, OFFSET FLAT:label_1499
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1500
	mov	esi, OFFSET FLAT:label_1417
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1420
	mov	esi, OFFSET FLAT:label_1422
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1418
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1427
	xor	ecx, ecx
.label_1434:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_1430
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1430:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1434
	jmp	.label_1418
.label_1464:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1438
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1448:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_1440
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1440:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1448
	jmp	.label_1418
.label_1467:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1450
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1458:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_1451
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1451:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1458
	jmp	.label_1418
.label_1471:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1462
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1469:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_1463
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1463:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1469
	jmp	.label_1418
.label_1474:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1473
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1488:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1478
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1478:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1488
	jmp	.label_1418
.label_1479:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1491
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1416:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_1496
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1496:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1416
	jmp	.label_1418
.label_1485:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1423
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1501:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_1426
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1426:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1501
	jmp	.label_1418
.label_1490:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1433
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1441:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_1437
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1437:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1441
	jmp	.label_1418
.label_1492:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1445
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1453:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_1449
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1449:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1453
	jmp	.label_1418
.label_1497:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1456
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1465:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_1459
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1459:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1465
	jmp	.label_1418
.label_1500:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1468
	xor	ecx, ecx
.label_1477:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_1470
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1470:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1477
	jmp	.label_1418
.label_1420:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1482
	xor	ecx, ecx
.label_1493:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_1486
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1486:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1493
.label_1418:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1455:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1418
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1421
.label_1438:
	xor	esi, esi
.label_1429:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_1425
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1425:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1429
	jmp	.label_1418
.label_1450:
	xor	esi, esi
.label_1436:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_1432
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1432:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1436
	jmp	.label_1418
.label_1462:
	xor	esi, esi
.label_1442:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_1439
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1439:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1442
	jmp	.label_1418
.label_1473:
	xor	esi, esi
.label_1461:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_1446
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1446:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1461
	jmp	.label_1418
.label_1491:
	xor	esi, esi
.label_1457:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_1483
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1483:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1457
	jmp	.label_1418
.label_1423:
	xor	esi, esi
.label_1476:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_1460
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1460:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1476
	jmp	.label_1418
.label_1433:
	xor	esi, esi
.label_1472:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_1444
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1444:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1472
	jmp	.label_1418
.label_1445:
	xor	esi, esi
.label_1484:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_1475
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1475:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1484
	jmp	.label_1418
.label_1456:
	xor	esi, esi
.label_1494:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_1489
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1489:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1494
	jmp	.label_1418
.label_1468:
	xor	esi, esi
.label_1419:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_1498
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1498:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1419
	jmp	.label_1418
.label_1482:
	xor	esi, esi
.label_1428:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_1424
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1424:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1428
	jmp	.label_1418
.label_1427:
	xor	esi, esi
.label_1435:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_1431
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1431:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1435
	jmp	.label_1418
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f090

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_1506
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1509]
.label_2496:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_1337]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1510
	mov	qword ptr [rax], r15
	jmp	.label_1329
.label_2497:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1508
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1504
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1316
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1507
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1329
.label_2494:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1316
	mov	edi, OFFSET FLAT:label_1324
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1310
	call	__assert_fail
.label_2495:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1329
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_1337]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1342
	mov	qword ptr [rax], rbx
	jmp	.label_1329
.label_1506:
	test	dl, 8
	jne	.label_1347
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1329
.label_1507:
	mov	qword ptr [rax], 2
	jge	.label_1502
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1329
.label_1502:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1329:
	xor	eax, eax
.label_1316:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1510:
	lea	rax, [r14 + rbx*8]
.label_1328:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1316
.label_1342:
	lea	rax, [r14 + r15*8]
	jmp	.label_1328
.label_1508:
	mov	edi, OFFSET FLAT:label_1505
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1310
	call	__assert_fail
.label_1504:
	mov	edi, OFFSET FLAT:label_1503
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1310
	call	__assert_fail
.label_1347:
	mov	edi, OFFSET FLAT:label_1309
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1310
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2a0

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
	mov	r14, rcx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [r14 + 8]
	test	dl, 0x10
	je	.label_1520
	test	r12, r12
	je	.label_1520
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1511
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1511
.label_1520:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	mov	qword ptr [rsp], rbp
	je	.label_1521
	mov	rax, qword ptr [rbx + 0x70]
.label_1519:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1516
	mov	rax, qword ptr [rbx + 0x70]
.label_1512:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1525:
	test	r12, r12
	mov	rbp, r15
	je	.label_1515
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1517
	mov	rax, qword ptr [rbx + 0x70]
.label_1524:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r12], rbp
	test	r15, r15
	je	.label_1515
	mov	qword ptr [r15], rbp
.label_1515:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1522
	mov	rax, qword ptr [rbx + 0x70]
.label_1523:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r13, r13
	je	.label_1514
	mov	qword ptr [r13], r12
.label_1514:
	test	rbp, rbp
	je	.label_1518
	mov	qword ptr [rbp], r12
.label_1518:
	test	r15, r15
	je	.label_1513
	test	r13, r13
	je	.label_1513
	test	rbp, rbp
	je	.label_1513
	test	r12, r12
	je	.label_1513
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_1511:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1521:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1516
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1519
.label_1516:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1525
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1512
.label_1522:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1518
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1523
.label_1513:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_1511
.label_1517:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1515
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1524
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f590

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
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_1530
.label_1528:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_1527
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1531
.label_1527:
	cmp	eax, 6
	sete	cl
.label_1531:
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
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1529:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1530:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1529
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1529
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1526
	test	rax, rax
	je	.label_1526
	test	r13, r13
	je	.label_1526
	test	rbp, rbp
	je	.label_1526
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1528
.label_1526:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1529
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f760

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
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1533
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1537
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1537
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1537
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1533
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1537:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1540
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1540
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1538:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1532
	test	rcx, rcx
	jne	.label_1542
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1535
	jmp	.label_1533
	nop	word ptr [rax + rax]
.label_1542:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1535:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1533
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1534
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1532:
	mov	r15b, 1
.label_1534:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1538
	jmp	.label_1541
.label_1540:
	xor	r15d, r15d
.label_1541:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1533
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1536
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1536
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1539
.label_1536:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1539:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1533:
	add	rsp, 0x48
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
	#Procedure 0x40f970

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_1549:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1544:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1552
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1543
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_1544
	jmp	.label_1543
	nop	dword ptr [rax + rax]
.label_1552:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1545
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1550
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1548
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1548
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1551:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1556
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1546
.label_1556:
	dec	rsi
	test	rsi, rsi
	jle	.label_1548
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1551
	jmp	.label_1548
.label_1546:
	cmp	rsi, -1
	je	.label_1548
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1547
	jmp	.label_1543
	nop	dword ptr [rax]
.label_1548:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1543
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_1543
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1543
.label_1547:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1543
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_1544
	jmp	.label_1543
	nop	
.label_1550:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1555
	cmp	rbp, r15
	jne	.label_1554
.label_1555:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_1543
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_1549
	jmp	.label_1543
.label_1545:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1553:
	mov	dword ptr [rsp + 8], 0
.label_1543:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1554:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1553
	jmp	.label_1543
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fde0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1559
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1559
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1558
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1566
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1558:
	test	rcx, rcx
	je	.label_1560
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1562
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1563
.label_1557:
	dec	rax
.label_1569:
	dec	rcx
	jmp	.label_1568
	nop	word ptr [rax + rax]
.label_1563:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1557
	jge	.label_1569
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1568:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1563
.label_1562:
	test	rax, rax
	js	.label_1565
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1565:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1559
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1567:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1561:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1570
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1561
	jmp	.label_1559
	nop	word ptr cs:[rax + rax]
.label_1570:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1567
	lea	rsi, [rdi + r12*8]
.label_1564:
	call	memcpy
.label_1559:
	xor	eax, eax
.label_1566:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1560:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_1564
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ff70

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1583
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1572
	cmp	rsi, rcx
	jne	.label_1575
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1580
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1582
.label_1583:
	movaps	xmm0, xmmword ptr [rip + label_1337]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1576
	mov	qword ptr [rax], rbx
	jmp	.label_1578
.label_1572:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1579
.label_1575:
	mov	rax, qword ptr [r14 + 0x10]
.label_1582:
	cmp	qword ptr [rax], rbx
	jle	.label_1581
	test	rcx, rcx
	jle	.label_1577
	nop	word ptr cs:[rax + rax]
.label_1571:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1571
	jmp	.label_1577
.label_1581:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1584
	nop	dword ptr [rax]
.label_1573:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1584:
	cmp	rdx, rbx
	jg	.label_1573
.label_1577:
	mov	qword ptr [rax + rcx*8], rbx
.label_1579:
	inc	qword ptr [r14 + 8]
.label_1578:
	mov	al, 1
.label_1574:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1576:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1580:
	xor	eax, eax
	jmp	.label_1574
	nop	
	.section	.text
	.align	32
	#Procedure 0x410050

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r12, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1664
	mov	r15d, ecx
	add	r15, r8
	test	r8, r8
	jle	.label_1605
	mov	rbx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_1608
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_1615
	movq	xmm0, r15
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1649
	pxor	xmm1, xmm1
	jmp	.label_1620
.label_1664:
	mov	dword ptr [r12], 0
.label_1660:
	xor	r13d, r13d
	jmp	.label_1604
.label_1615:
	xor	r9d, r9d
	jmp	.label_1608
.label_1649:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1653:
	movdqu	xmm2, xmmword ptr [rbx + rdi*8]
	movdqu	xmm3, xmmword ptr [rbx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rbx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rbx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1653
.label_1620:
	test	rsi, rsi
	je	.label_1641
	lea	rdi, [rbx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_1596:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_1596
.label_1641:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, r9
	je	.label_1605
.label_1608:
	mov	rsi, r8
	sub	rsi, r9
	lea	rax, [rbx + r9*8]
	nop	dword ptr [rax + rax]
.label_1627:
	add	r15, qword ptr [rax]
	add	rax, 8
	dec	rsi
	jne	.label_1627
.label_1605:
	mov	rsi, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x88]
	and	rax, r15
	lea	rax, [rax + rax*2]
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	jle	.label_1586
	test	rdx, rdx
	je	.label_1662
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_1595:
	mov	r13, qword ptr [r10 + rsi*8]
	cmp	qword ptr [r13], r15
	jne	.label_1663
	movzx	eax, byte ptr [r13 + 0x68]
	and	eax, 0xf
	cmp	eax, ecx
	jne	.label_1663
	mov	rdi, qword ptr [r13 + 0x50]
	test	rdi, rdi
	je	.label_1663
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1663
	mov	rax, r8
	nop	dword ptr [rax + rax]
.label_1590:
	test	rax, rax
	jle	.label_1604
	mov	rbp, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	mov	rbx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rbx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1590
	nop	word ptr cs:[rax + rax]
.label_1663:
	inc	rsi
	cmp	rsi, r9
	jl	.label_1595
	jmp	.label_1586
.label_1662:
	lea	rsi, [r9 - 1]
	mov	eax, r9d
	and	eax, 7
	cmp	rsi, 7
	jb	.label_1598
	mov	rsi, rax
	sub	rsi, r9
.label_1603:
	add	rsi, 8
	jne	.label_1603
.label_1598:
	test	rax, rax
	je	.label_1586
	neg	rax
	nop	
.label_1618:
	inc	rax
	jne	.label_1618
.label_1586:
	mov	qword ptr [rsp], rdx
	mov	ebx, ecx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1614
	mov	qword ptr [rsp + 0x10], r14
	mov	r10, r13
	add	r10, 8
	mov	rsi, qword ptr [rsp]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	r14, qword ptr [rsi + 8]
	test	r14, r14
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], r12
	jle	.label_1617
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1625
	mov	rbp, qword ptr [rsp]
	mov	rsi, qword ptr [rbp + 0x10]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	rsi, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_1655
.label_1617:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
.label_1655:
	mov	al, byte ptr [r13 + 0x68]
	mov	r9d, ebx
	mov	ecx, r9d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r13 + 0x68], al
	mov	qword ptr [r13 + 0x50], r10
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1592
	mov	ecx, r9d
	mov	eax, r9d
	and	eax, 2
	and	r9d, 4
	test	cl, 1
	mov	dword ptr [rsp + 0xc], r9d
	jne	.label_1639
	xor	ebp, ebp
	xor	r8d, r8d
	test	eax, eax
	jne	.label_1607
	nop	word ptr cs:[rax + rax]
.label_1642:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1647
	test	ecx, ecx
	je	.label_1609
.label_1647:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_1628
	cmp	dl, 4
	jne	.label_1656
	or	bl, 0x40
	jmp	.label_1623
.label_1628:
	or	bl, 0x10
.label_1623:
	mov	byte ptr [r13 + 0x68], bl
.label_1656:
	test	ecx, ecx
	je	.label_1659
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1661
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1619
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1666
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1591
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1594
.label_1659:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1609
.label_1666:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1594:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1661:
	test	r12b, 0x11
	mov	rsi, qword ptr [rsp]
	jne	.label_1606
	test	r9d, r9d
	jne	.label_1609
	and	r12d, 0x40
	je	.label_1609
.label_1606:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1612
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_1612
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1612
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1622:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_1622
	nop	word ptr [rax + rax]
.label_1612:
	inc	r8
.label_1609:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_1642
	jmp	.label_1592
	nop	word ptr cs:[rax + rax]
.label_1607:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1632
	test	ecx, ecx
	je	.label_1587
.label_1632:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_1638
	cmp	dl, 4
	jne	.label_1597
	or	bl, 0x40
	jmp	.label_1643
.label_1638:
	or	bl, 0x10
.label_1643:
	mov	byte ptr [r13 + 0x68], bl
.label_1597:
	test	ecx, ecx
	je	.label_1644
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1645
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1619
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1650
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1591
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1658
.label_1644:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1587
.label_1650:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1658:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1645:
	test	r12b, 1
	mov	rsi, qword ptr [rsp]
	jne	.label_1585
	test	r9d, r9d
	jne	.label_1587
	and	r12d, 0x40
	je	.label_1587
.label_1585:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1589
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_1589
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1589
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1600:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_1600
	nop	word ptr [rax + rax]
.label_1589:
	inc	r8
.label_1587:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_1607
	jmp	.label_1592
.label_1639:
	test	eax, eax
	jne	.label_1611
	xor	ebp, ebp
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_1588:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1635
	test	ecx, ecx
	je	.label_1624
.label_1635:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_1626
	cmp	dl, 4
	jne	.label_1629
	or	bl, 0x40
	jmp	.label_1631
.label_1626:
	or	bl, 0x10
.label_1631:
	mov	byte ptr [r13 + 0x68], bl
.label_1629:
	test	ecx, ecx
	je	.label_1633
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1634
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1619
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1637
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1591
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1646
.label_1633:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1624
.label_1637:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1646:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1634:
	test	r12b, 0x12
	mov	rsi, qword ptr [rsp]
	jne	.label_1654
	test	r9d, r9d
	jne	.label_1624
	and	r12d, 0x40
	je	.label_1624
.label_1654:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1599
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_1599
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1599
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1665:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_1665
	nop	word ptr [rax + rax]
.label_1599:
	inc	r8
.label_1624:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_1588
	jmp	.label_1592
.label_1611:
	xor	r12d, r12d
	xor	r8d, r8d
	nop	dword ptr [rax + rax]
.label_1651:
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rdx + r12*8]
	shl	rdx, 4
	mov	edx, dword ptr [rcx + rdx + 8]
	mov	ebp, edx
	shr	ebp, 8
	mov	ecx, ebp
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1593
	test	ecx, ecx
	je	.label_1601
.label_1593:
	mov	esi, edx
	shr	esi, 0x14
	mov	al, byte ptr [r13 + 0x68]
	mov	ebx, eax
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, esi
	shl	bl, 5
	and	bl, 0x20
	and	al, 0xdf
	or	al, bl
	mov	byte ptr [r13 + 0x68], al
	cmp	dl, 4
	je	.label_1602
	cmp	dl, 2
	jne	.label_1610
	or	al, 0x10
	jmp	.label_1613
.label_1602:
	or	al, 0x40
.label_1613:
	mov	byte ptr [r13 + 0x68], al
.label_1610:
	test	ecx, ecx
	je	.label_1616
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1652
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1619
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1621
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1591
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1630
.label_1616:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1601
.label_1621:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1630:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1652:
	test	bpl, 2
	mov	rsi, qword ptr [rsp]
	jne	.label_1636
	test	r9d, r9d
	jne	.label_1601
	and	ebp, 0x40
	je	.label_1601
.label_1636:
	mov	rcx, r12
	sub	rcx, r8
	js	.label_1640
	mov	rdx, qword ptr [r13 + 0x10]
	cmp	rdx, rcx
	jle	.label_1640
	dec	rdx
	mov	qword ptr [r13 + 0x10], rdx
	cmp	rdx, rcx
	jle	.label_1640
	lea	rcx, [r12*8]
	add	rcx, qword ptr [r13 + 0x18]
	mov	rdx, r8
	neg	rdx
.label_1648:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rax, [r12 + rdx + 1]
	inc	rdx
	cmp	rax, qword ptr [r13 + 0x10]
	jl	.label_1648
	nop	word ptr [rax + rax]
.label_1640:
	inc	r8
.label_1601:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_1651
.label_1592:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_1619
.label_1604:
	mov	rax, r13
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1619:
	mov	rdi, r13
	call	free_state
	jmp	.label_1657
.label_1591:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
.label_1657:
	mov	r12, qword ptr [rsp + 0x20]
.label_1614:
	mov	dword ptr [r12], 0xc
	jmp	.label_1660
.label_1625:
	mov	rdi, r13
	call	free
	jmp	.label_1614
	.section	.text
	.align	32
	#Procedure 0x4109f0

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
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1669
	test	r13, r13
	jle	.label_1671
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1668:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1667
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1673
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1672
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1673:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1667:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1668
.label_1671:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1670
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1674:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1669:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1672:
	mov	ecx, 0xc
	jmp	.label_1669
.label_1670:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1669
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1674
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410b30

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_1692
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1702
	mov	qword ptr [rbx + 0x20], 0
.label_1702:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_1709
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_1709:
	test	r14, r14
	je	.label_1688
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_1710
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1729
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1733
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1733:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1679
.label_1722:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1678:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1688
	add	qword ptr [rbx + 8], r14
.label_1688:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1691
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1699
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1703
	jmp	.label_1704
.label_1691:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1706
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1704
.label_1699:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1704:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1703:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1692:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_1709
.label_1710:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_1720
.label_1715:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_1725
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1730
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_1724:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_1730
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_1724
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_1684
.label_1690:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1700
	cmp	rax, -3
	ja	.label_1700
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_1700:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_1713
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_1730:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_1717
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_1686
.label_1729:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_1732:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1726
	jge	.label_1721
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1726:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1732
.label_1721:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_1677
	cmp	rbp, r14
	jne	.label_1677
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_1677
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_1678
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_1687:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1687
	jmp	.label_1678
.label_1679:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1722
.label_1677:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1697:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1731
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_1697
.label_1731:
	cmp	rax, rdi
	jge	.label_1734
	mov	rcx, qword ptr [rbx + 0x10]
.label_1735:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1734
	inc	rax
	cmp	rax, rdi
	jl	.label_1735
.label_1734:
	cmp	rax, rdi
	jne	.label_1675
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1678
.label_1706:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1685
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_1689
	jmp	.label_1694
.label_1712:
	mov	r12, qword ptr [r13]
.label_1689:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1698
.label_1716:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1705
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1705:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1712
	jmp	.label_1714
.label_1698:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_1716
.label_1725:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1718
	mov	cl, byte ptr [rsi + rdx]
.label_1718:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_1693
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_1693
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_1693:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_1678
.label_1675:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_1737
	jle	.label_1676
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1676:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_1737:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1678
.label_1717:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1707
.label_1685:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1704
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1701
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1708
.label_1719:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_1708:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1719
	mov	rax, rcx
.label_1701:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1704
.label_1714:
	mov	r15, r14
.label_1694:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1704
.label_1682:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1727
	test	rax, rax
	je	.label_1727
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_1727:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1683
.label_1686:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_1682
	mov	edx, dword ptr [rsp + 8]
.label_1683:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_1686
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_1707
.label_1713:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1695
.label_1736:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_1680
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1680:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1728
.label_1707:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1728:
	test	rbp, rbp
	jne	.label_1711
.label_1723:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1678
.label_1720:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1715
.label_1711:
	jle	.label_1681
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1681:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_1723
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_1723
.label_1695:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1680
	test	eax, eax
	je	.label_1736
	jmp	.label_1680
.label_1684:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1690
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_1696:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1696
	jmp	.label_1690
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411270

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	rdx, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	rdx, rdx
	jle	.label_1740
	mov	esi, eax
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r8, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	ecx, eax
	and	ecx, 2
	and	eax, 8
	xor	ebx, ebx
	test	sil, 1
	jne	.label_1742
	test	ecx, ecx
	jne	.label_1744
	nop	word ptr cs:[rax + rax]
.label_1747:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1741
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1740
	test	sil, 0x24
	jne	.label_1741
	test	eax, eax
	jne	.label_1740
	test	sil, sil
	jns	.label_1740
	nop	word ptr [rax + rax]
.label_1741:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1747
	jmp	.label_1740
	nop	word ptr cs:[rax + rax]
.label_1744:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1739
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1740
	test	sil, 4
	jne	.label_1739
	test	eax, eax
	jne	.label_1740
	test	sil, sil
	jns	.label_1740
.label_1739:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1744
	jmp	.label_1740
.label_1742:
	test	ecx, ecx
	jne	.label_1745
.label_1746:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1738
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1740
	test	sil, 0x28
	jne	.label_1738
	test	eax, eax
	jne	.label_1740
	test	sil, sil
	jns	.label_1740
	nop	
.label_1738:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1746
	jmp	.label_1740
	nop	
.label_1745:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1743
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1740
	test	sil, 8
	jne	.label_1743
	test	eax, eax
	jne	.label_1740
	test	sil, sil
	jns	.label_1740
.label_1743:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1745
.label_1740:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411410

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
	jle	.label_1750
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1752:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1748
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1749:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1749
.label_1748:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1751
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1751:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1752
.label_1750:
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
	#Procedure 0x4114d0

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
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rax, qword ptr [rip + label_1794]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_1795]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_1796
	mov	r14, rdi
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1754
	lea	r13, [rbp - 0xb0]
	mov	rdi, r14
.label_1796:
	mov	qword ptr [rbp - 0x98], rdi
	mov	r14, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	mov	qword ptr [rbp - 0x50], rdx
	ja	.label_1801
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1812
.label_1801:
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1809
	mov	al, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rdx, qword ptr [rbp - 0x50]
.label_1812:
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsi, r15
	call	memcpy
	mov	r8, qword ptr [r15]
	xor	edi, edi
	cmp	r8, qword ptr [r15 + 8]
	jg	.label_1815
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rbx
	mov	qword ptr [rbp - 0x58], r12
	mov	qword ptr [rbp - 0x40], r15
	jmp	.label_1804
.label_1809:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_1754
	cmp	qword ptr [r13], 0
	jle	.label_1779
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1761:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1761
.label_1779:
	mov	rdi, qword ptr [r13 + 0x10]
	call	free
	mov	ecx, 0xc
	jmp	.label_1754
.label_1764:
	mov	r12, rax
	jmp	.label_1766
	nop	word ptr cs:[rax + rax]
.label_1804:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax]
	mov	rdx, r14
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_1770
	cmp	cl, 8
	jne	.label_1775
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1775
	shl	rax, 4
	mov	qword ptr [r15 + rax], r8
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_1775
	nop	dword ptr [rax]
.label_1770:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1775
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r8
	jge	.label_1784
	mov	qword ptr [r15 + rax + 8], r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r15
	jmp	.label_1767
.label_1784:
	test	ecx, 0x80000
	je	.label_1782
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1782
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x48]
.label_1767:
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], r8
	call	memcpy
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_1775
.label_1782:
	mov	qword ptr [r15 + rax + 8], r8
	nop	word ptr cs:[rax + rax]
.label_1775:
	cmp	r8, qword ptr [r15 + 8]
	jne	.label_1793
	cmp	r14, qword ptr [r12 + 0xb0]
	jne	.label_1793
	test	r13, r13
	je	.label_1797
	test	rbx, rbx
	mov	eax, 0
	je	.label_1800
	mov	rcx, qword ptr [rbp - 0x88]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1806:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1803
	cmp	qword ptr [rcx], -1
	je	.label_1800
.label_1803:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1806
.label_1800:
	cmp	rax, rbx
	je	.label_1807
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1787
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1793:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r14
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	mov	qword ptr [rbp - 0x30], r8
	jne	.label_1817
	test	ecx, 0x100000
	jne	.label_1822
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1778
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	test	r13, r13
	je	.label_1755
	cmp	rax, -1
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_1765
	cmp	rdi, -1
	je	.label_1765
	test	rdx, rdx
	je	.label_1768
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rcx
	cmp	rax, rdx
	jl	.label_1765
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, rcx
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0x30]
	test	eax, eax
	jne	.label_1765
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_1777
	nop	word ptr [rax + rax]
.label_1817:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	r12, qword ptr [rax + r8*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_1774
	lea	rax, [r14 + r14*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	test	r10, r10
	jle	.label_1783
	mov	r9, qword ptr [r12 + 0x10]
	test	r9, r9
	jle	.label_1783
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r12 + 0x18]
	je	.label_1819
	mov	r11, -1
	xor	r14d, r14d
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_1808:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_1799:
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	cmovge	rax, rdi
	cmovge	rdx, rcx
	cmp	rax, rdx
	jb	.label_1799
	cmp	rax, -1
	je	.label_1802
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_1802
	cmp	r11, -1
	mov	r12, r11
	mov	r11, rbx
	jne	.label_1805
.label_1802:
	inc	r14
	cmp	r14, r10
	jl	.label_1808
	mov	r12, r11
	jmp	.label_1810
	nop	dword ptr [rax + rax]
.label_1822:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r8
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1753:
	test	rdx, rdx
	jne	.label_1814
	jmp	.label_1778
.label_1819:
	mov	rbx, qword ptr [rsi]
	mov	r12, -1
	xor	ecx, ecx
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_1818:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_1816
	cmp	r12, -1
	mov	rax, rbx
	je	.label_1762
	jmp	.label_1805
	nop	word ptr cs:[rax + rax]
.label_1816:
	mov	rax, r12
.label_1762:
	inc	rcx
	cmp	rcx, r10
	mov	r12, rax
	jl	.label_1818
	mov	r12, rax
	jmp	.label_1810
.label_1805:
	mov	r9, qword ptr [rbp - 0x68]
	test	r9, r9
	jle	.label_1821
	mov	rcx, r9
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_1823
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1758:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1758
.label_1823:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1764
	test	r13, r13
	jne	.label_1769
	mov	r12, rax
	jmp	.label_1766
.label_1755:
	test	rdx, rdx
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_1768
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_1773
.label_1768:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_1774
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1778
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r14 + r14*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1780
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1786:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1786
.label_1780:
	cmp	rcx, -1
	je	.label_1753
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_1791
	jmp	.label_1753
	nop	word ptr cs:[rax + rax]
.label_1778:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1783
.label_1814:
	add	rdx, qword ptr [rbp - 0x30]
	test	r13, r13
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	je	.label_1773
.label_1777:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1765
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1765
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1765
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1813
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1792:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1792
.label_1813:
	cmp	rbx, -1
	je	.label_1783
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_1783
.label_1773:
	mov	qword ptr [rbp - 0x68], 0
	mov	r8, rdx
	mov	r15, qword ptr [rbp - 0x40]
	jmp	.label_1766
.label_1821:
	test	r13, r13
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_1766
.label_1769:
	mov	qword ptr [rbp - 0x80], r9
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_1820
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_1774
	shl	qword ptr [r13 + 8], 1
	mov	qword ptr [r13 + 0x10], r15
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_1759
.label_1820:
	mov	r15, qword ptr [r13 + 0x10]
.label_1759:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	qword ptr [r15 + r14], r8
	mov	qword ptr [r15 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x50]
	call	malloc
	mov	qword ptr [r15 + r14 + 0x10], rax
	test	rax, rax
	je	.label_1774
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	lea	rax, [r15 + r14 + 0x18]
	mov	rbx, qword ptr [rbp - 0x80]
	mov	qword ptr [r15 + r14 + 0x20], rbx
	test	rbx, rbx
	jle	.label_1772
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rax], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15 + r14 + 0x28], rax
	test	rax, rax
	je	.label_1798
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1791
.label_1772:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_1791:
	mov	r15, qword ptr [rbp - 0x40]
.label_1810:
	mov	r8, qword ptr [rbp - 0x30]
.label_1766:
	test	r12, r12
	jns	.label_1781
	cmp	r12, -2
	je	.label_1774
	nop	dword ptr [rax]
.label_1783:
	test	r13, r13
	je	.label_1790
.label_1765:
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1787
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r15, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + rbx + 8]
.label_1781:
	cmp	r8, qword ptr [r15 + 8]
	mov	r14, r12
	mov	rbx, qword ptr [rbp - 0x90]
	mov	r12, qword ptr [rbp - 0x58]
	jle	.label_1804
	mov	rdi, qword ptr [rbp - 0x60]
.label_1815:
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1811
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1811:
	xor	ecx, ecx
	test	r13, r13
	je	.label_1754
	cmp	qword ptr [r13], 0
	jle	.label_1763
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1756:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1756
.label_1763:
	mov	rdi, qword ptr [r13 + 0x10]
.label_1757:
	call	free
	xor	ecx, ecx
.label_1754:
	mov	eax, ecx
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1790:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	ecx, 1
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1754
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	mov	ecx, 1
	jmp	.label_1754
.label_1797:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	ecx, ecx
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1754
	mov	rdi, qword ptr [rbp - 0x48]
	jmp	.label_1757
.label_1807:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1760
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1760:
	cmp	qword ptr [r13], 0
	jle	.label_1763
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1771:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r13]
	jl	.label_1771
	jmp	.label_1763
.label_1798:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x78]
	movups	xmmword ptr [rax], xmm0
.label_1774:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1776
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1776:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_1754
	cmp	qword ptr [r13], 0
	jle	.label_1779
	xor	ebx, ebx
	xor	r15d, r15d
.label_1785:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1785
	jmp	.label_1779
.label_1787:
	mov	edi, OFFSET FLAT:label_1788
	mov	esi, OFFSET FLAT:label_775
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1789
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f00

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1824
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1827
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1832
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1831:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1828
	dec	rsi
	test	rsi, rsi
	jg	.label_1831
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1825
.label_1832:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1825
	xor	edx, edx
	cmp	al, 0xa
	je	.label_1826
	jmp	.label_1825
.label_1828:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1830
.label_1829:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1825
.label_1826:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_1825:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1824:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1825
.label_1827:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_1825
.label_1830:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1825
	test	eax, eax
	je	.label_1829
	jmp	.label_1825
	nop	
	.section	.text
	.align	32
	#Procedure 0x411fc0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_1833
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1834
.label_1835:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1833
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1837
	nop	word ptr [rax + rax]
.label_1834:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_1836
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1836
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1836
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1835
.label_1837:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_1833
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_1836:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1834
.label_1833:
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
	#Procedure 0x4120f0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1854
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_1866:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_1856
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1868
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1877
	test	ecx, ecx
	je	.label_1856
.label_1877:
	test	bh, 8
	je	.label_1885
	test	ecx, ecx
	jne	.label_1856
.label_1885:
	test	bh, 0x20
	je	.label_1887
	mov	ecx, eax
	and	ecx, 2
	je	.label_1856
.label_1887:
	test	bpl, bpl
	jns	.label_1868
	and	eax, 8
	je	.label_1856
	nop	word ptr [rax + rax]
.label_1868:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_1896
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_1838:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1838
.label_1896:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_1846
	cmp	rax, -1
	je	.label_1846
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_1846
	lea	rax, [rcx + rax*8]
	nop	
.label_1869:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_1861
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1869
.label_1846:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_1861
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_1876
	nop	word ptr cs:[rax + rax]
.label_1859:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_1876:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_1847
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_1899
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_1862
.label_1899:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1904
.label_1907:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_1852
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_1845
	and	r9b, sil
	je	.label_1855
.label_1845:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_1855
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1852
.label_1872:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1873
.label_1855:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_1882
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_1882:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1894
	nop	word ptr cs:[rax + rax]
.label_1862:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_1902
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_1907
	mov	r12, rbp
.label_1894:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_1852
.label_1902:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_1865
	test	eax, eax
	jne	.label_1872
	xor	r10d, r10d
.label_1865:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_1873:
	mov	r9, qword ptr [rsp + 0x10]
.label_1852:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1881
	cmp	al, 9
	jne	.label_1884
.label_1881:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_1862
	jmp	.label_1904
.label_1884:
	cmp	al, 7
	jne	.label_1898
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_1904:
	cmp	r14, rax
	jge	.label_1893
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1847
	nop	word ptr cs:[rax + rax]
.label_1893:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_1900
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1847
.label_1900:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1853
.label_1903:
	cmp	r13, -1
	je	.label_1864
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_1841
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_1851
.label_1841:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_1909
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_1848
.label_1909:
	test	eax, eax
	mov	r8, rbp
	jne	.label_1878
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_1850
.label_1879:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_1891
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_1906
	mov	r10d, 0xc
	jmp	.label_1857
.label_1906:
	test	eax, eax
	jne	.label_1842
	xor	r10d, r10d
.label_1857:
	mov	rcx, r15
.label_1883:
	mov	r15, qword ptr [rsp + 8]
.label_1901:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1848
.label_1851:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_1848
.label_1875:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_1848
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_1871
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1892
.label_1878:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1883
.label_1850:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_1886
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1879
.label_1891:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1901
.label_1842:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_1848
.label_1871:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1848
.label_1886:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_1848
	nop	word ptr [rax + rax]
.label_1853:
	cmp	rbx, qword ptr [r9]
	jle	.label_1874
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1875
	lea	r15, [rcx + 1]
.label_1892:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_1880
	jmp	.label_1864
	nop	word ptr cs:[rax + rax]
.label_1874:
	mov	r15, rcx
.label_1880:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_1864
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1864
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_1905:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_1890
	cmp	qword ptr [rdx + rbp], r14
	je	.label_1903
.label_1890:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1905
.label_1864:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_1848:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1908
	cmp	al, 0xc
	jne	.label_1840
.label_1908:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_1853
	jmp	.label_1847
.label_1898:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1849
.label_1840:
	cmp	al, 0xa
	je	.label_1847
.label_1849:
	cmp	r10d, 6
	je	.label_1847
	test	r10d, r10d
	jne	.label_1843
	nop	word ptr cs:[rax + rax]
.label_1847:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_1859
.label_1861:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_1897:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_1856
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_1870:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1839
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_1839
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_1889
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1895
.label_1889:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_1895:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1844
	mov	rdx, qword ptr [rcx + 0x10]
.label_1844:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_1860
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1867
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_1888
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_1888
	jmp	.label_1858
.label_1860:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1888
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1863
	jmp	.label_1858
.label_1888:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1863:
	cmp	rsi, rdx
	jne	.label_1839
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1839
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1858
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1858
	nop	
.label_1839:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_1870
	nop	word ptr cs:[rax + rax]
.label_1856:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_1866
	jmp	.label_1854
.label_1843:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1897
	jmp	.label_1858
.label_1854:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_1858:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1867:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_1858
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412af0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	ja	.label_1910
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	cmovle	rbp, rcx
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	jl	.label_1915
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_1910
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	call	realloc
	test	rax, rax
	je	.label_1910
	mov	qword ptr [r15 + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1915
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_1910
	mov	qword ptr [r15 + 0x18], rax
.label_1915:
	cmp	byte ptr [r15 + 0x8b], 0
	je	.label_1912
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1910
	mov	qword ptr [r15 + 8], rax
.label_1912:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	test	rdi, rdi
	je	.label_1918
	lea	rsi, [rbp*8 + 8]
	call	realloc
	test	rax, rax
	je	.label_1910
	mov	qword ptr [r15 + 0xb8], rax
.label_1918:
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	je	.label_1914
	cmp	eax, 2
	jl	.label_1925
	mov	rdi, r15
	call	build_wcs_upper_buffer
	mov	r14d, eax
	test	r14d, r14d
	je	.label_1913
	jmp	.label_1910
.label_1914:
	cmp	eax, 2
	jl	.label_1911
	mov	rdi, r15
	call	build_wcs_buffer
	jmp	.label_1913
.label_1925:
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	cmovg	r14, rax
	cmp	rbp, r14
	jl	.label_1916
	jmp	.label_1920
.label_1911:
	mov	rdx, qword ptr [r15 + 0x78]
	test	rdx, rdx
	je	.label_1913
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1922
	mov	rsi, qword ptr [r15 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_1924
	nop	dword ptr [rax]
.label_1917:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1924:
	inc	rax
	cmp	rax, rcx
	jl	.label_1917
	mov	rax, rcx
.label_1922:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_1913
.label_1921:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1919
	nop	word ptr cs:[rax + rax]
.label_1916:
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	movzx	ecx, byte ptr [rbp + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1921
.label_1919:
	movzx	ebx, cl
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1923
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1923:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	cmp	rbp, r14
	jl	.label_1916
	mov	rbp, r14
.label_1920:
	mov	qword ptr [r15 + 0x30], rbp
	mov	qword ptr [r15 + 0x38], rbp
.label_1913:
	xor	r14d, r14d
.label_1910:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412d20

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
	jle	.label_1931
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1930
.label_1931:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1932
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1933
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1926
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1928
.label_1932:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1930
.label_1933:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1928:
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
	test	bpl, bpl
	jne	.label_1930
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1930:
	test	rbx, rbx
	je	.label_1929
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1929
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1927
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1927
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1927
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1927
.label_1929:
	mov	rax, rbx
.label_1927:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1926:
	xor	eax, eax
	jmp	.label_1927
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412e70

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
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_1935
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_1939
	test	r13, r13
	jle	.label_1939
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1939
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1934
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_1943:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_1938:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_1942
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_1945
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1938
	jmp	.label_1942
.label_1945:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1943
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_1942:
	sub	r13, rbp
	jle	.label_1940
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_1941
.label_1939:
	test	r13, r13
	jle	.label_1935
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1937
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1944
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1936
.label_1935:
	test	rbx, rbx
	je	.label_1937
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1937
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_1937
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1944
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1936
.label_1937:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1936
.label_1940:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_1941
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_1941:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_1936:
	xor	ecx, ecx
.label_1934:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1944:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1934
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413080

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_1946
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_1947:
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
	jl	.label_1947
.label_1946:
	cmp	rax, r8
	jge	.label_1948
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1949
.label_1948:
	mov	rax, -1
.label_1949:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4130f0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1950
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1958
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1956
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1958:
	test	r15, r15
	jle	.label_1951
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1952
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1952
.label_1951:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1952:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1955
	mov	dword ptr [r13 + 0xe0], edi
.label_1955:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1957
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1953
.label_1957:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1954
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1954
.label_1953:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1950
.label_1954:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1950
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1950:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1956:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1950
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4132d0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_1990
	mov	r14, qword ptr [rbp + 0x10]
.label_1986:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_1981
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_1337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1985
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1970
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1995
.label_1981:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_1964
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_1967
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_1969
.label_1964:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_1960
.label_1967:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_1979
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_1985
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_1989
.label_1979:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_1969:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1989:
	test	al, 0x40
	je	.label_1960
.label_1995:
	test	rbp, rbp
	je	.label_1961
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1970
.label_1961:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1976
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1959
.label_1976:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_1960:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_1980
	xor	esi, esi
	nop	
.label_1965:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_1982
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1984
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1959
.label_1984:
	test	rdx, rdx
	je	.label_1991
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_1992
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_1993:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1968
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1977
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_1978
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_1962
.label_1978:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_1974
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_1966
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_1966
	jmp	.label_1962
	nop	
.label_1977:
	test	eax, eax
	jne	.label_1966
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_1968:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_1973
.label_1966:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_1974
.label_1973:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_1993
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_1992:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1991:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_1983
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1959
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1959
.label_1983:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1994
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1959
.label_1994:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_1965
	jmp	.label_1975
.label_1980:
	mov	rbp, rax
	jmp	.label_1975
.label_1982:
	mov	rbp, qword ptr [rsp + 8]
.label_1975:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_1972
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_1972
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_1987
	xor	edx, edx
.label_1988:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1988
.label_1987:
	cmp	rdx, -1
	je	.label_1972
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_1971
.label_1972:
	mov	ebp, 1
.label_1971:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1974:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_1963
.label_1962:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_1963:
	mov	dword ptr [rsp + 4], r12d
.label_1959:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_1971
.label_1990:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_1971
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_1971
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_1971
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1986
.label_1970:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1971
.label_1985:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_1971
	nop	
	.section	.text
	.align	32
	#Procedure 0x4139e0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2000
	test	r12, r12
	jle	.label_2002
	xor	r12d, r12d
	jmp	.label_2003
	nop	dword ptr [rax]
.label_1998:
	cmp	rbp, -1
	je	.label_2004
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1997
	nop	dword ptr [rax]
.label_2003:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2004
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2001:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_1996
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1998
.label_1996:
	inc	rax
	cmp	rax, r10
	jl	.label_2001
.label_2004:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1997:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1999
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2003
.label_2002:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2000:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1999:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2000
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413b10

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
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_2026
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_2030:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_2030
.label_2026:
	cmp	r11, r9
	jge	.label_2006
	cmp	r11, -1
	je	.label_2006
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2006
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_2023
.label_2018:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_2023:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2019:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_2013
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_2010
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2011:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2011
.label_2010:
	cmp	rax, -1
	je	.label_2013
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_2013
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2027
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2031
	xor	edx, edx
.label_2035:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2035
.label_2031:
	cmp	rdx, -1
	je	.label_2008
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_2020
.label_2008:
	movaps	xmm0, xmmword ptr [rip + label_1337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2025
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_2024:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_2020
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2020
.label_2027:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_2029
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_2032
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_2033
	xor	edx, edx
	nop	
.label_2005:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_2005
.label_2033:
	cmp	rdx, -1
	je	.label_2017
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2020
.label_2017:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_2022
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2021
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2034
.label_2029:
	movaps	xmm0, xmmword ptr [rip + label_1337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2007
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_2012
.label_2032:
	mov	qword ptr [rsp + 0x18], r8
.label_2022:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_2034:
	xor	ebx, ebx
.label_2036:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2028
	xor	al, 1
	jne	.label_2028
.label_2012:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_2015
	mov	eax, dword ptr [rsp + 0xc]
.label_2015:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_2009
.label_2025:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_2024
.label_2028:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2014
.label_2007:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_2014:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_2020:
	mov	r14, qword ptr [rsp + 0x28]
.label_2009:
	test	ecx, ecx
	je	.label_2013
	cmp	ecx, 4
	jne	.label_2016
.label_2013:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2019
	jmp	.label_2006
.label_2021:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_2036
.label_2016:
	cmp	ecx, 2
	je	.label_2018
	mov	eax, dword ptr [rsp + 0xc]
.label_2006:
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
	#Procedure 0x413f70

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
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_2046
	nop	dword ptr [rax]
.label_2042:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2046:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2040
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2043
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2037:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2037
.label_2043:
	cmp	rdx, -1
	je	.label_2040
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2044
.label_2040:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2045
	cmp	qword ptr [rax + rcx], r14
	je	.label_2038
.label_2045:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2039
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2041
	test	rcx, rcx
	jne	.label_2042
	jmp	.label_2044
	nop	dword ptr [rax]
.label_2041:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2039
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2042
.label_2038:
	cmp	r15d, 9
	jne	.label_2044
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2039
.label_2044:
	xor	eax, eax
.label_2039:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414090

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
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2053
	mov	r15, r8
	jle	.label_2061
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2065
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_2065
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	eax, [rbx + 1]
	and	eax, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2067
	pxor	xmm1, xmm1
	jmp	.label_2077
.label_2067:
	lea	rbp, [rax - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2058:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2058
.label_2077:
	test	rax, rax
	je	.label_2075
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_2074:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rax
	jne	.label_2074
.label_2075:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2061
.label_2065:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	
.label_2068:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2068
.label_2061:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_2049
	test	r12, r12
	je	.label_2072
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2070:
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_2056
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2056
	mov	rdi, r8
	nop	word ptr cs:[rax + rax]
.label_2064:
	test	rdi, rdi
	jle	.label_2048
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2064
	nop	word ptr cs:[rax + rax]
.label_2056:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_2070
	jmp	.label_2049
.label_2072:
	lea	rdx, [rcx - 1]
	mov	eax, ecx
	and	eax, 7
	cmp	rdx, 7
	jb	.label_2073
	mov	rdx, rax
	sub	rdx, rcx
	nop	
.label_2047:
	add	rdx, 8
	jne	.label_2047
.label_2073:
	test	rax, rax
	je	.label_2049
	neg	rax
	nop	
.label_2076:
	inc	rax
	jne	.label_2076
.label_2049:
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2060
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	jle	.label_2062
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2071
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_2050
.label_2062:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_2054
	lea	r14, [r12 + 0x10]
.label_2050:
	xor	eax, eax
	nop	
.label_2059:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ecx, dword ptr [r8 + rsi + 8]
	mov	edx, ecx
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_2057
	mov	ebp, ecx
	shr	ebp, 0x14
	movzx	ebx, byte ptr [r13 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, ebp
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r13 + 0x68], bl
	cmp	cl, 0xc
	je	.label_2063
	cmp	cl, 4
	je	.label_2051
	cmp	cl, 2
	jne	.label_2052
	or	bl, 0x10
	jmp	.label_2055
.label_2051:
	or	bl, 0x40
	jmp	.label_2055
.label_2052:
	lea	rcx, [r8 + rsi + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2057
.label_2063:
	or	bl, 0x80
.label_2055:
	mov	byte ptr [r13 + 0x68], bl
.label_2057:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2059
.label_2054:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_2066
.label_2048:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2053:
	mov	dword ptr [r14], 0
	jmp	.label_2069
.label_2066:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_2060
.label_2071:
	mov	rdi, r13
	call	free
.label_2060:
	mov	dword ptr [r14], 0xc
.label_2069:
	xor	r13d, r13d
	jmp	.label_2048
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414410

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_2097
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2092
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2092
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2098:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2092
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2098
.label_2092:
	cmp	r10d, 5
	jne	.label_2102
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2078
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2081
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_2078
.label_2081:
	test	al, al
	jns	.label_2087
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2078
.label_2087:
	mov	r14d, ebx
	jmp	.label_2078
.label_2102:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2078
	test	al, al
	je	.label_2078
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2095
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2095
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2099
.label_2095:
	cmp	r8d, 1
	jne	.label_2101
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2099
.label_2101:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2099:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2084
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2090:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2089
	inc	rdx
	cmp	rdx, rax
	jl	.label_2090
.label_2084:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2086
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2096:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2089
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2096
	mov	rsi, qword ptr [r15 + 0x40]
.label_2086:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2093
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2079:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2100
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2089
.label_2100:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2079
	jmp	.label_2093
.label_2089:
	mov	ecx, ebx
.label_2093:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2085
	mov	r14d, ecx
	jmp	.label_2078
.label_2085:
	test	ecx, ecx
	jg	.label_2078
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_2078:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2097:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_2078
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_2078
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_2094
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_2078
.label_2094:
	cmp	bl, 0xef
	ja	.label_2091
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_2082
	cmp	dil, 0xa0
	jb	.label_2078
	jmp	.label_2082
.label_2091:
	cmp	bl, 0xf7
	ja	.label_2083
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_2082
	cmp	dil, 0x90
	jb	.label_2078
	jmp	.label_2082
.label_2083:
	cmp	bl, 0xfb
	ja	.label_2088
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_2082
	cmp	dil, 0x88
	jb	.label_2078
	jmp	.label_2082
.label_2088:
	cmp	bl, 0xfd
	ja	.label_2078
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_2082
	cmp	dil, 0x84
	jb	.label_2078
.label_2082:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2078
	add	rax, rcx
	mov	ecx, 1
.label_2080:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2078
	cmp	dl, 0xbf
	ja	.label_2078
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2080
	mov	r14d, esi
	jmp	.label_2078
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146a0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_2108
	jmp	qword ptr [(rbp * 8) + label_2105]
.label_2505:
	cmp	byte ptr [rsi], cl
	je	.label_2103
	xor	eax, eax
	jmp	.label_2108
.label_2506:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2103
	xor	eax, eax
	jmp	.label_2108
.label_2508:
	test	cl, cl
	js	.label_2110
.label_2507:
	test	cl, cl
	je	.label_2106
	cmp	cl, 0xa
	jne	.label_2103
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2103
	xor	eax, eax
	jmp	.label_2108
.label_2106:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2111
.label_2103:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2108
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2107
	test	ecx, ecx
	jne	.label_2107
	xor	eax, eax
	jmp	.label_2108
.label_2107:
	mov	edx, r14d
	test	dh, 8
	je	.label_2104
	test	ecx, ecx
	je	.label_2104
.label_2110:
	xor	eax, eax
	jmp	.label_2108
.label_2104:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2109
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2109
.label_2111:
	xor	eax, eax
	jmp	.label_2108
.label_2109:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2108:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414790

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
	sub	rsp, 0xb8
	mov	r13, rsi
	mov	qword ptr [rbp - 0x70], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_2226
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xd0], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2158
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	xor	r15d, r15d
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0xc0], r13
	nop	word ptr [rax + rax]
.label_2231:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax]
	shl	rsi, 4
	lea	r8, [rdi + rsi]
	mov	edx, dword ptr [rdi + rsi + 8]
	movzx	eax, dl
	cmp	eax, 1
	jne	.label_2177
	mov	cl, byte ptr [r8]
	mov	ebx, 1
	shl	rbx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x60], rbx
	jmp	.label_2131
	nop	
.label_2177:
	cmp	dl, 7
	je	.label_2141
	cmp	dl, 5
	je	.label_2140
	cmp	dl, 3
	jne	.label_2153
	mov	rcx, qword ptr [r8]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2131
.label_2141:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xd8]
	mov	rbx, -2
	test	cl, 0x40
	jne	.label_2162
	mov	qword ptr [rbp - 0x60], -0x401
	mov	rbx, -0x402
.label_2162:
	test	cl, cl
	jns	.label_2131
	mov	qword ptr [rbp - 0x60], rbx
	jmp	.label_2131
.label_2140:
	mov	rbx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_2174
	mov	rcx, qword ptr [rbx + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm0
	jmp	.label_2181
.label_2174:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, -1
.label_2181:
	mov	rbx, qword ptr [rbx + 0xd8]
	test	bl, 0x40
	jne	.label_2194
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x60], rcx
.label_2194:
	test	bl, bl
	jns	.label_2131
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x60], rcx
	nop	dword ptr [rax + rax]
.label_2131:
	shr	edx, 8
	mov	ecx, edx
	and	ecx, 0x3ff
	je	.label_2149
	test	dl, 0x20
	je	.label_2201
	mov	rcx, qword ptr [rbp - 0x60]
	test	ch, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	je	.label_2153
	mov	qword ptr [rbp - 0x60], 0x400
.label_2201:
	test	dl, dl
	js	.label_2156
	lea	rcx, [rdi + rsi + 8]
	test	dl, 4
	je	.label_2192
	cmp	eax, 1
	jne	.label_2214
	test	byte ptr [rcx + 2], 0x40
	je	.label_2156
.label_2214:
	mov	r9, r8
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2179
	mov	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x78]
	movdqu	xmm0, xmmword ptr [rdi + 0xb8]
	movdqu	xmm1, xmmword ptr [rsi]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rbx, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rsi + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, r8
	or	rdi, rbx
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rsi, xmm0
	or	rsi, rdi
	jmp	.label_2222
.label_2179:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	r8, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdi, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movq	rbx, xmm0
	or	rbx, r8
	or	rbx, rdi
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rsi, xmm0
	or	rsi, rbx
.label_2222:
	test	rsi, rsi
	mov	r8, r9
	je	.label_2153
.label_2192:
	test	dl, 8
	je	.label_2149
	cmp	eax, 1
	jne	.label_2154
	test	byte ptr [rcx + 2], 0x40
	jne	.label_2156
.label_2154:
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2159
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rcx]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	rdx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	mov	rdi, rsi
	movq	rsi, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, rdx
	or	rdi, rsi
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rcx, xmm0
	or	rcx, rdi
	jmp	.label_2164
	nop	dword ptr [rax]
.label_2156:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	jmp	.label_2153
.label_2159:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movq	rsi, xmm0
	or	rsi, rcx
	or	rsi, rdx
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	or	rcx, rsi
.label_2164:
	test	rcx, rcx
	je	.label_2153
	nop	word ptr [rax + rax]
.label_2149:
	test	r15, r15
	mov	qword ptr [rbp - 0x90], r14
	jle	.label_2235
	cmp	eax, 1
	jne	.label_2209
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rsi, r12
	xor	edi, edi
	mov	qword ptr [rbp - 0xc8], r8
	jmp	.label_2191
.label_2235:
	xor	edi, edi
	jmp	.label_2166
.label_2209:
	mov	r9, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x50]
	mov	r14, qword ptr [rbp - 0x48]
	mov	rbx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x38], r12
	xor	edi, edi
	jmp	.label_2137
.label_2113:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	mov	r9, r14
	jmp	.label_2152
.label_2203:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xb0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	jmp	.label_2152
.label_2137:
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdx, qword ptr [rbx - 0x18]
	mov	rax, qword ptr [rbx - 0x10]
	mov	rdi, rdx
	and	rdi, r9
	mov	r8, rax
	and	r8, rsi
	mov	rcx, r8
	mov	qword ptr [rbp - 0xb0], rdi
	or	rcx, rdi
	mov	r10, qword ptr [rbx - 8]
	mov	r15, r10
	and	r15, r11
	or	rcx, r15
	mov	qword ptr [rbp - 0x88], rbx
	mov	rdi, qword ptr [rbx]
	mov	r12, r11
	mov	r11, rdi
	and	r11, r14
	mov	r13d, 0x13
	or	rcx, r11
	je	.label_2117
	mov	rcx, r9
	not	rcx
	and	rcx, rdx
	not	rdx
	and	r9, rdx
	mov	qword ptr [rbp - 0xa0], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	rbx, rsi
	not	rbx
	and	rbx, rax
	mov	rdx, rbx
	or	rdx, rcx
	not	rax
	and	rsi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rax, r12
	not	rax
	and	rax, r10
	or	rdx, rax
	not	r10
	and	r12, r10
	mov	qword ptr [rbp - 0xb8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r14
	not	rsi
	and	rsi, rdi
	not	rdi
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	r12, r14
	je	.label_2145
	mov	r10, qword ptr [rbp - 0x30]
	mov	rdx, r10
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], rbx
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx - 0x18], rax
	mov	qword ptr [rbx - 0x10], r8
	mov	qword ptr [rbx - 8], r15
	mov	qword ptr [rbx], r11
	lea	r14, [r10 + r10*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r14*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r14*8 + 8], rdi
	mov	r15, qword ptr [rax + 8]
	test	r15, r15
	jle	.label_2183
	mov	qword ptr [rbp - 0xb0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r14*8 + 0x10], rax
	test	rax, rax
	je	.label_2203
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rcx + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2210
	nop	word ptr cs:[rax + rax]
.label_2117:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
	mov	r11, r12
	mov	r12, r14
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2152
	nop	word ptr [rax + rax]
.label_2145:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2223
.label_2183:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2210:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	inc	r15
	mov	rax, qword ptr [rbp - 0xc0]
.label_2223:
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	je	.label_2113
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rax, rsi
	mov	r9, r14
	or	rax, r9
	mov	r11, qword ptr [rbp - 0xb8]
	mov	rcx, r11
	or	rcx, r12
	or	rcx, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
	mov	rdi, qword ptr [rbp - 0x68]
.label_2152:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2133
	cmp	al, 0x13
	jne	.label_2135
.label_2133:
	mov	r14, r12
	inc	rdi
	add	qword ptr [rbp - 0x38], 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2137
	jmp	.label_2166
.label_2126:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xa0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2147
	nop	word ptr cs:[rax + rax]
.label_2191:
	movzx	eax, byte ptr [r8]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rbx + rcx*8]
	mov	r13d, 0x13
	bt	rdx, rax
	jae	.label_2147
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x30], r15
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	rax, r9
	and	rax, rdx
	mov	rsi, rcx
	and	rsi, r11
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xb0], rax
	or	rsi, rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r12, qword ptr [rbx + 0x10]
	mov	r15, r12
	mov	qword ptr [rbp - 0x88], rax
	and	r15, rax
	or	rsi, r15
	mov	rax, qword ptr [rbp - 0x48]
	mov	r14, qword ptr [rbx + 0x18]
	mov	r10, r14
	and	r10, rax
	or	rsi, r10
	je	.label_2176
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsi, rcx
	mov	rcx, rdx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdx
	mov	qword ptr [rbp - 0xb8], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	r8, r11
	not	r8
	and	r8, rsi
	mov	rdx, r8
	or	rdx, rcx
	not	rsi
	and	rsi, r11
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, rsi
	not	rax
	and	rax, r12
	or	rdx, rax
	not	r12
	and	r12, rsi
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, rdi
	not	rsi
	and	rsi, r14
	not	r14
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	qword ptr [rbp - 0x88], r14
	je	.label_2151
	mov	r11, qword ptr [rbp - 0x30]
	mov	rdx, r11
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], r8
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r15
	mov	qword ptr [rbx + 0x18], r10
	lea	r15, [r11 + r11*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r15*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r15*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2239
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r15*8 + 0x10], rax
	test	rax, rax
	mov	r14, qword ptr [rbp - 0x90]
	je	.label_2126
	mov	r15, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	inc	qword ptr [rbp - 0x30]
	jmp	.label_2144
	nop	dword ptr [rax]
.label_2176:
	mov	r15, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2147
.label_2239:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	inc	r11
	mov	qword ptr [rbp - 0x30], r11
.label_2151:
	mov	r14, qword ptr [rbp - 0x90]
	mov	r15, qword ptr [rbp - 0x38]
.label_2144:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rdi, r15
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	mov	rsi, r15
	je	.label_2168
	mov	rax, qword ptr [rbp - 0x98]
	or	rax, qword ptr [rbp - 0xb8]
	or	r12, qword ptr [rbp - 0x88]
	or	r12, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
.label_2168:
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
.label_2147:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2189
	cmp	al, 0x13
	jne	.label_2135
.label_2189:
	inc	rdi
	add	rsi, 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2191
	jmp	.label_2166
.label_2135:
	cmp	al, 0x11
	jne	.label_2193
	nop	
.label_2166:
	cmp	rdi, r15
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0x90]
	jne	.label_2153
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmm1, xmmword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	lea	r15, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r14*8]
	movdqa	xmm0, xmmword ptr [rip + label_1337]
	movdqu	xmmword ptr [r12 + r15*8], xmm0
	mov	rbx, rdi
	mov	edi, 8
	call	malloc
	mov	qword ptr [r12 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_2211
	mov	qword ptr [rax], r14
	inc	rbx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	r15, rbx
	jmp	.label_2215
.label_2193:
	and	r13b, 0x1f
	jne	.label_2221
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
.label_2215:
	mov	r14, qword ptr [rbp - 0x90]
.label_2153:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_2231
	test	r15, r15
	jle	.label_2234
.label_2188:
	lea	rax, [r15 + 1]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2230
	xor	ecx, ecx
.label_2230:
	mov	dword ptr [rbp - 0x74], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	ja	.label_2114
	test	rax, rax
	je	.label_2114
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2123
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xb8], 0
	jmp	.label_2132
.label_2123:
	call	malloc
	mov	rsi, qword ptr [rbp - 0x70]
	test	rax, rax
	je	.label_2114
	mov	cl, 1
	mov	dword ptr [rbp - 0xb8], ecx
.label_2132:
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0xb0], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	lea	rbx, [rbp - 0x60]
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	nop	dword ptr [rax + rax]
.label_2125:
	mov	qword ptr [rbp - 0x58], 0
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	test	rax, rax
	jle	.label_2185
	mov	rdx, qword ptr [rbp - 0x80]
	lea	r14, [rdx + rcx*8 + 8]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2205:
	mov	rcx, qword ptr [r14 + 8]
	mov	rcx, qword ptr [rcx + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2112
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x74], eax
	test	eax, eax
	jne	.label_2119
	mov	rax, qword ptr [r14]
	mov	rsi, qword ptr [rbp - 0x70]
.label_2112:
	inc	r12
	cmp	r12, rax
	jl	.label_2205
.label_2185:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x74]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2202
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2119
.label_2202:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2206
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + r13*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	jmp	.label_2118
	nop	word ptr cs:[rax + rax]
.label_2206:
	mov	ecx, 1
	lea	rdi, [rbp - 0x74]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2130
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2119
.label_2130:
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + r13*8], rax
	je	.label_2233
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	al, 1
	jg	.label_2196
	mov	rax, qword ptr [rbp - 0x98]
.label_2196:
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2238
.label_2233:
	mov	rdx, qword ptr [rbp - 0x70]
.label_2238:
	mov	ecx, 2
	lea	rdi, [rbp - 0x74]
	mov	rsi, rdx
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2118
	mov	eax, dword ptr [rbp - 0x74]
	test	eax, eax
	jne	.label_2119
	nop	dword ptr [rax]
.label_2118:
	mov	rax, r13
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x68]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x68], rdx
	or	r15, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0x88], rdx
	inc	r13
	cmp	r13, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	jl	.label_2125
	mov	rax, qword ptr [rbp - 0x98]
	and	al, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	edi, 8
	jne	.label_2200
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2119
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2172
	lea	r8, [rdi - 8]
	mov	r10d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2182
.label_2221:
	cmp	r13b, 0x1a
	mov	r12, qword ptr [rbp - 0x80]
	jne	.label_2188
.label_2212:
	mov	r14, -1
	test	r15, r15
	jle	.label_2158
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2197:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2197
.label_2158:
	mov	r15, r14
.label_2234:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_2199
	xor	eax, eax
	jmp	.label_2127
.label_2199:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2127
.label_2229:
	mov	rbx, r9
	mov	rcx, r8
.label_2207:
	add	rcx, 8
	test	qword ptr [rbx], r10
	lea	rbx, [rbx + 0x20]
	je	.label_2207
	mov	rbx, qword ptr [rbp - 0x70]
	test	qword ptr [rbx + 0xb8], r10
	je	.label_2216
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	jmp	.label_2213
.label_2216:
	mov	rcx, qword ptr [rcx]
.label_2213:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2219
	nop	
.label_2182:
	test	dl, 1
	jne	.label_2229
.label_2219:
	add	r10, r10
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2182
.label_2172:
	test	r15, r15
	mov	r11, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2225
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2157
.label_2142:
	mov	rdx, r10
	mov	rcx, r8
.label_2236:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2236
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2178
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	jmp	.label_2139
.label_2178:
	mov	rcx, qword ptr [rcx]
.label_2139:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2129
.label_2157:
	test	r15b, 1
	jne	.label_2142
.label_2129:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2157
.label_2225:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x30]
	je	.label_2120
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2124
.label_2155:
	mov	rdx, r10
	mov	rcx, r8
.label_2228:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2228
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2186
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2143
.label_2186:
	mov	rcx, qword ptr [rcx]
.label_2143:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2146
	nop	word ptr cs:[rax + rax]
.label_2124:
	test	r12b, 1
	jne	.label_2155
.label_2146:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2124
.label_2120:
	test	r11, r11
	je	.label_2115
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2165
.label_2184:
	mov	rdx, r10
	mov	rcx, r8
.label_2169:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2169
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2173
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2195
.label_2173:
	mov	rcx, qword ptr [rcx]
.label_2195:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2180
	nop	
.label_2165:
	test	r11b, 1
	jne	.label_2184
.label_2180:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2165
.label_2115:
	mov	rcx, qword ptr [rbp - 0x68]
	test	ch, 4
	je	.label_2138
	xor	ecx, ecx
	nop	
.label_2121:
	test	byte ptr [r9 + 1], 4
	jne	.label_2171
	inc	rcx
	add	r9, 0x20
	cmp	rcx, r15
	jl	.label_2121
	jmp	.label_2138
.label_2171:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x98]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2138
	mov	qword ptr [rax + 0x850], rcx
.label_2138:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2198
	call	free
.label_2198:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2148:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2148
	mov	rdi, r14
	call	free
	mov	al, 1
.label_2127:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2211:
	lea	rax, [r12 + r15*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r15, rbx
	jmp	.label_2212
.label_2114:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	jmp	.label_2220
.label_2226:
	xor	eax, eax
	jmp	.label_2127
.label_2200:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2119
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2232
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2187
.label_2119:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2237
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2237:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r15, qword ptr [rbp - 0x30]
	test	r15, r15
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_2116
.label_2220:
	mov	rbx, r12
	add	rbx, 0x10
	nop	
.label_2122:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2122
.label_2116:
	mov	rdi, r12
	call	free
	xor	eax, eax
	jmp	.label_2127
.label_2150:
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, r8
.label_2134:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2134
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	jmp	.label_2136
.label_2187:
	test	dl, 1
	jne	.label_2150
.label_2136:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2187
.label_2232:
	test	r15, r15
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_2160
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2163
.label_2190:
	mov	rdx, r9
	mov	rcx, r8
.label_2170:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2170
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	jmp	.label_2128
.label_2163:
	test	r15b, 1
	jne	.label_2190
.label_2128:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2163
.label_2160:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0xa8]
	je	.label_2175
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2167
.label_2208:
	mov	r11, rdx
	mov	rdx, r10
	mov	rcx, r8
.label_2204:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2204
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, r11
	jmp	.label_2224
.label_2167:
	test	dl, 1
	jne	.label_2208
.label_2224:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2167
.label_2175:
	test	rcx, rcx
	je	.label_2115
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2218
.label_2217:
	mov	r11, rcx
	mov	rdx, r10
	mov	rcx, r8
.label_2227:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2227
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r11
	jmp	.label_2161
.label_2218:
	test	cl, 1
	jne	.label_2217
.label_2161:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2218
	jmp	.label_2115
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415a10

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_1337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_2250
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2247
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_2246:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_2254
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_2243
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_2257
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2257
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_2258:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2241
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2255
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_2256
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_2240
.label_2255:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_2240
	jmp	.label_2241
.label_2256:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_2241
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2241
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2248
	xor	edi, edi
	nop	dword ptr [rax]
.label_2251:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2251
.label_2248:
	test	eax, eax
	je	.label_2241
	cmp	rdi, -1
	je	.label_2241
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2240
.label_2241:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_2242
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2242
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2242
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2249
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2245:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2245
.label_2249:
	cmp	rsi, -1
	je	.label_2242
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2242
	nop	dword ptr [rax]
.label_2240:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_2244
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_2252
.label_2244:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2252:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2247
.label_2242:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2258
.label_2257:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2246
	jmp	.label_2247
.label_2254:
	xor	ebp, ebp
	jmp	.label_2247
.label_2243:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2247:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2253:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2250:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_2253
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415d70

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r11, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r13, qword ptr [rax + r10*8]
	lea	rax, [r13 + 8]
	test	r13, r13
	cmove	rax, r13
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [r11 + 8], 0
	mov	qword ptr [rsp + 8], r10
	je	.label_2291
	test	r13, r13
	je	.label_2311
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], r12
	mov	rsi, r12
	mov	qword ptr [rsp + 0x20], r11
	mov	rdx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_2285
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x20]
	jne	.label_2275
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2277
	xor	ecx, ecx
.label_2277:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_2285
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2275
	xor	ebp, ebp
	nop	
.label_2302:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	mov	rbx, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_2285
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	mov	rdx, rbx
	jl	.label_2302
.label_2275:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_2273
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	mov	r11, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	je	.label_2311
	mov	qword ptr [rsp + 0x48], r13
	jle	.label_2318
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	mov	ebx, 0xfe
	nop	word ptr [rax + rax]
.label_2297:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_2260
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_2260
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsi + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r15, qword ptr [rcx + rdx]
	cmp	qword ptr [rsi + rax*8 + 0x18], r9
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2283
	test	rax, rax
	jle	.label_2260
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	dword ptr [rax + rax]
.label_2312:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	bl, 9
	je	.label_2290
	cmp	bl, 8
	jne	.label_2306
	cmp	r15, qword ptr [rcx + rdi]
	cmove	rsi, rbp
	jmp	.label_2306
	nop	word ptr cs:[rax + rax]
.label_2290:
	cmp	r15, qword ptr [rcx + rdi]
	cmove	r14, rbp
.label_2306:
	add	rdx, 8
	dec	rax
	jne	.label_2312
	test	rsi, rsi
	mov	ebx, 0xfe
	js	.label_2315
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2285
.label_2315:
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x10]
	js	.label_2260
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	jle	.label_2260
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2265:
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rcx + r15*8]
	mov	rdi, qword ptr [r12 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2305
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebp, 0
	je	.label_2282
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2280:
	lea	rbx, [rbp + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rdx, rbx
	cmp	rbp, rdx
	jb	.label_2280
.label_2282:
	cmp	rbp, -1
	mov	ebx, 0xfe
	je	.label_2305
	cmp	qword ptr [rdi + rbp*8], r14
	je	.label_2295
.label_2305:
	mov	rdi, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2286
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_2301
	xor	edi, edi
	nop	
.label_2316:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r14
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_2316
.label_2301:
	cmp	rdi, -1
	je	.label_2286
	cmp	qword ptr [rcx + rdi*8], r14
	je	.label_2295
.label_2286:
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2285
	dec	r15
	mov	r8, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_2295:
	inc	r15
	cmp	r15, r8
	jl	.label_2265
	jmp	.label_2260
.label_2283:
	test	rax, rax
	jle	.label_2260
	xor	ebp, ebp
	jmp	.label_2272
	nop	word ptr cs:[rax + rax]
.label_2294:
	mov	rcx, qword ptr [r12]
.label_2272:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2276
	cmp	r15, qword ptr [rcx + rdx]
	jne	.label_2276
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2285
	mov	rax, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_2276:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2294
	nop	
.label_2260:
	inc	r13
	mov	r14, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [r14 + 0x28]
	jl	.label_2297
.label_2318:
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x48]
.label_2311:
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	r10, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [rcx + r10*8], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	je	.label_2309
	jmp	.label_2273
.label_2291:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rax + r10*8], 0
.label_2309:
	test	r13, r13
	je	.label_2307
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r10*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2307
	mov	rbp, qword ptr [rbx + 0x98]
	mov	rax, qword ptr [rbx + 0xc8]
	xor	r13d, r13d
	test	rax, rax
	jle	.label_2264
	mov	rcx, qword ptr [rbx + 0xd8]
	xor	r13d, r13d
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_2274:
	lea	rsi, [rdx + r13]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r10
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r13, rsi
	cmp	r13, rdx
	jl	.label_2274
.label_2264:
	cmp	r13, rax
	jge	.label_2287
	cmp	r13, -1
	je	.label_2287
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rcx, [r13 + r13*4]
	mov	qword ptr [rsp + 0x88], rcx
	cmp	qword ptr [rax + rcx*8 + 8], r10
	jne	.label_2287
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2287
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x98], rax
	xor	ecx, ecx
	shl	qword ptr [rsp + 0x88], 3
	mov	qword ptr [rsp + 0x28], r14
	nop	dword ptr [rax]
.label_2293:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, qword ptr [rax + rcx*8]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [r14 + 0x10]
	jne	.label_2314
	cmp	eax, 4
	jne	.label_2266
	cmp	qword ptr [r14 + 0x18], r10
	jne	.label_2263
	jmp	.label_2266
	nop	word ptr cs:[rax + rax]
.label_2314:
	cmp	eax, 4
	jne	.label_2266
.label_2263:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, qword ptr [rsp + 0x88]
	mov	rbx, r13
.label_2303:
	cmp	qword ptr [rbp], r15
	jne	.label_2269
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	r9, rax
	sub	r9, rcx
	add	r9, r10
	cmp	rax, rcx
	je	.label_2281
	lea	rcx, [r15*8]
	add	rcx, qword ptr [r12 + 0x18]
	jmp	.label_2289
.label_2281:
	mov	rax, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rcx, qword ptr [rax + rcx*8 + 0x10]
.label_2289:
	cmp	r9, qword ptr [r14 + 0x18]
	jg	.label_2269
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2269
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2269
	mov	r8, qword ptr [rcx]
	dec	rax
	mov	rcx, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2304
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2279:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2279
.label_2304:
	cmp	rdx, -1
	je	.label_2269
	cmp	qword ptr [rcx + rdx*8], r8
	jne	.label_2269
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, r15
	mov	rcx, r10
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 8]
	test	al, al
	jne	.label_2269
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2268
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, r14
	mov	r14, qword ptr [r14 + 0x28]
	mov	qword ptr [rsp + 0x78], r14
	test	r14, r14
	jle	.label_2262
	mov	qword ptr [rsp + 0x70], r14
	shl	r14, 3
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2296
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, r14
	mov	r14, rbp
	call	memcpy
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_2268
.label_2262:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r14, rbp
.label_2268:
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 0x68], r10
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 8]
	mov	r12d, 0xc
	test	al, al
	je	.label_2278
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2278
	mov	r14, qword ptr [r14 + 8]
	test	r14, r14
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_2261
	mov	qword ptr [rsp + 0x90], rbp
	test	r10, r10
	lea	rdi, [rsp + 0xa0]
	js	.label_2308
	mov	rbp, -1
	mov	qword ptr [rsp + 0x48], r15
	nop	dword ptr [rax + rax]
.label_2310:
	mov	rsi, qword ptr [r14 + rbp*8 + 8]
	mov	rdx, qword ptr [rax + rbp*8 + 8]
	test	rsi, rsi
	je	.label_2313
	test	rdx, rdx
	je	.label_2284
	add	rsi, 8
	add	rdx, 8
	mov	r15, rdi
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0x44], r12d
	test	r12d, r12d
	jne	.label_2278
	lea	rdi, [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r15
	call	re_acquire_state
	mov	qword ptr [r14 + rbp*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	r12d, dword ptr [rsp + 0x44]
	test	r12d, r12d
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_2284
	jmp	.label_2278
	nop	word ptr [rax + rax]
.label_2313:
	mov	qword ptr [r14 + rbp*8 + 8], rdx
.label_2284:
	inc	rbp
	cmp	rbp, r10
	jl	.label_2310
.label_2308:
	mov	rbp, qword ptr [rsp + 0x90]
.label_2261:
	mov	qword ptr [rax + r10*8], rbp
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	mov	r14, qword ptr [rsp + 0x28]
	jle	.label_2270
	mov	r12, rsi
	dec	r12
	mov	rcx, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_2298
	mov	rdi, r12
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2267:
	lea	rbp, [rdx + rdi]
	shr	rbp, 1
	cmp	qword ptr [rcx + rbp*8], rbx
	lea	rax, [rbp + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbp
	cmp	rdx, rdi
	jb	.label_2267
.label_2298:
	cmp	qword ptr [rcx + rdx*8], rbx
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_2270
	cmp	rsi, rdi
	jle	.label_2270
	mov	qword ptr [rsp + 0x78], r12
	cmp	r12, rdi
	jle	.label_2270
	lea	r14, [rdx + 1]
	cmp	r12, r14
	mov	r11, r14
	cmovge	r11, r12
	sub	r11, rdx
	cmp	r11, 4
	jae	.label_2317
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2288
.label_2317:
	mov	r8, r11
	and	r8, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_2292
	cmp	r12, r14
	cmovge	r14, r12
	sub	r14, rdx
	add	r14, -4
	shr	r14, 2
	lea	r10d, [r14 + 1]
	and	r10d, 1
	test	r14, r14
	mov	edi, 0
	je	.label_2271
	lea	rbp, [rcx + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r14
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2300:
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbp + rdi*8 - 0x20]
	movups	xmmword ptr [rbp + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbp + rdi*8]
	movups	xmmword ptr [rbp + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_2300
.label_2271:
	test	r10, r10
	je	.label_2259
	add	rdi, rdx
	movups	xmm0, xmmword ptr [rcx + rdi*8 + 8]
	movups	xmm1, xmmword ptr [rcx + rdi*8 + 0x18]
	movups	xmmword ptr [rcx + rdi*8], xmm0
	movups	xmmword ptr [rcx + rdi*8 + 0x10], xmm1
.label_2259:
	cmp	r11, r9
	mov	r10, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_2270
	add	rdx, r8
	jmp	.label_2288
.label_2292:
	mov	r14, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_2288:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, r12
	jl	.label_2288
.label_2270:
	lea	rbp, [rbx + rbx*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_2269:
	inc	rbx
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_2303
.label_2266:
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_2293
.label_2278:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2299
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_2299:
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	je	.label_2307
	jmp	.label_2273
.label_2287:
	mov	dword ptr [rsp + 4], 0
.label_2307:
	xor	r12d, r12d
.label_2273:
	mov	eax, r12d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2285:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_2273
.label_2296:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2278
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416800

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_2319
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_2319
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_2329
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2319
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_2326
.label_2329:
	lea	r8, [r12 + 0x10]
.label_2326:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_2324:
	dec	rcx
	mov	rdi, r11
.label_2327:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2335:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2330
	jl	.label_2333
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2335
	jmp	.label_2320
	nop	word ptr cs:[rax + rax]
.label_2333:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_2327
	jmp	.label_2320
	nop	dword ptr [rax + rax]
.label_2330:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_2325
	nop	dword ptr [rax + rax]
.label_2321:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_2328
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2321
	jmp	.label_2325
.label_2328:
	je	.label_2334
	nop	word ptr cs:[rax + rax]
.label_2325:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_2334:
	test	rcx, rcx
	jle	.label_2320
	cmp	rdi, 2
	jge	.label_2324
.label_2320:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_2322
	test	rax, rax
	js	.label_2322
	xor	edx, edx
.label_2332:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_2336:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_2331
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2336
	jmp	.label_2322
	nop	
.label_2331:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_2332
	jmp	.label_2323
.label_2322:
	mov	rdx, r8
.label_2323:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2319:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4169c0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_2352
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2358:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_2344
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_2344
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2354
	mov	r10, qword ptr [rax + 8]
.label_2354:
	test	r9, r9
	jle	.label_2345
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_2366
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2337:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_2337
.label_2366:
	cmp	rbp, -1
	je	.label_2345
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2346
.label_2345:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2346
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2349
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2362:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_2362
.label_2349:
	cmp	rax, -1
	je	.label_2346
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_2369
.label_2346:
	test	r10, r10
	jle	.label_2344
	test	r9, r9
	jle	.label_2340
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_2342
	xor	esi, esi
	nop	dword ptr [rax]
.label_2353:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_2353
.label_2342:
	cmp	rsi, -1
	je	.label_2340
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_2344
.label_2340:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2344
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2359
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2363:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_2363
.label_2359:
	cmp	rax, -1
	je	.label_2344
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_2344
.label_2369:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2360
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_2344:
	inc	r14
	cmp	r14, r9
	jl	.label_2358
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_2352
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	r9, r9
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	jle	.label_2367
	dec	r9
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_2339:
	test	r9, r9
	mov	rsi, qword ptr [r8 + r14*8]
	mov	eax, 0
	je	.label_2343
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2348:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], rsi
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2348
.label_2343:
	cmp	rax, -1
	je	.label_2355
	cmp	qword ptr [rdi + rax*8], rsi
	je	.label_2347
.label_2355:
	mov	r11, qword ptr [r12 + 8]
	test	r11, r11
	jle	.label_2347
	mov	r10, r11
	dec	r10
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2364
	mov	rbx, r10
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2356:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_2356
.label_2364:
	cmp	qword ptr [rbp + rax*8], rsi
	mov	rsi, -1
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_2347
	cmp	r11, rsi
	jle	.label_2347
	mov	qword ptr [r12 + 8], r10
	cmp	r10, rsi
	jle	.label_2347
	nop	word ptr cs:[rax + rax]
.label_2341:
	mov	rcx, qword ptr [rbp + rax*8 + 8]
	mov	qword ptr [rbp + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2341
	nop	word ptr cs:[rax + rax]
.label_2347:
	inc	r14
	cmp	r14, qword ptr [r13]
	jl	.label_2339
	jmp	.label_2365
.label_2352:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2365:
	call	free
	xor	ebp, ebp
.label_2357:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2367:
	mov	r11, qword ptr [r12 + 8]
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_2361:
	test	r11, r11
	jle	.label_2338
	mov	rbx, qword ptr [r8 + r10*8]
	mov	r9, r11
	dec	r9
	mov	rsi, qword ptr [r12 + 0x10]
	mov	ebp, 0
	je	.label_2351
	mov	rax, r9
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2368:
	lea	rcx, [rbp + rax]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rdx, [rcx + 1]
	cmovl	rbp, rdx
	cmovge	rax, rcx
	cmp	rbp, rax
	jb	.label_2368
.label_2351:
	cmp	qword ptr [rsi + rbp*8], rbx
	mov	rax, -1
	cmove	rax, rbp
	test	rax, rax
	js	.label_2338
	cmp	r11, rax
	jle	.label_2338
	mov	qword ptr [r12 + 8], r9
	cmp	r9, rax
	mov	r11, r9
	jle	.label_2338
	nop	word ptr cs:[rax + rax]
.label_2350:
	mov	rax, qword ptr [rsi + rbp*8 + 8]
	mov	qword ptr [rsi + rbp*8], rax
	inc	rbp
	mov	r11, qword ptr [r12 + 8]
	cmp	rbp, r11
	jl	.label_2350
	nop	word ptr cs:[rax + rax]
.label_2338:
	inc	r10
	cmp	r10, qword ptr [r13]
	jl	.label_2361
	jmp	.label_2365
.label_2360:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_2357
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416e10

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
	jle	.label_2370
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2371:
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
	jne	.label_2372
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2371
.label_2370:
	xor	eax, eax
.label_2372:
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
	#Procedure 0x416f00

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_2373
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_2373
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
	je	.label_2373
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2373:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416f50

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r9, rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rdi + 0x30]
	lea	rcx, [r9 + r9*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2397
	lea	r10, [rax + rcx*8 + 8]
	mov	edx, 1
	mov	rcx, qword ptr [rsp + 0x10]
	shl	rdx, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	esi, eax
	shl	esi, 0x1f
	sar	esi, 0x1f
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x60], rdx
	xor	rdx, 0xffff
	mov	qword ptr [rsp + 0x58], rdx
	mov	edx, eax
	and	edx, 2
	mov	dword ptr [rsp + 0x18], edx
	shr	edx, 1
	cmp	rcx, 0x3f
	setg	cl
	mov	dword ptr [rsp + 0x2c], edx
	or	cl, dl
	mov	byte ptr [rsp + 0xb], cl
	and	eax, 1
	mov	dword ptr [rsp + 0x54], eax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x38], r10
	nop	word ptr [rax + rax]
.label_2399:
	mov	rax, qword ptr [r10 + 8]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rdi]
	mov	rsi, r15
	shl	rsi, 4
	lea	rdx, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_2374
	cmp	al, 8
	je	.label_2384
	cmp	al, 4
	jne	.label_2388
	cmp	r8, -1
	je	.label_2388
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x30]
	add	r13, qword ptr [rax + 0xd8]
	cmp	qword ptr [rsp + 0x10], 0x3f
	jg	.label_2389
	mov	r12d, ecx
	nop	
.label_2385:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2391
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x60], rax
	je	.label_2391
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2401
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2382
.label_2401:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2382
	test	eax, eax
	jne	.label_2395
	cmp	dword ptr [rsp + 0x18], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_2382
.label_2395:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2391:
	mov	ecx, r12d
.label_2382:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2380
	test	al, al
	jne	.label_2383
.label_2380:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_2385
	jmp	.label_2388
	nop	word ptr [rax + rax]
.label_2374:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2388
	xor	eax, eax
	jmp	.label_2392
	nop	
.label_2384:
	cmp	dword ptr [rsp + 0x54], 0
	je	.label_2388
	mov	eax, 0xffffffff
.label_2392:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx], rsi
	jne	.label_2388
	jmp	.label_2396
.label_2389:
	cmp	byte ptr [rsp + 0xb], 0
	je	.label_2400
	mov	ebx, ecx
.label_2394:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2375
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2378
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2387
	nop	
.label_2378:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2387
	test	eax, eax
	jne	.label_2377
	cmp	dword ptr [rsp + 0x18], 0
	mov	eax, 0
	cmovne	ebx, eax
	mov	ecx, ebx
	mov	ebp, dword ptr [rsp + 0x2c]
	jmp	.label_2387
.label_2377:
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2375:
	mov	ecx, ebx
.label_2387:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2379
	test	al, al
	jne	.label_2383
.label_2379:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_2394
	jmp	.label_2388
.label_2400:
	mov	ebx, ecx
	nop	word ptr [rax + rax]
.label_2398:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2381
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2393
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2376
	nop	dword ptr [rax + rax]
.label_2393:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2376
	test	eax, eax
	jne	.label_2386
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
.label_2386:
	xor	ebp, ebp
.label_2381:
	mov	ecx, ebx
.label_2376:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2390
	test	al, al
	jne	.label_2383
.label_2390:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_2398
	jmp	.label_2388
.label_2383:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_2396
	nop	word ptr cs:[rax + rax]
.label_2388:
	inc	r14
	cmp	r14, qword ptr [r10]
	jl	.label_2399
.label_2397:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_2396:
	add	rsp, 0x68
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
	#Procedure 0x417320

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
	jne	.label_2403
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2402
	test	cl, cl
	jne	.label_2402
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2402
.label_2403:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2402
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2402:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417380

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2405
	cmp	byte ptr [rax], 0x43
	jne	.label_2407
	cmp	byte ptr [rax + 1], 0
	je	.label_2404
.label_2407:
	mov	esi, OFFSET FLAT:label_2406
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2405
.label_2404:
	xor	ebx, ebx
.label_2405:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4173c0

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
	mov	eax, OFFSET FLAT:label_2408
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x4173f0

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
