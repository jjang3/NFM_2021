	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_9
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:.str.47
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b70

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
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.13
	mov	esi, OFFSET FLAT:.str.14
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.13
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
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
	jmp	.label_12
.label_11:
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
	nop	dword ptr [rax + rax]
.label_12:
	mov	bl, bpl
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_19
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_21]]
.label_2211:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6f
	jg	.label_18
	cmp	ecx, 0x61
	je	.label_23
	cmp	ecx, 0x6e
	je	.label_23
	jmp	.label_25
.label_19:
	cmp	eax, -1
	je	.label_26
	cmp	eax, 0xffffff7d
	je	.label_28
	cmp	eax, 0xffffff7e
	jne	.label_12
	jmp	.label_31
.label_2212:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + section_del]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_2213:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6f
	jg	.label_36
	cmp	ecx, 0x61
	je	.label_43
	cmp	ecx, 0x6e
	je	.label_43
	jmp	.label_39
.label_2214:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6f
	jg	.label_46
	cmp	ecx, 0x61
	je	.label_15
	cmp	ecx, 0x6e
	je	.label_15
	jmp	.label_13
.label_2215:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [rip + page_incr]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_2216:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [rip + blank_join]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_2217:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x72
	je	.label_29
	movzx	ecx, cl
	cmp	ecx, 0x6c
	jne	.label_33
	movzx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6e
	jne	.label_34
	cmp	byte ptr [rax + 2], 0
	je	.label_35
.label_34:
	cmp	ecx, 0x72
	jne	.label_33
.label_29:
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6e
	jne	.label_38
	cmp	byte ptr [rax + 2], 0
	je	.label_42
.label_38:
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x7a
	jne	.label_33
	cmp	byte ptr [rax + 2], 0
	je	.label_45
.label_33:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_11
.label_2218:
	mov	byte ptr [byte ptr [rip + reset_numbers]],  1
	mov	bpl, bl
	jmp	.label_12
.label_2219:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + separator_str]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_2220:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r14 + 1]
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [rip + starting_line_number]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_2221:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + lineno_width]],  eax
	mov	bpl, bl
	jmp	.label_12
.label_18:
	cmp	ecx, 0x70
	je	.label_30
	cmp	ecx, 0x74
	jne	.label_25
.label_23:
	mov	qword ptr [word ptr [rip + body_type]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_36:
	cmp	ecx, 0x70
	je	.label_37
	cmp	ecx, 0x74
	jne	.label_39
.label_43:
	mov	qword ptr [word ptr [rip + footer_type]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_46:
	cmp	ecx, 0x70
	je	.label_44
	cmp	ecx, 0x74
	jne	.label_13
.label_15:
	mov	qword ptr [word ptr [rip + header_type]],  rax
	mov	bpl, bl
	jmp	.label_12
.label_30:
	lea	rbp, [rax + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	qword ptr [word ptr [rip + body_type]],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + body_regex]],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [word ptr [rip + label_10]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:body_regex
	jmp	.label_17
.label_25:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	jmp	.label_11
.label_37:
	lea	rbp, [rax + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	qword ptr [word ptr [rip + footer_type]],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + footer_regex]],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [word ptr [rip + label_20]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:footer_regex
	jmp	.label_17
.label_39:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	jmp	.label_11
.label_44:
	lea	rbp, [rax + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	qword ptr [word ptr [rip + header_type]],  rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + header_regex]],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [word ptr [rip + label_32]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:header_regex
.label_17:
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	mov	bpl, bl
	je	.label_12
	jmp	.label_14
.label_13:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_11
.label_42:
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_RIGHT_NOLZ
	mov	bpl, bl
	jmp	.label_12
.label_45:
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_RIGHT_LZ
	mov	bpl, bl
	jmp	.label_12
.label_35:
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_LEFT
	mov	bpl, bl
	jmp	.label_12
.label_26:
	test	bl, bl
	je	.label_40
	mov	rdi,  qword ptr [word ptr [rip + section_del]]
	call	strlen
	mov	rbp, rax
	lea	rax, [rbp + rbp*2]
	mov	qword ptr [word ptr [rip + header_del_len]],  rax
	lea	rdi, [rbp + rbp*2 + 1]
	call	xmalloc
	mov	qword ptr [word ptr [rip + header_del]],  rax
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	lea	rax, [rbp + rbp]
	mov	qword ptr [word ptr [rip + body_del_len]],  rax
	lea	rdi, [rbp + rbp + 1]
	call	xmalloc
	mov	qword ptr [word ptr [rip + body_del]],  rax
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	qword ptr [word ptr [rip + footer_del_len]],  rbp
	lea	rdi, [rbp + 1]
	call	xmalloc
	mov	qword ptr [word ptr [rip + footer_del]],  rax
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	edi, OFFSET FLAT:line_buf
	call	initbuffer
	mov	rdi,  qword ptr [word ptr [rip + separator_str]]
	call	strlen
	mov	r14, rax
	movsxd	rax,  dword ptr [dword ptr [rip + lineno_width]]
	lea	rdi, [r14 + rax + 1]
	call	xmalloc
	mov	r13, rax
	mov	qword ptr [word ptr [rip + print_no_line_fmt]],  r13
	movsxd	rbp,  dword ptr [dword ptr [rip + lineno_width]]
	add	rbp, r14
	mov	esi, 0x20
	mov	rdi, r13
	mov	rdx, rbp
	call	memset
	mov	byte ptr [r13 + rbp], 0
	mov	rax,  qword ptr [word ptr [rip + starting_line_number]]
	mov	qword ptr [word ptr [rip + line_no]],  rax
	mov	rax,  qword ptr [word ptr [rip + body_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:body_regex
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r12d
	jne	.label_16
	mov	edi, OFFSET FLAT:.str.30
	call	nl_file
	mov	bl, al
	jmp	.label_27
.label_16:
	jge	.label_27
	nop	word ptr cs:[rax + rax]
.label_22:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	nl_file
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r12d
	jl	.label_22
.label_27:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_41
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_24
.label_41:
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
.label_28:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.28
	mov	r9d, OFFSET FLAT:.str.29
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_31:
	xor	edi, edi
	call	usage
.label_40:
	mov	edi, 1
	call	usage
.label_14:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
.label_24:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.30
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402280

	.globl nl_file
	.type nl_file, @function
nl_file:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_47
	cmp	byte ptr [r14 + 1], 0
	je	.label_56
.label_47:
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r14
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_64
	jmp	.label_61
.label_56:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	r15,  qword ptr [word ptr [rip + stdin]]
.label_64:
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_71:
	mov	rdi,  qword ptr [word ptr [rip + label_48]]
	mov	rdx,  qword ptr [word ptr [rip + label_57]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
.label_53:
	mov	edi, OFFSET FLAT:line_buf
	mov	rsi, r15
	call	readlinebuffer
	test	rax, rax
	je	.label_51
	mov	rbp,  qword ptr [word ptr [rip + label_57]]
	lea	rbx, [rbp - 1]
	cmp	rbx, 2
	jb	.label_58
	mov	r12,  qword ptr [word ptr [rip + label_48]]
	mov	rax,  qword ptr [word ptr [rip + section_del]]
	movzx	eax, word ptr [rax]
	movzx	ecx, word ptr [r12]
	cmp	ecx, eax
	jne	.label_58
	cmp	rbx,  qword ptr [word ptr [rip + header_del_len]]
	jne	.label_70
	mov	rsi,  qword ptr [word ptr [rip + header_del]]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_72
.label_70:
	cmp	rbx,  qword ptr [word ptr [rip + body_del_len]]
	jne	.label_73
	mov	rsi,  qword ptr [word ptr [rip + body_del]]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_49
.label_73:
	cmp	rbx,  qword ptr [word ptr [rip + footer_del_len]]
	jne	.label_58
	mov	rsi,  qword ptr [word ptr [rip + footer_del]]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_63
	nop	dword ptr [rax]
.label_58:
	mov	rax,  qword ptr [word ptr [rip + current_type]]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x6f
	jg	.label_65
	cmp	eax, 0x61
	je	.label_68
	cmp	eax, 0x6e
	je	.label_54
	jmp	.label_71
	nop	word ptr cs:[rax + rax]
.label_65:
	cmp	eax, 0x70
	je	.label_69
	cmp	eax, 0x74
	jne	.label_71
	cmp	rbp, 2
	jb	.label_54
	jmp	.label_50
.label_68:
	mov	rax,  qword ptr [word ptr [rip + blank_join]]
	cmp	rax, 2
	jl	.label_50
	cmp	rbp, 1
	ja	.label_75
	mov	rcx,  qword ptr [word ptr [rip + proc_text.blank_lines]]
	inc	rcx
	mov	qword ptr [word ptr [rip + proc_text.blank_lines]],  rcx
	cmp	rcx, rax
	jne	.label_54
.label_75:
	mov	rsi,  qword ptr [word ptr [rip + lineno_format]]
	mov	edx,  dword ptr [dword ptr [rip + lineno_width]]
	mov	rcx,  qword ptr [word ptr [rip + line_no]]
	mov	r8,  qword ptr [word ptr [rip + separator_str]]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	mov	rax,  qword ptr [word ptr [rip + page_incr]]
	test	rax, rax
	js	.label_59
	add	qword ptr [word ptr [rip + line_no]],  rax
	mov	qword ptr [word ptr [rip + proc_text.blank_lines]],  0
	jmp	.label_71
.label_69:
	mov	rdi,  qword ptr [word ptr [rip + current_regex]]
	mov	rsi,  qword ptr [word ptr [rip + label_48]]
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdx, rbx
	mov	r8, rbx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_54
	cmp	rax, -2
	je	.label_62
.label_50:
	mov	rsi,  qword ptr [word ptr [rip + lineno_format]]
	mov	edx,  dword ptr [dword ptr [rip + lineno_width]]
	mov	rcx,  qword ptr [word ptr [rip + line_no]]
	mov	r8,  qword ptr [word ptr [rip + separator_str]]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	mov	rax,  qword ptr [word ptr [rip + page_incr]]
	test	rax, rax
	js	.label_59
	add	qword ptr [word ptr [rip + line_no]],  rax
	jmp	.label_71
	nop	word ptr cs:[rax + rax]
.label_54:
	mov	rdi,  qword ptr [word ptr [rip + print_no_line_fmt]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	jmp	.label_71
.label_72:
	mov	rax,  qword ptr [word ptr [rip + header_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:header_regex
	jmp	.label_60
.label_49:
	mov	rax,  qword ptr [word ptr [rip + body_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:body_regex
	jmp	.label_60
.label_63:
	mov	rax,  qword ptr [word ptr [rip + footer_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:footer_regex
.label_60:
	mov	al,  byte ptr [byte ptr [rip + reset_numbers]]
	and	al, 1
	jne	.label_74
	mov	rax,  qword ptr [word ptr [rip + starting_line_number]]
	mov	qword ptr [word ptr [rip + line_no]],  rax
.label_74:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_52
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_53
.label_52:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_53
.label_51:
	test	byte ptr [r15], 0x20
	jne	.label_61
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_66
	cmp	byte ptr [r14 + 1], 0
	je	.label_67
.label_66:
	mov	rdi, r15
	call	rpl_fclose
	mov	bl, 1
	cmp	eax, -1
	jne	.label_55
.label_61:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_55:
	mov	al, bl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_67:
	mov	rdi, r15
	call	clearerr_unlocked
	mov	bl, 1
	jmp	.label_55
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_62:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402680
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_79
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_78
	cmp	dword ptr [rbp], 0x20
	jne	.label_78
.label_79:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_77
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_76
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_77:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_76:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_80
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_80:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
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
	.align	16
	#Procedure 0x402790

	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:
	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0

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
	jne	.label_81
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	movsx	eax, dl
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [rsp], edx
	mov	r13, r12
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_82
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_83:
	cmp	r13, r14
	jne	.label_84
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_84:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, dword ptr [rsp + 4]
	jne	.label_85
	jmp	.label_86
.label_82:
	mov	rdi, rbp
	call	__uflow
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_83
	cmp	r13, r12
	mov	ecx, dword ptr [rsp]
	mov	eax, 0
	je	.label_81
	test	byte ptr [rbp], 0x20
	jne	.label_81
	mov	eax, ecx
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_83
.label_86:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_81:
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
	#Procedure 0x402880
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_88
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_89
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_89
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_87
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_87:
	mov	rbx, r14
.label_89:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_88:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402940
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
	#Procedure 0x402980
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
	#Procedure 0x402990
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
	#Procedure 0x4029a0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	#Procedure 0x4029e0
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
	#Procedure 0x402a00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_90
	test	rdx, rdx
	je	.label_90
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_90:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a30
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
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
	#Procedure 0x402ab0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_132:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_186
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_188]]
.label_2329:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_2330:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_208
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_208
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_112:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_103
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_103:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_112
.label_208:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_135
.label_2322:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_135
.label_2325:
	mov	al, 1
.label_2323:
	mov	r12b, 1
.label_2326:
	test	r12b, 1
	mov	cl, 1
	je	.label_147
	mov	cl, al
.label_147:
	mov	al, cl
.label_2324:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_152
	test	r10, r10
	je	.label_155
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_156
.label_152:
	xor	ecx, ecx
	jmp	.label_156
.label_2327:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_166
	test	r10, r10
	je	.label_168
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_171
.label_2328:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_135
.label_155:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_156:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_135
.label_166:
	xor	eax, eax
	jmp	.label_171
.label_168:
	mov	eax, 1
.label_171:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_135:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_130
.label_144:
	inc	rdi
.label_130:
	cmp	rbp, -1
	je	.label_121
	cmp	rdi, rbp
	jne	.label_124
	jmp	.label_126
	nop	word ptr cs:[rax + rax]
.label_121:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_131
.label_124:
	test	r12b, r12b
	je	.label_134
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_136
	cmp	rbp, -1
	jne	.label_136
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_136:
	cmp	rbx, rbp
	jbe	.label_160
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_170
	nop	word ptr [rax + rax]
.label_134:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_170
.label_160:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_182
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_170
	jmp	.label_100
.label_182:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_170:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_104
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_203]]
.label_2252:
	test	rdi, rdi
	jne	.label_94
	jmp	.label_210
.label_2256:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_211
	test	rdi, rdi
	jne	.label_190
	cmp	rbp, 1
	je	.label_210
	xor	r13d, r13d
	jmp	.label_98
.label_2245:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_93
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_100
	cmp	r9d, 2
	jne	.label_105
	mov	al, r14b
	and	al, 1
	jne	.label_107
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_110
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_110:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_92
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_92:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_161:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_140
.label_2246:
	mov	bl, 0x62
	jmp	.label_128
.label_2247:
	mov	cl, 0x74
	jmp	.label_139
.label_2248:
	mov	bl, 0x76
	jmp	.label_128
.label_2249:
	mov	bl, 0x66
	jmp	.label_128
.label_2250:
	mov	cl, 0x72
	jmp	.label_139
.label_2253:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_157
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_162
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_162:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_179:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_212
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_153:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_98
.label_2254:
	cmp	r9d, 5
	je	.label_189
	cmp	r9d, 2
	jne	.label_94
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_94
	jmp	.label_195
.label_2255:
	cmp	r9d, 2
	jne	.label_197
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_199
	jmp	.label_205
.label_104:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_206
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_118:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_96
	test	cl, cl
	je	.label_96
	xor	eax, eax
	jmp	.label_98
.label_211:
	test	rdi, rdi
	jne	.label_115
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_115
.label_210:
	mov	dl, 1
.label_2251:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_99
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_98
.label_93:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_144
	jmp	.label_94
.label_197:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_139
.label_199:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_138
.label_139:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_141
.label_128:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_98
	jmp	.label_148
.label_206:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_149
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_149:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_209:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_178
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_181
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_183
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_198
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_196:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_192
	bt	rsi, rdx
	jb	.label_193
.label_192:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_196
.label_198:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_125
	xor	r13d, r13d
.label_125:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_209
	jmp	.label_118
.label_115:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_98
.label_189:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_94
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_94
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_94
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_108
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_113
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_214
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_117
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_117:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_133
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_133:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_142
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_142:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_120
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_120:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_98
.label_94:
	xor	eax, eax
	xor	r13d, r13d
.label_98:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_164
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_167
	jmp	.label_127
	nop	word ptr [rax + rax]
.label_164:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_127
.label_167:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_174
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_180:
	mov	bl, r15b
	je	.label_138
	jmp	.label_148
.label_174:
	mov	bl, r15b
.label_148:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_100
	cmp	r9d, 2
	jne	.label_187
	mov	al, r14b
	and	al, 1
	jne	.label_187
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_172:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_187:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_213
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_213:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_123
.label_190:
	xor	r13d, r13d
	jmp	.label_98
.label_96:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_101
	nop	word ptr [rax + rax]
.label_95:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_101:
	test	cl, cl
	je	.label_114
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_116
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_122
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_122:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_116
	nop	word ptr [rax + rax]
.label_114:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_100
	cmp	r9d, 2
	jne	.label_143
	mov	al, r14b
	and	al, 1
	jne	.label_143
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_145
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_145:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_146
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_146:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_185
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_185:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_143:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_173
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_173:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_177
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_177:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_137
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_137:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_116:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_138
	test	r14b, 1
	je	.label_194
	mov	bl, al
	and	bl, 1
	jne	.label_194
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_215
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_215:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_207
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_207:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_194:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_95
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_95
	nop	dword ptr [rax]
.label_138:
	test	r14b, 1
	je	.label_109
	and	al, 1
	jne	.label_109
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_184
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_200
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_109:
	mov	bl, r15b
.label_123:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_175
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_175:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_144
.label_105:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_140
.label_107:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_140:
	cmp	rcx, r10
	jae	.label_154
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_154:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_159
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_165
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_169
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_119
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_119:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_176
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_176:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_98
.label_159:
	xor	r13d, r13d
	jmp	.label_98
.label_165:
	xor	r13d, r13d
	jmp	.label_98
.label_169:
	xor	r13d, r13d
	jmp	.label_98
.label_181:
	xor	r13d, r13d
.label_178:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_118
.label_183:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_191
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_111:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_102
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_111
	xor	r13d, r13d
	jmp	.label_118
.label_191:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_118
.label_102:
	xor	r13d, r13d
	jmp	.label_118
.label_108:
	xor	r13d, r13d
	jmp	.label_98
.label_113:
	xor	r13d, r13d
	jmp	.label_98
	nop	dword ptr [rax]
.label_126:
	mov	r13, rdi
.label_131:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_91
	or	al, dl
	je	.label_151
.label_91:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_106
	or	al, dl
	jne	.label_106
	test	r8b, 1
	jne	.label_129
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_106
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_132
.label_106:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_97
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_97
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_97
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_158:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_150
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_150:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_158
.label_97:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_163
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_163
.label_99:
	mov	r9d, 2
	jmp	.label_100
.label_193:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_100
.label_151:
	mov	rbp, r13
	jmp	.label_100
.label_141:
	mov	r9d, 2
.label_100:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_201:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_163:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_129:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_201
.label_157:
	mov	r9d, 2
	jmp	.label_100
.label_205:
	mov	r9d, 2
	jmp	.label_100
.label_195:
	mov	r9d, 2
	jmp	.label_100
.label_214:
	mov	r9d, 5
	jmp	.label_100
.label_186:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c40
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
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
	.align	16
	#Procedure 0x403d10
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_216
	mov	qword ptr [rax], rbx
.label_216:
	mov	rax, r14
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
	.align	16
	#Procedure 0x403e10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_217
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_219:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_219
.label_217:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_220
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_221]], OFFSET FLAT:slot0
.label_220:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_218
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_218:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ec0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_222
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_225
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_228
.label_225:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_224
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_223
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_223:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_228:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_226
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_227
	mov	rdi, rbx
	call	free
.label_227:
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_226:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_222:
	call	abort
.label_224:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0
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
	#Procedure 0x4040c0
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
	#Procedure 0x4040e0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_229
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_229:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404150
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_230
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_230:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_231
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_231:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_232
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_232:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	#Procedure 0x404310
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	#Procedure 0x404380

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x4043e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x404440

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_236
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_236:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_237
	test	rdx, rdx
	je	.label_237
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_237:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404560
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_238
	test	rdx, rdx
	je	.label_238
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_238:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_239
	test	rsi, rsi
	je	.label_239
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_239:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404640
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_240
	test	rsi, rsi
	je	.label_240
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
.label_240:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0
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
	#Procedure 0x4046e0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404700

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
	#Procedure 0x404720

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
	jne	.label_241
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_243
	cmp	ecx, 0x55
	jne	.label_242
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_242
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_242
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_242
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_242
	cmp	byte ptr [rax + 5], 0
	jne	.label_242
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_241
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_241
.label_243:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_242
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_242
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_242
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_242
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_242
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_242
	cmp	byte ptr [rax + 7], 0
	je	.label_244
.label_242:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_241:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_244:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_241
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_241
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_247
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_246
.label_247:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_246:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_252
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_254]]
.label_2311:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_251
.label_2312:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_2313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_2314:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_250
.label_2315:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_249
.label_2316:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_245
.label_2317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_245:
	mov	qword ptr [rsp + 0x10], rdi
.label_249:
	mov	qword ptr [rsp + 8], rsi
.label_250:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_253
.label_2319:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_251:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_248
.label_2318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_248:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_253:
	call	__fprintf_chk
.label_2310:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_255:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_255
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_258:
	cmp	r10d, 0x28
	ja	.label_256
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_257:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_259
	inc	r9
	cmp	r9, 0xa
	jb	.label_258
.label_259:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_260
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_260:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	r8d, 0x28
	ja	.label_261
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_263
	nop	
.label_261:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_263:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_262
	inc	r9
	cmp	r9, 0xa
	jb	.label_264
.label_262:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_265
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_266
	test	rax, rax
	je	.label_265
.label_266:
	pop	rbx
	ret	
.label_265:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_267
	test	rax, rax
	je	.label_268
.label_267:
	pop	rbx
	ret	
.label_268:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_269
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_270
	test	rbx, rbx
	jne	.label_270
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_270:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_271
	test	rax, rax
	je	.label_269
.label_271:
	pop	rbx
	ret	
.label_269:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_272
	test	rbx, rbx
	jne	.label_272
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_272:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_274
	test	rax, rax
	je	.label_273
.label_274:
	pop	rbx
	ret	
.label_273:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404df0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_278
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_279
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_275
.label_278:
	test	rcx, rcx
	jne	.label_281
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_281:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_280
.label_275:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_276
	test	rbx, rbx
	jne	.label_276
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_276:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_277
	test	rax, rax
	je	.label_279
.label_277:
	pop	rbx
	ret	
.label_279:
	call	xalloc_die
.label_280:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_282
	test	rax, rax
	je	.label_283
.label_282:
	pop	rbx
	ret	
.label_283:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_286
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_288
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_285
	call	free
	xor	eax, eax
	jmp	.label_287
.label_286:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_284
	mov	qword ptr [rsi], rbx
.label_285:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_287
	test	rax, rax
	je	.label_284
.label_287:
	pop	rbx
	ret	
.label_284:
	call	xalloc_die
.label_288:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20
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
	je	.label_290
	test	r14, r14
	je	.label_289
.label_290:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_289:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_291
	call	rpl_calloc
	test	rax, rax
	je	.label_291
	pop	rcx
	ret	
.label_291:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90

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
	je	.label_292
	test	r15, r15
	je	.label_293
.label_292:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_293:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0
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
	je	.label_295
	test	r15, r15
	je	.label_294
.label_295:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_294:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405050

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
	je	.label_299
	cmp	eax, 1
	je	.label_300
	cmp	eax, 3
	jne	.label_301
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_296
.label_299:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_298
	cmp	rbx, r12
	jle	.label_302
.label_298:
	cmp	rbx, 0x40000000
	jl	.label_303
.label_300:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_296
.label_301:
	call	__errno_location
.label_296:
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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_302:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_303:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_297
	mov	dword ptr [rax], 0x4b
	jmp	.label_296
.label_297:
	mov	dword ptr [rax], 0x22
	jmp	.label_296
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405160

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_334
	test	rsi, rsi
	lea	rbx, [rsp + 0x20]
	cmovne	rbx, rsi
	mov	qword ptr [rsp + 0x10], rbx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, rbx
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	rcx, qword ptr [rbx]
	cmp	rcx, r12
	je	.label_349
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_353
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_307
	mov	r13d, 1
.label_353:
	test	r14, r14
	je	.label_357
	mov	r12d, r13d
	jmp	.label_327
.label_349:
	mov	r13d, 4
	test	r14, r14
	je	.label_307
	mov	r15, rcx
	movsx	esi, byte ptr [r12]
	test	esi, esi
	je	.label_307
	mov	rdi, r14
	call	strchr
	xor	r12d, r12d
	mov	ebp, 1
	test	rax, rax
	mov	rcx, r15
	je	.label_307
.label_327:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_320
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_319
	mov	r15d, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_326
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_326
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_326
	mov	rax, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_344
	cmp	eax, 0x44
	je	.label_344
	cmp	eax, 0x69
	jne	.label_326
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_351
	mov	r15d, 1
.label_351:
	mov	r8d, 0x400
	jmp	.label_326
.label_357:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_307
.label_320:
	mov	r13, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_360
.label_344:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_326:
	movabs	r9, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_306
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_313
	jmp	qword ptr [word ptr [+ (rax * 8) + label_315]]
.label_2238:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_318
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_322
.label_306:
	cmp	r13d, 0x73
	jg	.label_339
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_330
	xor	ebx, ebx
	mov	r13, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_335]]
.label_2187:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_318
	mov	r13, rbp
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_322
.label_313:
	cmp	r13d, 0x54
	je	.label_314
	cmp	r13d, 0x59
	jne	.label_319
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_346
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_346:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_359
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_359:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_311
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_311:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_324
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_324:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_338
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_338:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_333
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_333:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_352
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_352:
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_362
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_362:
	or	ebx, edi
	jmp	.label_305
.label_339:
	cmp	r13d, 0x74
	je	.label_314
	cmp	r13d, 0x77
	jne	.label_319
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_321
.label_318:
	inc	r9
	mov	ebx, 1
	mov	r13, r9
	jmp	.label_305
.label_2188:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_328
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_328:
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_342
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r10d, al
.label_342:
	or	r10d, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_348
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_348:
	or	ebx, r10d
	jmp	.label_305
.label_2189:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_305
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
	jmp	.label_305
.label_2190:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_317
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_317:
	cmp	rcx, rdi
	jl	.label_325
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_325:
	or	ebx, r10d
	jmp	.label_305
.label_314:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_340
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_340:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_355
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_355:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_312
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_312:
	or	edi, r11d
	cmp	rcx, r10
	jl	.label_316
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_316:
	or	ebx, edi
	jmp	.label_305
.label_330:
	cmp	r13d, 0x5a
	jne	.label_319
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_361
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_361:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_341
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_341:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_347
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_347:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_336
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_336:
	or	r11d, ebx
	cmp	rsi, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_310
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_310:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_323
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_323:
	or	edi, ebx
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_308
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_308:
	or	ebx, edi
	jmp	.label_305
.label_319:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	mov	r13d, r12d
	jmp	.label_307
.label_2239:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_345
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_345:
	cmp	rcx, r10
	mov	rbx, r13
	jl	.label_332
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	setl	al
	cmovl	rbx, r9
	movzx	r14d, al
.label_332:
	or	r14d, edi
	cmp	rbx, r10
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_309
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	ecx, al
.label_309:
	or	ecx, r14d
	cmp	rsi, r10
	mov	rdi, r13
	jl	.label_350
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r9
	movzx	r11d, al
.label_350:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	mov	rsi, r13
	mov	r14d, 1
	jl	.label_329
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_329:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_343
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_343:
	or	ebx, r14d
	jmp	.label_305
.label_2240:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_354
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_354:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_304
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_304:
	or	r14d, edi
	cmp	rsi, r10
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_358
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	imul	rbx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rbx, r9
	movzx	edi, al
.label_358:
	or	edi, r14d
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_331
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_331:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_337
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_337:
	or	ebx, r11d
	jmp	.label_305
.label_321:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_322:
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	movzx	ebx, al
.label_305:
	or	ebx, r12d
	mov	rdx, qword ptr [rsp + 8]
	lea	rax, [rdx + r15]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_356
	or	ebx, 2
.label_356:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_360:
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_307:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_334:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405b20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_363
	test	rsi, rsi
	mov	ecx, 1
	je	.label_364
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_364
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_363:
	mov	ecx, 1
.label_364:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_365
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_367
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_365
.label_367:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_365
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_366
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_366:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_365:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405bf0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_368
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_368
	test	byte ptr [rbx + 1], 1
	je	.label_368
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_368:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c30

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
	jne	.label_369
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_369
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_370
.label_369:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_370:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_371
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_371:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ca0

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
	je	.label_372
	cmp	r15, -2
	jb	.label_372
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_372
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_372:
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
	#Procedure 0x405d00

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
	je	.label_373
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_373:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d60

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 0xcc], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_429
.label_399:
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
	ja	.label_394
	lea	rdi, [r13 + 1]
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_472
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
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_484
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_484
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_484
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_484
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_484
	or	byte ptr [r12 + 0xb0], 4
.label_484:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_390
	test	al, 4
	jne	.label_503
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	xor	ebx, ebx
	test	rax, rax
	je	.label_394
	xor	ebp, ebp
	nop	
.label_519:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_511
	mov	edx, 1
	mov	cl, bl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_511:
	cmp	ebx, 0x7f
	ja	.label_515
	cmp	ebx, eax
	je	.label_515
	or	byte ptr [r12 + 0xb0], 8
.label_515:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_519
	mov	qword ptr [rsp + 0x28], r15
	xor	ebx, ebx
.label_507:
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	call	btowc
	cmp	eax, -1
	je	.label_518
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_518:
	cmp	r15d, eax
	je	.label_490
	or	byte ptr [r12 + 0xb0], 8
.label_490:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_507
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_381:
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	je	.label_378
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_378:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_381
	nop	dword ptr [rax]
.label_388:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_384
	mov	eax, 1
	mov	cl, bpl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_384:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_388
	jmp	.label_390
.label_503:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_390:
	cmp	qword ptr [r12], 0
	je	.label_394
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_394
	mov	dword ptr [rsp + 0xcc], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x18]
	and	ecx, 0x400000
	mov	qword ptr [rsp + 0x10], rcx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0xc0], 0
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x80], r13
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xb8], al
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xbb]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xc0], edx
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xb9], al
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	al, cl
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xba], al
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0x90], r13
	xor	eax, eax
	test	r13, r13
	jle	.label_397
	cmp	edx, 2
	jl	.label_435
	mov	qword ptr [rsp + 0x28], r15
	mov	r15d, 0xc
	mov	rax, qword ptr [rsp + 0x20]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_436
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_436
	mov	qword ptr [rsp + 0x40], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_435:
	xor	eax, eax
	test	bpl, bpl
	je	.label_447
	mov	qword ptr [rsp + 0x28], r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_436
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_447:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_473
.label_394:
	mov	dword ptr [rsp + 0xcc], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_396
