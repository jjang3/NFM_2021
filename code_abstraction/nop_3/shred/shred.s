	.section	.text
	.align	16
	#Procedure 0x401db0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
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
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 3
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
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
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
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
	je	.label_8
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:.str.44
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r12, rsi
	mov	r13d, edi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.16
	mov	esi, OFFSET FLAT:.str.17_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.16
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_11]]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	xor	r14d, r14d
	movabs	r15, 0x7fffffffffffffff
	mov	dword ptr [rsp + 0x54], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	ebx, ebx
	jmp	.label_12
.label_657:
	mov	byte ptr [rsp + 0xbe], 1
	mov	rbx, rbp
	nop	
.label_12:
	mov	rbp, rbx
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_27
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xd
	ja	.label_29
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_31]]
.label_653:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.22
	mov	rdi, rbx
	mov	rcx, r15
	mov	r9, rax
	call	xnumtoumax
	mov	qword ptr [rsp + 0xb0], rax
	mov	rbx, rbp
	jmp	.label_12
.label_29:
	cmp	eax, 0x6e
	je	.label_46
	cmp	eax, 0x66
	jne	.label_47
	mov	byte ptr [rsp + 0xa0], 1
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	rbx, rbp
	jmp	.label_12
.label_654:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_53
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.21
	mov	edx, OFFSET FLAT:remove_args
	mov	ecx, OFFSET FLAT:remove_methods
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + remove_methods]]
	mov	dword ptr [rsp + 0x54], eax
	mov	dword ptr [rsp + 0xb8], eax
	mov	rbx, rbp
	jmp	.label_12
.label_655:
	mov	byte ptr [rsp + 0xbc], 1
	mov	r14b, 1
	mov	rbx, rbp
	jmp	.label_12
.label_656:
	mov	byte ptr [rsp + 0xbd], 1
	mov	rbx, rbp
	jmp	.label_12
.label_658:
	test	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	je	.label_12
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_12
	jmp	.label_35
.label_46:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x3fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0xa8], rax
	mov	rbx, rbp
	jmp	.label_12
.label_53:
	mov	dword ptr [rsp + 0xb8], 3
	mov	dword ptr [rsp + 0x54], 3
	mov	rbx, rbp
	jmp	.label_12
.label_27:
	cmp	eax, -1
	jne	.label_52
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	cmp	ebx, r13d
	je	.label_54
	mov	rsi, -1
	mov	rdi, rbp
	call	randint_all_new
	mov	qword ptr [word ptr [rip + randint_source]],  rax
	test	rax, rax
	je	.label_9
	sub	r13d, ebx
	mov	edi, OFFSET FLAT:clear_random_data
	call	atexit
	xor	eax, eax
	test	r13d, r13d
	jle	.label_18
	lea	rax, [r12 + rbx*8]
	mov	qword ptr [rsp + 0x80], rax
	movsxd	rax, r13d
	mov	qword ptr [rsp + 0x78], rax
	mov	bpl, 1
	mov	qword ptr [rsp + 0x10], r14
	mov	al, r14b
	mov	dword ptr [rsp + 0x44], eax
	mov	qword ptr [rsp + 0x68], r14
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_32:
	mov	r12b, bpl
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rdx, qword ptr [rbx + r15*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	mov	rdi, qword ptr [rbx + r15*8]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_40
	cmp	byte ptr [rdi + 1], 0
	je	.label_41
.label_40:
	mov	qword ptr [rsp + 0x98], r15
	mov	r13b, r12b
	mov	r15,  qword ptr [word ptr [rip + randint_source]]
	mov	esi, 0x101
	xor	eax, eax
	mov	qword ptr [rsp + 0x88], rdi
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_48
	call	__errno_location
	mov	r12, rax
	cmp	dword ptr [r12], 0xd
	jne	.label_16
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_16
	mov	esi, 0x80
	mov	rdi, qword ptr [rsp + 0x88]
	call	chmod
	test	eax, eax
	jne	.label_16
	mov	esi, 0x101
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x88]
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_16
	nop	dword ptr [rax]
.label_48:
	mov	edi, ebp
	mov	rbx, r14
	mov	rsi, rbx
	mov	rdx, r15
	lea	rcx, [rsp + 0xa0]
	call	do_wipefd
	mov	r14b, al
	mov	edi, ebp
	call	close
	test	eax, eax
	mov	r12b, r13b
	je	.label_25
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	r15, qword ptr [rsp + 0x98]
	jmp	.label_20
	nop	word ptr [rax + rax]
.label_16:
	mov	ebx, dword ptr [r12]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbx, r14
	mov	rcx, rbx
	call	error
	mov	r12b, r13b
	mov	r15, qword ptr [rsp + 0x98]
	jmp	.label_45
	nop	
.label_25:
	mov	qword ptr [rsp + 0x70], rbx
	xor	ebp, ebp
	test	r14b, r14b
	mov	r15, qword ptr [rsp + 0x98]
	je	.label_50
	cmp	dword ptr [rsp + 0x54], 0
	je	.label_28
	mov	byte ptr [rsp + 0x2f], r12b
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rdi, rbp
	call	xstrdup
	mov	rbx, rax
	mov	qword ptr [rsp + 0x90], rbx
	mov	rdi, rbx
	call	last_component
	mov	r12, rax
	mov	rdi, rbx
	call	dir_name
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rsp + 0x60], rax
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	eax, ecx
	mov	dword ptr [rsp + 0x54], eax
	cmp	eax, 3
	jne	.label_39
	mov	qword ptr [rsp + 0x18], rcx
	mov	esi, 0x10900
	xor	eax, eax
	mov	rdi, rbx
	call	open_safer
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x68]
	jmp	.label_34
.label_41:
	mov	rbp,  qword ptr [word ptr [rip + randint_source]]
	mov	edi, 1
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	test	eax, eax
	js	.label_43
	test	ah, 4
	mov	rbx, r14
	jne	.label_44
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, rbp
	lea	rcx, [rsp + 0xa0]
	call	do_wipefd
	mov	bpl, al
	jmp	.label_45
.label_50:
	mov	rbx, qword ptr [rsp + 0x70]
	jmp	.label_20
.label_43:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbx, r14
	jmp	.label_56
.label_44:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
.label_56:
	mov	rcx, rbx
	call	error
	jmp	.label_45
.label_28:
	mov	dword ptr [rsp + 0x54], 0
	mov	bpl, r14b
	mov	rbx, qword ptr [rsp + 0x70]
	jmp	.label_20
.label_39:
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rcx
	shr	rax, 0x20
	mov	r14d, 0xffffffff
.label_34:
	test	al, al
	je	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	call	error
.label_26:
	mov	dword ptr [rsp + 0x68], r14d
	cmp	dword ptr [rsp + 0x54], 1
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	jne	.label_36
	mov	qword ptr [rsp + 0x20], rbx
	jmp	.label_14
.label_36:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r12
	call	base_len
	mov	r13, rax
	test	r13, r13
	je	.label_14
	mov	rax, r12
	sub	rax, qword ptr [rsp + 0x90]
	add	rax, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_23
.label_21:
	mov	rbp, r14
	jmp	.label_17
	nop	word ptr cs:[rax + rax]
.label_23:
	mov	esi, 0x30
	mov	rdi, r12
	mov	rdx, r13
	call	memset
	mov	byte ptr [r12 + r13], 0
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	renameatu
	test	eax, eax
	je	.label_38
	call	__errno_location
	mov	rbx, rax
.label_42:
	mov	r14, rbp
	cmp	dword ptr [rbx], 0x11
	mov	rbp, r13
	jne	.label_21
.label_30:
	test	rbp, rbp
	je	.label_22
	movsx	esi, byte ptr [r12 + rbp - 1]
	mov	edi, OFFSET FLAT:nameset
	mov	edx, 0x41
	call	memchr
	test	rax, rax
	je	.label_51
	lea	rcx, [rbp - 1]
	mov	al, byte ptr [rax + 1]
	test	al, al
	mov	dl, 0x30
	je	.label_13
	mov	dl, al
.label_13:
	mov	byte ptr [r12 + rbp - 1], dl
	mov	rbp, rcx
	je	.label_30
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rbp, r14
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	renameatu
	test	eax, eax
	jne	.label_42
	nop	word ptr [rax + rax]
.label_38:
	mov	edi, dword ptr [rsp + 0x68]
	test	edi, edi
	js	.label_10
	mov	rsi, qword ptr [rsp + 0x60]
	call	dosync
	test	eax, eax
	je	.label_10
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
.label_10:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	je	.label_33
	mov	rax, qword ptr [rsp + 0x58]
	test	al, 1
	mov	rbx, rbp
	cmovne	rbx, qword ptr [rsp + 0x70]
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x90]
	call	error
