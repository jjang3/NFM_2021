	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x14], edi
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_7
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	dword ptr [rbp - 8], eax
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	nop	
	call	emit_stdin_note
	mov	rbp, rbp
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_ancillary_info
.label_8:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bc0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.18
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401c50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_14:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rdx], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], cl
	je	.label_10
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax]
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	xor	cl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
.label_10:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	jne	.label_11
	lea	rsi, [rsi]
	jmp	.label_13
.label_11:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_14
.label_13:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_15
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18_0
	nop	
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	call	setlocale
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_12
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.30
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.31
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.33
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.34
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x40]
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401e60

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xb0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.9
	movabs	rsi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	bindtextdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x98], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x50], rax
	nop	
	call	atexit
	movabs	rsi, OFFSET FLAT:.str.11
	mov	qword ptr [word ptr [separator]],  rsi
	mov	qword ptr [word ptr [sentinel_length]],  1
	mov	byte ptr [byte ptr [separator_ends_record]],  1
	mov	dword ptr [rbp - 0x58], eax
.label_49:
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_38
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x54], eax
	mov	dword ptr [rbp - 0x8c], ecx
	nop	
	je	.label_45
	mov	rsp, rsp
	jmp	.label_21
.label_21:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x74], eax
	je	.label_25
	mov	rsp, rsp
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	je	.label_28
	mov	rbp, rbp
	jmp	.label_35
.label_35:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x70], eax
	je	.label_37
	lea	rsi, [rsi]
	jmp	.label_22
.label_22:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x73
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_47
	mov	rbp, rbp
	jmp	.label_20
.label_28:
	mov	byte ptr [byte ptr [separator_ends_record]],  0
	lea	rdi, [rdi]
	jmp	.label_24
.label_37:
	mov	rbp, rbp
	mov	qword ptr [word ptr [sentinel_length]],  0
	jmp	.label_24
.label_47:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [separator]],  rax
	jmp	.label_24
.label_25:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_45:
	movabs	rsi, OFFSET FLAT:.str.6
	movabs	rdx, OFFSET FLAT:.str.17
	nop	
	movabs	r8, OFFSET FLAT:.str.14
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str.15
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_20:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_24:
	jmp	.label_49
.label_38:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [sentinel_length]],  0
	mov	rbp, rbp
	jne	.label_39
	nop	
	mov	rax,  qword ptr [word ptr [separator]]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_46
	movabs	rdi, OFFSET FLAT:.str.16
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_46:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:compiled_separator
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:compiled_separator_fastmap
	mov	rbp, rbp
	mov	qword ptr [word ptr [compiled_separator]],  0
	mov	qword ptr [word ptr [label_30]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_31]],  rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_32]],  0
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [separator]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [separator]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	call	strlen
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rpl_re_compile_pattern
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	je	.label_34
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	al, 0
	call	error
.label_34:
	lea	rdi, [rdi]
	jmp	.label_16
.label_39:
	mov	rax,  qword ptr [word ptr [separator]]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_19
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [separator]]
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_29
.label_19:
	mov	eax, 1
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	jmp	.label_29
.label_29:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [word ptr [sentinel_length]],  rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [match_length]],  rax
.label_16:
	mov	rbp, rbp
	mov	qword ptr [word ptr [read_size]],  0x2000
.label_33:
	mov	rax,  qword ptr [word ptr [sentinel_length]]
	mov	rcx,  qword ptr [word ptr [read_size]]
	lea	rdi, [rdi]
	shr	rcx, 1
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_48
	movabs	rax, 0x7fffffffffffffff
	cmp	rax,  qword ptr [word ptr [read_size]]
	nop	
	jae	.label_36
	call	xalloc_die
.label_36:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [read_size]]
	mov	rsp, rsp
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [read_size]],  rax
	jmp	.label_33
.label_48:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [read_size]]
	nop	
	add	rax,  qword ptr [word ptr [sentinel_length]]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [G_buffer_size]],  rax
	mov	rax,  qword ptr [word ptr [read_size]]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_44
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [G_buffer_size]]
	jb	.label_27
.label_44:
	call	xalloc_die
.label_27:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [G_buffer_size]]
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [word ptr [G_buffer]],  rax
	cmp	qword ptr [word ptr [sentinel_length]],  0
	je	.label_41
	mov	rdi,  qword ptr [word ptr [G_buffer]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [separator]]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [sentinel_length]]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rax,  qword ptr [word ptr [sentinel_length]]
	add	rax,  qword ptr [word ptr [G_buffer]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [G_buffer]],  rax
	lea	rdi, [rdi]
	jmp	.label_42
.label_41:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [G_buffer]]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [word ptr [G_buffer]],  rax
.label_42:
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x5c]
	jge	.label_43
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	shl	rax, 3
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_23
.label_43:
	movabs	rax, OFFSET FLAT:main.default_file_list
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_23
.label_23:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	xset_binary_mode
	mov	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], 0
.label_18:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_40
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rcx + rax*8]
	call	tac_file
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	esi, al
	lea	rsi, [rsi]
	and	esi, edx
	mov	rsp, rsp
	cmp	esi, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x81], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	jmp	.label_18
.label_40:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	output
	test	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rbp, rbp
	je	.label_17
	xor	edi, edi
	call	close
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_17
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.7
	mov	esi, dword ptr [rax]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], 0
.label_17:
	mov	rbp, rbp
	mov	eax, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	dl, 1
	cmovne	eax, ecx
	mov	rsp, rsp
	add	rsp, 0xb0
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402560

	.globl tac_file
	.type tac_file, @function
tac_file:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	eax, OFFSET FLAT:.str.7
	nop	
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x19], cl
	test	byte ptr [rbp - 0x19], 1
	je	.label_50
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	mov	rbp, rbp
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	edi, ecx
	mov	esi, ecx
	call	xset_binary_mode
	jmp	.label_54
.label_50:
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	al, 0
	call	open
	nop	
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	jge	.label_56
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x29], 0
	mov	rbp, rbp
	jmp	.label_52
.label_56:
	lea	rsi, [rsi]
	jmp	.label_54
.label_54:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 2
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	call	lseek
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jl	.label_57
	mov	edi, dword ptr [rbp - 0x24]
	call	isatty
	cmp	eax, 0
	je	.label_53
.label_57:
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	tac_nonseekable
	lea	rsi, [rsi]
	and	al, 1
	movzx	edi, al
	mov	dword ptr [rbp - 0x28], edi
	jmp	.label_55
.label_53:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	call	tac_seekable
	and	al, 1
	mov	rbp, rbp
	movzx	edi, al
	nop	
	mov	dword ptr [rbp - 0x28], edi
.label_55:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jne	.label_51
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	call	close
	cmp	eax, 0
	je	.label_51
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.42
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x39], 0
.label_51:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], al
.label_52:
	nop	
	mov	al, byte ptr [rbp - 0x29]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl output
	.type output, @function
output:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x48]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x38], rsi
	sub	rcx,  qword ptr [word ptr [output.bytes_in_buffer]]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jne	.label_58
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:output.buffer
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [output.bytes_in_buffer]]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [word ptr [output.bytes_in_buffer]],  0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_61
.label_58:
	mov	rsp, rsp
	jmp	.label_60
.label_60:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_59
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:output.buffer
	mov	rsp, rsp
	mov	ecx, 1
	mov	esi, ecx
	mov	rsp, rsp
	mov	ecx, 0x2000
	mov	rsp, rsp
	mov	edx, ecx
	mov	rdi, rax
	nop	
	add	rdi,  qword ptr [word ptr [output.bytes_in_buffer]]
	mov	r8, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rsi, r8
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	rdx, r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rcx,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	call	fwrite_unlocked
	mov	qword ptr [word ptr [output.bytes_in_buffer]],  0
	mov	qword ptr [rbp - 0x30], 0x2000
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_60
.label_59:
	movabs	rax, OFFSET FLAT:output.buffer
	nop	
	add	rax,  qword ptr [word ptr [output.bytes_in_buffer]]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	add	rax,  qword ptr [word ptr [output.bytes_in_buffer]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [output.bytes_in_buffer]],  rax
.label_61:
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl tac_nonseekable
	.type tac_nonseekable, @function
tac_nonseekable:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x30]
	lea	rcx, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], edi
	mov	qword ptr [rbp - 8], rsi
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	call	copy_to_temp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_62
	nop	
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_63
.label_62:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	edi, eax
	call	tac_seekable
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
.label_63:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	nop	
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402a00

	.globl tac_seekable
	.type tac_seekable, @function
tac_seekable:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	dword ptr [rbp - 0x4c], edi
	nop	
	mov	qword ptr [rbp - 0xe8], rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xad], 1
	mov	rdx,  qword ptr [word ptr [separator]]
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 2], al
	mov	rdx,  qword ptr [word ptr [separator]]
	lea	rdi, [rdi]
	add	rdx, 1
	nop	
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rdx,  qword ptr [word ptr [match_length]]
	sub	rdx, 1
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, edi
	lea	rdi, [rdi]
	div	qword ptr [word ptr [read_size]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_64
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	mov	edi, dword ptr [rbp - 0x4c]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	lseek
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_98
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], esi
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_98:
	mov	rbp, rbp
	jmp	.label_64
.label_64:
	mov	rsp, rsp
	jmp	.label_71
.label_71:
	mov	edi, dword ptr [rbp - 0x4c]
	nop	
	mov	rsi,  qword ptr [word ptr [G_buffer]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [read_size]]
	call	safe_read
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	cl, dil
	mov	qword ptr [rbp - 0x78], rax
	cmp	rax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x95], cl
	lea	rsi, [rsi]
	jne	.label_78
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x95], al
.label_78:
	mov	al, byte ptr [rbp - 0x95]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_89
	jmp	.label_92
.label_89:
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsi,  qword ptr [word ptr [read_size]]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x4c]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	call	lseek
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_102
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], esi
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_n_style_colon
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_102:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [read_size]]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_71
.label_92:
	lea	rdi, [rdi]
	jmp	.label_84
.label_84:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [read_size]]
	jne	.label_67
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [G_buffer]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [read_size]]
	call	safe_read
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jne	.label_93
	jmp	.label_67
.label_93:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	cmp	qword ptr [rbp - 0x78], -1
	lea	rdi, [rdi]
	jne	.label_100
	jmp	.label_67
.label_100:
	mov	rax, qword ptr [rbp - 0xf8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_84
.label_67:
	nop	
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_108
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_65
.label_108:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [G_buffer]]
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rax
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [word ptr [sentinel_length]],  0
	mov	rsp, rsp
	je	.label_76
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	rsp, rsp
	add	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
.label_76:
	jmp	.label_83
.label_83:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [sentinel_length]],  0
	lea	rsi, [rsi]
	jne	.label_99
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [G_buffer]]
	sub	rdx, rsi
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdx, rcx
	sub	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x48]
	jge	.label_103
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_103:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 1
	je	.label_77
	movabs	rdi, OFFSET FLAT:compiled_separator
	nop	
	movabs	r9, OFFSET FLAT:regs
	mov	rsi,  qword ptr [word ptr [G_buffer]]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	sub	rax, 1
	mov	r8, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	rpl_re_search
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	cmp	rax, -1
	jne	.label_94
.label_77:
	nop	
	mov	rax,  qword ptr [word ptr [G_buffer]]
	nop	
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_74
.label_94:
	cmp	qword ptr [rbp - 0x88], -2
	jne	.label_104
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	call	gettext
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_104:
	mov	rax,  qword ptr [word ptr [G_buffer]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [label_72]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [label_73]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [label_72]]
	sub	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [word ptr [match_length]],  rax
	jmp	.label_74
.label_74:
	lea	rsi, [rsi]
	jmp	.label_68
.label_99:
	lea	rsi, [rsi]
	jmp	.label_80
.label_80:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	movsx	esi, byte ptr [rcx - 1]
	movsx	edi, byte ptr [rbp - 2]
	cmp	esi, edi
	mov	byte ptr [rbp - 0x89], al
	jne	.label_75
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0xc8], 0
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_91
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	strncmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
.label_91:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x89], al
.label_75:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x89]
	mov	rsp, rsp
	test	al, 1
	jne	.label_105
	mov	rbp, rbp
	jmp	.label_109
.label_105:
	jmp	.label_80
.label_109:
	jmp	.label_68
.label_68:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [G_buffer]]
	lea	rsi, [rsi]
	jae	.label_66
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_70
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [G_buffer]]
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	output
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_65
.label_70:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [G_buffer]]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax,  qword ptr [word ptr [read_size]]
	lea	rdi, [rdi]
	jbe	.label_79
	nop	
	cmp	qword ptr [word ptr [sentinel_length]],  0
	lea	rsi, [rsi]
	je	.label_88
	mov	rax,  qword ptr [word ptr [sentinel_length]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_82
.label_88:
	nop	
	mov	eax, 1
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	jmp	.label_82
.label_82:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [G_buffer_size]]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [read_size]]
	shl	rax, 1
	mov	qword ptr [word ptr [read_size]],  rax
	mov	rax,  qword ptr [word ptr [read_size]]
	lea	rsi, [rsi]
	shl	rax, 1
	add	rax,  qword ptr [word ptr [sentinel_length]]
	add	rax, 2
	mov	rsp, rsp
	mov	qword ptr [word ptr [G_buffer_size]],  rax
	mov	rax,  qword ptr [word ptr [G_buffer_size]]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x80]
	nop	
	jae	.label_101
	call	xalloc_die
.label_101:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [G_buffer]]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	rsi,  qword ptr [word ptr [G_buffer_size]]
	mov	rsp, rsp
	mov	rdi, rdx
	nop	
	call	xrealloc
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [word ptr [G_buffer]],  rax
.label_79:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [read_size]]
	nop	
	jb	.label_85
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [read_size]]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_95
.label_85:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [read_size]],  rax
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_95:
	nop	
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lseek
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_107
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 8], esi
	nop	
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_107:
	mov	rax,  qword ptr [word ptr [G_buffer]]
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [read_size]]
	mov	rsi,  qword ptr [word ptr [G_buffer]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	nop	
	call	memmove
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [G_buffer]]
	add	rax,  qword ptr [word ptr [read_size]]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	cmp	qword ptr [word ptr [sentinel_length]],  0
	mov	rbp, rbp
	je	.label_86
	nop	
	mov	rax,  qword ptr [word ptr [G_buffer]]
	add	rax,  qword ptr [word ptr [read_size]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_96
.label_86:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x38], rax
.label_96:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rsi,  qword ptr [word ptr [G_buffer]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [read_size]]
	call	safe_read
	cmp	rax,  qword ptr [word ptr [read_size]]
	mov	rbp, rbp
	je	.label_110
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x94], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xb8], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x94]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_65
.label_110:
	mov	rsp, rsp
	jmp	.label_81
.label_66:
	test	byte ptr [byte ptr [separator_ends_record]],  1
	je	.label_87
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [match_length]]
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	test	byte ptr [rbp - 0xad], 1
	mov	rbp, rbp
	je	.label_90
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	je	.label_97
.label_90:
	nop	
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	call	output
.label_97:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xad], 0
	jmp	.label_106
.label_87:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0xe0]
	nop	
	call	output
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xe0], rsi
.label_106:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [sentinel_length]],  0
	jbe	.label_69
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx,  qword ptr [word ptr [match_length]]
	nop	
	sub	rdx, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x38], rsi
.label_69:
	jmp	.label_81
.label_81:
	mov	rbp, rbp
	jmp	.label_83
.label_65:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x100
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403480

	.globl copy_to_temp
	.type copy_to_temp, @function
copy_to_temp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	r8, [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, r8
	mov	rsp, rsp
	call	temp_stream
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_112
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], -1
	jmp	.label_113
.label_112:
	lea	rsi, [rsi]
	jmp	.label_117
.label_117:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi,  qword ptr [word ptr [G_buffer]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [read_size]]
	lea	rdi, [rdi]
	call	safe_read
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_114
	mov	rbp, rbp
	jmp	.label_115
.label_114:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_111
	nop	
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	mov	qword ptr [rbp - 0x70], -1
	mov	rsp, rsp
	jmp	.label_113
.label_111:
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [G_buffer]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	je	.label_118
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.43
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	call	gettext
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	qword ptr [rbp - 0x70], -1
	nop	
	jmp	.label_113
.label_118:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_117
.label_115:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	fflush_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_116
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.43
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	nop	
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	qword ptr [rbp - 0x70], -1
	nop	
	jmp	.label_113
.label_116:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
.label_113:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl temp_stream
	.type temp_stream, @function
temp_stream:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [temp_stream.tempfile]],  0
	jne	.label_121
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.44
	call	getenv
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_128
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_122
.label_128:
	movabs	rax, OFFSET FLAT:.str.45
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_122
.label_122:
	mov	rax, qword ptr [rbp - 8]
	movabs	rsi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	mfile_name_concat
	mov	qword ptr [word ptr [temp_stream.tempfile]],  rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_125
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], 0
	mov	rsp, rsp
	jmp	.label_123
.label_125:
	mov	rdi,  qword ptr [word ptr [temp_stream.tempfile]]
	lea	rsi, [rsi]
	call	mkstemp_safer
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_119
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rsp, rsp
	jmp	.label_126
.label_119:
	movabs	rsi, OFFSET FLAT:.str.49
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x4c]
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [temp_stream.tmp_fp]],  rax
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [temp_stream.tmp_fp]],  0
	mov	rbp, rbp
	jne	.label_129
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [temp_stream.tempfile]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	edi, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [temp_stream.tempfile]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	call	unlink
	mov	dword ptr [rbp - 0x40], eax
.label_126:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [temp_stream.tempfile]]
	call	free
	mov	qword ptr [word ptr [temp_stream.tempfile]],  0
	mov	byte ptr [rbp - 0x29], 0
	nop	
	jmp	.label_123
.label_129:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [temp_stream.tempfile]]
	mov	rsi,  qword ptr [word ptr [temp_stream.tmp_fp]]
	call	record_or_unlink_tempfile
	jmp	.label_124
.label_121:
	mov	rdi,  qword ptr [word ptr [temp_stream.tmp_fp]]
	mov	rsp, rsp
	call	clearerr_unlocked
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	esi, eax
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	rdi,  qword ptr [word ptr [temp_stream.tmp_fp]]
	call	rpl_fseeko
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jl	.label_120
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [temp_stream.tmp_fp]]
	call	fileno
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	edi, eax
	call	ftruncate
	cmp	eax, 0
	nop	
	jge	.label_127
.label_120:
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.51
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [temp_stream.tempfile]]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 0
	nop	
	jmp	.label_123
.label_127:
	nop	
	jmp	.label_124
.label_124:
	mov	rax,  qword ptr [word ptr [temp_stream.tmp_fp]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [temp_stream.tempfile]]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0x29], 1
.label_123:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x70
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a70

	.globl record_or_unlink_tempfile
	.type record_or_unlink_tempfile, @function
record_or_unlink_tempfile:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	unlink
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403aa0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ad0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b00

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_130
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_132
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_130
.label_132:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_134
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_133
.label_134:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_133:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_130:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_131
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_131:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x29], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_139
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	je	.label_135
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_135
	nop	
	mov	byte ptr [rbp - 0x29], 0x2f
.label_135:
	jmp	.label_136
.label_139:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_137
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 0x2e
.label_137:
	jmp	.label_136
.label_136:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rbp - 0x29]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_141
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_140
.label_141:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x29]
	nop	
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_138
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
.label_138:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_140:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_144
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_144:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_142
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_146
.label_142:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_146:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_145
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_145
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_143
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_143:
	jmp	.label_145
.label_145:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_148
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_147
.label_148:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_147
.label_147:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404040
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_149
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_150
.label_149:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_150
.label_150:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_151
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_152
.label_151:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_152
.label_152:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404100

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_153
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_154
.label_153:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_154:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_155
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404260

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_156
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_156:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_158
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_157
.label_158:
	call	abort
.label_157:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404300
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_159
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_160
.label_159:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_160
.label_160:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_210:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_274
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_291]]
	jmp	rcx
.label_2976:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_2975:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_231
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_237
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_237:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_231
.label_231:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_248
.label_2977:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_248
.label_2978:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_262
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_262:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_277
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_295:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_282
	jmp	.label_284
.label_284:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_285
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_285:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_295
.label_282:
	mov	rbp, rbp
	jmp	.label_277
.label_277:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_248
.label_2973:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_2972:
	mov	byte ptr [rbp - 0x3e], 1
.label_2974:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_317
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_317:
	jmp	.label_320
.label_320:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_321
	jmp	.label_326
.label_326:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_256
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_321
.label_321:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_248
.label_2971:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_248
.label_274:
	call	abort
.label_248:
	mov	qword ptr [rbp - 0xd8], 0
.label_347:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_344
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_345
.label_344:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_345:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_361
	mov	rbp, rbp
	jmp	.label_171
.label_361:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_173
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_173
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_173
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_190
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_190
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_207
.label_190:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_207:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_173
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_173
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_226
	jmp	.label_182
.label_226:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_173:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_235
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_245]]
	nop	
	jmp	rcx
.label_3029:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_238
	mov	rsp, rsp
	jmp	.label_255
.label_255:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_259
	jmp	.label_182
.label_259:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_266
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_266
	nop	
	jmp	.label_267
.label_267:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_270
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_270:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_278
.label_278:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_280
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_280:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_286
.label_286:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_290
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_290:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_266:
	lea	rsi, [rsi]
	jmp	.label_298
.label_298:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_299
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_299:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_310
.label_310:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_241
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_241
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_241
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_241
	nop	
	jmp	.label_331
.label_331:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_334:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_340
.label_340:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_222
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_222:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_241
.label_241:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_348
.label_238:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_303
	mov	rbp, rbp
	jmp	.label_333
.label_303:
	jmp	.label_348
.label_348:
	jmp	.label_170
.label_3040:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_359
	mov	rbp, rbp
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_168
	jmp	.label_177
.label_359:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_180
	jmp	.label_182
.label_180:
	jmp	.label_260
.label_168:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_189
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_189
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_189
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_211
	nop	
	jmp	.label_339
.label_339:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_211
	jmp	.label_216
.label_216:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_211
	jmp	.label_223
.label_223:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_211
	jmp	.label_230
.label_230:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_306
	jmp	.label_211
.label_211:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_239
	jmp	.label_182
.label_239:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_242
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_242:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_265
.label_265:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_324
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_324:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_275
.label_275:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_195
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_195:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_271:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_305
.label_306:
	jmp	.label_305
.label_305:
	jmp	.label_189
.label_189:
	jmp	.label_260
.label_177:
	jmp	.label_260
.label_260:
	jmp	.label_170
.label_3030:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_301
.label_3031:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_301
.label_3035:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_301
.label_3033:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_198
.label_3036:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_198
.label_3032:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_198
.label_3034:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_301
.label_3041:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_318
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_323
	nop	
	jmp	.label_182
.label_323:
	lea	rsi, [rsi]
	jmp	.label_229
.label_318:
	test	byte ptr [rbp - 0x89], 1
	je	.label_332
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_332
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_332
	jmp	.label_229
.label_332:
	jmp	.label_198
.label_198:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_341
	test	byte ptr [rbp - 0x3e], 1
	je	.label_341
	jmp	.label_182
.label_341:
	mov	rsp, rsp
	jmp	.label_301
.label_301:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_343
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_246
.label_343:
	jmp	.label_170
.label_3042:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_349
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_352
	jmp	.label_357
.label_349:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_352
.label_357:
	nop	
	jmp	.label_170
.label_352:
	jmp	.label_161
.label_161:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_162
	lea	rsi, [rsi]
	jmp	.label_170
.label_162:
	nop	
	jmp	.label_172
.label_172:
	mov	byte ptr [rbp - 0x91], 1
.label_3037:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_176
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_176
	jmp	.label_182
.label_176:
	lea	rsi, [rsi]
	jmp	.label_170
.label_3039:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_184
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_309
	jmp	.label_182
.label_309:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_199
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_199
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_199:
	jmp	.label_208
.label_208:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_209
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_209:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_214
.label_214:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_219
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_219:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_227
.label_227:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_234
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_234:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_184:
	lea	rsi, [rsi]
	jmp	.label_170
.label_3038:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_170
.label_235:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_252
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_212
.label_252:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_279
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_279:
	jmp	.label_194
.label_194:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_297
	jmp	.label_302
.label_297:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_304
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_302
.label_304:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_313
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_329:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_228
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_228:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_327
	jmp	.label_335
.label_327:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_329
.label_335:
	jmp	.label_302
.label_313:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_188
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_188
	mov	qword ptr [rbp - 0xe8], 1
.label_183:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_342
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_175
	jmp	.label_354
.label_354:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_175
	jmp	.label_360
.label_360:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_175
	jmp	.label_167
.label_167:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_169
	mov	rsp, rsp
	jmp	.label_175
.label_175:
	mov	rsp, rsp
	jmp	.label_182
.label_169:
	jmp	.label_181
.label_181:
	mov	rsp, rsp
	jmp	.label_283
.label_283:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_183
.label_342:
	mov	rbp, rbp
	jmp	.label_188
.label_188:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_193
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_193:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_196
.label_196:
	lea	rsi, [rsi]
	jmp	.label_201
.label_201:
	jmp	.label_203
.label_203:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_194
.label_302:
	jmp	.label_212
.label_212:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_213
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_221
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_221
.label_213:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_200:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_236
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_236
	jmp	.label_240
.label_240:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_186
	jmp	.label_182
.label_186:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_244
	test	byte ptr [rbp - 0x42], 1
	jne	.label_244
	lea	rdi, [rdi]
	jmp	.label_253
.label_253:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_289
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_289:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_205
.label_205:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_268
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_268:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_276
.label_276:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_191
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_244:
	jmp	.label_287
.label_287:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_288
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_288:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_312
.label_312:
	jmp	.label_294
.label_294:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_296
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_296:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_311
.label_311:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_315
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_315:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_322
.label_236:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_330
	lea	rdi, [rdi]
	jmp	.label_336
.label_336:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_338:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_330:
	nop	
	jmp	.label_322
.label_322:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_325
	jmp	.label_346
.label_325:
	lea	rsi, [rsi]
	jmp	.label_350
.label_350:
	test	byte ptr [rbp - 0x42], 1
	je	.label_351
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_351
	lea	rsi, [rsi]
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_356
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_356:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_164
.label_164:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_174
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_351:
	nop	
	jmp	.label_187
.label_187:
	mov	rsp, rsp
	jmp	.label_264
.label_264:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_192
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_192:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_200
.label_346:
	mov	rsp, rsp
	jmp	.label_229
.label_221:
	lea	rsi, [rsi]
	jmp	.label_170
.label_170:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_251
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_217
.label_251:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_220
.label_217:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_220
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_224
.label_220:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_224
	mov	rsp, rsp
	jmp	.label_229
.label_224:
	nop	
	jmp	.label_246
.label_246:
	jmp	.label_249
.label_249:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_232
	jmp	.label_182
.label_232:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_254
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_254
	lea	rdi, [rdi]
	jmp	.label_261
.label_261:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_263
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_263:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_163
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_163:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_281
.label_281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_269
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_254:
	jmp	.label_204
.label_204:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_293
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_293:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_300
.label_300:
	nop	
	jmp	.label_229
.label_229:
	jmp	.label_308
.label_308:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_197
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_197
	lea	rdi, [rdi]
	jmp	.label_314
.label_314:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_316
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_316:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_307
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_307:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_197:
	jmp	.label_337
.label_337:
	nop	
	jmp	.label_179
.label_179:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_185
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_185:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_257
	mov	byte ptr [rbp - 0xb7], 0
.label_257:
	mov	rbp, rbp
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_347
.label_171:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_353
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_353
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_353
	nop	
	jmp	.label_182
.label_353:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_166
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_166
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_166
	test	byte ptr [rbp - 0xb7], 1
	je	.label_178
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_202
.label_178:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_206
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_206
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_210
.label_206:
	jmp	.label_215
.label_215:
	mov	rbp, rbp
	jmp	.label_166
.label_166:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_218
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_218
	mov	rbp, rbp
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_225
	lea	rdi, [rdi]
	jmp	.label_328
.label_328:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_233
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_233:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_250
.label_225:
	jmp	.label_218
.label_218:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_258
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_258:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_202
.label_182:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_273
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_273
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_273:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_202:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f10

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_362
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_363
.label_362:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_363
.label_363:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_364
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_364:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_369:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_368
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_369
.label_368:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_367
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_365]],  rax
.label_367:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_366
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_366:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406240

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_375
	call	abort
.label_375:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_370
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_371
	call	xalloc_die
.label_371:
	test	byte ptr [rbp - 0x51], 1
	je	.label_372
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_376
.label_372:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_376:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_374
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_365]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_374:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_370:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_373
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_377
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_377:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_373:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406570

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065e0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406620

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_378
	call	abort
.label_378:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406720

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406790

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067d0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406810

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068c0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406900

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406930
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406970

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a50

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406aa0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b40
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b90
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406c30
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c70

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cb0
	.globl quote
	.type quote, @function
quote:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cf0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_381
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_379
.label_381:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_382
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_379
.label_382:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_380
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_379
.label_380:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_379:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e30

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
.label_390:
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	call	read
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_383
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_389
.label_383:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_384
	lea	rdi, [rdi]
	jmp	.label_390
.label_384:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_387
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jae	.label_387
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_388
.label_387:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_389
.label_388:
	jmp	.label_386
.label_386:
	jmp	.label_385
.label_385:
	mov	rsp, rsp
	jmp	.label_390
.label_389:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f20

	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	mkstemp
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rsi, [rsi]
	call	fd_safer
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f60
	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	mkostemp
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	fd_safer_flag
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406fb0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jg	.label_391
	cmp	dword ptr [rbp - 4], 2
	jg	.label_391
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_391:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407040

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_392
	movabs	rsi, OFFSET FLAT:.str_4
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_395
.label_392:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_395:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_396
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_394]]
	jmp	rcx
.label_3000:
	jmp	.label_393
.label_3001:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_393
.label_3002:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_393
.label_3003:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_393
.label_3004:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_393
.label_3005:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_393
.label_3006:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_393
.label_3007:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_393
.label_3008:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_393
.label_3009:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_393
.label_396:
	movabs	rdi, OFFSET FLAT:.str.13_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
.label_393:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407880
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_397:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_398
	mov	rbp, rbp
	jmp	.label_399
.label_399:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_397
.label_398:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407930

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_404:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_406
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_405
.label_406:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_405:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_400:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_403
	mov	rsp, rsp
	jmp	.label_401
.label_403:
	jmp	.label_402
.label_402:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_404
.label_401:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a90

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_407
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_407:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407c50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407d00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_408
	mov	rbp, rbp
	call	xalloc_die
.label_408:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_409
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_409
	lea	rdi, [rdi]
	call	xalloc_die
.label_409:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_410
	mov	rsp, rsp
	call	xalloc_die
.label_410:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_411
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_411
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_413
.label_411:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_412
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_412
	lea	rsi, [rsi]
	call	xalloc_die
.label_412:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_413:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ef0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_414
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_416
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_416:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_418
	call	xalloc_die
.label_418:
	lea	rsi, [rsi]
	jmp	.label_417
.label_414:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_415
	call	xalloc_die
.label_415:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_417:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408020

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408050
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408090
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_419
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_420
.label_419:
	lea	rsi, [rsi]
	call	xalloc_die
.label_420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408150

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4081a0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408200

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408260

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408270

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	dword ptr [rbp - 4], esi
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	set_binary_mode
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_421
	call	xset_binary_mode_error
.label_421:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4082b0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_422
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_422
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_422
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_423
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_424
.label_423:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_424
.label_422:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_424:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083c0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_425
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_425:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_426
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_426
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_426
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_427
.label_426:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_427:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4084b0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rdx,  qword ptr [word ptr [rpl_re_syntax_options]]
	and	rdx, 0x2000000
	mov	rbp, rbp
	cmp	rdx, 0
	setne	al
	xor	al, 0xff
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	al, cl
	mov	r8b, byte ptr [rdx + 0x38]
	and	al, 1
	shl	al, 4
	and	r8b, 0xef
	lea	rsi, [rsi]
	or	r8b, al
	mov	byte ptr [rdx + 0x38], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, byte ptr [rdx + 0x38]
	mov	rbp, rbp
	and	al, 0x7f
	lea	rdi, [rdi]
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rsi, [rsi]
	call	re_compile_internal
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	jne	.label_429
	nop	
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_428
.label_429:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_428:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085a0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0xd8], rsi
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rcx
	nop	
	mov	dword ptr [rbp - 8], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf7
	nop	
	mov	byte ptr [rcx + 0x38], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xbf
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x38], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xdf
	mov	byte ptr [rcx + 0x38], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xfe
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x38], al
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf9
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 8], 0xe8
	setb	al
	and	al, 1
	movzx	r8d, al
	mov	rbp, rbp
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_437
	mov	eax, 0xe8
	mov	rsp, rsp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_432
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_430
.label_432:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0xe8
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_437:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0xe8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xb8]
	call	init_dfa
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0xc1], dl
	mov	rbp, rbp
	jne	.label_434
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], cl
	jmp	.label_434