.label_397:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdx
.label_473:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x38], rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_459
	cmp	ecx, 2
	jl	.label_463
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_436
	lea	r14, [rsp + 0x30]
.label_509:
	cmp	qword ptr [rsp + 0x68], r13
	jge	.label_389
	mov	rbp, qword ptr [rsp + 0x70]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	jg	.label_389
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xc0], 2
	jl	.label_478
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_436
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_436
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_478
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_436
	mov	qword ptr [rsp + 0x48], rax
.label_478:
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_456
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_436
	mov	qword ptr [rsp + 0x38], rax
.label_456:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rdi, r14
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	je	.label_509
.label_436:
	mov	dword ptr [rsp + 0xcc], r15d
	jmp	.label_391
.label_459:
	cmp	ecx, 2
	jl	.label_508
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_buffer
	jmp	.label_389
.label_463:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_510
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_514
	nop	word ptr cs:[rax + rax]
.label_502:
	mov	r14, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0xa8]
	inc	rbp
.label_514:
	add	r14, rax
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_458
.label_526:
	movzx	ebx, al
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_474
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_474:
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_502
	jmp	.label_524
.label_458:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_526
.label_508:
	test	rbx, rbx
	je	.label_529
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_374
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 2
	jl	.label_374
	nop	dword ptr [rax + rax]
.label_382:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	inc	rcx
	cmp	rcx, rdi
	jl	.label_382
	mov	rcx, rdi
.label_374:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rcx
	jmp	.label_389
.label_429:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_396
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_399
.label_524:
	mov	rax, r13
.label_510:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_401
.label_529:
	mov	qword ptr [rsp + 0x28], r15
	mov	rax, qword ptr [rsp + 0x20]
.label_401:
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rax
.label_389:
	mov	dword ptr [rsp + 0xcc], 0
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xd0]
	lea	r13, [rsp + 0x30]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x78], rax
	lea	r9, [rsp + 0xcc]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_419
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_420
.label_419:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_424
	mov	rax, qword ptr [rbx + 0x70]
.label_453:
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
.label_451:
	test	r14, r14
	mov	rcx, rbp
	je	.label_438
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_440
	mov	rax, qword ptr [rbx + 0x70]
.label_468:
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
	je	.label_433
	mov	qword ptr [rbp], rcx
.label_438:
	test	rbp, rbp
	je	.label_433
	test	rcx, rcx
	je	.label_433
	mov	qword ptr [r12 + 0x68], rcx
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_465
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_471
	test	rax, rax
	je	.label_467
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	je	.label_469
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_477
	test	rbx, rbx
	je	.label_480
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	edx, 1
	cmova	rdx, rcx
	xor	edi, edi
	cmp	rdx, 4
	jb	.label_452
	xor	edi, edi
	mov	rsi, rdx
	and	rsi, 0xfffffffffffffffc
	je	.label_452
	cmp	rcx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	add	rbp, -4
	mov	rbx, rbp
	shr	rbx, 2
	xor	edi, edi
	bt	rbp, 2
	jb	.label_488
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_491]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_488:
	test	rbx, rbx
	je	.label_498
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_491]]
.label_506:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	jne	.label_506
.label_498:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_480
	nop	dword ptr [rax + rax]
.label_452:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_452
.label_480:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rdi, r15
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	jne	.label_521
.label_376:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_516
	nop	dword ptr [rax]
.label_527:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_523
	test	rbp, rbp
	jne	.label_516
.label_523:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_527
	jmp	.label_521
.label_516:
	mov	rdi, r15
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	je	.label_376
.label_521:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	test	rax, rax
	je	.label_379
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_383:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_379
	inc	rcx
	cmp	rcx, rax
	jb	.label_383
.label_379:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	jne	.label_386
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_386
.label_465:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_391
.label_471:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_391
.label_477:
	lea	r14, [r15 + 0x68]
.label_386:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_402:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_402
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	mov	edx, 0
	jne	.label_402
	jmp	.label_403
	nop	dword ptr [rax]
.label_426:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rcx
.label_403:
	mov	dword ptr [rsp + 0xd0], 0
	test	rdx, rdx
	je	.label_407
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_407
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_407
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_407:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	je	.label_414
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_414
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_414
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_414:
	mov	eax, dword ptr [rsp + 0xd0]
	test	eax, eax
	jne	.label_421
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_425
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	je	.label_426
	test	rax, rax
	je	.label_426
	jmp	.label_402
.label_425:
	mov	rax, qword ptr [r14]
	mov	ebx, 0xfffc00ff
.label_431:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_431
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_431
.label_450:
	movzx	eax, byte ptr [rbp + 0x30]
	cmp	eax, 0x10
	jne	.label_434
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_437
.label_434:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_442
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_437
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r15]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_437:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_449
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_450
	test	rax, rax
	mov	rbp, rcx
	je	.label_450
	jmp	.label_431
.label_424:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_451
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_453
.label_449:
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	je	.label_457
	cmp	eax, 0xb
	jne	.label_460
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_461
.label_442:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_391
.label_440:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_433
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_468
.label_433:
	mov	dword ptr [rsp + 0xcc], 0xc
.label_420:
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_476
.label_457:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_479
.label_460:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_481
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_481:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_461
.label_479:
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_461:
	mov	rdx, rbx
	jmp	.label_486
.label_497:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_486:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	jne	.label_492
	nop	
.label_494:
	mov	rax, rsi
	mov	rsi, rdx
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_501
	test	rcx, rcx
	jne	.label_492
.label_501:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	jne	.label_494
	jmp	.label_496
.label_492:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_497
	cmp	eax, 0xb
	jne	.label_500
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_486
.label_500:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_504
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_504:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_486
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_486
.label_496:
	mov	rdi, r15
	mov	rsi, rbx
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_421
.label_520:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_513
	nop	word ptr cs:[rax + rax]
.label_517:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_408
	test	rbp, rbp
	jne	.label_513
.label_408:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_517
	jmp	.label_466
.label_513:
	mov	rdi, r15
	mov	rsi, rbp
	call	link_nfa_nodes
	test	eax, eax
	mov	rbx, rbp
	je	.label_520
	jmp	.label_421
.label_466:
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	xor	r13d, r13d
	jmp	.label_522
	nop	word ptr cs:[rax + rax]
.label_380:
	inc	rbp
	mov	rax, rbp
.label_522:
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_528
	xor	ebp, ebp
	test	r13b, 1
	mov	r13d, 0
	jne	.label_530
	jmp	.label_377
.label_528:
	mov	rbp, rax
.label_530:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_380
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_421
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_380
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	r13b, 1
	jmp	.label_380
.label_421:
	mov	dword ptr [rsp + 0xcc], eax
.label_391:
	mov	r15, qword ptr [rsp + 0x28]
.label_476:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_392
.label_395:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_395
.label_392:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_405
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_405:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_489:
	mov	eax, dword ptr [rsp + 0xcc]
.label_396:
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_377:
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_413
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_413
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_416
.label_413:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_418
.label_416:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_423
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_418
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_427
.label_432:
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_432
.label_427:
	test	rax, rax
	je	.label_418
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_464:
	mov	qword ptr [rsp + 0x18], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_441
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_445:
	mov	r13, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rax, qword ptr [r13 + rbp*8]
	lea	r14, [r13 + rbp*8 + 8]
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	cmp	rax, rdx
	jne	.label_448
	lea	rcx, [r13 + rbp*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_428
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_400
.label_448:
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_400:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_445
	mov	rax, qword ptr [r15 + 0x10]
.label_441:
	inc	r10
	cmp	r10, rax
	jb	.label_464
.label_418:
	mov	dword ptr [rsp + 0xcc], 0
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_439
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	je	.label_439
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x28], 0
	jne	.label_439
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_475
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbx
	xor	r10d, r10d
	xor	ebp, ebp
.label_495:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	cmp	esi, 0xb
	ja	.label_482
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_485]]
.label_2200:
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	js	.label_422
	mov	sil, r10b
.label_422:
	mov	r10b, sil
	jmp	.label_487
.label_2201:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_439
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_487
	jmp	.label_439
.label_2202:
	mov	r9b, 1
	jmp	.label_487
.label_2203:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	ja	.label_493
	bt	r8, rdi
	jb	.label_487
.label_493:
	cmp	esi, 0x80
	jne	.label_439
.label_487:
	inc	rbp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_495
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	xor	edx, edx
	mov	esi, 8
	test	r10b, 1
	je	.label_499
	jmp	.label_505
.label_467:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_391
.label_469:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_391
.label_387:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_505:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_409
	cmp	edi, 1
	jne	.label_512
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_512
	and	eax, 0xffdfffff
	jmp	.label_454
.label_409:
	and	eax, 0xffffff00
	or	eax, 7
.label_454:
	mov	dword ptr [rbx + rsi], eax
.label_512:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_387
	mov	al, byte ptr [r12 + 0xb0]
	jmp	.label_499
.label_428:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_391
.label_475:
	xor	ecx, ecx
.label_499:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r12 + 0xb0], al
.label_439:
	mov	rax, qword ptr [r12 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	mov	qword ptr [rsp + 0xd8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_525
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [r15*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xe0], rbp
	test	rbp, rbp
	je	.label_385
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xf4], 0
	test	r15, r15
	jle	.label_393
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_393
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	jmp	.label_398
.label_430:
	mov	rbp, qword ptr [rsp + 0xe0]
.label_398:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	jne	.label_411
	test	r15, r15
	mov	edi, 0
	jle	.label_404
	add	rsi, rdx
	xor	edi, edi
.label_410:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	jne	.label_406
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_404
.label_406:
	inc	rdi
	cmp	rdi, r15
	jl	.label_410
.label_404:
	cmp	rdi, r15
	je	.label_411
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_412
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	je	.label_415
.label_417:
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rdx, rbx
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_417
.label_415:
	cmp	rdx, -1
	je	.label_412
	cmp	qword ptr [rbp + rdx*8], rcx
	je	.label_411
.label_412:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_375
	mov	r15, qword ptr [rsp + 0xd8]
	xor	eax, eax
.label_411:
	inc	rax
	cmp	rax, r15
	jl	.label_430
	jmp	.label_393
.label_525:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	qword ptr [rsp + 0xe0], 0
	mov	dword ptr [rsp + 0xf4], 0
.label_393:
	lea	rdi, [rsp + 0xf4]
	lea	rdx, [rsp + 0xd0]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_443
	cmp	byte ptr [rax + 0x68], 0
	js	.label_444
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_446
.label_444:
	lea	rbx, [rsp + 0xf4]
	lea	rbp, [rsp + 0xd0]
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
	je	.label_455
	test	rax, rax
	je	.label_455
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_455
.label_446:
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	xor	eax, eax
.label_375:
	mov	dword ptr [rsp + 0xcc], eax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_462
.label_470:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_470
.label_462:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_483
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_483:
	xor	eax, eax
	cmp	dword ptr [rsp + 0xcc], 0
	je	.label_396
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_489
.label_455:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_375
.label_423:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_391
.label_443:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_375
.label_385:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	dword ptr [rsp + 0xf4], 0xc
	mov	eax, 0xc
	jmp	.label_375
.label_482:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407360
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407370

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
	je	.label_532
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_532:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_531
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_531:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_533
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_533:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407440

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
	mov	r15, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	jne	.label_568
	mov	qword ptr [rsp + 0x28], rax
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_555
.label_568:
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
.label_555:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_540
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_547:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	shl	r12, 4
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	je	.label_554
	mov	qword ptr [rsp + 0x20], rdx
	cmp	ebx, 6
	je	.label_563
	cmp	ebx, 3
	jne	.label_566
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_541:
	bt	rbp, rbx
	jae	.label_569
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_569
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_535
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_538
.label_535:
	mov	eax, ebx
.label_538:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_569:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_541
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	
.label_557:
	bt	rbp, rbx
	jae	.label_546
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_546
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_549
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_551
.label_549:
	lea	rax, [rbx + 0x40]
.label_551:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_546:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_557
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_571:
	bt	rbp, rbx
	jae	.label_558
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_558
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_560
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_559
.label_560:
	lea	rax, [rbx + 0x80]
.label_559:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_558:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_571
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_544:
	bt	rbp, rbx
	jae	.label_536
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_536
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_539
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_542
.label_539:
	lea	rax, [rbx + 0xc0]
.label_542:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_536:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_544
	jmp	.label_537
	nop	
.label_563:
	mov	r12, qword ptr [rcx]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_548
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_552
	test	byte ptr [r12 + 0x20], 1
	jne	.label_552
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_548
.label_552:
	mov	byte ptr [rsp + 0x138], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 0x138]
	nop	word ptr cs:[rax + rax]
.label_564:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 0x138]
	cmp	rax, -2
	jne	.label_561
	mov	byte ptr [r15 + rcx], 1
.label_561:
	inc	cl
	mov	byte ptr [rsp + 0x138], cl
	jne	.label_564
	jmp	.label_537
	nop	
.label_554:
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_567
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_570
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_570:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_567:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_537
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_537
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_543
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	
.label_556:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_543
	mov	al, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_556
.label_543:
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x138], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x144]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 0x138]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_562
	mov	edi, dword ptr [rsp + 0x144]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_562
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_562:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_537
	nop	dword ptr [rax]
.label_566:
	cmp	ebx, 2
	je	.label_534
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_537
	jmp	.label_534
.label_548:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_537
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_565:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_550
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_550
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_553
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_553:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_550:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_545
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_545
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_545
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	
.label_545:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_565
	nop	
.label_537:
	mov	rdx, qword ptr [rsp + 0x20]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_547
.label_540:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_534:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	cmp	ebx, 2
	jne	.label_540
	or	byte ptr [r13 + 0x38], 1
	jmp	.label_540
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407930
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
	je	.label_574
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_572
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_573
.label_572:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_573:
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
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
	jne	.label_575
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_574:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_575:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_574
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a20
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
	jae	.label_576
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
	je	.label_579
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_577
.label_578:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_579:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_577:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_578
.label_576:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407aa0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_580
	call	free_dfa_content
.label_580:
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
	.align	16
	#Procedure 0x407ae0

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
	je	.label_594
	xor	ebx, ebx
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_594
	mov	ebp, 0x400ff
	jmp	.label_581
	nop	dword ptr [rax]
.label_598:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_581:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_583
	cmp	ecx, 6
	jne	.label_586
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
	jmp	.label_591
	nop	word ptr cs:[rax + rax]
.label_583:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_591:
	call	free
.label_586:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_598
.label_594:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_597
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_592:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_585
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_585:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_588
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_588:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_589
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_589:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_592
	jmp	.label_595
.label_597:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_595:
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
	je	.label_582
	xor	r15d, r15d
	jmp	.label_584
.label_593:
	mov	rdi, qword ptr [r14 + 0x40]
.label_584:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_587
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_590:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_590
.label_587:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_593
	mov	rdi, qword ptr [r14 + 0x40]
.label_582:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_596
	call	free
.label_596:
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
	.align	16
	#Procedure 0x407cb0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_599
	test	bpl, 4
	jne	.label_601
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_600
.label_601:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_600:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_602
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_603
.label_602:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_603:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_599:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d50

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x258
	mov	r13, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x290]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	movaps	xmmword ptr [rsp + 0x190], xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	qword ptr [rsp + 0x188], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	test	rax, rax
	je	.label_671
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	ebx, ebx
	cmp	ecx, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r12, rax
.label_671:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	mov	rcx, r14
	sub	rcx, rax
	xor	ebx, ebx
	cmp	rax, r9
	cmovb	rbx, rcx
	mov	eax, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_712
	mov	r15, qword ptr [r11 + 0x48]
	test	r15, r15
	je	.label_712
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_712
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_725
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_725
	mov	rax, r13
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0xd0], r13
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_727
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_718
.label_725:
	mov	eax, 1
	jmp	.label_712
.label_727:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r13, rax
	je	.label_775
	mov	rcx, r8
.label_718:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xd8], r12
	mov	qword ptr [rsp + 0x68], r14
	mov	al, 1
	cmp	rbx, r9
	mov	qword ptr [rsp + 0xa0], rbx
	jne	.label_734
	cmp	qword ptr [r11 + 0x98], 0
	setne	al
.label_734:
	mov	byte ptr [rsp + 0xbe], al
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r12
	cmovge	r12, rax
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	qword ptr [rsp + 0xf0], rsi
	mov	qword ptr [rsp + 0x148], rdx
	mov	qword ptr [rsp + 0x140], rdx
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x168], rbx
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x178], cl
	test	rbx, rbx
	setne	bl
	or	bl, cl
	mov	byte ptr [rsp + 0x17b], bl
	mov	dword ptr [rsp + 0x180], eax
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	byte ptr [rsp + 0x179], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x17a], cl
	mov	qword ptr [rsp + 0x158], rdx
	mov	qword ptr [rsp + 0x150], rdx
	jl	.label_738
	mov	qword ptr [rsp + 0xe8], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ecx, 0xc
	cmp	r12, rax
	ja	.label_606
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	mov	r14, rdi
	lea	rsi, [r12*4]
	xor	edi, edi
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_606
	mov	qword ptr [rsp + 0x100], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
.label_738:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	test	bl, bl
	je	.label_604
	mov	r14, rdi
	mov	qword ptr [rsp + 0xe8], r11
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_606
	mov	qword ptr [rsp + 0xf8], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
.label_604:
	mov	edx, dword ptr [rsp + 0x2a0]
	mov	qword ptr [rsp + 0x130], r12
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x170], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x17e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_623
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xf8], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0xe0]
.label_623:
	mov	qword ptr [rsp + 0x120], rcx
	mov	qword ptr [rsp + 0x128], rcx
	mov	qword ptr [rsp + 0x158], r13
	mov	qword ptr [rsp + 0x150], r13
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0x80], rdi
	shr	al, 7
	mov	byte ptr [rsp + 0x17d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0xe8], r11
	lea	r14, [rbx + rbx]
	mov	dword ptr [rsp + 0x190], edx
	mov	qword ptr [rsp + 0x198], -1
	test	rbx, rbx
	jle	.label_640
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_606
	shl	rbx, 4
	lea	rdi, [rbx + rbx*4]
	call	malloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x1c8], r13
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1e8], rax
	test	r13, r13
	je	.label_621
	test	rax, rax
	mov	ecx, 0xc
	je	.label_606
.label_640:
	mov	rax, qword ptr [rsp + 0x290]
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0xa0]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x1c0], r14
	mov	dword ptr [rsp + 0x1d0], 1
	mov	qword ptr [rsp + 0x1e0], r14
	cmp	rcx, 1
	mov	rax, qword ptr [rsp + 0xe8]
	ja	.label_678
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_678
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x1a8], 0
	jmp	.label_696
.label_678:
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_606
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x1a8], rax
	test	rax, rax
	je	.label_606
	mov	rax, qword ptr [rsp + 0xe8]
	mov	edi, dword ptr [rax + 0xb4]