.label_33:
	lea	rdx, [r13 + 1]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r12
	call	memcpy
	jmp	.label_17
	nop	dword ptr [rax]
.label_22:
	mov	rbp, r14
.label_17:
	dec	r13
	jne	.label_23
.label_14:
	mov	rdi, rbp
	call	unlink
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_24
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rcx, rbx
	call	error
	mov	r12b, byte ptr [rsp + 0x2f]
	mov	r13, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0x68]
	jmp	.label_37
.label_24:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, al
	mov	r12b, byte ptr [rsp + 0x2f]
	mov	rbx, qword ptr [rsp + 0x70]
	mov	ebp, dword ptr [rsp + 0x68]
	je	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	mov	r13, r14
	mov	r14, rax
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	al, r14b
	mov	r14, r13
	mov	dword ptr [rsp + 0x44], eax
	jmp	.label_49
.label_19:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x44], 0
.label_49:
	mov	r13, qword ptr [rsp + 0x18]
.label_37:
	shr	r13, 0x20
	test	ebp, ebp
	js	.label_15
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x60]
	call	dosync
	test	eax, eax
	je	.label_55
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
.label_55:
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_15
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x60]
	call	error
.label_15:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x48]
	and	al, 1
	mov	qword ptr [rsp + 0x68], r13
	mov	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_20:
	test	bpl, bpl
	setne	bpl
.label_45:
	and	bpl, r12b
	mov	rdi, rbx
	call	free
	inc	r15
	cmp	r15, qword ptr [rsp + 0x78]
	jl	.label_32
	xor	bpl, 1
	movzx	eax, bpl
.label_18:
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_51:
	mov	edi, OFFSET FLAT:.str.81
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x40c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.incname
	call	__assert_fail
.label_52:
	cmp	eax, 0xffffff7d
	je	.label_57
	cmp	eax, 0xffffff7e
	jne	.label_47
	xor	edi, edi
	call	usage
.label_57:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.25
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_47:
	mov	edi, 1
	call	usage
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
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
.label_9:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402aa0

	.globl clear_random_data
	.type clear_random_data, @function
clear_random_data:
	mov	rdi,  qword ptr [word ptr [rip + randint_source]]
	jmp	randint_all_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0

	.globl do_wipefd
	.type do_wipefd, @function
do_wipefd:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x948
	mov	r15, rcx
	mov	qword ptr [rsp + 0xf0], rdx
	mov	r14, rsi
	mov	ebx, edi
	mov	eax, dword ptr [r15 + 0x1c]
	xor	ebp, ebp
	test	al, al
	je	.label_92
	shr	eax, 0x10
	movzx	ebp, al
	add	rbp, qword ptr [r15 + 8]
.label_92:
	lea	rdx, [rsp + 0x100]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	je	.label_105
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_109
.label_105:
	mov	eax, dword ptr [rsp + 0x118]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	jne	.label_111
	mov	edi, ebx
	call	isatty
	test	eax, eax
	jne	.label_116
	mov	eax, dword ptr [rsp + 0x118]
.label_111:
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_116
	cmp	eax, 0x8000
	je	.label_59
	cmp	eax, 0x1000
	jne	.label_120
.label_116:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
.label_84:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_109:
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_88:
	mov	al, bpl
	add	rsp, 0x948
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	cmp	qword ptr [rsp + 0x130], 0
	js	.label_132
.label_120:
	mov	dword ptr [rsp + 0xe4], ebx
	movabs	rbx, 0x2000000000000001
	mov	rdi, qword ptr [r15 + 8]
	lea	rax, [rbx - 2]
	cmp	rdi, rax
	ja	.label_65
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [rsp + 0xf8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x118]
	cmp	rdi, -1
	je	.label_146
	mov	qword ptr [rsp + 0xa0], rbp
	mov	qword ptr [rsp + 0xc8], r14
	xor	r13d, r13d
	cmp	eax, 0x8000
	jne	.label_63
	mov	rax, qword ptr [rsp + 0x130]
	mov	rcx, qword ptr [rsp + 0x138]
	cmp	rcx, rbx
	mov	edx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rcx
	test	rcx, rcx
	cmovle	rsi, rdx
	cmp	rsi, rdi
	cmovg	rsi, rdi
	xor	r13d, r13d
	cmp	rax, rsi
	cmovl	r13, rax
	jmp	.label_63
.label_146:
	cmp	eax, 0x8000
	jne	.label_76
	mov	rdi, qword ptr [rsp + 0x130]
	xor	r13d, r13d
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_79
	mov	qword ptr [rsp + 0xa0], rbp
	mov	qword ptr [rsp + 0xc8], r14
	jmp	.label_63
.label_132:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	jmp	.label_84
.label_76:
	mov	qword ptr [rsp + 0xa0], rbp
	mov	qword ptr [rsp + 0xc8], r14
	xor	r13d, r13d
	xor	esi, esi
	mov	edx, 2
	mov	edi, dword ptr [rsp + 0xe4]
	call	lseek
	test	rax, rax
	mov	rdi, -1
	cmovg	rdi, rax
	jmp	.label_63
.label_79:
	mov	qword ptr [rsp + 0xa0], rbp
	mov	qword ptr [rsp + 0xc8], r14
	mov	rax, qword ptr [rsp + 0x138]
	cmp	rax, rbx
	mov	edx, 0x200
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	cmovle	rcx, rdx
	mov	rax, rdi
	cqo	
	idiv	rcx
	xor	r13d, r13d
	cmp	rdi, rcx
	cmovl	r13, rdi
	test	rdi, rdi
	cmove	r13, rdi
	test	rdx, rdx
	je	.label_63
	sub	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rdi
	cmp	rcx, rax
	cmovle	rax, rcx
	add	rdi, rax
.label_63:
	mov	qword ptr [rsp + 0x88], rdi
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x78], r15
	mov	ebp, OFFSET FLAT:patterns
	xor	r15d, r15d
	test	rax, rax
	je	.label_114
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rbx, qword ptr [rsp + 0xd8]
	jmp	.label_119
.label_145:
	lea	rdx, [r12*4]
	mov	r14, rcx
	mov	rdi, r14
	mov	rsi, rbp
	call	memcpy
	mov	rcx, r14
	lea	rbp, [rbp + r12*4]
	lea	rcx, [rcx + r12*4]
.label_119:
	mov	r14, rbx
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_133:
	add	r15, r12
	mov	r14, rax
.label_127:
	mov	rax, rbp
	nop	dword ptr [rax]
.label_81:
	mov	rbp, rax
	movsxd	r12, dword ptr [rbp]
	test	r12, r12
	mov	eax, OFFSET FLAT:patterns
	je	.label_81
	add	rbp, 4
	test	r12d, r12d
	jns	.label_138
	neg	r12
	mov	rax, r14
	sub	rax, r12
	ja	.label_133
	jmp	.label_144
.label_138:
	mov	rbx, r14
	sub	rbx, r12
	jae	.label_145
	cmp	r14, 2
	jb	.label_148
	lea	rax, [r14 + r14*2]
	cmp	rax, r12
	jb	.label_148
.label_67:
	mov	rbx, rcx
	cmp	r12, r14
	lea	r12, [r12 - 1]
	je	.label_151
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	rsi, r12
	call	randint_genmax
	cmp	rax, r14
	jae	.label_62
.label_151:
	mov	eax, dword ptr [rbp]
	mov	rcx, rbx
	mov	dword ptr [rcx], eax
	add	rcx, 4
	dec	r14
	jmp	.label_64
.label_62:
	mov	rcx, rbx
.label_64:
	add	rbp, 4
	test	r14, r14
	jne	.label_67
	jmp	.label_70
.label_144:
	add	r15, r14
.label_70:
	mov	r14, qword ptr [rsp + 0xd8]
	mov	r12, r14
	sub	r12, r15
	dec	r15
	lea	rcx, [r14 - 1]
	mov	qword ptr [rsp + 0xe8], rcx
	xor	ebx, ebx
	mov	rbp, r15
	nop	dword ptr [rax]
.label_94:
	cmp	rbp, r15
	jbe	.label_73
	mov	rsi, rbx
	not	rsi
	add	rsi, r12
	mov	rdi, qword ptr [rsp + 0xf0]
	call	randint_genmax
	add	rax, rbx
	mov	rsi, qword ptr [rsp + 0xf8]
	mov	ecx, dword ptr [rsi + rbx*4]
	mov	edx, dword ptr [rsi + rax*4]
	mov	dword ptr [rsi + rbx*4], edx
	mov	dword ptr [rsi + rax*4], ecx
	jmp	.label_83
	nop	word ptr cs:[rax + rax]
