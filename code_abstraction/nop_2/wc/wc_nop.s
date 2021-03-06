	.section	.text
	.align	32
	#Procedure 0x401ba0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_9
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.7
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.46
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	call	exit
.label_9:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e50

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1d8
	mov	rsp, rsp
	mov	r14, rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	nop	
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rsp, rsp
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	setvbuf
	mov	edi, OFFSET FLAT:.str.11
	call	getenv
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + print_bytes]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_chars]],  0
	mov	byte ptr [byte ptr [rip + print_words]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_lines]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_linelength]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + max_line_length]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + total_bytes]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + total_chars]],  0
	mov	qword ptr [word ptr [rip + total_words]],  0
	mov	qword ptr [word ptr [rip + total_lines]],  0
	jmp	.label_18
.label_76:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + print_linelength]],  1
.label_18:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x6b
	jle	.label_65
	cmp	eax, 0x76
	mov	rsp, rsp
	jg	.label_66
	cmp	eax, 0x6c
	je	.label_69
	nop	
	cmp	eax, 0x6d
	mov	rsp, rsp
	jne	.label_11
	mov	byte ptr [byte ptr [rip + print_chars]],  1
	mov	rbp, rbp
	jmp	.label_18
	nop	dword ptr [rax]
.label_65:
	cmp	eax, 0x4b
	jle	.label_45
	mov	rsp, rsp
	cmp	eax, 0x4c
	lea	rdi, [rdi]
	je	.label_76
	nop	
	cmp	eax, 0x63
	mov	rbp, rbp
	jne	.label_11
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	lea	rsi, [rsi]
	jmp	.label_18
	nop	dword ptr [rax]
.label_66:
	mov	rsp, rsp
	cmp	eax, 0x77
	je	.label_10
	cmp	eax, 0x80
	jne	.label_11
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_18
.label_69:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_lines]],  1
	jmp	.label_18
.label_10:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_words]],  1
	lea	rdi, [rdi]
	jmp	.label_18
.label_45:
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_25
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	and	al, 1
	jne	.label_27
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + print_words]]
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_27
	mov	al,  byte ptr [byte ptr [rip + print_chars]]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_27
	mov	al,  byte ptr [byte ptr [rip + print_bytes]]
	and	al, 1
	jne	.label_27
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + print_linelength]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_27
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	mov	byte ptr [byte ptr [rip + print_words]],  1
	mov	byte ptr [byte ptr [rip + print_lines]],  1
.label_27:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	rbx, rbx
	je	.label_39
	cmp	eax, ebp
	mov	rbp, rbp
	jl	.label_42
	mov	rbp, rbx
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	jne	.label_43
	cmp	byte ptr [rbp + 1], 0
	nop	
	je	.label_46
.label_43:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_48
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	nop	
	call	error
.label_39:
	sub	ebp, eax
	lea	rax, [r14 + rax*8]
	mov	r14d, OFFSET FLAT:main.stdin_only
	cmovg	r14, rax
	movsxd	rax, ebp
	mov	r13d, 1
	cmovg	r13, rax
	lea	rsi, [rsi]
	mov	rdi, r14
	call	argv_iter_init_argv
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rbp, rbx
	jmp	.label_24
.label_46:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_48:
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	fileno
	lea	rdx, [rsp + 0x148]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_71
	mov	rbp, rbp
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x160]
	cmp	eax, 0x8000
	mov	rsp, rsp
	jne	.label_71
	nop	
	mov	rax, qword ptr [rsp + 0x178]
	nop	
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	call	physmem_available
	movapd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_12]]
	lea	rdi, [rdi]
	movsd	xmm0,  qword ptr [word ptr [rip + label_13]]
	nop	
	ucomisd	xmm1, xmm0
	mov	rbp, rbp
	ja	.label_14
	mov	rbp, rbp
	call	physmem_available
	lea	rdi, [rdi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_12]]
.label_14:
	ucomisd	xmm0, qword ptr [rsp + 0x10]
	jae	.label_22
.label_71:
	mov	rdi, rbx
	call	argv_iter_init_stream
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	r14d, r14d
	nop	
	xor	r13d, r13d
.label_24:
	nop	
	test	rax, rax
	je	.label_28
	mov	qword ptr [rsp + 0x138], rcx
	test	r13, r13
	lea	rsi, [rsi]
	mov	edx, 1
	cmovne	rdx, r13
	movabs	rcx, 0xd79435e50d7944
	nop	
	cmp	rdx, rcx
	nop	
	jae	.label_28
	mov	r12, rax
	imul	rdi, rdx, 0x98
	call	xmalloc
	mov	qword ptr [rsp + 0x140], rax
	test	r13, r13
	je	.label_36
	cmp	r13, 1
	jne	.label_38
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + print_lines]]
	and	eax, 1
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rip + print_words]]
	lea	rdi, [rdi]
	and	ecx, 1
	add	ecx, eax
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + print_chars]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	add	eax, ecx
	movzx	ecx,  byte ptr [byte ptr [rip + print_bytes]]
	and	ecx, 1
	mov	rbp, rbp
	add	ecx, eax
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	add	eax, ecx
	nop	
	cmp	eax, 1
	jne	.label_38
.label_36:
	mov	r15, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x140]
	mov	dword ptr [rax], 1
	lea	rdi, [rdi]
	jmp	.label_50
.label_38:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	lea	rbp, [rax + 8]
	lea	rsi, [rsi]
	mov	rbx, r13
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_55
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_58
	mov	rbp, rbp
	cmp	byte ptr [rsi + 1], 0
	nop	
	je	.label_55
.label_58:
	mov	edi, 1
	nop	
	mov	rdx, rbp
	call	__xstat
	jmp	.label_60
.label_55:
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rbp
	call	__fxstat
.label_60:
	mov	dword ptr [rbp - 8], eax
	add	rbp, 0x98
	mov	rsp, rsp
	add	r14, 8
	dec	rbx
	jne	.label_64
.label_50:
	mov	edi, 1
	test	r13, r13
	je	.label_68
	mov	rax, qword ptr [rsp + 0x140]
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	mov	rbp, rbp
	jg	.label_68
	nop	
	mov	rax, qword ptr [rsp + 0x140]
	nop	
	lea	rax, [rax + 0x20]
	nop	
	mov	esi, 1
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 0xf000
	lea	rsi, [rsi]
	mov	rdi, r13
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_19:
	mov	rsp, rsp
	mov	ebp, dword ptr [rax + 0x78]
	add	rax, 0x98
.label_72:
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_15
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	and	ebp, edx
	nop	
	cmp	ebp, 0x8000
	nop	
	jne	.label_31
	add	rcx, qword ptr [rax + 0x18]
	jmp	.label_15
.label_31:
	nop	
	mov	esi, 7