.label_696:
	mov	r13, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xc8], rdi
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0x1f8], rbp
	mov	eax, dword ptr [rsp + 0x2a0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x160], eax
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rbx, rbp
	mov	rax, rbp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x70], r14
	mov	edx, 8
	test	r13, r13
	je	.label_710
	cmp	edi, 1
	je	.label_728
	mov	ecx, 0x400000
	xor	eax, eax
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rdx, qword ptr [rsp + 0x80]
	jne	.label_729
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_729
.label_728:
	mov	eax, 4
.label_729:
	cmp	qword ptr [rsp + 0xd0], 0
	setne	cl
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	edx, [rcx + rdx*2]
	or	edx, eax
.label_710:
	mov	qword ptr [rsp + 0xc8], rdi
	xor	eax, eax
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xbf]
	lea	rcx, [rsp + 0x1f8]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	cmp	rbx, rbp
	mov	eax, 1
	mov	rcx, -1
	cmovge	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	add	edx, -4
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rbx, r8
	jmp	.label_664
.label_682:
	mov	r12, qword ptr [rsp + 0xc8]
	cmp	r12d, 1
	je	.label_743
	mov	rax, qword ptr [rsp + 0x120]
	test	rax, rax
	je	.label_743
	mov	rax, qword ptr [rsp + 0x100]
	cmp	dword ptr [rax], -1
	je	.label_747
.label_743:
	mov	dword ptr [rsp + 0x1d0], 0
	lea	rax, [rsp + 0x1b0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	r15, qword ptr [rsp + 0x188]
	mov	r14, qword ptr [rsp + 0x138]
	mov	dword ptr [rsp + 0x254], 0
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_753
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_607
.label_753:
	test	r14, r14
	jle	.label_769
	lea	rax, [r14 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	je	.label_770
	cmp	dword ptr [rsp + 0x180], 2
	mov	r12b, byte ptr [rsp + 0xbe]
	jl	.label_774
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_785:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_739
	dec	rcx
	jg	.label_785
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_616
.label_774:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_628
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_607
	jmp	.label_609
.label_739:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_610
.label_645:
	cmp	ebp, 0xa
	jne	.label_607
.label_609:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_616
	xor	ecx, ecx
	jmp	.label_616
.label_769:
	mov	ecx, dword ptr [rsp + 0x160]
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_616
.label_770:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0xbe]
.label_616:
	test	cl, 1
	jne	.label_628
	test	ecx, ecx
	je	.label_607
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	je	.label_632
	test	sil, sil
	jne	.label_632
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_607
.label_632:
	test	edx, edx
	jne	.label_636
	test	eax, eax
	je	.label_607
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x254]
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_607
.label_636:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_607
.label_610:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_628
	test	eax, eax
	je	.label_645
.label_628:
	mov	rbx, qword ptr [r15 + 0x50]
.label_607:
	mov	cl, byte ptr [rsp + 0xbf]
	test	rbx, rbx
	je	.label_646
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	mov	dl, cl
	mov	dword ptr [rsp + 0x90], edx
	je	.label_647
	mov	qword ptr [rax + r14*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	mov	al, cl
	mov	dword ptr [rsp + 0x90], eax
	jne	.label_655
.label_647:
	mov	byte ptr [rsp + 0xbf], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	r15, -1
	test	cl, 0x10
	mov	eax, 0
	jne	.label_659
.label_669:
	mov	rbp, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x88]
.label_766:
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0xa8], r14
	cmp	qword ptr [rsp + 0x158], rbp
	jle	.label_624
	test	rax, rax
	sete	al
	or	al, r12b
	mov	byte ptr [rsp + 0x57], al
	mov	r14, rbx
	jmp	.label_665
.label_765:
	mov	qword ptr [rsp + 0x40], r15
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_680
	mov	rsi, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x30], rsi
	xor	r15d, r15d
	jmp	.label_684
.label_777:
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	jle	.label_689
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0x148], rdx
	je	.label_693
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_697
	mov	rcx, qword ptr [rsp + 0x100]
.label_700:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_699
	dec	rax
	jg	.label_700
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_693
.label_662:
	cmp	r14, rbx
	je	.label_703
	mov	dword ptr [rsp + 0x90], 0
.label_703:
	mov	r14, qword ptr [rsp + 0xa8]
	cmove	r14, qword ptr [rsp + 0x98]
	jmp	.label_707
.label_697:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_693
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_693
	jmp	.label_720
.label_699:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_722
.label_744:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_693
.label_720:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_693
	xor	ecx, ecx
	jmp	.label_693
.label_778:
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	edi, 1
	je	.label_732
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_782
	jmp	.label_627
.label_730:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_780
	test	eax, eax
	lea	rdi, [rsp + 0x238]
	je	.label_654
	jmp	.label_672
.label_732:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_627
.label_780:
	lea	rdi, [rsp + 0x238]
	jmp	.label_672
.label_684:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_612
	mov	r12d, eax
	shr	r12d, 8
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0x138]
	je	.label_705
	test	rcx, rcx
	js	.label_751
	cmp	qword ptr [rsp + 0x148], rcx
	je	.label_754
	mov	r8d, eax
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_757
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdx, [rcx + 1]
.label_763:
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	cmp	ebx, -1
	jne	.label_761
	dec	rdx
	test	rdx, rdx
	jg	.label_763
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_695
.label_757:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rdi, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rcx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_767
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_627
.label_761:
	cmp	byte ptr [rsp + 0x17e], 0
	mov	eax, r8d
	jne	.label_778
.label_782:
	mov	r8d, eax
	xor	edi, edi
	cmp	ebx, 0xa
	je	.label_784
	jmp	.label_695
.label_767:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_695
.label_784:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_695
	xor	edi, edi
	jmp	.label_695
.label_751:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_695
.label_754:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x190]
	and	edi, 2
	xor	edi, 0xa
.label_695:
	mov	eax, edi
	and	eax, 1
	sete	dl
	test	r12b, 4
	je	.label_637
	test	eax, eax
	mov	eax, r8d
	je	.label_612
	jmp	.label_627
.label_637:
	mov	eax, r8d
.label_627:
	test	ah, 8
	je	.label_670
	test	dl, dl
	je	.label_612
.label_670:
	test	ah, 0x20
	je	.label_688
	mov	eax, edi
	and	eax, 2
	je	.label_612
.label_688:
	test	r12b, r12b
	jns	.label_705
	and	edi, 8
	je	.label_612
.label_705:
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rdx, [rsp + 0xf0]
	call	check_node_accept_bytes
	mov	rsi, rbx
	test	eax, eax
	je	.label_612
	movsxd	r12, eax
	add	r12, qword ptr [rsp + 0x138]
	mov	ecx, dword ptr [rsp + 0x1d0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x1d0], ecx
	mov	rbx, qword ptr [rsp + 0x1b0]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rcx, r12
	jg	.label_633
	cmp	rcx, rax
	jl	.label_642
.label_633:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	rcx, r12
	jg	.label_644
	cmp	rcx, rax
	jge	.label_644
.label_642:
	lea	esi, [r12 + 1]
	lea	rdi, [rsp + 0xf0]
	call	extend_buffers
	test	eax, eax
	jne	.label_648
.label_644:
	mov	rdx, r12
	sub	rdx, rbx
	jle	.label_650
	mov	rax, qword ptr [rsp + 0x1a8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x1b0], r12
.label_650:
	mov	dword ptr [rsp + 0x238], 0
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	test	rbx, rbx
	je	.label_660
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x200]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x238], eax
	test	eax, eax
	je	.label_619
	jmp	.label_679
.label_660:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x210], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x200], xmm0
.label_619:
	mov	qword ptr [rsp + 0x38], rbx
	test	r12, r12
	jle	.label_663
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	lea	rdi, [rsp + 0x238]
	je	.label_779
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_694
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r12
.label_741:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_698
	dec	rcx
	jg	.label_741
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_672
.label_694:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_672
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_672
	jmp	.label_709
.label_698:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_730
.label_654:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_672
.label_709:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_672
	xor	ecx, ecx
	jmp	.label_672
.label_663:
	mov	ecx, dword ptr [rsp + 0x160]
	lea	rdi, [rsp + 0x238]
	jmp	.label_672
.label_779:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
.label_672:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x200]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x38], 0
	mov	rcx, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_726
	mov	rdi, qword ptr [rsp + 0x210]
	call	free
.label_726:
	mov	rax, qword ptr [rsp + 0x1a8]
	cmp	qword ptr [rax + r12*8], 0
	mov	rsi, rbp
	jne	.label_612
	mov	eax, dword ptr [rsp + 0x238]
	test	eax, eax
	jne	.label_679
.label_612:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	jl	.label_684
.label_680:
	mov	dword ptr [rsp + 0x254], 0
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_735
.label_689:
	mov	ecx, dword ptr [rsp + 0x160]
.label_693:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_737
.label_648:
	mov	dword ptr [rsp + 0x238], eax
.label_679:
	mov	dword ptr [rsp + 0x254], eax
	xor	ebx, ebx
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_737
.label_722:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_693
	test	eax, eax
	je	.label_744
	jmp	.label_693
.label_665:
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x98], rdx
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rdx, rcx
	jl	.label_746
	cmp	rcx, rax
	jl	.label_783
.label_746:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	qword ptr [rsp + 0x98], rcx
	jl	.label_756
	cmp	rcx, rax
	jge	.label_756
.label_783:
	add	ebp, 2
	lea	rdi, [rsp + 0xf0]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_762
.label_756:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_765
.label_735:
	mov	rax, qword ptr [rsp + 0x138]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x138], rcx
	mov	rcx, qword ptr [rsp + 0xf8]
	movzx	ebp, byte ptr [rcx + rax]
.label_786:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_776
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, qword ptr [r14 + 0x60]
	test	r15, r15
	jne	.label_777
	mov	rdi, qword ptr [rsp + 0x188]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_786
	mov	dword ptr [rsp + 0x254], 0xc
	xor	ebx, ebx
	jmp	.label_737
.label_776:
	mov	rbx, qword ptr [rax + rbp*8]
.label_737:
	cmp	qword ptr [rsp + 0x1a8], 0
	je	.label_787
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_787:
	test	rbx, rbx
	jne	.label_611
	cmp	dword ptr [rsp + 0x254], 0
	jne	.label_621
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x57]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_675
	jmp	.label_624
.label_643:
	mov	rax, qword ptr [rsp + 0x1a8]
.label_675:
	mov	rdx, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	word ptr cs:[rax + rax]
.label_635:
	cmp	rdx, rcx
	jge	.label_624
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0x138], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_635
	xor	edx, edx
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_781
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_643
.label_781:
	test	rbx, rbx
	je	.label_624
.label_611:
	mov	eax, dword ptr [rsp + 0x90]
	test	al, 1
	jne	.label_662
	mov	r14, qword ptr [rsp + 0xa8]
.label_707:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_649
	mov	qword ptr [rsp + 0xa8], r14
	mov	rbp, qword ptr [rsp + 0x138]
	jmp	.label_652
.label_649:
	mov	rbp, qword ptr [rsp + 0x138]
	test	al, al
	jns	.label_657
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_657
	mov	qword ptr [rsp + 0xa8], r14
.label_652:
	cmp	qword ptr [rsp + 0x158], rbp
	mov	r14, rbx
	jg	.label_665
	jmp	.label_624
.label_657:
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_766
	jmp	.label_673
.label_624:
	mov	rcx, qword ptr [rsp + 0x60]
	test	rcx, rcx
	je	.label_674
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rcx], rax
	mov	rbp, r15
	jmp	.label_673
.label_674:
	mov	rbp, r15
.label_673:
	mov	byte ptr [rsp + 0xbe], r12b
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	je	.label_625
	mov	ecx, 0xc
	cmp	rbp, -2
	je	.label_606
	cmp	qword ptr [rsp + 0x58], 1
	seta	al
	mov	qword ptr [rsp + 0x198], rbp
	mov	rcx, qword ptr [rsp + 0x80]
	test	byte ptr [rcx + 0x38], 0x10
	sete	bl
	and	bl, al
	je	.label_724
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	mov	r12, qword ptr [rsp + 0xe8]
	jmp	.label_702
.label_724:
	mov	r12, qword ptr [rsp + 0xe8]
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_706
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	test	bl, 1
	je	.label_661
.label_702:
	test	byte ptr [r12 + 0xb0], 1
	jne	.label_717
.label_661:
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_706
.label_717:
	mov	qword ptr [rsp + 0xe8], r12
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_621
	mov	r14, qword ptr [rsp + 0x188]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x98], rax
	lea	r12, [rbp*8 + 8]
	mov	rdi, r12
	call	malloc
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_731
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_733
	mov	qword ptr [rsp + 0x90], r14
	mov	rdi, r12
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_736
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, r12
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0xa8], r12
	mov	qword ptr [rsp + 0x200], r12
	mov	qword ptr [rsp + 0x208], r15
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_749
.label_617:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jne	.label_758
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_758
	mov	r12, r15
	test	rbp, rbp
	jle	.label_760
	mov	rax, qword ptr [rsp + 0x1a8]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_771:
	mov	rsi, qword ptr [rax + rbp*8]
	test	rsi, rsi
	je	.label_677
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_687
.label_677:
	lea	rcx, [rbp - 1]
	inc	rbp
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_771
	jmp	.label_760
.label_687:
	lea	r15, [rsp + 0xf0]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x98], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], r12
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	je	.label_617
	mov	r12, r15
	jmp	.label_639
.label_733:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0x200], rbx
	mov	qword ptr [rsp + 0x208], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_639
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	qword ptr [rax], 0
	mov	r12d, 0
	jne	.label_638
.label_760:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, r12
	call	free
	mov	r12, qword ptr [rsp + 0xc8]
.label_625:
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
.label_747:
	mov	rbp, qword ptr [rsp + 0x1f8]
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_606
	mov	qword ptr [rsp + 0xc8], r12
	cmp	r14, rbp
	jge	.label_664
	jmp	.label_606
.label_659:
	test	cl, cl
	js	.label_773
	test	r12b, r12b
	mov	r15, r14
	mov	eax, 1
	jne	.label_669
	mov	rbp, r14
	jmp	.label_673
.label_655:
	mov	byte ptr [rsp + 0xbf], cl
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_683
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_686
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_692
.label_686:
	mov	dword ptr [rsp + 0x90], 0
	mov	cl, byte ptr [rsp + 0xbf]
	jmp	.label_647
.label_773:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	test	rax, rax
	sete	cl
	setne	al
	movzx	eax, al
	or	cl, r12b
	je	.label_701
	or	r15, r14
	jmp	.label_669
.label_701:
	mov	rbp, r14
	jmp	.label_673
.label_758:
	mov	qword ptr [rsp + 0xa8], r12
	test	rbp, rbp
	js	.label_708
	xor	r12d, r12d
	jmp	.label_750
.label_614:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_750:
	mov	rdx, qword ptr [r15 + r12*8]
	test	rsi, rsi
	je	.label_714
	test	rdx, rdx
	je	.label_716
	add	rsi, 8
	add	rdx, 8
	lea	rbx, [rsp + 0x238]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_721
	lea	rdi, [rsp + 0x254]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, rbx
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x248]
	call	free
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_716
	jmp	.label_721
.label_714:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rax + r12*8], rdx
.label_716:
	cmp	r12, rbp
	jl	.label_614
.label_708:
	xor	eax, eax
.label_721:
	mov	rdi, r15
	mov	ebx, eax
	call	free
	mov	eax, ebx
	test	eax, eax
	mov	r12d, 0
	mov	r14, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_638
	jmp	.label_639
.label_749:
	mov	qword ptr [rsp + 0xa8], r12
	mov	r12, r15
.label_639:
	mov	r15, rbx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	call	free
	test	ebp, ebp
	mov	eax, ebp
	mov	r12, qword ptr [rsp + 0xe8]
	je	.label_706
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, r15
	je	.label_625
	jmp	.label_606
.label_683:
	movsxd	rbp, eax
	jmp	.label_673
.label_692:
	movsxd	rbp, eax
	jmp	.label_673
.label_664:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	eax, 4
	ja	.label_748
	jmp	qword ptr [word ptr [+ (rax * 8) + label_752]]
.label_2207:
	cmp	rbp, rbx
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xd0]
	jl	.label_755
	nop	word ptr cs:[rax + rax]
.label_772:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_764
	movzx	eax, byte ptr [rdx + rbp]
.label_764:
	test	rsi, rsi
	je	.label_668
	movzx	eax, byte ptr [rsi + rax]
.label_668:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_768
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x1f8], rax
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_772
	jmp	.label_755
.label_748:
	mov	rax, qword ptr [rsp + 0x118]
	jmp	.label_723
	nop	word ptr cs:[rax + rax]
.label_626:
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_606
	cmp	rbp, r14
	jle	.label_723
	jmp	.label_606
.label_618:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_606
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_608
	nop	word ptr cs:[rax + rax]
.label_723:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x128]
	jae	.label_618
.label_608:
	mov	rdx, qword ptr [rsp + 0xe0]
	cmp	rbp, rdx
	mov	edx, 0
	jge	.label_622
	mov	rdx, qword ptr [rsp + 0xf8]
	movzx	edx, byte ptr [rdx + rcx]
.label_622:
	cmp	byte ptr [r13 + rdx], 0
	je	.label_626
	jmp	.label_631
.label_2208:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_629
	nop	word ptr cs:[rax + rax]
.label_620:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_629
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_620
	jmp	.label_629
.label_2209:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_629
	nop	word ptr cs:[rax + rax]
.label_651:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_629
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_651
.label_629:
	mov	qword ptr [rsp + 0xd0], rdx
	mov	qword ptr [rsp + 0xc0], rcx
	cmp	rbp, r14
	jne	.label_631
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xe0]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	jge	.label_658
	movzx	eax, byte ptr [rcx + r14]
.label_658:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	rcx, rcx
	je	.label_666
	movzx	eax, byte ptr [rcx + rax]
.label_666:
	mov	ecx, 1
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	jne	.label_631
	jmp	.label_606
.label_768:
	mov	rax, rbp
.label_755:
	mov	ecx, 1
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_606
.label_631:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	je	.label_682
	jmp	.label_606
.label_762:
	cmp	eax, 0xc
	jne	.label_685
.label_621:
	mov	ecx, 0xc
.label_606:
	mov	ebx, ecx
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xe8]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_691
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, qword ptr [rsp + 0x1c8]
	call	free
.label_691:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rdi, qword ptr [rsp + 0x108]
	call	free
	cmp	byte ptr [rsp + 0x17b], 0
	je	.label_704
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
.label_704:
	mov	eax, ebx
.label_712:
	add	rsp, 0x258
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_775:
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_711
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_713
.label_711:
	xor	ecx, ecx
	test	rbp, rbp
	je	.label_715
	test	r8, r8
	mov	ebp, 0
	mov	eax, 1
	jne	.label_712
	jmp	.label_718
.label_646:
	cmp	dword ptr [rsp + 0x254], 0xc
	je	.label_621
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_713:
	mov	rcx, r8
	jmp	.label_718
.label_715:
	xor	ebp, ebp
	jmp	.label_718
.label_638:
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x1a0], rax
	mov	qword ptr [rsp + 0x198], rbp
	mov	r12, qword ptr [rsp + 0xe8]
.label_706:
	mov	qword ptr [rsp + 0xe8], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x290]
	cmp	qword ptr [rsp + 0xa0], rax
	mov	r14, qword ptr [rsp + 0x298]
	je	.label_606
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_740
	mov	rsi, qword ptr [rsp + 0x290]
	lea	edx, [rsi + 7]
	mov	rdi, qword ptr [rsp + 0xa0]
	sub	edx, edi
	lea	rax, [rsi - 2]
	sub	rax, rdi
	mov	ecx, 1
	test	dl, 7
	je	.label_742
	lea	rdx, [r14 + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, edi
	and	esi, 7
	xor	edi, edi
.label_745:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	jne	.label_745
	add	rcx, 2
.label_742:
	cmp	rax, 7
	jb	.label_740
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rcx
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_759:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	jne	.label_759
.label_740:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x198]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_605
	mov	rax, qword ptr [rsp + 0x80]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_605
	mov	rax, qword ptr [rsp + 0xe8]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_613
	xor	eax, eax
	jmp	.label_615
.label_736:
	mov	rax, rbx
	mov	qword ptr [rsp + 0x48], rax
.label_731:
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_621
.label_613:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_615:
	mov	rdi, qword ptr [rsp + 0x80]
	movzx	r8d, al
	lea	rsi, [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, r14
	call	set_regs
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_606
.label_605:
	mov	r10b, byte ptr [rsp + 0x17c]
	mov	r8, qword ptr [rsp + 0x108]
	lea	rdx, [r14 + 8]
	xor	ecx, ecx
	mov	r9, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0x290]
	lea	r11, [rsp + 0x128]
	jmp	.label_634
.label_656:
	mov	rbx, qword ptr [rsp + 0x120]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_641
.label_634:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_653
	test	r10b, r10b
	jne	.label_656
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_641:
	mov	rsi, qword ptr [rsp + 0x1f8]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_653:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_634
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0xe8]
	jle	.label_681
	lea	rcx, [r9 - 1]
	xor	eax, eax
	test	r9b, 3
	je	.label_667
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_676:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	jne	.label_676
.label_667:
	cmp	rcx, 3
	jb	.label_681
	mov	rcx, r9
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	xor	edx, edx
.label_690:
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	qword ptr [rax + rdx + 0x18], -1
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	add	rcx, -4
	jne	.label_690
.label_681:
	mov	rax, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	test	rax, rax
	je	.label_606
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_606
	sub	qword ptr [rsp + 0x68], r9
	lea	rdi, [r14 + 0x18]
	xor	edx, edx
.label_719:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_630
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_630:
	inc	rdx
	add	rdi, 0x10
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x68], rdx
	jne	.label_719
	jmp	.label_606
.label_685:
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a80
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x409aa0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	js	.label_793
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x38], r9
	cmp	rcx, rdx
	jg	.label_793
	mov	r14, qword ptr [rsp + 0x80]
	xor	r12d, r12d
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	al, r13b
	jle	.label_790
	test	r13b, 8
	mov	al, r13b
	jne	.label_790
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	mov	al, r13b
	je	.label_790
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, r15
	mov	rcx, rbp
	mov	al, byte ptr [rbx + 0x38]
.label_790:
	xor	esi, esi
	test	r14, r14
	mov	ebp, 1
	je	.label_797
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	mov	cl, al
	and	cl, 0x10
	jne	.label_801
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_791
	mov	rax, qword ptr [r14]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_804
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebp, 1
	cmovg	rbp, rax
	jmp	.label_806
.label_797:
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	jmp	.label_801
.label_791:
	mov	rbp, qword ptr [rbx + 0x30]
.label_804:
	inc	rbp
.label_806:
	mov	rsi, r14
.label_801:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	call	malloc
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x40]
	je	.label_793
	mov	cl, r13b
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	mov	qword ptr [rsp], rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, r15
	mov	r8, r12
	mov	r14, rdi
	mov	r9, qword ptr [rsp + 0x38]
	call	re_search_internal
	test	eax, eax
	je	.label_812
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	mov	rdi, r13
	jmp	.label_798
.label_812:
	mov	qword ptr [rsp + 0x40], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	je	.label_789
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	cmp	eax, 2
	je	.label_795
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	je	.label_799
	mov	r13, r12
	mov	qword ptr [rsp + 0x38], rdi
	mov	r15, r8
	test	eax, eax
	jne	.label_802
	lea	r12, [rbx*8]
	mov	rdi, r12
	call	malloc
	mov	r14, rax
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	xor	r13d, r13d
	test	r14, r14
	je	.label_807
	mov	rdi, r12
	mov	r12, rax
	call	malloc
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	je	.label_813
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_792
.label_795:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	jae	.label_792
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_799:
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_803
	mov	rbx, rax
	mov	rdi, r15
.label_792:
	test	rbp, rbp
	jle	.label_810
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	test	bpl, 1
	je	.label_815
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_815:
	cmp	rbp, 1
	je	.label_800
	mov	rax, rbp
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_814:
	mov	rbx, qword ptr [rsi - 0x18]
	mov	qword ptr [rdx - 8], rbx
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	add	rax, -2
	jne	.label_814
.label_800:
	mov	rbx, qword ptr [r12]
	jmp	.label_809
.label_810:
	xor	ebp, ebp
.label_809:
	cmp	rbp, rbx
	jae	.label_811
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_788:
	mov	qword ptr [rcx + rbp*8], -1
	mov	qword ptr [rax + rbp*8], -1
	inc	rbp
	cmp	rbp, qword ptr [r12]
	jb	.label_788
.label_811:
	mov	r13d, r14d
.label_808:
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	and	al, 0xf9
	mov	cl, r13b
	and	cl, 6
	or	cl, al
	and	r13b, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	je	.label_798
.label_789:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_798
	mov	rax, qword ptr [rsp + 0x40]
	cmp	r14, rax
	jne	.label_805
	mov	r14, qword ptr [rdi + 8]
	sub	r14, rax