.label_73:
	add	rbp, qword ptr [rsp + 0xe8]
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	eax, dword ptr [rcx + rbx*4]
	mov	dword ptr [rcx + r12*4], eax
	inc	r12
	mov	dword ptr [rcx + rbx*4], 0xffffffff
.label_83:
	sub	rbp, r15
	inc	rbx
	cmp	rbx, r14
	jne	.label_94
.label_114:
	mov	rdi, qword ptr [rsp + 0xf0]
	call	randint_get_source
	mov	qword ptr [rsp + 0x80], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	ebp, 0xf000
	movabs	r14, 0xaaaaaaaaaaaaaaab
	mov	rcx, qword ptr [rsp + 0x78]
	mov	r12, qword ptr [rsp + 0xa0]
.label_80:
	mov	rdx, qword ptr [rsp + 0x88]
	nop	dword ptr [rax]
.label_115:
	test	r13, r13
	je	.label_107
	mov	r15, r13
	xor	edi, edi
	jmp	.label_108
	nop	dword ptr [rax]
.label_107:
	test	rdx, rdx
	mov	r15, rdx
	mov	edx, 0
	mov	rdi, r12
	je	.label_110
.label_108:
	mov	rbx, qword ptr [rcx + 8]
	movzx	eax, byte ptr [rcx + 0x1e]
	add	rax, rbx
	mov	r13d, 0
	je	.label_115
	mov	qword ptr [rsp + 0x90], rdi
	mov	qword ptr [rsp + 0x88], rdx
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rax - 1]
	mov	qword ptr [rsp + 0x38], rsi
	xor	edx, edx
.label_91:
	cmp	rdx, rbx
	jae	.label_89
	mov	rdi, rbp
	mov	rax, qword ptr [rsp + 0xf8]
	mov	r13d, dword ptr [rax + rdx*4]
	inc	rdx
	test	r13d, r13d
	jle	.label_122
	mov	qword ptr [rsp + 0x58], rdx
	mov	ecx, r13d
	and	ecx, 0xfff
	mov	eax, ecx
	shl	eax, 0xc
	or	eax, ecx
	mov	ecx, r13d
	shr	ecx, 4
	movzx	ecx, cl
	movzx	eax, ah
	movzx	edx, r13b
	mov	dword ptr [rsp + 0xac], r13d
	cmp	ecx, eax
	mov	ebp, 0x10000
	cmovne	rbp, rdi
	cmp	ecx, edx
	cmovne	rbp, rdi
	jmp	.label_126
.label_89:
	inc	rdx
	mov	qword ptr [rsp + 0x58], rdx
	mov	dword ptr [rsp + 0xac], 0
	mov	ebp, 0x10000
	jmp	.label_126
.label_122:
	mov	dword ptr [rsp + 0xac], r13d
	mov	qword ptr [rsp + 0x58], rdx
	mov	ebp, 0x10000
.label_126:
	mov	qword ptr [rsp + 0x98], rbp
	mov	rax, rbp
	or	rax, 2
	mul	r14
	shr	rdx, 1
	lea	rbx, [rdx + rdx*2]
	lea	rdi, [rsi + rbx]
	call	xmalloc
	mov	qword ptr [rsp + 0x70], rax
	mov	rcx, qword ptr [rsp + 0x68]
	lea	r13, [rax + rcx - 1]
	xor	edx, edx
	mov	rax, r13
	div	rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0xb0], r15
	test	r15, r15
	setg	al
	cmp	r15, rbp
	setb	cl
	and	cl, al
	mov	byte ptr [rsp + 0xf0], cl
	jne	.label_77
	mov	esi, 3
	xor	eax, eax
	mov	edi, dword ptr [rsp + 0xe4]
	call	rpl_fcntl
	test	eax, eax
	jle	.label_77
	mov	edx, eax
	or	edx, 0x4000
	cmp	edx, eax
	je	.label_77
	mov	esi, 4
	xor	eax, eax
	mov	edi, dword ptr [rsp + 0xe4]
	call	rpl_fcntl
.label_77:
	mov	eax, dword ptr [rsp + 0x118]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x2000
	jne	.label_85
	mov	word ptr [rsp + 0x420], 6
	mov	dword ptr [rsp + 0x424], 1
	mov	esi, 0x40086d01
	xor	eax, eax
	mov	edi, dword ptr [rsp + 0xe4]
	lea	rdx, [rsp + 0x420]
	call	ioctl
	test	eax, eax
	je	.label_97
.label_85:
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0xe4]
	call	lseek
	test	rax, rax
	jg	.label_99
	jne	.label_101
.label_97:
	mov	rbp, r13
	sub	rbp, r14
	mov	edx, dword ptr [rsp + 0xac]
	test	edx, edx
	js	.label_103
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, rbx
	mov	r14, rbx
	cmovb	r14, rax
	test	rax, rax
	cmovs	r14, rbx
	mov	ecx, edx
	and	ecx, 0xfff
	mov	eax, ecx
	shl	eax, 0xc
	or	eax, ecx
	mov	ecx, edx
	shr	ecx, 4
	mov	byte ptr [rbp], cl
	mov	byte ptr [rbp + 1], ah
	mov	byte ptr [rbp + 2], dl
	mov	r15, rbp
	mov	r13d, edx
	cmp	r14, 6
	jae	.label_106
	mov	ebx, 3
	jmp	.label_117
.label_103:
	mov	byte ptr [rsp + 0x946], 0
	mov	word ptr [rsp + 0x944], 0x6d6f
	mov	dword ptr [rsp + 0x940], 0x646e6172
	mov	r15, qword ptr [rsp + 0xc8]
	jmp	.label_118
.label_106:
	mov	rbp, r14
	shr	rbp, 1
	mov	ebx, 3
	nop	
.label_128:
	lea	rdi, [r15 + rbx]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	add	rbx, rbx
	cmp	rbx, rbp
	jbe	.label_128
.label_117:
	mov	rdx, r14
	sub	rdx, rbx
	mov	rbp, r15
	jbe	.label_130
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsi, rbp
	call	memcpy
.label_130:
	mov	eax, r13d
	mov	dword ptr [rsp + 0xac], eax
	test	ah, 0x10
	mov	r15, qword ptr [rsp + 0xc8]
	je	.label_136
	test	r14, r14
	je	.label_136
	xor	eax, eax
	nop	
.label_142:
	xor	byte ptr [rbp + rax], 0x80
	add	rax, 0x200
	cmp	rax, r14
	jb	.label_142
.label_136:
	movzx	r8d, byte ptr [rbp]
	movzx	r9d, byte ptr [rbp + 1]
	movzx	eax, byte ptr [rbp + 2]
	mov	dword ptr [rsp], eax
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	lea	rdi, [rsp + 0x940]
	call	__sprintf_chk
.label_118:
	mov	qword ptr [rsp + 0xd0], rbp
	mov	rbx, qword ptr [rsp + 0x90]
	test	rbx, rbx
	je	.label_60
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rax, [rsp + 0x940]
	mov	qword ptr [rsp], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	mov	r8, qword ptr [rsp + 0x58]
	mov	r9, rbx
	call	error
	xor	edi, edi
	call	time
	add	rax, 5
.label_60:
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0xc8], r15
	xor	eax, eax
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, OFFSET FLAT:.str_1
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r13d, r13d
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	r14, rdx
	mov	rcx, rbx
	jmp	.label_82
.label_141:
	mov	rdx, qword ptr [rsp + 0xb0]
.label_82:
	mov	ebx, dword ptr [rsp + 0xe4]
	mov	rbp, qword ptr [rsp + 0x98]
	mov	r15, r14
.label_124:
	mov	qword ptr [rsp + 0xd8], r15
	test	r15, r15
	mov	r14, rbp
	js	.label_93
	mov	rax, r15
	sub	rax, r13
	cmp	rax, rbp
	mov	r14, rbp
	jae	.label_93
	cmp	r15, r13
	mov	r14, rax
	jle	.label_112
.label_93:
	cmp	dword ptr [rsp + 0xac], 0
	jns	.label_100
	mov	rdi, qword ptr [rsp + 0x80]
	mov	qword ptr [rsp + 0xe8], r13
	mov	r13, r15
	mov	r15, rdx
	mov	rsi, qword ptr [rsp + 0xd0]
	mov	rdx, r14
	mov	r12, rcx
	call	randread
	mov	rcx, r12
	mov	rdx, r15
	mov	r15, r13
	mov	r13, qword ptr [rsp + 0xe8]
.label_100:
	test	r14, r14
	je	.label_113
	mov	qword ptr [rsp + 0xe8], r13
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rax, r15
	shr	rax, 0x3f
	mov	qword ptr [rsp + 0xc0], rax
	xor	r12d, r12d
	mov	rbp, qword ptr [rsp + 0xd0]
	nop	