.label_15:
	nop	
	dec	rdi
	mov	rsp, rsp
	jne	.label_19
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	cmp	rcx, 9
	jbe	.label_21
	movabs	rbp, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_29:
	mov	rbp, rbp
	inc	edi
	mov	rax, rcx
	mov	rsp, rsp
	mul	rbp
	mov	rsp, rsp
	shr	rdx, 3
	cmp	rcx, 0x63
	lea	rsi, [rsi]
	mov	rcx, rdx
	ja	.label_29
.label_21:
	cmp	edi, esi
	cmovl	edi, esi
.label_68:
	mov	qword ptr [rsp + 8], r13
	mov	dword ptr [dword ptr [rip + number_width]],  edi
	lea	rsi, [rsp + 0x148]
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	call	argv_iter
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	mov	rsp, rsp
	mov	rbp, r15
	lea	rsi, [rsi]
	mov	r15, r12
	je	.label_37
	nop	
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x10], rax
	xor	r13d, r13d
	jmp	.label_41
.label_57:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r14, r15
	lea	rsi, [rsi]
	mov	r15, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, r15
	mov	rbp, rbp
	mov	r15, r14
	lea	rsi, [rsi]
	call	error
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_35
	nop	dword ptr [rax]
.label_41:
	nop	
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_51
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_54
	cmp	byte ptr [rbp + 1], 0
	je	.label_56
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
.label_51:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_35
	nop	word ptr [rax + rax]
.label_54:
	lea	rsi, [rsi]
	xor	eax, eax
.label_35:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbx]
.label_59:
	test	cl, cl
	je	.label_62
	mov	r12, rbp
	mov	r14, r15
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_63
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_73
	nop	dword ptr [rax]
.label_62:
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_74
	mov	rdi, r15
	mov	r14, r15
	call	argv_iter_n_args
	mov	rbp, rbp
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	mov	r12, rbp
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rbp, rax
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.29
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, r15
	mov	r9, rbx
	call	error
	jmp	.label_20
	nop	dword ptr [rax + rax]
.label_63:
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rax, r13
	mov	rbp, rbp
	cmove	rax, rdx
	lea	rdi, [rdi]
	imul	rbp, rax, 0x98
	mov	rsp, rsp
	add	rbp, qword ptr [rsp + 0x140]
	movzx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	jne	.label_23
	cmp	byte ptr [rbx + 1], 0
	je	.label_32
.label_23:
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	open
	nop	
	mov	r15d, eax
	nop	
	cmp	r15d, -1
	je	.label_34
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, r15d
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	nop	
	mov	bpl, al
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_30
.label_34:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r15d
	call	error
	jmp	.label_30
.label_74:
	nop	
	mov	r14, r15
	mov	r12, rbp
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	lea	rsi, [rsi]
	jmp	.label_20
.label_56:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_53
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 1], 0
	je	.label_57
	xor	eax, eax
	jmp	.label_35
.label_53:
	nop	
	xor	eax, eax
	jmp	.label_59
.label_32:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	nop	dword ptr [rax + rax]
.label_30:
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	and	al, bpl
.label_73:
	mov	qword ptr [rsp + 0x10], rax
.label_20:
	nop	
	cmp	qword ptr [rsp + 8], 0
	jne	.label_70
	nop	
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 1
.label_70:
	lea	rdi, [rdi]
	inc	r13
	mov	rbp, rbp
	mov	r15, r14
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsp + 0x148]
	call	argv_iter
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, r12
	jne	.label_41
.label_37:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x148]
	cmp	eax, 2
	je	.label_52
	nop	
	mov	r14, r15
	mov	r12, rbp
	cmp	eax, 4
	mov	rsp, rsp
	jne	.label_17
	call	__errno_location
	mov	rbp, rbp
	mov	r15d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	mov	r15, r14
	lea	rdi, [rdi]
	jmp	.label_33
.label_52:
	test	rbp, rbp
	jne	.label_49
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	test	bl, bl
	mov	rbp, rbp
	je	.label_33
	mov	rdi, r15
	call	argv_iter_n_args
	test	rax, rax
	jne	.label_33
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	nop	
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rcx, -1
	mov	rdx, qword ptr [rsp + 0x140]
	call	wc
	and	al, bl
	lea	rsi, [rsi]
	mov	bl, al
.label_33:
	mov	rax, qword ptr [rsp + 0x138]
.label_75:
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_44
	lea	rdi, [rsp + 0x18]
	call	readtokens0_free
.label_44:
	mov	rdi, r15
	call	argv_iter_n_args
	lea	rsi, [rsi]
	cmp	rax, 2
	nop	
	jb	.label_47
	mov	rbp, rbp
	mov	r14,  qword ptr [word ptr [rip + total_lines]]
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + total_words]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r15
	lea	rdi, [rdi]
	mov	r15,  qword ptr [word ptr [rip + total_chars]]
	mov	rsp, rsp
	mov	r12,  qword ptr [word ptr [rip + total_bytes]]
	lea	rdi, [rdi]
	mov	r13,  qword ptr [word ptr [rip + max_line_length]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rcx, r12
	mov	r8, r13
	mov	r9, rax
	call	write_counts
.label_47:
	mov	rdi, r15
	nop	
	call	argv_iter_free
	mov	rdi, qword ptr [rsp + 0x140]
	call	free
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	jne	.label_61
	xor	edi, edi
	nop	
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_67
.label_61:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x1d8
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_49:
	mov	rax, qword ptr [rsp + 0x138]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_75
.label_22:
	mov	rbp, rbp
	mov	r15, rbp
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x18]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	readtokens0_init
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_16
	mov	rdi, rbx
	call	rpl_fclose
	mov	rsp, rsp
	test	eax, eax
	jne	.label_16
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	rbp, rbp
	mov	cl, 1
	mov	rbp, r15
	jmp	.label_24
.label_25:
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7d
	je	.label_26
	cmp	eax, 0xffffff7e
	lea	rsi, [rsi]
	jne	.label_11
	lea	rdi, [rdi]
	xor	edi, edi
	call	usage
.label_26:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_11:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_28:
	call	xalloc_die
.label_17:
	cmp	eax, 3
	jne	.label_40
	call	xalloc_die
.label_42:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	nop	
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_67:
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	error
.label_40:
	mov	edi, OFFSET FLAT:.str.24
	nop	
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0x33f
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	.section	.text
	.align	32
	#Procedure 0x402bf0

	.globl write_counts
	.type write_counts, @function