.label_798:
	call	free
.label_793:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_803:
	mov	qword ptr [rsp + 0x38], r8
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_794
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	test	rax, rax
	je	.label_796
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_792
.label_813:
	mov	rdi, r14
	call	free
.label_807:
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_808
.label_796:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_794:
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_808
.label_802:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_805:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ec0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ee0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

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
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_816
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_819
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_816
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_817
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_821
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_816
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_817
.label_819:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_818
.label_816:
	mov	rax, -2
	jmp	.label_820
.label_818:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_817
.label_821:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_817:
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_820:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a010
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

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
	js	.label_824
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_827
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_824
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_823
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_825
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_824
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_823
.label_827:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_826
.label_824:
	mov	rax, -2
	jmp	.label_822
.label_826:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_823
.label_825:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_823:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_822:
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
	.align	16
	#Procedure 0x40a150
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9b, al
	or	r9b, 2
	test	rdx, rdx
	je	.label_828
	mov	al, r9b
.label_828:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a180

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
	je	.label_829
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_829:
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
	.align	16
	#Procedure 0x40a1e0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_830
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_831
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_831
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_830
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_831
	mov	qword ptr [rbx + 0x18], rax
.label_830:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_832
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_831
	mov	qword ptr [rbx + 8], rax
.label_832:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_831:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a270

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
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rax, qword ptr [r12 + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_862
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_862
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_873
.label_862:
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_834
.label_873:
	cmp	r13, r15
	jle	.label_881
	lea	rax, [r12 + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [r12 + 0x20]
	jmp	.label_866
.label_886:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_867
	cmp	rbp, -2
	jne	.label_888
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_888
.label_867:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	je	.label_890
.label_848:
	mov	rax, r15
	jmp	.label_846
.label_890:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_848
	nop	word ptr [rax + rax]
.label_866:
	mov	qword ptr [rsp + 0x20], r13
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_853
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_853
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	mov	rax, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_846
	nop	word ptr cs:[rax + rax]
.label_853:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 0x2c]
	mov	rsi, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_886
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x2c]
	jne	.label_875
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	add	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_839
.label_875:
	mov	esi, ebx
	mov	dword ptr [rsp + 0x18], esi
	mov	rbx, rbp
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_850
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbx
	mov	ebx, dword ptr [rsp + 0x18]
.label_839:
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_846
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_846:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_866
	jmp	.label_863
.label_850:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_870
.label_888:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_881:
	mov	rax, r15
.label_863:
	mov	qword ptr [r12 + 0x30], rax
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_874
.label_834:
	cmp	r15, r13
	jge	.label_878
	lea	r14, [r12 + 0x20]
	lea	rcx, [r12 + 0x78]
.label_870:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_884
	mov	rbp, qword ptr [r12]
	add	rbp, qword ptr [r12 + 0x28]
	add	rbp, rbx
.label_841:
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	rcx, r14
	mov	qword ptr [rsp + 0x18], r14
	call	rpl_mbrtowc
	mov	r14, rax
	lea	rax, [r14 - 1]
	cmp	rax, -4
	ja	.label_836
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r13
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0x28]
	je	.label_847
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, r13d
	call	wcrtomb
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	jne	.label_856
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_859
.label_884:
	lea	rbp, [rsp + 0x30]
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	jle	.label_841
	mov	r8, rbx
	xor	esi, esi
	nop	dword ptr [rax]
.label_871:
	cmp	rsi, rdx
	jge	.label_869
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, rcx
	jl	.label_871
	mov	rbx, r8
	jmp	.label_841
.label_836:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_882
	cmp	r14, -2
	jne	.label_883
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_883
.label_882:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, rbx
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_887
.label_858:
	movzx	eax, al
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_833
.label_860:
	inc	rbx
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_840
.label_864:
	mov	rbp, r15
	jmp	.label_834
.label_856:
	cmp	r8, -1
	je	.label_847
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_855
.label_883:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
.label_878:
	mov	qword ptr [r12 + 0x30], r15
	mov	qword ptr [r12 + 0x38], rbx
.label_874:
	xor	eax, eax
.label_865:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_847:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_859:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_868
	mov	rax, qword ptr [r12 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_872
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_872
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_880
	mov	edx, 1
	movq	xmm1, rdx
	pslldq	xmm1, 8
	paddq	xmm1, xmm0
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_491]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_880:
	test	rsi, rsi
	je	.label_837
	lea	rsi, [rax + r15*8 + 0x30]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_491]]
	nop	word ptr cs:[rax + rax]
.label_838:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_838
.label_837:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_868
.label_872:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_891:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_891
.label_868:
	add	rbx, r14
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_885
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, rbp
	jmp	.label_834
.label_885:
	mov	rbp, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_834
.label_869:
	mov	rbx, r8
	jmp	.label_841
.label_855:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	jne	.label_844
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], r8
	call	malloc
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_854
.label_844:
	mov	qword ptr [rsp + 8], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_857
	test	r15, r15
	je	.label_851
	xor	edx, edx
	cmp	r15, 4
	jb	.label_852
	xor	edx, edx
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_852
	lea	rdi, [r15 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_861
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_491]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edx, 4
.label_861:
	test	rsi, rsi
	je	.label_879
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_491]]
.label_889:
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_889
.label_879:
	cmp	r15, rcx
	mov	rdx, rcx
	je	.label_851
.label_852:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_852
.label_851:
	mov	byte ptr [r12 + 0x8c], 1
.label_857:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	r11, qword ptr [rsp + 0x10]
	jb	.label_843
	mov	r9, qword ptr [r12 + 0x10]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_842
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_842
	mov	rax, rcx
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	movq	xmm2, rbx
	mov	r11, rbx
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_491]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_876]]
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_877]],  0xe8
.label_849:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	movdqa	xmm4, xmm5
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	movdqa	xmm4, xmm3
	pcmpgtd	xmm4, xmm1
	pshufd	xmm2, xmm4, 0xa0
	pcmpeqd	xmm1, xmm3
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	pandn	xmm0, xmm11
	por	xmm0, xmm5
	pand	xmm7, xmm2
	pandn	xmm2, xmm11
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	movq	qword ptr [rdx + rsi*4], xmm6
	add	rsi, 4
	cmp	r13, rsi
	jne	.label_849
	cmp	r10, r13
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_843
.label_842:
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_835:
	cmp	rax, r14
	mov	rsi, r11
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_835
.label_843:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 8]
	add	rax, rcx
	mov	qword ptr [r12 + 0x58], rax
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_845
	add	qword ptr [r12 + 0x68], rcx
.label_845:
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	mov	r15, rbp
	jmp	.label_834
.label_887:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_858
.label_833:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	jmp	.label_860
.label_840:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_864
.label_854:
	mov	eax, 0xc
	jmp	.label_865
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ab90

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
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_899
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_902
	nop	dword ptr [rax + rax]
.label_894:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_896
.label_897:
	mov	qword ptr [r14], rbp
	mov	eax, 1
	jmp	.label_901
.label_903:
	mov	ecx, dword ptr [rsp + 0xc]
	nop	dword ptr [rax]
.label_901:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_893
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_893:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_902
	jmp	.label_904
.label_892:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_895
	nop	dword ptr [rax + rax]
.label_900:
	cmp	rax, rdx
	jge	.label_898
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_900
	lea	rsi, [rsp + 0x10]
	jmp	.label_895
.label_896:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_897
.label_898:
	lea	rsi, [rsp + 0x10]
	jmp	.label_895
	nop	word ptr cs:[rax + rax]
.label_902:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_892
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_895:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_894
	cmp	rax, -2
	jne	.label_903
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_894
	mov	qword ptr [r14], rbp
.label_899:
	mov	rcx, r13
.label_904:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x40ad30

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
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_906
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_908
.label_906:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_907
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_910
.label_905:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_912
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_915
	nop	word ptr cs:[rax + rax]
.label_910:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	r15d, 0
	je	.label_918
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_909
	cmp	eax, 9
	mov	r15d, 0
	je	.label_918
.label_909:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, rbp
	call	parse_branch
	mov	r15, rax
	test	r15, r15
	jne	.label_919
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_921
.label_919:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [r14 + 0xa8], rax
	nop	word ptr [rax + rax]
.label_918:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_905
	mov	rax, qword ptr [r14 + 0x70]
.label_915:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_911
	mov	qword ptr [rbx], rbp
.label_911:
	test	r15, r15
	je	.label_920
	mov	qword ptr [r15], rbp
.label_920:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbx, rbp
	je	.label_910
	jmp	.label_908
.label_907:
	mov	rbp, rbx
.label_908:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_921:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_908
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_913:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_913
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_913
	nop	word ptr cs:[rax + rax]
.label_914:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_916
	cmp	eax, 6
	jne	.label_917
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
	jmp	.label_922
	nop	dword ptr [rax]
.label_916:
	mov	rdi, qword ptr [r15 + 0x28]
.label_922:
	call	free
.label_917:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_908
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_914
	test	rbx, rbx
	mov	r15, rax
	je	.label_914
	jmp	.label_913
.label_912:
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], 0xc
	xor	ebp, ebp
	jmp	.label_908
	.section	.text
	.align	16
	#Procedure 0x40afc0

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
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_948
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_926
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_926
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_929
.label_926:
	cmp	r12d, 0x5c
	jne	.label_932
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_933
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_939
.label_928:
	mov	rcx, qword ptr [rbp + 8]
	mov	r14b, byte ptr [rcx + rax]
.label_936:
	mov	byte ptr [r15], r14b
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_942
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
	jmp	.label_949
.label_948:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_923
.label_932:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_937
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_957
.label_933:
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_961
.label_937:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	cmp	r12d, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_957:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_960
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	ja	.label_938
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_940]]
.label_2181:
	mov	rdx, r13
	test	dl, 8
	jne	.label_941
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_941
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_923
	mov	eax, dword ptr [r15 + 8]
.label_941:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_923
.label_960:
	cmp	r12d, 0x7a
	jg	.label_954
	cmp	r12d, 0x3f
	je	.label_955
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_956
	cmp	r12d, 0x5e
	jne	.label_923
	test	edx, 0x800008
	jne	.label_935
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_935
	test	dh, 8
	je	.label_923
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_923
.label_935:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_923
.label_942:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_949:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	cmp	ecx, 0x5f
	jg	.label_947
	lea	edx, [rcx - 0x27]
	cmp	edx, 0x2c
	ja	.label_924
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_944]]
.label_2227:
	mov	rdx, r13
	test	dh, 0x40
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	movsxd	rax, ecx
	mov	qword ptr [r15], rax
	jmp	.label_923
.label_954:
	cmp	r12d, 0x7b
	je	.label_950
	cmp	r12d, 0x7c
	mov	rcx, r13
	je	.label_952
	cmp	r12d, 0x7d
	jne	.label_923
	and	ecx, 0x1200
	cmp	rcx, 0x1200
	je	.label_953
	jmp	.label_923
.label_929:
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_961:
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
.label_923:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_947:
	lea	edx, [rcx - 0x73]
	cmp	edx, 0xa
	ja	.label_958
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_959]]
.label_2262:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_938:
	cmp	r12d, 0xa
	jne	.label_923
	mov	rcx, r13
	test	ch, 8
	jne	.label_927
	jmp	.label_923
.label_2182:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_931
	jmp	.label_923
.label_2183:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_934
	jmp	.label_923
.label_2184:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2185:
	test	r13w, 0x402
	jne	.label_923
	jmp	.label_943
.label_2186:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_955:
	test	r13w, 0x402
	jne	.label_923
	jmp	.label_946
.label_956:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_950:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	je	.label_951
	jmp	.label_923
.label_952:
	test	ch, 4
	jne	.label_923
	test	cx, cx
	js	.label_927
	jmp	.label_923
.label_958:
	cmp	ecx, 0x60
	je	.label_945
	cmp	ecx, 0x62
	jne	.label_923
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_923
.label_939:
	cmp	edx, 2
	jl	.label_925
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_928
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_925
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_928
.label_925:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_930
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_930:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	je	.label_936
	test	r14b, r14b
	js	.label_928
	jmp	.label_936
.label_924:
	cmp	ecx, 0x57
	jne	.label_923
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2263:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2264:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_923
.label_951:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2265:
	mov	rcx, r13
	test	ch, 4
	jne	.label_923
	test	cx, cx
	js	.label_923
.label_927:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2266:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_923
.label_953:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_945:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_923
.label_2223:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_923
.label_2224:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_923
.label_931:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2225:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_923
.label_934:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2226:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_923
.label_943:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2228:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_923
.label_2229:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_923
.label_2230:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_923
.label_946:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2231:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_923
.label_2232:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
	.section	.text
	.align	16
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
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	r14, qword ptr [rsi]
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_965
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_965
	jmp	.label_972
	nop	word ptr [rax + rax]
.label_963:
	test	rbx, rbx
	cmove	rbx, r12
.label_965:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_974
	test	r15, r15
	je	.label_978
	cmp	eax, 9
	je	.label_980
.label_978:
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r9, rbp
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_985
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_977
.label_985:
	test	rbx, rbx
	je	.label_963
	test	r12, r12
	je	.label_963
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_968
	mov	rax, qword ptr [r14 + 0x70]
.label_962:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_965
.label_968:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_988
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_962
.label_977:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_972
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_976:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_976
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_976
	nop	word ptr cs:[rax + rax]
.label_973:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_981
	cmp	eax, 6
	jne	.label_983
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
	jmp	.label_969
	nop	dword ptr [rax]
.label_981:
	mov	rdi, qword ptr [rbp + 0x28]
.label_969:
	call	free
.label_983:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_972
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_973
	test	rbx, rbx
	mov	rbp, rax
	je	.label_973
	jmp	.label_976
.label_974:
	mov	r12, rbx
	jmp	.label_972
.label_980:
	mov	r12, rbx
.label_972:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_988:
	mov	r14d, 0x400ff
	mov	rcx, rbp
.label_984:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_984
	mov	r12, qword ptr [rbp + 0x10]
	test	r12, r12
	jne	.label_984
	nop	word ptr cs:[rax + rax]
.label_982:
	mov	r12, rcx
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_967
	cmp	eax, 6
	jne	.label_971
	mov	r15, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_975
.label_967:
	mov	rdi, qword ptr [rbp + 0x28]
.label_975:
	call	free
.label_971:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	je	.label_970
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_982
	test	r12, r12
	mov	rbp, rax
	je	.label_982
	jmp	.label_984
.label_970:
	mov	r14d, 0x400ff
.label_966:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_966
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_966
	nop	dword ptr [rax + rax]
.label_964:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_987
	cmp	eax, 6
	jne	.label_979
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	mov	r15, rcx
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	call	free
	mov	rcx, r15
	jmp	.label_979
.label_987:
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	call	free
	mov	rcx, rbx
.label_979:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_986
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_964
	test	rbx, rbx
	mov	rbp, rax
	je	.label_964
	jmp	.label_966
.label_986:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_972
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b9b0

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
	mov	qword ptr [rsp + 0x18], r12
	mov	r13, r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x38], rdi
	mov	eax, dword ptr [rdx + 8]
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	ja	.label_1018
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1106]]
.label_2277:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_4
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_1117
	mov	r9, rbx
	jmp	.label_999
.label_2278:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	ecx, OFFSET FLAT:.str_0
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_1137
.label_1117:
	mov	eax, dword ptr [r12]
	test	eax, eax
	mov	r9, rbx
	je	.label_999
	jmp	.label_1018
.label_2268:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1147
	mov	rax, qword ptr [r9 + 0x70]
.label_1195:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm1, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1154
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx + 0x48]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_989
	mov	rbp, r15
	jmp	.label_999
.label_1028:
	mov	rbp, r9
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1182
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1193
	mov	rax, qword ptr [r9 + 0x70]
.label_1009:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm1, xmm1
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1003:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1220
	mov	rax, qword ptr [r9 + 0x70]
.label_1152:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	test	rbp, rbp
	je	.label_1001
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	jg	.label_989
	jmp	.label_999
.label_1193:
	mov	edi, 0x3c8
	mov	rbp, r9
	call	malloc
	mov	r9, rbp
	test	rax, rax
	mov	ebp, 0
	je	.label_1003
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1009
.label_1220:
	mov	edi, 0x3c8
	mov	r13, r9
	call	malloc
	mov	r9, r13
	test	rax, rax
	je	.label_1001
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1152
.label_989:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1028
	mov	rbp, r15
	jmp	.label_999
.label_2269:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1229
	or	qword ptr [r9 + 0xa0], rax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1037
	mov	rax, qword ptr [r9 + 0x70]
.label_1023:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [r9 + 0x98]
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_999
.label_2270:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1064
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp + 0x40]
.label_1006:
	mov	qword ptr [rsp + 0x40], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	jle	.label_999
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_999
.label_2271:
	mov	qword ptr [rsp + 0x20], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rsp + 0x48]
	or	rdx, 0x800000
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	xor	esi, esi
	cmp	eax, 9
	je	.label_1207
	mov	rbp, r15
	inc	r13
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	rsi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_1018
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1119
	mov	r15, rbp
.label_1207:
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x20]
	mov	rbx, r15
	ja	.label_1122
	mov	eax, 1
	mov	cl, bl
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1122:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1132
	mov	rax, qword ptr [r9 + 0x70]
.label_1033:
	mov	qword ptr [rsp + 0x40], r14
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	je	.label_1141
	mov	qword ptr [rsi], rbp
.label_1141:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_999
.label_2272:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x20000
	jne	.label_1167
	mov	dword ptr [r12], 0x10
	jmp	.label_991
.label_2274:
	mov	r15, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	je	.label_1175
	mov	al, byte ptr [r9 + 0xb0]
	test	al, 0x10
	jne	.label_1097
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	ebp, 0
	jne	.label_1180
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1188]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	mov	ebp, 2
	mov	ebx, 0x80
	test	al, 4
	je	.label_1180
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1097:
	mov	eax, dword ptr [r15]
.label_1175:
	cmp	eax, 0x200
	je	.label_1201
	cmp	eax, 0x100
	jne	.label_1203
	mov	dword ptr [r15], 6
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1206
	mov	rax, qword ptr [r9 + 0x70]
.label_1163:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1000
.label_2276:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x1000000
	jne	.label_1093
.label_2273:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, 0x20
	jne	.label_1093
	test	cl, 0x10
	jne	.label_1235
.label_1167:
	and	eax, 0xffffff00
	or	eax, 1
	mov	rbx, qword ptr [rsp + 0x40]
	mov	dword ptr [rbx + 8], eax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_992
	mov	rax, qword ptr [r9 + 0x70]
.label_1208:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1098:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_999
.label_2279:
	mov	dword ptr [r12], 5
	jmp	.label_991
.label_2275:
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0xe0], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	r13, r13
	je	.label_1034
	test	rbx, rbx
	je	.label_1034
	mov	qword ptr [rsp + 0x58], rbx
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 0x19
	je	.label_1045
	cmp	edx, 2
	je	.label_1053
	mov	dword ptr [rsp + 0x50], 0
	jmp	.label_1055
.label_1137:
	mov	r9, rbx
	jmp	.label_999
.label_1235:
	mov	r15, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
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
.label_1154:
	mov	rbp, r15
	jmp	.label_999
.label_1045:
	mov	rcx, qword ptr [rsp + 0x58]
	or	byte ptr [rcx + 0x20], 1
	test	bh, 1
	je	.label_1020
	or	byte ptr [r13 + 1], 4
.label_1020:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x38]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 2
	je	.label_1053
	mov	dl, 1
	mov	dword ptr [rsp + 0x50], edx
.label_1055:
	mov	qword ptr [rsp + 0x60], r13
	movzx	edx, cl
	cmp	edx, 0x15
	jne	.label_1091
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rbp + 8], ecx
.label_1091:
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xd0], 3
	lea	rdi, [rsp + 0xd0]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbp
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1109
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1110
.label_1185:
	cmp	eax, 2
	je	.label_1116
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd0], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1110
	jmp	.label_1109
.label_2197:
	mov	cl, byte ptr [rsp + 0xd8]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1148
.label_2198:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, rcx
	je	.label_1157
	mov	rax, qword ptr [r15]
.label_1014:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0xd8]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1002
.label_1092:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	al, byte ptr [rax]
	jmp	.label_1150
.label_1169:
	xor	eax, eax
.label_1150:
	cmp	ebx, 3
	je	.label_1177
	test	ebx, ebx
	jne	.label_1178
	mov	bpl, byte ptr [rsp + 0xc8]
	jmp	.label_1074
.label_1177:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	bpl, byte ptr [rcx]
	jmp	.label_1074
.label_1178:
	xor	ebp, ebp
.label_1074:
	cmp	r15d, 3
	je	.label_1190
	test	r15d, r15d
	jne	.label_1187
.label_1190:
	test	r12, r12
	movzx	edx, al
	je	.label_1170
	mov	edi, edx
	call	btowc
	mov	edx, eax
	jmp	.label_1170
.label_1187:
	mov	edx, dword ptr [rsp + 0xd8]
.label_1170:
	cmp	ebx, 3
	je	.label_1210
	test	ebx, ebx
	jne	.label_1197
.label_1210:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1199
	mov	edi, ebp
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	ebp, eax
	jmp	.label_1199
.label_1197:
	mov	ebp, dword ptr [rsp + 0xc8]
.label_1199:
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1021
	cmp	ebp, -1
	je	.label_1021
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1211
	cmp	edx, ebp
	mov	ecx, 0xb
	ja	.label_1021
.label_1211:
	test	r12, r12
	je	.label_1216
	mov	rax, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	je	.label_1218
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1010:
	mov	dword ptr [rdi + rax*4], edx
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1138
.label_1216:
	mov	r12, qword ptr [rsp + 0x18]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1138:
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
.label_1063:
	cmp	rdx, rcx
	ja	.label_1054
	cmp	rcx, rax
	ja	.label_1054
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1054:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1063
	mov	dword ptr [r12], 0
	jmp	.label_1002
.label_1157:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1012
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	jmp	.label_1014
.label_1218:
	mov	dword ptr [rsp + 8], edx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbx, [rax*4 + 4]
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x58]
	je	.label_1030
	test	r14, r14
	je	.label_1030
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 8]
	jmp	.label_1010
.label_1110:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0xd0]
	cmp	r15d, 2
	je	.label_1052
	cmp	r15d, 4
	jne	.label_1058
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdx, r15
	lea	rcx, [rsp + 0xe0]
	mov	r9, qword ptr [rsp + 0x48]
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1002
	jmp	.label_1068
.label_1058:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1069
	cmp	eax, 2
	jne	.label_1073
	jmp	.label_1077
.label_1069:
	mov	r13, r9
	movsxd	rax, ebx
	mov	rbp, qword ptr [rsp + 0x38]
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x78]
	cmp	ecx, 0x15
	je	.label_1086
	cmp	ecx, 2
	je	.label_1090
	lea	rcx, [rsp + 0x80]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dword ptr [rsp + 0xc0], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0xc0]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x70]
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1104
	mov	qword ptr [rsp + 0x18], r12
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	cmp	dword ptr [r13 + 0xb4], 1
	mov	r12, qword ptr [rsp + 0x58]
	jg	.label_1111
	xor	r12d, r12d
.label_1111:
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xc0]
	cmp	ebx, 2
	je	.label_1021
	mov	dword ptr [rsp + 0xc], eax
	cmp	ebx, 4
	je	.label_1021
	cmp	r15d, 3
	jne	.label_1124
	mov	rdi, qword ptr [rsp + 0xd8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1021
.label_1124:
	cmp	ebx, 3
	jne	.label_1135
	mov	rdi, qword ptr [rsp + 0xc8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1021
.label_1135:
	cmp	r15d, 3
	je	.label_1092
	test	r15d, r15d
	jne	.label_1169
	mov	al, byte ptr [rsp + 0xd8]
	jmp	.label_1150
.label_1086:
	mov	eax, ebx
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1073:
	mov	qword ptr [rsp + 0x20], r9
	mov	eax, r15d
	cmp	r15d, 3
	ja	.label_1160
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1164]]
.label_1052:
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1171
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1148:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x58]
.label_1002:
	mov	rax, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rax + 8]
	cmp	eax, 0x15
	jne	.label_1185
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x38]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x50]
	test	al, al
	je	.label_1191
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1191:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1204
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r13], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r13 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1204:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1076
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1076
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1076
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1076
	cmp	eax, 2
	jl	.label_1146
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1076
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1076
.label_1146:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1184
	mov	rax, qword ptr [r9 + 0x70]
.label_1100:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1098
.label_1076:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1016
	mov	rax, qword ptr [r9 + 0x70]
.label_1103:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r15
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	jne	.label_1022
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1022
	cmp	qword ptr [r13 + 0x10], 0
	jne	.label_1022
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1149
.label_1022:
	mov	qword ptr [rsp + 0x60], r13
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1042
	mov	rbp, qword ptr [r9 + 0x70]
.label_1029:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1051
	mov	rax, qword ptr [r9 + 0x70]