.label_434:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_433
	mov	dword ptr [rbp - 8], 0xc
.label_433:
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_440
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	free_dfa_content
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_430
.label_440:
	lea	rax, [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	and	rdi, 0x400000
	cmp	rdi, 0
	setne	r8b
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	and	r8b, 1
	nop	
	movzx	r8d, r8b
	lea	rdi, [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	call	re_string_construct
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	je	.label_439
	nop	
	jmp	.label_431
.label_431:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free_workarea_compile
	lea	rdi, [rbp - 0xb0]
	mov	rsp, rsp
	call	re_string_destruct
	mov	rdi, qword ptr [rbp - 0x18]
	call	free_dfa_content
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_430
.label_439:
	lea	rdi, [rbp - 0xb0]
	lea	rcx, [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	parse
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x68], 0
	lea	rdi, [rdi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_438
	jmp	.label_431
.label_438:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	analyze
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	mov	rsp, rsp
	movsxd	rdi, eax
	cmp	rdi, 0
	mov	rbp, rbp
	je	.label_441
	lea	rdi, [rdi]
	jmp	.label_431
.label_441:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	nop	
	je	.label_436
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_436
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_436
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	optimize_utf8
.label_436:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	create_initial_state
	mov	dword ptr [rbp - 8], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xb0]
	lea	rdi, [rdi]
	call	re_string_destruct
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_435
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], 0
.label_435:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_430:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0xe0
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a50
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a80

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	memset
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x50]
	je	.label_444
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_444:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	je	.label_443
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_443:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x60]
	nop	
	je	.label_442
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
.label_442:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 0xf7
	nop	
	or	dl, 8
	mov	byte ptr [rcx + 0x38], dl
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bb0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x280
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x248], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	cmp	dword ptr [rdx + 0xb4], 1
	nop	
	mov	byte ptr [rbp - 0xaa], cl
	jne	.label_480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	rax, 0x400000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	setne	cl
	mov	byte ptr [rbp - 0xaa], cl
.label_480:
	mov	al, byte ptr [rbp - 0xaa]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xa9], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x220], 0
.label_473:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x220]
	mov	rcx, qword ptr [rbp - 0x248]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x220]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x248]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x250], rax
	mov	rax, qword ptr [rbp - 0x250]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	cmp	dword ptr [rbp - 4], 1
	jne	.label_478
	mov	rax, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0xa9]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	movzx	edi, byte ptr [rdx]
	mov	qword ptr [rbp - 0x38], rax
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x206], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1e0], edi
	nop	
	movsxd	rax, dword ptr [rbp - 0x1e0]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x206], 1
	je	.label_488
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1e0]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], 1
.label_488:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_450
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_450
	mov	rbp, rbp
	lea	rax, [rbp - 0x240]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x250]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], dl
.label_454:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x250]
	add	rdx, 1
	mov	qword ptr [rbp - 0x250], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], cl
	mov	rsp, rsp
	jae	.label_445
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], cl
	nop	
	jne	.label_445
	mov	rax, qword ptr [rbp - 0x250]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x15
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], sil
.label_445:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_483
	jmp	.label_469
.label_483:
	nop	
	mov	rax, qword ptr [rbp - 0x250]
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], dl
	jmp	.label_454
.label_469:
	lea	rdi, [rbp - 0x5c]
	lea	rax, [rbp - 0x98]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x240]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 8
	mov	rbp, rbp
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rdi
	lea	rdi, [rdi]
	mov	rdi, r8
	nop	
	mov	qword ptr [rbp - 0x1f0], rcx
	mov	qword ptr [rbp - 0x78], rax
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x1f0]
	nop	
	sub	rax, rcx
	mov	rdi, qword ptr [rbp - 0x1e8]
	nop	
	mov	rsi, rcx
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	call	rpl_mbrtowc
	lea	rcx, [rbp - 0x240]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rbp, rbp
	cmp	rax, rdx
	jne	.label_463
	mov	rsp, rsp
	lea	rdi, [rbp - 0x240]
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x228], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	towlower
	lea	rdx, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x228]
	lea	rsi, [rsi]
	mov	esi, eax
	call	wcrtomb
	nop	
	cmp	rax, -1
	je	.label_463
	mov	rax, qword ptr [rbp - 0x270]
	movzx	ecx, byte ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0xb8], rax
	mov	byte ptr [rbp - 0x1da], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1cc], ecx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1cc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1da], 1
	lea	rdi, [rdi]
	je	.label_476
	mov	edi, dword ptr [rbp - 0x1cc]
	mov	rbp, rbp
	call	tolower
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	byte ptr [rdx + rcx], 1
.label_476:
	mov	rsp, rsp
	jmp	.label_463
.label_463:
	jmp	.label_450
.label_450:
	lea	rsi, [rsi]
	jmp	.label_452
.label_478:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 3
	lea	rdi, [rdi]
	jne	.label_453
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x254], 0
.label_484:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_459
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x250]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], 0
.label_468:
	cmp	dword ptr [rbp - 0x8c], 0x40
	nop	
	jge	.label_475
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x268], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x268]
	mov	rbp, rbp
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_464
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x270]
	nop	
	mov	cl, byte ptr [rbp - 0xa9]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x254]
	mov	qword ptr [rbp - 0x260], rax
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xab], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x204], edx
	nop	
	movsxd	rax, dword ptr [rbp - 0x204]
	mov	rsi, qword ptr [rbp - 0x260]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 1
	nop	
	test	byte ptr [rbp - 0xab], 1
	lea	rsi, [rsi]
	je	.label_487
	nop	
	mov	edi, dword ptr [rbp - 0x204]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x260]
	mov	byte ptr [rdx + rcx], 1
.label_487:
	jmp	.label_464
.label_464:
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x254]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	mov	rsp, rsp
	jmp	.label_468
.label_475:
	jmp	.label_479
.label_479:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_484
.label_459:
	jmp	.label_465
.label_453:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 6
	mov	rbp, rbp
	jne	.label_482
	mov	rax, qword ptr [rbp - 0x250]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_457
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	mov	rsp, rsp
	jne	.label_449
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_449
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_457
.label_449:
	mov	byte ptr [rbp - 0x229], 0
.label_462:
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x229]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x218]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8d, 8
	mov	rsp, rsp
	mov	r9d, r8d
	nop	
	mov	r10, rcx
	mov	qword ptr [rbp - 0x200], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x40], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x200]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	jne	.label_458
	nop	
	mov	rax, qword ptr [rbp - 0x270]
	movzx	ecx, byte ptr [rbp - 0x229]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	mov	byte ptr [rbp - 0x205], 0
	mov	dword ptr [rbp - 0xc], ecx
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x205], 1
	mov	rbp, rbp
	je	.label_486
	mov	edi, dword ptr [rbp - 0xc]
	call	tolower
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], 1
.label_486:
	lea	rdi, [rdi]
	jmp	.label_458
.label_458:
	mov	rsp, rsp
	jmp	.label_460
.label_460:
	mov	al, byte ptr [rbp - 0x229]
	add	al, 1
	mov	byte ptr [rbp - 0x229], al
	lea	rdi, [rdi]
	movzx	ecx, al
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_462
	jmp	.label_466
.label_457:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], 0
.label_477:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jge	.label_470
	mov	rsp, rsp
	lea	rax, [rbp - 0x28]
	lea	rdi, [rbp - 0x1c0]
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rdi
	mov	rbp, rbp
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	esi, dword ptr [rdx + rax*4]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_446
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0xa9]
	movzx	edx, byte ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x274], edx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x274]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	je	.label_471
	mov	edi, dword ptr [rbp - 0x274]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rdx + rcx], 1
.label_471:
	mov	rsp, rsp
	jmp	.label_446
.label_446:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_472
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_472
	lea	rdi, [rbp - 0x1c0]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	mov	qword ptr [rbp - 0x1d8], rdi
	mov	rsp, rsp
	mov	edi, edx
	lea	rdi, [rdi]
	call	towlower
	lea	rdx, [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_447
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x270]
	movzx	ecx, byte ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x210], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d9], 0
	nop	
	mov	dword ptr [rbp - 0x258], ecx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rbp - 0x210]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1d9], 1
	lea	rsi, [rsi]
	je	.label_451
	mov	edi, dword ptr [rbp - 0x258]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x210]
	nop	
	mov	byte ptr [rdx + rcx], 1
.label_451:
	lea	rsi, [rsi]
	jmp	.label_447
.label_447:
	nop	
	jmp	.label_472
.label_472:
	mov	rbp, rbp
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x1f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rbp, rbp
	jmp	.label_477
.label_470:
	jmp	.label_466
.label_466:
	jmp	.label_455
.label_482:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 5
	mov	rbp, rbp
	je	.label_481
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 7
	je	.label_481
	cmp	dword ptr [rbp - 4], 2
	mov	rsp, rsp
	jne	.label_485
.label_481:
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	eax, 0x100
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x270]
	call	memset
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 2
	jne	.label_448
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	lea	rdi, [rdi]
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_448:
	mov	rbp, rbp
	jmp	.label_456
.label_485:
	jmp	.label_455
.label_455:
	jmp	.label_465
.label_465:
	mov	rsp, rsp
	jmp	.label_452
.label_452:
	jmp	.label_461
.label_461:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x220]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x220], rax
	jmp	.label_473
.label_456:
	add	rsp, 0x280
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409680
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x100
	mov	ecx, eax
	mov	eax, 0x10102c6
	nop	
	mov	r8d, eax
	mov	eax, 0x3b2fc
	mov	r9d, eax
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	dword ptr [rbp - 0x34], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	r8, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], 0
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_491
	mov	dword ptr [rbp - 0x20], 0xc
	nop	
	jmp	.label_492
.label_491:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	eax, 0x400000
	lea	rdi, [rdi]
	mov	edx, eax
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	and	eax, 2
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	cmovne	rcx, rdx
	or	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_494
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	and	rax, 0xffffffffffffffbf
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	or	rax, 0x100
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x38], cl
	jmp	.label_495
.label_494:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	mov	rsp, rsp
	mov	byte ptr [rax + 0x38], cl
.label_495:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	and	eax, 8
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	cl, al
	mov	sil, byte ptr [rdx + 0x38]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	shl	cl, 4
	nop	
	and	sil, 0xef
	lea	rsi, [rsi]
	or	sil, cl
	mov	byte ptr [rdx + 0x38], sil
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	call	strlen
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	call	re_compile_internal
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0x10
	jne	.label_489
	mov	dword ptr [rbp - 0x1c], 8
.label_489:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	nop	
	je	.label_493
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_490
.label_493:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax + 0x20], 0
.label_490:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
.label_492:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4098f0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x14], 0x11
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x15], al
	jl	.label_496
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	setge	cl
	mov	byte ptr [rbp - 0x15], cl
.label_496:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_498
	lea	rdi, [rdi]
	call	abort
.label_498:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_499
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	seta	cl
	nop	
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_497
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_497:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	memcpy
.label_499:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409a40
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	lea	rsi, [rsi]
	cmp	rdi, 0
	je	.label_500
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	free_dfa_content
.label_500:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], 0
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b10

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rdi], 0
	je	.label_504
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
.label_514:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_513
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	call	free_token
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_514
.label_513:
	nop	
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_507:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_509
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_503
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_503:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x38], 0
	je	.label_501
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_501:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	je	.label_508
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
.label_508:
	mov	rbp, rbp
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_507
.label_509:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_505
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_512:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_511
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	qword ptr [rbp - 8], 0
.label_510:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_515
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	free_state
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_510
.label_515:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_512
.label_511:
	lea	rsi, [rsi]
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x78], rax
	je	.label_502
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rdi, rax
	call	free
.label_502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409e30
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	and	r8d, 0xfffffff8
	nop	
	cmp	r8d, 0
	je	.label_518
	nop	
	mov	dword ptr [rbp - 8], 2
	mov	rbp, rbp
	jmp	.label_519
.label_518:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 4
	cmp	eax, 0
	je	.label_517
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_521
.label_517:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x30]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_521:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 4
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_520
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [rbp - 0x50]
	mov	r10, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rcx, r8
	mov	r8, r9
	lea	rdi, [rdi]
	mov	r9, r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], eax
	call	re_search_internal
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_516
.label_520:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rbp - 0x34]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	nop	
	mov	dword ptr [rbp - 4], eax
.label_516:
	cmp	dword ptr [rbp - 4], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 8], ecx
.label_519:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fe0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x290
	mov	eax, dword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	r14d, 0x100
	mov	r15d, r14d
	lea	r12, [rbp - 0x128]
	mov	qword ptr [rbp - 0x188], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rdx
	mov	qword ptr [rbp - 0x200], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x228], r9
	mov	qword ptr [rbp - 0x240], r11
	nop	
	mov	qword ptr [rbp - 0x170], r10
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x208], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], -1
	mov	rdi, r12
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r15
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	mov	rcx, qword ptr [rbp - 0x188]
	cmp	qword ptr [rcx + 0x20], 0
	lea	rdi, [rdi]
	je	.label_554
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	nop	
	shr	cl, 3
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_554
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_554
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_554
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_584
.label_554:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_584
.label_584:
	nop	
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x1a8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x240]
	nop	
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	jbe	.label_597
	mov	rax, qword ptr [rbp - 0x240]
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	add	rcx, 1
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x270], rax
	mov	rbp, rbp
	jmp	.label_613
.label_597:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rcx
	mov	rbp, rbp
	jmp	.label_613
.label_613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x270]
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x240]
	mov	rsp, rsp
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1e9], cl
	lea	rdi, [rdi]
	je	.label_536
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_536
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_536
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_536
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1e9], cl
.label_536:
	mov	al, byte ptr [rbp - 0x1e9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_561
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	nop	
	jmp	.label_568
.label_561:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_572
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_572
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_585
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 7
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_572
.label_585:
	cmp	qword ptr [rbp - 0x200], 0
	mov	rbp, rbp
	je	.label_604
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_604
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	lea	rsi, [rsi]
	jmp	.label_568
.label_604:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x200], 0
.label_572:
	mov	al, 1
	cmp	qword ptr [rbp - 0x240], 0
	mov	byte ptr [rbp - 0x1f1], al
	lea	rsi, [rsi]
	jne	.label_616
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f1], cl
.label_616:
	mov	al, byte ptr [rbp - 0x1f1]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x128]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x149], al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	add	rcx, 1
	mov	r8, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	r8, qword ptr [r8 + 0x28]
	mov	r9, qword ptr [rbp - 0x188]
	mov	r9, qword ptr [r9 + 0x18]
	and	r9, 0x400000
	cmp	r9, 0
	setne	al
	mov	r9, qword ptr [rbp - 0x208]
	mov	r10, rsp
	mov	qword ptr [r10], r9
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	r9d, al
	mov	rbp, rbp
	call	re_string_allocate
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	setne	r11b
	mov	rsp, rsp
	and	r11b, 1
	mov	rbp, rbp
	movzx	eax, r11b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_544
	jmp	.label_523
.label_544:
	lea	rdi, [rbp - 0x128]
	mov	rax, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0x228]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9b], cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, rax
	call	match_ctx_init
	mov	dword ptr [rbp - 0x294], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x294], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_579
	lea	rsi, [rsi]
	jmp	.label_523
.label_579:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 1
	nop	
	ja	.label_593
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0xb0]
	lea	rdi, [rdi]
	shr	cl, 1
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_599
.label_593:
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	cmp	rax, qword ptr [rbp - 0xe8]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_609
	mov	dword ptr [rbp - 0x294], 0xc
	lea	rdi, [rdi]
	jmp	.label_523
.label_609:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_625
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_523
.label_625:
	jmp	.label_528
.label_599:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], 0
.label_528:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x238], rdi
	mov	r8d, dword ptr [rbp - 0x1dc]
	and	r8d, 1
	lea	rdi, [rdi]
	cmp	r8d, 0
	mov	rbp, rbp
	cmovne	edx, esi
	mov	dword ptr [rbp - 0xb8], edx
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rdi, qword ptr [rbp - 0x200]
	nop	
	cmovl	eax, ecx
	mov	dword ptr [rbp - 0x18c], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rdi, qword ptr [rbp - 0x200]
	mov	rsp, rsp
	jge	.label_531
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x230], rax
	jmp	.label_557
.label_531:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x230], rax
.label_557:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x290], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	jge	.label_553
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	mov	qword ptr [rbp - 0x250], rax
	jmp	.label_574
.label_553:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x250], rax
.label_574:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x250]
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0x208]
	cmp	dword ptr [rax + 0xb4], 1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x14a], cl
	nop	
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_581
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c1], al
	jne	.label_596
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x219], al
	jne	.label_602
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1d8], 0
	setne	al
	mov	byte ptr [rbp - 0x219], al
.label_602:
	mov	al, byte ptr [rbp - 0x219]
	lea	rsi, [rsi]
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c1], al
.label_596:
	nop	
	mov	al, byte ptr [rbp - 0x1c1]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, 1
	mov	rbp, rbp
	mov	esi, 2
	lea	rsi, [rsi]
	mov	edi, 4
	test	al, 1
	mov	r8d, ecx
	cmovne	r8d, edi
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x200]
	lea	rsi, [rsi]
	cmp	r9, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	edi, ecx
	cmovle	edi, esi
	mov	rbp, rbp
	or	r8d, edi
	cmp	qword ptr [rbp - 0x1d8], 0
	cmovne	ecx, edx
	mov	rbp, rbp
	or	r8d, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], r8d
	jmp	.label_530
.label_581:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	jmp	.label_530
.label_530:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1f8], eax
.label_588:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x294], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jl	.label_542
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x238]
	jge	.label_550
.label_542:
	mov	rsp, rsp
	jmp	.label_523
.label_550:
	nop	
	mov	eax, dword ptr [rbp - 0x1f8]
	mov	rbp, rbp
	add	eax, -4
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	sub	eax, 4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rcx
	nop	
	mov	dword ptr [rbp - 0x12c], eax
	mov	rsp, rsp
	ja	.label_603
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_563]]
	jmp	rcx
.label_3046:
	jmp	.label_527
.label_3045:
	mov	rbp, rbp
	jmp	.label_570
.label_570:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x238]
	cmp	rdx, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	setl	sil
	and	sil, 1
	movzx	eax, sil
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x271], cl
	je	.label_573
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1d8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1a8]
	nop	
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x271], sil
.label_573:
	mov	al, byte ptr [rbp - 0x271]
	test	al, 1
	jne	.label_605
	jmp	.label_607
.label_605:
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_570
.label_607:
	mov	rbp, rbp
	jmp	.label_547
.label_3044:
	mov	rbp, rbp
	jmp	.label_543
.label_543:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x238]
	cmp	rdx, qword ptr [rbp - 0x168]
	setl	sil
	lea	rsi, [rsi]
	and	sil, 1
	lea	rdi, [rdi]
	movzx	eax, sil
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x209], cl
	lea	rdi, [rdi]
	je	.label_525
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x1d0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1a8]
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x209], sil
.label_525:
	mov	al, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_534
	mov	rbp, rbp
	jmp	.label_539
.label_534:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_543
.label_539:
	mov	rbp, rbp
	jmp	.label_547
.label_547:
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_549
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_556
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x298], eax
	jmp	.label_560
.label_556:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x298], edx
.label_560:
	mov	eax, dword ptr [rbp - 0x298]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1d8], 0
	je	.label_571
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rcx, qword ptr [rbp - 0x1d8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x19c], edx
	lea	rsi, [rsi]
	jmp	.label_578
.label_571:
	mov	eax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x19c], eax
.label_578:
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1a8]
	cmp	byte ptr [rdx + rcx], 0
	mov	rbp, rbp
	jne	.label_577
	mov	rbp, rbp
	jmp	.label_523
.label_577:
	jmp	.label_549
.label_549:
	lea	rsi, [rsi]
	jmp	.label_527
.label_3043:
	jmp	.label_540
.label_540:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	jl	.label_538
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	jl	.label_611
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x244], eax
	jmp	.label_615
.label_611:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x244], edx
.label_615:
	mov	eax, dword ptr [rbp - 0x244]
	mov	dword ptr [rbp - 0x1f0], eax
	cmp	qword ptr [rbp - 0x1d8], 0
	lea	rdi, [rdi]
	je	.label_623
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x248], edx
	jmp	.label_626
.label_623:
	mov	eax, dword ptr [rbp - 0x1f0]
	nop	
	mov	dword ptr [rbp - 0x248], eax
.label_626:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x248]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_529
	lea	rdi, [rdi]
	jmp	.label_538
.label_529:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x238], rax
	jmp	.label_540
.label_538:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jge	.label_545
	jmp	.label_523
.label_545:
	nop	
	jmp	.label_527
.label_603:
	lea	rsi, [rsi]
	jmp	.label_524
.label_524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	sub	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x2a8], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xf0]
	setae	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_592
	lea	rdi, [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x238]
	mov	edx, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x294], eax
	nop	
	cmp	dword ptr [rbp - 0x294], 0
	mov	rbp, rbp
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_575
	jmp	.label_523
.label_575:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	sub	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x2a8], rax
.label_592:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_590
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_598
.label_590:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rcx, qword ptr [rbp - 0x120]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], edx
.label_598:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x254]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_608
	mov	rsp, rsp
	jmp	.label_618
.label_608:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x290]
	mov	rsp, rsp
	jl	.label_619
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x168]
	jle	.label_601
.label_619:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x294], 1
	nop	
	jmp	.label_523
.label_601:
	jmp	.label_524
.label_618:
	nop	
	jmp	.label_527
.label_527:
	nop	
	lea	rdi, [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x238]
	mov	edx, dword ptr [rbp - 0x1dc]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rsp, rsp
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_537
	lea	rdi, [rdi]
	jmp	.label_523
.label_537:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	jne	.label_548
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0xf8]
	nop	
	je	.label_548
	mov	rax, qword ptr [rbp - 0x118]
	cmp	dword ptr [rax], -1
	jne	.label_548
	jmp	.label_558
.label_548:
	mov	dword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	al, byte ptr [rbp - 0x149]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x200]
	cmp	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	byte ptr [rbp - 0x139], al
	nop	
	jg	.label_559
	lea	rax, [rbp - 0x238]
	mov	qword ptr [rbp - 0x268], rax
	lea	rdi, [rdi]
	jmp	.label_569
.label_559:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x268], rcx
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x268]
	lea	rcx, [rbp - 0x128]
	nop	
	mov	dl, byte ptr [rbp - 0x139]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x128]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x160], rcx
	call	check_matching
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1e8], -1
	lea	rdi, [rdi]
	je	.label_555
	cmp	qword ptr [rbp - 0x1e8], -2
	sete	al
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_600
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_523
.label_600:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	shr	cl, 4
	nop	
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_612
	cmp	qword ptr [rbp - 0x240], 1
	ja	.label_620
.label_612:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	je	.label_624
.label_620:
	lea	rdi, [rbp - 0x128]
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x218], rax
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1e8]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_624:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	jne	.label_532
	nop	
	cmp	qword ptr [rbp - 0x240], 1
	jbe	.label_532
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_546
.label_532:
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_552
.label_546:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x128]
	mov	rsp, rsp
	call	prune_impossible_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	nop	
	jne	.label_562
	jmp	.label_566
.label_562:
	nop	
	cmp	dword ptr [rbp - 0x294], 1
	mov	rbp, rbp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_567
	mov	rbp, rbp
	jmp	.label_523
.label_567:
	mov	qword ptr [rbp - 0x1e8], -1
	jmp	.label_576
.label_552:
	jmp	.label_566
.label_576:
	lea	rdi, [rdi]
	jmp	.label_583
.label_583:
	nop	
	jmp	.label_555
.label_555:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x128]
	mov	rbp, rbp
	call	match_ctx_clean
.label_558:
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	lea	rsi, [rsi]
	jmp	.label_588
.label_566:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 0
	jbe	.label_586
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 1
.label_617:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_606
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	jmp	.label_617
.label_606:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	mov	dl, byte ptr [rax + 0x38]
	nop	
	shr	dl, 4
	mov	rsp, rsp
	and	dl, 1
	nop	
	movzx	esi, dl
	mov	rbp, rbp
	cmp	esi, 0
	mov	rsp, rsp
	jne	.label_587
	cmp	qword ptr [rbp - 0x240], 1
	lea	rdi, [rdi]
	jbe	.label_587
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x240]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x208]
	mov	r9b, byte ptr [r8 + 0xb0]
	lea	rdi, [rdi]
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	eax, r9b
	cmp	eax, 0
	mov	qword ptr [rbp - 0x2a0], rsi
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x280], rdx
	mov	byte ptr [rbp - 0x285], cl
	je	.label_541
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x285], cl
.label_541:
	mov	al, byte ptr [rbp - 0x285]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x128]
	and	al, 1
	nop	
	movzx	r8d, al
	nop	
	lea	rsi, [rbp - 0x128]
	nop	
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rdx, qword ptr [rbp - 0x280]
	mov	r9, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r9
	call	set_regs
	nop	
	mov	dword ptr [rbp - 0x294], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x294], 0
	setne	r10b
	mov	rbp, rbp
	and	r10b, 1
	nop	
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_582
	lea	rsi, [rsi]
	jmp	.label_523
.label_582:
	jmp	.label_587
.label_587:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], 0
.label_594:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_533
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	cmp	qword ptr [rax], -1
	je	.label_564
	movzx	eax, byte ptr [rbp - 0x9c]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_614
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	jne	.label_621
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x260], rax
	lea	rdi, [rdi]
	jmp	.label_627
.label_621:
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x260], rax
.label_627:
	mov	rax, qword ptr [rbp - 0x260]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xf8]
	jne	.label_589
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	jmp	.label_551
.label_589:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x1b0], rax
.label_551:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
.label_614:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_564:
	lea	rsi, [rsi]
	jmp	.label_591
.label_591:
	nop	
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_594
.label_533:
	mov	qword ptr [rbp - 0x180], 0
.label_610:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	cmp	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	jge	.label_622
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rax
	lea	rsi, [rsi]
	jmp	.label_610
.label_622:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0xe0], 0
	lea	rsi, [rsi]
	je	.label_565
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 0
.label_580:
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_526
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x180]
	nop	
	je	.label_535
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	add	rcx, 1
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x170]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	add	rcx, 1
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
.label_535:
	mov	rsp, rsp
	jmp	.label_522
.label_522:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_580
.label_526:
	jmp	.label_565
.label_565:
	jmp	.label_586
.label_586:
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_595
	lea	rdi, [rbp - 0x128]
	call	match_ctx_free
.label_595:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x128]
	call	re_string_destruct
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x294]
	mov	dword ptr [rbp - 0x284], eax
.label_568:
	mov	eax, dword ptr [rbp - 0x284]
	add	rsp, 0x290
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7b0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, eax
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], r8
	mov	r8, r9
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	mov	dword ptr [rbp - 0x14], eax
	nop	
	call	re_search_stub
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b830

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, byte ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	nop	
	mov	r11b, 1
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x98], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], r10
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x8d], al
	nop	
	mov	dword ptr [rbp - 0x9c], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x98]
	add	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], r11b
	lea	rdi, [rdi]
	jl	.label_639
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	setg	cl
	mov	byte ptr [rbp - 0x19], cl
.label_639:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_648
	mov	qword ptr [rbp - 0x50], -1
	mov	rsp, rsp
	jmp	.label_652
.label_648:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x71], al
	lea	rdi, [rdi]
	jl	.label_654
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rbp - 0x61], cl
	nop	
	jg	.label_632
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x98]
	setl	cl
	mov	byte ptr [rbp - 0x61], cl
.label_632:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x61]
	mov	byte ptr [rbp - 0x71], al
.label_654:
	mov	al, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_646
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_630
.label_646:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x62], al
	lea	rdi, [rdi]
	jl	.label_653
	nop	
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jge	.label_633
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x30]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_633:
	mov	al, byte ptr [rbp - 1]
	nop	
	mov	byte ptr [rbp - 0x62], al
.label_653:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_644
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_644:
	jmp	.label_630
.label_630:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 2
	mov	rbp, rbp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	dil, byte ptr [rsi + 0x38]
	mov	rsp, rsp
	shr	dil, 5
	nop	
	and	dil, 1
	nop	
	movzx	r8d, dil
	cmp	r8d, 0
	mov	r8d, eax
	cmovne	r8d, edx
	mov	rbp, rbp
	or	r8d, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], r8d
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 6
	and	dil, 1
	movzx	edx, dil
	cmp	edx, 0
	mov	rsp, rsp
	cmovne	eax, ecx
	or	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	cmp	rsi, qword ptr [rbp - 0x30]
	jge	.label_628
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_628
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_628
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x54], eax
.label_628:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	lea	rdi, [rdi]
	mov	eax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_645
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_645:
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_656
	mov	qword ptr [rbp - 0x88], 1
	jmp	.label_631
.label_656:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	mov	sil, byte ptr [rdx + 0x38]
	shr	sil, 1
	and	sil, 3
	mov	rsp, rsp
	movzx	eax, sil
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_636
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	setbe	dl
	mov	byte ptr [rbp - 0x41], dl
.label_636:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_651
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_655
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x88], 1
.label_655:
	lea	rsi, [rsi]
	jmp	.label_647
.label_651:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_647:
	jmp	.label_631
.label_631:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_629
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], -2
	jmp	.label_640
.label_629:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11d, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], r10
	nop	
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	mov	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0
	mov	rsp, rsp
	je	.label_641
	lea	rdi, [rdi]
	mov	eax, 0xfffffffe
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	cmp	dword ptr [rbp - 0x8c], 1
	mov	rbp, rbp
	cmove	eax, ecx
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdx
	jmp	.label_642
.label_641:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_638
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 1
	mov	rbp, rbp
	and	cl, 3
	movzx	ecx, cl
	mov	rsp, rsp
	call	re_copy_regs
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	r8b, al
	nop	
	mov	r9b, byte ptr [rdx + 0x38]
	and	r8b, 3
	shl	r8b, 1
	and	r9b, 0xf9
	or	r9b, r8b
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x38], r9b
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x38]
	lea	rsi, [rsi]
	shr	r8b, 1
	lea	rdi, [rdi]
	and	r8b, 3
	movzx	eax, r8b
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_637
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], -2
.label_637:
	jmp	.label_638
.label_638:
	jmp	.label_642
.label_642:
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	sete	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_649
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x8d], 1
	mov	rbp, rbp
	je	.label_650
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x98]
	nop	
	jne	.label_634
	jmp	.label_635
.label_634:
	nop	
	movabs	rdi, OFFSET FLAT:.str.21
	movabs	rsi, OFFSET FLAT:.str.22
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
.label_635:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	jmp	.label_643
.label_650:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa8], rax
.label_643:
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
.label_640:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_652:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0xc0
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40beb0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rbp - 0x2c], eax
	call	re_search_stub
	add	rsp, 0x50
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf20
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	xor	r11d, r11d
	mov	rsp, rsp
	mov	ebx, r11d
	nop	
	mov	r11d, 1
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x58], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x20], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rbp - 0x48], rbx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], r11d
	mov	rsp, rsp
	call	re_search_2_stub
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bfe0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	r14b, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x88], r8
	mov	qword ptr [rbp - 0x68], r9
	mov	qword ptr [rbp - 0x28], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r10
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x58], 0
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], r14b
	lea	rdi, [rdi]
	jl	.label_667
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x49], al
	jl	.label_667
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x49], al
	lea	rdi, [rdi]
	jl	.label_667
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_663
	jmp	.label_669
.label_663:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	lea	rdi, [rdi]
	jge	.label_670
	nop	
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_657
	lea	rsi, [rsi]
	jmp	.label_659
.label_670:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jl	.label_657
	nop	
	jmp	.label_659
.label_669:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_664
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	jle	.label_657
	jmp	.label_659
.label_664:
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_672
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_657
	mov	rbp, rbp
	jmp	.label_659
.label_672:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	jl	.label_657
.label_659:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_657
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_661
.label_657:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_671
.label_661:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	mov	dword ptr [rbp - 0x94], eax
.label_671:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], cl
.label_667:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_660
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_658
.label_660:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	jle	.label_673
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_665
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	shl	rax, 0
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_668
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_658
.label_668:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rsp, rsp
	jmp	.label_666
.label_665:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
.label_666:
	lea	rdi, [rdi]
	jmp	.label_662
.label_673:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_662:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	r10b, byte ptr [rbp - 0x31]
	nop	
	and	r10b, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	movzx	r11d, r10b
	mov	dword ptr [rsp + 8], r11d
	mov	rbp, rbp
	call	re_search_stub
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
.label_658:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0xa0
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c3e0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x20], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x18], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 0x28]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x18]
	nop	
	mov	r11, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ebx
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4a0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_674
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	and	cl, 0xf9
	or	cl, 2
	nop	
	mov	byte ptr [rax + 0x38], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_675
.label_674:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
.label_675:
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c560

	.globl free_token
	.type free_token, @function
free_token:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0xff
	cmp	eax, 6
	lea	rdi, [rdi]
	jne	.label_676
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	lea	rdi, [rdi]
	and	ecx, 1
	nop	
	cmp	ecx, 0
	jne	.label_676
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	free_charset
	jmp	.label_678