.label_150:
	lea	rsi, [rbp + r12]
	mov	rdx, r14
	sub	rdx, r12
	mov	edi, ebx
	call	write
	mov	r13, rax
	test	r13, r13
	jg	.label_90
	test	r15, r15
	js	.label_123
	call	__errno_location
	mov	r15, rax
	mov	ebx, dword ptr [r15]
	jmp	.label_125
.label_123:
	test	r13, r13
	je	.label_129
	call	__errno_location
	mov	r15, rax
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0x1c
	je	.label_129
.label_125:
	test	byte ptr [rsp + 0xf0], 1
	jne	.label_134
	cmp	ebx, 0x16
	jne	.label_134
	mov	esi, 3
	xor	eax, eax
	mov	ebx, dword ptr [rsp + 0xe4]
	mov	edi, ebx
	call	rpl_fcntl
	mov	byte ptr [rsp + 0xf0], 1
	test	eax, eax
	mov	r15, qword ptr [rsp + 0xd8]
	jle	.label_143
	mov	edx, eax
	and	edx, 0xffffbfff
	cmp	edx, eax
	jne	.label_104
	xor	r13d, r13d
	jmp	.label_90
.label_134:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rax, qword ptr [rsp + 0xe8]
	lea	rdi, [r12 + rax]
	lea	rsi, [rsp + 0x420]
	call	umaxtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	r8, rbp
	call	error
	cmp	ebx, 5
	setne	al
	mov	rcx, qword ptr [rsp + 0xc0]
	or	al, cl
	jne	.label_75
	mov	r13, r12
	or	r13, 0x1ff
	cmp	r13, r14
	jae	.label_75
	mov	rax, qword ptr [rsp + 0xe8]
	lea	rsi, [r13 + rax + 1]
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 0xe4]
	mov	edi, ebx
	call	lseek
	cmp	rax, -1
	mov	rbp, qword ptr [rsp + 0xd0]
	je	.label_86
	inc	r13
	sub	r13, r12
	mov	al, 1
	mov	qword ptr [rsp + 0xb8], rax
	mov	r15, qword ptr [rsp + 0xd8]
	jmp	.label_90
.label_143:
	xor	r13d, r13d
	jmp	.label_90
.label_104:
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_90:
	add	r12, r13
	cmp	r14, r12
	ja	.label_150
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rbp, qword ptr [rsp + 0x98]
	mov	r13, qword ptr [rsp + 0xe8]
	jmp	.label_102
.label_113:
	xor	r12d, r12d
	jmp	.label_102
.label_129:
	mov	qword ptr [rsp + 0xd0], rbp
	movabs	rax, 0x7fffffffffffffff
	mov	r13, qword ptr [rsp + 0xe8]
	sub	rax, r13
	lea	rcx, [r12 + r13]
	cmp	r12, rax
	mov	rdx, qword ptr [rsp + 0xb0]
	cmovbe	rdx, rcx
	mov	r15, qword ptr [rsp + 0xd8]
	cmovbe	r15, rcx
	mov	ebx, dword ptr [rsp + 0xe4]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rbp, qword ptr [rsp + 0x98]
	nop	word ptr cs:[rax + rax]
.label_102:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r13
	cmp	rax, r12
	jb	.label_121
	add	r13, r12
	test	rcx, rcx
	mov	r12, qword ptr [rsp + 0xa0]
	je	.label_124
	mov	qword ptr [rsp + 0x98], rbp
	mov	dword ptr [rsp + 0xe4], ebx
	cmp	r13, r15
	mov	r14, r15
	sete	r15b
	jne	.label_131
	mov	rax, qword ptr [rsp + 0x40]
	cmp	byte ptr [rax], 0
	jne	.label_137
.label_131:
	xor	edi, edi
	mov	rbp, rdx
	mov	rbx, rcx
	call	time
	mov	rcx, rbx
	mov	rdx, rbp
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0x48], rax
	jg	.label_82
	jmp	.label_149
.label_137:
	mov	r15b, 1
	mov	r13, r14
.label_149:
	mov	qword ptr [rsp + 0xb0], rdx
	mov	edx, 0x1b2
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r13
	lea	rsi, [rsp + 0x420]
	call	human_readable
	mov	rbp, rax
	test	r15b, r15b
	jne	.label_61
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	je	.label_66
.label_61:
	test	r14, r14
	js	.label_68
	mov	ebx, 0x64
	lea	rsi, [rsp + 0x190]
	je	.label_69
	movabs	rax, 0x28f5c28f5c28f5c
	cmp	r13, rax
	ja	.label_74
	imul	rax, r13, 0x64
	xor	edx, edx
	div	r14
	jmp	.label_58
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rbp
	lea	rax, [rsp + 0x940]
	mov	qword ptr [rsp], rax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	mov	rdx, rcx
	mov	rbx, qword ptr [rsp + 0xc8]
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x90]
	call	error
	jmp	.label_72
.label_66:
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xb0]
	jmp	.label_82
.label_74:
	mov	rax, r14
	movabs	rcx, 0xa3d70a3d70a3d70b
	imul	rcx
	mov	rcx, rdx
	add	rcx, r14
	mov	rax, rcx
	shr	rax, 0x3f
	sar	rcx, 6
	add	rcx, rax
	xor	edx, edx
	mov	rax, r13
	div	rcx
.label_58:
	mov	rbx, rax
.label_69:
	mov	edx, 0x1b0
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r14
	call	human_readable
	mov	r12, rax
	test	r15b, r15b
	cmovne	rbp, r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	dword ptr [rsp + 0x18], ebx
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 8], rbp
	lea	rax, [rsp + 0x940]
	mov	qword ptr [rsp], rax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	mov	rdx, rcx
	mov	rbx, qword ptr [rsp + 0xc8]
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x90]
	call	error
	mov	r12, qword ptr [rsp + 0xa0]
.label_72:
	mov	qword ptr [rsp + 0xc8], rbx
	mov	edx, 0x28c
	lea	r15, [rsp + 0x6b0]
	mov	rdi, r15
	mov	rsi, rbp
	call	__strcpy_chk
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + 5]
	mov	qword ptr [rsp + 0x48], rax
	mov	edi, dword ptr [rsp + 0xe4]
	mov	rsi, rbx
	call	dosync
	test	eax, eax
	je	.label_147
	call	__errno_location
	mov	cl, 1
	mov	qword ptr [rsp + 0xb8], rcx
	cmp	dword ptr [rax], 5
	mov	qword ptr [rsp + 0x40], r15
	mov	rcx, qword ptr [rsp + 0x90]
	je	.label_141
	jmp	.label_75
.label_147:
	mov	qword ptr [rsp + 0x40], r15
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xb0]
	jmp	.label_82
.label_112:
	mov	qword ptr [rsp + 0x90], rcx
	mov	r15, rdx
	mov	edi, ebx
	mov	rsi, qword ptr [rsp + 0xc8]
	call	dosync
	test	eax, eax
	je	.label_96
	mov	dword ptr [rsp + 0xe4], ebx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	eax, 1
	cmp	ebx, 5
	mov	rcx, qword ptr [rsp + 0x78]
	mov	edi, 0xf000
	movabs	r14, 0xaaaaaaaaaaaaaaab
	je	.label_71
	jmp	.label_78
.label_96:
	mov	dword ptr [rsp + 0xe4], ebx
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rax, qword ptr [rsp + 0xb8]
	and	al, 1
	movzx	eax, al
	mov	rcx, qword ptr [rsp + 0x78]
	mov	edi, 0xf000
	movabs	r14, 0xaaaaaaaaaaaaaaab
.label_71:
	xor	r13d, r13d
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
	je	.label_87
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
.label_87:
	mov	rbx, qword ptr [rcx + 8]
	movzx	eax, byte ptr [rcx + 0x1e]
	add	rax, rbx
	cmp	rdx, rax
	mov	rbp, rdi
	jb	.label_91
	jmp	.label_80
.label_110:
	cmp	dword ptr [rcx + 0x18], 0
	je	.label_95
	xor	esi, esi
	mov	edi, dword ptr [rsp + 0xe4]
	call	ftruncate
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_98
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x118]
	cmp	eax, 0x8000
	jne	.label_98
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xc8]
	call	error
	jmp	.label_98
.label_86:
	mov	ebx, dword ptr [r15]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
.label_139:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_140
.label_95:
	mov	rbp, qword ptr [rsp + 0x60]
	jmp	.label_98
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_140:
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xc8]
	call	error
.label_75:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_78:
	xor	ebp, ebp
.label_98:
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
	and	bpl, 1
	jmp	.label_88
.label_99:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebx, 0x16
	jmp	.label_135
.label_101:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	jmp	.label_139
.label_148:
	add	r15, r14
	jmp	.label_70