.label_997:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], rdi
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [rdi], rbp
	jmp	.label_999
.label_1201:
	mov	dword ptr [r15], 5
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1089
	mov	rax, qword ptr [r9 + 0x70]
.label_1179:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1000:
	mov	dword ptr [r13], ecx
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0xf
	je	.label_1112
	mov	rax, qword ptr [r9 + 0x70]
.label_1048:
	lea	ecx, [rbx + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1066:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1139
	mov	rax, qword ptr [r9 + 0x70]
.label_1061:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbp, rbp
	je	.label_1142
	mov	qword ptr [rbp], r15
.label_1142:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_1001
	mov	qword ptr [rbx], r15
	test	rbp, rbp
	jne	.label_1166
	jmp	.label_1001
.label_1203:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1168
	mov	r13, r15
	mov	rax, qword ptr [r9 + 0x70]
.label_1194:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rdx, qword ptr [rsp + 0x48]
.label_1166:
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1018
.label_992:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1001
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1208
.label_1109:
	mov	qword ptr [rsp + 0x48], rbx
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1065
.label_1053:
	mov	dword ptr [r12], 2
	jmp	.label_1221
.label_1116:
	mov	dword ptr [r12], 7
.label_1068:
	mov	qword ptr [rsp + 0x20], r9
	jmp	.label_1025
.label_1182:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_999
.label_1147:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1001
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1195
.label_1229:
	mov	dword ptr [r12], 6
	jmp	.label_991
.label_1064:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_1001
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1006
.label_1034:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_1001
.label_1037:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1001
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1023
.label_1132:
	mov	r15, rsi
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1001
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsi, r15
	jmp	.label_1033
.label_1112:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	xor	ebx, ebx
	test	rax, rax
	je	.label_1066
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1048
.label_1139:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1001
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1061
.label_1171:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1065
.label_1180:
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1095:
	mov	rsi, rbx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1035:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1079
	mov	edi, 1
	mov	cl, al
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1079:
	cmp	esi, 0x5f
	je	.label_1084
	movzx	ecx, word ptr [rdx + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1085
.label_1084:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1085:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1035
	inc	rbp
	add	rbx, 0x40
	cmp	ebp, 4
	jne	.label_1095
	jmp	.label_1097
.label_1016:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1012
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1103
.label_1042:
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1012
	mov	r9, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	jmp	.label_1029
.label_1051:
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1012
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, r15
	jmp	.label_997
.label_1077:
	mov	dword ptr [r12], 7
	jmp	.label_1065
.label_1206:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	ebp, ebp
	test	rax, rax
	je	.label_1158
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1163
.label_1089:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1094
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1179
.label_1168:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1001
	mov	r13, r15
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1194
.label_1001:
	mov	dword ptr [r12], 0xc
	jmp	.label_991
.label_1090:
	mov	dword ptr [r12], 7
	jmp	.label_1007
.label_1149:
	mov	rbp, rdi
	mov	rdi, r13
	mov	rbx, r9
	call	free
	mov	r9, rbx
	jmp	.label_999
.label_1119:
	test	rsi, rsi
	je	.label_1214
	mov	r14d, 0x400ff
.label_995:
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_995
	mov	rsi, qword ptr [rbp + 0x10]
	test	rsi, rsi
	jne	.label_995
.label_990:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1107
	cmp	eax, 6
	jne	.label_1224
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
	jmp	.label_1230
.label_1107:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1230:
	call	free
.label_1224:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1214
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rsi, rbp
	mov	rbp, rax
	je	.label_990
	test	rsi, rsi
	mov	rbp, rax
	je	.label_990
	jmp	.label_995
.label_1214:
	mov	dword ptr [r12], 8
	jmp	.label_991
.label_1158:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1000
.label_1094:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1000
.label_1104:
	mov	dword ptr [r12], eax
	jmp	.label_1007
.label_1184:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1012
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1100
.label_1012:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1221:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1025
.label_1030:
	call	free
	mov	rdi, r14
	call	free
	mov	ecx, 0xc
.label_1021:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], ecx
.label_1007:
	mov	r9, r13
.label_1065:
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x20], r9
.label_1025:
	mov	rdi, r13
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
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebp, 0
	jne	.label_1018
.label_999:
	mov	qword ptr [rsp + 0x20], r9
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	eax, r14d
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x30], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x10], r14
	nop	word ptr cs:[rax + rax]
.label_1217:
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x17
	ja	.label_1231
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1072
	mov	r14, qword ptr [r13 + 0x48]
	movdqu	xmm0, xmmword ptr [rbx]
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdx, -1
	cmp	eax, 0x17
	je	.label_1040
	mov	r14, rbp
	cmp	eax, 0x12
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	mov	rcx, -1
	mov	eax, 1
	cmove	rcx, rax
	jmp	.label_1083
.label_1049:
	lea	rax, [r15 + r15*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	cmovle	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1040:
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1101
	cmp	eax, 2
	je	.label_1108
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1192
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1040
	cmp	eax, 1
	jne	.label_1040
	cmp	r15, -2
	je	.label_1040
	cmp	ecx, 0x39
	ja	.label_1040
	cmp	r15, -1
	jne	.label_1049
	lea	rdx, [rcx - 0x30]
	jmp	.label_1040
.label_1192:
	mov	esi, eax
	nop	word ptr [rax + rax]
.label_1101:
	cmp	r15, -1
	jne	.label_1123
	movzx	eax, dl
	cmp	eax, 0x2c
	jne	.label_1125
	cmp	esi, 1
	mov	r15d, 0
	je	.label_1126
.label_1125:
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1130
	nop	word ptr cs:[rax + rax]
.label_1123:
	cmp	r15, -2
	je	.label_1108
	cmp	esi, 0x18
	je	.label_1143
	cmp	esi, 1
	jne	.label_1108
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1108
.label_1126:
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, rbp
	mov	rbp, r12
	mov	rdx, -1
	jmp	.label_1131
.label_1143:
	mov	r14, rbp
	mov	rcx, r15
	jmp	.label_1156
.label_1165:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	dword ptr [rax]
.label_1131:
	mov	r12, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x18
	je	.label_1172
	cmp	eax, 2
	je	.label_1176
	cmp	ecx, 0x2c
	je	.label_1172
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1131
	cmp	eax, 1
	jne	.label_1131
	cmp	r12, -2
	je	.label_1131
	movzx	eax, cl
	cmp	eax, 0x39
	ja	.label_1131
	cmp	r12, -1
	jne	.label_1165
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1131
.label_1172:
	mov	rcx, r12
	cmp	rcx, -2
	je	.label_1176
	cmp	rcx, -1
	mov	r12, rbp
	je	.label_1156
	cmp	r15, rcx
	jg	.label_1198
.label_1156:
	cmp	eax, 0x18
	jne	.label_1198
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	jge	.label_1202
.label_1083:
	mov	rbp, rcx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	mov	qword ptr [rsp + 0x50], r14
	mov	ecx, 0
	je	.label_1070
	mov	r9, rbp
	mov	qword ptr [rsp + 0x58], r9
	mov	rax, r9
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, rdi
	je	.label_1047
	test	r15, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	jg	.label_1227
.label_1174:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1004
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1011:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1011
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1011
	nop	word ptr cs:[rax + rax]
.label_1008:
	mov	edx, dword ptr [rcx + 0x30]
	movzx	esi, dl
	cmp	esi, 0x11
	jne	.label_996
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_996
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_996:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1004
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1008
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1008
	jmp	.label_1011
	nop	dword ptr [rax + rax]
.label_1004:
	mov	qword ptr [rsp + 0x50], rdi
	cmp	r9, -1
	sete	bl
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1013
	mov	rax, qword ptr [r8 + 0x70]
.label_1096:
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1155
	mov	qword ptr [r12], r13
.label_1155:
	add	r15, 2
	cmp	r15, r9
	jg	.label_1036
	jmp	.label_1038
	nop	word ptr cs:[rax + rax]
.label_1047:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1047
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1047
	nop	word ptr cs:[rax + rax]
.label_1075:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1056
	cmp	eax, 6
	jne	.label_1060
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
	jmp	.label_1226
	nop	word ptr cs:[rax + rax]
.label_1056:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1226:
	call	free
.label_1060:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1070
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1075
	test	rax, rax
	mov	rbx, rdx
	je	.label_1075
	jmp	.label_1047
.label_1144:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1161
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1088
.label_1019:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	jmp	.label_1099
.label_1181:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1039
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1234
.label_1161:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1114
.label_1228:
	mov	qword ptr [r14], 0
.label_1114:
	xor	r12d, r12d
.label_1099:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, r15
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1039
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1129
	nop	word ptr cs:[rax + rax]
.label_1038:
	mov	rbp, qword ptr [r12]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1144
	mov	rax, qword ptr [r8 + 0x70]
.label_1088:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [rsp + 0x80], rbx
	mov	rcx, rbx
	lea	r14, [rsp + 0x80]
	jmp	.label_1151
	nop	word ptr cs:[rax + rax]
.label_1113:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [r14], rcx
.label_1151:
	mov	qword ptr [rcx], rbp
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1200
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1205
	nop	
.label_1200:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1159:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1057
	test	r12, r12
	jne	.label_1215
.label_1057:
	mov	r12, qword ptr [rax]
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1159
	jmp	.label_1071
.label_1215:
	lea	r14, [rbp + 0x10]
.label_1205:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1222
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1113
.label_1222:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1228
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1113
	nop	word ptr cs:[rax + rax]
.label_1071:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1019
	mov	rax, qword ptr [r8 + 0x70]
	mov	r12, rbx
.label_1129:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	test	r12, r12
	je	.label_1039
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1181
	mov	rax, qword ptr [r8 + 0x70]
.label_1234:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	lea	r15, [r15 + 1]
	jl	.label_1038
.label_1036:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1059
	mov	rbx, rax
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_1081
	mov	rax, qword ptr [r8 + 0x70]
.label_1062:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	jmp	.label_1082
.label_1059:
	mov	r12, qword ptr [rsp + 0x18]
.label_1082:
	xor	eax, eax
	mov	rcx, r13
	jmp	.label_1026
.label_1198:
	mov	qword ptr [rsp + 0x50], r14
.label_1130:
	mov	dword ptr [r12], 0xa
	xor	ecx, ecx
	jmp	.label_1070
.label_1227:
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rdi
	jl	.label_1080
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	ebx, 2
	mov	rdi, rax
	jmp	.label_1041
.label_1013:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1039
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1096
.label_1176:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1108:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1102
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xa0]
	movdqu	xmmword ptr [rbx], xmm0
	mov	byte ptr [rbx + 8], 1
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1070
.label_1196:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x58], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1118
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1120
.label_994:
	mov	qword ptr [rsp + 0x60], rdi
	mov	r13, rbp
	jmp	.label_1134
.label_1118:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1213
.label_1005:
	mov	qword ptr [r12], 0
.label_1213:
	xor	r13d, r13d
.label_1134:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1039
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1127
	nop	dword ptr [rax + rax]
.label_1041:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1196
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1120:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbp
	mov	rcx, rbp
	lea	r12, [rsp + 0x80]
	jmp	.label_1173
	nop	word ptr cs:[rax + rax]
.label_998:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [r12], rcx
.label_1173:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1219
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1225
	nop	word ptr cs:[rax + rax]
.label_1219:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1232:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1189
	test	r13, r13
	jne	.label_1044
.label_1189:
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	jne	.label_1232
	jmp	.label_1236
.label_1044:
	mov	r14, rdx
	lea	r12, [r14 + 0x10]
.label_1225:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_993
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_998
.label_993:
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1005
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_998
	nop	word ptr cs:[rax + rax]
.label_1236:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_994
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1127:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_1027
	mov	qword ptr [rdi], rdx
.label_1027:
	test	r13, r13
	je	.label_1039
	mov	rbp, rdx
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	jl	.label_1041
.label_1080:
	cmp	r15, r9
	jne	.label_1087
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1070
.label_1081:
	mov	qword ptr [rsp + 0x20], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	ecx, 0
	je	.label_1070
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1062
.label_1087:
	mov	rbx, qword ptr [r13]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1067
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1186:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [rsp + 0x80], r12
	mov	rcx, r12
	lea	rbp, [rsp + 0x80]
	jmp	.label_1043
	nop	word ptr cs:[rax + rax]
.label_1145:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [rbp], rcx
.label_1043:
	mov	qword ptr [rcx], rbx
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1115
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1121
.label_1115:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1136:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1128
	test	r13, r13
	jne	.label_1133
.label_1128:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rbx]
	test	r13, r13
	jne	.label_1136
	jmp	.label_1140
.label_1133:
	lea	rbp, [rbx + 0x10]
.label_1121:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1162
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1145
.label_1162:
	mov	qword ptr [rsp + 0x58], r9
	mov	r14, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1153
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1145
.label_1102:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1070
.label_1140:
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_1174
.label_1202:
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [r12], 0xf
	xor	ecx, ecx
	jmp	.label_1070
.label_1067:
	mov	r14, r9
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1183
	mov	qword ptr [rsp + 0x28], rbp
	mov	r8, r12
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, r14
	jmp	.label_1186
.label_1183:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1039
.label_1153:
	mov	qword ptr [rbp], 0
.label_1039:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1070:
	test	rcx, rcx
	sete	al
	jne	.label_1026
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1209
	jmp	.label_1212
	nop	word ptr cs:[rax + rax]
.label_1026:
	mov	rbx, qword ptr [rsp + 0x40]
.label_1209:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_1217
	movzx	edx, byte ptr [rbx + 8]
	cmp	edx, 0x17
	je	.label_1223
	cmp	edx, 0xb
	mov	rbp, rcx
	jne	.label_1217
.label_1223:
	test	al, al
	jne	.label_1093
	mov	r14d, 0x400ff
	nop	dword ptr [rax]
.label_1017:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1017
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1017
	nop	word ptr cs:[rax + rax]
.label_1015:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1105
	cmp	eax, 6
	jne	.label_1233
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
	jmp	.label_1046
	nop	dword ptr [rax]
.label_1105:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1046:
	call	free
.label_1233:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1093
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1015
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1015
	jmp	.label_1017
.label_1212:
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_1018
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1024:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1024
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1024
	nop	word ptr cs:[rax + rax]
.label_1050:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1031
	cmp	eax, 6
	jne	.label_1032
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
	jmp	.label_1078
	nop	dword ptr [rax]
.label_1031:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1078:
	call	free
.label_1032:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1018
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1050
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1050
	jmp	.label_1024
.label_1093:
	mov	dword ptr [r12], 0xd
.label_991:
	xor	r15d, r15d
	jmp	.label_1018
.label_1231:
	mov	r15, rbp
	jmp	.label_1018
.label_1072:
	mov	r15, rbp
.label_1018:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1160:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e150

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
	mov	dword ptr [rsp + 0xc], r8d
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
	je	.label_1240
	mov	qword ptr [rsp], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1243
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
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
	jne	.label_1252
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1253
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1237:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1237
.label_1253:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1244
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1244:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1251
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1251:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1238
	mov	rax, qword ptr [r12 + 0x70]
.label_1250:
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
	jl	.label_1241
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1239
	mov	rbp, qword ptr [r12 + 0x70]
.label_1254:
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
	je	.label_1246
	mov	rcx, qword ptr [r12 + 0x70]
.label_1242:
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
	jmp	.label_1249
.label_1241:
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
	jmp	.label_1249
.label_1240:
	mov	dword ptr [r15], 0xc
	jmp	.label_1245
.label_1243:
	mov	rdi, rbx
	jmp	.label_1247
.label_1252:
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
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1245
.label_1238:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1248
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1250
.label_1239:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1248
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1254
.label_1248:
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
.label_1247:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1245:
	xor	eax, eax
.label_1249:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1246:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1249
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1242
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e520

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1263
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1266
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1266
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1256
.label_1266:
	test	dl, 1
	je	.label_1260
	movzx	ecx, al
	cmp	ecx, 0x5c
	jne	.label_1260
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1260
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1256
.label_1263:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1260:
	cmp	eax, 0x5b
	jne	.label_1255
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1267
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1261
.label_1255:
	cmp	eax, 0x5e
	je	.label_1262
	cmp	eax, 0x5d
	je	.label_1265
	cmp	eax, 0x2d
	jne	.label_1256
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1256:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1267:
	xor	eax, eax
.label_1261:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1258
	cmp	eax, 0x3a
	je	.label_1257
	cmp	eax, 0x2e
	jne	.label_1259
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1265:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1257:
	test	dl, 4
	jne	.label_1264
.label_1259:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1262:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1258:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1264:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e620

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1274
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1274
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	dword ptr [rax + rax]
.label_1287:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1285
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	jl	.label_1287
.label_1285:
	cmp	edi, 2
	jl	.label_1274
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + rdx*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1288
.label_1274:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1270
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1277]]
.label_2282:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	jle	.label_1269
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1280
.label_1278:
	inc	r12
	movzx	edi, byte ptr [r15 + 8]
.label_1280:
	movzx	edi, dil
	cmp	edi, 0x1e
	jne	.label_1284
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1272
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1279
	nop	
.label_1284:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1282:
	mov	bl, byte ptr [rbx + rdx]
.label_1279:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1269
	movzx	edx, r11b
	movzx	ecx, bl
	cmp	ecx, edx
	jne	.label_1273
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1275
.label_1273:
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + r12], bl
	cmp	r12, 0x1e
	jle	.label_1278
	jmp	.label_1269
.label_1272:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1281
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1283
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1286
.label_1283:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1286
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1268
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1268
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1276:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1268
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1276
.label_1268:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1279
.label_1281:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1282
.label_1286:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1279
.label_1275:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, r12d
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	ecx, 0x1e
	je	.label_1289
	cmp	ecx, 0x1c
	je	.label_1271
	cmp	ecx, 0x1a
	jne	.label_1269
	mov	dword ptr [r14], 3
	jmp	.label_1269
.label_1289:
	mov	dword ptr [r14], 4
	jmp	.label_1269
.label_1271:
	mov	dword ptr [r14], 2
	jmp	.label_1269
.label_2281:
	test	r9b, r9b
	jne	.label_1270
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1269
.label_1270:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1288:
	xor	eax, eax
.label_1269:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e880

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
	je	.label_1330
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1343
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1330
.label_1343:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1330:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1347
.label_1326:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1291
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1300
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1306
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1316
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1321
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1325
	mov	esi, OFFSET FLAT:.str.12_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1290
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1329
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1340
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1345
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1305
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1292
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1335
.label_1309:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1296
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1296:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1309
	jmp	.label_1292
.label_1291:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1293
	nop	word ptr cs:[rax + rax]
.label_1331:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1323
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1323:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1331
	jmp	.label_1292
	nop	dword ptr [rax]
.label_1293:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1346
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1346:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1293
	jmp	.label_1292
.label_1300:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1313
	nop	
.label_1294:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1352
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1352:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1294
	jmp	.label_1292
	nop	dword ptr [rax]
.label_1313:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1303
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1303:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1313
	jmp	.label_1292
.label_1306:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1320
	nop	
.label_1332:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1338
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1338:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1332
	jmp	.label_1292
	nop	word ptr [rax + rax]
.label_1320:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1304
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1304:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1320
	jmp	.label_1292
.label_1316:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1311
	nop	
.label_1295:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1339
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1339:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1295
	jmp	.label_1292
.label_1311:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1301
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1301:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1311
	jmp	.label_1292
.label_1347:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1292
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1326
.label_1321:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1333
	nop	word ptr cs:[rax + rax]
.label_1349:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1337
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1337:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1349
	jmp	.label_1292
.label_1333:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1351
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1351:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1333
	jmp	.label_1292
.label_1325:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1298
	nop	dword ptr [rax]
.label_1341:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1308
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1308:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1341
	jmp	.label_1292
.label_1298:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1322
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1322:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1298
	jmp	.label_1292
.label_1290:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1315
	nop	dword ptr [rax]
.label_1348:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1310
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1310:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1348
	jmp	.label_1292
.label_1315:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1302
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1302:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1315
	jmp	.label_1292
.label_1329:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1319
	nop	dword ptr [rax]
.label_1307:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1297
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1297:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1307
	jmp	.label_1292
.label_1319:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1317
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1317:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1319
	jmp	.label_1292
.label_1340:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1324
	nop	dword ptr [rax]
.label_1342:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1312
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1312:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1342
	jmp	.label_1292
.label_1324:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1350
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1350:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1324
	jmp	.label_1292
.label_1345:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1299
.label_1314:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1334
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1334:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1314
	jmp	.label_1292
.label_1299:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1318
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1318:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1299
	jmp	.label_1292
.label_1335:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1328
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1328:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1335
	jmp	.label_1292
.label_1305:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1327
.label_1336:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1344
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1344:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1336
.label_1292:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1327:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1353
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1353:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1327
	jmp	.label_1292
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f030

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	je	.label_1354
	cmp	eax, 4
	jne	.label_1355
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1355
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1354:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1355
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1355
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1356
	mov	qword ptr [rdx], rsi
.label_1356:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1355
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1355:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f0c0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	edx, byte ptr [rsi + 0x30]
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1357
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1363]]
.label_2293:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1361
	mov	qword ptr [rax], r15
	jmp	.label_1359
.label_2294:
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
	js	.label_1366
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1364
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1360
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1365
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1359
.label_2291:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1360
	mov	edi, OFFSET FLAT:.str.17_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2292:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1359
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1362
	mov	qword ptr [rax], rbx
	jmp	.label_1359
.label_1357:
	test	dl, 8
	jne	.label_1369
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1359
.label_1365:
	mov	qword ptr [rax], 2
	jge	.label_1358
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1359
.label_1358:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1359:
	xor	eax, eax
.label_1360:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1361:
	lea	rax, [r14 + rbx*8]
.label_1367:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1360
.label_1362:
	lea	rax, [r14 + r15*8]
	jmp	.label_1367
.label_1366:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1364:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1369:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2d0

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
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_1377
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1377
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1371
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1371
.label_1377:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1378
	mov	rax, qword ptr [rbx + 0x70]
.label_1375:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1370:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1381
	mov	rax, qword ptr [rbx + 0x70]
.label_1385:
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
.label_1383:
	test	r13, r13
	mov	rbp, r15
	je	.label_1379
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1372
	mov	rax, qword ptr [rbx + 0x70]
.label_1376:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_1379
	mov	qword ptr [r15], rbp
.label_1379:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1380
	mov	rax, qword ptr [rbx + 0x70]
.label_1382:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1384
	mov	qword ptr [r12], r13
.label_1384:
	test	rbp, rbp
	je	.label_1374
	mov	qword ptr [rbp], r13
.label_1374:
	test	r15, r15
	je	.label_1373
	test	r12, r12
	je	.label_1373
	test	rbp, rbp
	je	.label_1373
	test	r13, r13
	je	.label_1373
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_1371:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1378:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1370
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1375
.label_1381:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1383
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1385
.label_1380:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1374
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1382
.label_1373:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1371
.label_1372:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1379
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1376
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5d0

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
	jae	.label_1390
.label_1388:
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
	jne	.label_1387
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1391
.label_1387:
	cmp	eax, 6
	sete	cl
.label_1391:
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
.label_1389:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1390:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	ja	.label_1389
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1389
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1386
	test	rax, rax
	je	.label_1386
	test	r13, r13
	je	.label_1386
	test	rbp, rbp
	je	.label_1386
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1388
.label_1386:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1389
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7a0

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
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1393
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
	je	.label_1401
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1401
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1401
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1393
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1401:
	mov	rbx, r12
	test	al, 8
	jne	.label_1400
	xor	r15d, r15d
	jmp	.label_1402
.label_1400:
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1399
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1398:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1392
	test	rcx, rcx
	jne	.label_1403
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1395
	jmp	.label_1393
	nop	dword ptr [rax]
.label_1403:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1395:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1393
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1394
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1392:
	mov	r15b, 1
.label_1394:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1398
	jmp	.label_1402
.label_1399:
	xor	r15d, r15d
.label_1402:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1393
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1396
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1396
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1397
.label_1396:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1397:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1393:
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
	.align	16
	#Procedure 0x40f9b0

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
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r14, rdi
.label_1408:
	mov	dword ptr [rsp + 0x14], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0x20], eax
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1410:
	mov	rax, qword ptr [r14]
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1419
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rdx + r12*8 + 8], 0
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	mov	qword ptr [rsp + 0x18], rbx
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1412
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x14]
	jne	.label_1410
	jmp	.label_1404
	nop	dword ptr [rax + rax]
.label_1419:
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	test	rsi, rsi
	je	.label_1415
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1416
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1407
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebp, dword ptr [rax + rdx + 8]
	mov	edx, ebp
	and	edx, 0x40000
	je	.label_1407
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
.label_1414:
	cmp	qword ptr [rdx + rsi*8], r12
	jne	.label_1413
	shr	ebp, 8
	and	ebp, 0x3ff
	cmp	ebp, r13d
	je	.label_1409