.label_676:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 3
	jne	.label_677
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_677
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_677:
	jmp	.label_678
.label_678:
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c630

	.globl free_state
	.type free_state, @function
free_state:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x50]
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	cmp	rdi, rax
	je	.label_679
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_679:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c710

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	nop	
	call	free
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c770

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x60], 8
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	jae	.label_704
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_716
.label_704:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_716
.label_716:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_725
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	nop	
	jae	.label_730
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_682
.label_730:
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	jmp	.label_682
.label_682:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_688
.label_725:
	nop	
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	nop	
	jmp	.label_688
.label_688:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_735
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_720
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_712
.label_720:
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	nop	
	jae	.label_702
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_724
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_721
.label_724:
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rcx
	nop	
	jmp	.label_721
.label_721:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_683
.label_702:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_683
.label_683:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_691
.label_735:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	jmp	.label_691
.label_691:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, 0x18
	mov	edx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	nop	
	jae	.label_687
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_707
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_710
.label_707:
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_710
.label_710:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_718
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_727
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	jmp	.label_680
.label_727:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_680
.label_680:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_685
.label_718:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	jmp	.label_685
.label_685:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jae	.label_693
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_701
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	jmp	.label_709
.label_701:
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	jae	.label_714
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_717
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_722
.label_717:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_722
.label_722:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_681
.label_714:
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc8], rcx
	nop	
	jmp	.label_681
.label_681:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_686
.label_693:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_686
.label_686:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_684
.label_687:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_684
.label_684:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rdx, -1
	xor	esi, esi
	mov	edi, 0xe8
	mov	r8d, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, rax
	jae	.label_695
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_731
.label_695:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe0], rax
.label_731:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0xa0]
	setbe	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_689
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0xc
	nop	
	jmp	.label_690
.label_689:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0xb8], 1
.label_728:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jbe	.label_698
	jmp	.label_723
.label_698:
	jmp	.label_726
.label_726:
	mov	rax, qword ptr [rbp - 0xb8]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	jmp	.label_728
.label_723:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	nop	
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x40], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x88], rax
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	edi, 0xe
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x58]
	mov	dword ptr [rax + 0xb4], ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x55
	lea	rdi, [rdi]
	je	.label_696
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	lea	rsi, [rsi]
	jne	.label_692
.label_696:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	mov	rbp, rbp
	je	.label_711
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	lea	rsi, [rsi]
	jne	.label_692
.label_711:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x46
	lea	rdi, [rdi]
	je	.label_719
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	lea	rsi, [rsi]
	jne	.label_692
.label_719:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	add	rax, 3
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + 3]
	cmp	edx, 0x2d
	nop	
	sete	sil
	lea	rdi, [rdi]
	and	sil, 1
	movzx	edx, sil
	movsxd	rcx, edx
	nop	
	add	rax, rcx
	mov	edx, OFFSET FLAT:.str_5
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_692
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfb
	mov	rsp, rsp
	or	cl, 4
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_692:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 0xf7
	mov	byte ptr [rax + 0xb0], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_703
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	je	.label_713
	movabs	rax, OFFSET FLAT:utf8_sb_map
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_705
.label_713:
	mov	eax, 0x20
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	nop	
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_733
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_690
.label_733:
	mov	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], 0
.label_699:
	cmp	dword ptr [rbp - 0x94], 4
	lea	rdi, [rdi]
	jge	.label_700
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0
.label_734:
	cmp	dword ptr [rbp - 0x3c], 0x40
	jge	.label_706
	mov	edi, dword ptr [rbp - 0xf4]
	mov	rbp, rbp
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], -1
	lea	rsi, [rsi]
	je	.label_694
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rdx, cl
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x94]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rdi + 0x78]
	or	rdx, qword ptr [rdi + rsi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rsi*8], rdx
.label_694:
	nop	
	mov	eax, dword ptr [rbp - 0xf4]
	and	eax, 0xffffff80
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_729
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xf4]
	je	.label_729
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	lea	rdi, [rdi]
	or	cl, 8
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_729:
	nop	
	jmp	.label_732
.label_732:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xf4], eax
	mov	rbp, rbp
	jmp	.label_734
.label_706:
	lea	rdi, [rdi]
	jmp	.label_697
.label_697:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_699
.label_700:
	jmp	.label_705
.label_705:
	jmp	.label_703
.label_703:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
	je	.label_708
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_708:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_715
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_690
.label_715:
	mov	dword ptr [rbp - 0xd4], 0
.label_690:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d110

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, r8b
	mov	rbp, rbp
	xor	r8d, r8d
	mov	r10d, 0x98
	mov	r11d, r10d
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 8], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x18], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	call	memset
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	r8d, al
	call	re_string_construct_common
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jle	.label_737
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_740
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_741
.label_740:
	nop	
	jmp	.label_737
.label_737:
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_754
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_745
.label_754:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_745:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	je	.label_751
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_743
	mov	rsp, rsp
	jmp	.label_742
.label_742:
	mov	rdi, qword ptr [rbp - 0x28]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_744
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_741
.label_744:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jl	.label_750
	jmp	.label_736
.label_750:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	lea	rsi, [rsi]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_739
	nop	
	jmp	.label_736
.label_739:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_748
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_741
.label_748:
	jmp	.label_742
.label_736:
	lea	rsi, [rsi]
	jmp	.label_747
.label_743:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	build_upper_buffer
.label_747:
	jmp	.label_746
.label_751:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rsp, rsp
	jle	.label_752
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_738
.label_752:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_749
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_753
.label_749:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x38], rax
.label_753:
	jmp	.label_738
.label_738:
	mov	rbp, rbp
	jmp	.label_746
.label_746:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], 0
.label_741:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d420

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
.label_755:
	cmp	qword ptr [rbp - 8], 0
	je	.label_756
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_755
.label_756:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax + 0x70], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x68], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d500

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	byte ptr [rdi + 0x8b], 0
	je	.label_757
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_757:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d560

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x68], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx + 0xd8], rcx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	or	rcx, 0x800000
	mov	rdi, rax
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	fetch_token
	lea	rdx, [rbp - 0x20]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x50]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x31], r11b
	mov	rsp, rsp
	je	.label_759
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_759:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_762
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_761
.label_762:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 2
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_760
	nop	
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	create_tree
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_758
.label_760:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_758:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x51], al
	lea	rsi, [rsi]
	je	.label_764
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	sete	al
	nop	
	mov	byte ptr [rbp - 0x51], al
.label_764:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_763
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_761
.label_763:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_761:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d740

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rbp, rbp
	mov	cl, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	nop	
	je	.label_765
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	je	.label_765
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	je	.label_765
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_765:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_777
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_769
.label_777:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	shl	rax, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0xe0], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xe0], 0
	nop	
	je	.label_770
	mov	qword ptr [rbp - 0x18], 0
.label_779:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	jae	.label_775
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_779
.label_775:
	movabs	rsi, OFFSET FLAT:optimize_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rax
	call	preorder
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
.label_772:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jae	.label_774
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	je	.label_781
	lea	rdi, [rdi]
	jmp	.label_774
.label_781:
	jmp	.label_766
.label_766:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_772
.label_774:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_771
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0xe0], 0
.label_771:
	jmp	.label_770
.label_770:
	movabs	rsi, OFFSET FLAT:lower_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_768
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_769
.label_768:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:calc_first
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	rbp, rbp
	call	postorder
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	nop	
	je	.label_780
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_769
.label_780:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:calc_next
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	rbp, rbp
	call	preorder
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	preorder
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_782
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_769
.label_782:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	calc_eclosure
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_767
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_769
.label_767:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_773
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_773
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	jne	.label_783
.label_773:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_776
.label_783:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	imul	rdi, qword ptr [rax + 0x10], 0x18
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x38], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_778
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_769
.label_778:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x10], eax
.label_776:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_769:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc60

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	byte ptr [rbp - 0x31], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	mov	qword ptr [rbp - 0x30], 0
.label_799:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_787
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	nop	
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	rbp, rbp
	dec	edx
	mov	eax, edx
	lea	rdi, [rdi]
	sub	edx, 0xb
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x18], edx
	nop	
	ja	.label_793
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_800]]
	lea	rsi, [rsi]
	jmp	rcx
.label_3021:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0x80
	nop	
	jl	.label_804
	mov	byte ptr [rbp - 0x31], 1
.label_804:
	jmp	.label_784
.label_3026:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	edx, dword ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	sub	esi, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	dword ptr [rbp - 0x48], esi
	je	.label_791
	jmp	.label_795
.label_795:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_791
	jmp	.label_802
.label_802:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x40
	nop	
	mov	dword ptr [rbp - 8], eax
	je	.label_791
	nop	
	jmp	.label_809
.label_809:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	jne	.label_797
	jmp	.label_791
.label_791:
	mov	rsp, rsp
	jmp	.label_796
.label_797:
	jmp	.label_792
.label_796:
	jmp	.label_784
.label_3024:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jmp	.label_784
.label_3022:
	jmp	.label_784
.label_3025:
	nop	
	jmp	.label_792
.label_3023:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x44], 2
.label_794:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 4
	jge	.label_801
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x24]
	nop	
	mov	ecx, esi
	lea	rsi, [rsi]
	shr	rax, cl
	cmp	rax, 0
	je	.label_807
	jmp	.label_792
.label_807:
	mov	dword ptr [rbp - 0x24], 0
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_794
.label_801:
	lea	rsi, [rsi]
	jmp	.label_784
.label_793:
	call	abort
.label_784:
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_799
.label_787:
	test	byte ptr [rbp - 0x31], 1
	jne	.label_806
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_785
.label_806:
	mov	qword ptr [rbp - 0x30], 0
.label_808:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jae	.label_786
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	lea	rsi, [rsi]
	cmp	edx, 1
	jne	.label_790
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_790
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xffdfffff
	mov	dword ptr [rax + 8], edx
	jmp	.label_803
.label_790:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 5
	nop	
	jne	.label_789
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	nop	
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xffffff00
	mov	rsp, rsp
	or	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], edx
.label_789:
	lea	rdi, [rdi]
	jmp	.label_803
.label_803:
	nop	
	jmp	.label_805
.label_805:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_808
.label_786:
	mov	rsp, rsp
	jmp	.label_785
.label_785:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0xb4], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0xb0]
	lea	rsi, [rsi]
	and	dl, 0xfb
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0xb0], dl
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x98], 0
	mov	byte ptr [rbp - 0x1d], al
	jg	.label_788
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], al
.label_788:
	mov	al, byte ptr [rbp - 0x1d]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0xb0]
	and	al, 1
	shl	al, 1
	lea	rsi, [rsi]
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0xb0], sil
.label_792:
	nop	
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e020

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdi, qword ptr [rdi + 0x68]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x90], rdi
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	imul	rdi, qword ptr [rbp - 0x28], 0x18
	nop	
	add	rcx, rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x74], 0
	lea	rsi, [rsi]
	setne	dl
	and	dl, 1
	mov	rbp, rbp
	movzx	eax, dl
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_811
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_814
.label_811:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_820
	mov	qword ptr [rbp - 0x58], 0
.label_818:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_825
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0x3c], edx
	cmp	dword ptr [rbp - 0x3c], 4
	je	.label_827
	mov	rsp, rsp
	jmp	.label_812
.label_827:
	nop	
	mov	qword ptr [rbp - 0x38], 0
.label_824:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_821
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	esi, dword ptr [rax + 8]
	mov	rbp, rbp
	and	esi, 0xff
	cmp	esi, 9
	mov	rsp, rsp
	jne	.label_815
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_815
	lea	rsi, [rsi]
	jmp	.label_821
.label_815:
	mov	rsp, rsp
	jmp	.label_822
.label_822:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_824
.label_821:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_828
	mov	rsp, rsp
	jmp	.label_812
.label_828:
	cmp	dword ptr [rbp - 0x3c], 4
	lea	rdi, [rdi]
	jne	.label_813
	mov	rbp, rbp
	lea	rdi, [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_823
	lea	rdi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 8], 0x18
	nop	
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_810
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_814
.label_810:
	nop	
	mov	qword ptr [rbp - 0x58], 0
.label_823:
	mov	rbp, rbp
	jmp	.label_813
.label_813:
	jmp	.label_812
.label_812:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_818
.label_825:
	mov	rsp, rsp
	jmp	.label_820
.label_820:
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax + 0x48], 0
	lea	rsi, [rsi]
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	ecx, r8b
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	nop	
	je	.label_826
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_814
.label_826:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_817
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rsi + 0x50], rax
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rbp, rbp
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x58], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	r8b, 1
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x50], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
	nop	
	je	.label_819
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x29], al
	je	.label_819
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
.label_819:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_816
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	jmp	.label_814
.label_816:
	lea	rsi, [rsi]
	jmp	.label_829
.label_817:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x60], rax
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x58], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x50], rax
.label_829:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x5c], 0
.label_814:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e4b0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, r8b
	mov	r10b, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], al
	mov	qword ptr [rbp - 0x10], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x58], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	and	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x88], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], r10b
	mov	rbp, rbp
	jne	.label_830
	mov	al, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
.label_830:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	al, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rdx + 0xb4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + 0x90], ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rdx + 0xb0]
	mov	rsp, rsp
	shr	al, 2
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x89], al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8a], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x68], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x60], rdx
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e620

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_831
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], 8
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	setb	cl
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_834
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_832
.label_834:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rcx, 2
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	nop	
	je	.label_838
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0xc
	mov	rsp, rsp
	jmp	.label_832
.label_838:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_835
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	shl	rcx, 3
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_837
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_832
.label_837:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_835:
	lea	rdi, [rdi]
	jmp	.label_831
.label_831:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_833
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	shl	rax, 0
	mov	rsi, rax
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_836
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xc
	nop	
	jmp	.label_832
.label_836:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
.label_833:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_832:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e830

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_858
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_874
.label_858:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
.label_874:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_883
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_883
	mov	rax, qword ptr [rbp - 0x100]
	cmp	byte ptr [rax + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_883
	lea	rdi, [rdi]
	jmp	.label_881
.label_881:
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	cmp	rax, qword ptr [rbp - 0x88]
	nop	
	jge	.label_842
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	and	edx, 0xffffff80
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_851
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_851
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	byte ptr [rsi + rcx], dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rsi + rcx]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	dword ptr [rsi + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	lea	rsi, [rsi]
	jmp	.label_881
.label_851:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xbc]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	add	rcx, 0x20
	mov	rsp, rsp
	mov	rsi, rax
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9b, r8b
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], r9b
	nop	
	jae	.label_876
	cmp	qword ptr [rbp - 0x20], -2
	nop	
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], al
.label_876:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_893
	mov	edi, dword ptr [rbp - 0xbc]
	call	towupper
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xbc]
	mov	rsp, rsp
	je	.label_839
	lea	rdx, [rbp - 0xd0]
	lea	rdi, [rbp - 0x70]
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	call	wcrtomb
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x108]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_856
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	memcpy
	mov	rbp, rbp
	jmp	.label_872
.label_856:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_868
.label_872:
	mov	rbp, rbp
	jmp	.label_884
.label_839:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x100]
	add	rcx, qword ptr [rdx + 0x28]
	add	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	memcpy
.label_884:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + rcx*4], eax
	nop	
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x20]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rcx
.label_871:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	jge	.label_867
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_871
.label_867:
	jmp	.label_879
.label_893:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	je	.label_882
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_882
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_890
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_890
.label_882:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xdc], edx
	mov	edx, dword ptr [rbp - 0xdc]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	edx, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + rax*4], edx
	cmp	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	sete	sil
	lea	rsi, [rsi]
	and	sil, 1
	movzx	edx, sil
	lea	rdi, [rdi]
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_891
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
.label_891:
	jmp	.label_889
.label_890:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_842
.label_889:
	jmp	.label_879
.label_879:
	lea	rdi, [rdi]
	jmp	.label_881
.label_842:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 0xe4], 0
	nop	
	jmp	.label_895
.label_883:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0xf0], rax
.label_859:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x88]
	jge	.label_848
	jmp	.label_868
.label_868:
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	nop	
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_870
	mov	dword ptr [rbp - 0x10c], 0
.label_860:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x10c]
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rdx + 0x90]
	nop	
	mov	byte ptr [rbp - 0xdd], cl
	lea	rdi, [rdi]
	jge	.label_886
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	setl	cl
	nop	
	mov	byte ptr [rbp - 0xdd], cl
.label_886:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdd]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_849
	mov	rbp, rbp
	jmp	.label_846
.label_849:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0xf0]
	movsxd	rcx, dword ptr [rbp - 0x10c]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	sil, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	byte ptr [rbp + rax - 0x70], sil
	mov	eax, dword ptr [rbp - 0x10c]
	add	eax, 1
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_860
.label_846:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_880
.label_870:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_880:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	rcx, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], r9b
	nop	
	jae	.label_844
	nop	
	cmp	qword ptr [rbp - 0x20], -2
	mov	rsp, rsp
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_844:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_863
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	call	towupper
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	je	.label_873
	lea	rdx, [rbp - 0xd0]
	nop	
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xb8]
	call	wcrtomb
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0xb0]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	nop	
	je	.label_899
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	nop	
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	jmp	.label_843
.label_899:
	cmp	qword ptr [rbp - 0xb0], -1
	mov	rbp, rbp
	je	.label_862
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_852
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_848
.label_852:
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jne	.label_865
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	nop	
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_885
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], 0xc
	lea	rdi, [rdi]
	jmp	.label_895
.label_885:
	lea	rdi, [rdi]
	jmp	.label_865
.label_865:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_898
	mov	qword ptr [rbp - 0xc8], 0
.label_888:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_866
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_888
.label_866:
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	byte ptr [rax + 0x8c], 1
.label_898:
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0xc8], 1
.label_853:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_894
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jae	.label_892
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_855
.label_892:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_855:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rax*8], rcx
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_853
.label_894:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xf0]
	nop	
	jle	.label_897
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_897:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	jle	.label_840
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_841
.label_840:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x78], rax
.label_841:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_859
.label_862:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_843
.label_843:
	jmp	.label_887
.label_873:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	memcpy
.label_887:
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	movzx	ecx, byte ptr [rax + 0x8c]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	lea	rdi, [rdi]
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	je	.label_875
	mov	qword ptr [rbp - 0xf8], 0
.label_847:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_854
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	add	rax, 1
	mov	qword ptr [rbp - 0xf8], rax
	mov	rbp, rbp
	jmp	.label_847
.label_854:
	jmp	.label_875
.label_875:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	ecx, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0xd8], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x98], rax
.label_900:
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	jge	.label_896
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	nop	
	jmp	.label_900
.label_896:
	jmp	.label_857
.label_863:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_864
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_864
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_869
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_869
.label_864:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe8], edx
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	movzx	edx, sil
	nop	
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_878
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xe8], edx
.label_878:
	mov	eax, dword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x100]
	movzx	eax, byte ptr [rdx + 0x8c]
	nop	
	cmp	eax, 0
	nop	
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_850
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_850:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	ecx, dword ptr [rbp - 0xe8]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rdx, rax
	add	rdx, 1
	nop	
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	sete	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_877
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_877:
	mov	rsp, rsp
	jmp	.label_845
.label_869:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	nop	
	jmp	.label_848
.label_845:
	jmp	.label_857
.label_857:
	mov	rbp, rbp
	jmp	.label_859
.label_848:
	jmp	.label_861
.label_861:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], 0
.label_895:
	mov	eax, dword ptr [rbp - 0xe4]
	add	rsp, 0x110
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f890

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rax + 0x58]
	mov	rbp, rbp
	jle	.label_901
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_905
.label_901:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_905:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_904:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_902
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	setne	sil
	mov	rbp, rbp
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_903
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_903:
	mov	edi, dword ptr [rbp - 0x1c]
	call	toupper
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_904
.label_902:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f9e0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	jle	.label_916
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_923
.label_916:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_923:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
.label_912:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_909
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_910
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0
.label_919:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0x55], cl
	mov	rbp, rbp
	jge	.label_918
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	setl	cl
	mov	byte ptr [rbp - 0x55], cl
.label_918:
	mov	al, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	test	al, 1
	jne	.label_914
	lea	rdi, [rdi]
	jmp	.label_917
.label_914:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	byte ptr [rcx + rax], sil
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rax - 0xa0], sil
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	jmp	.label_919
.label_917:
	nop	
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	jmp	.label_921
.label_910:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_921:
	lea	rdi, [rbp - 0x54]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], -1
	mov	byte ptr [rbp - 0x39], r8b
	mov	rsp, rsp
	je	.label_906
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	je	.label_906
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
	jne	.label_907
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	setge	dl
	nop	
	mov	byte ptr [rbp - 9], dl
.label_907:
	mov	al, byte ptr [rbp - 9]
	nop	
	mov	byte ptr [rbp - 0x39], al
.label_906:
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_922
	mov	qword ptr [rbp - 8], 1
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x54], edx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	lea	rdi, [rdi]
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_913
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
.label_913:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_908
.label_922:
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	sete	al
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_915
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	lea	rdi, [rdi]
	jmp	.label_909
.label_915:
	jmp	.label_908
.label_908:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 8]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
.label_920:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jge	.label_911
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_920
.label_911:
	jmp	.label_912
.label_909:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fdc0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_924
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_925
.label_924:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_925:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_927:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_926
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xc], edx
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_927
.label_926:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fed0

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	peek_token
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi + 0x48]
	mov	qword ptr [rsi + 0x48], rdx
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ff20

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x48], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r9
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x58], 0
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x20]
	nop	
	call	parse_branch
	mov	rbp, rbp
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	nop	
	mov	byte ptr [rbp - 0x69], r11b
	je	.label_932
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x69], al
.label_932:
	nop	
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_933
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_934
.label_933:
	jmp	.label_928
.label_928:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
.label_2963:
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	nop	
	jne	.label_931
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	or	rax, 0x800000
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	call	fetch_token
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0xa
	mov	rsp, rsp
	je	.label_929
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	mov	rbp, rbp
	je	.label_929
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_938
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	je	.label_929
.label_938:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xa8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], r11b
	je	.label_935
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_935:
	mov	al, byte ptr [rbp - 0x61]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_930
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_936
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_936:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_934
.label_930:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	or	rax, qword ptr [rcx + 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_937
.label_929:
	mov	qword ptr [rbp - 0x58], 0
.label_937:
	mov	rbp, rbp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_939
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	jmp	.label_934
.label_939:
	jmp	.label_928
.label_931:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
.label_934:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410220

	.globl create_tree
	.type create_tree, @function
create_tree:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	r8d, dword ptr [rbp - 8]
	and	ecx, 0xff
	and	r8d, 0xffffff00
	or	r8d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], r8d
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	create_token_tree
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410290

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0xf0], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_974
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], 0
	jmp	.label_951
.label_974:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0xf2], dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0xf2]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffbfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	and	esi, 0xffdfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_993
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	je	.label_993
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_993
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffdfffff
	or	ecx, 0x200000
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_951
.label_993:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	mov	rbp, rbp
	cmp	eax, 0x5c
	jne	.label_1044
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_944
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x24
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_951
.label_944:
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xf1], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xf1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rsi + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rsi + 8], ecx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rsi + 0x90], 1
	mov	rbp, rbp
	jle	.label_966
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0xd8], eax
	mov	edi, dword ptr [rbp - 0xd8]
	mov	rsp, rsp
	call	iswalnum
	mov	rbp, rbp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x79], cl
	nop	
	jne	.label_1022
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd8], 0x5f
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], al
.label_1022:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	lea	rdi, [rdi]
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	mov	rsp, rsp
	or	esi, ecx
	nop	
	mov	dword ptr [rdx + 8], esi
	nop	
	jmp	.label_1000
.label_966:
	movzx	eax, byte ptr [rbp - 0xf1]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 8
	lea	rdi, [rdi]
	cmp	esi, 0
	mov	byte ptr [rbp - 0xa9], dl
	jne	.label_1017
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf1]
	cmp	eax, 0x5f
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_1017:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1000:
	movzx	eax, byte ptr [rbp - 0xf1]
	mov	rsp, rsp
	mov	ecx, eax
	sub	ecx, 0x27
	mov	dword ptr [rbp - 0x50], eax
	mov	dword ptr [rbp - 0xe4], ecx
	je	.label_975
	jmp	.label_948
.label_948:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	je	.label_950
	nop	
	jmp	.label_952
.label_952:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_972
	nop	
	jmp	.label_957
.label_957:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_960
	jmp	.label_967
.label_967:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	eax, -0x31
	mov	rsp, rsp
	sub	eax, 9
	mov	dword ptr [rbp - 0xcc], eax
	lea	rsi, [rsi]
	jb	.label_968
	jmp	.label_1009
.label_1009:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x3c
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_973
	jmp	.label_978
.label_978:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x3e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1047
	lea	rdi, [rdi]
	jmp	.label_984
.label_984:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x10], eax
	je	.label_985
	mov	rbp, rbp
	jmp	.label_987
.label_987:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_989
	jmp	.label_995
.label_995:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_997
	jmp	.label_1001
.label_1001:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	je	.label_1002
	jmp	.label_1007
.label_1007:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1008
	jmp	.label_1032
.label_1032:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1013
	lea	rdi, [rdi]
	jmp	.label_956
.label_956:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0xe0], eax
	mov	rbp, rbp
	je	.label_1015
	jmp	.label_1020
.label_1020:
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x77
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	je	.label_1025
	lea	rsi, [rsi]
	jmp	.label_1029
.label_1029:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x7b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1028
	jmp	.label_1034
.label_1034:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x60], eax
	nop	
	je	.label_1035
	jmp	.label_1039
.label_1039:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_1040
	jmp	.label_1045
.label_1035:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	nop	
	jne	.label_961
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x8000
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_961
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_961:
	jmp	.label_940
.label_968:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x4000
	nop	
	cmp	rax, 0
	jne	.label_958
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 4
	mov	dword ptr [rax + 8], ecx
	movzx	ecx, byte ptr [rbp - 0xf1]
	sub	ecx, 0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rdx], rax
.label_958:
	mov	rbp, rbp
	jmp	.label_940
.label_973:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_976
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 6
.label_976:
	nop	
	jmp	.label_940
.label_1047:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	nop	
	jne	.label_991
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 9
.label_991:
	lea	rsi, [rsi]
	jmp	.label_940
.label_1013:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1010
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	dword ptr [rax], 0x100
.label_1010:
	lea	rsi, [rsi]
	jmp	.label_940
.label_989:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1024
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 0x200
.label_1024:
	jmp	.label_940
.label_1025:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_1038
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x20
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1038:
	nop	
	jmp	.label_940
.label_1002:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_945
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_945:
	jmp	.label_940
.label_1015:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_954
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_954:
	jmp	.label_940
.label_997:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_969
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_969:
	jmp	.label_940
.label_1008:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_979
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 0x40
.label_979:
	jmp	.label_940
.label_975:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_994
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x80
.label_994:
	jmp	.label_940
.label_950:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1011
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 8
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1011:
	jmp	.label_940
.label_972:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1019
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1019:
	jmp	.label_940
.label_960:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_963
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_963
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_963:
	jmp	.label_940
.label_985:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_942
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_942
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x13
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_942:
	lea	rsi, [rsi]
	jmp	.label_940
.label_1028:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_965
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_965
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	nop	
	mov	dword ptr [rax + 8], ecx
.label_965:
	jmp	.label_940
.label_1040:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_981
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x1000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	jne	.label_981
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x18
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_981:
	nop	
	jmp	.label_940
.label_1045:
	jmp	.label_940
.label_940:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 2
	nop	
	jmp	.label_951
.label_1044:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	nop	
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1003
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	mov	edi, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	call	iswalnum
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc5], cl
	jne	.label_1021
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x5f
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc5], al
.label_1021:
	nop	
	mov	al, byte ptr [rbp - 0xc5]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	mov	rsp, rsp
	setne	al
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rdx + 8]
	mov	rbp, rbp
	and	ecx, 1
	shl	ecx, 0x16
	mov	rsp, rsp
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1030
.label_1003:
	mov	rax, qword ptr [rbp - 0xf0]
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + rsi*2]
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0xb1], dl
	jne	.label_947
	mov	rax, qword ptr [rbp - 0xf0]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb1], dl
.label_947:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	lea	rdi, [rdi]
	and	esi, 0xffbfffff
	nop	
	or	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rdx + 8], esi
.label_1030:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xa
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0xb0], ecx
	je	.label_971
	mov	rbp, rbp
	jmp	.label_977
.label_977:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x24
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_980
	mov	rsp, rsp
	jmp	.label_983
.label_983:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_955
	nop	
	jmp	.label_986
.label_986:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x29
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	je	.label_988
	jmp	.label_1037
.label_1037:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x78], eax
	je	.label_996
	jmp	.label_998
.label_998:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	je	.label_999
	jmp	.label_1004
.label_1004:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x2e
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	je	.label_1005
	lea	rdi, [rdi]
	jmp	.label_1018
.label_1018:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	eax, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rdi, [rdi]
	je	.label_1012
	jmp	.label_1014
.label_1014:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x5b
	nop	
	mov	dword ptr [rbp - 0x84], eax
	je	.label_964
	mov	rbp, rbp
	jmp	.label_990
.label_990:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1023
	jmp	.label_1026
.label_1026:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	nop	
	je	.label_1027
	lea	rdi, [rdi]
	jmp	.label_1033
.label_1033:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x7c
	nop	
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	je	.label_1036
	lea	rsi, [rsi]
	jmp	.label_1041
.label_1041:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x7d
	nop	
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1042
	jmp	.label_1046
.label_971:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1043
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1043:
	mov	rsp, rsp
	jmp	.label_943
.label_1036:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x400
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_962
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x8000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_962
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_962:
	mov	rsp, rsp
	jmp	.label_943
.label_996:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_943
.label_999:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_982
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	jne	.label_982
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_982:
	mov	rbp, rbp
	jmp	.label_943
.label_1012:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_970
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_970
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_970:
	mov	rsp, rsp
	jmp	.label_943
.label_1027:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1016
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1016
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1016:
	jmp	.label_943
.label_1042:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1031
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000
	cmp	rax, 0
	nop	
	je	.label_1031
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x18
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1031:
	lea	rsi, [rsi]
	jmp	.label_943
.label_955:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_946
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_946:
	jmp	.label_943
.label_988:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_959
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_959:
	jmp	.label_943
.label_964:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_943
.label_1005:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	jmp	.label_943
.label_1023:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x800008
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jne	.label_941
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 0x48], 0
	nop	
	je	.label_941
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax - 1]
	mov	byte ptr [rbp - 0x11], dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x800
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_992
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0xa
	je	.label_1006
.label_992:
	jmp	.label_943
.label_1006:
	mov	rsp, rsp
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	dword ptr [rax], 0x10
	nop	
	jmp	.label_943
.label_980:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 8
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_953
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	je	.label_953
	lea	rdi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	call	peek_token
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx + 0x48]
	add	rdx, -1
	nop	
	mov	qword ptr [rcx + 0x48], rdx
	mov	r8d, dword ptr [rbp - 0x98]
	and	r8d, 0xff
	lea	rsi, [rsi]
	cmp	r8d, 0xa
	nop	
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_949
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xff
	lea	rsi, [rsi]
	cmp	eax, 9
	je	.label_949
	jmp	.label_943
.label_949:
	mov	rsp, rsp
	jmp	.label_953
.label_953:
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 0x20
	nop	
	jmp	.label_943
.label_1046:
	jmp	.label_943
.label_943:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 1
.label_951:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rsp, 0x100
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411490

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	cmp	byte ptr [rsi + 0x8b], 0
	mov	rsp, rsp
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rsp, rsp
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_1053
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0xd], dl
	jmp	.label_1052
.label_1053:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1050
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1051
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	add	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	je	.label_1050
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_1050
.label_1051:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], dl
	jmp	.label_1052
.label_1050:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1049
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1049:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0xc], edx
	mov	rax, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_1048
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_1048
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd], dl
	lea	rsi, [rsi]
	jmp	.label_1052
.label_1048:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 0xd], cl
.label_1052:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0xd]
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411690

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	jne	.label_1054
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_1055
.label_1054:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_1055:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411710

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x70], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x58], r8
	mov	qword ptr [rbp - 0x60], r9
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x60]
	call	parse_expression
	lea	rdi, [rdi]
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], r11b
	je	.label_1067
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_1067:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1063
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	jmp	.label_1062
.label_1063:
	mov	rbp, rbp
	jmp	.label_1060
.label_1060:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	lea	rdi, [rdi]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	je	.label_1058
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], cl
	je	.label_1058
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x71], al
	je	.label_1064
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x71], dl
.label_1064:
	mov	al, byte ptr [rbp - 0x71]
	mov	byte ptr [rbp - 0x11], al
.label_1058:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_1061
	jmp	.label_1069