.label_65:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0

	.globl dosync
	.type dosync, @function
dosync:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	ebp, edi
	call	fdatasync
	xor	r12d, r12d
	test	eax, eax
	je	.label_156
	call	__errno_location
	mov	r15, rax
	mov	ebx, dword ptr [r15]
	lea	eax, [rbx - 9]
	cmp	eax, 0xd
	ja	.label_157
	mov	ecx, 0x3001
	bt	ecx, eax
	jb	.label_155
.label_157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
.label_152:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	dword ptr [r15], ebx
	mov	r12d, 0xffffffff
.label_156:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_155:
	mov	edi, ebp
	call	fsync
	test	eax, eax
	je	.label_156
	mov	ebx, dword ptr [r15]
	lea	eax, [rbx - 9]
	cmp	eax, 0xd
	ja	.label_153
	mov	ecx, 0x3001
	bt	ecx, eax
	jb	.label_154
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	jmp	.label_152
.label_154:
	call	sync
	jmp	.label_156
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90

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
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_161
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_158:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_159
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_163
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_164
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_160
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_159
.label_160:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_159
.label_164:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_159:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_158
	jmp	.label_162
.label_161:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_162:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_163:
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
	.align	16
	#Procedure 0x403b90
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
	je	.label_165
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_166
.label_165:
	mov	esi, OFFSET FLAT:.str_2
.label_166:
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
	.align	16
	#Procedure 0x403c00

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
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_171
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_168:
	test	r15, r15
	je	.label_170
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_167
.label_170:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_169:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_168
.label_171:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_172
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
.label_172:
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
	.align	16
	#Procedure 0x403d30

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_173
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_174
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_175
.label_174:
	mov	esi, OFFSET FLAT:.str_2
.label_175:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_173:
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
	.align	16
	#Procedure 0x403df0
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
	je	.label_176
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_177:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_176
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_177
.label_176:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_181
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_178
	cmp	dword ptr [rbp], 0x20
	jne	.label_178
.label_181:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_180
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_179
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_180:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_179:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403f40

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_182
	pop	rcx
	ret	
.label_182:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f60
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	
.label_184:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_183
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_184
.label_183:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	sete	al
	movzx	r15d, al
	call	last_component
	sub	rax, r14
	nop	
.label_187:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_185
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_187
.label_185:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_188
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_186
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_186:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_188:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404020

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_189:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_189
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_190:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_193:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_190
	test	dl, dl
	je	.label_191
	mov	cl, r8b
	and	cl, 1
	je	.label_192
	xor	r8d, r8d
.label_192:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_190
.label_191:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_195:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_194
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_195
.label_194:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040c0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_196
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_196:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_199
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_198
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_197
.label_198:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_197:
	mov	edx, dword ptr [rax]
.label_199:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041a0

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r12, r8
	mov	r13, rcx
	mov	r14d, edx
	mov	r15, rsi
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r14d
	and	eax, 3
	mov	dword ptr [rsp + 0x44], eax
	mov	eax, r14d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x40], ecx
	call	localeconv
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, OFFSET FLAT:.str_5
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbp
	call	strlen
	mov	rsi, r12
	cmp	rax, 0x11
	mov	eax, OFFSET FLAT:.str_1
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x68], rax
	lea	rbx, [r15 + 0x287]
	cmp	rsi, r13
	jbe	.label_218
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_225
	xor	edx, edx
	mov	rax, rsi
	div	r13
	test	rdx, rdx
	jne	.label_225
	xor	edx, edx
	mov	rax, rsi
	div	r13
	mov	rbp, rsi
	mov	rsi, rax
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	r15, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	cmp	rdx, rsi
	mov	rsi, rbp
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_247
.label_218:
	xor	edx, edx
	mov	rax, r13
	div	rsi
	test	rdx, rdx
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	jne	.label_225
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	rcx, rax
	mov	r15, rcx
	imul	r15, rdi
	xor	edx, edx
	mov	rax, r15
	div	rcx
	cmp	rax, rdi
	mov	ecx, 0
	jne	.label_225
.label_247:
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14d, r8d
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	je	.label_252
	mov	ebx, dword ptr [rsp + 0x40]
	mov	edi, ebx
	xor	r13d, r13d
	cmp	rdi, r15
	jbe	.label_209
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_213
.label_225:
	mov	qword ptr [rsp + 0xe8], rsi
	test	rsi, rsi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
	mov	qword ptr [rsp + 0xf0], rdi
	test	rdi, rdi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf0]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
	mov	qword ptr [rsp + 0xf8], r13
	test	r13, r13
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
	fdivrp	st(2)
	fmulp	st(1)
	test	r8b, 0x10
	jne	.label_245
	mov	ecx, dword ptr [rsp + 0x44]
	cmp	ecx, 1
	je	.label_235
	fld	xword ptr [word ptr [rip + label_200]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x58]
	jbe	.label_250
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	fld	dword ptr [dword ptr [rip + label_207]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7e]
	mov	ax, word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], 0xc7f
	fldcw	word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], ax
	fistp	qword ptr [rsp + 0x88]
	fldcw	word ptr [rsp + 0x7e]
	fnstcw	word ptr [rsp + 0x7c]
	mov	ax, word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], 0xc7f
	fldcw	word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x80]
	fldcw	word ptr [rsp + 0x7c]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0x88]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x80]
	test	ecx, ecx
	sete	cl
	mov	qword ptr [rsp + 0x90], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_208]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0x98], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x98]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
	jmp	.label_221
.label_245:
	mov	qword ptr [rsp + 0x48], rsi
	mov	eax, dword ptr [rsp + 0x40]
	mov	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	fld1	
	xor	r13d, r13d
	fild	qword ptr [rsp + 0xe0]
	fldz	
	nop	dword ptr [rax + rax]
.label_244:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	fmul	st(2)
	cmp	r13d, 7
	jg	.label_242
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_244
.label_242:
	fstp	st(1)
	fstp	st(0)
	mov	dword ptr [rsp + 0x50], r8d
	fdivp	st(1)
	mov	r14d, dword ptr [rsp + 0x44]
	cmp	r14d, 1
	fld	st(0)
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebp, dword ptr [rsp + 0x64]
	je	.label_201
	fstp	st(0)
	fld	xword ptr [word ptr [rip + label_200]]
	fucomip	st(1)
	fld	st(0)
	jbe	.label_201
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_207]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7a]
	mov	ax, word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], 0xc7f
	fldcw	word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], ax
	fistp	qword ptr [rsp + 0xc8]
	fldcw	word ptr [rsp + 0x7a]
	fnstcw	word ptr [rsp + 0x78]
	mov	ax, word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], 0xc7f
	fldcw	word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xc0]
	fldcw	word ptr [rsp + 0x78]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xc8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xc0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xd0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xd0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_208]]
	fucomip	st(1)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xd8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
.label_201:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, ebp
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	rdx, qword ptr [rsp + 0x20]
	add	rcx, rdx
	cmp	rcx, rax
	jb	.label_206
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_248
	mov	r14, rdx
	jmp	.label_217
.label_252:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_213
.label_235:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_221
.label_250:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
.label_221:
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_1
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	r13d, 0xffffffff
	jmp	.label_217
.label_248:
	movzx	ecx, byte ptr [rax + r15 - 1]
	cmp	ecx, 0x30
	jne	.label_232
.label_206:
	fld	xword ptr [rsp + 0x30]
	fmul	dword ptr [dword ptr [rip + label_233]]
	cmp	r14d, 1
	je	.label_237
	fld	xword ptr [word ptr [rip + label_200]]
	fucomip	st(1)
	jbe	.label_237
	fld	dword ptr [dword ptr [rip + label_207]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x76]
	mov	ax, word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], 0xc7f
	fldcw	word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], ax
	fistp	qword ptr [rsp + 0xa8]
	fldcw	word ptr [rsp + 0x76]
	fnstcw	word ptr [rsp + 0x74]
	mov	ax, word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], 0xc7f
	fldcw	word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xa0]
	fldcw	word ptr [rsp + 0x74]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xa8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xa0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xb0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xb0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_208]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xb8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xb8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
.label_237:
	fdiv	dword ptr [dword ptr [rip + label_233]]
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_1
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	jmp	.label_217
.label_209:
	mov	qword ptr [rsp + 0x48], rsi
	nop	dword ptr [rax + rax]
.label_229:
	xor	edx, edx
	mov	rax, r15
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	esi, ebp
	sar	esi, 1
	xor	edx, edx
	mov	r15, rax
	mov	eax, ecx
	div	ebx
	lea	edx, [rsi + rdx*2]
	cmp	edx, ebx
	mov	ecx, eax
	jae	.label_243
	add	edx, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_249
	nop	