.label_1413:
	dec	rsi
	test	rsi, rsi
	jle	.label_1407
	mov	ebp, dword ptr [rdi]
	mov	ebx, ebp
	and	ebx, 0x40000
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1414
	jmp	.label_1407
.label_1409:
	cmp	rsi, -1
	je	.label_1407
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	jne	.label_1405
	jmp	.label_1404
	nop	word ptr [rax + rax]
.label_1407:
	mov	rbp, r12
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1411
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1404
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1404
.label_1405:
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1420
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rdi, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r15
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1410
	jmp	.label_1404
.label_1416:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1417
	cmp	rbx, r15
	jne	.label_1418
.label_1417:
	mov	r15, rdi
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	dword ptr [rsp + 0x24], 0xc
	cmp	rax, -1
	je	.label_1404
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rbp, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + r15*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1408
	jmp	.label_1404
.label_1412:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1404
.label_1411:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1404
.label_1420:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1404
.label_1415:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1406:
	mov	dword ptr [rsp + 0x24], 0
.label_1404:
	mov	eax, dword ptr [rsp + 0x24]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1418:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	je	.label_1404
	jmp	.label_1406
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fe10

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1422
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1422
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1431
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1425
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
.label_1431:
	test	rcx, rcx
	je	.label_1433
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1421
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1424
.label_1430:
	dec	rax
.label_1434:
	dec	rcx
	jmp	.label_1428
	nop	word ptr cs:[rax + rax]
.label_1424:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1430
	jge	.label_1434
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1428:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1424
.label_1421:
	test	rax, rax
	js	.label_1423
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1423:
	mov	r10, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	inc	rdx
	je	.label_1422
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1429:
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	r11, [rdi + r9*8]
	nop	dword ptr [rax + rax]
.label_1432:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	jle	.label_1427
	dec	rcx
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1432
	jmp	.label_1422
	nop	dword ptr [rax]
.label_1427:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	cmp	r10, 1
	mov	r10, r8
	jg	.label_1429
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1426
.label_1433:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
.label_1426:
	shl	rdx, 3
	call	memcpy
.label_1422:
	xor	eax, eax
.label_1425:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ff90

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
	je	.label_1440
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1442
	cmp	rsi, rcx
	jne	.label_1444
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1435
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1439
.label_1440:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1445
	mov	qword ptr [rax], rbx
	jmp	.label_1448
.label_1442:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1447
.label_1444:
	mov	rax, qword ptr [r14 + 0x10]
.label_1439:
	cmp	qword ptr [rax], rbx
	jle	.label_1436
	test	rcx, rcx
	jle	.label_1438
	nop	word ptr cs:[rax + rax]
.label_1441:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1441
	jmp	.label_1438
.label_1436:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1446
	nop	dword ptr [rax]
.label_1437:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1446:
	cmp	rdx, rbx
	jg	.label_1437
.label_1438:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1447:
	inc	qword ptr [r14 + 8]
.label_1448:
	mov	al, 1
.label_1443:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1445:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	jmp	.label_1443
.label_1435:
	xor	eax, eax
	jmp	.label_1443
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410080

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1449
	mov	qword ptr [rsp + 0x10], rdi
	mov	r14d, r13d
	add	r14, r8
	test	r8, r8
	jle	.label_1459
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1461
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1471
	movq	xmm0, r14
	lea	r9, [r8 - 4]
	mov	eax, r9d
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1472
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_1454:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1454
	jmp	.label_1458
.label_1449:
	mov	dword ptr [rdi], 0
	jmp	.label_1465
.label_1471:
	xor	ebx, ebx
	jmp	.label_1461
.label_1472:
	pxor	xmm1, xmm1
.label_1458:
	cmp	r9, 0xc
	jb	.label_1464
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax]
.label_1481:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1481
.label_1464:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1459
.label_1461:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	word ptr cs:[rax + rax]
.label_1475:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rax
	jne	.label_1475
.label_1459:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1479
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1480:
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	jne	.label_1450
	movzx	eax, byte ptr [r15 + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1450
	test	rdx, rdx
	je	.label_1450
	mov	rdi, qword ptr [r15 + 0x50]
	test	rdi, rdi
	je	.label_1450
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1450
	mov	rax, r8
	nop	dword ptr [rax]
.label_1467:
	test	rax, rax
	jle	.label_1466
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1467
	nop	word ptr cs:[rax + rax]
.label_1450:
	inc	rbx
	cmp	rbx, r10
	jl	.label_1480
.label_1479:
	mov	rbx, rdx
	mov	r12, rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r15
	test	r15, r15
	je	.label_1462
	mov	r10, r15
	add	r10, 8
	mov	qword ptr [rsp + 0x28], r10
	mov	r9, rbx
	mov	qword ptr [rsp + 0x30], r9
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1477
	mov	qword ptr [rsp + 0x28], r10
	mov	rbp, r15
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_1473
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	r15, rbp
	mov	r10, qword ptr [rsp + 0x28]
	jmp	.label_1485
.label_1477:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, r12
.label_1485:
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1455
	mov	ebp, r13d
	and	ebp, 1
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r13d, 4
	mov	dword ptr [rsp + 8], r13d
	xor	r12d, r12d
	xor	r8d, r8d
	nop	
.label_1476:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1470
	test	ecx, ecx
	je	.label_1452
.label_1470:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1451
	cmp	edx, 2
	jne	.label_1460
	or	bl, 0x10
	jmp	.label_1483
.label_1451:
	or	bl, 0x40
.label_1483:
	mov	byte ptr [r15 + 0x68], bl
.label_1460:
	test	ecx, ecx
	je	.label_1452
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1453
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	je	.label_1478
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1484
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1468
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1474
.label_1484:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1474:
	mov	r15, qword ptr [rsp + 0x18]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
.label_1453:
	test	ebp, ebp
	mov	r9, qword ptr [rsp + 0x30]
	jne	.label_1463
	mov	eax, r13d
	and	eax, 1
	jne	.label_1457
.label_1463:
	test	ebp, ebp
	je	.label_1482
	mov	eax, r13d
	and	eax, 2
	jne	.label_1457
.label_1482:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1486
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1457
.label_1486:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1452
	and	r13d, 0x40
	je	.label_1452
	nop	
.label_1457:
	mov	rax, r12
	sub	rax, r8
	js	.label_1456
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1456
	dec	rcx
	mov	qword ptr [r15 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1456
	lea	rax, [r12*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1469:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1469
	nop	word ptr [rax + rax]
.label_1456:
	inc	r8
.label_1452:
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	jl	.label_1476
.label_1455:
	mov	rsi, r15
	mov	rdx, r14
	call	register_state
	test	eax, eax
	je	.label_1466
.label_1478:
	mov	rdi, r15
	call	free_state
	jmp	.label_1462
.label_1468:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1462
.label_1473:
	mov	rdi, rbp
	call	free
.label_1462:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
.label_1465:
	xor	r15d, r15d
.label_1466:
	mov	rax, r15
	add	rsp, 0x38
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
	#Procedure 0x410540

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
	je	.label_1487
	test	r13, r13
	jle	.label_1488
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1492:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1491
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1489
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1490
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1489:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1491:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1492
.label_1488:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1493
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1494:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1487
.label_1490:
	mov	ecx, 0xc
.label_1487:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1493:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1487
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1494
	nop	
	.section	.text
	.align	16
	#Procedure 0x410680

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
	mov	r13, rsi
	mov	rbx, rdi
	lea	rbp, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_1532
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1541
	mov	qword ptr [rbx + 0x20], 0
.label_1541:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r13
	jne	.label_1547
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r13
.label_1547:
	test	r14, r14
	je	.label_1499
	mov	r12, qword ptr [rbx + 0x38]
	cmp	r14, r12
	jge	.label_1502
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1539
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1509
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1509:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1518
.label_1561:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1510:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1499
	add	qword ptr [rbx + 8], r14
.label_1499:
	mov	qword ptr [rbx + 0x28], r13
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1531
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1537
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1542
	jmp	.label_1501
.label_1531:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1544
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1501
.label_1537:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1501:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1542:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1532:
	mov	r14, r13
	sub	r14, rax
	jmp	.label_1547
.label_1502:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	jne	.label_1556
.label_1526:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1496
	mov	qword ptr [rsp + 8], rbp
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1506
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
.label_1519:
	mov	rbp, rsi
	cmp	rbp, rdx
	jb	.label_1506
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1519
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	jne	.label_1534
	mov	qword ptr [rsp + 0x18], r11
	mov	r12, r10
	mov	rsi, rbp
.label_1503:
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x2c]
	lea	rcx, [rsp + 0x30]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1543
	cmp	rax, -3
	mov	r10, r12
	ja	.label_1549
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x2c]
	jmp	.label_1549
.label_1539:
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x18], rdx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1554:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1495
	jge	.label_1507
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1495:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1554
.label_1507:
	cmp	rsi, r14
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1513
	cmp	r12, r14
	jne	.label_1513
	cmp	qword ptr [rbp + r14*8], r14
	jne	.label_1513
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
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_1510
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	
.label_1552:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1552
	jmp	.label_1510
.label_1518:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1561
.label_1513:
	mov	rax, r14
	sub	rax, r13
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1514:
	mov	rax, r12
	test	rax, rax
	jle	.label_1508
	lea	r12, [rax - 1]
	cmp	qword ptr [rbp + rax*8 - 8], r14
	je	.label_1514
.label_1508:
	cmp	rax, rsi
	jge	.label_1511
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1517:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1511
	inc	rax
	cmp	rax, rsi
	jl	.label_1517
.label_1511:
	cmp	rax, rsi
	jne	.label_1520
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	jmp	.label_1505
.label_1544:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1527
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1533
	jmp	.label_1538
	nop	dword ptr [rax]
.label_1553:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1538:
	inc	r15
	mov	r12, rbp
	add	r13, qword ptr [rbx]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1540
.label_1521:
	movzx	ebp, al
	lea	eax, [rbp + 0x80]
	cmp	eax, 0x17f
	ja	.label_1548
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1548:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1553
	jmp	.label_1555
.label_1540:
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1521
.label_1496:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1559
	mov	al, byte ptr [rsi + rdx]
.label_1559:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1504
	xor	eax, eax
	cmp	edx, 0xa
	jne	.label_1504
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	add	eax, eax
.label_1504:
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1510
.label_1520:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	je	.label_1505
	test	rbp, rbp
	jle	.label_1522
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1522:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1505:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1510
.label_1527:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1501
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1545
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1550
.label_1557:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1550:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1557
	mov	rax, rcx
.label_1545:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1501
.label_1555:
	mov	r15, r14
.label_1533:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1501
.label_1556:
	mov	rdx, r14
	sub	rdx, r13
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1526
.label_1543:
	mov	r10, r12
.label_1549:
	cmp	esi, -1
	jne	.label_1535
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1506:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jge	.label_1516
	mov	qword ptr [rsp], r10
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1523
.label_1551:
	xor	esi, esi
	cmp	rbp, r12
	je	.label_1525
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_1529
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1529
.label_1525:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1529:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1536
.label_1523:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1551
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1551
	mov	esi, dword ptr [rsp + 0x30]
.label_1536:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jl	.label_1523
	mov	qword ptr [rbx + 0x30], rbp
	cmp	esi, -1
	mov	r10, qword ptr [rsp]
	je	.label_1528
.label_1535:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1560
.label_1498:
	xor	ecx, ecx
	cmp	esi, 0xa
	jne	.label_1497
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1497
	xor	ecx, ecx
.label_1497:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1530
.label_1516:
	mov	qword ptr [rbx + 0x30], rbp
.label_1528:
	dec	r10
	mov	rdi, rbx
	mov	rsi, r10
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1530:
	test	rbp, rbp
	jne	.label_1524
.label_1512:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1510
.label_1524:
	jle	.label_1515
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1515:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1512
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	jmp	.label_1512
.label_1560:
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	mov	esi, ebp
	cmp	esi, 0x5f
	mov	ecx, 1
	je	.label_1497
	test	eax, eax
	je	.label_1498
	jmp	.label_1497
.label_1534:
	lea	rsi, [rsp + 0x26]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1546
	mov	qword ptr [rsp + 0x18], r11
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	cmp	rdi, -8
	mov	rcx, -7
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	inc	rcx
.label_1558:
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x24], al
	dec	rcx
	cmp	rcx, 1
	jg	.label_1558
	jmp	.label_1500
.label_1546:
	mov	qword ptr [rsp + 0x18], r11
.label_1500:
	mov	r12, r10
	jmp	.label_1503
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410e20

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
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_1564
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1562:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_1563
	shr	edx, 8
	test	dx, 0x3ff
	je	.label_1564
	test	r9d, r9d
	jne	.label_1565
	mov	esi, edx
	and	esi, 4
	jne	.label_1563
.label_1565:
	test	r9d, r9d
	je	.label_1567
	mov	esi, edx
	and	esi, 8
	jne	.label_1563
.label_1567:
	test	r8d, r8d
	jne	.label_1566
	mov	esi, edx
	and	esi, 0x20
	jne	.label_1563
.label_1566:
	test	eax, eax
	jne	.label_1564
	test	dl, dl
	jns	.label_1564
	nop	dword ptr [rax]
.label_1563:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1562
.label_1564:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ee0

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
	jle	.label_1568
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1571:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1569
	nop	word ptr [rax + rax]
.label_1572:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1572
.label_1569:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1570
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1570:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1571
.label_1568:
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
	.align	16
	#Procedure 0x410fa0

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
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rbp - 0x78], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x98], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x80], r12
	mov	rcx, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1612]]
	mov	qword ptr [rbp - 0x50], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1613]]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_1614
	mov	qword ptr [rbp - 0x88], rcx
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1573
	lea	r13, [rbp - 0x60]
	mov	r14, r15
	mov	rcx, qword ptr [rbp - 0x88]
.label_1614:
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x70], r13
	mov	r15, qword ptr [rcx + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdx, r14
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1586
	mov	rax, rsp
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	sub	rax, rcx
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1600
.label_1586:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x90], rdx
	call	malloc
	test	rax, rax
	je	.label_1603
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdx, qword ptr [rbp - 0x90]
.label_1600:
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	cmp	rsi, qword ptr [rbx + 8]
	jg	.label_1618
	lea	rax, [rbx + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1623
.label_1603:
	mov	r14d, 0xc
	test	r13, r13
	je	.label_1573
	xor	ebx, ebx
	cmp	qword ptr [r13], 0
	jle	.label_1582
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1635:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1635
	jmp	.label_1582
.label_1584:
	mov	rdx, qword ptr [rbp - 0x68]
	mov	r14, rax
	jmp	.label_1581
	nop	word ptr [rax + rax]
.label_1623:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_1588
	cmp	edx, 8
	jne	.label_1599
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1599
	shl	rax, 4
	mov	qword ptr [rbx + rax], rsi
	mov	qword ptr [rbx + rax + 8], -1
	jmp	.label_1599
	nop	dword ptr [rax]
.label_1588:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1599
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	jge	.label_1608
	mov	qword ptr [rbx + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r13, rsi
	mov	rsi, rbx
	jmp	.label_1611
.label_1608:
	test	ecx, 0x80000
	je	.label_1617
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1617
	mov	rdi, rbx
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xa0]
.label_1611:
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rsi, r13
	jmp	.label_1599
.label_1617:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1599:
	mov	qword ptr [rbp - 0x68], rsi
	cmp	rsi, qword ptr [rbx + 8]
	jne	.label_1620
	cmp	r15, qword ptr [r12 + 0xb0]
	jne	.label_1620
	mov	r13, r12
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1576
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_1583
	nop	word ptr cs:[rax + rax]
.label_1626:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1593
	cmp	qword ptr [rcx], -1
	je	.label_1583
.label_1593:
	inc	rax
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_1626
.label_1583:
	cmp	rax, r14
	je	.label_1601
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_1598
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_1620:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	test	al, 8
	jne	.label_1627
	test	eax, 0x100000
	jne	.label_1615
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1638
	mov	rax, qword ptr [rsi + r13]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	mov	r14, qword ptr [rax + rcx + 0x18]
	mov	rdx, r14
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1574
	cmp	r14, -1
	je	.label_1577
	cmp	rdi, -1
	je	.label_1577
	cmp	r14, rdi
	je	.label_1574
	mov	rax, qword ptr [r12 + 0x30]
	sub	rax, qword ptr [rbp - 0x68]
	cmp	rax, rdx
	jl	.label_1577
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rsi + r12]
	add	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdx
	call	memcmp
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0xb8]
	test	eax, eax
	jne	.label_1577
.label_1574:
	cmp	r14, rdi
	jne	.label_1592
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	mov	r14, rdx
	call	re_node_set_insert
	mov	rdx, r14
	test	al, al
	je	.label_1595
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1592
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1606
	nop	word ptr cs:[rax + rax]
.label_1625:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1625
.label_1606:
	cmp	rcx, -1
	je	.label_1592
	cmp	qword ptr [r8 + rcx*8], r14
	je	.label_1604
	jmp	.label_1592
	nop	word ptr cs:[rax + rax]
.label_1627:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1595
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_1594
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	lea	r11, [r10 - 1]
	mov	r14, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x70]
	nop	word ptr cs:[rax + rax]
.label_1632:
	test	r10, r10
	jle	.label_1609
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_1585
	nop	dword ptr [rax + rax]
.label_1619:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_1619
.label_1585:
	cmp	rax, -1
	je	.label_1609
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1609
	cmp	r14, -1
	jne	.label_1578
	mov	r14, rbx
.label_1609:
	inc	r15
	cmp	r15, r9
	jl	.label_1632
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1581
	nop	word ptr cs:[rax + rax]
.label_1615:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0x68]
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1592:
	test	rdx, rdx
	jne	.label_1579
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x80]
.label_1638:
	add	rsi, r13
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x68]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1594
.label_1579:
	add	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_1591
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1577
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1577
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1577
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1607
.label_1610:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1610
.label_1607:
	cmp	rbx, -1
	je	.label_1594
	cmp	qword ptr [rcx + rbx*8], r14
	jne	.label_1594
.label_1591:
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1624
.label_1578:
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	jle	.label_1622
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, 0
	je	.label_1629
	nop	word ptr [rax + rax]
.label_1628:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1628
.label_1629:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	sete	dl
	and	dl, cl
	mov	rax, r14
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1584
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	jne	.label_1575
	mov	r14, rax
	jmp	.label_1581
.label_1622:
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	je	.label_1581
.label_1575:
	mov	rcx, r13
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	mov	qword ptr [rcx], rax
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1621
	mov	rdi, qword ptr [rcx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_1595
	mov	rax, qword ptr [rbp - 0x70]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r12
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1590
.label_1621:
	mov	r12, qword ptr [rcx + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
.label_1590:
	mov	qword ptr [rbp - 0x90], rdi
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	mov	qword ptr [r12 + r13], rdx
	mov	qword ptr [r12 + r13 + 8], rbx
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	test	rax, rax
	je	.label_1595
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	jle	.label_1630
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r12 + r13 + 0x28], rax
	test	rax, rax
	je	.label_1637
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1604
.label_1630:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1604:
	mov	rdx, qword ptr [rbp - 0x68]
.label_1624:
	mov	r13, qword ptr [rbp - 0x70]
.label_1581:
	test	r14, r14
	js	.label_1587
	mov	r12, qword ptr [rbp - 0x78]
	jmp	.label_1605
.label_1587:
	mov	qword ptr [rbp - 0x70], r13
	cmp	r14, -2
	je	.label_1595
	nop	dword ptr [rax + rax]
.label_1594:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1631
.label_1577:
	mov	r13, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1598
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x78]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1605:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	r14, qword ptr [rbp - 0x98]
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_1623
	mov	rdi, qword ptr [rbp - 0x30]
.label_1618:
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1636
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1636:
	xor	r14d, r14d
	test	r13, r13
	je	.label_1573
	xor	r14d, r14d
	cmp	qword ptr [r13], 0
	jle	.label_1582
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1597:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1597
.label_1582:
	mov	rdi, qword ptr [r13 + 0x10]
	jmp	.label_1580
.label_1631:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	r14d, 1
	jmp	.label_1633
.label_1576:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	xor	r14d, r14d
.label_1633:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1573
	mov	rdi, qword ptr [rbp - 0xa0]
	jmp	.label_1580
.label_1601:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1616
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1616:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1589
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1634:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1634
	jmp	.label_1589
.label_1637:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1595:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1596
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1596:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1573
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_1589
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1602:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1602
.label_1589:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1580:
	call	free
.label_1573:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1598:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4119a0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1639
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1642
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1645
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1647:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1643
	dec	rsi
	test	rsi, rsi
	jg	.label_1647
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1640
.label_1645:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1640
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1640
	jmp	.label_1644
.label_1643:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1646
.label_1641:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1640
.label_1644:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1640
	xor	edx, edx
	jmp	.label_1640
.label_1639:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1640
.label_1642:
	and	edx, 2
	xor	edx, 0xa
.label_1640:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1646:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1640
	test	eax, eax
	jne	.label_1640
	jmp	.label_1641
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a70

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
	jle	.label_1651
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1649
.label_1652:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1651
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1650
	nop	word ptr [rax + rax]
.label_1649:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	jne	.label_1648
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1648
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1648
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1652
.label_1650:
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
	je	.label_1651
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax]
.label_1648:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1649
.label_1651:
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
	.align	16
	#Procedure 0x411ba0

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
	mov	qword ptr [rsp + 0x50], rsi
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1694
	mov	r15, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x20], r15
	mov	r8, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x58], r8
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1700:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	qword ptr [rsp + 0x80], r14
	mov	rax, qword ptr [r15]
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_1671
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1658
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1667
	test	ecx, ecx
	je	.label_1671
.label_1667:
	test	bh, 8
	je	.label_1675
	test	ecx, ecx
	jne	.label_1671
.label_1675:
	test	bh, 0x20
	je	.label_1678
	mov	ecx, eax
	and	ecx, 2
	je	.label_1671
.label_1678:
	test	bpl, bpl
	jns	.label_1658
	and	eax, 8
	je	.label_1671
	nop	word ptr cs:[rax + rax]
.label_1658:
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r9, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x30], r9
	test	r12, r12
	mov	eax, 0
	jle	.label_1686
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1687:
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1687
.label_1686:
	cmp	rax, r12
	jge	.label_1704
	cmp	rax, -1
	je	.label_1704
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_1704
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1662:
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax], rcx
	je	.label_1656
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1662
.label_1704:
	cmp	qword ptr [r13 + 0xe8], 0
	mov	rax, r12
	jle	.label_1665
	mov	qword ptr [rsp + 0x20], r15
	mov	rax, qword ptr [r9]
	mov	r10, qword ptr [rax + r14]
	mov	qword ptr [rsp + 0x18], r10
	xor	r11d, r11d
	jmp	.label_1670
	nop	word ptr cs:[rax + rax]
.label_1684:
	mov	rax, qword ptr [r9]
.label_1670:
	mov	rcx, qword ptr [r13 + 0xf8]
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x28], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r10
	jne	.label_1664
	mov	qword ptr [rsp + 0x38], r11
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	test	rax, rax
	jle	.label_1689
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_1692
.label_1689:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	jmp	.label_1659
.label_1688:
	mov	r9, qword ptr [r13 + 0x58]
	cmp	rdi, r9
	jg	.label_1698
	mov	qword ptr [rsp + 0x60], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r13
	mov	rdx, r14
	jg	.label_1699
	cmp	rax, r9
	jl	.label_1702
.label_1699:
	cmp	rcx, qword ptr [rsp + 0x68]
	jg	.label_1682
	cmp	rcx, r9
	jge	.label_1682
.label_1702:
	mov	rax, qword ptr [rsp + 0x68]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1653
.label_1682:
	mov	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, r8
	mov	r13, rdi
	jle	.label_1660
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + 0xc0], rax
.label_1660:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1676
	nop	word ptr cs:[rax + rax]
.label_1692:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rdi, rcx
	sub	rdi, r15
	add	rdi, rbx
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_1669
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	jg	.label_1688
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x68], rdi
.label_1676:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_1697
.label_1669:
	mov	rbx, rdi
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1653
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r12
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x78]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	jl	.label_1692
	jmp	.label_1659
.label_1697:
	mov	rax, qword ptr [r14 + 0x20]
.label_1698:
	mov	rdx, rbx
	mov	rdi, r15
.label_1659:
	cmp	r12, rax
	jge	.label_1661
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1664
.label_1661:
	test	r12, r12
	setg	al
	movzx	ebp, al
	add	rbp, rdi
	cmp	rbp, r8
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jg	.label_1664
	jmp	.label_1654
.label_1701:
	cmp	r14, -1
	je	.label_1681
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbx, r13
	jne	.label_1683
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1653
.label_1683:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rsi, rax
	mov	r8, r14
	mov	r9, rbp
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_1685
	test	r13d, r13d
	jne	.label_1653
	mov	qword ptr [rsp + 0x78], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	je	.label_1655
.label_1674:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_1653
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x58]
	call	get_subexp_sub
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1653
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1672
.label_1680:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_1664
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	lea	rbx, [rdx + 1]
	mov	r15, rdx
	mov	rdi, r13
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1653
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, r15
	jmp	.label_1705