.label_1061:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbp - 0x60]
	nop	
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], r11b
	mov	rbp, rbp
	je	.label_1057
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], al
.label_1057:
	mov	al, byte ptr [rbp - 0x49]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1056
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1068
	movabs	rsi, OFFSET FLAT:free_tree
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	postorder
	nop	
	mov	dword ptr [rbp - 8], eax
.label_1068:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_1062
.label_1056:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1066
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1066
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_1065
	nop	
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	postorder
	movabs	rsi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	call	postorder
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	dword ptr [rdx], 0xc
	mov	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1062
.label_1065:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_1059
.label_1066:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1070
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
.label_1070:
	jmp	.label_1059
.label_1059:
	jmp	.label_1060
.label_1069:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
.label_1062:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a40

	.globl postorder
	.type postorder, @function
postorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rdx
.label_1074:
	jmp	.label_1071
.label_1071:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	jne	.label_1073
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x29], cl
.label_1073:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1081
	jmp	.label_1075
.label_1081:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1077
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1072
.label_1077:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1072:
	mov	rsp, rsp
	jmp	.label_1071
.label_1075:
	jmp	.label_1079
.label_1079:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	rax
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1080
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	jmp	.label_1082
.label_1080:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1076
	mov	dword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jmp	.label_1082
.label_1076:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_1078
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1078:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1079
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1074
.label_1082:
	mov	eax, dword ptr [rbp - 0x30]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c00

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsi, 0x28
	nop	
	mov	rdi, rsi
	call	free_token
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411c40

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x138
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x140], rdi
	nop	
	mov	qword ptr [rbp - 0xf8], rsi
	mov	qword ptr [rbp - 0xe0], rdx
	nop	
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0xb8], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], r9
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	eax, byte ptr [rcx + 8]
	mov	rbp, rbp
	dec	eax
	mov	ecx, eax
	sub	eax, 0x23
	mov	qword ptr [rbp - 0x130], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	ja	.label_1105
	mov	rax, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1126]]
	mov	rsp, rsp
	jmp	rcx
.label_2985:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	nop	
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	sete	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1089
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1089:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1090
	lea	rdi, [rdi]
	jmp	.label_1088
.label_1088:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	cmp	rdx, qword ptr [rsi + 0x48]
	nop	
	mov	byte ptr [rbp - 0xa9], cl
	mov	rsp, rsp
	jle	.label_1117
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x140]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	je	.label_1125
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x140]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], dl
.label_1125:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0xa9], al
.label_1117:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1092
	jmp	.label_1097
.label_1092:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	call	fetch_token
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	call	create_token_tree
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x90]
	call	create_tree
	mov	rbp, rbp
	mov	r8b, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0xc9], r8b
	mov	rbp, rbp
	je	.label_1121
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xc9], al
.label_1121:
	mov	al, byte ptr [rbp - 0xc9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1129
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1086
.label_1129:
	jmp	.label_1088
.label_1097:
	jmp	.label_1090
.label_1090:
	mov	rsp, rsp
	jmp	.label_1091
.label_2989:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	r9, qword ptr [rbp - 0x100]
	mov	r8, rax
	call	parse_sub_exp
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb9], r11b
	je	.label_1111
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_1111:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1123
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	jmp	.label_1086
.label_1123:
	mov	rbp, rbp
	jmp	.label_1091
.label_2991:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	r8, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	call	parse_bracket_exp
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	r10b, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x119], r10b
	je	.label_1131
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	nop	
	mov	byte ptr [rbp - 0x119], al
.label_1131:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x119]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1108
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1108:
	jmp	.label_1091
.label_2987:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	lea	rsi, [rsi]
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	cmp	rdi, 0
	lea	rsi, [rsi]
	jne	.label_1095
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1095:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdx, qword ptr [rbp - 0xe0]
	nop	
	mov	rdx, qword ptr [rdx]
	nop	
	mov	esi, edx
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	mov	ecx, esi
	shl	eax, cl
	lea	rsi, [rsi]
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	or	rdx, qword ptr [rdi + 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0xa0], rdx
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x68]
	call	create_token_tree
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1112
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1112:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 0x98]
	nop	
	add	rcx, 1
	mov	qword ptr [rax + 0x98], rcx
	mov	rax, qword ptr [rbp - 0xd8]
	mov	dl, byte ptr [rax + 0xb0]
	and	dl, 0xfd
	lea	rsi, [rsi]
	or	dl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xb0], dl
	lea	rsi, [rsi]
	jmp	.label_1091
.label_2992:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000000
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1134
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jmp	.label_1086
.label_1134:
	jmp	.label_1098
.label_1098:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1094
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1086
.label_1094:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1113
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	fetch_token
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	r8, qword ptr [rbp - 0xb8]
	mov	r9, qword ptr [rbp - 0x100]
	nop	
	call	parse_expression
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1086
.label_1113:
	jmp	.label_1132
.label_1132:
	mov	rbp, rbp
	jmp	.label_1133
.label_1133:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	lea	rdi, [rdi]
	jne	.label_1101
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20000
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1101
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1101:
	jmp	.label_1104
.label_1104:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	nop	
	mov	dword ptr [rdx + 8], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	mov	rbp, rbp
	movzx	r9d, r8b
	movsxd	rax, r9d
	nop	
	cmp	rax, 0
	je	.label_1118
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1118:
	nop	
	jmp	.label_1091
.label_2990:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0x30f
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1083
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1083
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	call	init_word_char
.label_1083:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x100
	je	.label_1102
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x200
	jne	.label_1107
.label_1102:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x100
	jne	.label_1100
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	nop	
	mov	dword ptr [rdx], 6
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x50], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x50]
	call	create_token_tree
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	jmp	.label_1124
.label_1100:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx], 5
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	dword ptr [rax], 0xa
.label_1124:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	create_token_tree
	mov	ecx, 0xa
	mov	qword ptr [rbp - 0x110], rax
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x110]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0xba], r8b
	je	.label_1114
	mov	al, 1
	cmp	qword ptr [rbp - 0x110], 0
	mov	byte ptr [rbp - 0xba], al
	lea	rdi, [rdi]
	je	.label_1114
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba], al
.label_1114:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1127
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1127:
	mov	rsp, rsp
	jmp	.label_1085
.label_1107:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x58], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	call	create_token_tree
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1099
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_1086
.label_1099:
	mov	rbp, rbp
	jmp	.label_1085
.label_1085:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	fetch_token
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdx
	lea	rsi, [rsi]
	jmp	.label_1086
.label_2988:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	r8b
	nop	
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1135
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_1086
.label_1135:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1122
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_1122:
	mov	rsp, rsp
	jmp	.label_1091
.label_2993:
	movabs	rax, OFFSET FLAT:.str.1_4
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rdx + 8]
	lea	rsi, [rsi]
	and	r8d, 0xff
	nop	
	cmp	r8d, 0x21
	mov	rbp, rbp
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.1_4
	mov	r10d, r8d
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.2_2
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	call	build_charclass_op
	mov	rbp, rbp
	xor	r8d, r8d
	mov	bl, r8b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x131], bl
	je	.label_1106
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x131], al
.label_1106:
	mov	al, byte ptr [rbp - 0x131]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_1084
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1086
.label_1084:
	lea	rdi, [rdi]
	jmp	.label_1091
.label_2994:
	movabs	rax, OFFSET FLAT:.str.3_1
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	lea	rdi, [rdi]
	cmp	r8d, 0x23
	lea	rsi, [rsi]
	sete	r9b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.3_1
	mov	r10d, r8d
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str_0
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, r10
	nop	
	mov	qword ptr [rbp - 0x118], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	call	build_charclass_op
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	bl, r8b
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x132], bl
	je	.label_1096
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x132], al
.label_1096:
	mov	al, byte ptr [rbp - 0x132]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1110
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1110:
	mov	rbp, rbp
	jmp	.label_1091
.label_2986:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_2995:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1105:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1091:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	call	fetch_token
.label_1093:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	mov	rsp, rsp
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x81], al
	je	.label_1087
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	cmp	edx, 0x12
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x81], al
	je	.label_1087
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	edx, 0xff
	cmp	edx, 0x13
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], al
	je	.label_1087
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1087:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1115
	nop	
	jmp	.label_1119
.label_1115:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	call	parse_dup_op
	mov	rbp, rbp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x101], r11b
	je	.label_1128
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x101], al
.label_1128:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1116
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_1103
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x2c], eax
.label_1103:
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1086
.label_1116:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000000
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1109
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_1120
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	mov	rbp, rbp
	jne	.label_1109
.label_1120:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1130
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	postorder
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
.label_1130:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1086
.label_1109:
	mov	rsp, rsp
	jmp	.label_1093
.label_1119:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
.label_1086:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rsp, 0x138
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c50

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x80]
	cmp	rcx, 0xf
	lea	rsi, [rsi]
	sete	al
	and	al, 1
	movzx	r8d, al
	lea	rdi, [rdi]
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1136
	mov	eax, 0x3c8
	mov	edi, eax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1138
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_1140
.label_1138:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0
.label_1136:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x80]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, 1
	mov	dword ptr [rax + 0x80], edx
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x70]
	lea	rsi, [rsi]
	add	rsi, 8
	shl	rax, 6
	mov	rsp, rsp
	add	rsi, rax
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rax + 0x28], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x30], rsi
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfffbffff
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x30], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xfff7ffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x38], -1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1139
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
.label_1139:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1137
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1137:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1140:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412e40

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x58], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	or	rcx, 0x800000
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	fetch_token
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 9
	mov	rsp, rsp
	jne	.label_1141
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jmp	.label_1142
.label_1141:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x58]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], r11b
	jne	.label_1143
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 9
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], dl
.label_1143:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1149
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1146
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	postorder
	mov	dword ptr [rbp - 0x44], eax
.label_1146:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rax], 8
.label_1149:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1147
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_1148
.label_1147:
	jmp	.label_1142
.label_1142:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 8
	ja	.label_1145
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, edx
	shl	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	or	rsi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rdi + 0xa8], rsi
.label_1145:
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	ecx, 0x11
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	ecx, r8b
	lea	rdi, [rdi]
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1144
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x28], 0
	nop	
	jmp	.label_1148
.label_1144:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1148:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4130c0

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x188
	lea	rsi, [rsi]
	mov	eax, 0x20
	nop	
	mov	r9d, eax
	mov	eax, 1
	nop	
	mov	r10d, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], r8
	mov	qword ptr [rbp - 0xe0], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	qword ptr [rbp - 0x158], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xc9], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x149], 1
	nop	
	mov	rdi, r9
	mov	rsi, r10
	lea	rsi, [rsi]
	call	calloc
	mov	r11d, 0x50
	mov	edi, r11d
	nop	
	mov	r11d, 1
	lea	rsi, [rsi]
	mov	esi, r11d
	nop	
	mov	qword ptr [rbp - 0x148], rax
	call	calloc
	lea	rdi, [rdi]
	mov	bl, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x148], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x10d], bl
	nop	
	je	.label_1179
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x10d], al
.label_1179:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x10d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1189
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	jmp	.label_1197
.label_1189:
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x10c], eax
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	cl
	and	cl, 1
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1167
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 2
	jmp	.label_1156
.label_1167:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x19
	jne	.label_1177
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 0xfe
	or	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], cl
	mov	byte ptr [rbp - 0xc9], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	and	rax, 0x100
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1187
	nop	
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_set
.label_1187:
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_1164
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 2
	jmp	.label_1156
.label_1164:
	jmp	.label_1177
.label_1177:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1178
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1178:
	jmp	.label_1166
.label_1166:
	lea	rdi, [rbp - 0xa0]
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x100]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x181], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	dword ptr [rbp - 0xa0], 3
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x10c]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 0x118]
	mov	r10b, byte ptr [rbp - 0x149]
	and	r10b, 1
	movzx	r11d, r10b
	mov	rbp, rbp
	mov	dword ptr [rsp], r11d
	mov	rsp, rsp
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 0
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rsp, rsp
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1169
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_1156
.label_1169:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x149], 0
	mov	rdi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	call	peek_token_bracket
	nop	
	mov	dword ptr [rbp - 0x10c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xa0], 4
	je	.label_1153
	nop	
	cmp	dword ptr [rbp - 0xa0], 2
	mov	rsp, rsp
	je	.label_1153
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 2
	nop	
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	nop	
	movsxd	rax, ecx
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1195
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1156
.label_1195:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1161
	lea	rdi, [rbp - 0x140]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x138]
	nop	
	and	eax, 0xff
	cmp	eax, 2
	mov	rbp, rbp
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_1176
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1156
.label_1176:
	nop	
	mov	eax, dword ptr [rbp - 0x138]
	mov	rsp, rsp
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 0x15
	jne	.label_1193
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x10c]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 1
	mov	dword ptr [rcx + 8], eax
	jmp	.label_1198
.label_1193:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x181], 1
.label_1198:
	mov	rsp, rsp
	jmp	.label_1161
.label_1161:
	jmp	.label_1153
.label_1153:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_1180
	lea	rdi, [rbp - 0x30]
	lea	rdx, [rbp - 0x140]
	mov	eax, 1
	lea	rcx, [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], 3
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xb4]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 0x118]
	mov	dword ptr [rsp], 1
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	call	parse_bracket_element
	nop	
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1188
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_1156
.label_1188:
	nop	
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	call	peek_token_bracket
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10c], eax
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0xb4], 1
	mov	qword ptr [rbp - 0x68], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rsi
	mov	rbp, rbp
	jle	.label_1151
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_1160
.label_1151:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	jmp	.label_1160
.label_1160:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	lea	rcx, [rbp - 0xb0]
	nop	
	lea	r8, [rbp - 0xa0]
	mov	rsp, rsp
	lea	r9, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	build_range_exp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	lea	rsi, [rsi]
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	nop	
	movzx	eax, r10b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1184
	jmp	.label_1156
.label_1184:
	jmp	.label_1190
.label_1180:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0xd8], rdx
	ja	.label_1173
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1157]]
	mov	rbp, rbp
	jmp	rcx
.label_2932:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	esi, eax
	call	bitset_set
	lea	rdi, [rdi]
	jmp	.label_1158
.label_2933:
	mov	rax, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1171
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x158]
	shl	rcx, 2
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1194
	mov	rbp, rbp
	jmp	.label_1154
.label_1194:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
.label_1171:
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x28], rsi
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx + rdx*4], eax
	nop	
	jmp	.label_1158
.label_2934:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x120]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	build_equiv_class
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	lea	rsi, [rsi]
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_1174
	jmp	.label_1156
.label_1174:
	jmp	.label_1158
.label_2935:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	call	build_collating_symbol
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1196
	jmp	.label_1156
.label_1196:
	jmp	.label_1158
.label_2936:
	mov	rbp, rbp
	lea	rcx, [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	r8, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x118]
	call	build_charclass
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1172
	jmp	.label_1156
.label_1172:
	jmp	.label_1158
.label_1173:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
.label_1158:
	jmp	.label_1190
.label_1190:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 2
	nop	
	sete	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	mov	rbp, rbp
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1191
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1156
.label_1191:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x15
	jne	.label_1159
	jmp	.label_1170
.label_1159:
	jmp	.label_1166
.label_1170:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xc9], 1
	je	.label_1168
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_not
.label_1168:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1175
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1175:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	jne	.label_1185
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1185
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	jne	.label_1185
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1185
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1155
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1185
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x20]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1155
.label_1185:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdx, [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	dil, byte ptr [rsi + 0xb0]
	nop	
	and	dil, 0xfd
	or	dil, 2
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xffffff00
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x38], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1182
	jmp	.label_1154
.label_1182:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], 0
.label_1181:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x12c], 4
	jge	.label_1150
	movsxd	rax, dword ptr [rbp - 0x12c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1199
	jmp	.label_1150
.label_1199:
	nop	
	jmp	.label_1152
.label_1152:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_1181
.label_1150:
	nop	
	cmp	dword ptr [rbp - 0x12c], 4
	mov	rsp, rsp
	jge	.label_1162
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	nop	
	movsxd	rax, r9d
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1192
	nop	
	jmp	.label_1154
.label_1192:
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x90], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	nop	
	movsxd	rax, ecx
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1163
	mov	rsp, rsp
	jmp	.label_1154
.label_1163:
	mov	rsp, rsp
	jmp	.label_1186
.label_1162:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x90], rax
.label_1186:
	mov	rbp, rbp
	jmp	.label_1165
.label_1155:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 3
	mov	dword ptr [rbp - 0x38], eax
	mov	rdx, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x40], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	create_token_tree
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	movsxd	rax, r9d
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1183
	lea	rdi, [rdi]
	jmp	.label_1154
.label_1183:
	jmp	.label_1165
.label_1165:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_1197
.label_1154:
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 0xc
.label_1156:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	qword ptr [rbp - 0x80], 0
.label_1197:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rsp, 0x188
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413f40

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdi + 0xb0]
	mov	rbp, rbp
	and	al, 0xef
	mov	rbp, rbp
	or	al, 0x10
	mov	byte ptr [rdi + 0xb0], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdi + 0xb0]
	mov	rsp, rsp
	shr	al, 3
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	nop	
	cmp	ecx, 0
	sete	al
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1200
	mov	eax, 0x87fffffe
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x50], 0x3ff0000
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0x7fffffe
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rdx + 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 0x1f
	mov	rbp, rbp
	shl	rcx, 1
	lea	rdi, [rdi]
	or	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0xc0], rcx
	mov	dword ptr [rbp - 0x1c], 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0x80
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	sil, byte ptr [rcx + 0xb0]
	mov	rsp, rsp
	shr	sil, 2
	and	sil, 1
	lea	rdi, [rdi]
	movzx	eax, sil
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	je	.label_1202
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	mov	ecx, 0x100
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rdi, 0xb8
	shl	rdx, 3
	lea	rsi, [rsi]
	add	rdi, rdx
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xc]
	nop	
	idiv	ecx
	movsxd	r8, eax
	mov	rdx, r8
	call	memset
	mov	rsp, rsp
	jmp	.label_1203
.label_1202:
	mov	rsp, rsp
	jmp	.label_1200
.label_1200:
	lea	rsi, [rsi]
	jmp	.label_1205
.label_1205:
	mov	rbp, rbp
	jmp	.label_1209
.label_1209:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_1203
	mov	dword ptr [rbp - 0x34], 0
.label_1208:
	cmp	dword ptr [rbp - 0x34], 0x40
	jge	.label_1207
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	jne	.label_1206
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0x5f
	jne	.label_1204
.label_1206:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, cl
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	or	rdx, qword ptr [rdi + rsi*8 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rsi*8 + 0xb8], rdx
.label_1204:
	lea	rdi, [rdi]
	jmp	.label_1201
.label_1201:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1208
.label_1207:
	mov	rbp, rbp
	jmp	.label_1210
.label_1210:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_1209
.label_1203:
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4141e0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x88
	mov	al, r8b
	mov	rbp, rbp
	mov	r8d, 0x20
	mov	r10d, r8d
	mov	r8d, 1
	mov	r11d, r8d
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x18], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	mov	rdi, r10
	mov	rsi, r11
	lea	rdi, [rdi]
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	bl
	and	bl, 1
	movzx	r8d, bl
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1211
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1213
.label_1211:
	nop	
	mov	eax, 0x50
	mov	edi, eax
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x88], rax
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1219
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1213
.label_1219:
	lea	rcx, [rbp - 0x80]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r9d, eax
	mov	dl, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rsi, qword ptr [rbp - 0x88]
	mov	dl, al
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x20]
	and	dl, 1
	and	dil, 0xfe
	lea	rdi, [rdi]
	or	dil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0x20], dil
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	r8, qword ptr [rbp - 0x38]
	call	build_charclass
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1217
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	call	free_charset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	jmp	.label_1213
.label_1217:
	mov	rsp, rsp
	jmp	.label_1222
.label_1222:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_1214
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	rsi, byte ptr [rax]
	call	bitset_set
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_1222
.label_1214:
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	je	.label_1216
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	bitset_not
.label_1216:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1223
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1223:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x60], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1218
	jmp	.label_1215
.label_1218:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1212
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdx, [rbp - 0x68]
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dil, byte ptr [rsi + 0xb0]
	lea	rsi, [rsi]
	and	dil, 0xfd
	lea	rsi, [rsi]
	or	dil, 2
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1221
	mov	rbp, rbp
	jmp	.label_1215
.label_1221:
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	movzx	ecx, r8b
	mov	rsp, rsp
	movsxd	rax, ecx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1224
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_1213
.label_1224:
	mov	rbp, rbp
	jmp	.label_1220
.label_1212:
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	call	free_charset
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rdi
	jmp	.label_1213
.label_1220:
	jmp	.label_1215
.label_1215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	call	free_charset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
.label_1213:
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x88
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414670

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xd0
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0xb8], r8
	mov	qword ptr [rbp - 0x20], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x88], 0
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	and	eax, 0xff
	lea	rdi, [rdi]
	cmp	eax, 0x17
	jne	.label_1250
	mov	qword ptr [rbp - 0x58], 0
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	call	fetch_number
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1230
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1237
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2c
	lea	rsi, [rsi]
	jne	.label_1237
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1242
.label_1237:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1228
.label_1242:
	mov	rsp, rsp
	jmp	.label_1230
.label_1230:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	rsp, rsp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1249
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1257
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1261
.label_1257:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_1226
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	jne	.label_1226
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1232
.label_1226:
	lea	rsi, [rsi]
	mov	rax, -2
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1232
.label_1232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
.label_1261:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
.label_1249:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	byte ptr [rbp - 0x69], al
	mov	rsp, rsp
	je	.label_1243
	cmp	qword ptr [rbp - 0x58], -2
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 0x69], al
.label_1243:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1248
	mov	rax, qword ptr [rbp - 0xb8]
	and	rax, 0x200000
	cmp	rax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1267
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	nop	
	jne	.label_1260
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 9
	jmp	.label_1265
.label_1260:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xa
.label_1265:
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1228
.label_1267:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xffffff00
	or	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rax + 8], edx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_1228
.label_1248:
	cmp	qword ptr [rbp - 0x58], -1
	mov	rbp, rbp
	je	.label_1253
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	jg	.label_1238
.label_1253:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x39], dl
.label_1238:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1255
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1228
.label_1255:
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1262
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1264
.label_1262:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 8], rax
.label_1264:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, 0x7fff
	mov	edx, ecx
	cmp	rdx, rax
	setl	sil
	and	sil, 1
	lea	rdi, [rdi]
	movzx	ecx, sil
	nop	
	movsxd	rax, ecx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1227
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1228
.label_1227:
	jmp	.label_1239
.label_1250:
	nop	
	mov	eax, 0xffffffff
	mov	ecx, 1
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rsi + 8]
	mov	rbp, rbp
	and	edi, 0xff
	mov	rsp, rsp
	cmp	edi, 0x12
	lea	rsi, [rsi]
	cmove	edx, ecx
	nop	
	movsxd	rsi, edx
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	lea	rdi, [rdi]
	cmp	edx, 0x13
	cmove	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x58], rsi
.label_1239:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	fetch_token
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1256
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1228
.label_1256:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1225
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
.label_1225:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1231
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1228
.label_1231:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1245
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0xa0], 2
.label_1235:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jg	.label_1252
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	duplicate_tree
	nop	
	mov	ecx, 0x10
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x79], r8b
	nop	
	je	.label_1266
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x79], al
.label_1266:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1229
	nop	
	jmp	.label_1240
.label_1229:
	lea	rsi, [rsi]
	jmp	.label_1234
.label_1234:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1235
.label_1252:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_1241
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_1228
.label_1241:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	call	duplicate_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1246
	jmp	.label_1240
.label_1246:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	jmp	.label_1258
.label_1245:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
.label_1258:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1263
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:mark_opt_subexp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	postorder
	mov	dword ptr [rbp - 0x8c], eax
.label_1263:
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	eax, 0xa
	mov	ecx, 0xb
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	qword ptr [rbp - 0x58], -1
	cmove	eax, ecx
	mov	ecx, eax
	mov	rsp, rsp
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1244
	lea	rsi, [rsi]
	jmp	.label_1240
.label_1244:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 2
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_1236:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jg	.label_1254
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	call	duplicate_tree
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	lea	rsi, [rsi]
	mov	r8b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0xa9], r8b
	je	.label_1268
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
.label_1268:
	mov	al, byte ptr [rbp - 0xa9]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_1233
	jmp	.label_1240
.label_1233:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r8b
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	ecx, r8b
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1247
	nop	
	jmp	.label_1240
.label_1247:
	jmp	.label_1251
.label_1251:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_1236
.label_1254:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_1259
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
.label_1259:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_1228
.label_1240:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], 0
.label_1228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0xd0
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414f40

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_1269
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	jmp	.label_1276
.label_1269:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], dl
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1283
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	je	.label_1283
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1283
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 0x50], 1
	jmp	.label_1276
.label_1283:
	movzx	eax, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	cmp	eax, 0x5c
	jne	.label_1270
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 1
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1270
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	jge	.label_1270
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0x49], dl
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x49]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffffff00
	or	esi, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], 1
	jmp	.label_1276
.label_1270:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x5b
	nop	
	jne	.label_1290
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jge	.label_1274
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x51], dl
	lea	rdi, [rdi]
	jmp	.label_1287
.label_1274:
	mov	byte ptr [rbp - 0x51], 0
.label_1287:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x51]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 2
	movzx	edx, byte ptr [rbp - 0x51]
	mov	esi, edx
	nop	
	sub	esi, 0x2e
	mov	dword ptr [rbp - 0x38], edx
	mov	dword ptr [rbp - 0x10], esi
	je	.label_1280
	jmp	.label_1279
.label_1279:
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x18], eax
	nop	
	je	.label_1272
	lea	rdi, [rdi]
	jmp	.label_1282
.label_1282:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	je	.label_1284
	lea	rdi, [rdi]
	jmp	.label_1289
.label_1280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1278
.label_1284:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1278
.label_1272:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 4
	nop	
	cmp	rax, 0
	je	.label_1273
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1278
.label_1273:
	lea	rsi, [rsi]
	jmp	.label_1289
.label_1289:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	byte ptr [rax], dl
	nop	
	mov	dword ptr [rbp - 4], 1
.label_1278:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_1276
.label_1290:
	movzx	eax, byte ptr [rbp - 9]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x24], eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rbp, rbp
	je	.label_1288
	mov	rsp, rsp
	jmp	.label_1277
.label_1277:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	sub	eax, 0x5d
	nop	
	mov	dword ptr [rbp - 0x14], eax
	je	.label_1281
	jmp	.label_1286
.label_1286:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	sub	eax, 0x5e
	mov	dword ptr [rbp - 8], eax
	je	.label_1285
	lea	rdi, [rdi]
	jmp	.label_1271
.label_1288:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1275
.label_1281:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1275
.label_1285:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1275
.label_1271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1275:
	mov	dword ptr [rbp - 0x50], 1
.label_1276:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415350

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	eax, 1
	nop	
	mov	edx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	or	r8, qword ptr [rdi + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], r8
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4153e0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 0x4c], ecx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x30], r9
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rsi, qword ptr [rdx + 0x48]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 1
	jle	.label_1295
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	call	re_string_wchar_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rsi + 8], eax
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x24]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_1296
.label_1295:
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	cmp	edx, 0x1a
	je	.label_1293
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1293
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x1c
	jne	.label_1294
.label_1293:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	call	parse_bracket_symbol
	nop	
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1296
.label_1294:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	lea	rdi, [rdi]
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	nop	
	cmp	rax, 0
	je	.label_1292
	nop	
	test	byte ptr [rbp - 0x4d], 1
	jne	.label_1292
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x15
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1291
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 0xb
	lea	rdi, [rdi]
	jmp	.label_1296
.label_1291:
	nop	
	jmp	.label_1292
.label_1292:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], cl
	mov	dword ptr [rbp - 0x48], 0
.label_1296:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4155c0

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x50], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x78], r9
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	dword ptr [rcx], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1303
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1303
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rcx], 2
	nop	
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1303
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], cl
.label_1303:
	mov	al, byte ptr [rbp - 0x1d]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1318
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0xb
	mov	rbp, rbp
	jmp	.label_1299
.label_1318:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_1329
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rcx + 8]
	mov	byte ptr [rbp - 0x69], al
	lea	rdi, [rdi]
	call	strlen
	cmp	rax, 1
	mov	dl, byte ptr [rbp - 0x69]
	mov	byte ptr [rbp - 0x6a], dl
	ja	.label_1311
.label_1329:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x59], cl
	mov	rbp, rbp
	jne	.label_1297
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	strlen
	mov	rsp, rsp
	cmp	rax, 1
	mov	rbp, rbp
	seta	cl
	mov	byte ptr [rbp - 0x59], cl
.label_1297:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x59]
	mov	byte ptr [rbp - 0x6a], al
.label_1311:
	mov	al, byte ptr [rbp - 0x6a]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1301
	mov	dword ptr [rbp - 0x2c], 3
	jmp	.label_1299
.label_1301:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 0
	jne	.label_1310
	mov	rax, qword ptr [rbp - 0x98]
	movzx	ecx, byte ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_1307
.label_1310:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1319
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	jmp	.label_1302
.label_1319:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_1302
.label_1302:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_1307:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_1308
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	mov	rbp, rbp
	jmp	.label_1313
.label_1308:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	nop	
	jne	.label_1325
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rsp, rsp
	jmp	.label_1298
.label_1325:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_1298
.label_1298:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8c], eax
.label_1313:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_1305
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1312
.label_1305:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	movzx	edi, cl
	mov	rsp, rsp
	call	parse_byte
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_1324
.label_1312:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x1c], ecx
.label_1324:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	je	.label_1321
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax], 3
	jne	.label_1309
.label_1321:
	mov	eax, dword ptr [rbp - 0x30]
	mov	cl, al
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_1314
.label_1309:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x34], ecx
.label_1314:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], -1
	nop	
	je	.label_1320
	cmp	dword ptr [rbp - 0x70], -1
	lea	rsi, [rsi]
	jne	.label_1328
.label_1320:
	nop	
	mov	dword ptr [rbp - 0x2c], 3
	mov	rbp, rbp
	jmp	.label_1299
.label_1328:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	and	rdx, 0x10000
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
	nop	
	je	.label_1304
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	seta	cl
	mov	byte ptr [rbp - 9], cl
.label_1304:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1317
	mov	dword ptr [rbp - 0x2c], 0xb
	jmp	.label_1299
.label_1317:
	jmp	.label_1327
.label_1327:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1323
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x40]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1300
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shl	rcx, 2
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	dl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 1], dl
	je	.label_1306
	cmp	qword ptr [rbp - 0x68], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_1306:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1330
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	dword ptr [rbp - 0x2c], 0xc
	nop	
	jmp	.label_1299
.label_1330:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
.label_1300:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x40]
	mov	rsp, rsp
	mov	rsi, rdx
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x40], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rcx + rdx*4], eax
.label_1323:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], 0
.label_1326:
	cmp	dword ptr [rbp - 0x88], 0x100
	mov	rsp, rsp
	jge	.label_1322
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	ja	.label_1316
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	cmp	eax, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	ja	.label_1316
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	rsi, dword ptr [rbp - 0x88]
	call	bitset_set
.label_1316:
	nop	
	jmp	.label_1315
.label_1315:
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, 1
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1326
.label_1322:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_1299:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415ba0

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	strlen
	cmp	rax, 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1331
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 3
	jmp	.label_1332
.label_1331:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	call	bitset_set
	mov	dword ptr [rbp - 0xc], 0
.label_1332:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415c30

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 1
	setne	r8b
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	movsxd	rax, r9d
	nop	
	cmp	rax, 0
	je	.label_1333
	mov	dword ptr [rbp - 0x24], 3
	nop	
	jmp	.label_1334
.label_1333:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_set
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0
.label_1334:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415cd0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0xe0], rdi
	mov	qword ptr [rbp - 0xf0], rsi
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x78], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x68], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	nop	
	je	.label_1409
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_1
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1452
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_0
	mov	esi, eax
	nop	
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	jne	.label_1409
.label_1452:
	movabs	rax, OFFSET FLAT:.str.9_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1409:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1468
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	realloc
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1505
	mov	dword ptr [rbp - 0xb4], 0xc
	mov	rsp, rsp
	jmp	.label_1344
.label_1505:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx], rax
.label_1468:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	wctype
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rdi + 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_1393
	jmp	.label_1506
.label_1506:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1399
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_1465:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1420
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 8
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1437
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1437:
	jmp	.label_1464
.label_1464:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1465
.label_1420:
	jmp	.label_1337
.label_1399:
	mov	dword ptr [rbp - 0xd4], 0
.label_1504:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1475
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 8
	cmp	edx, 0
	je	.label_1486
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_1486:
	nop	
	jmp	.label_1501
.label_1501:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1504
.label_1475:
	lea	rsi, [rsi]
	jmp	.label_1337
.label_1337:
	jmp	.label_1338
.label_1338:
	mov	rbp, rbp
	jmp	.label_1341
.label_1393:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.10_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1348
	lea	rsi, [rsi]
	jmp	.label_1352
.label_1352:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1470
	mov	dword ptr [rbp - 0xd4], 0
.label_1414:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1370
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 2
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1382
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	esi, edx
	nop	
	call	bitset_set