write_counts:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r15, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_79
	movzx	eax,  byte ptr [byte ptr [rip + print_lines]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_84
	mov	rsp, rsp
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:label_79
	nop	
	xor	eax, eax
	mov	edx, ebx
	mov	rsp, rsp
	call	__printf_chk
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_84:
	movzx	eax,  byte ptr [byte ptr [rip + print_words]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	jne	.label_83
	mov	rbp, rbp
	mov	r14d,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rbx
	nop	
	mov	edx, r14d
	call	__printf_chk
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_83:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_chars]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp]
	mov	rsp, rsp
	mov	rdi, r13
	call	umaxtostr
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, ebp
	mov	rbp, rbp
	call	__printf_chk
	nop	
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_78:
	movzx	eax,  byte ptr [byte ptr [rip + print_bytes]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_80
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	mov	rsp, rsp
	lea	rsi, [rsp]
	nop	
	mov	rdi, r12
	nop	
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_80:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	mov	rsp, rsp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_81
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, ebp
	lea	rsi, [rsi]
	call	__printf_chk
.label_81:
	test	r15, r15
	je	.label_82
	mov	esi, 0xa
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_86
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	r15, rax
.label_86:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.56
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_82:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_85
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_77:
	lea	rdi, [rdi]
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_85:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_77
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl wc
	.type wc, @function
wc:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x4088
	mov	r14, rcx
	mov	rsp, rsp
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], edi
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rsi, [rsi]
	jne	.label_111
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
.label_111:
	mov	qword ptr [rsp + 0x4020], rax
	call	__ctype_get_mb_cur_max
	nop	
	mov	cl,  byte ptr [byte ptr [rip + print_bytes]]
	lea	rsi, [rsi]
	and	cl, 1
	cmp	rax, 2
	jb	.label_141
	mov	r13b,  byte ptr [byte ptr [rip + print_chars]]
	and	r13b, 1
	jmp	.label_144
.label_141:
	nop	
	or	cl,  byte ptr [byte ptr [rip + print_chars]]
	and	cl, 1
	xor	r13d, r13d
.label_144:
	mov	rbp, rbp
	mov	bl,  byte ptr [byte ptr [rip + print_linelength]]
	mov	rsp, rsp
	or	bl,  byte ptr [byte ptr [rip + print_words]]
	lea	rsi, [rsi]
	test	cl, cl
	nop	
	sete	al
	nop	
	test	r13b, r13b
	lea	rdi, [rdi]
	setne	r15b
	or	r15b, al
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_99
	test	bl, 1
	lea	rsi, [rsi]
	jne	.label_99
	test	r15b, r15b
	nop	
	jne	.label_99
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_103
.label_99:
	xor	esi, esi
	nop	
	xor	edx, edx
	nop	
	mov	ecx, 2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 8]
	lea	rdi, [rdi]
	call	fdadvise
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
.label_103:
	mov	rbp, rbp
	or	al, bl
	mov	rbp, rbp
	or	al, r15b
	nop	
	test	al, 1
	je	.label_112
	test	r13b, r13b
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	or	bl, al
	test	bl, 1
	lea	rsi, [rsi]
	je	.label_120
	lea	rdi, [rdi]
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_129
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x402c], r13d
	mov	qword ptr [rsp + 0x4070], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x4050], 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x4080], rax
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x4078], rax
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x4060], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x4058], rax
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x4048], rax
	xor	r14d, r14d
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x4030], rax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_119:
	xor	ebx, ebx
	jmp	.label_100
	nop	word ptr cs:[rax + rax]
.label_133:
	lea	rdi, [rdi]
	lea	rsi, [r15 + 1]
	mov	rbp, rbp
	cmp	r13, 0x4000
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmovne	rsi, r15
	sub	r13, rax
	nop	
	lea	rdi, [rsp + 0x10]
	mov	rbp, rbp
	mov	rdx, r13
	nop	
	call	memmove
	lea	rdi, [rdi]
	mov	rbx, r13
	nop	
.label_100:
	mov	rsp, rsp
	lea	rsi, [rsp + rbx + 0x10]
	mov	edx, 0x4000
	lea	rsi, [rsi]
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 8]
	call	safe_read
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_131
	mov	bpl, 1
	test	rax, rax
	je	.label_135
	add	qword ptr [rsp + 0x4078], rax
	mov	rbp, rbp
	add	rbx, rax
	mov	r13, rbx
	mov	rbp, rbp
	lea	r15, [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_109
.label_87:
	mov	r14b, 1
	jmp	.label_138
	nop	
.label_109:
	mov	rsp, rsp
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_104
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	bt	ecx, eax
	lea	rdi, [rdi]
	jae	.label_104
	movsx	edi, al
	mov	dword ptr [rsp + 0xc], edi
	nop	
	xor	eax, eax
	mov	ebx, 1
	jmp	.label_155
	nop	word ptr [rax + rax]
.label_104:
	nop	
	mov	rbp, qword ptr [rsp + 0x4050]
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x4050]
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_105
	lea	rsi, [rsi]
	cmp	rbx, -2
	mov	rbp, rbp
	je	.label_126
	lea	rdi, [rsp + 0x4050]
	nop	
	call	mbsinit
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	sete	r12b
	test	rbx, rbx
	je	.label_116
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0xc]
.label_155:
	lea	ecx, [rdi - 9]
	cmp	ecx, 4
	lea	rdi, [rdi]
	ja	.label_143
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_151]]
.label_525:
	mov	rax, qword ptr [rsp + 0x4030]
	mov	rcx, rax
	lea	rsi, [rsi]
	and	eax, 7
	neg	rax
	lea	rcx, [rcx + rax + 8]
	mov	qword ptr [rsp + 0x4030], rcx
	jmp	.label_97
	nop	dword ptr [rax]
.label_105:
	inc	r15
	dec	r13
	mov	r12b, 1
	lea	rsi, [rsi]
	jmp	.label_106
.label_143:
	lea	rdi, [rdi]
	cmp	edi, 0x20
	lea	rsi, [rsi]
	jne	.label_128
	mov	rbp, rbp
	inc	qword ptr [rsp + 0x4030]
	nop	
	jmp	.label_97
.label_116:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	rbp, rbp
	mov	ebx, 1
	jmp	.label_148
.label_526:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x4048]
.label_527:
	nop	
	mov	rax, qword ptr [rsp + 0x4080]
	mov	rcx, qword ptr [rsp + 0x4030]
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rbp, rbp
	cmova	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x4080], rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x4030], rax
	jmp	.label_97
.label_128:
	test	al, al
	je	.label_108
.label_148:
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_138
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_153
	mov	edi, dword ptr [rsp + 0xc]
	lea	rsi, [rsi]
	call	wcwidth
	test	eax, eax
	mov	rbp, rbp
	mov	ecx, 0
	nop	
	cmovs	eax, ecx
	cdqe	
	add	qword ptr [rsp + 0x4030], rax
.label_153:
	mov	edi, dword ptr [rsp + 0xc]
	call	iswspace
	test	eax, eax
	jne	.label_97
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + posixly_correct]],  0
	jne	.label_87
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xc]
	cmp	eax, 0x202e
	jg	.label_139
	cmp	eax, 0xa0
	lea	rsi, [rsi]
	je	.label_97
	mov	rsp, rsp
	cmp	eax, 0x2007
	lea	rsi, [rsi]
	je	.label_97
	lea	rdi, [rdi]
	jmp	.label_87