.label_1655:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_1653
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1674
	nop	dword ptr [rax + rax]
.label_1654:
	cmp	rbp, qword ptr [r14]
	jle	.label_1677
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_1680
	lea	rbx, [rdx + 1]
.label_1705:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_1664
.label_1677:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_1690
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1690
	mov	qword ptr [rsp + 0x68], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [r9]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1668:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	jne	.label_1691
	cmp	qword ptr [rdx + rdi], r10
	je	.label_1701
.label_1691:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1668
.label_1681:
	mov	rbx, r13
.label_1672:
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_1685
	nop	word ptr cs:[rax + rax]
.label_1690:
	mov	r15, r14
	mov	rbx, r13
.label_1685:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	mov	r14, r15
	jl	.label_1654
	nop	dword ptr [rax]
.label_1664:
	inc	r11
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_1684
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_1665
.label_1656:
	mov	rax, r12
.label_1665:
	mov	dword ptr [rsp + 0xa4], 0
	cmp	r12, rax
	jge	.label_1671
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1703:
	mov	rax, qword ptr [r13 + 0xd8]
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1673
	cmp	qword ptr [rax + rbp - 0x10], r8
	jne	.label_1673
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_1693
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1696
.label_1693:
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [rsp + 0x80]
	lea	rax, [rax*8]
	add	rax, qword ptr [r15 + 0x18]
.label_1696:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0x70], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x78], rdx
	lea	rsi, [r14 - 1]
	mov	r12, rbx
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	mov	rbx, r8
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1657
	mov	rdx, qword ptr [rcx + 0x10]
.label_1657:
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	lea	rdi, [rsp + 0x88]
	je	.label_1666
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	rbx, rdi
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1679
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1695
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	je	.label_1695
	jmp	.label_1663
.label_1666:
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x60], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1695
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	je	.label_1706
	jmp	.label_1663
.label_1695:
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
.label_1706:
	cmp	rdx, rcx
	jne	.label_1673
	mov	rax, qword ptr [rax + r8*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1673
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1663
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	r14, rcx
	call	transit_state_bkref
	mov	r8, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1663
	nop	
.label_1673:
	inc	r12
	add	rbp, 0x28
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1703
	nop	word ptr [rax + rax]
.label_1671:
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_1700
.label_1694:
	mov	dword ptr [rsp + 0xa4], 0
	xor	r13d, r13d
	jmp	.label_1663
.label_1653:
	mov	dword ptr [rsp + 0xa4], r13d
.label_1663:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1679:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	jmp	.label_1663
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412520

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1711
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1711
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1718
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1711
	mov	qword ptr [r14 + 0xb8], rcx
.label_1718:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1715
	cmp	eax, 2
	jl	.label_1719
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1709
	jmp	.label_1711
.label_1715:
	cmp	eax, 2
	jl	.label_1713
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1709
.label_1719:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_1716
	jmp	.label_1710
.label_1712:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_1707
	nop	word ptr cs:[rax + rax]
.label_1710:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1712
.label_1707:
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	ja	.label_1714
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1714:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1710
	mov	rbx, r15
.label_1716:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_1709
.label_1713:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1709
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1717
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1708
	nop	dword ptr [rax]
.label_1720:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1708:
	inc	rax
	cmp	rax, rcx
	jl	.label_1720
	mov	rax, rcx
.label_1717:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_1709:
	xor	eax, eax
.label_1711:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4126e0

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
	jle	.label_1725
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1724
.label_1725:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1726
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1727
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1721
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1723
.label_1726:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1724
.label_1727:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1723:
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
	jne	.label_1724
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1724:
	test	rbx, rbx
	je	.label_1729
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1728
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1722
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1722
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1722
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1722
.label_1729:
	mov	rax, rbx
	jmp	.label_1722
.label_1728:
	mov	rax, rbx
.label_1722:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1721:
	xor	eax, eax
	jmp	.label_1722
	nop	
	.section	.text
	.align	16
	#Procedure 0x412830

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
	mov	rbp, rdi
	test	r12, r12
	je	.label_1738
	mov	r13, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1735
	test	r13, r13
	jle	.label_1735
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1735
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1734
	mov	qword ptr [rsp], rbp
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_1732
.label_1735:
	test	r13, r13
	jle	.label_1738
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1740
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1731
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1741
.label_1738:
	test	r15, r15
	je	.label_1740
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1740
	mov	qword ptr [rbp + 8], rdi
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jle	.label_1740
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1731
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1741
.label_1740:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1741
.label_1736:
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_1732:
	cmp	rcx, qword ptr [r15 + 8]
	jge	.label_1730
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	cmp	rdx, rsi
	jle	.label_1737
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1732
	jmp	.label_1730
.label_1737:
	sete	bl
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1736
	jmp	.label_1733
.label_1730:
	mov	rbx, rcx
.label_1733:
	sub	r13, rbp
	jle	.label_1742
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_1739
.label_1742:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbx
	jle	.label_1739
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	shl	rdx, 3
	call	memcpy
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_1739:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r14
.label_1741:
	xor	ecx, ecx
.label_1734:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1731:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1734
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412a20

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
	jne	.label_1747
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1750
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1748
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
.label_1750:
	test	r15, r15
	jle	.label_1751
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1745
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1745
.label_1751:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1745:
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
	jge	.label_1746
	mov	dword ptr [r13 + 0xe0], edi
.label_1746:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1749
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1743
.label_1749:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1744
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1744
.label_1743:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1747
.label_1744:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1747
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1747:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1748:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1747
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412c00

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x8c], 0
	mov	rax, qword ptr [rax]
	mov	rcx, rdx
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [r15 + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	jle	.label_1752
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x18], r8
	mov	r12, rdi
	mov	r13, qword ptr [r15 + 0x10]
.label_1774:
	mov	qword ptr [rsp + 0x50], r12
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	jne	.label_1777
	mov	dword ptr [rsp + 0x60], eax
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1780
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x30], r15
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x8c], 0
	lea	rsi, [rsp + 0x70]
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rsp + 0xf0]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1756
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rbp
	jmp	.label_1760
.label_1777:
	mov	rbp, qword ptr [r13 + r14*8]
	mov	rcx, r14
	test	rbp, rbp
	je	.label_1764
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1765
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jmp	.label_1758
.label_1764:
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rcx
	jmp	.label_1770
.label_1765:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x78], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jle	.label_1779
	mov	r12, r8
	mov	dword ptr [rsp + 0x60], eax
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1780
	mov	rsi, qword ptr [rbp + 0x18]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, r12
	jmp	.label_1758
.label_1752:
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	r14d, 0xc
	cmp	rsi, rcx
	jle	.label_1762
	mov	qword ptr [rsp + 0x18], r8
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1762
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rdx
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi*8]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1762
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [r13 + rbx*8]
	mov	rdx, qword ptr [rsp + 0x60]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	jmp	.label_1774
.label_1779:
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
.label_1758:
	test	byte ptr [rbp + 0x68], 0x40
	je	.label_1770
.label_1760:
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	je	.label_1785
	lea	rsi, [rsp + 0x70]
	mov	rdi, r13
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0xf0]
	call	expand_bkref_cache
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1756
.label_1785:
	mov	rbx, r8
	lea	rdi, [rsp + 0x8c]
	lea	rdx, [rsp + 0x70]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x60]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1782
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1757
.label_1782:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	mov	qword ptr [rax + r8*8], rbp
.label_1770:
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r8, r15
	jge	.label_1771
	lea	rbx, [rsp + 0x70]
	xor	ecx, ecx
.label_1786:
	mov	qword ptr [rsp + 0x68], r8
	mov	qword ptr [rsp + 0x60], rbp
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rcx, rax
	jg	.label_1773
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x78], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_1776
	add	rsi, 8
	mov	rdi, r15
	mov	rbx, r8
	call	re_node_set_merge
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1757
.label_1776:
	test	rbp, rbp
	je	.label_1763
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xb4], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_1784
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1769:
	mov	rax, qword ptr [rbp + 0x30]
	mov	r15, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1761
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r8
	mov	r14, r8
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1783
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, r14
	mov	r14, rbx
	mov	rcx, qword ptr [rcx + r15*8]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x98], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x90]
	je	.label_1768
	add	rsi, 8
	mov	rdi, r13
	mov	rbx, rcx
	call	re_node_set_merge
	mov	rcx, rbx
	mov	ebx, eax
	mov	dword ptr [rsp + 0xb4], ebx
	test	ebx, ebx
	jne	.label_1755
.label_1768:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_1775
	lea	rdi, [rsp + 0xb4]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	jne	.label_1759
	mov	ebx, dword ptr [rsp + 0xb4]
	test	ebx, ebx
	je	.label_1759
	jmp	.label_1755
	nop	dword ptr [rax]
.label_1783:
	mov	r14, rbx
	test	eax, eax
	jne	.label_1759
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_1761:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	je	.label_1766
.label_1759:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x70]
	call	re_node_set_insert
	test	al, al
	je	.label_1775
.label_1766:
	inc	r12
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	jl	.label_1769
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	r15, [rsp + 0x70]
.label_1784:
	mov	rbx, r8
	call	free
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], 0
.label_1763:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_1753
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	ebp, dword ptr [rsp + 0xf0]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1757
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	mov	r8, r12
	jne	.label_1757
.label_1753:
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	lea	rdi, [rsp + 0x8c]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, r15
	mov	rbx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1778
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1757
.label_1778:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	eax, 0
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r14, r15
	mov	r8, r14
	jl	.label_1786
	jmp	.label_1772
.label_1771:
	mov	r14, r8
.label_1772:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r13 + 0x48], rcx
	je	.label_1767
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	jle	.label_1767
	xor	r14d, r14d
	dec	rcx
	mov	rax, qword ptr [rax + 0x10]
	je	.label_1781
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1787:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1787
	jmp	.label_1754
.label_1775:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x8c], ebx
	jmp	.label_1757
.label_1755:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	dword ptr [rsp + 0x8c], ebx
.label_1757:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	r14d, dword ptr [rsp + 0x8c]
	jmp	.label_1762
.label_1781:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1754:
	cmp	rdx, -1
	je	.label_1767
	cmp	qword ptr [rax + rdx*8], rbp
	je	.label_1762
.label_1767:
	mov	r14d, 1
.label_1762:
	mov	eax, r14d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1756:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	jmp	.label_1762
.label_1780:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0x8c], 0xc
	mov	r14d, 0xc
	jmp	.label_1762
.label_1773:
	mov	r14, r8
	jmp	.label_1772
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4133c0

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
	je	.label_1788
	test	r12, r12
	jle	.label_1789
	xor	r12d, r12d
	jmp	.label_1795
	nop	dword ptr [rax]
.label_1793:
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_1795
	jmp	.label_1789
	nop	
.label_1796:
	cmp	rbp, -1
	je	.label_1792
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1791
	nop	dword ptr [rax]
.label_1795:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1792
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_1794:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_1790
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1796
.label_1790:
	inc	rax
	cmp	rax, r10
	jl	.label_1794
.label_1792:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1791:
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1793
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1788
.label_1789:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_1788:
	mov	eax, ebx
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
	.align	16
	#Procedure 0x413500

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r10, rdi
	mov	qword ptr [rsp + 0x30], r10
	mov	rax, qword ptr [r10 + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	edx, 0
	jle	.label_1797
	mov	rsi, qword ptr [r10 + 0xd8]
	xor	edx, edx
	mov	rdi, r9
	nop	dword ptr [rax]
.label_1824:
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmp	rdx, rdi
	jl	.label_1824
.label_1797:
	cmp	rdx, r9
	jge	.label_1799
	cmp	rdx, -1
	je	.label_1799
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	qword ptr [rsp + 8], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_1799
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_1812
.label_1827:
	mov	rcx, qword ptr [r10 + 0xd8]
.label_1812:
	mov	rax, qword ptr [rsp + 8]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1819:
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	jle	.label_1806
	mov	rdx, qword ptr [r13]
	dec	rcx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_1822
	nop	word ptr cs:[rax + rax]
.label_1813:
	lea	rbp, [rsi + rdi]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rsi, rbx
	cmovge	rdi, rbp
	cmp	rsi, rdi
	jb	.label_1813
.label_1822:
	cmp	rsi, -1
	je	.label_1806
	cmp	qword ptr [rax + rsi*8], rdx
	jne	.label_1806
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_1810
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_1814
	nop	
.label_1823:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1823
.label_1814:
	cmp	rdx, -1
	je	.label_1800
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_1800
	mov	rbp, r14
	jmp	.label_1805
.label_1810:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1807
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	jle	.label_1816
	mov	rcx, rdi
	dec	rcx
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	je	.label_1818
	nop	dword ptr [rax + rax]
.label_1817:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1817
.label_1818:
	cmp	rdx, -1
	je	.label_1816
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1798
.label_1816:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	test	rbp, rbp
	jle	.label_1803
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1811
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1820
.label_1800:
	mov	qword ptr [rsp + 0x30], r10
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1826
	mov	qword ptr [rax], rbx
	xor	eax, eax
.label_1821:
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x64], eax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x1c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, r14
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x20]
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x30]
	jne	.label_1808
.label_1825:
	mov	r14, rbp
	jmp	.label_1805
.label_1807:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1828
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1802
.label_1803:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
.label_1820:
	xor	ebx, ebx
.label_1801:
	mov	dword ptr [rsp + 0x64], ebx
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1815
	xor	al, 1
	jne	.label_1815
.label_1802:
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x24]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x24], eax
.label_1798:
	mov	r14, qword ptr [rsp + 0x28]
.label_1805:
	test	ecx, ecx
	je	.label_1806
	cmp	ecx, 4
	jne	.label_1809
	nop	dword ptr [rax + rax]
.label_1806:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_1819
	jmp	.label_1799
.label_1826:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	eax, 0xc
	jmp	.label_1821
.label_1808:
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	mov	dword ptr [rsp + 0x64], r14d
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], r14d
	jmp	.label_1825
.label_1815:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], ebx
	jmp	.label_1804
.label_1828:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x64], 0xc
	mov	dword ptr [rsp + 0x24], 0xc
	mov	ecx, 1
.label_1804:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x30]
	jmp	.label_1805
.label_1811:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebx, 0xc
	jmp	.label_1801
.label_1809:
	cmp	ecx, 2
	je	.label_1827
	mov	eax, dword ptr [rsp + 0x24]
.label_1799:
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
	.align	16
	#Procedure 0x413990

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
	jmp	.label_1834
	nop	dword ptr [rax]
.label_1830:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_1834:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1835
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_1829
	nop	
.label_1837:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1837
.label_1829:
	cmp	rdx, -1
	je	.label_1835
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1832
.label_1835:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1838
	cmp	qword ptr [rax + rcx], r14
	je	.label_1833
.label_1838:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1831
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1836
	test	rcx, rcx
	jne	.label_1830
	jmp	.label_1832
	nop	dword ptr [rax]
.label_1836:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_1831
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_1830
.label_1833:
	cmp	r15d, 9
	jne	.label_1832
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1831
.label_1832:
	xor	eax, eax
.label_1831:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413aa0

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
	je	.label_1855
	mov	r15, r8
	jle	.label_1850
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1854
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_1854
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	eax, ebx
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1862
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_1844:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1844
	jmp	.label_1852
.label_1862:
	pxor	xmm1, xmm1
.label_1852:
	cmp	rbx, 0xc
	jb	.label_1841
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr [rax + rax]
.label_1853:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1853
.label_1841:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1850
.label_1854:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_1858:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1858
.label_1850:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_1860
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1847:
	test	r12, r12
	je	.label_1842
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_1842
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1842
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_1856:
	test	rdi, rdi
	jle	.label_1846
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_1856
	nop	word ptr cs:[rax + rax]
.label_1842:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_1847
.label_1860:
	mov	qword ptr [rsp + 0x10], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1849
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbx, qword ptr [r12 + 8]
	test	rbx, rbx
	jle	.label_1840
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1848
	mov	qword ptr [rsp + 8], r14
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_1857
.label_1840:
	mov	qword ptr [rsp + 8], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1859
	lea	r14, [r12 + 0x10]
.label_1857:
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1843:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	ecx, ebp
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_1845
	movzx	esi, bpl
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	and	bl, 0xdf
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	cmp	esi, 0xc
	je	.label_1839
	cmp	esi, 4
	je	.label_1864
	cmp	esi, 2
	jne	.label_1861
	or	bl, 0x10
	jmp	.label_1863
.label_1864:
	or	bl, 0x40
	jmp	.label_1863
.label_1861:
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1845
.label_1839:
	or	bl, 0x80
.label_1863:
	mov	byte ptr [r13 + 0x68], bl
.label_1845:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1843
.label_1859:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	je	.label_1846
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_1849
.label_1855:
	mov	dword ptr [r14], 0
	jmp	.label_1851
.label_1848:
	mov	rdi, r13
	call	free
.label_1849:
	mov	dword ptr [r14], 0xc
.label_1851:
	xor	r13d, r13d
.label_1846:
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
	#Procedure 0x413df0

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
	je	.label_1889
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_1870
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_1870
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_1879:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_1870
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_1879
.label_1870:
	cmp	r10d, 5
	jne	.label_1883
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_1868
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_1885
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	cmp	esi, 0xa
	je	.label_1868
.label_1885:
	test	al, al
	js	.label_1866
	mov	r14d, ebx
	jmp	.label_1868
.label_1883:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_1868
	test	al, al
	je	.label_1868
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_1874
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1874
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_1882
.label_1874:
	cmp	r8d, 1
	jne	.label_1880
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_1882
.label_1880:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_1882:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_1887
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1867:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_1875
	inc	rdx
	cmp	rdx, rax
	jl	.label_1867
.label_1887:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_1869
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1876:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_1875
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_1876
	mov	rsi, qword ptr [r15 + 0x40]
.label_1869:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_1877
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_1873:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_1886
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_1884
.label_1886:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_1873
	jmp	.label_1877
.label_1875:
	mov	ecx, ebx
.label_1877:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1888
	mov	r14d, ecx
	jmp	.label_1868
.label_1888:
	test	ecx, ecx
	jg	.label_1868
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
	jmp	.label_1868
.label_1866:
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_1868
	mov	r14d, ebx
	jmp	.label_1868
.label_1889:
	mov	rax, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_1872
.label_1868:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1884:
	mov	ecx, ebx
	jmp	.label_1877
.label_1872:
	lea	rdi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_1868
	mov	bl, byte ptr [rcx + rax + 1]
	movzx	edi, sil
	cmp	edi, 0xdf
	ja	.label_1881
	movzx	eax, bl
	cmp	eax, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_1868
.label_1881:
	cmp	edi, 0xef
	ja	.label_1890
	mov	esi, 3
	cmp	edi, 0xe0
	jne	.label_1865
	movzx	edi, bl
	cmp	edi, 0xa0
	jb	.label_1868
	jmp	.label_1865
.label_1890:
	cmp	edi, 0xf7
	ja	.label_1871
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_1865
	movzx	edi, bl
	cmp	edi, 0x90
	jb	.label_1868
	jmp	.label_1865
.label_1871:
	cmp	edi, 0xfb
	ja	.label_1878
	mov	esi, 5
	cmp	edi, 0xf8
	jne	.label_1865
	movzx	edi, bl
	cmp	edi, 0x88
	jb	.label_1868
	jmp	.label_1865
.label_1878:
	cmp	edi, 0xfd
	ja	.label_1868
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_1865
	movzx	edi, bl
	cmp	edi, 0x84
	jb	.label_1868
.label_1865:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_1868
	add	rax, rcx
	mov	ecx, 1
.label_1891:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_1868
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_1868
	inc	rcx
	cmp	rcx, rdi
	jl	.label_1891
	mov	r14d, esi
	jmp	.label_1868
	nop	
	.section	.text
	.align	16
	#Procedure 0x4140d0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	rbx
	push	rax
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	movzx	ebp, bl
	xor	eax, eax
	dec	ebp
	cmp	ebp, 6
	ja	.label_1892
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_1899]]
.label_2258:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_1893
	xor	eax, eax
	jmp	.label_1892
.label_2259:
	mov	rsi, qword ptr [rsi]
	mov	al, cl
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	jb	.label_1893
	xor	eax, eax
	jmp	.label_1892
.label_2261:
	test	cl, cl
	js	.label_1897
.label_2260:
	test	cl, cl
	je	.label_1898
	movzx	eax, cl
	cmp	eax, 0xa
	jne	.label_1893
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1893
	xor	eax, eax
	jmp	.label_1892
.label_1898:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1895
.label_1893:
	mov	ebp, ebx
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_1892
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1900
	test	ecx, ecx
	jne	.label_1900
	xor	eax, eax
	jmp	.label_1892
.label_1900:
	test	bh, 8
	je	.label_1894
	test	ecx, ecx
	je	.label_1894
	xor	eax, eax
	jmp	.label_1892
.label_1897:
	xor	eax, eax
	jmp	.label_1892
.label_1894:
	test	bh, 0x20
	je	.label_1896
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1896
	xor	eax, eax
	jmp	.label_1892
.label_1895:
	xor	eax, eax
	jmp	.label_1892
.label_1896:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1892:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4141c0

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
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	qword ptr [rbp - 0xb8], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xd8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rbp - 0xc0], rsi
	test	rsi, rsi
	je	.label_1999
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1904
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0xc8], rax
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1960:
	mov	qword ptr [rbp - 0x98], rbx
	mov	rax, qword ptr [r13 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	r10d, al
	cmp	r10d, 1
	jne	.label_1926
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
	jmp	.label_1934
	nop	word ptr cs:[rax + rax]
.label_1926:
	cmp	r10d, 7
	je	.label_1944
	cmp	r10d, 5
	je	.label_1947
	cmp	r10d, 3
	jne	.label_1927
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_1934
.label_1944:
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_1956
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_1956:
	test	cl, cl
	jns	.label_1934
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_1934
.label_1947:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1969
	mov	rcx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_1973
.label_1969:
	mov	qword ptr [rbp - 0x38], -1
	mov	qword ptr [rbp - 0x40], -1
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, -1
.label_1973:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	jne	.label_1987
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_1987:
	test	dl, dl
	jns	.label_1934
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	nop	word ptr cs:[rax + rax]
.label_1934:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_1935
	test	cl, 0x20
	je	.label_1958
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_1927
	mov	qword ptr [rbp - 0x50], 0x400
.label_1958:
	test	cl, cl
	js	.label_1906
	test	cl, 4
	je	.label_1903
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_1906
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_1911
	mov	rdx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r9, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	or	rdx, rbx
	mov	rbx, rdi
	jmp	.label_1916
.label_1911:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm0
	or	rdi, rdx
	or	rdi, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_1916:
	test	rdx, rdx
	je	.label_1927
.label_1903:
	test	cl, 8
	je	.label_1935
	cmp	r10d, 1
	setne	cl
	test	eax, 0x400000
	je	.label_1961
	test	cl, cl
	jne	.label_1961
	nop	word ptr cs:[rax + rax]
.label_1906:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_1927
.label_1961:
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_1917
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm1
	or	rdi, rcx
	or	rdi, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_1982
.label_1917:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_1982:
	test	rax, rax
	je	.label_1927
	nop	dword ptr [rax]
.label_1935:
	test	r14, r14
	jle	.label_1901
	mov	qword ptr [rbp - 0x80], rsi
	mov	r13, qword ptr [rbp - 0xc8]
	xor	edi, edi
	mov	edx, r10d
	mov	dword ptr [rbp - 0xb0], edx
	nop	
.label_1922:
	cmp	edx, 1
	jne	.label_1912
	mov	rax, qword ptr [rbp - 0xa0]
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_1914
.label_1912:
	mov	qword ptr [rbp - 0x88], rdi
	mov	qword ptr [rbp - 0x78], r14
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	mov	r9, r12
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	mov	rbx, r10
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	or	rbx, r11
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	je	.label_1923
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	not	r12
	and	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rdx, rcx
	not	rdx
	and	rdx, r14
	mov	rax, rdx
	or	rax, rbx
	not	r14
	and	r14, rcx
	mov	qword ptr [rbp - 0x48], r14
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x40], r15
	mov	r12, qword ptr [rbp - 0x90]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	r12, rsi
	je	.label_1942
	mov	qword ptr [rbp - 0x90], r12
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, rsi
	shl	rax, 5
	mov	r12, qword ptr [rbp - 0xc8]
	mov	qword ptr [r12 + rax], rbx
	mov	qword ptr [r12 + rax + 8], rdx
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	lea	r12, [rsi + rsi*2]
	mov	rbx, qword ptr [rbp - 0xc0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_1965
	mov	qword ptr [rbp - 0xd0], rax
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xe0], rcx
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	test	rax, rax
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_1976
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xd0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1995
	nop	
.label_1923:
	mov	r14, qword ptr [rbp - 0x78]
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0xb0]
	jmp	.label_1914
.label_1965:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x90]
.label_1995:
	inc	qword ptr [rbp - 0x78]