.label_1382:
	lea	rdi, [rdi]
	jmp	.label_1411
.label_1411:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1414
.label_1370:
	lea	rsi, [rsi]
	jmp	.label_1423
.label_1470:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_1469:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_1433
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 2
	nop	
	cmp	edx, 0
	nop	
	je	.label_1450
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_1450:
	jmp	.label_1467
.label_1467:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1469
.label_1433:
	jmp	.label_1423
.label_1423:
	lea	rsi, [rsi]
	jmp	.label_1479
.label_1479:
	nop	
	jmp	.label_1481
.label_1348:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.8_0
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1489
	lea	rsi, [rsi]
	jmp	.label_1491
.label_1491:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1493
	mov	dword ptr [rbp - 0xd4], 0
.label_1424:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1335
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 0x200
	cmp	edx, 0
	je	.label_1351
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1351:
	jmp	.label_1374
.label_1374:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1424
.label_1335:
	jmp	.label_1385
.label_1493:
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1434:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1507
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	nop	
	cmp	edx, 0
	je	.label_1410
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_1410:
	mov	rsp, rsp
	jmp	.label_1430
.label_1430:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1434
.label_1507:
	lea	rdi, [rdi]
	jmp	.label_1385
.label_1385:
	jmp	.label_1447
.label_1447:
	jmp	.label_1448
.label_1489:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.3_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1455
	mov	rsp, rsp
	jmp	.label_1459
.label_1459:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1461
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1336:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_1477
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x2000
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1487
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1487:
	mov	rbp, rbp
	jmp	.label_1407
.label_1407:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_1336
.label_1477:
	jmp	.label_1343
.label_1461:
	mov	dword ptr [rbp - 0xd4], 0
.label_1387:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1349
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1364
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1364:
	jmp	.label_1383
.label_1383:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1387
.label_1349:
	jmp	.label_1343
.label_1343:
	nop	
	jmp	.label_1400
.label_1400:
	jmp	.label_1402
.label_1455:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.9_1
	nop	
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_1412
	nop	
	jmp	.label_1415
.label_1415:
	nop	
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1419
	mov	dword ptr [rbp - 0xd4], 0
.label_1480:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1397
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_1416
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1416:
	lea	rdi, [rdi]
	jmp	.label_1478
.label_1478:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1480
.label_1397:
	mov	rsp, rsp
	jmp	.label_1353
.label_1419:
	mov	dword ptr [rbp - 0xd4], 0
.label_1406:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_1438
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x400
	nop	
	cmp	edx, 0
	je	.label_1498
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_1498:
	nop	
	jmp	.label_1391
.label_1391:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1406
.label_1438:
	mov	rbp, rbp
	jmp	.label_1353
.label_1353:
	lea	rsi, [rsi]
	jmp	.label_1356
.label_1356:
	jmp	.label_1358
.label_1412:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	eax, OFFSET FLAT:.str.11_2
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1367
	nop	
	jmp	.label_1368
.label_1368:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1371
	mov	dword ptr [rbp - 0xd4], 0
.label_1435:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1483
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_1401
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1401:
	lea	rsi, [rsi]
	jmp	.label_1431
.label_1431:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1435
.label_1483:
	mov	rsp, rsp
	jmp	.label_1446
.label_1371:
	mov	dword ptr [rbp - 0xd4], 0
.label_1482:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1451
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1462
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1462:
	jmp	.label_1476
.label_1476:
	mov	eax, dword ptr [rbp - 0xd4]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1482
.label_1451:
	nop	
	jmp	.label_1446
.label_1446:
	lea	rsi, [rsi]
	jmp	.label_1488
.label_1488:
	mov	rbp, rbp
	jmp	.label_1474
.label_1367:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.12_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1496
	lea	rsi, [rsi]
	jmp	.label_1500
.label_1500:
	cmp	qword ptr [rbp - 0xe0], 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1502
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1388:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_1345
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x4000
	cmp	edx, 0
	nop	
	je	.label_1359
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rbp, rbp
	call	bitset_set
.label_1359:
	nop	
	jmp	.label_1425
.label_1425:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1388
.label_1345:
	jmp	.label_1398
.label_1502:
	mov	dword ptr [rbp - 0xd4], 0
.label_1440:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1405
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x4000
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1422
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1422:
	jmp	.label_1426
.label_1426:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_1440
.label_1405:
	jmp	.label_1398
.label_1398:
	jmp	.label_1457
.label_1457:
	mov	rbp, rbp
	jmp	.label_1396
.label_1496:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.7_1
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1466
	jmp	.label_1472
.label_1472:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1473
	mov	dword ptr [rbp - 0xd4], 0
.label_1443:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1485
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 0x100
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1495
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1495:
	mov	rsp, rsp
	jmp	.label_1347
.label_1347:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_1443
.label_1485:
	mov	rbp, rbp
	jmp	.label_1360
.label_1473:
	mov	dword ptr [rbp - 0xd4], 0
.label_1384:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1365
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	nop	
	je	.label_1377
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_1377:
	jmp	.label_1375
.label_1375:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_1384
.label_1365:
	lea	rsi, [rsi]
	jmp	.label_1360
.label_1360:
	jmp	.label_1417
.label_1417:
	jmp	.label_1429
.label_1466:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.13_1
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_1456
	nop	
	jmp	.label_1436
.label_1436:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe0], 0
	nop	
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1439
	mov	dword ptr [rbp - 0xd4], 0
.label_1380:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_1492
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1404
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1404:
	mov	rsp, rsp
	jmp	.label_1366
.label_1366:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1380
.label_1492:
	jmp	.label_1390
.label_1439:
	mov	dword ptr [rbp - 0xd4], 0
.label_1442:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1503
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1381
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_1381:
	lea	rsi, [rsi]
	jmp	.label_1361
.label_1361:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1442
.label_1503:
	mov	rbp, rbp
	jmp	.label_1390
.label_1390:
	jmp	.label_1373
.label_1373:
	jmp	.label_1376
.label_1456:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.14_2
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_1386
	mov	rsp, rsp
	jmp	.label_1392
.label_1392:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1394
	mov	dword ptr [rbp - 0xd4], 0
.label_1342:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1444
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1428
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	mov	rsp, rsp
	call	bitset_set
.label_1428:
	jmp	.label_1460
.label_1460:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_1342
.label_1444:
	jmp	.label_1346
.label_1394:
	mov	dword ptr [rbp - 0xd4], 0
.label_1441:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1395
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1471
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1471:
	mov	rbp, rbp
	jmp	.label_1499
.label_1499:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	jmp	.label_1441
.label_1395:
	lea	rdi, [rdi]
	jmp	.label_1346
.label_1346:
	jmp	.label_1362
.label_1362:
	lea	rsi, [rsi]
	jmp	.label_1372
.label_1386:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.15_2
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1350
	mov	rbp, rbp
	jmp	.label_1355
.label_1355:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1357
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1421:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_1403
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb0]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 4
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1389
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1389:
	jmp	.label_1418
.label_1418:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1421
.label_1403:
	mov	rsp, rsp
	jmp	.label_1432
.label_1357:
	mov	dword ptr [rbp - 0xd4], 0
.label_1453:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1427
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x98], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 4
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1378
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_1378:
	lea	rsi, [rsi]
	jmp	.label_1413
.label_1413:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1453
.label_1427:
	jmp	.label_1432
.label_1432:
	lea	rdi, [rdi]
	jmp	.label_1484
.label_1484:
	lea	rsi, [rsi]
	jmp	.label_1369
.label_1350:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_1408
	mov	rsp, rsp
	jmp	.label_1494
.label_1494:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1497
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_1339:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rdi, [rdi]
	jge	.label_1340
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1354
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1354:
	jmp	.label_1449
.label_1449:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1339
.label_1340:
	jmp	.label_1454
.label_1497:
	mov	dword ptr [rbp - 0xd4], 0
.label_1363:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_1379
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_1463
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	nop	
	call	bitset_set
.label_1463:
	jmp	.label_1445
.label_1445:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1363
.label_1379:
	nop	
	jmp	.label_1454
.label_1454:
	jmp	.label_1490
.label_1490:
	jmp	.label_1458
.label_1408:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 4
	jmp	.label_1344
.label_1458:
	mov	rsp, rsp
	jmp	.label_1369
.label_1369:
	jmp	.label_1372
.label_1372:
	jmp	.label_1376
.label_1376:
	lea	rdi, [rdi]
	jmp	.label_1429
.label_1429:
	lea	rsi, [rsi]
	jmp	.label_1396
.label_1396:
	lea	rdi, [rdi]
	jmp	.label_1474
.label_1474:
	jmp	.label_1358
.label_1358:
	lea	rsi, [rsi]
	jmp	.label_1402
.label_1402:
	jmp	.label_1448
.label_1448:
	mov	rbp, rbp
	jmp	.label_1481
.label_1481:
	jmp	.label_1341
.label_1341:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], 0
.label_1344:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4171e0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 4], 0
.label_1509:
	cmp	dword ptr [rbp - 4], 4
	jge	.label_1508
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	xor	rax, 0xffffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1509
.label_1508:
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417250

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], 0
.label_1510:
	cmp	dword ptr [rbp - 0xc], 4
	mov	rbp, rbp
	jge	.label_1511
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xc]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1510
.label_1511:
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4172c0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rdi, [rdi]
	jne	.label_1512
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_1515
.label_1512:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
.label_1517:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	jge	.label_1513
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1514
	mov	rsp, rsp
	jmp	.label_1513
.label_1514:
	jmp	.label_1516
.label_1516:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1517
.label_1513:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
.label_1515:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417370

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x2d], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1527
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 7
	mov	rsp, rsp
	jmp	.label_1524
.label_1527:
	nop	
	jmp	.label_1520
.label_1520:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x20
	lea	rdi, [rdi]
	jl	.label_1523
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_1524
.label_1523:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x1e
	jne	.label_1530
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	jmp	.label_1525
.label_1530:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], sil
.label_1525:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_1521
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_1524
.label_1521:
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	movzx	ecx, byte ptr [rbp - 0x2d]
	mov	rbp, rbp
	cmp	eax, ecx
	jne	.label_1518
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x5d
	lea	rsi, [rsi]
	jne	.label_1518
	jmp	.label_1532
.label_1518:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1520
.label_1532:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + 0x48], rcx
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	esi, 0x1a
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	je	.label_1526
	jmp	.label_1531
.label_1531:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x1c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_1533
	nop	
	jmp	.label_1522
.label_1522:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x1e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1528
	mov	rbp, rbp
	jmp	.label_1529
.label_1526:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 3
	mov	rsp, rsp
	jmp	.label_1519
.label_1533:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1519
.label_1528:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 4
	jmp	.label_1519
.label_1529:
	nop	
	jmp	.label_1519
.label_1519:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0
.label_1524:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4175d0

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1537
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	sil, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], sil
	lea	rsi, [rsi]
	jmp	.label_1536
.label_1537:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	byte ptr [rax + 0x8c], 0
	nop	
	je	.label_1535
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1538
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rcx + rax*4], -1
	nop	
	jne	.label_1538
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x15], sil
	jmp	.label_1536
.label_1538:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edx
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	and	edx, 0xffffff80
	cmp	edx, 0
	je	.label_1534
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	nop	
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x15], sil
	jmp	.label_1536
.label_1534:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	re_string_char_size_at
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], cl
	lea	rsi, [rsi]
	jmp	.label_1536
.label_1535:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x48], rsi
	add	rax, rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dil, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], dil
.label_1536:
	movzx	eax, byte ptr [rbp - 0x15]
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4177c0

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	al, dil
	mov	byte ptr [rbp - 0xd], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1539
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xd]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1540
.label_1539:
	movzx	edi, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1540:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417820

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x30], -1
.label_1544:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rdx + 8]
	nop	
	and	ecx, 0xff
	cmp	ecx, 2
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1550
	mov	qword ptr [rbp - 0x48], -2
	jmp	.label_1548
.label_1550:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 0x18
	je	.label_1551
	nop	
	movzx	eax, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1541
.label_1551:
	lea	rsi, [rsi]
	jmp	.label_1546
.label_1541:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1542
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x30
	jl	.label_1542
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x39]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_1542
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -2
	nop	
	jne	.label_1547
.label_1542:
	mov	rax, -2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1552
.label_1547:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1553
	movzx	eax, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_1545
.label_1553:
	mov	rsp, rsp
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x30], 0xa
	movzx	eax, byte ptr [rbp - 0x39]
	mov	esi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	sub	rdx, 0x30
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1549
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1543
.label_1549:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x30], 0xa
	movzx	ecx, byte ptr [rbp - 0x39]
	mov	edx, ecx
	add	rax, rdx
	lea	rsi, [rsi]
	sub	rax, 0x30
	mov	qword ptr [rbp - 8], rax
.label_1543:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1545:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_1552:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1544
.label_1546:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1548:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417a00

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rax, [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
.label_1560:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 0x28
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	create_token_tree
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_1557
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1554
.label_1557:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x30]
	and	edx, 0xfffbffff
	lea	rsi, [rsi]
	or	edx, 0x40000
	mov	dword ptr [rax + 0x30], edx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1561
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1558
.label_1561:
	mov	qword ptr [rbp - 0x18], 0
.label_1556:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_1562
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], cl
.label_1562:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1559
	mov	rbp, rbp
	jmp	.label_1563
.label_1559:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1555
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1554
.label_1555:
	mov	rbp, rbp
	jmp	.label_1556
.label_1563:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_1558:
	jmp	.label_1560
.label_1554:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417bf0

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 0x11
	mov	rbp, rbp
	jne	.label_1564
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_1564
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	or	ecx, 0x80000
	mov	dword ptr [rax + 0x30], ecx
.label_1564:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417c70

	.globl preorder
	.type preorder, @function
preorder:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rdx
.label_1566:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1572
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1568
.label_1572:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1567
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1573
.label_1567:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
.label_1565:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	je	.label_1569
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], cl
.label_1569:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1571
	jmp	.label_1574
.label_1571:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1570
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1568
.label_1570:
	jmp	.label_1565
.label_1574:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1573:
	jmp	.label_1566
.label_1568:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417dd0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1575
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xe0], 0
	mov	rsp, rsp
	je	.label_1575
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	dword ptr [rbp - 4], edx
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, edx
	nop	
	shl	eax, cl
	nop	
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	or	rsi, qword ptr [rdi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa0], rsi
	mov	rbp, rbp
	jmp	.label_1577
.label_1575:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 0x11
	mov	rsp, rsp
	jne	.label_1576
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_1576
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 0x11
	lea	rsi, [rsi]
	jne	.label_1576
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	je	.label_1579
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1579:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1578
	mov	eax, 1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	lea	rdi, [rdi]
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rdx, qword ptr [rsi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa0], rdx
.label_1578:
	jmp	.label_1576
.label_1576:
	lea	rsi, [rsi]
	jmp	.label_1577
.label_1577:
	xor	eax, eax
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417fe0

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	je	.label_1580
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1580
	lea	rdi, [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_1582
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_1582:
	nop	
	jmp	.label_1580
.label_1580:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	je	.label_1581
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1581
	lea	rdi, [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	je	.label_1583
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1583:
	mov	rsp, rsp
	jmp	.label_1581
.label_1581:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418130

	.globl calc_first
	.type calc_first, @function
calc_first:
	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1585
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1584
.label_1585:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x28]
	nop	
	mov	rdx, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x38], -1
	lea	rdi, [rdi]
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1586
	nop	
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1588
.label_1586:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0xc
	nop	
	jne	.label_1587
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rdx]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0x3ff
	mov	rsp, rsp
	shl	ecx, 8
	mov	rsp, rsp
	and	esi, 0xfffc00ff
	mov	rbp, rbp
	or	esi, ecx
	mov	dword ptr [rax + 8], esi
.label_1587:
	jmp	.label_1584
.label_1584:
	mov	dword ptr [rbp - 4], 0
.label_1588:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4182b0

	.globl calc_next
	.type calc_next, @function
calc_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	mov	ecx, eax
	sub	ecx, 0xb
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	je	.label_1592
	nop	
	jmp	.label_1595
.label_1595:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	sub	eax, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	je	.label_1589
	jmp	.label_1593
.label_1592:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1590
.label_1589:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	jmp	.label_1590
.label_1593:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1594
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x20], rax
.label_1594:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_1591
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + 0x20], rax
.label_1591:
	mov	rbp, rbp
	jmp	.label_1590
.label_1590:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4183d0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x28], rsi
	mov	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	add	eax, -2
	mov	esi, eax
	lea	rsi, [rsi]
	sub	eax, 0xe
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	ja	.label_1596
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1598]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x418740

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x30], 0
.label_1616:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jne	.label_1620
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	jne	.label_1618
	jmp	.label_1612
.label_1618:
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x30], 0
.label_1620:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1617
	mov	rsp, rsp
	jmp	.label_1613
.label_1617:
	lea	rdi, [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1619
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	jmp	.label_1614
.label_1619:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jne	.label_1615
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 1
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_1615:
	lea	rsi, [rsi]
	jmp	.label_1613
.label_1613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1616
.label_1612:
	mov	dword ptr [rbp - 0x38], 0
.label_1614:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418880

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
.label_1622:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	jae	.label_1627
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 0x18
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	lea	rsi, [rsi]
	imul	rdi, qword ptr [rbp - 0x28], 0x18
	lea	rsi, [rsi]
	add	rcx, rdi
	mov	rdi, rcx
	nop	
	call	memset
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1622
.label_1627:
	mov	qword ptr [rbp - 0x18], 0
.label_1628:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	jae	.label_1621
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1626:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1623
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_insert_last
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	al, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1629
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_1630
.label_1629:
	lea	rsi, [rsi]
	jmp	.label_1624
.label_1624:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1626
.label_1623:
	lea	rsi, [rsi]
	jmp	.label_1625
.label_1625:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1628
.label_1621:
	mov	dword ptr [rbp - 4], 0
.label_1630:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418a30

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0x38]
	shr	al, 4
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1636
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 8], 0
	je	.label_1636
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1631
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	shl	rsi, cl
	mov	rbp, rbp
	and	rdx, rsi
	lea	rdi, [rdi]
	cmp	rdx, 0
	jne	.label_1636
.label_1631:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1633
.label_1636:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 8
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	mov	rdx, rcx
	nop	
	mov	ecx, eax
	call	create_tree
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	ecx, 9
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	call	create_tree
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1637
	nop	
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1635
.label_1637:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_1635:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x11], r8b
	lea	rdi, [rdi]
	je	.label_1632
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	je	.label_1632
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	nop	
	mov	byte ptr [rbp - 0x11], al
	je	.label_1632
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	sete	al
	mov	byte ptr [rbp - 0x11], al
.label_1632:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1634
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jmp	.label_1633
.label_1634:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	shr	edx, 0x13
	lea	rsi, [rsi]
	and	edx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	edx, 1
	mov	edi, edx
	shl	edi, 0x13
	and	esi, 0xfff7ffff
	mov	rbp, rbp
	or	esi, edi
	mov	dword ptr [rax + 0x30], esi
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rsp, rsp
	and	edx, 1
	lea	rdi, [rdi]
	shl	edx, 0x13
	lea	rdi, [rdi]
	and	esi, 0xfff7ffff
	or	esi, edx
	mov	rsp, rsp
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x68], rax
.label_1633:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418d00

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rsi
	nop	
	mov	qword ptr [rbp - 0x70], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	setae	al
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1638
	nop	
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x18
	cmp	rax, qword ptr [rbp - 0x18]
	setb	dl
	mov	rsp, rsp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1644
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], -1
	nop	
	jmp	.label_1639
.label_1644:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1643
	mov	qword ptr [rbp - 0x30], -1
	lea	rsi, [rsi]
	jmp	.label_1639
.label_1643:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 3
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rsi, qword ptr [rbp - 0x18], 0x18
	nop	
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x30]
	imul	rsi, qword ptr [rbp - 0x18], 0x18
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	dl, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
	je	.label_1641
	mov	rsp, rsp
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], al
	mov	rsp, rsp
	je	.label_1641
	nop	
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	nop	
	je	.label_1641
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
.label_1641:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1640
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jmp	.label_1639
.label_1640:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
.label_1638:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xfffc00ff
	nop	
	mov	dword ptr [rax + 8], edx
	mov	edx, dword ptr [rbp - 0x70]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_1642
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], al
	mov	rbp, rbp
	jg	.label_1645
.label_1642:
	mov	eax, dword ptr [rbp - 0x70]
	nop	
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	nop	
	mov	byte ptr [rbp - 0x61], cl
.label_1645:
	mov	al, byte ptr [rbp - 0x61]
	xor	ecx, ecx
	mov	edx, 0x18
	mov	esi, edx
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x38]
	shl	rdi, 4
	add	rdi, qword ptr [r8]
	mov	rsp, rsp
	mov	r9d, dword ptr [rdi + 8]
	and	edx, 1
	shl	edx, 0x14
	mov	rbp, rbp
	and	r9d, 0xffefffff
	nop	
	or	r9d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 8], r9d
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r8 + 0x18]
	nop	
	mov	qword ptr [r8 + rdi*8], -1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	r8, qword ptr [r8 + 0x10], 0x18
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rsi
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0xc], ecx
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rdi, qword ptr [rdi + 0x10], 0x18
	mov	rbp, rbp
	add	rdx, rdi
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	r8, rdi
	mov	rbp, rbp
	add	r8, 1
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x10], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_1639:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419170

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], 2
	mov	rsp, rsp
	mov	rdi, rcx
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1649
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	jmp	.label_1651
.label_1649:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1647
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	jmp	.label_1648
.label_1647:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jge	.label_1646
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	jmp	.label_1650
.label_1646:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1650:
	nop	
	jmp	.label_1648
.label_1648:
	mov	dword ptr [rbp - 0xc], 0
.label_1651:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4192e0

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 8
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 8], 1
	mov	rdi, rcx
	mov	rbp, rbp
	call	malloc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1653
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 0xc
	jmp	.label_1652
.label_1653:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_1652:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4193b0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	lea	r8, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x48], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x79], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x18
	lea	rdi, [rdi]
	add	rdx, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdx + 8]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	rdi, r8
	mov	rbp, rbp
	mov	rsi, rdx
	call	re_node_set_alloc
	nop	
	mov	dword ptr [rbp - 0x14], eax
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	nop	
	je	.label_1660
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_1662
.label_1660:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	edx, 8
	and	edx, 0x3ff
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1654
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1654
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	nop	
	shr	edx, 0x12
	lea	rsi, [rsi]
	and	edx, 1
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_1654
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [r8]
	mov	rsp, rsp
	mov	r9d, dword ptr [rax + 8]
	shr	r9d, 8
	and	r9d, 0x3ff
	mov	r8d, r9d
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1659
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	jmp	.label_1662
.label_1659:
	mov	rsp, rsp
	jmp	.label_1654
.label_1654:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	rbp, rbp
	and	edx, 8
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1657
	mov	qword ptr [rbp - 0x68], 0
.label_1667:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_1655
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], -1
	mov	rsp, rsp
	jne	.label_1669
	mov	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	jmp	.label_1668
.label_1669:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1661
	nop	
	lea	rdi, [rbp - 0x60]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1663
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_1662
.label_1663:
	jmp	.label_1664
.label_1661:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
.label_1664:
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rbp - 0x60]
	mov	rsp, rsp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_1658
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	jmp	.label_1662
.label_1658:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1656
	nop	
	mov	byte ptr [rbp - 0x21], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_1656:
	jmp	.label_1668
.label_1668:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1667
.label_1655:
	jmp	.label_1657
.label_1657:
	lea	rdi, [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	nop	
	je	.label_1666
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], 0xc
	lea	rdi, [rdi]
	jmp	.label_1662
.label_1666:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1665
	test	byte ptr [rbp - 0x79], 1
	jne	.label_1665
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1670
.label_1665:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
.label_1670:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
	mov	dword ptr [rbp - 0x6c], 0
.label_1662:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	add	rsp, 0x80
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419890

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rsi, 3
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	call	malloc
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1671
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0xc
	lea	rdi, [rdi]
	jmp	.label_1672
.label_1671:
	mov	dword ptr [rbp - 0xc], 0
.label_1672:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419940

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], r8d
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], r8d
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rcx
.label_1684:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	cmp	edx, 4
	jne	.label_1676
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], -1
	sete	r8b
	nop	
	and	r8b, 1
	mov	rbp, rbp
	movzx	edx, r8b
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1675
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], 0xc
	nop	
	jmp	.label_1674
.label_1675:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1693
	nop	
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1674
.label_1693:
	jmp	.label_1678
.label_1676:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1689
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	jmp	.label_1692
.label_1689:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_1681
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	jne	.label_1679
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	je	.label_1679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	nop	
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	nop	
	movsxd	rcx, edx
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_1687
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1674
.label_1687:
	lea	rdi, [rdi]
	jmp	.label_1692
.label_1679:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	edx, 8
	and	edx, 0x3ff
	or	edx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], edx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	duplicate_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], -1
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1688
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1674
.label_1688:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x39], al
	nop	
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1682
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rsi, [rsi]
	jmp	.label_1674
.label_1682:
	lea	rdi, [rdi]
	jmp	.label_1680
.label_1681:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	call	search_duplicated_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], -1
	mov	rsp, rsp
	jne	.label_1673
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1690
	mov	dword ptr [rbp - 0x28], 0xc
	mov	rsp, rsp
	jmp	.label_1674
.label_1690:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1686
	nop	
	mov	dword ptr [rbp - 0x28], 0xc
	mov	rbp, rbp
	jmp	.label_1674
.label_1686:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x20]
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	setne	r9b
	mov	rbp, rbp
	and	r9b, 1
	movzx	eax, r9b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1677
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	jmp	.label_1674
.label_1677:
	jmp	.label_1685
.label_1673:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_1695
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rdi, [rdi]
	jmp	.label_1674
.label_1695:
	jmp	.label_1685
.label_1685:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], -1
	lea	rdi, [rdi]
	sete	r8b
	nop	
	and	r8b, 1
	movzx	edx, r8b
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_1694
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rdi, [rdi]
	jmp	.label_1674
.label_1694:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1691
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1674
.label_1691:
	mov	rbp, rbp
	jmp	.label_1680
.label_1680:
	jmp	.label_1683
.label_1683:
	lea	rdi, [rdi]
	jmp	.label_1678
.label_1678:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1684
.label_1692:
	mov	dword ptr [rbp - 0x28], 0
.label_1674:
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419fe0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x50], rsi
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1706
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1697
.label_1706:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_1698
.label_1697:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1710
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1705
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rbp, rbp
	jmp	.label_1698
.label_1705:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1710:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1714
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_1698
.label_1714:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1696:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], cl
	jl	.label_1699
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	setge	al
	nop	
	mov	byte ptr [rbp - 0x41], al
.label_1699:
	mov	al, byte ptr [rbp - 0x41]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1711
	jmp	.label_1717
.label_1711:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1702
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1708
.label_1702:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_1704
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	qword ptr [rdx + rcx*8 - 8], rax
	nop	
	jmp	.label_1713
.label_1704:
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
.label_1713:
	mov	rbp, rbp
	jmp	.label_1708
.label_1708:
	mov	rsp, rsp
	jmp	.label_1696
.label_1717:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jl	.label_1712
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx, 1
	nop	
	shl	rdx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1712:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	shl	rcx, 1
	lea	rsi, [rsi]
	add	rax, rcx
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1709
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_1698
.label_1709:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1707:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_1703
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	add	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1716
	jmp	.label_1701
.label_1716:
	lea	rdi, [rdi]
	jmp	.label_1700
.label_1703:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jge	.label_1715
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rdx, 3
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1701
.label_1715:
	lea	rsi, [rsi]
	jmp	.label_1700
.label_1700:
	mov	rsp, rsp
	jmp	.label_1707
.label_1701:
	nop	
	mov	dword ptr [rbp - 0x24], 0
.label_1698:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a540

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	qword ptr [rsi], 0
	jne	.label_1718
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_node_set_init_1
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rbp, rbp
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	jmp	.label_1724
.label_1718:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jne	.label_1727
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1724
.label_1727:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1720
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1723
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1724
.label_1723:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
.label_1720:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	jge	.label_1725
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1728:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	jle	.label_1719
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1728
.label_1719:
	jmp	.label_1721
.label_1725:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_1726:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_1722
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1726
.label_1722:
	jmp	.label_1721
.label_1721:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	nop	
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 9], 1
.label_1724:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a7f0

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	shl	rsi, 4
	nop	
	add	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_dfa_add_node
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1729
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	esi, dword ptr [rcx + 8]
	and	eax, 0x3ff
	shl	eax, 8
	nop	
	and	esi, 0xfffc00ff
	nop	
	or	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rcx + 8], esi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	shr	eax, 8
	and	eax, 0x3ff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	shr	esi, 8
	mov	rsp, rsp
	and	esi, 0x3ff
	lea	rdi, [rdi]
	or	esi, eax
	mov	eax, dword ptr [rcx + 8]
	and	esi, 0x3ff
	lea	rsi, [rsi]
	shl	esi, 8
	lea	rsi, [rsi]
	and	eax, 0xfffc00ff
	lea	rdi, [rdi]
	or	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 8], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xfffbffff
	lea	rdi, [rdi]
	or	eax, 0x40000
	mov	rbp, rbp
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rdx*8], rcx
.label_1729:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a970

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_1736:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	shr	eax, 0x12
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_1735
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 9], al
.label_1735:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	nop	
	jne	.label_1733
	jmp	.label_1731
.label_1733:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1732
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	shr	esi, 8
	lea	rdi, [rdi]
	and	esi, 0x3ff
	lea	rsi, [rsi]
	cmp	eax, esi
	jne	.label_1732
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1730
.label_1732:
	jmp	.label_1734
.label_1734:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1736
.label_1731:
	mov	qword ptr [rbp - 8], -1
.label_1730:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41aa90

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1737
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	sete	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1738
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_1739
.label_1738:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
.label_1737:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
.label_1739:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aba0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1740
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	nop	
	je	.label_1741
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1742
.label_1741:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_1743
.label_1740:
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 0x18
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memset
.label_1743:
	mov	dword ptr [rbp - 4], 0
.label_1742:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41acd0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	mov	rbp, rbp
	jg	.label_1748
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1751
.label_1748:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_1745:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jae	.label_1744
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	shr	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_1750
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1747
.label_1750:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_1747:
	lea	rdi, [rdi]
	jmp	.label_1745
.label_1744:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jne	.label_1749
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1746
.label_1749:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_1746
.label_1746:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_1751:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ae00

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx + 8], 0
	mov	rsp, rsp
	jne	.label_1752
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1754
.label_1752:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	and	rdi, qword ptr [rcx + 0x88]
	nop	
	imul	rcx, rdi, 0x18
	nop	
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x18], 0
.label_1756:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_1757
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jne	.label_1753
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xf
	movzx	edx, cl
	cmp	edx, dword ptr [rbp - 0x1c]
	jne	.label_1753
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	re_node_set_compare
	test	al, 1
	mov	rsp, rsp
	jne	.label_1758
	jmp	.label_1753
.label_1758:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1754
.label_1753:
	mov	rsp, rsp
	jmp	.label_1759
.label_1759:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1756
.label_1757:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	call	create_cd_newstate
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1755
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax], 0xc
.label_1755:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1754:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41afc0

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x1c], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 8]
	nop	
	mov	esi, dword ptr [rbp - 0x1c]
	mov	eax, esi
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_1761:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1760
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1761
.label_1760:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b050

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1762
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_1762
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	je	.label_1767
.label_1762:
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1765
.label_1767:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1766:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_1764
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_1763
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1765
.label_1763:
	lea	rsi, [rsi]
	jmp	.label_1766
.label_1764:
	mov	byte ptr [rbp - 1], 1
.label_1765:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b130

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	nop	
	mov	eax, 0x70
	mov	r8d, eax
	mov	eax, 1
	mov	r9d, eax
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	rdi, r8
	mov	rsi, r9
	lea	rdi, [rdi]
	call	calloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	sete	r10b
	and	r10b, 1
	nop	
	movzx	edx, r10b
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1787
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1768
.label_1787:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1782
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jmp	.label_1768
.label_1782:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	dl, al
	mov	sil, byte ptr [rcx + 0x68]
	nop	
	and	dl, 0xf
	mov	rbp, rbp
	and	sil, 0xf0
	or	sil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x68], sil
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, 8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x50], rcx
	mov	qword ptr [rbp - 0x50], 0
.label_1779:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1784
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x24], esi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	esi, 8
	mov	rsp, rsp
	and	esi, 0x3ff
	mov	dword ptr [rbp - 0x28], esi
	cmp	dword ptr [rbp - 0x24], 1
	mov	rbp, rbp
	jne	.label_1786
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_1786
	jmp	.label_1770
.label_1786:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	mov	rsp, rsp
	and	ecx, 1
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	dl, byte ptr [rax + 0x68]
	nop	
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	or	esi, ecx
	mov	rbp, rbp
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], dil
	nop	
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_1785
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	nop	
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_1778
.label_1785:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 4
	jne	.label_1781
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xbf
	mov	rsp, rsp
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_1781:
	lea	rdi, [rdi]
	jmp	.label_1778