.label_243:
	add	edx, ebp
	cmp	ebx, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_249:
	inc	r13d
	cmp	r13d, 7
	jg	.label_205
	cmp	rdi, r15
	jbe	.label_229
.label_205:
	cmp	r15, 9
	ja	.label_210
	mov	eax, dword ptr [rsp + 0x44]
	cmp	eax, 1
	mov	rdx, qword ptr [rsp + 0x58]
	jne	.label_211
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_214
	jmp	.label_219
.label_232:
	mov	r14, rdx
.label_217:
	mov	qword ptr [rsp + 0x58], r15
	mov	rbp, rbx
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	mov	r12, rbx
	sub	r12, r14
	mov	r8d, dword ptr [rsp + 0x50]
	mov	edi, dword ptr [rsp + 0x64]
	jmp	.label_224
.label_210:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_216
.label_211:
	test	eax, eax
	jne	.label_219
	test	ebp, ebp
	je	.label_219
.label_214:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_219
	inc	r15
	xor	ecx, ecx
	cmp	r15, 9
	mov	ebp, 0
	ja	.label_231
.label_219:
	test	r8b, 8
	je	.label_234
	test	ecx, ecx
	jne	.label_234
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_236
.label_234:
	add	ecx, 0x30
	lea	r12, [rdx + 0x286]
	mov	byte ptr [rdx + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	xor	ebp, ebp
.label_236:
	xor	ecx, ecx
.label_216:
	mov	rsi, qword ptr [rsp + 0x48]
.label_213:
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	je	.label_215
	cmp	eax, 1
	jne	.label_204
	movsxd	rax, ebp
	mov	edx, r15d
	and	edx, 1
	add	rdx, rax
	setne	al
	movzx	eax, al
	add	eax, ecx
	cmp	eax, 5
	jle	.label_204
	jmp	.label_202
.label_215:
	add	ecx, ebp
	jle	.label_204
.label_202:
	inc	r15
	mov	eax, dword ptr [rsp + 0x40]
	cmp	r13d, 7
	jg	.label_204
	test	r14d, r14d
	je	.label_204
	cmp	r15, rax
	jne	.label_204
	mov	qword ptr [rsp + 0x48], rsi
	inc	r13d
	mov	r15d, 1
	test	r8b, 8
	jne	.label_223
	mov	byte ptr [r12 - 1], 0x30
	dec	r12
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	mov	r15d, 1
	jmp	.label_223
.label_204:
	mov	qword ptr [rsp + 0x48], rsi
.label_223:
	mov	rbx, qword ptr [rsp + 0x30]
	mov	edi, dword ptr [rsp + 0x64]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_230:
	mov	rax, r15
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r15d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r15, 9
	mov	r15, rdx
	ja	.label_230
.label_224:
	test	r8b, 4
	jne	.label_239
	mov	r12, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_240
.label_239:
	mov	dword ptr [rsp + 0x44], r13d
	mov	dword ptr [rsp + 0x50], r8d
	mov	qword ptr [rsp + 0x30], rbx
	mov	dword ptr [rsp + 0x64], edi
	mov	rbx, r12
	sub	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x100]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	r15, r14
	neg	r15
	mov	rbp, -1
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_251
.label_220:
	add	r12, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, r14
	call	memcpy
.label_251:
	movzx	eax, byte ptr [r13]
	test	rax, rax
	je	.label_212
	cmp	eax, 0x7f
	cmovae	rax, rbx
	inc	r13
	mov	rbp, rax
.label_212:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	sub	r12, rbp
	mov	rax, rbx
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x100]
	mov	rdi, r12
	mov	rdx, rbp
	call	memcpy
	sub	rbx, rbp
	jne	.label_220
	mov	edi, dword ptr [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8d, dword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	r13d, dword ptr [rsp + 0x44]
.label_240:
	test	r8b, r8b
	jns	.label_226
	test	r13d, r13d
	jns	.label_227
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_227
	mov	eax, dword ptr [rsp + 0x40]
	xor	ecx, ecx
	mov	edx, 1
	nop	dword ptr [rax]
.label_238:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_227
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_238
.label_227:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	je	.label_241
	mov	ecx, r13d
	or	ecx, eax
	je	.label_241
	mov	rbx, qword ptr [rsp + 0x58]
	mov	byte ptr [rbx + 0x287], 0x20
	add	rbx, 0x288
.label_241:
	test	r13d, r13d
	je	.label_246
	test	edi, edi
	jne	.label_222
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_228
.label_222:
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_228:
	mov	byte ptr [rbx], cl
	inc	rbx
.label_246:
	test	eax, eax
	je	.label_226
	test	edi, edi
	je	.label_203
	test	r13d, r13d
	je	.label_203
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_203:
	mov	byte ptr [rbx], 0x42
	inc	rbx
.label_226:
	mov	byte ptr [rbx], 0
	mov	rax, r12
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_231:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x30]
	mov	r15d, 0xa
	jmp	.label_216
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b50
	.globl human_options
	.type human_options, @function
human_options:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	test	rdi, rdi
	jne	.label_256
	mov	edi, OFFSET FLAT:.str.4_1
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_256
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_262
.label_256:
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	movzx	ebp, al
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_261
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_257:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_255
.label_261:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_259
	mov	dword ptr [r14], 0
.label_255:
	cmp	qword ptr [r15], 0
	jne	.label_260
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	mov	eax, 4
.label_260:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_259:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	movzx	eax, al
	cmp	eax, 0xa
	jb	.label_257
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_258:
	cmp	rax, rbx
	je	.label_253
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	jae	.label_258
	jmp	.label_257
.label_262:
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	xor	ebp, ebp
	jmp	.label_257
.label_253:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	jne	.label_254
	movzx	eax, byte ptr [rax - 2]
	cmp	eax, 0x69
	jne	.label_257
.label_254:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_263:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_263
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_265
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_264
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_264
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_266
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_266:
	mov	rbx, r14
.label_264:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_265:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0
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
	#Procedure 0x404e00
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
	#Procedure 0x404e10
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
	#Procedure 0x404e20
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
	#Procedure 0x404e60
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
	#Procedure 0x404e80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_267
	test	rdx, rdx
	je	.label_267
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_267:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0
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
	#Procedure 0x404f30

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
.label_331:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_390
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_268]]
.label_612:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_613:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_291
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_291
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_316:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_308
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_308:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_316
.label_291:
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
	jmp	.label_325
.label_605:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_325
.label_608:
	mov	al, 1
.label_606:
	mov	r12b, 1
.label_609:
	test	r12b, 1
	mov	cl, 1
	je	.label_348
	mov	cl, al
.label_348:
	mov	al, cl
.label_607:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_352
	test	r10, r10
	je	.label_357
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_298
.label_352:
	xor	ecx, ecx
	jmp	.label_298
.label_610:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_302
	test	r10, r10
	je	.label_369
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_371
.label_611:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_325
.label_357:
	mov	ecx, 1
.label_298:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_325
.label_302:
	xor	eax, eax
	jmp	.label_371
.label_369:
	mov	eax, 1
.label_371:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_325:
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
	jmp	.label_345
.label_328:
	inc	rdi
.label_345:
	cmp	rbp, -1
	je	.label_321
	cmp	rdi, rbp
	jne	.label_323
	jmp	.label_324
	nop	word ptr cs:[rax + rax]
.label_321:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_376
.label_323:
	test	r12b, r12b
	je	.label_334
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_337
	cmp	rbp, -1
	jne	.label_337
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
.label_337:
	cmp	rbx, rbp
	jbe	.label_361
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_362
	nop	word ptr [rax + rax]
.label_334:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_362
.label_361:
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
	jne	.label_385
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_362
	jmp	.label_304
.label_385:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_362:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_367
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_285]]
.label_672:
	test	rdi, rdi
	jne	.label_271
	jmp	.label_292
.label_676:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_295
	test	rdi, rdi
	jne	.label_299
	cmp	rbp, 1
	je	.label_292
	xor	r13d, r13d
	jmp	.label_297
.label_665:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_303
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_304
	cmp	r9d, 2
	jne	.label_309
	mov	al, r14b
	and	al, 1
	jne	.label_311
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_314
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_314:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_336
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_336:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_379
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_379:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_287
.label_666:
	mov	bl, 0x62
	jmp	.label_346
.label_667:
	mov	cl, 0x74
	jmp	.label_333
.label_668:
	mov	bl, 0x76
	jmp	.label_346
.label_669:
	mov	bl, 0x66
	jmp	.label_346
.label_670:
	mov	cl, 0x72
	jmp	.label_333
.label_673:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_354
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_358
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
	jae	.label_300
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_300:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_381
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_381:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_386
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_386:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_354:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_297
.label_674:
	cmp	r9d, 5
	je	.label_274
	cmp	r9d, 2
	jne	.label_271
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_271
	jmp	.label_277