.label_108:
	movzx	ebp, byte ptr [r15]
	lea	rdi, [rdi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movzx	eax, word ptr [rax + rbp*2]
	mov	rbp, rbp
	test	ah, 0x40
	nop	
	je	.label_138
	inc	qword ptr [rsp + 0x4030]
	mov	rbp, rbp
	test	ah, 0x20
	lea	rsi, [rsi]
	jne	.label_97
	lea	rsi, [rsi]
	jmp	.label_87
.label_139:
	cmp	eax, 0x202f
	je	.label_97
	cmp	eax, 0x2060
	lea	rsi, [rsi]
	jne	.label_87
	nop	word ptr [rax + rax]
.label_97:
	lea	rdi, [rdi]
	and	r14b, 1
	movzx	eax, r14b
	add	qword ptr [rsp + 0x4058], rax
	xor	r14d, r14d
.label_138:
	add	r15, rbx
	sub	r13, rbx
	inc	qword ptr [rsp + 0x4060]
.label_106:
	lea	rdi, [rdi]
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_109
	jmp	.label_119
	nop	dword ptr [rax + rax]
.label_126:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x4050], rbp
	mov	rsp, rsp
	mov	r12b, 1
	mov	rbp, rbp
	test	r13, r13
	mov	ebx, 0
	mov	rbp, rbp
	je	.label_100
	mov	rsp, rsp
	jmp	.label_133
.label_112:
	mov	rsp, rsp
	mov	eax, dword ptr [r12]
	test	eax, eax
	jle	.label_136
	lea	rdx, [r12 + 8]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rsp + 8]
	call	__fxstat
	mov	dword ptr [r12], eax
.label_136:
	nop	
	xor	r15d, r15d
	test	eax, eax
	mov	rbp, rbp
	jne	.label_107
	mov	eax, 0x2000
	or	eax, dword ptr [r12 + 0x20]
	mov	rsp, rsp
	xor	r15d, r15d
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_107
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x38]
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_107
	test	r14, r14
	jns	.label_89
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	lseek
	mov	rsp, rsp
	mov	r14, rax
.label_89:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	qword ptr [word ptr [rip + page_size]]
	test	rdx, rdx
	je	.label_101
	mov	rbp, rbp
	mov	r9, rbp
	xor	r12d, r12d
	mov	rbp, rbp
	sub	rbx, r14
	mov	rbp, rbp
	cmovb	rbx, r12
	mov	bpl, 1
	mov	r15, rbx
	xor	r14d, r14d
	mov	rsp, rsp
	mov	eax, r13d
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_93
.label_120:
	mov	dword ptr [rsp + 0x402c], r13d
	mov	qword ptr [rsp + 0x4070], rbp
	mov	rbp, rbp
	xor	r12d, r12d
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_122
	nop	dword ptr [rax]
.label_102:
	lea	rdi, [rdi]
	add	r12, r13
	mov	rcx, rbx
	sub	rcx, r14
	lea	rdi, [rdi]
	mov	rax, r13
	movabs	rdx, 0x8888888888888889
	mov	rsp, rsp
	mul	rdx
	shr	rdx, 3
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	setbe	r15b
	mov	rsp, rsp
	mov	r14, rbx
.label_122:
	mov	edx, 0x4000
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	call	safe_read
	mov	r13, rax
	mov	rsp, rsp
	mov	bpl, 1
	test	r13, r13
	nop	
	je	.label_150
	mov	rsp, rsp
	cmp	r13, -1
	nop	
	je	.label_154
	lea	rbp, [rsp + r13 + 0x10]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_95
	mov	esi, 0xa
	lea	rdi, [rsp + 0x10]
	mov	rdx, r13
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	nop	
	mov	rbx, r14
	je	.label_102
	nop	word ptr cs:[rax + rax]
.label_118:
	nop	
	inc	rax
	inc	rbx
	mov	rsp, rsp
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	esi, 0xa
	nop	
	mov	rdi, rax
	nop	
	call	memchr
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_118
	jmp	.label_102
.label_95:
	cmp	r13, 3
	mov	rsp, rsp
	lea	rcx, [rsp + 0x10]
	mov	rbx, r14
	jbe	.label_124
	mov	rax, r13
	and	rax, 0xfffffffffffffffc
	mov	rsp, rsp
	lea	rcx, [rsp + 0x10]
	mov	rbx, r14
	je	.label_124
	mov	rbp, rbp
	movq	xmm2, r14
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	lea	rcx, [r13 - 4]
	mov	rbp, rbp
	mov	rdx, rcx
	shr	rdx, 2
	mov	rbp, rbp
	bt	rcx, 2
	mov	rsp, rsp
	jb	.label_140
	lea	rdi, [rdi]
	movd	xmm1, dword ptr [rsp + 0x10]
	pxor	xmm5, xmm5
	lea	rdi, [rdi]
	punpcklbw	xmm1, xmm5
	mov	rbp, rbp
	punpcklwd	xmm1, xmm5
	mov	rsp, rsp
	punpckldq	xmm1, xmm5
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rsp + 0x12]
	lea	rsi, [rsi]
	movd	xmm0, ecx
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	mov	rbp, rbp
	punpckldq	xmm0, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_114]]
	pcmpeqd	xmm1, xmm6
	pshufd	xmm3, xmm1, 0xb1
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_115]]
	pand	xmm1, xmm7
	pand	xmm1, xmm3
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	mov	rsp, rsp
	pand	xmm0, xmm7
	lea	rdi, [rdi]
	pand	xmm0, xmm3
	paddq	xmm1, xmm2
	mov	ecx, 4
	movdqa	xmm2, xmm1
	jmp	.label_146
.label_140:
	lea	rdi, [rdi]
	xor	ecx, ecx
	pxor	xmm5, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_114]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_115]]
.label_146:
	test	rdx, rdx
	je	.label_123
	mov	rdx, rax
	mov	rbp, rbp
	sub	rdx, rcx
	lea	rsi, [rsp + 0x16]
	add	rcx, rsi
	nop	
	movdqa	xmm1, xmm2
	nop	dword ptr [rax]
.label_98:
	nop	
	movd	xmm2, dword ptr [rcx - 6]
	punpcklbw	xmm2, xmm5
	mov	rbp, rbp
	punpcklwd	xmm2, xmm5
	nop	
	punpckldq	xmm2, xmm5
	movzx	esi, word ptr [rcx - 4]
	movd	xmm3, esi
	punpcklbw	xmm3, xmm5
	mov	rsp, rsp
	punpcklwd	xmm3, xmm5
	punpckldq	xmm3, xmm5
	pcmpeqd	xmm2, xmm6
	lea	rdi, [rdi]
	pshufd	xmm4, xmm2, 0xb1
	pand	xmm2, xmm7
	pand	xmm2, xmm4
	pcmpeqd	xmm3, xmm6
	mov	rbp, rbp
	pshufd	xmm4, xmm3, 0xb1
	mov	rbp, rbp
	pand	xmm3, xmm7
	mov	rsp, rsp
	pand	xmm3, xmm4
	mov	rbp, rbp
	paddq	xmm2, xmm1
	nop	
	paddq	xmm3, xmm0
	mov	rsp, rsp
	movd	xmm1, dword ptr [rcx - 2]
	lea	rdi, [rdi]
	punpcklbw	xmm1, xmm5
	mov	rbp, rbp
	punpcklwd	xmm1, xmm5
	lea	rdi, [rdi]
	punpckldq	xmm1, xmm5
	mov	rsp, rsp
	movzx	esi, word ptr [rcx]
	lea	rsi, [rsi]
	movd	xmm0, esi
	mov	rsp, rsp
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	lea	rsi, [rsi]
	pshufd	xmm4, xmm1, 0xb1
	lea	rdi, [rdi]
	pand	xmm1, xmm7
	lea	rdi, [rdi]
	pand	xmm1, xmm4
	lea	rdi, [rdi]
	pcmpeqd	xmm0, xmm6
	mov	rsp, rsp
	pshufd	xmm4, xmm0, 0xb1
	pand	xmm0, xmm7
	lea	rsi, [rsi]
	pand	xmm0, xmm4
	paddq	xmm1, xmm2
	lea	rdi, [rdi]
	paddq	xmm0, xmm3
	add	rcx, 8
	mov	rbp, rbp
	add	rdx, -8
	jne	.label_98