.label_1778:
	cmp	dword ptr [rbp - 0x28], 0
	nop	
	je	.label_1777
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	cmp	rax, rcx
	jne	.label_1769
	mov	eax, 0x18
	nop	
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	nop	
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1776
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free_state
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jmp	.label_1768
.label_1776:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1773
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jmp	.label_1768
.label_1773:
	mov	qword ptr [rbp - 8], 0
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	and	cl, 0x7f
	mov	rbp, rbp
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_1769:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1783
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_1771
.label_1783:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1772
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1771
.label_1772:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1774
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1771
.label_1774:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 0x40
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1780
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1780
.label_1771:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 8
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	call	re_node_set_remove_at
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1780:
	jmp	.label_1777
.label_1777:
	jmp	.label_1770
.label_1770:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1779
.label_1784:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1775
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	call	free_state
	mov	qword ptr [rbp - 0x58], 0
.label_1775:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
.label_1768:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5d0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jl	.label_1788
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_1791
.label_1788:
	mov	rsp, rsp
	jmp	.label_1790
.label_1791:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
.label_1789:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_1790
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1789
.label_1790:
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b680

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rdx, 0x20
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rdx
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1797
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rbp, rbp
	jmp	.label_1796
.label_1797:
	mov	qword ptr [rbp - 0x40], 0
.label_1800:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_1798
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	nop	
	jne	.label_1794
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_1795
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0xc
	jmp	.label_1796
.label_1795:
	lea	rsi, [rsi]
	jmp	.label_1794
.label_1794:
	jmp	.label_1792
.label_1792:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_1800
.label_1798:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rdx + 0x88]
	nop	
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	setle	sil
	and	sil, 1
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1799
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1793
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rsp, rsp
	jmp	.label_1796
.label_1793:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
.label_1799:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	mov	dword ptr [rbp - 0x24], 0
.label_1796:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b900

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	mov	dword ptr [rbp - 0x44], 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdx
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1801
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 3
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1810
	mov	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_1808
.label_1810:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1818
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1808
.label_1818:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	jmp	.label_1806
.label_1801:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1812
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	je	.label_1815
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	lea	rdi, [rdi]
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1802
	nop	
	mov	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1808
.label_1802:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1814
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	nop	
	mov	dword ptr [rbp - 0x10], 0
	jmp	.label_1808
.label_1814:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1815:
	mov	rsp, rsp
	jmp	.label_1807
.label_1812:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 2
	mov	rsp, rsp
	jne	.label_1809
	mov	rbp, rbp
	jmp	.label_1813
.label_1809:
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	mov	rbp, rbp
	call	__assert_fail
.label_1813:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jb	.label_1811
	jmp	.label_1816
.label_1811:
	movabs	rdi, OFFSET FLAT:.str.24
	nop	
	movabs	rsi, OFFSET FLAT:.str.22
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1816:
	mov	dword ptr [rbp - 0x44], 2
.label_1807:
	nop	
	jmp	.label_1806
.label_1806:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1805:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1817
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1805
.label_1817:
	lea	rsi, [rsi]
	jmp	.label_1804
.label_1804:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	mov	rbp, rbp
	jae	.label_1803
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], -1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1804
.label_1803:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10], eax
.label_1808:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bcf0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x60
	nop	
	mov	al, r9b
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], r8
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 8], r10
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1821
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1821:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_1827
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1825
.label_1827:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1825:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8b, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	r8d, r8b
	call	re_string_construct_common
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	mov	rsp, rsp
	movzx	eax, r10b
	nop	
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_1826
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1820
.label_1826:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xb8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	mov	dl, sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x8e], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movzx	esi, byte ptr [rax + 0x8b]
	cmp	esi, 0
	nop	
	je	.label_1824
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1822
.label_1824:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_1822:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 0x8b]
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jne	.label_1828
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1819
.label_1828:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1823
.label_1819:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
.label_1823:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 0x54], 0
.label_1820:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bf20

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x28], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0xa0], esi
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0xa8], -1
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1829
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0x28
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jae	.label_1835
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1834
.label_1835:
	nop	
	mov	rax, -1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1834:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1831
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rsp, rsp
	jmp	.label_1830
.label_1831:
	imul	rdi, qword ptr [rbp - 0x20], 0x28
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rsp, rsp
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xd8], 0
	nop	
	mov	byte ptr [rbp - 0x11], cl
	je	.label_1832
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
.label_1832:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1833
	mov	dword ptr [rbp - 0x24], 0xc
	jmp	.label_1830
.label_1833:
	jmp	.label_1829
.label_1829:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd0], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax + 0xe0], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xf0], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
.label_1830:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c0f0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0xc8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	nop	
	mov	dword ptr [rbp - 0x6c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rsi + 0x28]
	cmp	rsi, qword ptr [rbp - 0xe8]
	setle	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_1909
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1858
.label_1909:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_1869
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_1869:
	mov	eax, 6
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x50]
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	mov	qword ptr [rsi + 0x58], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x60]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x30], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x28], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rdx + 0x38], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8c], 0
	mov	edi, dword ptr [rbp - 0x6c]
	and	edi, 1
	mov	rsp, rsp
	cmp	edi, 0
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	dword ptr [rdx + 0x70], eax
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 0x8b], 0
	jne	.label_1885
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 8], rax
.label_1885:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1858:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	setne	al
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1880
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x38]
	setl	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1865
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1910
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_1905:
	nop	
	mov	eax, 2
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jle	.label_1847
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_1873
.label_1847:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_1878
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1891
.label_1878:
	jmp	.label_1899
.label_1891:
	jmp	.label_1873
.label_1873:
	mov	rsp, rsp
	jmp	.label_1903
.label_1903:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	jl	.label_1905
.label_1899:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_1912
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
.label_1912:
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jle	.label_1864
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1864
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1864
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rsp, rsp
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], 0
.label_1883:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1844
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1883
.label_1844:
	lea	rsi, [rsi]
	jmp	.label_1913
.label_1864:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xe8]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	byte ptr [rax + 0x8c], 0
.label_1895:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd8], 0
	mov	byte ptr [rbp - 0x49], cl
	jle	.label_1866
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	sete	dl
	mov	byte ptr [rbp - 0x49], dl
.label_1866:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1904
	mov	rsp, rsp
	jmp	.label_1890
.label_1904:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	jmp	.label_1895
.label_1890:
	jmp	.label_1845
.label_1845:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1849
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_1872
	jmp	.label_1849
.label_1872:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1845
.label_1849:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jne	.label_1900
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1851
.label_1900:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	mov	rbp, rbp
	je	.label_1842
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], 0
.label_1874:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	jge	.label_1902
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_1874
.label_1902:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_1842:
	lea	rsi, [rsi]
	jmp	.label_1851
.label_1851:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x38], rax
.label_1913:
	jmp	.label_1911
.label_1910:
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1884
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rdx, 2
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memmove
.label_1884:
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8b]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1843
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memmove
.label_1843:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rdx
.label_1911:
	lea	rdi, [rdi]
	jmp	.label_1889
.label_1865:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1893
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	sub	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x8c], 0
.label_1893:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_1860
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], 0xffffffff
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	byte ptr [rax + 0x89], 0
	mov	rbp, rbp
	je	.label_1867
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rdx + 0x90]
	lea	rdi, [rdi]
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx]
	jae	.label_1881
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
.label_1881:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_1906:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jb	.label_1846
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movzx	ecx, byte ptr [rax]
	nop	
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_1853
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	qword ptr [rax + 0x78], 0
	nop	
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1862
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 6
	lea	rsi, [rsi]
	jge	.label_1887
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1892
.label_1887:
	nop	
	mov	eax, 6
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1892
.label_1892:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x14], ecx
.label_1837:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0
	mov	rbp, rbp
	jl	.label_1897
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	byte ptr [rbp + rax - 0x92], sil
	nop	
	jmp	.label_1837
.label_1897:
	lea	rax, [rbp - 0x92]
	mov	qword ptr [rbp - 0xb0], rax
.label_1862:
	lea	rdi, [rbp - 0x8c]
	mov	rbp, rbp
	lea	rax, [rbp - 0xa8]
	mov	rsp, rsp
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	call	memset
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	ja	.label_1886
	cmp	qword ptr [rbp - 0x88], -2
	jae	.label_1886
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rcx, 0x20
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	call	memset
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	sub	rdx, rdi
	mov	rsp, rsp
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x30], rcx
	nop	
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x50], eax
.label_1886:
	mov	rsp, rsp
	jmp	.label_1846
.label_1853:
	jmp	.label_1859
.label_1859:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_1906
.label_1846:
	mov	rbp, rbp
	jmp	.label_1867
.label_1867:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], -1
	jne	.label_1876
	mov	rbp, rbp
	lea	rdx, [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xe8]
	call	re_string_skip_chars
	sub	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rdx + 0x30], rax
.label_1876:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x50], -1
	nop	
	jne	.label_1888
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	nop	
	mov	edx, dword ptr [rbp - 0x6c]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	mov	dword ptr [rsi + 0x70], eax
	lea	rdi, [rdi]
	jmp	.label_1901
.label_1888:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x8e]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	nop	
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1871
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	jne	.label_1848
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0x5f
	jne	.label_1871
.label_1848:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1839
.label_1871:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x50], 0xa
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], cl
	mov	rbp, rbp
	jne	.label_1861
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], dl
.label_1861:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd9]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, 2
	mov	rsp, rsp
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], ecx
.label_1839:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x70], eax
.label_1901:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_1879
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
.label_1838:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jge	.label_1907
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1838
.label_1907:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_1856
	nop	
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	memset
.label_1856:
	jmp	.label_1879
.label_1879:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1840
.label_1860:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x78], 0
	je	.label_1882
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x5c], edx
.label_1882:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	call	bitset_contain
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1850
	mov	rbp, rbp
	jmp	.label_1855
.label_1850:
	mov	eax, 1
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	jmp	.label_1857
.label_1855:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x5c], 0xa
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	lea	rdi, [rdi]
	jne	.label_1863
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], dl
.label_1863:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	nop	
	mov	dword ptr [rbp - 0xcc], ecx
.label_1857:
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	dword ptr [rcx + 0x70], eax
.label_1840:
	jmp	.label_1889
.label_1889:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1896
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
.label_1896:
	jmp	.label_1880
.label_1880:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x58], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x68]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x68], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	dword ptr [rax + 0x90], 1
	mov	rbp, rbp
	jle	.label_1836
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	je	.label_1870
	mov	rdi, qword ptr [rbp - 0xc8]
	nop	
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb4], eax
	cmp	dword ptr [rbp - 0xb4], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	lea	rsi, [rsi]
	je	.label_1877
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_1894
.label_1877:
	nop	
	jmp	.label_1898
.label_1870:
	mov	rdi, qword ptr [rbp - 0xc8]
	call	build_wcs_buffer
.label_1898:
	mov	rsp, rsp
	jmp	.label_1875
.label_1836:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1908
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	byte ptr [rax + 0x88], 0
	mov	rbp, rbp
	je	.label_1841
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	call	build_upper_buffer
	mov	rsp, rsp
	jmp	.label_1852
.label_1841:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	mov	rbp, rbp
	je	.label_1854
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	re_string_translate_buffer
.label_1854:
	mov	rbp, rbp
	jmp	.label_1852
.label_1852:
	jmp	.label_1868
.label_1908:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	qword ptr [rcx + 0x30], rax
.label_1868:
	mov	rbp, rbp
	jmp	.label_1875
.label_1875:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 0x2c], 0
.label_1894:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0xf0
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d2c0

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, sil
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x64]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x88], rdx
	mov	qword ptr [rbp - 0xa0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], -1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdx
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x64], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x78], rdi
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + 0x68]
	shr	al, 7
	movzx	esi, al
	cmp	esi, 0
	je	.label_1947
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1950
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1921
.label_1950:
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1915
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1921
.label_1915:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	je	.label_1927
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 2
	cmp	eax, 0
	je	.label_1927
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_1921
.label_1927:
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 2
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_1940
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1921
.label_1940:
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1943
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x50]
	nop	
	mov	ecx, dword ptr [rbp - 0x94]
	call	re_acquire_state_context
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1921
.label_1943:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1921
.label_1947:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_1921:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1914
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x64], 0xc
	mov	rbp, rbp
	jne	.label_1928
	jmp	.label_1934
.label_1928:
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	movabs	rsi, OFFSET FLAT:.str.22
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1934:
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_1922
.label_1914:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1937
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1941
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	byte ptr [rbp - 0x31], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	add	rcx, 8
	mov	rsi, rcx
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x64], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1952
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_1922
.label_1952:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1925
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	je	.label_1926
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1922
.label_1926:
	nop	
	jmp	.label_1925
.label_1925:
	jmp	.label_1941
.label_1941:
	mov	rsp, rsp
	jmp	.label_1937
.label_1937:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	edx, edx
	mov	rsp, rsp
	mov	eax, edx
	cmp	rax, 0
	je	.label_1916
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1955
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x90]
	call	check_halt_state_context
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1918
.label_1955:
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jne	.label_1924
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1922
.label_1924:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0xa0], 1
	mov	rbp, rbp
	jmp	.label_1918
.label_1918:
	jmp	.label_1916
.label_1916:
	lea	rdi, [rdi]
	jmp	.label_1932
.label_1932:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	setle	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1933
	lea	rdi, [rdi]
	jmp	.label_1945
.label_1933:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	setge	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1946
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1953
.label_1946:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	setge	dl
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1919
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_1919
.label_1953:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	nop	
	setne	dl
	nop	
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1935
	cmp	dword ptr [rbp - 0x64], 0xc
	lea	rsi, [rsi]
	jne	.label_1944
	mov	rsp, rsp
	jmp	.label_1951
.label_1944:
	nop	
	movabs	rdi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.22
	mov	edx, 0x46c
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	lea	rdi, [rdi]
	call	__assert_fail
.label_1951:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], -2
	mov	rbp, rbp
	jmp	.label_1922
.label_1935:
	nop	
	jmp	.label_1919
.label_1919:
	nop	
	lea	rdi, [rbp - 0x64]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x48]
	call	transit_state
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1917
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	merge_state_with_log
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1917:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	jne	.label_1930
	cmp	dword ptr [rbp - 0x64], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1931
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_1922
.label_1931:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1939
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_1942
	nop	
	test	byte ptr [rbp - 9], 1
	je	.label_1939
.label_1942:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x64]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	find_recover_state
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_1948
.label_1939:
	lea	rsi, [rsi]
	jmp	.label_1945
.label_1948:
	mov	rsp, rsp
	jmp	.label_1930
.label_1930:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1920
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1954
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1956
.label_1954:
	mov	byte ptr [rbp - 0x31], 0
.label_1956:
	lea	rsi, [rsi]
	jmp	.label_1920
.label_1920:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	shr	cl, 4
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	cmp	edx, 0
	je	.label_1923
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1929
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_1936
.label_1929:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0xa0], 1
	mov	qword ptr [rbp - 0x18], 0
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	jne	.label_1938
	jmp	.label_1945
.label_1938:
	jmp	.label_1936
.label_1936:
	nop	
	jmp	.label_1923
.label_1923:
	jmp	.label_1932
.label_1945:
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_1949
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_1949:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_1922:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41db10

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rdx + 0xa0]
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 8], 0
.label_1962:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_1957
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1c]
	call	check_halt_node_context
	test	al, 1
	jne	.label_1961
	jmp	.label_1958
.label_1961:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1960
.label_1958:
	mov	rsp, rsp
	jmp	.label_1959
.label_1959:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1962
.label_1957:
	mov	qword ptr [rbp - 0x30], 0
.label_1960:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41dc10

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x70], rdi
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdi + 0x98]
	mov	qword ptr [rbp - 0x60], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdi + 0xb0]
	mov	qword ptr [rbp - 8], rdi
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	setbe	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_1965
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xc
	jmp	.label_1979
.label_1965:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1970
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 0xc
	mov	rbp, rbp
	jmp	.label_1969
.label_1970:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_1980
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1977
	mov	dword ptr [rbp - 0x7c], 0xc
	jmp	.label_1969
.label_1977:
	lea	rdi, [rdi]
	jmp	.label_1975
.label_1975:
	lea	rdi, [rbp - 0x58]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, 1
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	rdi, rax
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x78]
	call	sift_ctx_init
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	sift_states_backward
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x7c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_1973
	mov	rsp, rsp
	jmp	.label_1969
.label_1973:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_1981
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1964
.label_1981:
	jmp	.label_1966
.label_1964:
	jmp	.label_1967
.label_1967:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_1968
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_1969
.label_1968:
	lea	rdi, [rdi]
	jmp	.label_1974
.label_1974:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x15], al
	je	.label_1972
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	cmp	esi, 0
	setne	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x15], dl
.label_1972:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_1967
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1975
.label_1966:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x7c], 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1971
	jmp	.label_1969
.label_1971:
	lea	rsi, [rsi]
	jmp	.label_1963
.label_1980:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x68]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x7c], 0
	setne	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	nop	
	movzx	eax, r9b
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_1976
	jmp	.label_1969
.label_1976:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_1978
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_1969
.label_1978:
	jmp	.label_1963
.label_1963:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rdi + 0xb0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 0
.label_1969:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x14], ecx
.label_1979:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41e0a0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
.label_1985:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_1986
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xf8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_1982:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	jge	.label_1983
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1982
.label_1983:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_1984
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_1984:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_1985
.label_1986:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0xe8], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0xc8], 0
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e230

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x8d], al
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx,  qword ptr [word ptr [label_1999]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_2000]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_2001]]
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rbp - 0xd], 0
	test	byte ptr [rbp - 0x8d], 1
	lea	rdi, [rdi]
	je	.label_2002
	lea	rax, [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	imul	rdi, qword ptr [rax + 8], 0x30
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_2004
	nop	
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rbp, rbp
	jmp	.label_1988
.label_2004:
	jmp	.label_2015
.label_2002:
	mov	qword ptr [rbp - 0x80], 0
.label_2015:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	shl	rcx, 4
	cmp	rcx, 0xfc0
	lea	rdi, [rdi]
	jae	.label_2006
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_2011
.label_2006:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	shl	rax, 4
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1994
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	call	free_fail_stack_return
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_1988
.label_1994:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], 1
.label_2011:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_2007:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_1991
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x20]
	call	update_regs
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jne	.label_2009
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_2009
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_1997
	mov	qword ptr [rbp - 0x70], 0
.label_2013:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_1993
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	qword ptr [rax], -1
	lea	rdi, [rdi]
	jle	.label_1996
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x88]
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jne	.label_1996
	lea	rsi, [rsi]
	jmp	.label_1993
.label_1996:
	jmp	.label_1992
.label_1992:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2013
.label_1993:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1990
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	byte ptr [rbp - 0xd], 1
	je	.label_1998
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	free
.label_1998:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1988
.label_1990:
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	pop_fail_stack
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1989
.label_1997:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xd], 1
	je	.label_1995
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_1995:
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jmp	.label_1988
.label_1989:
	jmp	.label_2009
.label_2009:
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x50]
	lea	r9, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	r8, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	proceed_next_node
	add	rsp, 0x10
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	setl	r10b
	and	r10b, 1
	movzx	r11d, r10b
	lea	rsi, [rsi]
	movsxd	rax, r11d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2010
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], -2
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_2005
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0xd], 1
	je	.label_2014
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2014:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	free_fail_stack_return
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_1988
.label_2005:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2003
	lea	rsi, [rbp - 0x50]
	lea	r8, [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	call	pop_fail_stack
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2012
.label_2003:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0xd], 1
	je	.label_1987
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	free
.label_1987:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 1
	lea	rdi, [rdi]
	jmp	.label_1988
.label_2012:
	lea	rsi, [rsi]
	jmp	.label_2010
.label_2010:
	lea	rsi, [rsi]
	jmp	.label_2007
.label_1991:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	test	byte ptr [rbp - 0xd], 1
	je	.label_2008
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	free
.label_2008:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	call	free_fail_stack_return
	mov	dword ptr [rbp - 0xc], eax
.label_1988:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e790

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	match_ctx_clean
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0xf8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	call	free
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e7f0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 4], edx
	cmp	qword ptr [rbp - 0x18], 0
	setl	al
	nop	
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rsi, [rsi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2026
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x70]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	jmp	.label_2016
.label_2026:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	esi, dl
	lea	rsi, [rsi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2018
	mov	rbp, rbp
	mov	eax, 0xa
	mov	ecx, 8
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 4]
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_2016
.label_2018:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	nop	
	jle	.label_2024
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_2028:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2027
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2020
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_2016
.label_2020:
	jmp	.label_2028
.label_2027:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x30], edx
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edx, byte ptr [rax + 0x8e]
	cmp	edx, 0
	mov	rbp, rbp
	setne	sil
	and	sil, 1
	movzx	edx, sil
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	nop	
	je	.label_2022
	nop	
	mov	edi, dword ptr [rbp - 0x30]
	call	iswalnum
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_2019
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x30], 0x5f
	jne	.label_2022
.label_2019:
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_2016
.label_2022:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2021
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8d]
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x31], dl
.label_2021:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, 2
	mov	rbp, rbp
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	jmp	.label_2016
.label_2024:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x2c], edx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x2c]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2017
	mov	rsp, rsp
	jmp	.label_2025
.label_2017:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 1
	mov	rbp, rbp
	jmp	.label_2016
.label_2025:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x2c], 0xa
	mov	byte ptr [rbp - 0x25], cl
	jne	.label_2023
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x25], dl
.label_2023:
	mov	al, byte ptr [rbp - 0x25]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x24], ecx
.label_2016:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41ea60

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	add	rdx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x48], rdx
.label_2034:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2036
	lea	rdi, [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	r8b, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -2
	mov	byte ptr [rbp - 0x39], r8b
	je	.label_2030
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	mov	byte ptr [rbp - 0x39], al
	lea	rsi, [rsi]
	je	.label_2030
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	mov	byte ptr [rbp - 0x39], al
.label_2030:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2029
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2035
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2031
.label_2035:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 0
	nop	
	jmp	.label_2032
.label_2031:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], edx
.label_2032:
	nop	
	mov	qword ptr [rbp - 0x20], 1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2033
.label_2029:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x4c], eax
.label_2033:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2034
.label_2036:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ec00

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x18]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, cl
	lea	rdi, [rdi]
	and	rdx, 1
	lea	rsi, [rsi]
	cmp	rdx, 0
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	r8d, cl
	mov	eax, r8d
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ec80

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_2039:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2041
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	cmp	edx, 8
	jne	.label_2040
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	mov	rsp, rsp
	jge	.label_2040
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2040
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	call	match_ctx_add_subtop
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	setne	cl
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2038
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_2042
.label_2038:
	mov	rsp, rsp
	jmp	.label_2040
.label_2040:
	mov	rbp, rbp
	jmp	.label_2037
.label_2037:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2039
.label_2041:
	mov	dword ptr [rbp - 0xc], 0
.label_2042:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ee20

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], 0
.label_2052:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2072
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	je	.label_2051
	lea	rsi, [rsi]
	jmp	.label_2049
.label_2051:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2045
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rax + 0xa0]
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x74], eax
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	rsp, rsp
	and	eax, 4
	nop	
	cmp	eax, 0
	je	.label_2065
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 1
	cmp	eax, 0
	je	.label_2050
.label_2065:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	mov	rbp, rbp
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_2067
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2050
.label_2067:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2055
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 2
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2050
.label_2055:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2044
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2044
.label_2050:
	jmp	.label_2049
.label_2044:
	mov	rbp, rbp
	jmp	.label_2045
.label_2045:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	get_subexp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	mov	rsp, rsp
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2064
	nop	
	jmp	.label_2048
.label_2064:
	jmp	.label_2043
.label_2043:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xc8]
	mov	rbp, rbp
	jge	.label_2054
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x10], 0x28
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_2063
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb8]
	nop	
	je	.label_2069
.label_2063:
	mov	rsp, rsp
	jmp	.label_2046
.label_2069:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_2047
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx], 0x18
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2058
.label_2047:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
.label_2058:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rcx + 0xa0]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	rcx, qword ptr [rsi + rcx*8]
	nop	
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rcx*8], 0
	mov	rbp, rbp
	jne	.label_2071
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2060
.label_2071:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_2060:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_2068
	mov	rsp, rsp
	lea	rdi, [rbp - 0xac]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x74]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x49], r8b
	jne	.label_2056
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xac], 0
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2056:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x49]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2070
	lea	rsi, [rsi]
	jmp	.label_2048
.label_2070:
	jmp	.label_2053
.label_2068:
	lea	rdi, [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xac], 0
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2059
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_2048
.label_2059:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xac]
	lea	rdx, [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x74]
	nop	
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x81], r8b
	jne	.label_2062
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xac], 0
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], al
.label_2062:
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2066
	nop	
	jmp	.label_2048
.label_2066:
	jmp	.label_2053
.label_2053:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2057
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jle	.label_2057
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0xb8]
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2073
	jmp	.label_2048
.label_2073:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	transit_state_bkref
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	nop	
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2061
	jmp	.label_2048
.label_2061:
	jmp	.label_2057
.label_2057:
	mov	rbp, rbp
	jmp	.label_2046
.label_2046:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_2043
.label_2054:
	jmp	.label_2049
.label_2049:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	jmp	.label_2052
.label_2072:
	mov	dword ptr [rbp - 0xac], 0
.label_2048:
	mov	eax, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	add	rsp, 0xc0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f560

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x60
	movabs	rax, 0xfffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	setbe	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2083
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 0xc
	jmp	.label_2080
.label_2083:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x40]
	shl	rdx, 1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jge	.label_2092
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2091
.label_2092:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2091:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, rax
	jge	.label_2075
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2090
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2081
.label_2090:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2081:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2074
.label_2075:
	movsxd	rax, dword ptr [rbp - 4]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_2074:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rdi, [rdi]
	je	.label_2087
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2080
.label_2087:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax + 0xb8], 0
	mov	rsp, rsp
	je	.label_2084
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x40]
	nop	
	add	rcx, 1
	mov	rbp, rbp
	shl	rcx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2082
	mov	dword ptr [rbp - 0x4c], 0xc
	mov	rbp, rbp
	jmp	.label_2080
.label_2082:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0xb8], rax
.label_2084:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2089
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	lea	rdi, [rdi]
	jle	.label_2078
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdi, eax
	lea	rsi, [rsi]
	cmp	rdi, 0
	nop	
	je	.label_2088
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2080
.label_2088:
	jmp	.label_2086
.label_2078:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	build_upper_buffer
.label_2086:
	jmp	.label_2079
.label_2089:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2076
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_2077
.label_2076:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2085
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	re_string_translate_buffer
.label_2085:
	lea	rdi, [rdi]
	jmp	.label_2077
.label_2077:
	lea	rdi, [rdi]
	jmp	.label_2079
.label_2079:
	mov	dword ptr [rbp - 0x4c], 0
.label_2080:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f880

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	al, byte ptr [rdx + 0x68]
	mov	rsp, rsp
	shr	al, 5
	and	al, 1
	nop	
	movzx	ecx, al
	mov	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2093
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	transit_state_mb
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rsi], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	cmp	dword ptr [rsi], 0
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2098
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jmp	.label_2095
.label_2098:
	jmp	.label_2093
.label_2093:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	sil, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], sil
.label_2094:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2097
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2095
.label_2097:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2096
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2099
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 9]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2095
.label_2099:
	nop	
	movzx	eax, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	jmp	.label_2095
.label_2096:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	build_trtable
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2100
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_2095
.label_2100:
	nop	
	jmp	.label_2094
.label_2095:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fad0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x68], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0xc0]
	mov	rsp, rsp
	jle	.label_2105
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0xc0], rax
	mov	rbp, rbp
	jmp	.label_2109
.label_2105:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2107
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_2110
.label_2107:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2106
	mov	rsp, rsp
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2103
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_2108
.label_2103:
	lea	rsi, [rsi]
	jmp	.label_2102
.label_2106:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_2102:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, rax
	call	re_string_context_at
	nop	
	lea	rdx, [rbp - 0x58]
	mov	dword ptr [rbp - 0xc], eax
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_2112
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_2112:
	jmp	.label_2110
.label_2110:
	jmp	.label_2109
.label_2109:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x98], 0
	nop	
	je	.label_2104
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2104
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 8
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	check_subexp_matching_top
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rdx], eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	dword ptr [rdx], 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2101
	mov	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jmp	.label_2108
.label_2101:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	je	.label_2113
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x68]
	cmp	dword ptr [rsi], 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rdi, [rdi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2111
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_2108
.label_2111:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_2113:
	jmp	.label_2104
.label_2104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_2108:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41fe40

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
.label_2117:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_2115:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jle	.label_2118
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2116
.label_2118:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2115
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	merge_state_with_log
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rdx], 0
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_2114
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
.label_2114:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_2117
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2116:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ff50

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xe8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0xf0]
	nop	
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2119
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xf0]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xf8]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	dl
	nop	
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
.label_2964:
	je	.label_2120
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2121
.label_2120:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xf8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0xf0], rax
.label_2119:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	mov	eax, 0x30
	mov	esi, eax
	nop	
	call	calloc
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xe8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0xf8]
	nop	
	mov	qword ptr [rdi + rsi*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xe8]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xf8]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + rax*8], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2122
	nop	
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2121
.label_2122:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xe8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xf8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0xe8]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0xe8], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x2c], 0
.label_2121:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420150

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x80], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	lea	rsi, [rsi]
	je	.label_2141
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x28], 0x28
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
.label_2128:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	jne	.label_2154
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	jmp	.label_2131
.label_2154:
	jmp	.label_2126
.label_2126:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2128
	jmp	.label_2141
.label_2141:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x98], 0
.label_2132:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2159
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x70]
	je	.label_2123
	jmp	.label_2130
.label_2123:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x48], 0
.label_2127:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	jge	.label_2137
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jle	.label_2135
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	setg	dl
	lea	rdi, [rdi]
	and	dl, 1
	nop	
	movzx	esi, dl
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	je	.label_2158
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	jle	.label_2129
	mov	rsp, rsp
	jmp	.label_2137
.label_2129:
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	rsi, rax
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2151
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	jmp	.label_2131
.label_2151:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
.label_2158:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2150
	jmp	.label_2137
.label_2150:
	lea	rsi, [rsi]
	jmp	.label_2135
.label_2135:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x68], rcx
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_2139
	lea	rdi, [rdi]
	jmp	.label_2147
.label_2139:
	nop	
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	nop	
	je	.label_2145
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2131
.label_2145:
	mov	rbp, rbp
	jmp	.label_2147
.label_2147:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_2127
.label_2137:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2140
	jmp	.label_2130
.label_2140:
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jle	.label_2144
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2144:
	mov	rsp, rsp
	jmp	.label_2156
.label_2156:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jg	.label_2157
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jle	.label_2142
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2136
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2148
	lea	rsi, [rsi]
	jmp	.label_2157
.label_2148:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	eax, dl
	mov	rsp, rsp
	movsxd	rdi, eax
	mov	rbp, rbp
	cmp	rdi, 0
	lea	rsi, [rsi]
	je	.label_2124
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2131
.label_2124:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_2136:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx + rax]
	cmp	edx, esi
	je	.label_2155
	lea	rdi, [rdi]
	jmp	.label_2157
.label_2155:
	jmp	.label_2142
.label_2142:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	jne	.label_2146
	jmp	.label_2143
.label_2146:
	mov	ecx, 9
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rax, qword ptr [rdx + rax*8]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	find_subexp_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_2138
	nop	
	jmp	.label_2143
.label_2138:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2125
	mov	eax, 0x18
	mov	rsp, rsp
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	add	rcx, 1
	mov	rsi, rcx
	call	calloc
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_2153
	mov	dword ptr [rbp - 0x4c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2131
.label_2153:
	jmp	.label_2125
.label_2125:
	mov	eax, 9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x20]
	mov	dword ptr [rsp], 9
	mov	dword ptr [rbp - 0x8c], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x9c], eax
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_2152
	mov	rsp, rsp
	jmp	.label_2143
.label_2152:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2133
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2131
.label_2133:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	match_ctx_add_sublast
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2149
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 0xc
	jmp	.label_2131
.label_2149:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_2134
	jmp	.label_2143
.label_2134:
	cmp	dword ptr [rbp - 0x9c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2160
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2131
.label_2160:
	lea	rsi, [rsi]
	jmp	.label_2143
.label_2143:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2156
.label_2157:
	jmp	.label_2130
.label_2130:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	jmp	.label_2132
.label_2159:
	mov	dword ptr [rbp - 0x4c], 0
.label_2131:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	rsp, 0xb0
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x420950

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_2169
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jle	.label_2169
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_2169
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jle	.label_2169
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2172
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0xc
	jmp	.label_2170
.label_2172:
	jmp	.label_2173
.label_2169:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2164
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2164
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_2170
.label_2164:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2162
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2162
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_2170
.label_2162:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	jmp	.label_2167
.label_2167:
	mov	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jmp	.label_2170
.label_2173:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], 0
.label_2161:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_2176
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x29], dl
.label_2176:
	mov	al, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_2174
	mov	rbp, rbp
	jmp	.label_2165