.label_1942:
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	test	al, al
	je	.label_1908
	or	r14, qword ptr [rbp - 0xa8]
	or	r15, r12
	or	r15, r14
	mov	r14, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x88]
	je	.label_1910
.label_1914:
	inc	rdi
	add	r13, 0x20
	add	qword ptr [rbp - 0x80], 0x18
	cmp	rdi, r14
	jl	.label_1922
	jmp	.label_1910
.label_1901:
	xor	edi, edi
.label_1910:
	cmp	rdi, r14
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0xd8]
	mov	r13, qword ptr [rbp - 0xb8]
	jne	.label_1927
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	r15, rbx
	lea	rbx, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	r12, rdi
	mov	edi, 8
	call	malloc
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1949
	mov	qword ptr [rax], r14
	inc	r12
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xd8]
	nop	word ptr cs:[rax + rax]
.label_1927:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 0x10]
	jl	.label_1960
	test	r14, r14
	jle	.label_1904
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	xor	ecx, ecx
	test	rax, rax
	mov	edx, 0xc
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0x54], edx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_1921
	test	rax, rax
	je	.label_1921
	lea	rax, [r14*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1979
	mov	qword ptr [rbp - 0xb8], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xd0], 0
	jmp	.label_1985
.label_1976:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xe0]
	movdqu	xmmword ptr [rax], xmm0
.label_1908:
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x78]
.label_1936:
	mov	r14, -1
	test	r12, r12
	jle	.label_1904
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1981:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1981
	mov	rsi, r15
.label_1904:
	mov	rdi, rsi
	call	free
	test	r14, r14
	je	.label_2000
	xor	eax, eax
	jmp	.label_1902
.label_2000:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_1902
.label_1999:
	xor	eax, eax
	jmp	.label_1902
.label_1979:
	call	malloc
	test	rax, rax
	je	.label_1921
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xd0], ecx
.label_1985:
	mov	qword ptr [rbp - 0x80], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x78], r14
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_1998:
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x98], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xc0], r15
	test	rax, rax
	jle	.label_1939
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	
.label_1963:
	mov	rcx, qword ptr [r13 + r15*8]
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_1954
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x70]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x54], eax
	test	eax, eax
	jne	.label_1932
	mov	rax, qword ptr [rbx]
.label_1954:
	inc	r15
	cmp	r15, rax
	jl	.label_1963
.label_1939:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1952
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_1932
.label_1952:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1972
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_1975
.label_1972:
	mov	ecx, 1
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1984
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_1932
.label_1984:
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rcx + r14*8], rax
	je	.label_1989
	mov	al, 1
	cmp	dword ptr [r12 + 0xb4], 1
	jg	.label_1991
	mov	rax, qword ptr [rbp - 0xe0]
.label_1991:
	mov	qword ptr [rbp - 0xe0], rax
.label_1989:
	mov	ecx, 2
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1975
	mov	eax, dword ptr [rbp - 0x54]
	test	eax, eax
	jne	.label_1932
.label_1975:
	mov	rax, r14
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsi, qword ptr [rbp - 0xa0]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	cmp	r14, qword ptr [rbp - 0x78]
	mov	r15, qword ptr [rbp - 0xc0]
	jl	.label_1998
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xe0]
	and	al, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	edi, 8
	jne	.label_1924
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_1932
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_1937
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_1945
.label_1946:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1946
	test	qword ptr [r12 + 0xb8], rdx
	je	.label_1951
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_1953
.label_1951:
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_1953:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_1955
.label_1945:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_1946
.label_1955:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_1945
.label_1937:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_1962
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_1930
.label_1968:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1968
	test	qword ptr [r12 + 0xc0], rdx
	je	.label_1971
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1974
.label_1971:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_1974:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_1978
.label_1930:
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_1968
.label_1978:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_1930
.label_1962:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0x90]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_1983
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_1986
.label_1992:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1992
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_1993
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1928
.label_1993:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1928:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_1997
.label_1986:
	mov	rdi, -1
	test	r10b, 1
	mov	rcx, r8
	jne	.label_1992
.label_1997:
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	test	r10, r10
	jne	.label_1986
.label_1983:
	test	r13, r13
	je	.label_1957
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_1925
.label_1918:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1918
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_1909
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1913
.label_1909:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1913:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_1919
.label_1925:
	mov	rdi, -1
	test	r13b, 1
	mov	rcx, r8
	jne	.label_1918
.label_1919:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	jne	.label_1925
.label_1957:
	mov	rcx, qword ptr [rbp - 0x88]
	test	ch, 4
	je	.label_1929
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_1948:
	test	byte ptr [rdx + 1], 4
	jne	.label_1931
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_1948
	jmp	.label_1929
.label_1949:
	lea	rax, [rsi + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	jmp	.label_1936
.label_1921:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	jmp	.label_1940
.label_1931:
	mov	rdx, qword ptr [rbp - 0xe0]
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_1929
	mov	qword ptr [rax + 0x850], rcx
.label_1929:
	test	r11b, r11b
	je	.label_1950
	mov	rdi, r9
	call	free
.label_1950:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_1988:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1988
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_1902
.label_1924:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_1932
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_1966
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_1970
.label_1932:
	mov	eax, dword ptr [rbp - 0xd0]
	test	al, al
	je	.label_1977
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1977:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14, qword ptr [rbp - 0x78]
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xc0]
	jle	.label_1980
.label_1940:
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1990:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r14
	jne	.label_1990
.label_1980:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_1902:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1994:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1994
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_1996
.label_1970:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_1994
.label_1996:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_1970
.label_1966:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_1905
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_1907
.label_1915:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1915
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_1920
.label_1907:
	mov	rbx, -1
	test	sil, 1
	mov	rdi, r8
	jne	.label_1915
.label_1920:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_1907
.label_1905:
	mov	r9, r10
	mov	rcx, qword ptr [rbp - 0x90]
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_1933
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_1938
.label_1941:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1941
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_1943
.label_1938:
	mov	rbx, -1
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_1941
.label_1943:
	add	rdx, rdx
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	jne	.label_1938
.label_1933:
	test	r13, r13
	je	.label_1957
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_1959
.label_1964:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1964
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_1967
.label_1959:
	mov	rbx, -1
	test	r13b, 1
	mov	rdi, r8
	jne	.label_1964
.label_1967:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	je	.label_1957
	jmp	.label_1959
	nop	
	.section	.text
	.align	16
	#Procedure 0x415160

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1368]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2006
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2011
	lea	rax, [r15 + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	nop	word ptr cs:[rax + rax]
.label_2019:
	mov	rdx, r13
	test	rdx, rdx
	jle	.label_2016
	mov	rdi, qword ptr [r15]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2004
	xor	eax, eax
	jmp	.label_2017
	nop	word ptr [rax + rax]
.label_2004:
	mov	eax, dword ptr [rsp + 0xc]
	inc	eax
.label_2017:
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2003
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x48], 0
	lea	r13, [rdx - 1]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2007
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2007
	mov	rcx, qword ptr [r14 + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_2014:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2002
	mov	rax, r15
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2012
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x20]
	jle	.label_2013
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jmp	.label_2015
.label_2012:
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2015
	jmp	.label_2002
.label_2013:
	mov	rsi, r14
	mov	rdx, qword ptr [rsi]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r14, r13
	mov	r13, r15
	mov	r15, rsi
	je	.label_2002
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2002
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2005
	nop	word ptr cs:[rax + rax]
.label_2010:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2010
.label_2005:
	test	eax, eax
	je	.label_2002
	cmp	rdi, -1
	je	.label_2002
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2015
.label_2002:
	mov	rax, qword ptr [rsp + 0x30]
	add	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	check_node_accept
	test	al, al
	je	.label_2009
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2009
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2009
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2018
.label_2001:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2001
.label_2018:
	cmp	rsi, -1
	je	.label_2009
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2009
	nop	dword ptr [rax]
.label_2015:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2020
	movsxd	rcx, eax
	add	rcx, r13
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r9, r13
	call	check_dst_limits
	test	al, al
	jne	.label_2009
.label_2020:
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	je	.label_2011
.label_2009:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2014
.label_2007:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x40]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2019
	jmp	.label_2011
.label_2016:
	xor	ebp, ebp
	jmp	.label_2011
.label_2003:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2011:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2008:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2006:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebp, 0xc
	jmp	.label_2008
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4154b0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x58], rbp
	mov	r13, rdi
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	test	rbx, rbx
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [r11 + 8], 0
	je	.label_2071
	mov	qword ptr [rsp + 0x50], rdx
	test	rbx, rbx
	je	.label_2023
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x70], 0
	lea	rdi, [rsp + 0x70]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x70]
	test	r12d, r12d
	jne	.label_2038
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_2065
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	mov	dword ptr [rsp + 0x70], ecx
	je	.label_2038
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2065
	mov	r14, rbp
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2078:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2076
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2078
	mov	dword ptr [rsp + 0x70], 0
	mov	rbp, r14
.label_2065:
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_2041
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_2023
	mov	qword ptr [rsp + 0x30], r13
	mov	r10, qword ptr [rsp + 0x50]
	jle	.label_2029
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2081:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	jge	.label_2037
	cmp	qword ptr [r13 + rax*8 + 8], r10
	jl	.label_2037
	mov	rdx, qword ptr [r13 + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x40], r8
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2051
	test	rax, rax
	jle	.label_2037
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_2083:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	je	.label_2030
	cmp	ebx, 8
	jne	.label_2077
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2073
	mov	rbp, rsi
.label_2073:
	mov	rsi, rbp
	jmp	.label_2077
	nop	word ptr [rax + rax]
.label_2030:
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2086
	mov	rbp, r14
.label_2086:
	mov	r14, rbp
.label_2077:
	add	rdx, 8
	dec	rax
	jne	.label_2083
	test	rsi, rsi
	mov	rbp, r11
	js	.label_2085
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2057
.label_2085:
	test	r14, r14
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x48]
	js	.label_2037
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2037
	nop	word ptr cs:[rax + rax]
.label_2039:
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2045
	dec	rdx
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2056
	nop	word ptr [rax + rax]
.label_2059:
	lea	rbx, [rax + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	cmovl	rax, rcx
	cmovge	rdx, rbx
	cmp	rax, rdx
	jb	.label_2059
.label_2056:
	cmp	rax, -1
	je	.label_2045
	cmp	qword ptr [rdi + rax*8], r14
	je	.label_2069
.label_2045:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2061
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2052
	nop	word ptr [rax + rax]
.label_2080:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	cmp	qword ptr [rcx + rdi*8], r14
	lea	rbx, [rdi + 1]
	cmovl	rax, rbx
	cmovge	rdx, rdi
	cmp	rax, rdx
	jb	.label_2080
.label_2052:
	cmp	rax, -1
	je	.label_2061
	cmp	qword ptr [rcx + rax*8], r14
	je	.label_2069
.label_2061:
	mov	qword ptr [rsp + 0x48], r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2057
	dec	rbp
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x48]
.label_2069:
	inc	rbp
	cmp	rbp, r8
	jl	.label_2039
	jmp	.label_2037
.label_2051:
	test	rax, rax
	mov	ebp, 0
	jg	.label_2044
	jmp	.label_2037
	nop	dword ptr [rax]
.label_2079:
	mov	rcx, qword ptr [r12]
.label_2044:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2053
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2053
	mov	r14, r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2057
	mov	rax, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x40]
.label_2053:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2079
	nop	word ptr [rax + rax]
.label_2037:
	inc	r15
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2081
.label_2029:
	mov	qword ptr [rsp + 0x50], r10
	mov	dword ptr [rsp + 0x6c], 0
	mov	r13, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
.label_2023:
	lea	rdi, [rsp + 0x6c]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r12d, dword ptr [rsp + 0x6c]
	test	r12d, r12d
	je	.label_2028
	jmp	.label_2041
.label_2071:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2028:
	test	rbx, rbx
	je	.label_2040
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2040
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	test	rbp, rbp
	jle	.label_2050
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_2064:
	lea	rsi, [rax + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	cmovge	rax, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rax
	jl	.label_2064
.label_2050:
	cmp	r15, rbp
	jge	.label_2074
	cmp	r15, -1
	je	.label_2074
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2074
	mov	qword ptr [rsp + 0x70], 0
	mov	rax, qword ptr [rsp + 0x60]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2082
	mov	rdi, r13
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x50], rdx
	mov	r10, rbx
	mov	qword ptr [rsp + 0x58], r10
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	shl	qword ptr [rsp + 0x20], 3
	xor	r13d, r13d
.label_2027:
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	jne	.label_2036
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2049
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2054
	jmp	.label_2049
.label_2036:
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2049
.label_2054:
	mov	rbx, qword ptr [rdi + 0xd8]
	add	rbx, qword ptr [rsp + 0x20]
	mov	r14, r15
	nop	
.label_2021:
	cmp	qword ptr [rbx], rbp
	jne	.label_2048
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2067
	mov	rax, qword ptr [r11 + 0x28]
	lea	rdx, [rbp + rbp*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2070
	nop	
.label_2067:
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2070:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2048
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2048
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2048
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2084
	nop	word ptr [rax + rax]
.label_2026:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2026
.label_2084:
	cmp	rdx, -1
	je	.label_2035
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2035
	mov	qword ptr [rsp + 0x40], r11
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x48]
	call	check_dst_limits
	test	al, al
	mov	r10, r12
	je	.label_2043
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_2046
.label_2035:
	mov	r10, r12
	jmp	.label_2046
.label_2043:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_2063
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0xa0], rax
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x98], rbx
	test	rbx, rbx
	jle	.label_2058
	mov	rbp, r10
	mov	qword ptr [rsp + 0x90], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0xa0], rax
	test	rax, rax
	je	.label_2072
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r10, rbp
	jmp	.label_2063
.label_2058:
	lea	rax, [rsp + 0x90]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2063:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r14
	mov	rbx, r10
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	mov	rax, qword ptr [rsp + 0x40]
	je	.label_2033
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rbx + rcx*8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsp + 0x70]
	mov	r12, rax
	mov	rbp, rdx
	call	sift_states_backward
	mov	r10, rbp
	mov	r11, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2033
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_2062
	mov	r13, -1
	test	rcx, rcx
	lea	rbp, [rsp + 0xa8]
	js	.label_2068
	nop	dword ptr [rax]
.label_2042:
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	test	rsi, rsi
	je	.label_2060
	test	rdx, rdx
	je	.label_2031
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc4], r12d
	test	r12d, r12d
	jne	.label_2033
	lea	rdi, [rsp + 0xc4]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	mov	rdi, rbx
	mov	r12d, dword ptr [rsp + 0xc4]
	test	r12d, r12d
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x38]
	je	.label_2031
	jmp	.label_2033
.label_2060:
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2031:
	inc	r13
	cmp	r13, rcx
	jl	.label_2042
.label_2068:
	mov	r11, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
.label_2062:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x98]
	test	r12, r12
	jle	.label_2025
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2022
	nop	dword ptr [rax + rax]
.label_2066:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2066
.label_2022:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	je	.label_2075
	mov	rdi, -1
.label_2075:
	test	rdi, rdi
	js	.label_2025
	cmp	r12, rdi
	jle	.label_2025
	mov	qword ptr [rsp + 0x98], rbp
	cmp	rbp, rdi
	jle	.label_2025
	dec	r12
	lea	rdi, [rdx + 1]
	cmp	r12, rdi
	mov	rbx, rdi
	cmovge	rbx, r12
	sub	rbx, rdx
	cmp	rbx, 4
	jb	.label_2032
	mov	r8, rbx
	and	r8, 0xfffffffffffffffc
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	je	.label_2032
	mov	qword ptr [rsp + 0x58], r10
	mov	qword ptr [rsp + 0x40], r11
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	shr	r11, 2
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2024
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2024:
	test	r11, r11
	je	.label_2055
	cmp	r12, rdi
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	lea	rsi, [rax + r10*8 + 0x38]
.label_2047:
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	movups	xmmword ptr [rsi - 0x28], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	add	rdi, -8
	jne	.label_2047
.label_2055:
	cmp	rbx, r9
	mov	r11, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x58]
	je	.label_2025
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2032:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2032
.label_2025:
	lea	rbx, [r14 + r14*4]
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x30]
	add	rbx, qword ptr [rdi + 0xd8]
.label_2046:
	mov	rbp, qword ptr [rsp + 0x48]
	nop	word ptr [rax + rax]
.label_2048:
	inc	r14
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2021
.label_2049:
	mov	rdx, rcx
	inc	r13
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2027
.label_2033:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_2034
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
.label_2034:
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	je	.label_2040
	jmp	.label_2041
.label_2074:
	mov	dword ptr [rsp + 0x6c], 0
.label_2040:
	xor	r12d, r12d
.label_2041:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2057:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2041
.label_2076:
	mov	dword ptr [rsp + 0x70], eax
.label_2038:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2041
.label_2082:
	mov	dword ptr [rsp + 0x6c], 0
	jmp	.label_2040
.label_2072:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x90]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2033
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415fa0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_2087
	mov	r10, qword ptr [r14 + 8]
	test	r10, r10
	je	.label_2087
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	jle	.label_2091
	add	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2087
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	jmp	.label_2090
.label_2091:
	lea	r8, [r12 + 0x10]
.label_2090:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2104:
	dec	rdx
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdi, r10
.label_2099:
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2094:
	cmp	qword ptr [rbx + rdx*8], rax
	je	.label_2092
	jl	.label_2093
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2094
	jmp	.label_2089
	nop	word ptr cs:[rax + rax]
.label_2093:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_2099
	jmp	.label_2089
	nop	dword ptr [rax + rax]
.label_2092:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	js	.label_2088
	nop	dword ptr [rax + rax]
.label_2095:
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2098
	test	rsi, rsi
	lea	rsi, [rsi - 1]
	jg	.label_2095
	jmp	.label_2088
.label_2098:
	test	rsi, rsi
	js	.label_2088
	cmp	rcx, rax
	je	.label_2102
	nop	
.label_2088:
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2102:
	test	rdx, rdx
	jle	.label_2089
	cmp	rdi, 2
	jge	.label_2104
.label_2089:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	mov	qword ptr [r12 + 8], rsi
	test	rcx, rcx
	jle	.label_2097
	test	rax, rax
	js	.label_2097
	add	r11, rdx
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2101:
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	
.label_2096:
	mov	rsi, qword ptr [rdi + r14*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_2105
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2096
	jmp	.label_2100
.label_2105:
	dec	r14
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	jne	.label_2101
	jmp	.label_2103
.label_2097:
	mov	rdi, qword ptr [r8]
.label_2100:
	mov	rdx, r10
.label_2103:
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2087:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416170

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
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdx, [r15 + r15*2]
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2111
	lea	rax, [rcx + rdx*8 + 8]
	mov	qword ptr [rsp + 0x18], rax
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_2106:
	mov	r11, qword ptr [r14]
	mov	rcx, qword ptr [r11 + r13*8]
	cmp	rcx, r15
	je	.label_2113
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	shl	rax, 4
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2113
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rcx]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2133
	mov	r10, qword ptr [rcx + 8]
.label_2133:
	test	r9, r9
	jle	.label_2115
	mov	rcx, r9
	dec	rcx
	mov	ebp, 0
	je	.label_2117
	nop	word ptr [rax + rax]
.label_2122:
	lea	rbx, [rbp + rcx]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rcx, rbx
	cmp	rbp, rcx
	jb	.label_2122
.label_2117:
	cmp	rbp, -1
	je	.label_2115
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2116
.label_2115:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2116
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2131
	nop	word ptr cs:[rax + rax]
.label_2107:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2107
.label_2131:
	cmp	rcx, -1
	je	.label_2116
	cmp	qword ptr [rbx + rcx*8], rsi
	je	.label_2120
.label_2116:
	test	r10, r10
	jle	.label_2113
	test	r9, r9
	jle	.label_2121
	mov	rbp, r9
	dec	rbp
	mov	ecx, 0
	je	.label_2123
	nop	word ptr [rax + rax]
.label_2126:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2126
.label_2123:
	cmp	rcx, -1
	je	.label_2121
	cmp	qword ptr [r11 + rcx*8], r10
	je	.label_2113
.label_2121:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2113
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2110
	nop	word ptr cs:[rax + rax]
.label_2118:
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rsi, rax
	cmp	rcx, rsi
	jb	.label_2118
.label_2110:
	cmp	rcx, -1
	je	.label_2113
	cmp	qword ptr [rbp + rcx*8], r10
	jne	.label_2113
.label_2120:
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2132
	mov	rax, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	dword ptr [rax]
.label_2113:
	inc	r13
	cmp	r13, r9
	jl	.label_2106
	test	r9, r9
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jle	.label_2111
	lea	r8, [rsp + 0x30]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r11, [r10 - 1]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2112:
	test	r10, r10
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2124
	test	r11, r11
	mov	rdx, r11
	mov	ecx, 0
	je	.label_2128
	nop	word ptr cs:[rax + rax]
.label_2125:
	lea	rdi, [rcx + rdx]
	shr	rdi, 1
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	cmovl	rcx, rbx
	cmovge	rdx, rdi
	cmp	rcx, rdx
	jb	.label_2125
.label_2128:
	cmp	rcx, -1
	je	.label_2124
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2108
.label_2124:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2108
	mov	r15, r14
	dec	r15
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2114
	nop	dword ptr [rax + rax]
.label_2127:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2127
.label_2114:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	je	.label_2129
	mov	rax, -1
.label_2129:
	test	rax, rax
	js	.label_2108
	cmp	r14, rax
	jle	.label_2108
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2108
.label_2109:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2109
	nop	word ptr cs:[rax + rax]
.label_2108:
	inc	r13
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, qword ptr [rax]
	jl	.label_2112
	jmp	.label_2119
.label_2111:
	lea	r8, [rsp + 0x30]
.label_2119:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2130:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2132:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2130
	nop	
	.section	.text
	.align	16
	#Procedure 0x4164d0

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
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r10, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2139
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	dword ptr [rax]
.label_2144:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2144
.label_2139:
	cmp	r14, rax
	jge	.label_2138
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2145
.label_2138:
	mov	r14, -1
.label_2145:
	xor	r12d, r12d
	test	rax, rax
	jle	.label_2146
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, rax
	nop	
.label_2134:
	lea	rsi, [rdx + r12]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2134
.label_2146:
	cmp	r12, rax
	jge	.label_2147
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	je	.label_2140
.label_2147:
	mov	r12, -1
.label_2140:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2136
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2141:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	r11, rcx
	jle	.label_2135
	mov	ebx, 0xffffffff
	jmp	.label_2142
	nop	word ptr cs:[rax + rax]
.label_2135:
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	jl	.label_2142
	cmp	r11, rcx
	sete	bl
	movzx	r8d, bl
	cmp	rsi, rcx
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2142
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	r8, r14
	mov	rbx, r9
	mov	rbp, r10
	call	check_dst_limits_calc_pos_1
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	mov	rax, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [rbp + rbp*4]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_2142:
	cmp	r11, r9
	jg	.label_2137
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2137
	cmp	r11, r9
	mov	esi, ebx
	sete	bl
	movzx	ebp, bl
	mov	ebx, esi
	cmp	rax, r9
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebp
	je	.label_2137
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, r13
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbp
	mov	r13d, eax
	nop	
.label_2137:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2143
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2141
	xor	eax, eax
	jmp	.label_2143
.label_2136:
	xor	eax, eax
.label_2143:
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
	.align	16
	#Procedure 0x416740

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2148
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2156:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_2159
	cmp	eax, 8
	je	.label_2152
	cmp	eax, 4
	jne	.label_2154
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2154
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_2155:
	cmp	qword ptr [r14], r12
	jne	.label_2149
	cmp	rbx, 0x3f
	jg	.label_2161
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_2149
.label_2161:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2157
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2150
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_2151
	cmp	rbx, 0x3f
	jg	.label_2149
	jmp	.label_2158
.label_2150:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2158
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_2149
	jmp	.label_2151
.label_2158:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_2149:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2155
	jmp	.label_2154
	nop	word ptr cs:[rax + rax]
.label_2159:
	cmp	dword ptr [rsp + 8], 0
	je	.label_2154
	xor	eax, eax
	jmp	.label_2153
	nop	dword ptr [rax + rax]
.label_2152:
	cmp	dword ptr [rsp + 4], 0
	je	.label_2154
	mov	eax, 0xffffffff
.label_2153:
	cmp	qword ptr [rcx], rbx
	je	.label_2151
.label_2154:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_2156
.label_2148:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_2160
.label_2157:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2160:
	mov	eax, r13d
.label_2151:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x416950

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
	jne	.label_2163
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2162
	test	cl, cl
	jne	.label_2162
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2162
.label_2163:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2162
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2162:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4169b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2165
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2166
	cmp	byte ptr [rax + 1], 0
	je	.label_2164
.label_2166:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2165
.label_2164:
	xor	ebx, ebx
.label_2165:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4169f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_2167
	mov	rax, rcx
.label_2167:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x416a20

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]