.label_123:
	nop	
	paddq	xmm0, xmm1
	lea	rdi, [rdi]
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	mov	rbp, rbp
	cmp	r13, rax
	je	.label_102
	mov	rsp, rsp
	lea	rcx, [rsp + rax + 0x10]
	nop	word ptr [rax + rax]
.label_124:
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx]
	inc	rcx
	cmp	eax, 0xa
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rdi, [rdi]
	add	rbx, rax
	mov	rsp, rsp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	jne	.label_124
	jmp	.label_102
.label_129:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x4030], rax
	mov	dword ptr [rsp + 0x402c], r13d
	mov	qword ptr [rsp + 0x4070], rbp
	lea	r14, [rsp + 0x10]
	mov	rsp, rsp
	mov	r15d, 0
	xor	r12d, r12d
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x4048], rax
	xor	ebx, ebx
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_149
	nop	word ptr cs:[rax + rax]
.label_91:
	mov	qword ptr [rsp + 0x4030], rdx
	mov	r15, qword ptr [rsp + 0x4078]
	lea	rsi, [rsi]
	add	r15, qword ptr [rsp + 0x4060]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x10]
.label_149:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	call	safe_read
	mov	rbp, rbp
	cmp	rax, -1
	je	.label_121
	mov	bpl, 1
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_125
	mov	qword ptr [rsp + 0x4078], r15
	mov	r15, rax
	mov	qword ptr [rsp + 0x4060], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x4030]
	nop	
	jmp	.label_127
.label_113:
	mov	qword ptr [rsp + 0x4030], rdx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	lea	rdi, [rdi]
	jne	.label_142
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x4030]
	jmp	.label_117
.label_142:
	mov	rsp, rsp
	inc	r13
	test	ah, 0x20
	jne	.label_90
	mov	edi, ebp
	call	btowc
	cmp	byte ptr [byte ptr [rip + posixly_correct]],  0
	je	.label_152
	mov	bl, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x4030]
	lea	rsi, [rsi]
	jmp	.label_117
.label_90:
	nop	
	mov	rdx, qword ptr [rsp + 0x4030]
	jmp	.label_110
.label_152:
	cmp	eax, 0x202e
	jg	.label_96
	cmp	eax, 0xa0
	lea	rsi, [rsi]
	je	.label_137
	nop	
	cmp	eax, 0x2007
	jmp	.label_94
.label_96:
	nop	
	cmp	eax, 0x202f
	lea	rsi, [rsi]
	je	.label_92
	cmp	eax, 0x2060
.label_94:
	mov	rdx, qword ptr [rsp + 0x4030]
	mov	rsp, rsp
	je	.label_110
	lea	rdi, [rdi]
	mov	bl, 1
	jmp	.label_117
.label_137:
	mov	rdx, qword ptr [rsp + 0x4030]
	lea	rsi, [rsi]
	jmp	.label_110
.label_92:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x4030]
	mov	rbp, rbp
	jmp	.label_110
	nop	dword ptr [rax + rax]
.label_127:
	movsx	eax, byte ptr [r14]
	nop	
	movzx	ebp, al
	lea	ecx, [rax - 9]
	mov	rbp, rbp
	cmp	ecx, 4
	ja	.label_88
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_132]]
.label_522:
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 7
	lea	rdi, [rdi]
	neg	rax
	mov	rsp, rsp
	lea	r13, [r13 + rax + 8]
	lea	rsi, [rsi]
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_88:
	cmp	eax, 0x20
	mov	rsp, rsp
	jne	.label_113
	mov	rsp, rsp
	inc	r13
	mov	rbp, rbp
	jmp	.label_110
.label_523:
	inc	qword ptr [rsp + 0x4048]
.label_524:
	cmp	r13, rdx
	mov	rbp, rbp
	cmova	rdx, r13
	mov	rsp, rsp
	xor	r13d, r13d
.label_110:
	mov	rsp, rsp
	and	bl, 1
	movzx	eax, bl
	add	r12, rax
	xor	ebx, ebx
.label_117:
	inc	r14
	dec	r15
	jne	.label_127
	mov	rbp, rbp
	jmp	.label_91
.label_150:
	xor	r13d, r13d
	mov	r9, qword ptr [rsp + 0x4070]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x402c]
	nop	
	mov	r15, r12
	mov	rbp, rbp
	mov	rbx, r14
	lea	rdi, [rdi]
	xor	r14d, r14d
	xor	r12d, r12d
	jmp	.label_93
.label_154:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x4020]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	call	error
	xor	r13d, r13d
	xor	ebp, ebp
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x4070]
	mov	eax, dword ptr [rsp + 0x402c]
	mov	r15, r12
	xor	r12d, r12d
	mov	rbx, r14
	nop	
	xor	r14d, r14d
	jmp	.label_93
.label_131:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x4020]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	call	error
.label_135:
	mov	r12, qword ptr [rsp + 0x4080]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x4030]
	cmp	rax, r12
	cmova	r12, rax
	and	r14b, 1
	mov	rbp, rbp
	movzx	r13d, r14b
	add	r13, qword ptr [rsp + 0x4058]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x4070]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x402c]
	mov	r15, qword ptr [rsp + 0x4078]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x4048]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x4060]
	lea	rsi, [rsi]
	jmp	.label_93
.label_121:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x4020]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	call	error
.label_125:
	nop	
	mov	rax, qword ptr [rsp + 0x4030]
	mov	rsp, rsp
	cmp	r13, rax
	lea	rdi, [rdi]
	cmova	rax, r13
	and	bl, 1
	movzx	r13d, bl
	add	r13, r12
	xor	r14d, r14d
	mov	rsp, rsp
	mov	r12, rax
	nop	
	mov	r9, qword ptr [rsp + 0x4070]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x402c]
	mov	rbx, qword ptr [rsp + 0x4048]
	mov	rbp, rbp
	jmp	.label_93