.label_2174:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2168
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	jmp	.label_2161
.label_2168:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2163
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_2163:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2161
.label_2165:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jge	.label_2175
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2171
.label_2175:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2166
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rdx, 3
	nop	
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2166:
	jmp	.label_2171
.label_2171:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0
.label_2170:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420d90

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_2182:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2180
	mov	rbp, rbp
	mov	eax, 2
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x18]
	mov	rax, rdx
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	imul	rax, rax, 0x28
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jge	.label_2181
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2179
.label_2181:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2179:
	jmp	.label_2182
.label_2180:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jge	.label_2177
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_2177
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_2178
.label_2177:
	nop	
	mov	qword ptr [rbp - 0x30], -1
.label_2178:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420ec0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xc0]
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 0x40]
	jl	.label_2183
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jl	.label_2185
.label_2183:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_2184
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2184
.label_2185:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	ecx, eax
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	call	extend_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	lea	rsi, [rsi]
	cmp	rdi, 0
	nop	
	je	.label_2187
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_2188
.label_2187:
	jmp	.label_2184
.label_2184:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jge	.label_2186
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 3
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xc0], rax
.label_2186:
	mov	dword ptr [rbp - 0x20], 0
.label_2188:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421040

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	eax, 8
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x10
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rsp], 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	check_arrival
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_2191
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2190
.label_2191:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rax + 8]
	call	match_ctx_add_entry
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2189
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2190
.label_2189:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x28], eax
.label_2190:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421180

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
.label_2193:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2195
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	mov	rbp, rbp
	cmp	edx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	jne	.label_2192
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2192
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2194
.label_2192:
	mov	rsp, rsp
	jmp	.label_2196
.label_2196:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_2193
.label_2195:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], -1
.label_2194:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421290

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	nop	
	mov	eax, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0x18], r8
	mov	qword ptr [rbp - 0x10], r9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0xe0]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rsi + 0xe0]
	add	rdx, rsi
	nop	
	add	rdx, 1
	cmp	rcx, rdx
	setl	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2222
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x78], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rdx + 0xe0]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, qword ptr [rbp - 0xc0]
	setl	sil
	lea	rdi, [rdi]
	and	sil, 1
	movzx	edi, sil
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2214
	mov	dword ptr [rbp - 0x6c], 0xc
	nop	
	jmp	.label_2200
.label_2214:
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	setb	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2228
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], 0xc
	jmp	.label_2200
.label_2228:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0xe8], rax
	cmp	qword ptr [rbp - 0xe8], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2211
	nop	
	mov	dword ptr [rbp - 0x6c], 0xc
	jmp	.label_2200
.label_2211:
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 3
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	memset
.label_2222:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_2234
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_2197
.label_2234:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
.label_2197:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0xa8]
	jne	.label_2227
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	nop	
	je	.label_2233
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	jmp	.label_2200
.label_2233:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_arrival_expand_ecl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2208
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rdi, [rdi]
	jmp	.label_2200
.label_2208:
	jmp	.label_2215
.label_2227:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2224
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2224
	nop	
	lea	rdi, [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 8
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	nop	
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	lea	rdi, [rdi]
	je	.label_2198
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	jmp	.label_2200
.label_2198:
	nop	
	jmp	.label_2207
.label_2224:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x48]
	mov	rdi, rcx
	call	memset
.label_2207:
	mov	rsp, rsp
	jmp	.label_2215
.label_2215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_2216
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2220
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2220
.label_2216:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2203
	lea	rsi, [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x5c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	movzx	eax, r9b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2229
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	nop	
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2200
.label_2229:
	lea	rdi, [rdi]
	jmp	.label_2203
.label_2203:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x50]
	lea	rdx, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	ecx, dword ptr [rbp - 0xec]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	mov	byte ptr [rbp - 0x49], r8b
	mov	rsp, rsp
	jne	.label_2232
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2232:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2219
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2200
.label_2219:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2220:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_2218:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0xc9], cl
	jge	.label_2231
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	mov	rsp, rsp
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xc9], dl
.label_2231:
	mov	al, byte ptr [rbp - 0xc9]
	test	al, 1
	jne	.label_2201
	jmp	.label_2204
.label_2201:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	mov	rbp, rbp
	je	.label_2205
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x50], eax
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2221
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rdi, [rdi]
	jmp	.label_2200
.label_2221:
	nop	
	jmp	.label_2205
.label_2205:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	lea	rsi, [rsi]
	je	.label_2210
	lea	rcx, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rdx, rax
	mov	rbp, rbp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2199
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2200
.label_2199:
	mov	rbp, rbp
	jmp	.label_2210
.label_2210:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2213
	lea	rsi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x50], eax
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	mov	rsp, rsp
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2225
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x50]
	nop	
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rsp, rsp
	jmp	.label_2200
.label_2225:
	lea	rsi, [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x5c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	setne	r9b
	nop	
	and	r9b, 1
	mov	rsp, rsp
	movzx	eax, r9b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2206
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rsi, [rsi]
	jmp	.label_2200
.label_2206:
	mov	rbp, rbp
	jmp	.label_2213
.label_2213:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x48]
	mov	dword ptr [rbp - 0xec], eax
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xec]
	call	re_acquire_state_context
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x98], 0
	mov	byte ptr [rbp - 1], r8b
	nop	
	jne	.label_2226
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0
	setne	al
	mov	byte ptr [rbp - 1], al
.label_2226:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2230
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2200
.label_2230:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2202
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2209
.label_2202:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_2209
.label_2209:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2218
.label_2204:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0xb8]
	nop	
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jne	.label_2223
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_2217
.label_2223:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_2217:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_2212
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	je	.label_2212
	mov	dword ptr [rbp - 0x6c], 0
	lea	rdi, [rdi]
	jmp	.label_2200
.label_2212:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], 1
.label_2200:
	mov	eax, dword ptr [rbp - 0x6c]
	add	rsp, 0xf0
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x421d90

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rsi + 0x18]
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2235
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	shl	rax, 1
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2236
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_2237
.label_2236:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_2235:
	mov	rsp, rsp
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x28
	mov	esi, eax
	mov	rsp, rsp
	call	calloc
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2238
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_2238:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_2237:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421f30

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xc8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 0xd0]
	lea	rsi, [rsi]
	jl	.label_2241
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xd0]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rbp, rbp
	imul	rsi, rcx, 0x28
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	nop	
	je	.label_2240
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x1c], 0xc
	jmp	.label_2239
.label_2240:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx + 0xc8], 0x28
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	imul	rdx, qword ptr [rcx + 0xd0], 0x28
	mov	rdi, rax
	call	memset
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0xd0]
	shl	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
.label_2241:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_2242
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jne	.label_2242
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc8]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0xd8]
	mov	byte ptr [rax + 0x20], 1
.label_2242:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rsi, rsi, 0x28
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x10], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	r8w, ax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0xc8]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x28
	mov	rsp, rsp
	add	rdx, qword ptr [rsi + 0xd8]
	mov	word ptr [rdx + 0x22], r8w
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0xc8]
	nop	
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0xc8], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdx + 0xd8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x20], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_2243
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0xe0], ecx
.label_2243:
	mov	dword ptr [rbp - 0x1c], 0
.label_2239:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x422260

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	lea	rsi, [rsi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2250
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_2245
.label_2250:
	mov	qword ptr [rbp - 0x10], 0
.label_2252:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2247
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], -1
	lea	rsi, [rsi]
	jne	.label_2246
	lea	rdi, [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2251
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2245
.label_2251:
	lea	rsi, [rsi]
	jmp	.label_2249
.label_2246:
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	r8d, dword ptr [rbp - 4]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 0
	mov	rsp, rsp
	setne	r9b
	and	r9b, 1
	mov	rsp, rsp
	movzx	eax, r9b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2245
.label_2248:
	jmp	.label_2249
.label_2249:
	mov	rbp, rbp
	jmp	.label_2244
.label_2244:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2252
.label_2247:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rax + 8], rdi
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x10], rdi
	mov	dword ptr [rbp - 0x34], 0
.label_2245:
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x70
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422490

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x98]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], -1
	jne	.label_2274
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	jmp	.label_2253
.label_2274:
	nop	
	jmp	.label_2254
.label_2254:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0xb8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_2263:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2268
	lea	rsi, [rsi]
	jmp	.label_2259
.label_2268:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	jne	.label_2272
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x98]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2271
	jmp	.label_2259
.label_2271:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	call	re_node_set_init_1
	lea	rsi, [rbp - 0x68]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	ecx, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	lea	rsi, [rbp - 0x68]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x8c], eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rdx
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	r8b, 1
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], r8b
	lea	rsi, [rsi]
	jne	.label_2276
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	byte ptr [rbp - 0xd], al
	jne	.label_2276
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], al
.label_2276:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2255
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	je	.label_2262
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	jmp	.label_2269
.label_2262:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_2270
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_2264
.label_2270:
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], eax
.label_2264:
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
.label_2269:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_2253
.label_2255:
	mov	rbp, rbp
	jmp	.label_2254
.label_2272:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2261
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rax
	nop	
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2256
	jmp	.label_2259
.label_2256:
	lea	rdi, [rbp - 0x88]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	lea	rdi, [rbp - 0x88]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	dl, 1
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	cmp	dword ptr [rbp - 0xc], 0
	mov	byte ptr [rbp - 0x99], dl
	lea	rsi, [rsi]
	jne	.label_2267
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x99], al
.label_2267:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x99]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2258
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	je	.label_2273
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2275
.label_2273:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2275
.label_2275:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	jmp	.label_2253
.label_2258:
	jmp	.label_2257
.label_2261:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x98]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2265
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_2253
.label_2265:
	mov	rbp, rbp
	jmp	.label_2257
.label_2257:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	re_acquire_state
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x49], r8b
	jne	.label_2266
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2266:
	nop	
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2277
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_2253
.label_2277:
	mov	rbp, rbp
	jmp	.label_2260
.label_2260:
	jmp	.label_2259
.label_2259:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	jne	.label_2263
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], 0
.label_2253:
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422a00

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	rsp, rsp
	mov	r9d, r8d
	mov	rsp, rsp
	lea	r10, [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x84], 0
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	nop	
	mov	qword ptr [rbp - 0x68], 0
.label_2289:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2290
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	mov	rsp, rsp
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_2288
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 1
	jle	.label_2283
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	je	.label_2279
	lea	rdi, [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rdi, [rdi]
	cmp	rsi, 0
	nop	
	je	.label_2281
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2278
.label_2281:
	jmp	.label_2279
.label_2279:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	mov	al, byte ptr [rbp - 0x71]
	nop	
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_2291
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2278
.label_2291:
	lea	rdi, [rbp - 0x84]
	lea	rdx, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_acquire_state
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x72], r8b
	mov	rsp, rsp
	jne	.label_2285
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	setne	al
	mov	byte ptr [rbp - 0x72], al
.label_2285:
	mov	al, byte ptr [rbp - 0x72]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2286
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2278
.label_2286:
	mov	rbp, rbp
	jmp	.label_2283
.label_2283:
	jmp	.label_2288
.label_2288:
	nop	
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_2287
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	check_node_accept
	nop	
	test	al, 1
	jne	.label_2287
	jmp	.label_2282
.label_2287:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	mov	al, byte ptr [rbp - 0x71]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2280
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x2c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2278
.label_2280:
	mov	rbp, rbp
	jmp	.label_2282
.label_2282:
	mov	rbp, rbp
	jmp	.label_2284
.label_2284:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2289
.label_2290:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	nop	
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2278:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	add	rsp, 0x90
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x422de0

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], r8d
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
.label_2300:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2302
	jmp	.label_2294
.label_2302:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	nop	
	cmp	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	jne	.label_2295
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2295
	cmp	dword ptr [rbp - 0x1c], 9
	lea	rsi, [rsi]
	jne	.label_2301
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], al
	mov	al, byte ptr [rbp - 0x29]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2293
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	jmp	.label_2292
.label_2293:
	jmp	.label_2301
.label_2301:
	jmp	.label_2294
.label_2295:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], al
	mov	al, byte ptr [rbp - 0x29]
	mov	rbp, rbp
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_2298
	mov	dword ptr [rbp - 0xc], 0xc
	jmp	.label_2292
.label_2298:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_2297
	jmp	.label_2294
.label_2297:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2296
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x30], 0
	setne	r9b
	and	r9b, 1
	nop	
	movzx	eax, r9b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2299
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2292
.label_2299:
	lea	rsi, [rsi]
	jmp	.label_2296
.label_2296:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2300
.label_2294:
	mov	dword ptr [rbp - 0xc], 0
.label_2292:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x423050

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx + 8], 0
	sete	al
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2308
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2303
.label_2308:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2310:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx]
	nop	
	jge	.label_2306
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx]
	je	.label_2309
	mov	rbp, rbp
	jmp	.label_2307
.label_2309:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, 1
	jne	.label_2305
	lea	rdi, [rdi]
	jmp	.label_2311
.label_2305:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2303
.label_2311:
	jmp	.label_2307
.label_2307:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_2310
.label_2306:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	create_ci_newstate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2304
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
.label_2304:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2303:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x423200

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	mov	eax, 0x70
	mov	ecx, eax
	mov	eax, 1
	mov	rbp, rbp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, rcx
	mov	rsi, r8
	nop	
	call	calloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	sete	r9b
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	r10d, r9b
	movsxd	rax, r10d
	cmp	rax, 0
	je	.label_2325
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2312
.label_2325:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2315
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_2312
.label_2315:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2322:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2320
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0xc], esi
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_2313
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	jne	.label_2313
	mov	rbp, rbp
	jmp	.label_2319
.label_2313:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	ecx, 0x14
	lea	rsi, [rsi]
	and	ecx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	nop	
	mov	dl, sil
	mov	rsp, rsp
	mov	dil, byte ptr [rax + 0x68]
	mov	rbp, rbp
	and	dl, 1
	shl	dl, 5
	mov	rsp, rsp
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0xc], 2
	nop	
	jne	.label_2324
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	rbp, rbp
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2314
.label_2324:
	nop	
	cmp	dword ptr [rbp - 0xc], 4
	jne	.label_2321
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	mov	rsp, rsp
	and	cl, 0xbf
	mov	rbp, rbp
	or	cl, 0x40
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], cl
	mov	rbp, rbp
	jmp	.label_2323
.label_2321:
	nop	
	cmp	dword ptr [rbp - 0xc], 0xc
	je	.label_2316
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2318
.label_2316:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	and	cl, 0x7f
	or	cl, 0x80
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], cl
.label_2318:
	jmp	.label_2323
.label_2323:
	jmp	.label_2314
.label_2314:
	jmp	.label_2319
.label_2319:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2322
.label_2320:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2317
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_state
	mov	qword ptr [rbp - 0x38], 0
.label_2317:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_2312:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423500

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0x60], rdx
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	shl	rdx, 4
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rcx + 8]
	nop	
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 7
	lea	rsi, [rsi]
	sete	r8b
	and	r8b, 1
	mov	rbp, rbp
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2326
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	movzx	esi, byte ptr [rbp - 0x21]
	cmp	esi, 0xc2
	setl	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2354
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2337
.label_2354:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2367
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2337
.label_2367:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax + 1]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], dl
	movzx	esi, byte ptr [rbp - 0x21]
	cmp	esi, 0xe0
	nop	
	jge	.label_2377
	lea	rdi, [rdi]
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x31], al
	jl	.label_2332
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x31], cl
.label_2332:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	ecx, 2
	nop	
	xor	edx, edx
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x54], ecx
	jmp	.label_2337
.label_2377:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xf0
	nop	
	jge	.label_2351
	nop	
	mov	dword ptr [rbp - 0x28], 3
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xe0
	mov	rbp, rbp
	jne	.label_2353
	movzx	eax, byte ptr [rbp - 0x22]
	nop	
	cmp	eax, 0xa0
	jge	.label_2353
	mov	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	jmp	.label_2337
.label_2353:
	lea	rdi, [rdi]
	jmp	.label_2362
.label_2351:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, 0xf8
	nop	
	jge	.label_2364
	mov	dword ptr [rbp - 0x28], 4
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xf0
	lea	rdi, [rdi]
	jne	.label_2339
	nop	
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x90
	lea	rdi, [rdi]
	jge	.label_2339
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	jmp	.label_2337
.label_2339:
	jmp	.label_2327
.label_2364:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, 0xfc
	lea	rdi, [rdi]
	jge	.label_2328
	nop	
	mov	dword ptr [rbp - 0x28], 5
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	eax, 0xf8
	jne	.label_2334
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x88
	lea	rsi, [rsi]
	jge	.label_2334
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2337
.label_2334:
	jmp	.label_2348
.label_2328:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xfe
	mov	rbp, rbp
	jge	.label_2350
	mov	dword ptr [rbp - 0x28], 6
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	cmp	eax, 0xfc
	jne	.label_2342
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	eax, 0x84
	jge	.label_2342
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2337
.label_2342:
	jmp	.label_2363
.label_2350:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	jmp	.label_2337
.label_2363:
	jmp	.label_2348
.label_2348:
	jmp	.label_2327
.label_2327:
	mov	rbp, rbp
	jmp	.label_2362
.label_2362:
	jmp	.label_2374
.label_2374:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x28]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	jle	.label_2375
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2337
.label_2375:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 1
.label_2357:
	mov	rax, qword ptr [rbp - 0x78]
	movsxd	rcx, dword ptr [rbp - 0x28]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2330
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], dl
	movzx	esi, byte ptr [rbp - 0x22]
	cmp	esi, 0x80
	jl	.label_2338
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0xbf
	nop	
	jle	.label_2349
.label_2338:
	mov	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	jmp	.label_2337
.label_2349:
	jmp	.label_2355
.label_2355:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2357
.label_2330:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2337
.label_2326:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	re_string_char_size_at
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rsi + 8]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 5
	nop	
	jne	.label_2365
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 1
	jg	.label_2373
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2337
.label_2373:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2360
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	lea	rdi, [rdi]
	je	.label_2329
.label_2360:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2341
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_2341
.label_2329:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2337
.label_2341:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2337
.label_2365:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_string_elem_size_at
	nop	
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 1
	jg	.label_2361
	nop	
	cmp	dword ptr [rbp - 0x28], 1
	jle	.label_2331
.label_2361:
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_2366
.label_2331:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2337
.label_2366:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 6
	mov	rbp, rbp
	jne	.label_2370
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_2333
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_2333
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	je	.label_2335
.label_2333:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2347
.label_2335:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2347
.label_2347:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	qword ptr [rbp - 0x78], 0
.label_2371:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	jge	.label_2356
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	cmp	eax, dword ptr [rdx + rcx*4]
	mov	rsp, rsp
	jne	.label_2359
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_2343
.label_2359:
	jmp	.label_2369
.label_2369:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2371
.label_2356:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
.label_2368:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_2378
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x68]
	call	iswctype
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2340
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_2343
.label_2340:
	nop	
	jmp	.label_2345
.label_2345:
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_2368
.label_2378:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
.label_2376:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_2352
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 4]
	nop	
	jg	.label_2358
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_2358
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	mov	rsp, rsp
	jmp	.label_2343
.label_2358:
	lea	rdi, [rdi]
	jmp	.label_2372
.label_2372:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_2376
.label_2352:
	lea	rdi, [rdi]
	jmp	.label_2343
.label_2343:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	nop	
	jne	.label_2379
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2337
.label_2379:
	cmp	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jle	.label_2336
	nop	
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2337
.label_2336:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x28]
	jle	.label_2344
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2346
.label_2344:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x14], eax
.label_2346:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_2337
.label_2370:
	mov	dword ptr [rbp - 0x54], 0
.label_2337:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x80
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423c90

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rsi + rdx]
	mov	byte ptr [rbp - 5], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 8]
	dec	ecx
	mov	edx, ecx
	sub	ecx, 6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	ja	.label_2384
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2390]]
	mov	rsp, rsp
	jmp	rcx
.label_2929:
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rbp, rbp
	je	.label_2395
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2385
.label_2395:
	jmp	.label_2388
.label_2930:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	nop	
	movzx	ecx, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	jne	.label_2381
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2385
.label_2381:
	jmp	.label_2388
.label_2931:
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	cmp	eax, 0x80
	jl	.label_2382
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2385
.label_2382:
	lea	rsi, [rsi]
	jmp	.label_2396
.label_2396:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_2393
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x98]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2394
.label_2393:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0
	jne	.label_2386
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2386
.label_2394:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2385
.label_2386:
	nop	
	jmp	.label_2388
.label_2384:
	mov	byte ptr [rbp - 0x1d], 0
	mov	rsp, rsp
	jmp	.label_2385
.label_2388:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2387
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	mov	rsp, rsp
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2392
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2383
.label_2392:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	mov	rsp, rsp
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	and	ecx, 8
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2389
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2383
.label_2389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	nop	
	and	ecx, 0x20
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2391
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2383
.label_2391:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	lea	rsi, [rsi]
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_2380
	mov	eax, dword ptr [rbp - 4]
	and	eax, 8
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2380
.label_2383:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2385
.label_2380:
	mov	rbp, rbp
	jmp	.label_2387
.label_2387:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], 1
.label_2385:
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423f90

	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	eax, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423fb0

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x78], rsi
	mov	qword ptr [rbp - 0x50], 0
.label_2417:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2409
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	edx, 0x14
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	jne	.label_2416
	jmp	.label_2397
.label_2416:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_2399
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	shl	rsi, 4
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdi]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	je	.label_2406
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2402
.label_2406:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	edx, 8
	lea	rsi, [rsi]
	and	edx, 0x3ff
	and	edx, 8
	nop	
	cmp	edx, 0
	je	.label_2401
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2402
.label_2401:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x20
	cmp	edx, 0
	nop	
	je	.label_2412
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2402
.label_2412:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	lea	rdi, [rdi]
	and	edx, 0x3ff
	and	edx, 0x80
	cmp	edx, 0
	je	.label_2410
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	nop	
	jne	.label_2410
.label_2402:
	jmp	.label_2397
.label_2410:
	jmp	.label_2399
.label_2399:
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	call	check_node_accept_bytes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jne	.label_2411
	mov	rsp, rsp
	jmp	.label_2397
.label_2411:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x48]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 0xe0]
	mov	rsp, rsp
	cmp	edx, dword ptr [rbp - 0x1c]
	jge	.label_2398
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2415
.label_2398:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xe0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_2415:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx + 0xe0], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	clean_state_log_if_needed
	nop	
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	eax, dl
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2414
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_2407
.label_2414:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_2408
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2400
.label_2408:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	nop	
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2404
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2407
.label_2404:
	lea	rdi, [rdi]
	jmp	.label_2400
.label_2400:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	nop	
	lea	rdi, [rbp - 0x30]
	lea	rdx, [rbp - 0x68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x6c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_2403
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_2403:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	nop	
	mov	byte ptr [rbp - 0x79], cl
	nop	
	jne	.label_2405
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	mov	byte ptr [rbp - 0x79], al
.label_2405:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2413
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_2407
.label_2413:
	mov	rsp, rsp
	jmp	.label_2397
.label_2397:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2417
.label_2409:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2407:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4244b0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	rsp, rsp
	mov	eax, 0x3800
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	byte ptr [rbp - 0xd1], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d], 0
	mov	qword ptr [rbp - 0xd0], 0
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2481
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], 0
	lea	rdi, [rdi]
	jmp	.label_2433
.label_2481:
	nop	
	mov	byte ptr [rbp - 0x39], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 0x1800
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	group_nodes_into_DFAstates
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	setle	r8b
	mov	rsp, rsp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2461
	mov	rbp, rbp
	test	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	je	.label_2476
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2476:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2484
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	sete	cl
	nop	
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2423
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], 0
	mov	rsp, rsp
	jmp	.label_2433
.label_2423:
	mov	byte ptr [rbp - 0xd9], 1
	nop	
	jmp	.label_2433
.label_2484:
	mov	byte ptr [rbp - 0xd9], 0
	nop	
	jmp	.label_2433
.label_2461:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsi, rax
	call	re_node_set_alloc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	cmp	dword ptr [rbp - 0xd8], 0
	nop	
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2453
	jmp	.label_2419
.label_2453:
	movabs	rax, 0xaaaaaaaaaaaa855
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2474
	jmp	.label_2419
.label_2474:
	imul	rax, qword ptr [rbp - 8], 3
	lea	rdi, [rdi]
	shl	rax, 3
	add	rax, 0x3800
	mov	rsp, rsp
	cmp	rax, 0xfc0
	jae	.label_2420
	mov	rax, qword ptr [rbp - 8]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	lea	rax, [rax*8 + 0xf]
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	rsp, rcx
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rsp, rsp
	jmp	.label_2432
.label_2420:
	imul	rax, qword ptr [rbp - 8], 3
	mov	rsp, rsp
	shl	rax, 3
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0xd0], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2450
	jmp	.label_2419
.label_2419:
	test	byte ptr [rbp - 0x1d], 1
	mov	rbp, rbp
	je	.label_2466
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	mov	rdi, rax
	call	free
.label_2466:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x98], 0
.label_2426:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jge	.label_2480
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rcx, qword ptr [rbp - 0x98], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2426
.label_2480:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	mov	rsp, rsp
	je	.label_2434
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2434:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_2433
.label_2450:
	mov	byte ptr [rbp - 0x1d], 1
.label_2432:
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 8]
	shl	rcx, 3
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0xc0], rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x98], 0
.label_2444:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jge	.label_2469
	mov	qword ptr [rbp - 0x60], 0
	nop	
	mov	qword ptr [rbp - 0x50], 0
.label_2470:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2479
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], -1
	mov	rsp, rsp
	je	.label_2421
	lea	rdi, [rbp - 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsi, rax
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	cmp	dword ptr [rbp - 0xd8], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2451
	jmp	.label_2419
.label_2451:
	jmp	.label_2421
.label_2421:
	nop	
	jmp	.label_2468
.label_2468:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2470
.label_2479:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xd8]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x68]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8b, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], r8b
	lea	rdi, [rdi]
	jne	.label_2485
	cmp	dword ptr [rbp - 0xd8], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0xb1], al
.label_2485:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2445
	nop	
	jmp	.label_2419
.label_2445:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 7
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0
	je	.label_2447
	lea	rdi, [rbp - 0xd8]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x68]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0xa0]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb0]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa2], r8b
	mov	rbp, rbp
	jne	.label_2472
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd8], 0
	setne	al
	mov	byte ptr [rbp - 0xa2], al
.label_2472:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa2]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2425
	nop	
	jmp	.label_2419
.label_2425:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2435
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_2435
	mov	byte ptr [rbp - 0xd1], 1
.label_2435:
	lea	rdi, [rbp - 0xd8]
	lea	rdx, [rbp - 0x68]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0xa0]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa1], r8b
	jne	.label_2430
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xd8], 0
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], al
.label_2430:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa1]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2438
	nop	
	jmp	.label_2419
.label_2438:
	lea	rsi, [rsi]
	jmp	.label_2429
.label_2447:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2429:
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	rsp, rsp
	call	bitset_merge
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2444
.label_2469:
	nop	
	test	byte ptr [rbp - 0xd1], 1
	jne	.label_2477
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	lea	rdi, [rdi]
	call	calloc
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x58], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2486
	lea	rdi, [rdi]
	jmp	.label_2419
.label_2486:
	mov	qword ptr [rbp - 0x98], 0
.label_2422:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x98], 4
	mov	rsp, rsp
	jge	.label_2440
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shl	rax, 6
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 1
.label_2463:
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2456
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2455
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
.label_2487:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	and	rax, qword ptr [rbp - 0x10]
	cmp	rax, 0
	jne	.label_2473
	lea	rdi, [rdi]
	jmp	.label_2446
.label_2446:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_2487
.label_2473:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rbp, rbp
	and	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2427
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2441
.label_2427:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
.label_2441:
	mov	rsp, rsp
	jmp	.label_2455
.label_2455:
	lea	rsi, [rsi]
	jmp	.label_2457
.label_2457:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_2463
.label_2456:
	lea	rdi, [rdi]
	jmp	.label_2475
.label_2475:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2422
.label_2440:
	jmp	.label_2471
.label_2477:
	mov	rbp, rbp
	mov	eax, 8
	mov	edi, eax
	nop	
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x60], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_2424
	jmp	.label_2419
.label_2424:
	mov	qword ptr [rbp - 0x98], 0
.label_2464:
	cmp	qword ptr [rbp - 0x98], 4
	jge	.label_2443
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 6
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 1
.label_2482:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2454
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_2460
	nop	
	mov	qword ptr [rbp - 0x50], 0
.label_2465:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 5
	nop	
	add	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	and	rax, qword ptr [rbp - 0x10]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_2442
	lea	rsi, [rsi]
	jmp	.label_2449
.label_2449:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2465
.label_2442:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	esi, 0x100
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2460:
	lea	rsi, [rsi]
	jmp	.label_2428
.label_2428:
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	add	ecx, 1
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	jmp	.label_2482
.label_2454:
	nop	
	jmp	.label_2458
.label_2458:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2464
.label_2443:
	jmp	.label_2471
.label_2471:
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_contain
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_2478
	jmp	.label_2418
.label_2478:
	mov	qword ptr [rbp - 0x50], 0
.label_2459:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_2452
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	nop	
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2431
	nop	
	jmp	.label_2436
.label_2431:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x50], rax
	test	byte ptr [rbp - 0xd1], 1
	mov	rsp, rsp
	je	.label_2437
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x850], rax
.label_2437:
	jmp	.label_2452
.label_2436:
	mov	rbp, rbp
	jmp	.label_2448
.label_2448:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2459
.label_2452:
	lea	rsi, [rsi]
	jmp	.label_2418
.label_2418:
	test	byte ptr [rbp - 0x1d], 1
	mov	rbp, rbp
	je	.label_2467
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	free
.label_2467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x98], 0
.label_2462:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_2483
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x98], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2462
.label_2483:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	je	.label_2439
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2439:
	mov	byte ptr [rbp - 0xd9], 1
.label_2433:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xd9]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	mov	rsp, rbp
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425290

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x110
	mov	rsp, rsp
	lea	rax, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 8
	mov	qword ptr [rbp - 0xa0], rcx
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	bitset_empty
	mov	qword ptr [rbp - 0xc8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], 0
.label_2500:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2488
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0xfc], edx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff
	nop	
	mov	dword ptr [rbp - 0x2c], edx
	cmp	dword ptr [rbp - 0xfc], 1
	jne	.label_2496
	lea	rdi, [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	lea	rsi, [rsi]
	call	bitset_set
	mov	rbp, rbp
	jmp	.label_2516
.label_2496:
	cmp	dword ptr [rbp - 0xfc], 3
	mov	rbp, rbp
	jne	.label_2533
	nop	
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	bitset_merge
	mov	rbp, rbp
	jmp	.label_2513
.label_2533:
	cmp	dword ptr [rbp - 0xfc], 5
	jne	.label_2542
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jle	.label_2522
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	mov	rsp, rsp
	call	bitset_merge
	jmp	.label_2497
.label_2522:
	lea	rdi, [rbp - 0x90]
	mov	rbp, rbp
	call	bitset_set_all
.label_2497:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2505
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rdi, [rdi]
	call	bitset_clear
.label_2505:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2520
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_clear
.label_2520:
	mov	rsp, rsp
	jmp	.label_2512
.label_2542:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xfc], 7
	mov	rsp, rsp
	jne	.label_2528
	mov	esi, 0xff
	mov	rbp, rbp
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0xd8]
	and	rcx, 0x40
	cmp	rcx, 0
	mov	rbp, rbp
	jne	.label_2540
	nop	
	mov	eax, 0xa
	mov	esi, eax
	mov	rbp, rbp
	lea	rdi, [rbp - 0x90]
	mov	rsp, rsp
	call	bitset_clear
.label_2540:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2489
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	mov	rbp, rbp
	call	bitset_clear
.label_2489:
	jmp	.label_2508
.label_2528:
	jmp	.label_2511
.label_2508:
	jmp	.label_2512
.label_2512:
	jmp	.label_2513
.label_2513:
	jmp	.label_2516
.label_2516:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	je	.label_2503
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2519
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_contain
	lea	rdi, [rbp - 0x90]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	call	bitset_empty
	test	byte ptr [rbp - 0x39], 1
	lea	rsi, [rsi]
	je	.label_2531
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	call	bitset_set
	jmp	.label_2538
.label_2531:
	jmp	.label_2511
.label_2538:
	jmp	.label_2519
.label_2519:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	and	eax, 0x80
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2541
	mov	rbp, rbp
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2511
.label_2541:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2491
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], 0
	cmp	dword ptr [rbp - 0xfc], 1
	mov	rbp, rbp
	jne	.label_2501
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_2501
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_empty
	jmp	.label_2511
.label_2501:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_2523
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
.label_2529:
	cmp	qword ptr [rbp - 0x60], 4
	jge	.label_2521
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	or	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2529
.label_2521:
	lea	rdi, [rdi]
	jmp	.label_2506