.label_675:
	cmp	r9d, 2
	jne	.label_279
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_282
	jmp	.label_286
.label_367:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_288
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
.label_289:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_305
	test	cl, cl
	je	.label_305
	xor	eax, eax
	jmp	.label_297
.label_295:
	test	rdi, rdi
	jne	.label_319
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_319
.label_292:
	mov	dl, 1
.label_671:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_338
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_297
.label_303:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_328
	jmp	.label_271
.label_279:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_333
.label_282:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_270
.label_333:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_341
.label_346:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_297
	jmp	.label_349
.label_288:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_351
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_351:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_330:
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
	je	.label_380
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_383
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_389
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_388
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_278:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_273
	bt	rsi, rdx
	jb	.label_275
.label_273:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_278
.label_388:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_374
	xor	r13d, r13d
.label_374:
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
	je	.label_330
	jmp	.label_289
.label_319:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_297
.label_274:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_271
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_271
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_271
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_312
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_317
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_329
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_353
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_353:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_332
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_332:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_392
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_392:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_280
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_280:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_297
.label_271:
	xor	eax, eax
	xor	r13d, r13d
.label_297:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_365
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_368
	jmp	.label_372
	nop	word ptr [rax + rax]
.label_365:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_372
.label_368:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_375
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_382
	nop	word ptr cs:[rax + rax]
.label_372:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_382:
	mov	bl, r15b
	je	.label_270
	jmp	.label_349
.label_375:
	mov	bl, r15b
.label_349:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_304
	cmp	r9d, 2
	jne	.label_391
	mov	al, r14b
	and	al, 1
	jne	.label_391
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_339
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_339:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_306
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_306:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_363
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_391:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_296
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_296:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_344
.label_299:
	xor	r13d, r13d
	jmp	.label_297
.label_305:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_307
	nop	word ptr [rax + rax]
.label_301:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_307:
	test	cl, cl
	je	.label_318
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_320
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_322
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_322:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_320
	nop	word ptr [rax + rax]
.label_318:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_304
	cmp	r9d, 2
	jne	.label_343
	mov	al, r14b
	and	al, 1
	jne	.label_343
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_347
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_347:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_350
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_350:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_294
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_294:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_343:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_373
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_373:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_378
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_378:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_315
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_315:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_320:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_270
	test	r14b, 1
	je	.label_276
	mov	bl, al
	and	bl, 1
	jne	.label_276
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_387
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_387:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_290
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_290:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_276:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_301
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_301
	nop	dword ptr [rax]
.label_270:
	test	r14b, 1
	je	.label_313
	and	al, 1
	jne	.label_313
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_293
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_293:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_284
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_313:
	mov	bl, r15b
.label_344:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_335
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_335:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_328
.label_309:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_287
.label_311:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_287:
	cmp	rcx, r10
	jae	.label_355
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_355:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_360
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_366
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_370
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_356
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_356:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_377
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_377:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_297
.label_360:
	xor	r13d, r13d
	jmp	.label_297
.label_366:
	xor	r13d, r13d
	jmp	.label_297
.label_370:
	xor	r13d, r13d
	jmp	.label_297
.label_383:
	xor	r13d, r13d
.label_380:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_289
.label_389:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_272
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_269:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_281
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_269
	xor	r13d, r13d
	jmp	.label_289
.label_272:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_289
.label_281:
	xor	r13d, r13d
	jmp	.label_289
.label_312:
	xor	r13d, r13d
	jmp	.label_297
.label_317:
	xor	r13d, r13d
	jmp	.label_297
	nop	dword ptr [rax]
.label_324:
	mov	r13, rdi
.label_376:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_340
	or	al, dl
	je	.label_384
.label_340:
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
	je	.label_310
	or	al, dl
	jne	.label_310
	test	r8b, 1
	jne	.label_326
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_310
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_331
.label_310:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_342
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_342
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_342
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_359:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_327
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_327:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_359
.label_342:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_364
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_364
.label_338:
	mov	r9d, 2
	jmp	.label_304
.label_275:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_304
.label_384:
	mov	rbp, r13
	jmp	.label_304
.label_341:
	mov	r9d, 2
.label_304:
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
.label_283:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_364:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_326:
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
	jmp	.label_283
.label_358:
	mov	r9d, 2
	jmp	.label_304
.label_286:
	mov	r9d, 2
	jmp	.label_304
.label_277:
	mov	r9d, 2
	jmp	.label_304
.label_329:
	mov	r9d, 5
	jmp	.label_304
.label_390:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0
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
	#Procedure 0x406190
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
	je	.label_393
	mov	qword ptr [rax], rbx
.label_393:
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
	#Procedure 0x406290
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_394
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_396:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_396
.label_394:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_398
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_397]], OFFSET FLAT:slot0
.label_398:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_395
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_395:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406340

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
	js	.label_399
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_402
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_405
.label_402:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_401
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
	jne	.label_400
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_400:
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
.label_405:
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
	ja	.label_403
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_404
	mov	rdi, rbx
	call	free
.label_404:
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
.label_403:
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
.label_399:
	call	abort
.label_401:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406510
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520
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
	#Procedure 0x406540
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
	#Procedure 0x406560

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
	je	.label_406
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
.label_406:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4065d0
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
	je	.label_407
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
.label_407:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406640
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
	je	.label_408
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
.label_408:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0
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
	je	.label_409
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
.label_409:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406720
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
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
	#Procedure 0x406790
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
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
	#Procedure 0x406800

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
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
	#Procedure 0x406860
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
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
	#Procedure 0x4068c0

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
	je	.label_413
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
.label_413:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x406970
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_414
	test	rdx, rdx
	je	.label_414
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_414:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4069e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_415
	test	rdx, rdx
	je	.label_415
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_415:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_416
	test	rsi, rsi
	je	.label_416
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_416:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406ac0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_410]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_411]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_417
	test	rsi, rsi
	je	.label_417
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
.label_417:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b40
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
	#Procedure 0x406b60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b80

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
	#Procedure 0x406ba0

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
	jne	.label_418
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_420
	cmp	ecx, 0x55
	jne	.label_419
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_419
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_419
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_419
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_419
	cmp	byte ptr [rax + 5], 0
	jne	.label_419
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_418
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_418
.label_420:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_419
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_419
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_419
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_419
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_419
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_419
	cmp	byte ptr [rax + 7], 0
	je	.label_421
.label_419:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_418:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_421:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_418
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_418
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c90
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
	.align	16
	#Procedure 0x406cb0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_422
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_422:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ce0

	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cf0

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
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_425:
	cmp	r14, r13
	jae	.label_424
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_426:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_426
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_428:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_428
.label_424:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_423
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
	ja	.label_425
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
	jmp	.label_427
.label_423:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_427:
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
	.align	16
	#Procedure 0x406df0
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
	.align	16
	#Procedure 0x406e10

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
	.align	16
	#Procedure 0x406e60

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
	je	.label_432
	xor	ebx, ebx
	test	r14, r14
	je	.label_434
	mov	esi, OFFSET FLAT:.str_7
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_429
.label_434:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_433
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_429
.label_432:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_429
.label_433:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_2
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_431
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
	js	.label_431
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_430
.label_431:
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
	ja	.label_430
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
	ja	.label_430
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
	ja	.label_430
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
	ja	.label_430
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
.label_430:
	mov	rdi, r14
	call	isaac_seed
.label_429:
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
	.align	16
	#Procedure 0x4070b0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0

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
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_440
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbp, rbx
	je	.label_437
.label_436:
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_436
	jmp	.label_437
.label_440:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, rbx
	jae	.label_439
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_438:
	cmp	rbx, 0x800
	jb	.label_435
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	add	rbx, -0x800
	jne	.label_438
	jmp	.label_441
.label_435:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_439:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_441:
	mov	qword ptr [r14 + 0x18], r12
.label_437:
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
	#Procedure 0x4071f0

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
	je	.label_442
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_442:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407230

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
	je	.label_443
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_445
	mov	esi, OFFSET FLAT:.str.1_2
	jmp	.label_444
.label_445:
	mov	esi, OFFSET FLAT:.str.2_3
.label_444:
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
.label_443:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x407290

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	lea	r9, [rdi + 0x400]
	mov	r8, rsi
	mov	r10, rdi
	nop	