.label_101:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x40]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	movabs	rdx, 0x2000000000000001
	cmp	rax, rdx
	mov	rbp, rbp
	mov	edx, 0x201
	cmovae	rcx, rdx
	test	rax, rax
	mov	rbp, rbp
	cmovle	rcx, rdx
	xor	edx, edx
	mov	rax, rbx
	mov	rbp, rbp
	div	rcx
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	r14, r14
	js	.label_107
	sub	rbx, rdx
	mov	rbp, rbp
	mov	r12, rbx
	sub	r12, r14
	jle	.label_107
	mov	edx, 1
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, rbx
	call	lseek
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	test	rax, rax
	mov	rbp, rbp
	cmovns	r15, r12
.label_107:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x4070], rbp
	mov	rsp, rsp
	xor	r12d, r12d
	nop	
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 2
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 8]
	lea	rdi, [rdi]
	call	fdadvise
	lea	rbx, [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_147:
	lea	rdi, [rdi]
	add	r15, rax
.label_134:
	nop	
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, rbx
	call	safe_read
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_145
	cmp	rax, -1
	jne	.label_147
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x4020]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r14d, r14d
	mov	rbp, rbp
	mov	eax, r13d
	mov	rbp, rbp
	xor	r13d, r13d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	r9, qword ptr [rsp + 0x4070]
	jmp	.label_93
.label_145:
	xor	r14d, r14d
	mov	eax, r13d
	nop	
	xor	r13d, r13d
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x4070]
.label_93:
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + print_chars]]
	mov	rbp, rbp
	and	ecx, 1
	lea	rsi, [rsi]
	cmp	eax, ecx
	cmovb	r14, r15
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, r14
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, r12
	call	write_counts
	add	qword ptr [word ptr [rip + total_lines]],  rbx
	nop	
	add	qword ptr [word ptr [rip + total_words]],  r13
	add	qword ptr [word ptr [rip + total_chars]],  r14
	add	qword ptr [word ptr [rip + total_bytes]],  r15
	lea	rsi, [rsi]
	cmp	r12,  qword ptr [word ptr [rip + max_line_length]]
	lea	rsi, [rsi]
	jbe	.label_130
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + max_line_length]],  r12
.label_130:
	mov	al, bpl
	lea	rsi, [rsi]
	add	rsp, 0x4088
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_156
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rbp, rbp
	mov	rcx, rax
.label_156:
	mov	rax, rcx
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e30

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, 0x30
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_157
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_157:
	nop	
	mov	rax, rcx
	nop	
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_158
	lea	rsi, [rsi]
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	mov	rsp, rsp
	call	getdelim
	test	rax, rax
	js	.label_159
	mov	dword ptr [r14], 1
	mov	rsp, rsp
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_160
.label_158:
	mov	rax, qword ptr [rbx + 0x28]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_161
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	jmp	.label_160
.label_159:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	feof
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	eax, [rax + rax + 2]
	mov	dword ptr [r14], eax
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_160
.label_161:
	mov	rbp, rbp
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	xor	eax, eax
.label_160:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f40

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	mov	rbp, rbp
	cmp	qword ptr [rdi], 0
	je	.label_162
	nop	
	mov	rax, qword ptr [rdi + 8]
	nop	
	ret	
.label_162:
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	sar	rax, 3
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f70

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	mov	rsp, rsp
	push	rbx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	cmp	qword ptr [rbx], 0
	lea	rdi, [rdi]
	je	.label_163
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_163:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403fb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_167
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_164
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_164
.label_167:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_165
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_164:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_166
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_165:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_166:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_168
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_168:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404100

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_169:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_169
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404160
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_170
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_170:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404190
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_171
	mov	rbp, rbp
	lea	r15, [r14 + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_171:
	mov	qword ptr [r14], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x10], al
	mov	rsp, rsp
	je	.label_172
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_172:
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404210
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404240
	.globl physmem_total
	.type physmem_total, @function
physmem_total:

	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	nop	
	or	rcx, rbx
	js	.label_178
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_176
.label_178:
	mov	rbp, rbp
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_175
	nop	
	movsd	xmm0,  qword ptr [word ptr [rip + label_177]]
	jmp	.label_176
.label_175:
	mov	rsp, rsp
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_173]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_174]]
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	mov	rsp, rsp
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	nop	
	xorps	xmm0, xmm0
	nop	
	cvtsi2sd	xmm0, rax
	mov	rbp, rbp
	mulsd	xmm0, xmm1
.label_176:
	nop	
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042e0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	mov	rbp, rbp
	js	.label_179
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	nop	
	jmp	.label_180
.label_179:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_182
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	mov	rsp, rsp
	or	rcx, rbx
	js	.label_181
	mov	rsp, rsp
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mov	rbp, rbp
	jmp	.label_185
.label_182:
	lea	rsi, [rsi]
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_173]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_174]]
	subpd	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm3, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	nop	
	mulsd	xmm0, xmm1
	jmp	.label_180
.label_181:
	lea	rdi, [rsp]
	nop	
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_186
	movsd	xmm0,  qword ptr [word ptr [rip + label_177]]
	jmp	.label_184
.label_186:
	lea	rdi, [rdi]
	movq	xmm0, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_173]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_174]]
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
.label_185:
	mulsd	xmm0, xmm1
.label_184:
	mulsd	xmm0,  qword ptr [word ptr [rip + label_183]]
.label_180:
	mov	rsp, rsp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404440

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_187
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_189
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_189
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_188
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_188:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_189:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_187:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404530
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404580
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045a0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404650
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_190
	test	rdx, rdx
	nop	
	je	.label_190
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_190:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404690
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404740

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_234:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_208
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_216]]
.label_539:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_540:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_240
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_240
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_263:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_257
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_257:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_263
.label_240:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_210
.label_532:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_210
.label_535:
	lea	rsi, [rsi]
	mov	al, 1
.label_533:
	mov	rbp, rbp
	mov	r12b, 1
.label_536:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_289
	lea	rsi, [rsi]
	mov	cl, al
.label_289:
	mov	rsp, rsp
	mov	al, cl
.label_534:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_232
	test	r10, r10
	je	.label_303
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_305
.label_232:
	xor	ecx, ecx
	jmp	.label_305
.label_537:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_304
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_195
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_202
.label_538:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_210
.label_303:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_305:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_210
.label_304:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_202
.label_195:
	lea	rdi, [rdi]
	mov	eax, 1
.label_202:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_210:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_273
	nop	word ptr cs:[rax + rax]
.label_211:
	nop	
	inc	rdi
.label_273:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_290
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_227
	jmp	.label_297
	nop	dword ptr [rax + rax]
.label_290:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_302
.label_227:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_310
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_192
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_192
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_192:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_226
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_229
	nop	dword ptr [rax + rax]
.label_310:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_229
	nop	word ptr cs:[rax + rax]
.label_226:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_258
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_229
	jmp	.label_228