.label_2523:
	mov	qword ptr [rbp - 0x60], 0
.label_2545:
	cmp	qword ptr [rbp - 0x60], 4
	jge	.label_2495
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	or	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_2545
.label_2495:
	nop	
	jmp	.label_2506
.label_2506:
	cmp	qword ptr [rbp - 0x108], 0
	lea	rdi, [rdi]
	jne	.label_2524
	jmp	.label_2511
.label_2524:
	lea	rdi, [rdi]
	jmp	.label_2491
.label_2491:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	je	.label_2502
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0xfc], 1
	jne	.label_2532
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	ecx, 0x16
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	je	.label_2532
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2511
.label_2532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	mov	rbp, rbp
	jle	.label_2544
	mov	qword ptr [rbp - 0x60], 0
.label_2546:
	cmp	qword ptr [rbp - 0x60], 4
	mov	rbp, rbp
	jge	.label_2494
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	and	rax, qword ptr [rdx + rcx*8]
	xor	rax, 0xffffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	or	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_2546
.label_2494:
	mov	rbp, rbp
	jmp	.label_2490
.label_2544:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
.label_2534:
	cmp	qword ptr [rbp - 0x60], 4
	mov	rbp, rbp
	jge	.label_2530
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_2534
.label_2530:
	lea	rsi, [rsi]
	jmp	.label_2490
.label_2490:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2493
	jmp	.label_2511
.label_2493:
	jmp	.label_2502
.label_2502:
	jmp	.label_2503
.label_2503:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
.label_2507:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_2504
	cmp	dword ptr [rbp - 0xfc], 1
	nop	
	jne	.label_2514
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movzx	edx, byte ptr [rcx]
	mov	esi, edx
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2514
	lea	rdi, [rdi]
	jmp	.label_2499
.label_2514:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_2537:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 4
	nop	
	jge	.label_2535
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8 - 0xc0], rax
	or	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2537
.label_2535:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_2492
	jmp	.label_2499
.label_2492:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x20], 0
.label_2515:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 4
	lea	rdi, [rdi]
	jge	.label_2509
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	nop	
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0xf0], rax
	or	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x60]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	nop	
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	nop	
	or	rax, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2515
.label_2509:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_2536
	lea	rsi, [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	bitset_copy
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	shl	rax, 5
	nop	
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	bitset_copy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	imul	rsi, qword ptr [rbp - 0xc8], 0x18
	add	rax, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	imul	rsi, rsi, 0x18
	add	rsi, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2525
	jmp	.label_2527
.label_2525:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
.label_2536:
	mov	rax, qword ptr [rbp - 0x60]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_insert
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	nop	
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	r8d, al
	movsxd	rcx, r8d
	mov	rsp, rsp
	cmp	rcx, 0
	je	.label_2543
	jmp	.label_2527
.label_2543:
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jne	.label_2498
	jmp	.label_2504
.label_2498:
	lea	rsi, [rsi]
	jmp	.label_2499
.label_2499:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_2507
.label_2504:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	jne	.label_2517
	lea	rsi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	imul	rsi, qword ptr [rbp - 0xc8], 0x18
	lea	rdi, [rdi]
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_2539
	jmp	.label_2527
.label_2539:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	call	bitset_empty
.label_2517:
	jmp	.label_2511
.label_2511:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	jmp	.label_2500
.label_2488:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x110], rax
	nop	
	jmp	.label_2510
.label_2527:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
.label_2526:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_2518
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x60], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2526
.label_2518:
	mov	qword ptr [rbp - 0x110], -1
.label_2510:
	mov	rax, qword ptr [rbp - 0x110]
	add	rsp, 0x110
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425dd0

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x425e00

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], 0
.label_2547:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 4
	lea	rdi, [rdi]
	jge	.label_2548
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	or	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2547
.label_2548:
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425e70

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	esi, 0xff
	mov	rsp, rsp
	mov	eax, 0x20
	nop	
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425eb0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rdx, cl
	mov	rsp, rsp
	xor	rdx, 0xffffffffffffffff
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	idiv	rsi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	and	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x425f40

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsi + 0x18], rax
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x425f80

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x20], edx
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0xc], edx
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rsp, rsp
	mov	edx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 2
	je	.label_2549
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_2555
.label_2549:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2551
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_2555
.label_2551:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2554
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2553
.label_2554:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	and	eax, 8
	cmp	eax, 0
	je	.label_2556
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2553
.label_2556:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	and	eax, 0x20
	cmp	eax, 0
	je	.label_2552
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_2553
.label_2552:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	and	eax, 0x80
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_2550
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	eax, 8
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2550
.label_2553:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_2555
.label_2550:
	mov	byte ptr [rbp - 0x19], 1
.label_2555:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4260e0

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r9d, 0x18
	nop	
	mov	r10d, r9d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x20
	mov	rdi, rcx
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, r10
	call	memset
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x426190

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0xc], 0
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	rdi, rax
	call	re_node_set_init_1
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rbp, rbp
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2562
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_2559
.label_2562:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	update_cur_sifted_state
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2566
	jmp	.label_2563
.label_2566:
	lea	rdi, [rdi]
	jmp	.label_2560
.label_2560:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_2565
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2568
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2558
.label_2568:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2558
.label_2558:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0xe0]
	jle	.label_2567
	nop	
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	dword ptr [rbp - 0x10], 0
	jmp	.label_2559
.label_2567:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2564
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	build_sifted_states
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2561
	mov	rsp, rsp
	jmp	.label_2563
.label_2561:
	nop	
	jmp	.label_2564
.label_2564:
	mov	rsp, rsp
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	call	update_cur_sifted_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2557
	jmp	.label_2563
.label_2557:
	mov	rbp, rbp
	jmp	.label_2560
.label_2565:
	mov	dword ptr [rbp - 4], 0
.label_2563:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], ecx
.label_2559:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x426430

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_2575:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2576
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2573
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2572
.label_2573:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2571
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 8
	mov	rsi, rax
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	je	.label_2569
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2577
.label_2569:
	lea	rdi, [rbp - 0x44]
	lea	rdx, [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	cmp	dword ptr [rbp - 0x44], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2574
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2577
.label_2574:
	lea	rsi, [rsi]
	jmp	.label_2571
.label_2571:
	nop	
	jmp	.label_2572
.label_2572:
	mov	rbp, rbp
	jmp	.label_2570
.label_2570:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_2575
.label_2576:
	mov	dword ptr [rbp - 4], 0
.label_2577:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4265f0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_2588
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_2580
.label_2588:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_2580:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2578
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	jmp	.label_2579
.label_2578:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	je	.label_2584
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	add_epsilon_src_nodes
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2585
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	jmp	.label_2582
.label_2585:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	je	.label_2583
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rcx + 0xd8]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	check_subexp_limits
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2586
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2582
.label_2586:
	jmp	.label_2583
.label_2583:
	jmp	.label_2584
.label_2584:
	nop	
	lea	rdi, [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	nop	
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2589
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_2582
.label_2589:
	lea	rdi, [rdi]
	jmp	.label_2579
.label_2579:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_2581
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 6
	and	dl, 1
	nop	
	movzx	esi, dl
	nop	
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_2581
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	sift_states_bkref
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	setne	r8b
	nop	
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2587
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2582
.label_2587:
	nop	
	jmp	.label_2581
.label_2581:
	mov	dword ptr [rbp - 0x2c], 0
.label_2582:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4268d0

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 0x20
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_2599:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2601
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 0x14
	mov	rsp, rsp
	and	edx, 1
	cmp	edx, 0
	je	.label_2592
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	sift_states_iter_mb
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
.label_2592:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 0
	nop	
	jne	.label_2594
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_node_accept
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2596
	jmp	.label_2594
.label_2596:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	nop	
	je	.label_2594
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2594
	nop	
	mov	dword ptr [rbp - 0x40], 1
.label_2594:
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_2591
	mov	rbp, rbp
	jmp	.label_2595
.label_2591:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2598
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x18]
	nop	
	mov	r9, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_dst_limits
	test	al, 1
	jne	.label_2590
	nop	
	jmp	.label_2593
.label_2590:
	jmp	.label_2595
.label_2593:
	jmp	.label_2598
.label_2598:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	nop	
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	nop	
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2600
	mov	dword ptr [rbp - 0x1c], 0xc
	jmp	.label_2597
.label_2600:
	lea	rdi, [rdi]
	jmp	.label_2595
.label_2595:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_2599
.label_2601:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0
.label_2597:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x426bb0

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rax, [rbp - 0x2c]
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	re_acquire_state
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2606
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2602
.label_2606:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x38], 0
	mov	rbp, rbp
	jne	.label_2604
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2609
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0xc
	jmp	.label_2602
.label_2609:
	mov	qword ptr [rbp - 0x18], 0
.label_2605:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2607
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 0x38
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	imul	rdx, qword ptr [rsi + rdx*8], 0x18
	add	rcx, rdx
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2603
	mov	dword ptr [rbp - 0xc], 0xc
	lea	rdi, [rdi]
	jmp	.label_2602
.label_2603:
	jmp	.label_2608
.label_2608:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2605
.label_2607:
	mov	rsp, rsp
	jmp	.label_2604
.label_2604:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 0xc], eax
.label_2602:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x426d90

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
.label_2632:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_2633
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jle	.label_2638
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x40]
	jge	.label_2625
.label_2638:
	jmp	.label_2629
.label_2625:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_2630
	mov	qword ptr [rbp - 0x58], -1
	mov	qword ptr [rbp - 0x10], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], 0
.label_2619:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2620
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	cmp	dword ptr [rbp - 0x1c], 8
	lea	rdi, [rdi]
	jne	.label_2618
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_2618
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	jmp	.label_2615
.label_2618:
	cmp	dword ptr [rbp - 0x1c], 9
	lea	rdi, [rdi]
	jne	.label_2631
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jne	.label_2631
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_2631:
	jmp	.label_2615
.label_2615:
	mov	rbp, rbp
	jmp	.label_2616
.label_2616:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2619
.label_2620:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jl	.label_2622
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x38]
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0
	setne	r8b
	nop	
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2637
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	jmp	.label_2613
.label_2637:
	lea	rdi, [rdi]
	jmp	.label_2622
.label_2622:
	cmp	qword ptr [rbp - 0x10], 0
	jl	.label_2610
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], 0
.label_2636:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2628
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x80], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2623
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x80], 0x18
	nop	
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2623
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2612
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	jmp	.label_2613
.label_2612:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
.label_2623:
	lea	rdi, [rdi]
	jmp	.label_2635
.label_2635:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	jmp	.label_2636
.label_2628:
	jmp	.label_2610
.label_2610:
	jmp	.label_2611
.label_2630:
	mov	qword ptr [rbp - 0x98], 0
.label_2626:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2617
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], edx
	cmp	dword ptr [rbp - 0x6c], 9
	lea	rsi, [rsi]
	je	.label_2627
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x6c], 8
	jne	.label_2624
.label_2627:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	je	.label_2614
	jmp	.label_2621
.label_2614:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], eax
	cmp	dword ptr [rbp - 0x8c], 0
	mov	rbp, rbp
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2634
	mov	eax, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_2613
.label_2634:
	lea	rdi, [rdi]
	jmp	.label_2624
.label_2624:
	mov	rbp, rbp
	jmp	.label_2621
.label_2621:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2626
.label_2617:
	jmp	.label_2611
.label_2611:
	jmp	.label_2629
.label_2629:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2632
.label_2633:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2613:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427300

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	search_cur_bkref_entry
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], -1
	lea	rdi, [rdi]
	jne	.label_2652
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2640
.label_2652:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 0
	mov	qword ptr [rbp - 0x10], 0
.label_2645:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2643
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edx
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_2642
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	jne	.label_2642
	jmp	.label_2644
.label_2642:
	cmp	dword ptr [rbp - 0x24], 4
	lea	rsi, [rsi]
	je	.label_2658
	jmp	.label_2644
.label_2658:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 8], 0x28
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xa8], rax
.label_2657:
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	je	.label_2660
	mov	rbp, rbp
	jmp	.label_2655
.label_2660:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xd8]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_2641
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2650
.label_2641:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_2650:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jg	.label_2639
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	je	.label_2639
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2639
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2639
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_dst_limits
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2639
	jmp	.label_2653
.label_2639:
	jmp	.label_2655
.label_2653:
	cmp	qword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	jne	.label_2648
	mov	rsp, rsp
	lea	rax, [rbp - 0x98]
	mov	rbp, rbp
	mov	ecx, 0x38
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xb4], 0
	mov	rsp, rsp
	setne	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2659
	lea	rdi, [rdi]
	jmp	.label_2647
.label_2659:
	jmp	.label_2648
.label_2648:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rdi, [rdi]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x99], al
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_2649
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 0xc
	jmp	.label_2647
.label_2649:
	lea	rsi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	call	sift_states_backward
	mov	dword ptr [rbp - 0xb4], eax
	cmp	dword ptr [rbp - 0xb4], 0
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	je	.label_2646
	jmp	.label_2647
.label_2646:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_2654
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, rax
	mov	rbp, rbp
	call	merge_state_array
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xb4], 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	nop	
	movzx	eax, r8b
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	je	.label_2656
	jmp	.label_2647
.label_2656:
	jmp	.label_2654
.label_2654:
	lea	rax, [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	qword ptr [rsi + rdx*8], rcx
	nop	
	mov	rcx, rax
	add	rcx, 0x20
	nop	
	add	rax, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb0], rcx
	call	re_node_set_contains
	nop	
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0xa8], 0x28
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xd8], rax
.label_2655:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	add	rcx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2657
	mov	rbp, rbp
	jmp	.label_2644
.label_2644:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2645
.label_2643:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 0
.label_2647:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2651
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
.label_2651:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
.label_2640:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rsp, 0xe0
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x427910

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	je	.label_2666
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jne	.label_2678
.label_2666:
	mov	dword ptr [rbp - 0x30], 0
	nop	
	jmp	.label_2679
.label_2678:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	nop	
	jle	.label_2684
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2682
	mov	dword ptr [rbp - 0x30], 0xc
	nop	
	jmp	.label_2679
.label_2682:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
.label_2684:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
.label_2687:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2663
	jmp	.label_2669
.label_2669:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x29], cl
	lea	rsi, [rsi]
	jl	.label_2676
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	setg	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], sil
.label_2676:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	nop	
	jne	.label_2661
	mov	rbp, rbp
	jmp	.label_2665
.label_2661:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2669
.label_2665:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], 0
	jl	.label_2673
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2677
.label_2673:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 - 8], rax
.label_2677:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2672
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_2668
.label_2672:
	jmp	.label_2683
.label_2668:
	jmp	.label_2685
.label_2663:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_2686
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_2671
	jmp	.label_2683
.label_2671:
	mov	rsp, rsp
	jmp	.label_2664
.label_2686:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_2680
	nop	
	jmp	.label_2683
.label_2680:
	jmp	.label_2664
.label_2664:
	jmp	.label_2685
.label_2685:
	jmp	.label_2687
.label_2683:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	add	rax, qword ptr [rcx + 8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jle	.label_2688
	nop	
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	jl	.label_2688
	mov	rsp, rsp
	jmp	.label_2681
.label_2681:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2662
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x38], rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_2674
	jmp	.label_2667
.label_2674:
	lea	rsi, [rsi]
	jmp	.label_2670
.label_2662:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	cmp	rax, 0
	mov	rbp, rbp
	jge	.label_2675
	jmp	.label_2667
.label_2675:
	lea	rdi, [rdi]
	jmp	.label_2670
.label_2670:
	mov	rsp, rsp
	jmp	.label_2681
.label_2667:
	lea	rdi, [rdi]
	jmp	.label_2688
.label_2688:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	dword ptr [rbp - 0x30], 0
.label_2679:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x427e60

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, 0x18
	lea	rdi, [rdi]
	mov	r9d, r8d
	mov	rbp, rbp
	lea	r10, [rbp - 0x78]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rcx + 0x38]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x50], 0x18
	nop	
	add	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, r10
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	call	memset
	nop	
	mov	qword ptr [rbp - 0x80], 0
.label_2704:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2694
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_2701
	jmp	.label_2703
.label_2701:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	rsp, rsp
	and	edx, 8
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_2691
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jle	.label_2695
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2692
.label_2695:
	lea	rsi, [rsi]
	mov	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2692
.label_2692:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	call	re_node_set_contains
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2690
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_2697
.label_2690:
	cmp	qword ptr [rbp - 0x38], 0
	jle	.label_2693
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2693
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2693
.label_2697:
	lea	rdi, [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x58], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	mov	rbp, rbp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2702
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rbp, rbp
	jmp	.label_2696
.label_2702:
	jmp	.label_2693
.label_2693:
	jmp	.label_2691
.label_2691:
	jmp	.label_2703
.label_2703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_2704
.label_2694:
	nop	
	mov	qword ptr [rbp - 0x80], 0
.label_2700:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2689
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2698
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	re_node_set_contains
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
.label_2698:
	lea	rsi, [rsi]
	jmp	.label_2699
.label_2699:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	jmp	.label_2700
.label_2689:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], 0
.label_2696:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x428200

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x70], rdx
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], r8
	mov	qword ptr [rbp - 8], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	search_cur_bkref_entry
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x50], 0
.label_2709:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2708
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x78]
	nop	
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0x58]
	jne	.label_2707
	lea	rsi, [rsi]
	jmp	.label_2705
.label_2707:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 1
	mov	rsp, rsp
	jmp	.label_2706
.label_2705:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2709
.label_2708:
	mov	byte ptr [rbp - 0x41], 0
.label_2706:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4283b0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xd8]
	imul	rdx, qword ptr [rbp - 0x40], 0x28
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_2710
	mov	dword ptr [rbp - 0x34], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_2712
.label_2710:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2711
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_2712
.label_2711:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x10]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x14], esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x18]
	nop	
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	shl	esi, 1
	mov	rsp, rsp
	or	esi, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_2713
	mov	dword ptr [rbp - 0x34], 0
	mov	rbp, rbp
	jmp	.label_2712
.label_2713:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x30]
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
.label_2712:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4284e0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], r8
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x50], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x70], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
.label_2735:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2728
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	esi, edx
	sub	esi, 4
	mov	dword ptr [rbp - 0x88], edx
	mov	dword ptr [rbp - 0x84], esi
	nop	
	je	.label_2732
	jmp	.label_2718
.label_2718:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_2719
	lea	rsi, [rsi]
	jmp	.label_2727
.label_2727:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	sub	eax, 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_2729
	jmp	.label_2733
.label_2732:
	cmp	qword ptr [rbp - 0x60], -1
	nop	
	je	.label_2730
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x60], 0x28
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2723:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_2715
	jmp	.label_2720
.label_2715:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0x40
	jge	.label_2722
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	movzx	eax, word ptr [rdx + 0x22]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	mov	rbp, rbp
	jne	.label_2722
	lea	rdi, [rdi]
	jmp	.label_2720
.label_2722:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jne	.label_2736
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2725
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_2714
.label_2725:
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2714
.label_2736:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_2724
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_2714
.label_2724:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_2721
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 2
	cmp	eax, 0
	nop	
	je	.label_2721
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2714
.label_2721:
	nop	
	cmp	qword ptr [rbp - 0x48], 0x40
	jge	.label_2731
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rsi + 0x22]
	mov	edi, eax
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	mov	r8w, di
	mov	rsp, rsp
	mov	word ptr [rsi + 0x22], r8w
.label_2731:
	lea	rsi, [rsi]
	jmp	.label_2720
.label_2720:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 0x28
	nop	
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2723
	nop	
	jmp	.label_2730
.label_2730:
	lea	rdi, [rdi]
	jmp	.label_2717
.label_2719:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_2716
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2716
	mov	dword ptr [rbp - 0x54], 0xffffffff
	mov	rbp, rbp
	jmp	.label_2714
.label_2716:
	mov	rsp, rsp
	jmp	.label_2717
.label_2729:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 2
	nop	
	cmp	eax, 0
	je	.label_2726
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jne	.label_2726
	mov	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	jmp	.label_2714
.label_2726:
	jmp	.label_2717
.label_2733:
	mov	rsp, rsp
	jmp	.label_2717
.label_2717:
	jmp	.label_2734
.label_2734:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_2735
.label_2728:
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
.label_2714:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4288c0

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], r8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jle	.label_2737
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	jg	.label_2737
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	nop	
	je	.label_2738
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	re_node_set_contains
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_2737
.label_2738:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_2737:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4289e0

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2739
	nop	
	mov	qword ptr [rbp - 8], 0
.label_2741:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	jge	.label_2740
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_2741
.label_2740:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
.label_2739:
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x428aa0

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x18], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 8
	mov	rbp, rbp
	jne	.label_2742
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jge	.label_2750
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], -1
.label_2750:
	nop	
	jmp	.label_2743
.label_2742:
	cmp	dword ptr [rbp - 0xc], 9
	jne	.label_2746
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jge	.label_2744
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jge	.label_2745
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rdx, 4
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2749
.label_2745:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	nop	
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x13
	and	edx, 1
	cmp	edx, 0
	je	.label_2748
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], -1
	je	.label_2748
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	jmp	.label_2747
.label_2748:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
.label_2747:
	mov	rsp, rsp
	jmp	.label_2749
.label_2749:
	jmp	.label_2744
.label_2744:
	jmp	.label_2746
.label_2746:
	jmp	.label_2743
.label_2743:
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x428cd0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x18], r8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	add	rdx, -1
	mov	qword ptr [rcx], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jl	.label_2751
	mov	rsp, rsp
	jmp	.label_2752
.label_2751:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.26
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	edx, 0x555
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
.label_2752:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x20]
	nop	
	mov	qword ptr [rax + 8], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x428e60

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xb0
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], r8
	nop	
	mov	qword ptr [rbp - 0x50], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	nop	
	mov	r10d, dword ptr [rax + 8]
	and	r10d, 0xff
	mov	rsp, rsp
	and	r10d, 8
	cmp	r10d, 0
	lea	rdi, [rdi]
	je	.label_2781
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x59]
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2772
	mov	qword ptr [rbp - 0x20], -2
	lea	rsi, [rsi]
	jmp	.label_2753
.label_2772:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x68], 0
.label_2765:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2757
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2778
	jmp	.label_2764
.label_2778:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_2782
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2784
.label_2782:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2762
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2753
.label_2762:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_2768
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0xa8]
	mov	r9, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	push_fail_stack
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2768
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_2753
.label_2768:
	jmp	.label_2759
.label_2759:
	jmp	.label_2757
.label_2784:
	jmp	.label_2764
.label_2764:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_2765
.label_2757:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_2753
.label_2781:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	lea	rdi, [rdi]
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_2775
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_2767
.label_2775:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 4
	jne	.label_2766
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0xa8]
	nop	
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2774
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0xa8]
	nop	
	cmp	qword ptr [rax], -1
	je	.label_2780
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], -1
	mov	rbp, rbp
	jne	.label_2776
.label_2780:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	jmp	.label_2753
.label_2776:
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_2770
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa0]
	jl	.label_2773
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0xa8]
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2771
.label_2773:
	mov	qword ptr [rbp - 0x20], -1
	jmp	.label_2753
.label_2771:
	mov	rsp, rsp
	jmp	.label_2770
.label_2770:
	jmp	.label_2779
.label_2779:
	mov	rsp, rsp
	jmp	.label_2774
.label_2774:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_2754
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	mov	al, byte ptr [rbp - 0x59]
	nop	
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2756
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_2753
.label_2756:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2761
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2753
.label_2761:
	jmp	.label_2754
.label_2754:
	jmp	.label_2766
.label_2766:
	jmp	.label_2767
.label_2767:
	cmp	qword ptr [rbp - 0xa0], 0
	nop	
	jne	.label_2769
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rcx]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_node_accept
	test	al, 1
	jne	.label_2769
	lea	rsi, [rsi]
	jmp	.label_2755
.label_2769:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0xa0], 0
	nop	
	jne	.label_2758
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	jmp	.label_2783
.label_2758:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
.label_2783:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_2760
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0xa8]
	lea	rdi, [rdi]
	jg	.label_2763
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2763
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2760
.label_2763:
	mov	qword ptr [rbp - 0x20], -1
	nop	
	jmp	.label_2753
.label_2760:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2753
.label_2755:
	jmp	.label_2777
.label_2777:
	mov	qword ptr [rbp - 0x20], -1
.label_2753:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0xb0
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x429570

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x20], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jne	.label_2787
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	shl	rcx, 1
	imul	rsi, rcx, 0x30
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jne	.label_2788
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2785
.label_2788:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
.label_2787:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 4
	mov	rsp, rsp
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2786
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2785
.label_2786:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	shl	rdx, 4
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 0x18
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_2785:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x429780

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4297a0

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4297c0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], esi
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	__gl_setmode_check
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	je	.label_2789
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2790
.label_2789:
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2790:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429820

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_2791
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2795
.label_2791:
	mov	rbp, rbp
	jmp	.label_2792
.label_2792:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_2793
	jmp	.label_2794
.label_2793:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2792
.label_2794:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2795:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x429910

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_2798
	test	byte ptr [rbp - 0x15], 1
	je	.label_2797
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_2798
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2797
.label_2798:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_2796
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2796:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_2799
.label_2797:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_2799:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4299f0

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_2806:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_2803
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_2806
.label_2803:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_2805:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_2800
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_2804
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_2802
.label_2804:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_2801
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_2801:
	jmp	.label_2802
.label_2802:
	jmp	.label_2807
.label_2807:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2805
.label_2800:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429ac0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_2809:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_2808
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], sil
.label_2808:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_2810
	mov	rbp, rbp
	jmp	.label_2811
.label_2810:
	jmp	.label_2812
.label_2812:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2809
.label_2811:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429b80

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x10], esi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	jg	.label_2813
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 2
	lea	rsi, [rsi]
	jg	.label_2813
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 0x10]
	call	dup_safer_flag
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	close
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	dword ptr [rbp - 0x18], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], esi
.label_2813:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x429c10

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 0x406
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	and	esi, 0x80000
	lea	rsi, [rsi]
	cmp	esi, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	esi, eax
	mov	al, 0
	call	rpl_fcntl
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x429c60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_2815
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2816
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2814
.label_2816:
	mov	byte ptr [rbp - 0xd], 0
.label_2814:
	jmp	.label_2815
.label_2815:
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429d00

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2818
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2818:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2817
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2817:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429d80

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x429dc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2822
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_2820
.label_2822:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2819
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2821
.label_2819:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2821
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2821:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2823
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2823:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_2820:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x429ee0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x240
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm7
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xd0], xmm4
	movaps	xmmword ptr [rbp - 0x230], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1f0], xmm1
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	mov	dword ptr [rbp - 0x20], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x210], r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	dword ptr [rbp - 0x60], esi
	nop	
	je	.label_2845
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x230]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0xd0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x70]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x80]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_2845:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x210]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rdx, qword ptr [rbp - 0x220]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], r8d
	mov	dword ptr [rbp - 0x1a4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1b0], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1b8], r9
	mov	dword ptr [rbp - 0x1bc], 0x30
	mov	dword ptr [rbp - 0x1c0], 0x10
	mov	edi, dword ptr [rbp - 0x1a4]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], edi
	mov	rsp, rsp
	je	.label_2849
	nop	
	jmp	.label_2829
.label_2829:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_2832
	jmp	.label_2834
.label_2849:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_2838
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f8]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rsi, [rsi]
	jmp	.label_2844
.label_2838:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_2844:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2827
.label_2832:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	ja	.label_2843
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_2825
.label_2843:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2825:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x54]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2827
.label_2834:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_2826
	nop	
	jmp	.label_2828
.label_2828:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_2830
	jmp	.label_2836
.label_2836:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_2826
	nop	
	jmp	.label_2841
.label_2841:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_2830
	nop	
	jmp	.label_2847
.label_2847:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_2826
	lea	rsi, [rsi]
	jmp	.label_2824
.label_2824:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_2826
	lea	rsi, [rsi]
	jmp	.label_2833
.label_2833:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2830
	mov	rsp, rsp
	jmp	.label_2840
.label_2840:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2826
	jmp	.label_2842
.label_2842:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_2830
	lea	rsi, [rsi]
	jmp	.label_2852
.label_2852:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_2826
	jmp	.label_2854
.label_2854:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2830
	mov	rsp, rsp
	jmp	.label_2837
.label_2837:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_2826
	lea	rsi, [rsi]
	jmp	.label_2848
.label_2848:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2826
	nop	
	jmp	.label_2851
.label_2851:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_2853
	lea	rdi, [rdi]
	jmp	.label_2830
.label_2830:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_2835
.label_2826:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_2839
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rcx
	mov	rbp, rbp
	jmp	.label_2846
.label_2839:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_2846:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xac], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	mov	esi, dword ptr [rbp - 0x1a4]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xac]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2835
.label_2853:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_2850
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x90], rcx
	mov	rsp, rsp
	jmp	.label_2831
.label_2850:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_2831:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x5c], eax
.label_2835:
	jmp	.label_2827
.label_2827:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a540

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a590

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2857
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	edx, dword ptr [rbp - 0x18]
	jle	.label_2856
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2859
.label_2856:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2861
.label_2859:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_2858
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2858:
	mov	rbp, rbp
	jmp	.label_2861
.label_2861:
	jmp	.label_2862
.label_2857:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_2862:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_2855
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_2855
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_2863
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2860
.label_2863:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2860:
	jmp	.label_2855
.label_2855:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a710

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_2864
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_2865
.label_2864:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2866
.label_2865:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_2866:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a780

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2867
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2867:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a7e0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2868
	jmp	.label_2870
.label_2870:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2869
.label_2868:
	lea	rsi, [rsi]
	jmp	.label_2869
.label_2869:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a840
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jb	.label_2871
	jmp	.label_2873
.label_2873:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_2871
	nop	
	jmp	.label_2872
.label_2872:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_2875
	jmp	.label_2871
.label_2871:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_2874
.label_2875:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_2874:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42a8d0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], eax
	jb	.label_2876
	nop	
	jmp	.label_2877
.label_2877:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_2878
	lea	rdi, [rdi]
	jmp	.label_2876
.label_2876:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_2879
.label_2878:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_2879:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a950
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2880
	mov	rsp, rsp
	jmp	.label_2882
.label_2882:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2881
.label_2880:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_2881:
	nop	
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a9a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x20
	nop	
	mov	byte ptr [rbp - 5], al
	lea	rdi, [rdi]
	je	.label_2883
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2883:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a9f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	eax, edi
	mov	rbp, rbp
	sub	edi, 0x20
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	jb	.label_2884
	nop	
	jmp	.label_2885
.label_2885:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_2886
	lea	rsi, [rsi]
	jmp	.label_2884
.label_2884:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2887
.label_2886:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_2887:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42aa60
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x30
	lea	rdi, [rdi]
	sub	edi, 9
	mov	dword ptr [rbp - 4], edi
	nop	
	ja	.label_2889
	jmp	.label_2890
.label_2890:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_2888
.label_2889:
	mov	byte ptr [rbp - 5], 0
.label_2888:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42aab0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	nop
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	ja	.label_2891
	lea	rsi, [rsi]
	jmp	.label_2892
.label_2892:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2893
.label_2891:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_2893:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42ab00
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	ja	.label_2894
	jmp	.label_2895
.label_2895:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2896
.label_2894:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_2896:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42ab50
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, -0x20
	nop	
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2897
	jmp	.label_2899
.label_2899:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2898
.label_2897:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_2898:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42aba0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rsp, rsp
	mov	eax, edi
	add	eax, -0x21
	mov	rsp, rsp
	sub	eax, 0xf
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2900
	jmp	.label_2901
.label_2901:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_2900
	nop	
	jmp	.label_2904
.label_2904:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2900
	jmp	.label_2902
.label_2902:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_2905
	mov	rsp, rsp
	jmp	.label_2900
.label_2900:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2903
.label_2905:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_2903:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42ac50
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rbp, rbp
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2906
	mov	rbp, rbp
	jmp	.label_2907
.label_2907:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_2909
	mov	rsp, rsp
	jmp	.label_2906
.label_2906:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2908
.label_2909:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_2908:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42acc0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x41
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	ja	.label_2910
	jmp	.label_2912
.label_2912:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_2911
.label_2910:
	mov	byte ptr [rbp - 5], 0
.label_2911:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42ad10
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2913
	lea	rdi, [rdi]
	jmp	.label_2917
.label_2917:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_2913
	jmp	.label_2914
.label_2914:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2916
	jmp	.label_2913
.label_2913:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2915
.label_2916:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_2915:
	nop	
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42ada0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	add	edi, -0x41
	lea	rdi, [rdi]
	sub	edi, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	ja	.label_2918
	jmp	.label_2919
.label_2919:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_2920
.label_2918:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_2920:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section .text
	.align	32
	#Procedure 0x42adf0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	add	edi, -0x61
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 8], edi
	ja	.label_2921
	mov	rbp, rbp
	jmp	.label_2922
.label_2922:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2923
.label_2921:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2923:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]