.label_446:
	mov	r11, rax
	shl	r11, 0x15
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x408]
	mov	rcx, qword ptr [r10 + 8]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r11
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	mov	rcx, qword ptr [r10 + 0x18]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	cmp	r10, r9
	jb	.label_446
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	dword ptr [rax]
.label_447:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rdx, qword ptr [r9]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	shr	rax, 5
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	xor	r10, rax
	add	r10, qword ptr [r9 - 0x3f0]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r10
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rax, r10
	shr	rax, 0x21
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	jb	.label_447
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074e0

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
.label_448:
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
	jl	.label_448
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_449:
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
	jl	.label_449
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
	.align	16
	#Procedure 0x407740

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
	test	ebx, ebx
	jns	.label_451
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_453
	cmp	ecx, 0x5f
	je	.label_453
	cmp	ecx, 0x26
	jne	.label_451
.label_453:
	test	r12d, r12d
	je	.label_457
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_458
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_451
.label_457:
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_450:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_454
	test	rax, rax
	je	.label_454
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_461
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	jne	.label_454
.label_461:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_451
	test	r12b, r12b
	je	.label_459
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_454
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_451
.label_458:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_460
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_450
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_451
.label_460:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_451
.label_459:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_455
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_451
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_451
	jmp	.label_454
.label_455:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_456
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_452
.label_454:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_451:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_456:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_451
.label_452:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_451
	nop	
	.section	.text
	.align	16
	#Procedure 0x407950

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
	ja	.label_462
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
	jmp	.label_463
.label_462:
	mov	eax, ebx
.label_463:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079a0

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
	je	.label_469
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_468
.label_469:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_3
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_473
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_464]]
.label_695:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_472
.label_696:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_697:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_698:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_465
.label_699:
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
	jmp	.label_471
.label_700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_467
.label_701:
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
.label_467:
	mov	qword ptr [rsp + 0x10], rdi
.label_471:
	mov	qword ptr [rsp + 8], rsi
.label_465:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_470
.label_703:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_472:
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
	jmp	.label_466
.label_702:
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
.label_466:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_470:
	call	__fprintf_chk
.label_694:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_474:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_474
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_477:
	cmp	r10d, 0x28
	ja	.label_475
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_476
	nop	word ptr cs:[rax + rax]
.label_475:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_476:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_478
	inc	r9
	cmp	r9, 0xa
	jb	.label_477
.label_478:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_479
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_479:
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
.label_481:
	cmp	r8d, 0x28
	ja	.label_480
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_482
	nop	
.label_480:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_482:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_483
	inc	r9
	cmp	r9, 0xa
	jb	.label_481
.label_483:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e20
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	#Procedure 0x407ea0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_484
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_485
	test	rax, rax
	je	.label_484
.label_485:
	pop	rbx
	ret	
.label_484:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ee0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_486
	test	rax, rax
	je	.label_487
.label_486:
	pop	rbx
	ret	
.label_487:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f00
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_488
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_489
	test	rbx, rbx
	jne	.label_489
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_489:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_490
	test	rax, rax
	je	.label_488
.label_490:
	pop	rbx
	ret	
.label_488:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_491
	test	rbx, rbx
	jne	.label_491
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_491:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_493
	test	rax, rax
	je	.label_492
.label_493:
	pop	rbx
	ret	
.label_492:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407f80
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_494
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_496
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_495
.label_494:
	test	rcx, rcx
	jne	.label_499
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_499:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_498
.label_495:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_497
	test	rbx, rbx
	jne	.label_497
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_497:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_500
	test	rax, rax
	je	.label_496
.label_500:
	pop	rbx
	ret	
.label_496:
	call	xalloc_die
.label_498:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408020
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_501
	test	rax, rax
	je	.label_502
.label_501:
	pop	rbx
	ret	
.label_502:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408040
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_503
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_506
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_507
	call	free
	xor	eax, eax
	jmp	.label_504
.label_503:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_505
	mov	qword ptr [rsi], rbx
.label_507:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_504
	test	rax, rax
	je	.label_505
.label_504:
	pop	rbx
	ret	
.label_505:
	call	xalloc_die
.label_506:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080b0
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
	je	.label_509
	test	r14, r14
	je	.label_508
.label_509:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_508:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_510
	call	rpl_calloc
	test	rax, rax
	je	.label_510
	pop	rcx
	ret	
.label_510:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408120

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
	je	.label_511
	test	r15, r15
	je	.label_512
.label_511:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_512:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408160

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
	je	.label_514
	test	r15, r15
	je	.label_513
.label_514:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_513:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4081b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4081e0

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
	je	.label_516
	cmp	eax, 1
	je	.label_518
	cmp	eax, 3
	jne	.label_520
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_515
.label_518:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_515
.label_516:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_519
	cmp	rbx, r15
	jbe	.label_521
.label_519:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_517
	mov	dword ptr [rax], 0x4b
	jmp	.label_515
.label_520:
	call	__errno_location
	jmp	.label_515
.label_517:
	mov	dword ptr [rax], 0x22
.label_515:
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
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_521:
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
	#Procedure 0x4082b0

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4082e0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_542
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_533:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_533
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_524
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_546
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_522
	cmp	eax, 0x22
	jne	.label_524
	mov	dword ptr [rsp + 4], 1
.label_522:
	test	r14, r14
	jne	.label_527
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_524
.label_546:
	test	r14, r14
	je	.label_524
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_524
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_524
.label_527:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_545
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_523
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_526
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_526
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_526
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_539
	cmp	eax, 0x44
	je	.label_539
	cmp	eax, 0x69
	jne	.label_526
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	ecx, 3
	je	.label_541
	mov	ecx, 1
.label_541:
	mov	esi, 0x400
	jmp	.label_526
.label_545:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_525
.label_539:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_526:
	cmp	r13d, 0x59
	jg	.label_544
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_532
	jmp	qword ptr [word ptr [+ (rax * 8) + label_531]]
.label_684:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_535
.label_544:
	cmp	r13d, 0x73
	jg	.label_538
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_540
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_543]]
.label_706:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_535:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_536
.label_532:
	cmp	r13d, 0x54
	je	.label_534
	cmp	r13d, 0x59
	jne	.label_523
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	sbb	r13b, r13b
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
	or	dl, r13b
	or	dl, bpl
	jmp	.label_537
.label_538:
	cmp	r13d, 0x74
	je	.label_534
	cmp	r13d, 0x77
	jne	.label_523
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_536
.label_686:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_529
.label_687:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_547
.label_688:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_528
.label_534:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_530
.label_540:
	cmp	r13d, 0x5a
	jne	.label_523
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_537:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_547
.label_523:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_524
.label_685:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_528
.label_689:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_530:
	or	dl, r10b
.label_529:
	or	dl, bl
.label_528:
	and	dl, 1
	movzx	eax, dl
.label_547:
	mov	rbp, rsi
.label_536:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_548
	or	eax, 2
.label_548:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_525:
	mov	qword ptr [rax], rbp
.label_524:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_542:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408990

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_549
	test	rsi, rsi
	mov	ecx, 1
	je	.label_550
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_550
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_549:
	mov	ecx, 1
.label_550:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089e0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_551
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_553
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_551
.label_553:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_551
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_552
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_552:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_551:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a70

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_572
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_572:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_558
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_573
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_555
	test	esi, esi
	jne	.label_558
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_559
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_561
.label_558:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_563
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_555
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_568
.label_573:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_567
.label_555:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_571
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_564
.label_571:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_564:
	mov	edx, dword ptr [rax]
.label_562:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_567:
	mov	ebp, eax
.label_560:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_568:
	cmp	eax, 6
	jne	.label_563
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_565
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_554
.label_563:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_557
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_574
.label_559:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_561:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_562
.label_565:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_554:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_566
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_570
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_570
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_560
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_569
.label_570:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_560
.label_557:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_574:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_567
.label_566:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_569:
	test	al, al
	je	.label_560
	test	ebp, ebp
	js	.label_560
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_556
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_560
.label_556:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_560
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_575
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_575
	test	byte ptr [rbx + 1], 1
	je	.label_575
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_575:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d90

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
	jne	.label_576
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_576
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_577
.label_576:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_577:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_578
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_578:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408e00

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
	je	.label_579
	cmp	r15, -2
	jb	.label_579
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_579
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_579:
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
	#Procedure 0x408e60

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
	jne	.label_581
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_580
	test	cl, cl
	jne	.label_580
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_580
.label_581:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_580
	call	__errno_location
	mov	dword ptr [rax], 0
.label_580:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ec0

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
	je	.label_582
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_586
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_583
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_584
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_582
.label_584:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_585
.label_586:
	mov	rax, rbx
	jmp	.label_582
.label_583:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_585:
	xor	eax, eax
.label_582:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_588
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_589
	cmp	byte ptr [rax + 1], 0
	je	.label_587
.label_589:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_588
.label_587:
	xor	ebx, ebx
.label_588:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_590
	mov	rax, rcx
.label_590:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408fc0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section .text
	.align	16
	#Procedure 0x408fd0

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