.label_258:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_229:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_236
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_280]]
.label_552:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_261
	mov	rbp, rbp
	jmp	.label_286
.label_556:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_287
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_292
	nop	
	cmp	rbp, 1
	je	.label_286
	xor	r13d, r13d
	jmp	.label_224
.label_545:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_306
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_228
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_313
	mov	al, r14b
	and	al, 1
	jne	.label_194
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_201
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_201:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_212
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_212:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_220
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_220:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_197
.label_546:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_206
.label_547:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_218
.label_548:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_206
.label_549:
	mov	bl, 0x66
	jmp	.label_206
.label_550:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_218
.label_553:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_246
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_250
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_255
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_255:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_191
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_191:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_277
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_246:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_224
.label_554:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_285
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_261
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_261
	mov	rbp, rbp
	jmp	.label_296
.label_555:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_300
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_307
	lea	rdi, [rdi]
	jmp	.label_311
.label_236:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_293
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_252:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_219
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_219
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_224
.label_287:
	test	rdi, rdi
	jne	.label_237
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_237
.label_286:
	mov	dl, 1
.label_551:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_244
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_224
.label_306:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_211
	jmp	.label_261
.label_300:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_218
.label_307:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_233
.label_218:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_259
.label_206:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_224
	lea	rsi, [rsi]
	jmp	.label_235
.label_293:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_269
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_269:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_249:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_301
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_309
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_315
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_200
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_225:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_217
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_214
.label_217:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_225
.label_200:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_247
	xor	r13d, r13d
.label_247:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_249
	mov	rsp, rsp
	jmp	.label_252
.label_237:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_224
.label_285:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_261
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_261
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_261
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_268
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_272
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_205
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_278
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_278:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_283
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_283:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_193
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_193:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_295
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_295:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_224
.label_261:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_224:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_196
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_204
	lea	rsi, [rsi]
	jmp	.label_209
.label_196:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_209
.label_204:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_213
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_221
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_221:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_233
	mov	rsp, rsp
	jmp	.label_235
.label_213:
	mov	bl, r15b
.label_235:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_228
	nop	
	cmp	r9d, 2
	jne	.label_242
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_242
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_288
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_288:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_256
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_256:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_238
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_238:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_242:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_265
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_265:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_262
.label_292:
	xor	r13d, r13d
	nop	
	jmp	.label_224
.label_219:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_275
	nop	dword ptr [rax + rax]
.label_270:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_275:
	test	cl, cl
	je	.label_279
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_215
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_284
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_284:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_215
	nop	dword ptr [rax]
.label_279:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_228
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_308
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_308
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_291
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_291:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_198
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_198:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_271
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_271:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_308:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_222:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_231
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_231:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_243
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_243:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_215:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_233
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_230
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_230
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_267
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_267:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_274
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_274:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_230:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_270
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_270
	nop	word ptr cs:[rax + rax]
.label_233:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_294
	mov	rsp, rsp
	and	al, 1
	jne	.label_294
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_254
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_254:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_281
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_281:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_294:
	mov	rsp, rsp
	mov	bl, r15b
.label_262:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_239:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_211
.label_313:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_197
.label_194:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_197:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_223:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_299
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_298
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_314
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_245
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_245:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_251
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_251:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_224
.label_299:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_224
.label_298:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_224
.label_314:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_224
.label_309:
	xor	r13d, r13d
.label_301:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_252
.label_315:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_276
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_266:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_282
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_266
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_252
.label_276:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_252
.label_282:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_252
.label_268:
	xor	r13d, r13d
	jmp	.label_224
.label_272:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_224
.label_297:
	nop	
	mov	r13, rdi
.label_302:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_312
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_203
.label_312:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_207
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_207
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_248
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_207
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_234
.label_207:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_241
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_241
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_241
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_260:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_253
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_253:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_260
.label_241:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_264
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_264
.label_244:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_228
.label_214:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_228
.label_203:
	nop	
	mov	rbp, r13
	jmp	.label_228
.label_259:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_228:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_199:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_264:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_248:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_199
.label_250:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_228
.label_311:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_228
.label_296:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_228
.label_205:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_228
.label_208:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_316
	mov	qword ptr [rax], rbx
.label_316:
	mov	rax, r14
	mov	rsp, rsp
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
	#Procedure 0x405f50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_317
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_321
.label_317:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_320
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_318]], OFFSET FLAT:slot0
.label_320:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_319
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_319:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406010
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406020

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_325
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_327
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_323
.label_327:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_328
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_324
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_324:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_323:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_322
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_326
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_326:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_322:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_325:
	lea	rdi, [rdi]
	call	abort
.label_328:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406290
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062a0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062d0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406300
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_329
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_329:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406390
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_330
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_330:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406430

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_331
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_331:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_332
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_332:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406530
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_333]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4065d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406670

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_333]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406750

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_336
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_336:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406830
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_333]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_337
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_337
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_337:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4068c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_338
	test	rdx, rdx
	je	.label_338
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_338:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406950
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_333]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_339
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_339
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_339:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_333]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_340
	test	rsi, rsi
	je	.label_340
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_340:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a90
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406aa0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ac0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ae0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b10

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_343
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_341
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_342
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_342
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_342
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_342
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_342
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_342
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_343
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_343
.label_341:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_342
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_342
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_342
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_342
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_342
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_342
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_344
.label_342:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_343:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_344:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_343
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_343
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c80

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 0x18]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	lea	rsi, [rsi]
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	nop	
	jmp	_obstack_begin
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d00

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	lea	rdi, [rdi]
	call	_obstack_free
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	lea	rsi, [rsi]
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	nop	
	mov	rdi, rbx
	pop	rbx
	mov	rbp, rbp
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d40

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	call	fgetc
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, -1
	je	.label_348
	lea	rdi, [rdi]
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_346:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x38], rax
	lea	rdi, [rdi]
	jne	.label_345
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	_obstack_newchunk
	nop	
	mov	rax, qword ptr [r12]
.label_345:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], bpl
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_351
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	save_token
.label_351:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fgetc
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_346
	nop	
	jmp	.label_350
.label_348:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_350:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	je	.label_352
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_347
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_347:
	nop	
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	mov	rsp, rsp
	call	save_token
.label_352:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_355
	lea	rdi, [rbx + 0x70]
	mov	rbp, rbp
	mov	esi, 8
	nop	
	call	_obstack_newchunk
	nop	
	mov	rax, qword ptr [rbx + 0x88]
.label_355:
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x80]
	lea	rdi, [rdi]
	cmp	rdx, rax
	mov	rbp, rbp
	jne	.label_353
	or	byte ptr [rbx + 0xc0], 2
.label_353:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	lea	rsi, [rsi]
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rsi
	nop	
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	mov	rbp, rbp
	jbe	.label_349
	mov	qword ptr [rbx + 0x88], rbp
	mov	rbp, rbp
	mov	rcx, rbp
.label_349:
	mov	qword ptr [rbx + 0x80], rcx
	nop	
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0xe0]
	lea	rsi, [rsi]
	cmp	rdx, rax
	jne	.label_354
	or	byte ptr [rbx + 0x118], 2
.label_354:
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rsp, rsp
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	nop	
	mov	rdi, rcx
	nop	
	sub	rdi, rsi
	mov	rdx, rbp
	lea	rdi, [rdi]
	sub	rdx, rsi
	cmp	rdi, rdx
	lea	rsi, [rsi]
	jbe	.label_356
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_356:
	mov	qword ptr [rbx + 0xd8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x10], rax
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	ferror
	test	eax, eax
	mov	rbp, rbp
	sete	al
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fb0

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	r14, r15
	lea	rsi, [rsi]
	jne	.label_357
	or	byte ptr [rbx + 0x68], 2
.label_357:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rsi, [rsi]
	lea	rcx, [rax + r14]
	not	rax
	lea	rsi, [rsi]
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rdx
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jbe	.label_358
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	rax, rcx
.label_358:
	mov	rsp, rsp
	dec	r14
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	nop	
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	lea	rdi, [rdi]
	cmp	rcx, 8
	nop	
	jae	.label_359
	nop	
	lea	rdi, [rbx + 0x70]
	lea	rsi, [rsi]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_359:
	sub	r14, r15
	mov	rsp, rsp
	mov	qword ptr [rax], r15
	mov	rbp, rbp
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	mov	rbp, rbp
	cmp	rcx, 8
	jae	.label_360
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0xc8]
	lea	rdi, [rdi]
	mov	esi, 8
	lea	rsi, [rsi]
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_360:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4070d0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	nop	word ptr [rax + rax]
.label_362:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jns	.label_361
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_362
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_361
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_362
.label_361:
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407160

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_368
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_370
.label_368:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_370:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_372
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_363]]
.label_492:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_372:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_365
.label_493:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_494:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_495:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_367
.label_496:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_364
.label_497:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_366
.label_498:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_366:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_364:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_367:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_371
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_365:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_369
.label_499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_369:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_371:
	mov	rbp, rbp
	call	__fprintf_chk
.label_491:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407550
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_373:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_373
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407580
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_377:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_374
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_376
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_376:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_375
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_377
.label_375:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407610

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_378
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_378:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_380:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_379
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_381
	nop	dword ptr [rax + rax]
.label_379:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_381:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_382
	inc	r9
	cmp	r9, 0xa
	jb	.label_380
.label_382:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407750
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x4077e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_383
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_384
	test	rax, rax
	je	.label_383
.label_384:
	nop	
	pop	rbx
	ret	
.label_383:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407830

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_385
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_386
.label_385:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_386:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407860
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_388
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_387
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_387
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_387:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_389
	test	rax, rax
	je	.label_388
.label_389:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_388:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_390
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_390
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_390:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_391
	test	rax, rax
	nop	
	je	.label_392
.label_391:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_392:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407930
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_397
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_393
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_399
.label_397:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_396
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_396:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_398
.label_399:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_395
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_395
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_395:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	mov	rbp, rbp
	je	.label_393
.label_394:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_393:
	call	xalloc_die
.label_398:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_400
	test	rax, rax
	mov	rbp, rbp
	je	.label_401
.label_400:
	pop	rbx
	ret	
.label_401:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407a30
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_405
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_406
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_404
	call	free
	xor	eax, eax
	jmp	.label_402
.label_405:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_403
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_404:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_402
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_403
.label_402:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_403:
	mov	rbp, rbp
	call	xalloc_die
.label_406:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ac0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_407
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_408
.label_407:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_408:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_409
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_409
	pop	rcx
	ret	
.label_409:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b50

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_411
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_410
.label_411:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_410:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407bb0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_412
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_413
.label_412:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_413:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407c10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c60

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_414
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_415
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_415
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_414:
	mov	ecx, 1
.label_415:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_416
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_418
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_416
.label_418:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_416
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_417
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_417:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_416:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x407d80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_419
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_419
	test	byte ptr [rbx + 1], 1
	je	.label_419
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_419:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_420
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_420
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_421
.label_420:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_421:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_422
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_422:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e70

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_423
	nop	
	cmp	r15, -2
	jb	.label_423
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_423
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_423:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f00

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	nop	
	push	rbx
	mov	r14, rdi
	nop	
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	mov	rsp, rsp
	and	byte ptr [r14 + 0x50], 0xfe
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovne	rbx, rdx
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	rsi, [rsi]
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], r15
	nop	
	call	rcx
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_424
	lea	rcx, [rax + r15 + 0x10]
	mov	rsp, rsp
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x20], rcx
	nop	
	mov	qword ptr [rax + 8], 0
	nop	
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_424:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fb0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14d, 0x10
	mov	rbp, rbp
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_425
	mov	rsp, rsp
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	nop	
	and	r14, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	ret	
.label_425:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408070

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	nop	
	shr	rbx, 3
	lea	rsi, [rsi]
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	add	rsi, r14
	mov	rsp, rsp
	jb	.label_427
	test	al, al
	nop	
	jne	.label_427
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	mov	rsp, rsp
	jne	.label_430
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_429
.label_430:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	call	qword ptr [r12 + 0x38]
.label_429:
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	je	.label_427
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	mov	rsp, rsp
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	lea	rbx, [r13 + rbp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r15
	lea	rdi, [rdi]
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	rdx, r14
	nop	
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_426
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	lea	rax, [rax + rbp + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	jne	.label_426
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	mov	rsp, rsp
	jne	.label_428
	nop	
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	nop	
	jmp	.label_426
.label_428:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_426:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rsp, rsp
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	mov	rsp, rsp
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_427:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408210

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_431
	nop	word ptr cs:[rax + rax]
.label_434:
	mov	rcx, qword ptr [rcx + 8]
.label_431:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_432
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jae	.label_434
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_434
	mov	rbp, rbp
	jmp	.label_433
.label_432:
	xor	eax, eax
.label_433:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408250

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	rsi, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_437
	nop	
.label_436:
	cmp	rsi, r14
	mov	rbp, rbp
	jae	.label_435
	cmp	qword ptr [rsi], r14
	jae	.label_439
.label_435:
	mov	rbx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x50], 1
	mov	rsp, rsp
	jne	.label_441
	mov	rdi, rsi
	nop	
	call	qword ptr [r15 + 0x40]
	jmp	.label_438
	nop	dword ptr [rax + rax]
.label_441:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_438:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	jne	.label_436
.label_437:
	lea	rsi, [rsi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_440
	call	abort
.label_439:
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_440:
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408300

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	nop	
	xor	eax, eax
	jmp	.label_442
	nop	dword ptr [rax]
.label_443:
	sub	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_442:
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_443
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408380

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_444
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_445
	test	cl, cl
	mov	rsp, rsp
	jne	.label_445
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_445
.label_444:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_445
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_445:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408410

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_447
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_446
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_448
.label_446:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_447
.label_448:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_447:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408460

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_449
	nop	
	mov	rax, rcx
.label_449:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x4084a0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]