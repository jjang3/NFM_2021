	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edi
	cmp	dword ptr [rbp - 0x38], 0
	je	.label_7
	jmp	.label_8
.label_8:
	nop	
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	jmp	.label_9
.label_7:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x34], eax
	call	emit_stdin_note
	lea	rsi, [rsi]
	call	emit_mandatory_arg_note
	nop	
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401f60

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fb0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_10:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	je	.label_11
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 1], cl
.label_11:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	mov	rbp, rbp
	jne	.label_13
	jmp	.label_15
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_10
.label_15:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	je	.label_12
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_12:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	nop	
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	call	setlocale
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_14
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.37
	nop	
	mov	eax, 3
	nop	
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	strncmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_14
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_14:
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.40
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.41
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x34], eax
	nop	
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], 0
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.12
	movabs	rsi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	call	textdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	call	atexit
	mov	dword ptr [rbp - 0xe0], eax
.label_55:
	movabs	rdx, OFFSET FLAT:.str.14
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	nop	
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	getopt_long
	nop	
	mov	dword ptr [rbp - 0x30], eax
	nop	
	cmp	dword ptr [rbp - 0x30], -1
	lea	rsi, [rsi]
	je	.label_80
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], eax
	mov	dword ptr [rbp - 0x44], ecx
	je	.label_85
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	je	.label_25
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_32
	jmp	.label_39
.label_39:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x41
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_41
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x46
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	je	.label_52
	mov	rbp, rbp
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x47
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_50
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	je	.label_70
	lea	rsi, [rsi]
	jmp	.label_58
.label_58:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	je	.label_79
	jmp	.label_48
.label_48:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x52
	nop	
	mov	dword ptr [rbp - 0x28], eax
	je	.label_87
	mov	rbp, rbp
	jmp	.label_20
.label_20:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x53
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], eax
	lea	rsi, [rsi]
	je	.label_24
	nop	
	jmp	.label_30
.label_30:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	je	.label_31
	lea	rsi, [rsi]
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_44
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x62
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	je	.label_53
	lea	rdi, [rdi]
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x66
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	je	.label_62
	mov	rbp, rbp
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xd4], eax
	mov	rbp, rbp
	je	.label_34
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_78
	jmp	.label_82
.label_82:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x6f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_71
	jmp	.label_18
.label_18:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x72
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	nop	
	je	.label_37
	jmp	.label_27
.label_27:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_35
	jmp	.label_64
.label_64:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x54], eax
	je	.label_38
	jmp	.label_43
.label_43:
	nop	
	mov	edi, 1
	call	usage
.label_50:
	mov	byte ptr [byte ptr [gnu_extensions]],  0
	lea	rsi, [rsi]
	jmp	.label_16
.label_53:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [break_file]],  rax
	jmp	.label_16
.label_62:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [ignore_case]],  1
	nop	
	jmp	.label_16
.label_34:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x40]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	xstrtoimax
	cmp	eax, 0
	jne	.label_72
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jge	.label_72
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x40], rax
	jle	.label_22
.label_72:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.15
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	nop	
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_22:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [word ptr [gap_size]],  rax
	mov	rsp, rsp
	jmp	.label_16
.label_78:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [ignore_file]],  rax
	mov	rbp, rbp
	jmp	.label_16
.label_71:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [only_file]],  rax
	lea	rsi, [rsi]
	jmp	.label_16
.label_37:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [input_reference]],  1
	lea	rdi, [rdi]
	jmp	.label_16
.label_35:
	jmp	.label_16
.label_38:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rbp - 0x60]
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0xd0], rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x18]
	call	xstrtoimax
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_26
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	jge	.label_26
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jle	.label_73
.label_26:
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	call	quote
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_73:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [word ptr [line_width]],  rax
	nop	
	jmp	.label_16
.label_41:
	mov	byte ptr [byte ptr [auto_reference]],  1
	mov	rsp, rsp
	jmp	.label_16
.label_52:
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [truncation_string]],  rax
	jmp	.label_16
.label_70:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [macro_name]],  rax
	nop	
	jmp	.label_16
.label_79:
	mov	dword ptr [dword ptr [output_format]],  2
	nop	
	jmp	.label_16
.label_87:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [right_reference]],  1
	mov	rsp, rsp
	jmp	.label_16
.label_24:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [context_regex]],  rax
	lea	rdi, [rdi]
	jmp	.label_16
.label_31:
	mov	dword ptr [dword ptr [output_format]],  3
	mov	rbp, rbp
	jmp	.label_16
.label_44:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [word_regex]],  rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [word_regex]]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	jne	.label_42
	mov	rbp, rbp
	mov	qword ptr [word ptr [word_regex]],  0
.label_42:
	jmp	.label_16
.label_32:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:format_args
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:format_vals
	nop	
	mov	ecx, 4
	mov	r8d, ecx
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	mov	dword ptr [dword ptr [output_format]],  r10d
	jmp	.label_16
.label_25:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_85:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19
	movabs	rsi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	qword ptr [rbp - 0x100], rax
	call	proper_name_utf8
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.10
	nop	
	movabs	rdx, OFFSET FLAT:.str.17
	xor	r8d, r8d
	mov	r9d, r8d
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, rax
	mov	al, 0
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_16:
	lea	rsi, [rsi]
	jmp	.label_55
.label_80:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0xc]
	jne	.label_57
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rsi, [rsi]
	call	xmalloc
	mov	ecx, 8
	mov	edi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	mov	rsp, rsp
	call	xmalloc
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	edi, ecx
	mov	rsp, rsp
	mov	qword ptr [word ptr [file_line_count]],  rax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	nop	
	mov	dword ptr [dword ptr [number_input_files]],  1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [input_file_name]]
	lea	rsi, [rsi]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_74
.label_57:
	nop	
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_21
	mov	eax, 8
	lea	rsi, [rsi]
	mov	esi, eax
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [dword ptr [number_input_files]],  eax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	lea	rsi, [rsi]
	mov	ecx, 8
	mov	esi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	ecx, 0x10
	nop	
	mov	esi, ecx
	mov	rsp, rsp
	mov	qword ptr [word ptr [file_line_count]],  rax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [text_buffers]],  rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], 0
.label_47:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [number_input_files]]
	nop	
	jge	.label_63
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	nop	
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0
	je	.label_69
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.21
	mov	rbp, rbp
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_88
.label_69:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xdc]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	jmp	.label_17
.label_88:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rdx + rcx*8], rax
.label_17:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	add	eax, 1
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	jmp	.label_47
.label_63:
	jmp	.label_60
.label_21:
	mov	eax, 8
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [number_input_files]],  1
	call	xmalloc
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	rbp, rbp
	mov	qword ptr [word ptr [input_file_name]],  rax
	mov	rsp, rsp
	call	xmalloc
	mov	rbp, rbp
	mov	ecx, 0x10
	mov	edi, ecx
	mov	qword ptr [word ptr [file_line_count]],  rax
	call	xmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rdi + rax*8]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_81
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	mov	edx, OFFSET FLAT:.str.21
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_56
.label_81:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rax], 0
	nop	
	jmp	.label_33
.label_56:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rcx], rax
.label_33:
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	cmp	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	jge	.label_54
	movabs	rsi, OFFSET FLAT:.str.22
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rdx,  qword ptr [word ptr [stdout]]
	call	freopen_safer
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_76
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + rax*8]
	nop	
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_76:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	nop	
	mov	dword ptr [dword ptr [optind]],  eax
.label_54:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_36
	movabs	rdi, OFFSET FLAT:.str.24
	mov	rsp, rsp
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_36:
	lea	rsi, [rsi]
	jmp	.label_60
.label_60:
	lea	rsi, [rsi]
	jmp	.label_74
.label_74:
	cmp	dword ptr [dword ptr [output_format]],  0
	jne	.label_77
	mov	eax, 2
	nop	
	mov	ecx, 1
	mov	dl,  byte ptr [byte ptr [gnu_extensions]]
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	cmovne	eax, ecx
	mov	dword ptr [dword ptr [output_format]],  eax
.label_77:
	call	initialize_regex
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [break_file]],  0
	je	.label_19
	mov	rdi,  qword ptr [word ptr [break_file]]
	lea	rdi, [rdi]
	call	digest_break_file
.label_19:
	cmp	qword ptr [word ptr [ignore_file]],  0
	mov	rsp, rsp
	je	.label_28
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:ignore_table
	mov	rdi,  qword ptr [word ptr [ignore_file]]
	mov	rbp, rbp
	call	digest_word_file
	cmp	qword ptr [word ptr [label_45]],  0
	mov	rsp, rsp
	jne	.label_46
	mov	qword ptr [word ptr [ignore_file]],  0
.label_46:
	mov	rbp, rbp
	jmp	.label_28
.label_28:
	nop	
	cmp	qword ptr [word ptr [only_file]],  0
	je	.label_84
	movabs	rsi, OFFSET FLAT:only_table
	mov	rdi,  qword ptr [word ptr [only_file]]
	mov	rbp, rbp
	call	digest_word_file
	nop	
	cmp	qword ptr [word ptr [label_65]],  0
	jne	.label_66
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [only_file]],  0
.label_66:
	nop	
	jmp	.label_84
.label_84:
	mov	qword ptr [word ptr [number_of_occurs]],  0
	mov	qword ptr [word ptr [total_line_count]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [maximum_word_length]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [reference_max_width]],  0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], 0
.label_86:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [number_input_files]]
	nop	
	jge	.label_49
	mov	rax,  qword ptr [word ptr [text_buffers]]
	movsxd	rcx, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	movsxd	rax, dword ptr [rbp - 0xdc]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	swallow_file_in_memory
	mov	edi, dword ptr [rbp - 0xdc]
	call	find_occurs_in_text
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [total_line_count]]
	movsxd	rcx, dword ptr [rbp - 0xdc]
	nop	
	mov	rsi,  qword ptr [word ptr [file_line_count]]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_86
.label_49:
	call	sort_found_occurs
	call	fix_output_parameters
	mov	rsp, rsp
	call	generate_all_output
	xor	eax, eax
	add	rsp, 0x100
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	strlen
	nop	
	add	rax, 1
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	nop	
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
.label_130:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_107
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	nop	
	jne	.label_112
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	test	edx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	je	.label_132
	jmp	.label_131
.label_131:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x14], eax
	nop	
	je	.label_91
	lea	rdi, [rdi]
	jmp	.label_99
.label_99:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	je	.label_101
	jmp	.label_108
.label_108:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x62
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_109
	mov	rsp, rsp
	jmp	.label_115
.label_115:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x74], eax
	lea	rdi, [rdi]
	je	.label_120
	jmp	.label_125
.label_125:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 0x66
	nop	
	mov	dword ptr [rbp - 0x54], eax
	je	.label_127
	lea	rsi, [rsi]
	jmp	.label_96
.label_96:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	je	.label_94
	mov	rsp, rsp
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x58], eax
	je	.label_103
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	je	.label_123
	jmp	.label_117
.label_117:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x70], eax
	nop	
	je	.label_93
	nop	
	jmp	.label_124
.label_124:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	jne	.label_104
	mov	rsp, rsp
	jmp	.label_116
.label_116:
	nop	
	mov	dword ptr [rbp - 0x68], 0
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_114:
	xor	eax, eax
	nop	
	mov	cl, al
	cmp	dword ptr [rbp - 4], 3
	mov	byte ptr [rbp - 0x41], cl
	jge	.label_105
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	movzx	edi, al
	lea	rdi, [rdi]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x20], rcx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	mov	rsp, rsp
	cmp	edi, 0
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], dl
.label_105:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	nop	
	jne	.label_118
	nop	
	jmp	.label_97
.label_118:
	mov	eax, dword ptr [rbp - 0x68]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	jl	.label_89
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_89
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	sub	ecx, 0x61
	add	ecx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_113
.label_89:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x41
	nop	
	jl	.label_126
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jg	.label_126
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 8], ecx
	mov	rsp, rsp
	jmp	.label_119
.label_126:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	sub	ecx, 0x30
	mov	dword ptr [rbp - 8], ecx
.label_119:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x60], eax
.label_113:
	nop	
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	add	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], ecx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_114
.label_97:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_128
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x5c
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rax], 0x78
	lea	rdi, [rdi]
	jmp	.label_121
.label_128:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x68]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	mov	byte ptr [rdx], cl
.label_121:
	jmp	.label_90
.label_91:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], 0
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_95:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	cmp	dword ptr [rbp - 4], 3
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_100
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4d], cl
	lea	rdi, [rdi]
	jl	.label_106
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	mov	rsp, rsp
	setle	dl
	nop	
	mov	byte ptr [rbp - 0x4d], dl
.label_106:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4d]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], al
.label_100:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_129
	mov	rbp, rbp
	jmp	.label_92
.label_129:
	nop	
	mov	eax, dword ptr [rbp - 0x68]
	shl	eax, 3
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	mov	rsp, rsp
	add	eax, edx
	nop	
	mov	dword ptr [rbp - 0x68], eax
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	jmp	.label_95
.label_92:
	mov	eax, dword ptr [rbp - 0x68]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	mov	byte ptr [rdx], cl
	mov	rsp, rsp
	jmp	.label_90
.label_101:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	mov	byte ptr [rax], 7
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_90
.label_109:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 8
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_90
.label_120:
	nop	
	jmp	.label_98
.label_98:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_122
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_98
.label_122:
	mov	rbp, rbp
	jmp	.label_90
.label_127:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	mov	byte ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_90
.label_94:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_90
.label_103:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xd
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_90
.label_123:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_90
.label_93:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rax], 0xb
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_90
.label_132:
	jmp	.label_90
.label_104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rax], 0x5c
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
.label_90:
	lea	rsi, [rsi]
	jmp	.label_111
.label_112:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	dl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], dl
.label_111:
	mov	rbp, rbp
	jmp	.label_130
.label_107:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x80
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036b0

	.globl initialize_regex
	.type initialize_regex, @function
initialize_regex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [ignore_case]],  1
	je	.label_136
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0
.label_145:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0x100
	lea	rdi, [rdi]
	jge	.label_137
	mov	edi, dword ptr [rbp - 0xc]
	call	toupper
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	byte ptr [byte ptr [+ (rdx * 1) + folded_chars]],  cl
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_145
.label_137:
	jmp	.label_136
.label_136:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_140
	mov	rax,  qword ptr [word ptr [context_regex]]
	cmp	byte ptr [rax], 0
	nop	
	jne	.label_144
	nop	
	mov	qword ptr [word ptr [context_regex]],  0
.label_144:
	jmp	.label_134
.label_140:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_135
	test	byte ptr [byte ptr [input_reference]],  1
	jne	.label_135
	movabs	rax, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [context_regex]],  rax
	jmp	.label_143
.label_135:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.65
	mov	qword ptr [word ptr [context_regex]],  rax
.label_143:
	jmp	.label_134
.label_134:
	nop	
	cmp	qword ptr [word ptr [context_regex]],  0
	lea	rdi, [rdi]
	je	.label_142
	movabs	rdi, OFFSET FLAT:context_regex
	call	compile_regex
.label_142:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_147
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:word_regex
	mov	rbp, rbp
	call	compile_regex
	nop	
	jmp	.label_139
.label_147:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [break_file]],  0
	lea	rdi, [rdi]
	jne	.label_138
	test	byte ptr [byte ptr [gnu_extensions]],  1
	lea	rsi, [rsi]
	je	.label_151
	nop	
	mov	dword ptr [rbp - 0xc], 0
.label_133:
	cmp	dword ptr [rbp - 0xc], 0x100
	jge	.label_141
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x400
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	mov	rbp, rbp
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edx, sil
	mov	sil, dl
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	byte ptr [byte ptr [+ (rax * 1) + word_fastmap]],  sil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_133
.label_141:
	lea	rsi, [rsi]
	jmp	.label_146
.label_151:
	movabs	rdi, OFFSET FLAT:word_fastmap
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	mov	eax, 0x100
	lea	rdi, [rdi]
	mov	edx, eax
	call	memset
	mov	byte ptr [byte ptr [label_148]],  0
	mov	byte ptr [byte ptr [label_149]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [label_150]],  0
.label_146:
	mov	rbp, rbp
	jmp	.label_138
.label_138:
	nop	
	jmp	.label_139
.label_139:
	lea	rdi, [rdi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403900

	.globl digest_break_file
	.type digest_break_file, @function
digest_break_file:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	lea	rsi, [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	swallow_file_in_memory
	movabs	rdi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	lea	rsi, [rsi]
	mov	eax, 0x100
	mov	edx, eax
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
.label_154:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_152
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	nop	
	mov	ecx, edi
	mov	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_154
.label_152:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	jne	.label_153
	mov	byte ptr [byte ptr [label_148]],  0
	mov	byte ptr [byte ptr [label_149]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [label_150]],  0
.label_153:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039e0

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	swallow_file_in_memory
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
.label_159:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_162
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_163:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x39], cl
	jae	.label_161
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0xa
	setne	dl
	mov	byte ptr [rbp - 0x39], dl
.label_161:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_157
	jmp	.label_160
.label_157:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_163
.label_160:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_155
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jne	.label_156
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	add	rsi, 8
	mov	rdi, rcx
	nop	
	call	x2nrealloc
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_156:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
.label_155:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_158
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_158:
	nop	
	jmp	.label_159
.label_162:
	mov	eax, 0x10
	mov	edx, eax
	nop	
	movabs	rcx, OFFSET FLAT:compare_words
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	call	qsort
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], al
	nop	
	je	.label_164
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	byte ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	je	.label_164
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.21
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], cl
.label_164:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
	nop	
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_165
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	fread_file
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	jmp	.label_167
.label_165:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x18]
	call	read_file
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rax
.label_167:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_169
	mov	rsp, rsp
	call	__errno_location
	mov	esi, dword ptr [rax]
	nop	
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], esi
	je	.label_168
	movabs	rax, OFFSET FLAT:.str.21
	mov	qword ptr [rbp - 8], rax
	jmp	.label_166
.label_168:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_166:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, rax
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_169:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d60

	.globl find_occurs_in_text
	.type find_occurs_in_text, @function
find_occurs_in_text:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x130
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], edi
	movsxd	rax, dword ptr [rbp - 0x2c]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], 0
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	test	byte ptr [byte ptr [input_reference]],  1
	mov	rbp, rbp
	je	.label_171
	jmp	.label_207
.label_207:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], cl
	jae	.label_237
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	movzx	edi, word ptr [rax + rcx*2]
	nop	
	and	edi, 0x2000
	lea	rsi, [rsi]
	cmp	edi, 0
	setne	dl
	lea	rsi, [rsi]
	xor	dl, 0xff
	mov	byte ptr [rbp - 1], dl
.label_237:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	jne	.label_198
	jmp	.label_205
.label_198:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_207
.label_205:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0xe0], rax
.label_192:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x82], cl
	jae	.label_227
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	movsxd	rcx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 0x2000
	cmp	edi, 0
	mov	rbp, rbp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], dl
.label_227:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x82]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_181
	nop	
	jmp	.label_189
.label_181:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_192
.label_189:
	jmp	.label_171
.label_171:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_245:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_217
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xd8], rax
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_226
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, rax
	mov	edx, OFFSET FLAT:context_regs
	lea	rdi, [rdi]
	mov	r9d, edx
	nop	
	mov	edx, OFFSET FLAT:label_249
	mov	rsp, rsp
	mov	edi, edx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	esi, edx
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rbp, rbp
	mov	rcx, rax
	mov	r8, qword ptr [rbp - 0xa8]
	call	rpl_re_search
	mov	rcx, rax
	mov	rbp, rbp
	sub	rax, -2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x118], rax
	mov	rbp, rbp
	je	.label_185
	jmp	.label_199
.label_199:
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, -1
	mov	qword ptr [rbp - 0xf0], rax
	lea	rdi, [rdi]
	je	.label_201
	mov	rsp, rsp
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_215
	lea	rdi, [rdi]
	jmp	.label_223
.label_185:
	lea	rdi, [rdi]
	call	matcher_error
.label_201:
	jmp	.label_224
.label_215:
	nop	
	movabs	rdi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [context_regex]]
	nop	
	mov	qword ptr [rbp - 0xf8], rax
	call	quote
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_223:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [label_241]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0xd8], rax
.label_224:
	nop	
	jmp	.label_226
.label_226:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x120], rax
.label_228:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x120]
	cmp	rdx, qword ptr [rbp - 0x78]
	mov	byte ptr [rbp - 0x99], cl
	jbe	.label_175
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	movsx	edi, byte ptr [rax - 1]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x70], rcx
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x99], dl
.label_175:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x99]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_218
	jmp	.label_219
.label_218:
	mov	rax, qword ptr [rbp - 0x120]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_228
.label_219:
	jmp	.label_173
.label_173:
	cmp	qword ptr [word ptr [word_regex]],  0
	nop	
	je	.label_232
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	lea	rdi, [rdi]
	xor	ecx, ecx
	movabs	r9, OFFSET FLAT:word_regs
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rdx, rdi
	mov	rdi, qword ptr [rbp - 0x120]
	mov	r8, qword ptr [rbp - 0x28]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	mov	r8, qword ptr [rbp - 0x68]
	call	rpl_re_search
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x98], -2
	jne	.label_179
	call	matcher_error
.label_179:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x98], -1
	jne	.label_190
	mov	rsp, rsp
	jmp	.label_180
.label_190:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [label_202]]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [label_203]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_204
.label_232:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_248:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x120]
	mov	byte ptr [rbp - 0xc9], cl
	mov	rbp, rbp
	jae	.label_229
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	setne	al
	nop	
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc9], al
.label_229:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xc9]
	mov	rbp, rbp
	test	al, 1
	jne	.label_240
	jmp	.label_247
.label_240:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_248
.label_247:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	jne	.label_174
	mov	rsp, rsp
	jmp	.label_180
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
.label_225:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x120]
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_188
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	ecx, edi
	lea	rsi, [rsi]
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
.label_188:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	mov	rbp, rbp
	jne	.label_222
	jmp	.label_213
.label_222:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_225
.label_213:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_204:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	jne	.label_231
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_173
.label_231:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [maximum_word_length]]
	lea	rdi, [rdi]
	jle	.label_244
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [word ptr [maximum_word_length]],  rax
.label_244:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_197
	lea	rdi, [rdi]
	jmp	.label_206
.label_206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_210
	mov	rax, qword ptr [rbp - 0x128]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0xa
	lea	rdi, [rdi]
	jne	.label_216
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
.label_211:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_238
	mov	rax, qword ptr [rbp - 0x128]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0xc0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_238:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_196
	mov	rsp, rsp
	jmp	.label_208
.label_196:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_211
.label_208:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0xe0], rax
	lea	rdi, [rdi]
	jmp	.label_177
.label_216:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rax
.label_177:
	jmp	.label_206
.label_210:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jbe	.label_184
	lea	rdi, [rdi]
	jmp	.label_173
.label_184:
	jmp	.label_197
.label_197:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [ignore_file]],  0
	je	.label_178
	mov	rbp, rbp
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:ignore_table
	call	search_table
	test	al, 1
	mov	rbp, rbp
	jne	.label_209
	lea	rsi, [rsi]
	jmp	.label_178
.label_209:
	mov	rbp, rbp
	jmp	.label_173
.label_178:
	nop	
	cmp	qword ptr [word ptr [only_file]],  0
	je	.label_183
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:only_table
	call	search_table
	test	al, 1
	jne	.label_183
	jmp	.label_173
.label_183:
	mov	rax,  qword ptr [word ptr [number_of_occurs]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [occurs_alloc]]
	nop	
	jne	.label_187
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:occurs_alloc
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [occurs_table]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [occurs_table]],  rax
.label_187:
	mov	rax,  qword ptr [word ptr [occurs_table]]
	lea	rsi, [rsi]
	imul	rcx,  qword ptr [word ptr [number_of_occurs]],  0x30
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_230
	lea	rdi, [rdi]
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_239
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0xa
	jne	.label_246
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [total_line_count]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [total_line_count]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0xe8], rax
.label_243:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xca], cl
	jae	.label_221
	mov	rax, qword ptr [rbp - 0x128]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rdi, [rdi]
	movsxd	rcx, edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	mov	rsp, rsp
	setne	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	nop	
	mov	byte ptr [rbp - 0xca], dl
.label_221:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xca]
	test	al, 1
	jne	.label_236
	jmp	.label_200
.label_236:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x128], rax
	lea	rsi, [rsi]
	jmp	.label_243
.label_200:
	jmp	.label_172
.label_246:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
.label_172:
	jmp	.label_233
.label_239:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [total_line_count]]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_182
.label_230:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [input_reference]],  1
	lea	rsi, [rsi]
	je	.label_191
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [reference_max_width]]
	mov	rsp, rsp
	jle	.label_242
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [reference_max_width]],  rax
.label_242:
	lea	rsi, [rsi]
	jmp	.label_191
.label_191:
	nop	
	jmp	.label_182
.label_182:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_170
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x78]
	jne	.label_170
	jmp	.label_195
.label_195:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	cmp	rdx, qword ptr [rbp - 0x120]
	mov	byte ptr [rbp - 0x49], cl
	jae	.label_235
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	rbp, rbp
	setne	dl
	mov	rsp, rsp
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x49], dl
.label_235:
	mov	al, byte ptr [rbp - 0x49]
	mov	rsp, rsp
	test	al, 1
	jne	.label_186
	mov	rsp, rsp
	jmp	.label_193
.label_186:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_195
.label_193:
	jmp	.label_214
.label_214:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], cl
	jae	.label_194
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	lea	rsi, [rsi]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x110], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	mov	rsp, rsp
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], dl
.label_194:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	jne	.label_234
	jmp	.label_176
.label_234:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_214
.label_176:
	mov	rbp, rbp
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	sub	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + 0x18], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x28], edx
	mov	rax,  qword ptr [word ptr [number_of_occurs]]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [word ptr [number_of_occurs]],  rax
	mov	rsp, rsp
	jmp	.label_173
.label_180:
	jmp	.label_220
.label_220:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_245
.label_217:
	lea	rsi, [rsi]
	add	rsp, 0x130
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ab0

	.globl sort_found_occurs
	.type sort_found_occurs, @function
sort_found_occurs:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	cmp	qword ptr [word ptr [number_of_occurs]],  0
	mov	rsp, rsp
	je	.label_250
	mov	eax, 0x30
	nop	
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_occurs
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [occurs_table]]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [number_of_occurs]]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	call	qsort
.label_250:
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b20

	.globl fix_output_parameters
	.type fix_output_parameters, @function
fix_output_parameters:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_258
	mov	qword ptr [word ptr [reference_max_width]],  0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
.label_275:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [number_input_files]]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_271
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [file_line_count]]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jbe	.label_257
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx,  qword ptr [word ptr [file_line_count]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x50], rcx
.label_257:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.69
	lea	rdi, [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	sprintf
	nop	
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [input_file_name]]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + rdx*8], 0
	nop	
	je	.label_276
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
.label_276:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	rax,  qword ptr [word ptr [reference_max_width]]
	lea	rdi, [rdi]
	jle	.label_265
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [word ptr [reference_max_width]],  rax
.label_265:
	jmp	.label_273
.label_273:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_275
.label_271:
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [reference_max_width]],  rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [reference]],  rax
.label_258:
	nop	
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_264
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_reference]],  1
	lea	rsi, [rsi]
	je	.label_268
.label_264:
	test	byte ptr [byte ptr [right_reference]],  1
	nop	
	jne	.label_268
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [gap_size]]
	nop	
	mov	rcx,  qword ptr [word ptr [line_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [line_width]],  rcx
.label_268:
	cmp	qword ptr [word ptr [line_width]],  0
	mov	rbp, rbp
	jge	.label_256
	mov	qword ptr [word ptr [line_width]],  0
.label_256:
	mov	rsp, rsp
	mov	eax, 2
	mov	ecx, eax
	mov	rax,  qword ptr [word ptr [line_width]]
	lea	rdi, [rdi]
	cqo	
	idiv	rcx
	mov	qword ptr [word ptr [half_line_width]],  rax
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [word ptr [before_max_width]],  rax
	mov	rax,  qword ptr [word ptr [half_line_width]]
	mov	qword ptr [word ptr [keyafter_max_width]],  rax
	nop	
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	rsp, rsp
	je	.label_254
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [truncation_string]]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_254
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	qword ptr [word ptr [truncation_string_length]],  rax
	jmp	.label_266
.label_254:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [truncation_string]],  0
.label_266:
	mov	rbp, rbp
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_272
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	mov	rcx,  qword ptr [word ptr [before_max_width]]
	mov	rsp, rsp
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [before_max_width]],  rcx
	mov	rbp, rbp
	cmp	qword ptr [word ptr [before_max_width]],  0
	jge	.label_277
	mov	qword ptr [word ptr [before_max_width]],  0
.label_277:
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	nop	
	shl	rax, 1
	mov	rcx,  qword ptr [word ptr [keyafter_max_width]]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [keyafter_max_width]],  rcx
	mov	rbp, rbp
	jmp	.label_260
.label_272:
	nop	
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [keyafter_max_width]]
	sub	rcx, rax
	nop	
	mov	qword ptr [word ptr [keyafter_max_width]],  rcx
.label_260:
	mov	dword ptr [rbp - 0x2c], 0
.label_259:
	cmp	dword ptr [rbp - 0x2c], 0x100
	jge	.label_251
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	lea	rdi, [rdi]
	xor	sil, 0xff
	mov	rsp, rsp
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	mov	sil, dl
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	byte ptr [byte ptr [+ (rax * 1) + edited_flag]],  sil
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_259
.label_251:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + label_252]],  1
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	mov	ecx, eax
	sub	ecx, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	dword ptr [rbp - 8], ecx
	jb	.label_253
	jmp	.label_261
.label_261:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	je	.label_263
	jmp	.label_269
.label_269:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	je	.label_270
	jmp	.label_267
.label_253:
	lea	rsi, [rsi]
	jmp	.label_267
.label_263:
	mov	byte ptr [byte ptr [label_279]],  1
	jmp	.label_267
.label_270:
	movabs	rax, OFFSET FLAT:.str.70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
.label_262:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	byte ptr [rax], 0
	je	.label_255
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	byte ptr [byte ptr [+ (rcx * 1) + edited_flag]],  1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_262
.label_255:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0x80
.label_278:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0x100
	nop	
	jge	.label_274
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	cl, al
	movzx	eax, cl
	mov	edx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rdx * 1) + diacrit_diac]]
	cmp	eax, 0
	nop	
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	rsp, rsp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [+ (rdx * 1) + edited_flag]],  cl
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_278
.label_274:
	nop	
	jmp	.label_267
.label_267:
	add	rsp, 0x60
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405050

	.globl generate_all_output
	.type generate_all_output, @function
generate_all_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [word ptr [tail]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [label_282]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [tail_truncation]],  0
	mov	qword ptr [word ptr [head]],  0
	mov	qword ptr [word ptr [label_283]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [head_truncation]],  0
	mov	rax,  qword ptr [word ptr [occurs_table]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
.label_288:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [number_of_occurs]]
	jge	.label_286
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	define_all_fields
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	mov	ecx, eax
	sub	ecx, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	jb	.label_287
	lea	rsi, [rsi]
	jmp	.label_281
.label_281:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_289
	lea	rdi, [rdi]
	jmp	.label_285
.label_285:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	sub	eax, 3
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	je	.label_284
	mov	rbp, rbp
	jmp	.label_280
.label_287:
	nop	
	call	output_one_dumb_line
	lea	rsi, [rsi]
	jmp	.label_280
.label_289:
	call	output_one_roff_line
	nop	
	jmp	.label_280
.label_284:
	call	output_one_tex_line
.label_280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_288
.label_286:
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051b0

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:folded_chars
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rdi, 8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rdi, 0x48
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x20], rdi
	lea	rdi, [rdi]
	mov	r8b,  byte ptr [byte ptr [ignore_case]]
	mov	rsp, rsp
	test	r8b, 1
	cmovne	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	strlen
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_290
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x18], rcx
	call	quote
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_290:
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405310

	.globl compare_words
	.type compare_words, @function
compare_words:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jge	.label_294
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_291
.label_294:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_291:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [ignore_case]],  1
	je	.label_299
	nop	
	mov	qword ptr [rbp - 8], 0
.label_303:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_293
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movzx	edi,  byte ptr [byte ptr [+ (rcx * 1) + folded_chars]]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	movsx	esi, byte ptr [rdx + rcx]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], edi
	mov	edi, esi
	call	to_uchar
	nop	
	movzx	esi, al
	mov	ecx, esi
	movzx	esi,  byte ptr [byte ptr [+ (rcx * 1) + folded_chars]]
	mov	edi, dword ptr [rbp - 0x18]
	sub	edi, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_300
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_296
.label_300:
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_303
.label_293:
	lea	rsi, [rsi]
	jmp	.label_295
.label_299:
	mov	qword ptr [rbp - 8], 0
.label_305:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jge	.label_304
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	nop	
	movsx	edi, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	call	to_uchar
	nop	
	movzx	edi, al
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	movsx	esi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x44], edi
	lea	rsi, [rsi]
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x44]
	sub	edi, esi
	mov	dword ptr [rbp - 0x14], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_298
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_296
.label_298:
	nop	
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_305
.label_304:
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_297
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_301
.label_297:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	setg	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	mov	dword ptr [rbp - 0x2c], esi
.label_301:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x1c], eax
.label_296:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405540

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.68
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405590

	.globl search_table
	.type search_table, @function
search_table:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	sub	rsi, 1
	mov	qword ptr [rbp - 0x38], rsi
.label_310:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jg	.label_308
	mov	eax, 2
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, qword ptr [rbp - 0x38]
	mov	rax, rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	shl	rsi, 4
	add	rcx, rsi
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	compare_words
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jge	.label_306
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_307
.label_306:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	jle	.label_312
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_309
.label_312:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jmp	.label_311
.label_309:
	jmp	.label_307
.label_307:
	mov	rbp, rbp
	jmp	.label_310
.label_308:
	mov	byte ptr [rbp - 0x19], 0
.label_311:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056c0

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	compare_words
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_314
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	jmp	.label_315
.label_314:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jae	.label_313
	mov	rsp, rsp
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_316
.label_313:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	mov	rbp, rbp
	seta	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x24], esi
.label_316:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	dword ptr [rbp - 0x28], eax
.label_315:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405790

	.globl define_all_fields
	.type define_all_fields, @function
define_all_fields:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x1b0
	nop	
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [keyafter]],  rdi
	nop	
	mov	rdi,  qword ptr [word ptr [keyafter]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	add	rdi, qword ptr [rax + 8]
	mov	qword ptr [word ptr [label_377]],  rdi
	mov	rax,  qword ptr [word ptr [keyafter]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax,  qword ptr [word ptr [keyafter]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rax, dword ptr [rax + 0x28]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rax, dword ptr [rax + 0x28]
	nop	
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [text_buffers]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x198], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [label_377]]
	nop	
	mov	qword ptr [rbp - 0x160], rax
.label_335:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x160]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x151], cl
	jae	.label_351
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	mov	rcx,  qword ptr [word ptr [keyafter]]
	mov	rbp, rbp
	add	rcx,  qword ptr [word ptr [keyafter_max_width]]
	mov	rbp, rbp
	cmp	rax, rcx
	setbe	dl
	mov	byte ptr [rbp - 0x151], dl
.label_351:
	mov	al, byte ptr [rbp - 0x151]
	test	al, 1
	jne	.label_374
	jmp	.label_381
.label_374:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [word ptr [label_377]],  rax
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [word_regex]],  0
	lea	rsi, [rsi]
	je	.label_385
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x160]
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	r8, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	sub	rdi, r8
	mov	qword ptr [rbp - 0x88], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x120]
	nop	
	call	rpl_re_match
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -2
	mov	rsp, rsp
	jne	.label_414
	call	matcher_error
.label_414:
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_425
	mov	rsp, rsp
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	mov	rbp, rbp
	jmp	.label_422
.label_425:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x140], rax
.label_422:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x160], rax
	lea	rdi, [rdi]
	jmp	.label_360
.label_385:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	mov	rbp, rbp
	je	.label_443
	jmp	.label_319
.label_319:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x160]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x32], cl
	mov	rsp, rsp
	jae	.label_323
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	nop	
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x32], al
.label_323:
	mov	al, byte ptr [rbp - 0x32]
	nop	
	test	al, 1
	jne	.label_341
	jmp	.label_345
.label_341:
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	lea	rsi, [rsi]
	jmp	.label_319
.label_345:
	jmp	.label_404
.label_443:
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
.label_404:
	jmp	.label_360
.label_360:
	mov	rbp, rbp
	jmp	.label_335
.label_381:
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx,  qword ptr [word ptr [keyafter]]
	mov	rsp, rsp
	add	rcx,  qword ptr [word ptr [keyafter_max_width]]
	cmp	rax, rcx
	ja	.label_365
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	mov	qword ptr [word ptr [label_377]],  rax
.label_365:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	je	.label_386
	mov	rax,  qword ptr [word ptr [label_377]]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	setb	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], cl
.label_386:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [keyafter_truncation]],  al
.label_436:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_377]]
	nop	
	cmp	rdx,  qword ptr [word ptr [keyafter]]
	mov	byte ptr [rbp - 0x22], cl
	jbe	.label_400
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [label_377]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	lea	rsi, [rsi]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xc0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	lea	rsi, [rsi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], dl
.label_400:
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	jne	.label_432
	lea	rsi, [rsi]
	jmp	.label_434
.label_432:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [label_377]]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_377]],  rax
	jmp	.label_436
.label_434:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x110]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rdx,  qword ptr [word ptr [half_line_width]]
	lea	rdi, [rdi]
	add	rdx,  qword ptr [word ptr [maximum_word_length]]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jle	.label_387
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [half_line_width]]
	add	rsi,  qword ptr [word ptr [maximum_word_length]]
	lea	rdi, [rdi]
	sub	rcx, rsi
	add	rdx, rcx
	mov	qword ptr [rbp - 0x78], rdx
	mov	rbp, rbp
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_321
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	r8, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	sub	rdi, r8
	nop	
	mov	qword ptr [rbp - 0x150], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	r8, qword ptr [rbp - 0xd0]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_364
	call	matcher_error
.label_364:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], -1
	nop	
	jne	.label_371
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x100], rcx
	jmp	.label_378
.label_371:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x100], rax
.label_378:
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_392
.label_321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_398
	jmp	.label_401
.label_401:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx,  qword ptr [word ptr [keyafter]]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	mov	rbp, rbp
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_403:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_419
	mov	rbp, rbp
	jmp	.label_410
.label_419:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_401
.label_410:
	mov	rbp, rbp
	jmp	.label_328
.label_398:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x78], rax
.label_328:
	jmp	.label_392
.label_392:
	nop	
	jmp	.label_438
.label_387:
	mov	rax,  qword ptr [word ptr [keyafter]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x78], rax
.label_438:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [word ptr [before]],  rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [keyafter]]
	nop	
	mov	qword ptr [word ptr [label_324]],  rax
.label_359:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx,  qword ptr [word ptr [label_324]]
	nop	
	cmp	rdx,  qword ptr [word ptr [before]]
	mov	byte ptr [rbp - 0x181], cl
	jbe	.label_325
	mov	rax,  qword ptr [word ptr [label_324]]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax - 1]
	mov	rsp, rsp
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x1a0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1a0]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 0x2000
	mov	rbp, rbp
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x181], dl
.label_325:
	mov	al, byte ptr [rbp - 0x181]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_354
	jmp	.label_357
.label_354:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [label_324]]
	mov	rbp, rbp
	add	rax, -1
	nop	
	mov	qword ptr [word ptr [label_324]],  rax
	mov	rsp, rsp
	jmp	.label_359
.label_357:
	nop	
	jmp	.label_370
.label_370:
	mov	rax,  qword ptr [word ptr [before]]
	nop	
	add	rax,  qword ptr [word ptr [before_max_width]]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [label_324]]
	jae	.label_373
	mov	rsp, rsp
	cmp	qword ptr [word ptr [word_regex]],  0
	mov	rsp, rsp
	je	.label_388
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [before]]
	mov	rdi,  qword ptr [word ptr [label_324]]
	nop	
	mov	r8,  qword ptr [word ptr [before]]
	mov	rbp, rbp
	sub	rdi, r8
	mov	qword ptr [rbp - 0x190], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	rpl_re_match
	mov	qword ptr [rbp - 0xf8], rax
	cmp	qword ptr [rbp - 0xf8], -2
	jne	.label_413
	mov	rbp, rbp
	call	matcher_error
.label_413:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf8], -1
	jne	.label_426
	mov	eax, 1
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_431
.label_426:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x20], rax
.label_431:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax,  qword ptr [word ptr [before]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [before]],  rax
	mov	rsp, rsp
	jmp	.label_340
.label_388:
	nop	
	mov	rax,  qword ptr [word ptr [before]]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	nop	
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	mov	rsp, rsp
	je	.label_397
	jmp	.label_322
.label_322:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [before]]
	mov	rsp, rsp
	cmp	rdx,  qword ptr [word ptr [label_324]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x152], cl
	mov	rbp, rbp
	jae	.label_327
	mov	rax,  qword ptr [word ptr [before]]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	nop	
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x152], al
.label_327:
	mov	al, byte ptr [rbp - 0x152]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_350
	jmp	.label_356
.label_350:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
	jmp	.label_322
.label_356:
	jmp	.label_366
.label_397:
	nop	
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [before]],  rax
.label_366:
	lea	rsi, [rsi]
	jmp	.label_340
.label_340:
	nop	
	jmp	.label_370
.label_373:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [truncation_string]],  0
	lea	rdi, [rdi]
	je	.label_382
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [rbp - 0x160], rax
.label_429:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x130]
	mov	byte ptr [rbp - 0x169], cl
	jbe	.label_396
	mov	rax, qword ptr [rbp - 0x160]
	movsx	edi, byte ptr [rax - 1]
	lea	rsi, [rsi]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	mov	rbp, rbp
	movsxd	rcx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rcx
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	mov	rsp, rsp
	setne	dl
	mov	byte ptr [rbp - 0x169], dl
.label_396:
	mov	al, byte ptr [rbp - 0x169]
	mov	rsp, rsp
	test	al, 1
	jne	.label_420
	jmp	.label_427
.label_420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x160], rax
	mov	rbp, rbp
	jmp	.label_429
.label_427:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe0]
	nop	
	seta	cl
	nop	
	and	cl, 1
	nop	
	mov	byte ptr [byte ptr [before_truncation]],  cl
	nop	
	jmp	.label_437
.label_382:
	mov	byte ptr [byte ptr [before_truncation]],  0
.label_437:
	jmp	.label_358
.label_358:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [before]]
	cmp	rdx, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x121], cl
	mov	rbp, rbp
	jae	.label_444
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [before]]
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x98], rcx
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], dl
.label_444:
	mov	al, byte ptr [rbp - 0x121]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_348
	jmp	.label_352
.label_348:
	mov	rax,  qword ptr [word ptr [before]]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
	lea	rsi, [rsi]
	jmp	.label_358
.label_352:
	mov	rax,  qword ptr [word ptr [before_max_width]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_324]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	lea	rsi, [rsi]
	sub	rax, rcx
	nop	
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jle	.label_363
	mov	rax,  qword ptr [word ptr [label_377]]
	mov	qword ptr [word ptr [tail]],  rax
.label_430:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [tail]]
	nop	
	cmp	rdx, qword ptr [rbp - 0x198]
	mov	byte ptr [rbp - 0x16a], cl
	mov	rsp, rsp
	jae	.label_395
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [tail]]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	mov	rsp, rsp
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a8], rcx
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1a8]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edi, 0x2000
	mov	rsp, rsp
	cmp	edi, 0
	lea	rdi, [rdi]
	setne	dl
	mov	byte ptr [rbp - 0x16a], dl
.label_395:
	mov	al, byte ptr [rbp - 0x16a]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_421
	jmp	.label_428
.label_421:
	mov	rax,  qword ptr [word ptr [tail]]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [word ptr [tail]],  rax
	nop	
	jmp	.label_430
.label_428:
	mov	rax,  qword ptr [word ptr [tail]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_282]],  rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [label_282]]
	nop	
	mov	qword ptr [rbp - 0x160], rax
.label_331:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x160]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0xe1], cl
	nop	
	jae	.label_440
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [tail]]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	rax, rcx
	setb	dl
	mov	byte ptr [rbp - 0xe1], dl
.label_440:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xe1]
	mov	rbp, rbp
	test	al, 1
	jne	.label_332
	mov	rbp, rbp
	jmp	.label_336
.label_332:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_282]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [word_regex]],  0
	lea	rdi, [rdi]
	je	.label_423
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x160]
	sub	rdi, r8
	mov	qword ptr [rbp - 0xb8], rdi
	nop	
	mov	rdi, rax
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	r8, qword ptr [rbp - 0xa8]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x1b0], rax
	cmp	qword ptr [rbp - 0x1b0], -2
	jne	.label_379
	call	matcher_error
.label_379:
	cmp	qword ptr [rbp - 0x1b0], -1
	jne	.label_402
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_394
.label_402:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0xb0], rax
.label_394:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x160], rax
	nop	
	jmp	.label_330
.label_423:
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	movsx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	nop	
	mov	ecx, edi
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	nop	
	je	.label_407
	mov	rbp, rbp
	jmp	.label_416
.label_416:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x16b], cl
	jae	.label_418
	mov	rax, qword ptr [rbp - 0x160]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	nop	
	mov	ecx, edi
	mov	rsp, rsp
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0x16b], al
.label_418:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x16b]
	test	al, 1
	jne	.label_383
	jmp	.label_441
.label_383:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_416
.label_441:
	jmp	.label_415
.label_407:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x160], rax
.label_415:
	mov	rsp, rsp
	jmp	.label_330
.label_330:
	mov	rsp, rsp
	jmp	.label_331
.label_336:
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [tail]]
	add	rcx, qword ptr [rbp - 0x68]
	cmp	rax, rcx
	jae	.label_334
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [label_282]],  rax
.label_334:
	nop	
	mov	rax,  qword ptr [word ptr [label_282]]
	cmp	rax,  qword ptr [word ptr [tail]]
	lea	rdi, [rdi]
	jbe	.label_342
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [keyafter_truncation]],  0
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 9], cl
	je	.label_349
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_282]]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_349:
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [tail_truncation]],  al
	jmp	.label_368
.label_342:
	mov	byte ptr [byte ptr [tail_truncation]],  0
.label_368:
	jmp	.label_380
.label_380:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx,  qword ptr [word ptr [label_282]]
	lea	rsi, [rsi]
	cmp	rdx,  qword ptr [word ptr [tail]]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	nop	
	jbe	.label_384
	mov	rax,  qword ptr [word ptr [label_282]]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax - 1]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	nop	
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x70], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x51], dl
.label_384:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x51]
	nop	
	test	al, 1
	jne	.label_406
	jmp	.label_408
.label_406:
	mov	rax,  qword ptr [word ptr [label_282]]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [word ptr [label_282]],  rax
	lea	rdi, [rdi]
	jmp	.label_380
.label_408:
	jmp	.label_337
.label_363:
	mov	rbp, rbp
	mov	qword ptr [word ptr [tail]],  0
	nop	
	mov	qword ptr [word ptr [label_282]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [tail_truncation]],  0
.label_337:
	nop	
	mov	rax,  qword ptr [word ptr [keyafter_max_width]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_377]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	sub	rcx, rdx
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [rbp - 0x180], rax
	cmp	qword ptr [rbp - 0x180], 0
	mov	rbp, rbp
	jle	.label_435
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [word ptr [label_283]],  rax
.label_362:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [label_283]]
	cmp	rdx, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc1], cl
	mov	rsp, rsp
	jbe	.label_320
	mov	rax,  qword ptr [word ptr [label_283]]
	movsx	edi, byte ptr [rax - 1]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	edi, al
	mov	rsp, rsp
	movsxd	rcx, edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], dl
.label_320:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_353
	mov	rsp, rsp
	jmp	.label_442
.label_353:
	mov	rax,  qword ptr [word ptr [label_283]]
	add	rax, -1
	mov	qword ptr [word ptr [label_283]],  rax
	nop	
	jmp	.label_362
.label_442:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [head]],  rax
.label_411:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [label_283]]
	nop	
	jae	.label_376
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [word_regex]],  0
	lea	rdi, [rdi]
	je	.label_391
	nop	
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi,  qword ptr [word ptr [head]]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [label_283]]
	mov	r8,  qword ptr [word ptr [head]]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x148], rdi
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x108], rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x108]
	mov	r8, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	call	rpl_re_match
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rax
	nop	
	cmp	qword ptr [rbp - 0x138], -2
	mov	rbp, rbp
	jne	.label_417
	call	matcher_error
.label_417:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x138], -1
	lea	rdi, [rdi]
	jne	.label_372
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_433
.label_372:
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_433:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax,  qword ptr [word ptr [head]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_375
.label_391:
	mov	rax,  qword ptr [word ptr [head]]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	nop	
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_318
	jmp	.label_329
.label_329:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [head]]
	cmp	rdx,  qword ptr [word ptr [label_283]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16c], cl
	lea	rdi, [rdi]
	jae	.label_361
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	lea	rsi, [rsi]
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	mov	rsp, rsp
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x16c], al
.label_361:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x16c]
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_393
	mov	rsp, rsp
	jmp	.label_390
.label_393:
	mov	rax,  qword ptr [word ptr [head]]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
	lea	rdi, [rdi]
	jmp	.label_329
.label_390:
	mov	rsp, rsp
	jmp	.label_369
.label_318:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [head]]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
.label_369:
	mov	rsp, rsp
	jmp	.label_375
.label_375:
	jmp	.label_411
.label_376:
	mov	rax,  qword ptr [word ptr [label_283]]
	cmp	rax,  qword ptr [word ptr [head]]
	jbe	.label_389
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [byte ptr [before_truncation]],  0
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 0xe2], cl
	mov	rbp, rbp
	je	.label_326
	mov	rax,  qword ptr [word ptr [head]]
	cmp	rax, qword ptr [rbp - 0xe0]
	seta	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], cl
.label_326:
	mov	al, byte ptr [rbp - 0xe2]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [head_truncation]],  al
	jmp	.label_405
.label_389:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [head_truncation]],  0
.label_405:
	lea	rdi, [rdi]
	jmp	.label_409
.label_409:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [head]]
	cmp	rdx,  qword ptr [word ptr [label_283]]
	mov	byte ptr [rbp - 0x99], cl
	jae	.label_412
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	edi, al
	movsxd	rcx, edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	mov	rbp, rbp
	cmp	edi, 0
	mov	rsp, rsp
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99], dl
.label_412:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	mov	rsp, rsp
	jne	.label_424
	lea	rdi, [rdi]
	jmp	.label_317
.label_424:
	mov	rax,  qword ptr [word ptr [head]]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_409
.label_317:
	nop	
	jmp	.label_333
.label_435:
	mov	rbp, rbp
	mov	qword ptr [word ptr [head]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_283]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [head_truncation]],  0
.label_333:
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	rbp, rbp
	je	.label_339
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rax, dword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x168], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x168], 0
	lea	rdi, [rdi]
	jne	.label_344
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x168], rax
.label_344:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x178], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	cmp	dword ptr [rax + 0x28], 0
	jle	.label_367
	mov	rax, qword ptr [rbp - 0x110]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rbp, rbp
	sub	ecx, 1
	nop	
	movsxd	rax, ecx
	mov	rdx,  qword ptr [word ptr [file_line_count]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdx + rax*8]
	nop	
	mov	rdx, qword ptr [rbp - 0x178]
	sub	rdx, rax
	nop	
	mov	qword ptr [rbp - 0x178], rdx
.label_367:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.71
	nop	
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rax
	call	stpcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	add	rsi, rdx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_346]],  rsi
	lea	rsi, [rsi]
	jmp	.label_355
.label_339:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_399
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x20]
	mov	qword ptr [word ptr [reference]],  rax
	nop	
	mov	rax,  qword ptr [word ptr [reference]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_346]],  rax
.label_347:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_346]]
	cmp	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x153], cl
	nop	
	jae	.label_439
	mov	rax,  qword ptr [word ptr [label_346]]
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	movsxd	rcx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rcx
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	nop	
	cmp	edi, 0
	setne	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x153], dl
.label_439:
	mov	al, byte ptr [rbp - 0x153]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_338
	mov	rbp, rbp
	jmp	.label_343
.label_338:
	mov	rax,  qword ptr [word ptr [label_346]]
	add	rax, 1
	mov	qword ptr [word ptr [label_346]],  rax
	lea	rdi, [rdi]
	jmp	.label_347
.label_343:
	lea	rdi, [rdi]
	jmp	.label_399
.label_399:
	mov	rbp, rbp
	jmp	.label_355
.label_355:
	mov	rsp, rsp
	add	rsp, 0x1b0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406eb0

	.globl output_one_dumb_line
	.type output_one_dumb_line, @function
output_one_dumb_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	test	byte ptr [byte ptr [right_reference]],  1
	mov	rsp, rsp
	jne	.label_450
	nop	
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	rbp, rbp
	je	.label_462
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_346]]
	call	print_field
	mov	edi, 0x3a
	mov	rbp, rbp
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [reference_max_width]]
	mov	rsp, rsp
	add	rsi,  qword ptr [word ptr [gap_size]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_346]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [reference]]
	nop	
	sub	rcx, rdx
	sub	rsi, rcx
	sub	rsi, 1
	mov	rdi, rsi
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	call	print_spaces
	nop	
	jmp	.label_460
.label_462:
	mov	rdi,  qword ptr [word ptr [reference]]
	nop	
	mov	rsi,  qword ptr [word ptr [label_346]]
	call	print_field
	nop	
	mov	rsi,  qword ptr [word ptr [reference_max_width]]
	add	rsi,  qword ptr [word ptr [gap_size]]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [label_346]]
	mov	rax,  qword ptr [word ptr [reference]]
	sub	rdi, rax
	lea	rdi, [rdi]
	sub	rsi, rdi
	mov	rdi, rsi
	lea	rsi, [rsi]
	call	print_spaces
.label_460:
	jmp	.label_450
.label_450:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [tail]]
	cmp	rax,  qword ptr [word ptr [label_282]]
	mov	rbp, rbp
	jae	.label_451
	nop	
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_282]]
	call	print_field
	test	byte ptr [byte ptr [tail_truncation]],  1
	lea	rdi, [rdi]
	je	.label_463
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
.label_463:
	mov	rax,  qword ptr [word ptr [half_line_width]]
	lea	rdi, [rdi]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_324]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	sub	rax, rcx
	nop	
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	je	.label_471
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_459
.label_471:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rax,  qword ptr [word ptr [label_282]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [tail]]
	sub	rax, rdx
	nop	
	sub	rcx, rax
	test	byte ptr [byte ptr [tail_truncation]],  1
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	je	.label_468
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_454
.label_468:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	jmp	.label_454
.label_454:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	rcx, rax
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	print_spaces
	jmp	.label_469
.label_451:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_324]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	nop	
	sub	rax, rcx
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	je	.label_452
	nop	
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_455
.label_452:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_455
.label_455:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	print_spaces
.label_469:
	nop	
	test	byte ptr [byte ptr [before_truncation]],  1
	je	.label_470
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x30], eax
.label_470:
	mov	rdi,  qword ptr [word ptr [before]]
	nop	
	mov	rsi,  qword ptr [word ptr [label_324]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [keyafter]]
	nop	
	mov	rsi,  qword ptr [word ptr [label_377]]
	call	print_field
	mov	rsp, rsp
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	je	.label_465
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x64], eax
.label_465:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [head]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [label_283]]
	jae	.label_447
	mov	rax,  qword ptr [word ptr [half_line_width]]
	nop	
	mov	rcx,  qword ptr [word ptr [label_377]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	mov	rsp, rsp
	sub	rcx, rdx
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rsp, rsp
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	nop	
	mov	qword ptr [rbp - 0x70], rax
	je	.label_453
	nop	
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_466
.label_453:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_466
.label_466:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [label_283]]
	mov	rdx,  qword ptr [word ptr [head]]
	sub	rax, rdx
	nop	
	sub	rcx, rax
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [head_truncation]],  1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	je	.label_456
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_458
.label_456:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	nop	
	jmp	.label_458
.label_458:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
	mov	rsp, rsp
	test	byte ptr [byte ptr [head_truncation]],  1
	je	.label_448
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_448:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [head]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [label_283]]
	call	print_field
	jmp	.label_445
.label_447:
	mov	rsp, rsp
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_464
	test	byte ptr [byte ptr [input_reference]],  1
	lea	rdi, [rdi]
	je	.label_467
.label_464:
	test	byte ptr [byte ptr [right_reference]],  1
	lea	rsi, [rsi]
	je	.label_467
	mov	rax,  qword ptr [word ptr [half_line_width]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_377]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	mov	rbp, rbp
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	je	.label_446
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_457
.label_446:
	nop	
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_457
.label_457:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	rbp, rbp
	mov	rdi, rcx
	call	print_spaces
.label_467:
	jmp	.label_445
.label_445:
	mov	rbp, rbp
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_461
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_reference]],  1
	lea	rdi, [rdi]
	je	.label_449
.label_461:
	test	byte ptr [byte ptr [right_reference]],  1
	nop	
	je	.label_449
	mov	rdi,  qword ptr [word ptr [gap_size]]
	call	print_spaces
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_346]]
	nop	
	call	print_field
.label_449:
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	add	rsp, 0x80
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407480

	.globl output_one_roff_line
	.type output_one_roff_line, @function
output_one_roff_line:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.88
	mov	rsi,  qword ptr [word ptr [macro_name]]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	rdi,  qword ptr [word ptr [tail]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [label_282]]
	mov	dword ptr [rbp - 0x28], eax
	call	print_field
	test	byte ptr [byte ptr [tail_truncation]],  1
	nop	
	je	.label_472
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x20], eax
.label_472:
	lea	rdi, [rdi]
	mov	edi, 0x22
	mov	rbp, rbp
	call	putchar_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.89
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	je	.label_475
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_475:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [before]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [label_324]]
	call	print_field
	nop	
	mov	edi, 0x22
	mov	rsp, rsp
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:.str.89
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [label_377]]
	mov	dword ptr [rbp - 0x24], eax
	call	print_field
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	lea	rsi, [rsi]
	je	.label_476
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_476:
	mov	rbp, rbp
	mov	edi, 0x22
	call	putchar_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.89
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	call	fputs_unlocked
	nop	
	test	byte ptr [byte ptr [head_truncation]],  1
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	je	.label_474
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
.label_474:
	mov	rdi,  qword ptr [word ptr [head]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [label_283]]
	call	print_field
	mov	rsp, rsp
	mov	edi, 0x22
	mov	rsp, rsp
	call	putchar_unlocked
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	dword ptr [rbp - 0x30], eax
	jne	.label_477
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_473
.label_477:
	movabs	rdi, OFFSET FLAT:.str.89
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [label_346]]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	print_field
	mov	rbp, rbp
	mov	edi, 0x22
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
.label_473:
	mov	rsp, rsp
	mov	edi, 0xa
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407700

	.globl output_one_tex_line
	.type output_one_tex_line, @function
output_one_tex_line:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	movabs	rdi, OFFSET FLAT:.str.90
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [macro_name]]
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	edi, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_282]]
	mov	dword ptr [rbp - 0x20], eax
	call	print_field
	nop	
	movabs	rdi, OFFSET FLAT:.str.91
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [before]]
	mov	rsi,  qword ptr [word ptr [label_324]]
	nop	
	mov	dword ptr [rbp - 0x70], eax
	call	print_field
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.91
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [keyafter]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi,  qword ptr [word ptr [label_377]]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi,  qword ptr [word ptr [keyafter]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [word_regex]],  0
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	je	.label_484
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:word_regex
	mov	rsp, rsp
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [label_377]]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x10]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x78], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rpl_re_match
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], -2
	lea	rsi, [rsi]
	jne	.label_490
	lea	rsi, [rsi]
	call	matcher_error
.label_490:
	cmp	qword ptr [rbp - 0x40], -1
	lea	rsi, [rsi]
	jne	.label_486
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_487
.label_486:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_487:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_479
.label_484:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_488
	nop	
	jmp	.label_478
.label_478:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdx,  qword ptr [word ptr [label_377]]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	jae	.label_481
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rbp, rbp
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], al
.label_481:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x31]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_480
	jmp	.label_485
.label_480:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_478
.label_485:
	lea	rdi, [rdi]
	jmp	.label_482
.label_488:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_482:
	jmp	.label_479
.label_479:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	print_field
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.91
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	call	print_field
	movabs	rdi, OFFSET FLAT:.str.91
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [head]]
	mov	rsi,  qword ptr [word ptr [label_283]]
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	print_field
	mov	rbp, rbp
	mov	edi, 0x7d
	lea	rsi, [rsi]
	call	putchar_unlocked
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	jne	.label_489
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_483
.label_489:
	lea	rdi, [rdi]
	mov	edi, 0x7b
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_346]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	call	print_field
	mov	edi, 0x7d
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 4], eax
.label_483:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x64], eax
	add	rsp, 0x80
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a70

	.globl print_field
	.type print_field, @function
print_field:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rsi
.label_515:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_512
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x3d], cl
	nop	
	movzx	edx, byte ptr [rbp - 0x3d]
	mov	eax, edx
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [+ (rax * 1) + edited_flag]],  0
	je	.label_520
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + diacrit_diac]]
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xa0], 0
	je	.label_526
	cmp	dword ptr [dword ptr [output_format]],  3
	jne	.label_526
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	ecx, eax
	mov	rbp, rbp
	movsx	eax,  byte ptr [byte ptr [rcx + diacrit_base]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa0]
	dec	eax
	nop	
	mov	ecx, eax
	sub	eax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0xc4], eax
	mov	rsp, rsp
	ja	.label_495
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_506]]
	jmp	rcx
.label_3790:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x41
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa8], eax
	mov	dword ptr [rbp - 0xd4], ecx
	lea	rsi, [rsi]
	je	.label_511
	mov	rbp, rbp
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x4f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], eax
	mov	rsp, rsp
	je	.label_517
	lea	rdi, [rdi]
	jmp	.label_519
.label_519:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x61
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_510
	mov	rsp, rsp
	jmp	.label_522
.label_522:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x6f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jne	.label_525
	jmp	.label_527
.label_527:
	nop	
	movabs	rdi, OFFSET FLAT:.str.72
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	jmp	.label_491
.label_517:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.73
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_491
.label_510:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.74
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_491
.label_511:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.75
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	nop	
	jmp	.label_491
.label_525:
	mov	rbp, rbp
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x78], eax
.label_491:
	mov	rbp, rbp
	jmp	.label_495
.label_3791:
	movabs	rdi, OFFSET FLAT:.str.76
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:.str.77
	cmp	dword ptr [rbp - 0x24], 0x69
	lea	rsi, [rsi]
	cmove	rax, rcx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	dword ptr [rbp - 0xc0], eax
	lea	rdi, [rdi]
	jmp	.label_495
.label_3792:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.77
	cmp	dword ptr [rbp - 0x24], 0x69
	lea	rsi, [rsi]
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x24]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_495
.label_3793:
	movabs	rdi, OFFSET FLAT:.str.78
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:.str.77
	cmp	dword ptr [rbp - 0x24], 0x69
	cmove	rax, rcx
	nop	
	mov	edx, dword ptr [rbp - 0x24]
	mov	rsi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_495
.label_3794:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.79
	nop	
	movabs	rax, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:.str.77
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0x69
	cmove	rax, rcx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x24]
	mov	rsi, rax
	nop	
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0x70], eax
	jmp	.label_495
.label_3795:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.80
	movabs	rax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x24]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_495
.label_3796:
	movabs	rdi, OFFSET FLAT:.str.81
	mov	esi, dword ptr [rbp - 0x24]
	nop	
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_495
.label_3797:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0x41
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rsp, rsp
	je	.label_504
	nop	
	jmp	.label_513
.label_513:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x61
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], eax
	jne	.label_514
	nop	
	jmp	.label_516
.label_516:
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_518
.label_504:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.83
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_518
.label_514:
	lea	rdi, [rdi]
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd8], eax
.label_518:
	jmp	.label_495
.label_3798:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0x4f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], ecx
	mov	rsp, rsp
	je	.label_508
	jmp	.label_494
.label_494:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xe0]
	mov	rbp, rbp
	sub	eax, 0x6f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	jne	.label_497
	jmp	.label_502
.label_502:
	movabs	rdi, OFFSET FLAT:.str.84
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_509
.label_508:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.85
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x60], eax
	lea	rsi, [rsi]
	jmp	.label_509
.label_497:
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
.label_509:
	lea	rdi, [rdi]
	jmp	.label_495
.label_495:
	jmp	.label_498
.label_526:
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	ecx, eax
	sub	ecx, 0x22
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], ecx
	je	.label_524
	jmp	.label_523
.label_523:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, -0x23
	nop	
	sub	eax, 4
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], eax
	lea	rdi, [rdi]
	jb	.label_496
	nop	
	jmp	.label_528
.label_528:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	eax, 0x5c
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	je	.label_529
	lea	rdi, [rdi]
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x5f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	je	.label_496
	nop	
	jmp	.label_500
.label_500:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x7b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	je	.label_501
	nop	
	jmp	.label_507
.label_507:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x7d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	je	.label_501
	mov	rbp, rbp
	jmp	.label_503
.label_524:
	mov	edi, 0x22
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rbp, rbp
	mov	edi, 0x22
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	jmp	.label_493
.label_496:
	mov	edi, 0x5c
	call	putchar_unlocked
	movzx	edi, byte ptr [rbp - 0x3d]
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsp, rsp
	jmp	.label_493
.label_501:
	nop	
	movabs	rdi, OFFSET FLAT:.str.86
	movzx	esi, byte ptr [rbp - 0x3d]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_493
.label_529:
	movabs	rdi, OFFSET FLAT:.str.87
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	jmp	.label_493
.label_503:
	mov	edi, 0x20
	nop	
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], eax
.label_493:
	mov	rbp, rbp
	jmp	.label_498
.label_498:
	jmp	.label_499
.label_520:
	mov	rax, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
.label_499:
	nop	
	jmp	.label_505
.label_505:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_515
.label_512:
	add	rsp, 0xe0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408160

	.globl print_spaces
	.type print_spaces, @function
print_spaces:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
.label_531:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jle	.label_530
	mov	rbp, rbp
	mov	edi, 0x20
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_531
.label_530:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081d0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4081f0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_536:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_532
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_533
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_537
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_539
.label_537:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_542
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_534
.label_542:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_538
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x48]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_540
.label_538:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_540:
	lea	rsi, [rsi]
	jmp	.label_534
.label_534:
	mov	rbp, rbp
	jmp	.label_543
.label_543:
	mov	rsp, rsp
	jmp	.label_533
.label_533:
	nop	
	jmp	.label_535
.label_535:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_536
.label_532:
	test	byte ptr [rbp - 0x21], 1
	je	.label_541
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_539
.label_541:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_539:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_544
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_545
.label_544:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_545:
	mov	rax, qword ptr [rbp - 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408480

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 8], eax
.label_548:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_550
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_549
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_547
.label_549:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_551
.label_547:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_551:
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_548
.label_550:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408630

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jl	.label_552
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_553
.label_552:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], -1
.label_553:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086f0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_556:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_558
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_555
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_554
.label_555:
	lea	rdi, [rdi]
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_556
.label_558:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_554:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087c0
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
	.section	.text
	.align	16
	#Procedure 0x4087f0
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
	.section	.text
	.align	16
	#Procedure 0x408820

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
	je	.label_559
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_560
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_559
.label_560:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_563
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
	jmp	.label_561
.label_563:
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
.label_561:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_559:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_562
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_562:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408950

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2d], 0
	mov	byte ptr [rbp - 0x39], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x45], 0
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	nop	
	mov	ecx, eax
	test	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	je	.label_566
	mov	rsp, rsp
	jmp	.label_572
.label_572:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	je	.label_573
	mov	rsp, rsp
	jmp	.label_575
.label_575:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 2
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	je	.label_565
	lea	rdi, [rdi]
	jmp	.label_568
.label_568:
	mov	eax, 2
	mov	rbp, rbp
	mov	edi, eax
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_583
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x45], 1
.label_583:
	mov	rbp, rbp
	jmp	.label_565
.label_565:
	nop	
	mov	eax, 1
	nop	
	mov	edi, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	call	dup2
	cmp	eax, 1
	je	.label_574
	mov	byte ptr [rbp - 0x39], 1
.label_574:
	nop	
	jmp	.label_573
.label_573:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	nop	
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_578
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2d], 1
.label_578:
	lea	rdi, [rdi]
	jmp	.label_566
.label_566:
	nop	
	jmp	.label_580
.label_580:
	test	byte ptr [rbp - 0x2d], 1
	lea	rdi, [rdi]
	je	.label_582
	nop	
	xor	edi, edi
	nop	
	call	protect_fd
	test	al, 1
	jne	.label_582
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_564
.label_582:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	je	.label_570
	mov	edi, 1
	call	protect_fd
	test	al, 1
	nop	
	jne	.label_570
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_567
.label_570:
	nop	
	test	byte ptr [rbp - 0x45], 1
	je	.label_577
	lea	rsi, [rsi]
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_577
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_581
.label_577:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x28], rax
.label_581:
	jmp	.label_567
.label_567:
	jmp	.label_564
.label_564:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x40], ecx
	nop	
	test	byte ptr [rbp - 0x45], 1
	je	.label_571
	mov	rbp, rbp
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x18], eax
.label_571:
	nop	
	test	byte ptr [rbp - 0x39], 1
	je	.label_576
	mov	edi, 1
	nop	
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_576:
	nop	
	test	byte ptr [rbp - 0x2d], 1
	lea	rdi, [rdi]
	je	.label_569
	lea	rdi, [rdi]
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_569:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_579
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
.label_579:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408bb0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_4
	xor	esi, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	open
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	je	.label_584
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x10]
	jg	.label_586
	mov	edi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 9
.label_586:
	mov	byte ptr [rbp - 5], 0
	jmp	.label_585
.label_584:
	nop	
	mov	byte ptr [rbp - 5], 1
.label_585:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c50

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
	jne	.label_589
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_589:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_587
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_591
.label_587:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_591:
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
	jl	.label_590
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
	jne	.label_590
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
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
	jne	.label_588
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_588:
	jmp	.label_590
.label_590:
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
	.section	.text
	.align	16
	#Procedure 0x408dd0
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	je	.label_593
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_594
	lea	rdi, [rdi]
	jmp	.label_595
.label_594:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_592
.label_595:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	lea	rdi, [rdi]
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rdi, [rdi]
	add	rdi, 1
	add	rdi, 1
	lea	rsi, [rsi]
	call	xmalloc
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_6
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	al, 0
	call	sprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_592
.label_593:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_592:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ed0

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	eax, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	esi, eax
	mov	rsp, rsp
	call	trim2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	mov	byte ptr [rbp - 0xc9], 0
.label_619:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_601
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	mbsstr
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_614
	jmp	.label_601
.label_614:
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_621
	nop	
	xor	esi, esi
	mov	eax, 8
	mov	rsp, rsp
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xc8]
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	byte ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	add	rcx, 4
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	byte ptr [rbp - 0xbc], 0
	nop	
	mov	byte ptr [rbp - 0xdb], 1
	mov	rcx, qword ptr [rbp - 0xb8]
	nop	
	cmp	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_611
	jmp	.label_616
.label_616:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	nop	
	call	mbuiter_multi_next
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	byte ptr [rbp - 0xa8], 1
	nop	
	mov	byte ptr [rbp - 0x169], cl
	mov	rsp, rsp
	je	.label_622
	cmp	dword ptr [rbp - 0xa4], 0
	sete	al
	mov	byte ptr [rbp - 0x169], al
.label_622:
	mov	al, byte ptr [rbp - 0x169]
	xor	al, 0xff
	test	al, 1
	nop	
	jne	.label_604
	lea	rsi, [rsi]
	call	abort
.label_604:
	mov	eax, 0x30
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x110]
	nop	
	lea	rsi, [rbp - 0xc8]
	lea	rsi, [rsi]
	add	rsi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbc], 0
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jb	.label_616
	mov	rsp, rsp
	test	byte ptr [rbp - 0x100], 1
	je	.label_602
	nop	
	mov	edi, dword ptr [rbp - 0xfc]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_602
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xdb], 0
.label_602:
	jmp	.label_611
.label_611:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rbp - 0x58]
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], r8
	nop	
	mov	byte ptr [rbp - 0xc8], 0
	lea	rdi, [rdi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rsi
	mov	rbp, rbp
	mov	esi, eax
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	call	memset
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbc], 0
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x120]
	nop	
	add	rdx, 4
	lea	rdi, [rdi]
	mov	rdi, rdx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_605:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x58]
	mov	rsp, rsp
	call	mbuiter_multi_next
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_625
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], al
.label_625:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd9]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_608
	jmp	.label_612
.label_608:
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xa8], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], cl
	je	.label_617
	cmp	dword ptr [rbp - 0xa4], 0
	sete	al
	mov	byte ptr [rbp - 2], al
.label_617:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 2]
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_620
	nop	
	call	abort
.label_620:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	byte ptr [rbp - 0xbc], 0
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jmp	.label_605
.label_612:
	lea	rdi, [rbp - 0xc8]
	mov	byte ptr [rbp - 0x122], 1
	call	mbuiter_multi_next
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xa8], 1
	mov	byte ptr [rbp - 0x159], cl
	lea	rdi, [rdi]
	je	.label_609
	cmp	dword ptr [rbp - 0xa4], 0
	sete	al
	mov	byte ptr [rbp - 0x159], al
.label_609:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x159]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_603
	jmp	.label_599
.label_603:
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x158]
	lea	rsi, [rbp - 0xc8]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	nop	
	test	byte ptr [rbp - 0x148], 1
	je	.label_598
	mov	edi, dword ptr [rbp - 0x144]
	lea	rdi, [rdi]
	call	iswalnum
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_598
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x122], 0
.label_598:
	lea	rdi, [rdi]
	jmp	.label_599
.label_599:
	test	byte ptr [rbp - 0xdb], 1
	mov	rbp, rbp
	je	.label_607
	test	byte ptr [rbp - 0x122], 1
	je	.label_607
	mov	byte ptr [rbp - 0xc9], 1
	nop	
	jmp	.label_601
.label_607:
	lea	rax, [rbp - 0xc8]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, 8
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	byte ptr [rbp - 0xc8], 0
	mov	rbp, rbp
	mov	rdi, rax
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	call	memset
	mov	byte ptr [rbp - 0xbc], 0
	mov	rdi, qword ptr [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0xa8], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], r8b
	je	.label_600
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa4], 0
	lea	rdi, [rdi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_600:
	mov	al, byte ptr [rbp - 1]
	xor	al, 0xff
	nop	
	test	al, 1
	jne	.label_624
	mov	rbp, rbp
	jmp	.label_601
.label_624:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	jmp	.label_618
.label_621:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x121], 1
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_597
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax - 1]
	nop	
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x168], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rdi, [rdi]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_610
	mov	byte ptr [rbp - 0x121], 0
.label_610:
	mov	rbp, rbp
	jmp	.label_597
.label_597:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x118], rax
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0xda], 1
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_623
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_613
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xda], 0
.label_613:
	jmp	.label_623
.label_623:
	test	byte ptr [rbp - 0x121], 1
	lea	rdi, [rdi]
	je	.label_596
	test	byte ptr [rbp - 0xda], 1
	nop	
	je	.label_596
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], 1
	jmp	.label_601
.label_596:
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_606
	lea	rdi, [rdi]
	jmp	.label_601
.label_606:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_618:
	mov	rsp, rsp
	jmp	.label_615
.label_615:
	mov	rsp, rsp
	jmp	.label_619
.label_601:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x170
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409590

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_626
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	call	xstr_iconv
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	call	strlen
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	add	rax, 0xa
	add	rax, 1
	mov	rdi, rax
	nop	
	call	xmalloc
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi,  qword ptr [word ptr [.str.2_2]]
	mov	rbp, rbp
	mov	qword ptr [rax + rdx], rsi
	mov	rsp, rsp
	mov	cx,  word ptr [word ptr [label_631]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_632]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	xstr_iconv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	free
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_639
	mov	esi, 0x3f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_634
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_638
.label_634:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_638:
	lea	rdi, [rdi]
	jmp	.label_639
.label_639:
	lea	rsi, [rsi]
	jmp	.label_640
.label_626:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rax
.label_640:
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_644
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_646
.label_644:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_630
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_633
.label_630:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_633:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
.label_646:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	je	.label_628
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	mbsstr_trimmed_wordbounded
	nop	
	test	al, 1
	jne	.label_635
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_647
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	mbsstr_trimmed_wordbounded
	nop	
	test	al, 1
	jne	.label_635
.label_647:
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	je	.label_636
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	mbsstr_trimmed_wordbounded
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_635
	jmp	.label_636
.label_635:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_642
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
.label_642:
	cmp	qword ptr [rbp - 8], 0
	je	.label_645
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
.label_645:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_637
.label_636:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 2
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rdi, rax
	lea	rdi, [rdi]
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_6
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	je	.label_627
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	free
.label_627:
	cmp	qword ptr [rbp - 8], 0
	je	.label_643
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	free
.label_643:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_637
.label_628:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_641
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x68]
	je	.label_641
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
.label_641:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_629
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x68]
	je	.label_629
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	free
.label_629:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
.label_637:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099d0
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
	je	.label_648
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_649
.label_648:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_649
.label_649:
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
	.section	.text
	.align	16
	#Procedure 0x409a80
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
	je	.label_650
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_651
.label_650:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ae0
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
	je	.label_652
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_653
.label_652:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b40

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
	je	.label_654
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_655
.label_654:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_655
.label_655:
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
	.section	.text
	.align	16
	#Procedure 0x409c40
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
	jne	.label_656
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_656:
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
	.section	.text
	.align	16
	#Procedure 0x409ca0

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
	jne	.label_657
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_657:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_659
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_658
.label_659:
	call	abort
.label_658:
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
	.section	.text
	.align	16
	#Procedure 0x409d40
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
	je	.label_660
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_661
.label_660:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_661
.label_661:
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
	.section	.text
	.align	16
	#Procedure 0x409e40

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
.label_793:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_816
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_860]]
	jmp	rcx
.label_3778:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_3777:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_838
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_844
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_844:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_838
.label_838:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_718
.label_3779:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_718
.label_3780:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_662
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
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
.label_662:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_678
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_700:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_682
	jmp	.label_684
.label_684:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_685
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_685:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_700
.label_682:
	mov	rbp, rbp
	jmp	.label_678
.label_678:
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
	jmp	.label_718
.label_3775:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_3774:
	mov	byte ptr [rbp - 0x3e], 1
.label_3776:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_724
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_724:
	jmp	.label_726
.label_726:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_727
	jmp	.label_733
.label_733:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_734
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_734:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_727
.label_727:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_718
.label_3773:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_718
.label_816:
	call	abort
.label_718:
	mov	qword ptr [rbp - 0xd8], 0
.label_760:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_755
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
	jmp	.label_758
.label_755:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_758:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_774
	mov	rbp, rbp
	jmp	.label_783
.label_774:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_786
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_786
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_786
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_798
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_798
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_812
.label_798:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_812:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_786
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
	jne	.label_786
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_834
	jmp	.label_697
.label_834:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_786:
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
	ja	.label_841
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_850]]
	nop	
	jmp	rcx
.label_3732:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_852
	mov	rsp, rsp
	jmp	.label_856
.label_856:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_859
	jmp	.label_697
.label_859:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_674
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_674
	nop	
	jmp	.label_667
.label_667:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_670
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_670:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_679
.label_679:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_681
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_681:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_687
.label_687:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_693
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_693:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_674:
	lea	rsi, [rsi]
	jmp	.label_704
.label_704:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_707
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_707:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_836
.label_836:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_720
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_720
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_720
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_720
	nop	
	jmp	.label_739
.label_739:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_741
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_741:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_749
.label_749:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_795
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_795:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_720
.label_720:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_761
.label_852:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_764
	mov	rbp, rbp
	jmp	.label_717
.label_764:
	jmp	.label_761
.label_761:
	jmp	.label_706
.label_3743:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_772
	mov	rbp, rbp
	jmp	.label_778
.label_778:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_780
	jmp	.label_789
.label_772:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_791
	jmp	.label_697
.label_791:
	jmp	.label_702
.label_780:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_705
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_705
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_705
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
	je	.label_729
	nop	
	jmp	.label_817
.label_817:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_729
	jmp	.label_824
.label_824:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_729
	jmp	.label_830
.label_830:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_729
	jmp	.label_837
.label_837:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_735
	jmp	.label_729
.label_729:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_845
	jmp	.label_697
.label_845:
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
	jae	.label_767
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_767:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_665
.label_665:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_668
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_668:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_675
.label_675:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_762
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_762:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_854
.label_854:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_831
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_831:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_695
.label_735:
	jmp	.label_695
.label_695:
	jmp	.label_705
.label_705:
	jmp	.label_702
.label_789:
	jmp	.label_702
.label_702:
	jmp	.label_706
.label_3733:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_709
.label_3734:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_709
.label_3738:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_709
.label_3736:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_716
.label_3739:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_716
.label_3735:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_716
.label_3737:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_709
.label_3744:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_843
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_730
	nop	
	jmp	.label_697
.label_730:
	lea	rsi, [rsi]
	jmp	.label_694
.label_843:
	test	byte ptr [rbp - 0x89], 1
	je	.label_723
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_723
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_723
	jmp	.label_694
.label_723:
	jmp	.label_716
.label_716:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_750
	test	byte ptr [rbp - 0x3e], 1
	je	.label_750
	jmp	.label_697
.label_750:
	mov	rsp, rsp
	jmp	.label_709
.label_709:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_818
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_756
.label_818:
	jmp	.label_706
.label_3745:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_862
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_765
	jmp	.label_771
.label_862:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_765
.label_771:
	nop	
	jmp	.label_706
.label_765:
	jmp	.label_775
.label_775:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_776
	lea	rsi, [rsi]
	jmp	.label_706
.label_776:
	nop	
	jmp	.label_785
.label_785:
	mov	byte ptr [rbp - 0x91], 1
.label_3740:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_788
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_788
	jmp	.label_697
.label_788:
	lea	rsi, [rsi]
	jmp	.label_706
.label_3742:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_796
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_676
	jmp	.label_697
.label_676:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_691
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_691
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_691:
	jmp	.label_813
.label_813:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_814
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_814:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_821
.label_821:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_827
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_827:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_835
.label_835:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_840
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_840:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_796:
	lea	rsi, [rsi]
	jmp	.label_706
.label_3741:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_706
.label_841:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_853
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
	jmp	.label_663
.label_853:
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
	jne	.label_680
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_680:
	jmp	.label_686
.label_686:
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
	jne	.label_703
	jmp	.label_712
.label_703:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_710
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_712
.label_710:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_715
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_737:
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
	jae	.label_801
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_801:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_690
	jmp	.label_746
.label_690:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_737
.label_746:
	jmp	.label_712
.label_715:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_744
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_744
	mov	qword ptr [rbp - 0xe8], 1
.label_794:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_752
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
	jb	.label_683
	jmp	.label_768
.label_768:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_683
	jmp	.label_773
.label_773:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_683
	jmp	.label_779
.label_779:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_804
	mov	rsp, rsp
	jmp	.label_683
.label_683:
	mov	rsp, rsp
	jmp	.label_697
.label_804:
	jmp	.label_792
.label_792:
	mov	rsp, rsp
	jmp	.label_815
.label_815:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_794
.label_752:
	mov	rbp, rbp
	jmp	.label_744
.label_744:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_800
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_800:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_803
.label_803:
	lea	rsi, [rsi]
	jmp	.label_807
.label_807:
	jmp	.label_809
.label_809:
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
	jne	.label_686
.label_712:
	jmp	.label_663
.label_663:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_819
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_829
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_829
.label_819:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_806:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_754
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_754
	jmp	.label_846
.label_846:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_847
	jmp	.label_697
.label_847:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_849
	test	byte ptr [rbp - 0x42], 1
	jne	.label_849
	lea	rdi, [rdi]
	jmp	.label_732
.label_732:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_855
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_855:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_747
.label_747:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_692
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_692:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_736
.label_736:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_757
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_757:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_849:
	jmp	.label_688
.label_688:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_689
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_689:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_677
.label_677:
	jmp	.label_699
.label_699:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_701
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
.label_701:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_714
.label_714:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_721
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
.label_721:
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
	jmp	.label_728
.label_754:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_738
	lea	rdi, [rdi]
	jmp	.label_742
.label_742:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_745
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_745:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_738:
	nop	
	jmp	.label_728
.label_728:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_753
	jmp	.label_759
.label_753:
	lea	rsi, [rsi]
	jmp	.label_763
.label_763:
	test	byte ptr [rbp - 0x42], 1
	je	.label_673
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_673
	lea	rsi, [rsi]
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_770
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_770:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_777
.label_777:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_787
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_787:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_673:
	nop	
	jmp	.label_797
.label_797:
	mov	rsp, rsp
	jmp	.label_857
.label_857:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_799
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_799:
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
	jmp	.label_806
.label_759:
	mov	rsp, rsp
	jmp	.label_694
.label_829:
	lea	rsi, [rsi]
	jmp	.label_706
.label_706:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_822
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_825
.label_822:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_828
.label_825:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_828
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
	jne	.label_832
.label_828:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_832
	mov	rsp, rsp
	jmp	.label_694
.label_832:
	nop	
	jmp	.label_756
.label_756:
	jmp	.label_851
.label_851:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_802
	jmp	.label_697
.label_802:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_820
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_820
	lea	rdi, [rdi]
	jmp	.label_861
.label_861:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_664
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_664:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_671
.label_671:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_740
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_740:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_781
.label_781:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_808
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_808:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_820:
	jmp	.label_696
.label_696:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_698
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_698:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_708
.label_708:
	nop	
	jmp	.label_694
.label_694:
	jmp	.label_711
.label_711:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_713
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_713
	lea	rdi, [rdi]
	jmp	.label_719
.label_719:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_722
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_722:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_725
.label_725:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_731
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_731:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_713:
	jmp	.label_743
.label_743:
	nop	
	jmp	.label_751
.label_751:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_782
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_782:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_805
	mov	byte ptr [rbp - 0xb7], 0
.label_805:
	mov	rbp, rbp
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_760
.label_783:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_766
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_766
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_766
	nop	
	jmp	.label_697
.label_766:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_748
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_748
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_748
	test	byte ptr [rbp - 0xb7], 1
	je	.label_790
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
	jmp	.label_666
.label_790:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_811
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_811
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_793
.label_811:
	jmp	.label_823
.label_823:
	mov	rbp, rbp
	jmp	.label_748
.label_748:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_826
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_826
	mov	rbp, rbp
	jmp	.label_672
.label_672:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_833
	lea	rdi, [rdi]
	jmp	.label_810
.label_810:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_839:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_848
.label_848:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_672
.label_833:
	jmp	.label_826
.label_826:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_858
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_858:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_666
.label_697:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_669
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_669
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_669:
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
.label_666:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8e0
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
	.section	.text
	.align	16
	#Procedure 0x40b950

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
	je	.label_863
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_864
.label_863:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_864
.label_864:
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
	je	.label_865
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_865:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb20
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
.label_870:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_869
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
	jmp	.label_870
.label_869:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_868
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_866]],  rax
.label_868:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_867
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_867:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc30

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
	.section	.text
	.align	16
	#Procedure 0x40bc80

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
	jge	.label_876
	call	abort
.label_876:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_871
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
	jge	.label_872
	call	xalloc_die
.label_872:
	test	byte ptr [rbp - 0x51], 1
	je	.label_873
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_877
.label_873:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_877:
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
	je	.label_875
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_866]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_875:
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
.label_871:
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
	ja	.label_874
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
	je	.label_878
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_878:
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
.label_874:
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
	.section	.text
	.align	16
	#Procedure 0x40bfb0

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
	.section	.text
	.align	16
	#Procedure 0x40bff0
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
	.section	.text
	.align	16
	#Procedure 0x40c020
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
	.section	.text
	.align	16
	#Procedure 0x40c060

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
	.section	.text
	.align	16
	#Procedure 0x40c0c0

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
	jne	.label_879
	call	abort
.label_879:
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
	.section	.text
	.align	16
	#Procedure 0x40c160

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
	.section	.text
	.align	16
	#Procedure 0x40c1d0
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
	.section	.text
	.align	16
	#Procedure 0x40c210
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
	.section	.text
	.align	16
	#Procedure 0x40c250

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
	.section	.text
	.align	16
	#Procedure 0x40c300

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
	.section	.text
	.align	16
	#Procedure 0x40c340

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
	.section	.text
	.align	16
	#Procedure 0x40c370
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
	.section	.text
	.align	16
	#Procedure 0x40c3b0

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
	.align	16
	#Procedure 0x40c490

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
	.section	.text
	.align	16
	#Procedure 0x40c4e0

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
	.section	.text
	.align	16
	#Procedure 0x40c580
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
	.section	.text
	.align	16
	#Procedure 0x40c5d0
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
	.section	.text
	.align	16
	#Procedure 0x40c630

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
	.section	.text
	.align	16
	#Procedure 0x40c670
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
	.section	.text
	.align	16
	#Procedure 0x40c6b0

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
	.section	.text
	.align	16
	#Procedure 0x40c6f0

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
	.section	.text
	.align	16
	#Procedure 0x40c730

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
	je	.label_883
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_880
.label_883:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_881
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
	jmp	.label_880
.label_881:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_882
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_880
.label_882:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_880:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c870

	.globl fread_file
	.type fread_file, @function
fread_file:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x110
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0xe8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], 0x2000
	mov	rdi, qword ptr [rbp - 0x38]
	call	fileno
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xd0]
	mov	rsp, rsp
	mov	edi, eax
	lea	rsi, [rsi]
	call	__fstat
	cmp	eax, 0
	jl	.label_886
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb8]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_886
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	ftello
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jl	.label_895
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rbp - 0xa0]
	jge	.label_895
	mov	rax, -2
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_893
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_887
.label_893:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
.label_895:
	lea	rsi, [rsi]
	jmp	.label_886
.label_886:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	cmp	rax, 0
	nop	
	jne	.label_889
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_887
.label_889:
	mov	qword ptr [rbp - 0x108], 0
.label_884:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0xf0]
	nop	
	sub	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rdi
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	call	fread
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	je	.label_892
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	call	ferror
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_896
	nop	
	jmp	.label_897
.label_896:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	nop	
	sub	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jae	.label_890
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 1
	mov	rsi, rax
	call	realloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rax
	nop	
	cmp	qword ptr [rbp - 0x100], 0
	je	.label_898
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
.label_898:
	jmp	.label_890
.label_890:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_887
.label_892:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xf0], -1
	lea	rsi, [rsi]
	jne	.label_894
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_897
.label_894:
	lea	rsi, [rsi]
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	shr	rdx, 1
	lea	rsi, [rsi]
	sub	rax, rdx
	cmp	rcx, rax
	lea	rdi, [rdi]
	jae	.label_888
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	shr	rcx, 1
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_891
.label_888:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], -1
.label_891:
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_885
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_897
.label_885:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_884
.label_897:
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
.label_887:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x110
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc50

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_7
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	internal_read_file
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc90

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	call	fopen
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_899
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_900
.label_899:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	fread_file
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_901
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_902
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	free
.label_902:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	jmp	.label_900
.label_901:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_900:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd90
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.1_3
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	call	internal_read_file
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cdd0

	.globl trim2
	.type trim2, @function
trim2:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	strdup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	jne	.label_940
	call	xalloc_die
.label_940:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_911
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	je	.label_913
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 8
	nop	
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, rax
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd0], 0
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 0xc
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x60]
	call	memset
	nop	
	mov	byte ptr [rbp - 0xc4], 0
.label_927:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	byte ptr [rbp - 0x52], cl
	lea	rsi, [rsi]
	jae	.label_907
	lea	rdi, [rbp - 0xd8]
	nop	
	call	mbiter_multi_next
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x52], cl
	mov	rbp, rbp
	jne	.label_938
	nop	
	jmp	.label_907
.label_938:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb0], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	je	.label_910
	mov	edi, dword ptr [rbp - 0xac]
	nop	
	call	iswspace
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], cl
.label_910:
	mov	al, byte ptr [rbp - 0x15]
	mov	byte ptr [rbp - 0x52], al
.label_907:
	mov	al, byte ptr [rbp - 0x52]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_922
	jmp	.label_918
.label_922:
	lea	rsi, [rsi]
	jmp	.label_925
.label_925:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc4], 0
	lea	rsi, [rsi]
	jmp	.label_927
.label_918:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	call	strlen
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	memmove
.label_913:
	cmp	dword ptr [rbp - 0x64], 1
	nop	
	je	.label_926
	xor	esi, esi
	lea	rsi, [rsi]
	mov	eax, 8
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	rdi, r8
	mov	dword ptr [rbp - 0x44], esi
	nop	
	mov	qword ptr [rbp - 0xf8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	byte ptr [rbp - 0xd0], 0
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	call	memset
	mov	byte ptr [rbp - 0xc4], 0
.label_916:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x53], cl
	jae	.label_931
	lea	rdi, [rbp - 0xd8]
	lea	rsi, [rsi]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0x53], al
.label_931:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x53]
	test	al, 1
	jne	.label_935
	jmp	.label_936
.label_935:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jne	.label_937
	test	byte ptr [rbp - 0xb0], 1
	mov	rbp, rbp
	je	.label_937
	nop	
	mov	edi, dword ptr [rbp - 0xac]
	nop	
	call	iswspace
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_937
	jmp	.label_906
.label_937:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	jne	.label_908
	test	byte ptr [rbp - 0xb0], 1
	je	.label_912
	mov	edi, dword ptr [rbp - 0xac]
	nop	
	call	iswspace
	cmp	eax, 0
	jne	.label_908
.label_912:
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_906
.label_908:
	cmp	dword ptr [rbp - 0x14], 1
	lea	rdi, [rdi]
	jne	.label_920
	test	byte ptr [rbp - 0xb0], 1
	je	.label_924
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xac]
	call	iswspace
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_920
.label_924:
	lea	rdi, [rdi]
	jmp	.label_906
.label_920:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_915
	test	byte ptr [rbp - 0xb0], 1
	je	.label_915
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	call	iswspace
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_915
	mov	dword ptr [rbp - 0x14], 2
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_933
.label_915:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_903
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb0], 1
	je	.label_903
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xac]
	call	iswspace
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_903
	lea	rsi, [rsi]
	jmp	.label_917
.label_903:
	mov	dword ptr [rbp - 0x14], 1
.label_917:
	mov	rbp, rbp
	jmp	.label_933
.label_933:
	lea	rdi, [rdi]
	jmp	.label_906
.label_906:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	byte ptr [rbp - 0xc4], 0
	jmp	.label_916
.label_936:
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_923
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_923:
	mov	rsp, rsp
	jmp	.label_926
.label_926:
	jmp	.label_921
.label_911:
	cmp	dword ptr [rbp - 0x64], 0
	je	.label_930
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_909:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], cl
	je	.label_932
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	movsxd	rax, ecx
	nop	
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rdi, [rdi]
	and	ecx, 0x2000
	cmp	ecx, 0
	nop	
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], sil
.label_932:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x51]
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_939
	jmp	.label_904
.label_939:
	lea	rdi, [rdi]
	jmp	.label_905
.label_905:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_909
.label_904:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rdi
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0xe0], rsi
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memmove
.label_930:
	cmp	dword ptr [rbp - 0x64], 1
	mov	rsp, rsp
	je	.label_919
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	add	rdi, rax
	mov	rbp, rbp
	add	rdi, -1
	mov	qword ptr [rbp - 8], rdi
.label_929:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x79], cl
	jb	.label_934
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	movzx	ecx, word ptr [rax + rdx*2]
	mov	rbp, rbp
	and	ecx, 0x2000
	lea	rsi, [rsi]
	cmp	ecx, 0
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], sil
.label_934:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x79]
	mov	rsp, rsp
	test	al, 1
	jne	.label_928
	jmp	.label_914
.label_928:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_929
.label_914:
	mov	rsp, rsp
	jmp	.label_919
.label_919:
	jmp	.label_921
.label_921:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x100
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d470

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
	je	.label_944
	movabs	rsi, OFFSET FLAT:.str_8
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
	jmp	.label_942
.label_944:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_942:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_3
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_943
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_945]]
	jmp	rcx
.label_3812:
	jmp	.label_941
.label_3813:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_941
.label_3814:
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
	jmp	.label_941
.label_3815:
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
	jmp	.label_941
.label_3816:
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
	jmp	.label_941
.label_3817:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_941
.label_3818:
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
	jmp	.label_941
.label_3819:
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
	jmp	.label_941
.label_3820:
	movabs	rdi, OFFSET FLAT:.str.11_0
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
	jmp	.label_941
.label_3821:
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
	jmp	.label_941
.label_943:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_941:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcb0
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
.label_946:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_947
	mov	rbp, rbp
	jmp	.label_948
.label_948:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_946
.label_947:
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
	.section	.text
	.align	16
	#Procedure 0x40dd60

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
.label_950:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_953
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_952
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
	jmp	.label_951
.label_952:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_951:
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
.label_953:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_949
	mov	rsp, rsp
	jmp	.label_954
.label_949:
	jmp	.label_955
.label_955:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_950
.label_954:
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
	.section	.text
	.align	16
	#Procedure 0x40dec0

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
	je	.label_956
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
.label_956:
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
	.section	.text
	.align	16
	#Procedure 0x40e080
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
	movabs	rdx, OFFSET FLAT:.str.18
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
	.section	.text
	.align	16
	#Procedure 0x40e130

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
	jae	.label_957
	mov	rbp, rbp
	call	xalloc_die
.label_957:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e190

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
	jne	.label_958
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_958
	lea	rdi, [rdi]
	call	xalloc_die
.label_958:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1f0
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
	jae	.label_959
	mov	rsp, rsp
	call	xalloc_die
.label_959:
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
	.section	.text
	.align	16
	#Procedure 0x40e270

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
	jne	.label_960
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_960
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_962
.label_960:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_961
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_961
	lea	rsi, [rsi]
	call	xalloc_die
.label_961:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_962:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e320

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
	jne	.label_963
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_965
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
.label_965:
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
	jae	.label_967
	call	xalloc_die
.label_967:
	lea	rsi, [rsi]
	jmp	.label_966
.label_963:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_964
	call	xalloc_die
.label_964:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_966:
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
	.section	.text
	.align	16
	#Procedure 0x40e450

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
	.section	.text
	.align	16
	#Procedure 0x40e480
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
	.section	.text
	.align	16
	#Procedure 0x40e4c0
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
	.section	.text
	.align	16
	#Procedure 0x40e510
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
	jb	.label_968
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_969
.label_968:
	lea	rsi, [rsi]
	call	xalloc_die
.label_969:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e580

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
	.section	.text
	.align	16
	#Procedure 0x40e5d0
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
	.section	.text
	.align	16
	#Procedure 0x40e630

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_5
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
	.section	.text
	.align	16
	#Procedure 0x40e690
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], r8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	mem_cd_iconv
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_970
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jne	.label_970
	mov	rbp, rbp
	call	xalloc_die
.label_970:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e720
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	str_cd_iconv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_971
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	jne	.label_971
	mov	rsp, rsp
	call	xalloc_die
.label_971:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7a0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	call	str_iconv
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_972
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	jne	.label_972
	call	xalloc_die
.label_972:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e810

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xc8], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	dword ptr [rbp - 0xa0], edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0xdc], 0
	nop	
	cmp	eax, dword ptr [rbp - 0xa0]
	jg	.label_977
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa0], 0x24
	mov	rsp, rsp
	jg	.label_977
	lea	rdi, [rdi]
	jmp	.label_1002
.label_977:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_9
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
.label_1002:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1015
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_1021
.label_1015:
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_1021
.label_1021:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xa0]
	call	strtoimax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	jne	.label_981
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_991
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_991
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	je	.label_991
	nop	
	mov	qword ptr [rbp - 0x80], 1
	jmp	.label_1014
.label_991:
	mov	dword ptr [rbp - 0x40], 4
	jmp	.label_980
.label_1014:
	jmp	.label_973
.label_981:
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1028
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x22
	je	.label_1031
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 4
	mov	rsp, rsp
	jmp	.label_980
.label_1031:
	nop	
	mov	dword ptr [rbp - 0xdc], 1
.label_1028:
	lea	rdi, [rdi]
	jmp	.label_973
.label_973:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_975
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
	lea	rdi, [rdi]
	jmp	.label_980
.label_975:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_989
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 0x400
	mov	dword ptr [rbp - 0x34], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	call	strchr
	nop	
	cmp	rax, 0
	jne	.label_1011
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xdc]
	or	edx, 2
	mov	dword ptr [rbp - 0x40], edx
	jmp	.label_980
.label_1011:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x88], ecx
	mov	dword ptr [rbp - 0x3c], edx
	mov	rsp, rsp
	je	.label_998
	jmp	.label_1033
.label_1033:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_998
	jmp	.label_1016
.label_1016:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_998
	jmp	.label_982
.label_982:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_998
	jmp	.label_990
.label_990:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	je	.label_998
	jmp	.label_999
.label_999:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x58], eax
	je	.label_998
	lea	rsi, [rsi]
	jmp	.label_1004
.label_1004:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	jb	.label_998
	mov	rsp, rsp
	jmp	.label_1013
.label_1013:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	je	.label_998
	mov	rsp, rsp
	jmp	.label_1024
.label_1024:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	je	.label_998
	mov	rsp, rsp
	jmp	.label_1030
.label_1030:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	eax, 0x6d
	nop	
	mov	dword ptr [rbp - 0x48], eax
	nop	
	je	.label_998
	lea	rdi, [rdi]
	jmp	.label_1034
.label_1034:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x74
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jne	.label_1009
	jmp	.label_998
.label_998:
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	strchr
	nop	
	cmp	rax, 0
	je	.label_976
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x50], edx
	lea	rsi, [rsi]
	je	.label_1006
	mov	rsp, rsp
	jmp	.label_1003
.label_1003:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1006
	lea	rsi, [rsi]
	jmp	.label_1012
.label_1012:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jne	.label_993
	jmp	.label_1026
.label_1026:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 2]
	mov	rsp, rsp
	cmp	ecx, 0x42
	jne	.label_1027
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	eax, 2
	mov	dword ptr [rbp - 0x34], eax
.label_1027:
	nop	
	jmp	.label_993
.label_1006:
	mov	dword ptr [rbp - 0x94], 0x3e8
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_993:
	mov	rsp, rsp
	jmp	.label_976
.label_976:
	jmp	.label_1009
.label_1009:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], edx
	nop	
	je	.label_1017
	jmp	.label_988
.label_988:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_992
	nop	
	jmp	.label_996
.label_996:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x44], eax
	je	.label_994
	jmp	.label_978
.label_978:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1000
	lea	rdi, [rdi]
	jmp	.label_984
.label_984:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1007
	jmp	.label_1018
.label_1018:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	je	.label_1020
	lea	rdi, [rdi]
	jmp	.label_995
.label_995:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_1008
	nop	
	jmp	.label_985
.label_985:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	je	.label_1032
	jmp	.label_1035
.label_1035:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	je	.label_974
	jmp	.label_983
.label_983:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	je	.label_1025
	jmp	.label_986
.label_986:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_987
	jmp	.label_1023
.label_1023:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x10], eax
	je	.label_994
	jmp	.label_997
.label_997:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	je	.label_1000
	jmp	.label_1005
.label_1005:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1007
	jmp	.label_1001
.label_1001:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	je	.label_1008
	lea	rsi, [rsi]
	jmp	.label_1019
.label_1019:
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_1022
	jmp	.label_1029
.label_1025:
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, 0x200
	nop	
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_979
.label_1017:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	jmp	.label_979
.label_987:
	mov	dword ptr [rbp - 0xbc], 0
	lea	rdi, [rdi]
	jmp	.label_979
.label_992:
	nop	
	lea	rdi, [rbp - 0x80]
	mov	edx, 6
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_979
.label_994:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_979
.label_1000:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_979
.label_1007:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_979
.label_1020:
	lea	rdi, [rbp - 0x80]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_979
.label_1008:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_979
.label_1022:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x80]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_979
.label_1032:
	lea	rdi, [rbp - 0x80]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_979
.label_974:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, 7
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_979
.label_1029:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xdc]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0x40], edx
	nop	
	jmp	.label_980
.label_979:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	mov	rbp, rbp
	je	.label_1010
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	or	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
.label_1010:
	jmp	.label_989
.label_989:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
.label_980:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f130

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	nop	
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 4]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_1036
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 1
	jmp	.label_1037
.label_1036:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jge	.label_1038
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 1
	lea	rsi, [rsi]
	jmp	.label_1037
.label_1038:
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 0
.label_1037:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f210

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], 0
.label_1039:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	cmp	eax, 0
	je	.label_1040
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 4]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_1039
.label_1040:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f280

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
	jge	.label_1044
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1042
.label_1044:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1041
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
	je	.label_1043
.label_1041:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1043
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1043:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1045
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
.label_1045:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1042:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f3a0

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
	je	.label_1046
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1047
.label_1046:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1048
.label_1047:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1048:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f410

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
	je	.label_1049
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
.label_1049:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f470

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	orig_freopen
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_1055
	jmp	.label_1050
.label_1055:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1052
	mov	rdi, qword ptr [rbp - 0x38]
	call	fileno
	mov	dword ptr [rbp - 4], eax
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	call	dup2
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1051
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_1051
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	nop	
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	mov	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 4]
	nop	
	je	.label_1053
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	dup2
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_1054
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 1
.label_1054:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 8], eax
.label_1053:
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jne	.label_1056
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	orig_freopen
	mov	qword ptr [rbp - 0x38], rax
.label_1056:
	mov	rbp, rbp
	jmp	.label_1051
.label_1051:
	mov	rbp, rbp
	jmp	.label_1052
.label_1052:
	lea	rdi, [rdi]
	jmp	.label_1050
.label_1050:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f5d0

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	freopen
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f610

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
	jne	.label_1057
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1057
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1057
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
	jne	.label_1059
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1058
.label_1059:
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
	jmp	.label_1058
.label_1057:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1058:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f720

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
	jne	.label_1060
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_1060:
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
	ja	.label_1061
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1061
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1061
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
	jmp	.label_1062
.label_1061:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1062:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f810

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
	jne	.label_1064
	nop	
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1063
.label_1064:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1063:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f900

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
	je	.label_1065
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
	jne	.label_1070
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1075
.label_1070:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0xe8
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1065:
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
	jne	.label_1071
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], cl
	jmp	.label_1071
.label_1071:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1076
	mov	dword ptr [rbp - 8], 0xc
.label_1076:
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1072
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
	jmp	.label_1075
.label_1072:
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
	je	.label_1069
	nop	
	jmp	.label_1068
.label_1068:
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
	jmp	.label_1075
.label_1069:
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
	je	.label_1067
	jmp	.label_1068
.label_1067:
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
	je	.label_1073
	lea	rdi, [rdi]
	jmp	.label_1068
.label_1073:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	nop	
	je	.label_1066
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_1066
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1066
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	optimize_utf8
.label_1066:
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
	je	.label_1074
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
.label_1074:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1075:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0xe0
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fdb0
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
	.align	16
	#Procedure 0x40fde0

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
	je	.label_1079
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_1079:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	je	.label_1077
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_1077:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x60]
	nop	
	je	.label_1078
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
.label_1078:
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
	.section	.text
	.align	16
	#Procedure 0x40ff10

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
	jne	.label_1084
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
.label_1084:
	mov	al, byte ptr [rbp - 0xaa]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xa9], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x220], 0
.label_1094:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x220]
	mov	rcx, qword ptr [rbp - 0x248]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_1096
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
.label_3786:
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
	jne	.label_1120
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
	je	.label_1092
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1e0]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], 1
.label_1092:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_1104
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1104
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
.label_1102:
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
	jae	.label_1090
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
	jne	.label_1090
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
.label_1090:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1115
	jmp	.label_1119
.label_1115:
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
	jmp	.label_1102
.label_1119:
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
	jne	.label_1109
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
	je	.label_1109
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
	je	.label_1118
	mov	edi, dword ptr [rbp - 0x1cc]
	mov	rbp, rbp
	call	tolower
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	byte ptr [rdx + rcx], 1
.label_1118:
	mov	rsp, rsp
	jmp	.label_1109
.label_1109:
	jmp	.label_1104
.label_1104:
	lea	rsi, [rsi]
	jmp	.label_1106
.label_1120:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 3
	lea	rdi, [rdi]
	jne	.label_1108
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x254], 0
.label_1083:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_1110
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
.label_1117:
	cmp	dword ptr [rbp - 0x8c], 0x40
	nop	
	jge	.label_1123
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
	je	.label_1091
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
	je	.label_1099
	nop	
	mov	edi, dword ptr [rbp - 0x204]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x260]
	mov	byte ptr [rdx + rcx], 1
.label_1099:
	jmp	.label_1091
.label_1091:
	jmp	.label_1116
.label_1116:
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
	jmp	.label_1117
.label_1123:
	jmp	.label_1081
.label_1081:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1083
.label_1110:
	jmp	.label_1087
.label_1108:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 6
	mov	rbp, rbp
	jne	.label_1089
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
	jle	.label_1093
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	mov	rsp, rsp
	jne	.label_1103
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1103
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1093
.label_1103:
	mov	byte ptr [rbp - 0x229], 0
.label_1113:
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
	jne	.label_1095
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
	je	.label_1098
	mov	edi, dword ptr [rbp - 0xc]
	call	tolower
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], 1
.label_1098:
	lea	rdi, [rdi]
	jmp	.label_1095
.label_1095:
	mov	rsp, rsp
	jmp	.label_1111
.label_1111:
	mov	al, byte ptr [rbp - 0x229]
	add	al, 1
	mov	byte ptr [rbp - 0x229], al
	lea	rdi, [rdi]
	movzx	ecx, al
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1113
	jmp	.label_1085
.label_1093:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], 0
.label_1080:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jge	.label_1121
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
	je	.label_1100
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
	je	.label_1114
	mov	edi, dword ptr [rbp - 0x274]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rdx + rcx], 1
.label_1114:
	mov	rsp, rsp
	jmp	.label_1100
.label_1100:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_1082
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1082
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
	je	.label_1107
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
	je	.label_1105
	mov	edi, dword ptr [rbp - 0x258]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x210]
	nop	
	mov	byte ptr [rdx + rcx], 1
.label_1105:
	lea	rsi, [rsi]
	jmp	.label_1107
.label_1107:
	nop	
	jmp	.label_1082
.label_1082:
	mov	rbp, rbp
	jmp	.label_1122
.label_1122:
	mov	rax, qword ptr [rbp - 0x1f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rbp, rbp
	jmp	.label_1080
.label_1121:
	jmp	.label_1085
.label_1085:
	jmp	.label_1086
.label_1089:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 5
	mov	rbp, rbp
	je	.label_1088
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 7
	je	.label_1088
	cmp	dword ptr [rbp - 4], 2
	mov	rsp, rsp
	jne	.label_1097
.label_1088:
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
	jne	.label_1101
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	lea	rdi, [rdi]
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_1101:
	mov	rbp, rbp
	jmp	.label_1096
.label_1097:
	jmp	.label_1086
.label_1086:
	jmp	.label_1087
.label_1087:
	mov	rsp, rsp
	jmp	.label_1106
.label_1106:
	jmp	.label_1112
.label_1112:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x220]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x220], rax
	jmp	.label_1094
.label_1096:
	add	rsp, 0x280
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109e0
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
	je	.label_1128
	mov	dword ptr [rbp - 0x20], 0xc
	nop	
	jmp	.label_1126
.label_1128:
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
	je	.label_1129
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
	jmp	.label_1130
.label_1129:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	mov	rsp, rsp
	mov	byte ptr [rax + 0x38], cl
.label_1130:
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
	jne	.label_1124
	mov	dword ptr [rbp - 0x1c], 8
.label_1124:
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
	je	.label_1127
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1125
.label_1127:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax + 0x20], 0
.label_1125:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
.label_1126:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c50
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
	jl	.label_1131
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	setge	cl
	mov	byte ptr [rbp - 0x15], cl
.label_1131:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1133
	lea	rdi, [rdi]
	call	abort
.label_1133:
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
	je	.label_1134
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
	je	.label_1132
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_1132:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	memcpy
.label_1134:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410da0
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
	je	.label_1135
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	free_dfa_content
.label_1135:
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
	.section	.text
	.align	16
	#Procedure 0x410e70

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
	je	.label_1150
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
.label_1145:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_1144
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
	jmp	.label_1145
.label_1144:
	nop	
	jmp	.label_1150
.label_1150:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_1137:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1140
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_1148
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_1148:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x38], 0
	je	.label_1146
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_1146:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	je	.label_1139
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
.label_1139:
	mov	rbp, rbp
	jmp	.label_1136
.label_1136:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1137
.label_1140:
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
	je	.label_1138
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_1149:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_1142
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
.label_1141:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_1143
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
	jmp	.label_1141
.label_1143:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1149
.label_1142:
	lea	rsi, [rsi]
	jmp	.label_1138
.label_1138:
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
	je	.label_1147
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rdi, rax
	call	free
.label_1147:
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
	.section	.text
	.align	16
	#Procedure 0x411190
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
	je	.label_1153
	nop	
	mov	dword ptr [rbp - 8], 2
	mov	rbp, rbp
	jmp	.label_1154
.label_1153:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 4
	cmp	eax, 0
	je	.label_1152
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
	jmp	.label_1156
.label_1152:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x30]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_1156:
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
	je	.label_1155
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
	jmp	.label_1151
.label_1155:
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
.label_1151:
	cmp	dword ptr [rbp - 4], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 8], ecx
.label_1154:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411340

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
	je	.label_1161
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
	je	.label_1161
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_1161
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_1161
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1186
.label_1161:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_1186
.label_1186:
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
	jbe	.label_1198
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
	jmp	.label_1220
.label_1198:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rcx
	mov	rbp, rbp
	jmp	.label_1220
.label_1220:
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
	je	.label_1236
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_1236
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_1236
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_1236
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1e9], cl
.label_1236:
	mov	al, byte ptr [rbp - 0x1e9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1159
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	nop	
	jmp	.label_1167
.label_1159:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1172
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_1172
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_1216
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 7
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1172
.label_1216:
	cmp	qword ptr [rbp - 0x200], 0
	mov	rbp, rbp
	je	.label_1203
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1203
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	lea	rsi, [rsi]
	jmp	.label_1167
.label_1203:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x200], 0
.label_1172:
	mov	al, 1
	cmp	qword ptr [rbp - 0x240], 0
	mov	byte ptr [rbp - 0x1f1], al
	lea	rsi, [rsi]
	jne	.label_1226
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f1], cl
.label_1226:
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
	je	.label_1189
	jmp	.label_1179
.label_1189:
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
	je	.label_1180
	lea	rsi, [rsi]
	jmp	.label_1179
.label_1180:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 1
	nop	
	ja	.label_1193
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
	je	.label_1200
.label_1193:
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
	je	.label_1214
	mov	dword ptr [rbp - 0x294], 0xc
	lea	rdi, [rdi]
	jmp	.label_1179
.label_1214:
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
	je	.label_1235
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_1179
.label_1235:
	jmp	.label_1243
.label_1200:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], 0
.label_1243:
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
	jge	.label_1245
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x230], rax
	jmp	.label_1261
.label_1245:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x230], rax
.label_1261:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x290], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	jge	.label_1163
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	mov	qword ptr [rbp - 0x250], rax
	jmp	.label_1174
.label_1163:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x250], rax
.label_1174:
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
	je	.label_1183
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c1], al
	jne	.label_1196
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x219], al
	jne	.label_1206
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1d8], 0
	setne	al
	mov	byte ptr [rbp - 0x219], al
.label_1206:
	mov	al, byte ptr [rbp - 0x219]
	lea	rsi, [rsi]
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c1], al
.label_1196:
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
	jmp	.label_1227
.label_1183:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	jmp	.label_1227
.label_1227:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1f8], eax
.label_1240:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x294], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jl	.label_1252
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x238]
	jge	.label_1256
.label_1252:
	mov	rsp, rsp
	jmp	.label_1179
.label_1256:
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
	ja	.label_1259
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1164]]
	jmp	rcx
.label_3849:
	jmp	.label_1168
.label_3848:
	mov	rbp, rbp
	jmp	.label_1170
.label_1170:
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
	je	.label_1173
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
.label_1173:
	mov	al, byte ptr [rbp - 0x271]
	test	al, 1
	jne	.label_1205
	jmp	.label_1212
.label_1205:
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_1170
.label_1212:
	mov	rbp, rbp
	jmp	.label_1225
.label_3847:
	mov	rbp, rbp
	jmp	.label_1228
.label_1228:
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
	je	.label_1176
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
.label_1176:
	mov	al, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1247
	mov	rbp, rbp
	jmp	.label_1250
.label_1247:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_1228
.label_1250:
	mov	rbp, rbp
	jmp	.label_1225
.label_1225:
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
	je	.label_1202
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_1260
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x298], eax
	jmp	.label_1158
.label_1260:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x298], edx
.label_1158:
	mov	eax, dword ptr [rbp - 0x298]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1d8], 0
	je	.label_1171
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rcx, qword ptr [rbp - 0x1d8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x19c], edx
	lea	rsi, [rsi]
	jmp	.label_1178
.label_1171:
	mov	eax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x19c], eax
.label_1178:
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1a8]
	cmp	byte ptr [rdx + rcx], 0
	mov	rbp, rbp
	jne	.label_1190
	mov	rbp, rbp
	jmp	.label_1179
.label_1190:
	jmp	.label_1202
.label_1202:
	lea	rsi, [rsi]
	jmp	.label_1168
.label_3846:
	jmp	.label_1207
.label_1207:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	jl	.label_1204
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	jl	.label_1217
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x244], eax
	jmp	.label_1224
.label_1217:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x244], edx
.label_1224:
	mov	eax, dword ptr [rbp - 0x244]
	mov	dword ptr [rbp - 0x1f0], eax
	cmp	qword ptr [rbp - 0x1d8], 0
	lea	rdi, [rdi]
	je	.label_1233
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x248], edx
	jmp	.label_1223
.label_1233:
	mov	eax, dword ptr [rbp - 0x1f0]
	nop	
	mov	dword ptr [rbp - 0x248], eax
.label_1223:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x248]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_1221
	lea	rdi, [rdi]
	jmp	.label_1204
.label_1221:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x238], rax
	jmp	.label_1207
.label_1204:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jge	.label_1253
	jmp	.label_1179
.label_1253:
	nop	
	jmp	.label_1168
.label_1259:
	lea	rsi, [rsi]
	jmp	.label_1241
.label_1241:
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
	je	.label_1244
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
	je	.label_1175
	jmp	.label_1179
.label_1175:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	sub	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x2a8], rax
.label_1244:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_1191
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_1199
.label_1191:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rcx, qword ptr [rbp - 0x120]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], edx
.label_1199:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x254]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_1213
	mov	rsp, rsp
	jmp	.label_1229
.label_1213:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x290]
	mov	rsp, rsp
	jl	.label_1230
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x168]
	jle	.label_1237
.label_1230:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x294], 1
	nop	
	jmp	.label_1179
.label_1237:
	jmp	.label_1241
.label_1229:
	nop	
	jmp	.label_1168
.label_1168:
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
	je	.label_1249
	lea	rdi, [rdi]
	jmp	.label_1179
.label_1249:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	jne	.label_1255
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0xf8]
	nop	
	je	.label_1255
	mov	rax, qword ptr [rbp - 0x118]
	cmp	dword ptr [rax], -1
	jne	.label_1255
	jmp	.label_1262
.label_1255:
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
	jg	.label_1157
	lea	rax, [rbp - 0x238]
	mov	qword ptr [rbp - 0x268], rax
	lea	rdi, [rdi]
	jmp	.label_1169
.label_1157:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x268], rcx
	jmp	.label_1169
.label_1169:
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
	je	.label_1209
	cmp	qword ptr [rbp - 0x1e8], -2
	sete	al
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1201
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_1179
.label_1201:
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
	jne	.label_1219
	cmp	qword ptr [rbp - 0x240], 1
	ja	.label_1231
.label_1219:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1234
.label_1231:
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
.label_1234:
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
	jne	.label_1246
	nop	
	cmp	qword ptr [rbp - 0x240], 1
	jbe	.label_1246
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_1254
.label_1246:
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1258
.label_1254:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x128]
	mov	rsp, rsp
	call	prune_impossible_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	nop	
	jne	.label_1160
	jmp	.label_1165
.label_1160:
	nop	
	cmp	dword ptr [rbp - 0x294], 1
	mov	rbp, rbp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1166
	mov	rbp, rbp
	jmp	.label_1179
.label_1166:
	mov	qword ptr [rbp - 0x1e8], -1
	jmp	.label_1177
.label_1258:
	jmp	.label_1165
.label_1177:
	lea	rdi, [rdi]
	jmp	.label_1185
.label_1185:
	nop	
	jmp	.label_1209
.label_1209:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x128]
	mov	rbp, rbp
	call	match_ctx_clean
.label_1262:
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	lea	rsi, [rsi]
	jmp	.label_1240
.label_1165:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 0
	jbe	.label_1162
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 1
.label_1218:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_1210
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
	jmp	.label_1218
.label_1210:
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
	jne	.label_1197
	cmp	qword ptr [rbp - 0x240], 1
	lea	rdi, [rdi]
	jbe	.label_1197
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
	je	.label_1251
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x285], cl
.label_1251:
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
	je	.label_1184
	lea	rsi, [rsi]
	jmp	.label_1179
.label_1184:
	jmp	.label_1197
.label_1197:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], 0
.label_1194:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_1182
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	cmp	qword ptr [rax], -1
	je	.label_1211
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
	je	.label_1222
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	jne	.label_1232
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x260], rax
	lea	rdi, [rdi]
	jmp	.label_1239
.label_1232:
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
.label_1239:
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
	jne	.label_1187
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	jmp	.label_1257
.label_1187:
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
.label_1257:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
.label_1222:
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
.label_1211:
	lea	rsi, [rsi]
	jmp	.label_1192
.label_1192:
	nop	
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_1194
.label_1182:
	mov	qword ptr [rbp - 0x180], 0
.label_1215:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	cmp	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	jge	.label_1208
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
	jmp	.label_1215
.label_1208:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0xe0], 0
	lea	rsi, [rsi]
	je	.label_1188
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 0
.label_1181:
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_1242
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x180]
	nop	
	je	.label_1248
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
.label_1248:
	mov	rsp, rsp
	jmp	.label_1238
.label_1238:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_1181
.label_1242:
	jmp	.label_1188
.label_1188:
	jmp	.label_1162
.label_1162:
	jmp	.label_1179
.label_1179:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1195
	lea	rdi, [rbp - 0x128]
	call	match_ctx_free
.label_1195:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x128]
	call	re_string_destruct
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x294]
	mov	dword ptr [rbp - 0x284], eax
.label_1167:
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
	.section	.text
	.align	16
	#Procedure 0x412b10

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
	.section	.text
	.align	16
	#Procedure 0x412b90

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
	jl	.label_1265
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	setg	cl
	mov	byte ptr [rbp - 0x19], cl
.label_1265:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1275
	mov	qword ptr [rbp - 0x50], -1
	mov	rsp, rsp
	jmp	.label_1280
.label_1275:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x71], al
	lea	rdi, [rdi]
	jl	.label_1282
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
	jg	.label_1287
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x98]
	setl	cl
	mov	byte ptr [rbp - 0x61], cl
.label_1287:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x61]
	mov	byte ptr [rbp - 0x71], al
.label_1282:
	mov	al, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1272
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1277
.label_1272:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x62], al
	lea	rdi, [rdi]
	jl	.label_1281
	nop	
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jge	.label_1288
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x30]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_1288:
	mov	al, byte ptr [rbp - 1]
	nop	
	mov	byte ptr [rbp - 0x62], al
.label_1281:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1270
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_1270:
	jmp	.label_1277
.label_1277:
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
	jge	.label_1264
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1264
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_1264
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x54], eax
.label_1264:
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
	je	.label_1271
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_1271:
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1284
	mov	qword ptr [rbp - 0x88], 1
	jmp	.label_1279
.label_1284:
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
	jne	.label_1291
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	setbe	dl
	mov	byte ptr [rbp - 0x41], dl
.label_1291:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1278
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
	je	.label_1283
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x88], 1
.label_1283:
	lea	rsi, [rsi]
	jmp	.label_1273
.label_1278:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_1273:
	jmp	.label_1279
.label_1279:
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
	je	.label_1286
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], -2
	jmp	.label_1266
.label_1286:
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
	je	.label_1290
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
	jmp	.label_1268
.label_1290:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1267
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
	je	.label_1285
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], -2
.label_1285:
	jmp	.label_1267
.label_1267:
	jmp	.label_1268
.label_1268:
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	sete	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1274
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x8d], 1
	mov	rbp, rbp
	je	.label_1276
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x98]
	nop	
	jne	.label_1263
	jmp	.label_1289
.label_1263:
	nop	
	movabs	rdi, OFFSET FLAT:.str.21_0
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
.label_1289:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	jmp	.label_1269
.label_1276:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa8], rax
.label_1269:
	jmp	.label_1274
.label_1274:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
.label_1266:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_1280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0xc0
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x413210

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
	.align	16
	#Procedure 0x413280
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
	.section	.text
	.align	16
	#Procedure 0x413340

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
	jl	.label_1292
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x49], al
	jl	.label_1292
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x49], al
	lea	rdi, [rdi]
	jl	.label_1292
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1306
	jmp	.label_1303
.label_1306:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	lea	rdi, [rdi]
	jge	.label_1296
	nop	
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_1298
	lea	rsi, [rsi]
	jmp	.label_1293
.label_1296:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jl	.label_1298
	nop	
	jmp	.label_1293
.label_1303:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_1307
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	jle	.label_1298
	jmp	.label_1293
.label_1307:
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_1308
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_1298
	mov	rbp, rbp
	jmp	.label_1293
.label_1308:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	jl	.label_1298
.label_1293:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_1298
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1299
.label_1298:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1297
.label_1299:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	mov	dword ptr [rbp - 0x94], eax
.label_1297:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], cl
.label_1292:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1304
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_1294
.label_1304:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	jle	.label_1301
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1300
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
	je	.label_1302
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_1294
.label_1302:
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
	jmp	.label_1295
.label_1300:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
.label_1295:
	lea	rdi, [rdi]
	jmp	.label_1305
.label_1301:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_1305:
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
.label_1294:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0xa0
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413740
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
	.section	.text
	.align	16
	#Procedure 0x413800
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
	je	.label_1309
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
	jmp	.label_1310
.label_1309:
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
.label_1310:
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4138c0

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
	jne	.label_1311
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	lea	rdi, [rdi]
	and	ecx, 1
	nop	
	cmp	ecx, 0
	jne	.label_1311
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	free_charset
	jmp	.label_1313
.label_1311:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 3
	jne	.label_1312
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1312
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_1312:
	jmp	.label_1313
.label_1313:
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413990

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
	je	.label_1314
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
.label_1314:
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
	.section	.text
	.align	16
	#Procedure 0x413a70

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
	.align	16
	#Procedure 0x413ad0

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
	jae	.label_1361
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1318
.label_1361:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1318
.label_1318:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1330
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	nop	
	jae	.label_1337
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_1319
.label_1337:
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	jmp	.label_1319
.label_1319:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_1347
.label_1330:
	nop	
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	nop	
	jmp	.label_1347
.label_1347:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1356
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_1370
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1316
.label_1370:
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	jmp	.label_1316
.label_1316:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	nop	
	jae	.label_1322
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_1329
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1336
.label_1329:
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rcx
	nop	
	jmp	.label_1336
.label_1336:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1343
.label_1322:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1343
.label_1343:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1349
.label_1356:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	jmp	.label_1349
.label_1349:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, 0x18
	mov	edx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	nop	
	jae	.label_1342
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_1363
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1366
.label_1363:
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_1366
.label_1366:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1350
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_1332
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	jmp	.label_1338
.label_1332:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_1338
.label_1338:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1344
.label_1350:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	jmp	.label_1344
.label_1344:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jae	.label_1351
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_1359
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	jmp	.label_1365
.label_1359:
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1365
.label_1365:
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	jae	.label_1369
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_1320
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_1326
.label_1320:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_1326
.label_1326:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_1323
.label_1369:
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc8], rcx
	nop	
	jmp	.label_1323
.label_1323:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1345
.label_1351:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1345
.label_1345:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1353
.label_1342:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_1353
.label_1353:
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
	jae	.label_1352
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_1339
.label_1352:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe0], rax
.label_1339:
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
	je	.label_1348
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0xc
	nop	
	jmp	.label_1327
.label_1348:
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
.label_1334:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jbe	.label_1321
	jmp	.label_1328
.label_1321:
	jmp	.label_1331
.label_1331:
	mov	rax, qword ptr [rbp - 0xb8]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	jmp	.label_1334
.label_1328:
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
	je	.label_1354
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	lea	rsi, [rsi]
	jne	.label_1315
.label_1354:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	mov	rbp, rbp
	je	.label_1367
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	lea	rsi, [rsi]
	jne	.label_1315
.label_1367:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x46
	lea	rdi, [rdi]
	je	.label_1333
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	lea	rsi, [rsi]
	jne	.label_1315
.label_1333:
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
	mov	edx, OFFSET FLAT:.str_10
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1315
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfb
	mov	rsp, rsp
	or	cl, 4
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_1315:
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
	jle	.label_1360
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
	je	.label_1368
	movabs	rax, OFFSET FLAT:utf8_sb_map
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_1324
.label_1368:
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
	je	.label_1341
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_1327
.label_1341:
	mov	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], 0
.label_1358:
	cmp	dword ptr [rbp - 0x94], 4
	lea	rdi, [rdi]
	jge	.label_1340
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0
.label_1357:
	cmp	dword ptr [rbp - 0x3c], 0x40
	jge	.label_1362
	mov	edi, dword ptr [rbp - 0xf4]
	mov	rbp, rbp
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], -1
	lea	rsi, [rsi]
	je	.label_1346
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
.label_1346:
	nop	
	mov	eax, dword ptr [rbp - 0xf4]
	and	eax, 0xffffff80
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1335
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xf4]
	je	.label_1335
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	lea	rdi, [rdi]
	or	cl, 8
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_1335:
	nop	
	jmp	.label_1325
.label_1325:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xf4], eax
	mov	rbp, rbp
	jmp	.label_1357
.label_1362:
	lea	rdi, [rdi]
	jmp	.label_1355
.label_1355:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1358
.label_1340:
	jmp	.label_1324
.label_1324:
	jmp	.label_1360
.label_1360:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
	je	.label_1364
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_1364:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1317
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_1327
.label_1317:
	mov	dword ptr [rbp - 0xd4], 0
.label_1327:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414470

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
	jle	.label_1380
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
	je	.label_1387
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_1376
.label_1387:
	nop	
	jmp	.label_1380
.label_1380:
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1383
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1389
.label_1383:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_1389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	je	.label_1378
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1388
	mov	rsp, rsp
	jmp	.label_1375
.label_1375:
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
	je	.label_1385
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_1376
.label_1385:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jl	.label_1372
	jmp	.label_1374
.label_1372:
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
	jle	.label_1386
	nop	
	jmp	.label_1374
.label_1386:
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
	je	.label_1371
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_1376
.label_1371:
	jmp	.label_1375
.label_1374:
	lea	rsi, [rsi]
	jmp	.label_1379
.label_1388:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	build_upper_buffer
.label_1379:
	jmp	.label_1377
.label_1378:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rsp, rsp
	jle	.label_1381
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_1384
.label_1381:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1373
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_1382
.label_1373:
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
.label_1382:
	jmp	.label_1384
.label_1384:
	mov	rbp, rbp
	jmp	.label_1377
.label_1377:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], 0
.label_1376:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414780

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
.label_1391:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1390
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
	jmp	.label_1391
.label_1390:
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
	.section	.text
	.align	16
	#Procedure 0x414860

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
	je	.label_1392
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_1392:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148c0

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
	je	.label_1394
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_1394:
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
	je	.label_1396
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1397
.label_1396:
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
	je	.label_1395
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
	jmp	.label_1393
.label_1395:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_1393:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x51], al
	lea	rsi, [rsi]
	je	.label_1399
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	sete	al
	nop	
	mov	byte ptr [rbp - 0x51], al
.label_1399:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1398
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1397
.label_1398:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1397:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x414aa0

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
	je	.label_1409
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	je	.label_1409
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	je	.label_1409
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_1409:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1406
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_1400
.label_1406:
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
	je	.label_1410
	mov	qword ptr [rbp - 0x18], 0
.label_1408:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	jae	.label_1404
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
	jmp	.label_1408
.label_1404:
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
.label_1417:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jae	.label_1403
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	je	.label_1407
	lea	rdi, [rdi]
	jmp	.label_1403
.label_1407:
	jmp	.label_1415
.label_1415:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1417
.label_1403:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_1418
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0xe0], 0
.label_1418:
	jmp	.label_1410
.label_1410:
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
	je	.label_1416
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1400
.label_1416:
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
	je	.label_1412
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_1400
.label_1412:
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
	je	.label_1414
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1400
.label_1414:
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
	je	.label_1401
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1400
.label_1401:
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
	jne	.label_1411
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_1411
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
	jne	.label_1413
.label_1411:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1405
.label_1413:
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
	je	.label_1402
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_1400
.label_1402:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x10], eax
.label_1405:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1400:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414fc0

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
.label_1428:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_1441
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
	ja	.label_1420
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1429]]
	lea	rsi, [rsi]
	jmp	rcx
.label_3718:
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
	jl	.label_1433
	mov	byte ptr [rbp - 0x31], 1
.label_1433:
	jmp	.label_1423
.label_3723:
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
	je	.label_1427
	jmp	.label_1444
.label_1444:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_1427
	jmp	.label_1432
.label_1432:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x40
	nop	
	mov	dword ptr [rbp - 8], eax
	je	.label_1427
	nop	
	jmp	.label_1439
.label_1439:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	jne	.label_1426
	jmp	.label_1427
.label_1427:
	mov	rsp, rsp
	jmp	.label_1419
.label_1426:
	jmp	.label_1422
.label_1419:
	jmp	.label_1423
.label_3721:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jmp	.label_1423
.label_3719:
	jmp	.label_1423
.label_3722:
	nop	
	jmp	.label_1422
.label_3720:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x44], 2
.label_1421:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 4
	jge	.label_1430
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
	je	.label_1436
	jmp	.label_1422
.label_1436:
	mov	dword ptr [rbp - 0x24], 0
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1421
.label_1430:
	lea	rsi, [rsi]
	jmp	.label_1423
.label_1420:
	call	abort
.label_1423:
	jmp	.label_1424
.label_1424:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1428
.label_1441:
	test	byte ptr [rbp - 0x31], 1
	jne	.label_1435
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_1438
.label_1435:
	mov	qword ptr [rbp - 0x30], 0
.label_1437:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jae	.label_1440
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	lea	rsi, [rsi]
	cmp	edx, 1
	jne	.label_1431
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_1431
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
	jmp	.label_1425
.label_1431:
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
	jne	.label_1443
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
.label_1443:
	lea	rdi, [rdi]
	jmp	.label_1425
.label_1425:
	nop	
	jmp	.label_1434
.label_1434:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1437
.label_1440:
	mov	rsp, rsp
	jmp	.label_1438
.label_1438:
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
	jg	.label_1442
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], al
.label_1442:
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
.label_1422:
	nop	
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x415380

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
	je	.label_1462
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1445
.label_1462:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_1452
	mov	qword ptr [rbp - 0x58], 0
.label_1450:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1447
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
	je	.label_1459
	mov	rsp, rsp
	jmp	.label_1448
.label_1459:
	nop	
	mov	qword ptr [rbp - 0x38], 0
.label_1457:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1453
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
	jne	.label_1456
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
	jne	.label_1456
	lea	rsi, [rsi]
	jmp	.label_1453
.label_1456:
	mov	rsp, rsp
	jmp	.label_1454
.label_1454:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_1457
.label_1453:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1460
	mov	rsp, rsp
	jmp	.label_1448
.label_1460:
	cmp	dword ptr [rbp - 0x3c], 4
	lea	rdi, [rdi]
	jne	.label_1446
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
	jne	.label_1455
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
	je	.label_1461
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1445
.label_1461:
	nop	
	mov	qword ptr [rbp - 0x58], 0
.label_1455:
	mov	rbp, rbp
	jmp	.label_1446
.label_1446:
	jmp	.label_1448
.label_1448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1450
.label_1447:
	mov	rsp, rsp
	jmp	.label_1452
.label_1452:
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
	je	.label_1458
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1445
.label_1458:
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
	je	.label_1449
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
	je	.label_1451
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x29], al
	je	.label_1451
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
.label_1451:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1463
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	jmp	.label_1445
.label_1463:
	lea	rsi, [rsi]
	jmp	.label_1464
.label_1449:
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
.label_1464:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x5c], 0
.label_1445:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415810

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
	jne	.label_1465
	mov	al, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
.label_1465:
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
	.section	.text
	.align	16
	#Procedure 0x415980

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
	jle	.label_1466
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
	je	.label_1469
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_1467
.label_1469:
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
	je	.label_1473
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0xc
	mov	rsp, rsp
	jmp	.label_1467
.label_1473:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1471
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
	je	.label_1470
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_1467
.label_1470:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_1471:
	lea	rdi, [rdi]
	jmp	.label_1466
.label_1466:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_1468
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
	je	.label_1472
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xc
	nop	
	jmp	.label_1467
.label_1472:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
.label_1468:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_1467:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x415b90

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
	jle	.label_1515
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_1532
.label_1515:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
.label_1532:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_1478
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_1478
	mov	rax, qword ptr [rbp - 0x100]
	cmp	byte ptr [rax + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_1478
	lea	rdi, [rdi]
	jmp	.label_1476
.label_1476:
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	cmp	rax, qword ptr [rbp - 0x88]
	nop	
	jge	.label_1501
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
	jne	.label_1509
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1509
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
	jmp	.label_1476
.label_1509:
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
	jae	.label_1520
	cmp	qword ptr [rbp - 0x20], -2
	nop	
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], al
.label_1520:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1488
	mov	edi, dword ptr [rbp - 0xbc]
	call	towupper
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xbc]
	mov	rsp, rsp
	je	.label_1499
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
	je	.label_1513
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
	jmp	.label_1523
.label_1513:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1526
.label_1523:
	mov	rbp, rbp
	jmp	.label_1479
.label_1499:
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
.label_1479:
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
.label_1529:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	jge	.label_1525
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
	jmp	.label_1529
.label_1525:
	jmp	.label_1474
.label_1488:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	je	.label_1477
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1477
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_1485
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1485
.label_1477:
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
	je	.label_1497
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
.label_1497:
	jmp	.label_1483
.label_1485:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1501
.label_1483:
	jmp	.label_1474
.label_1474:
	lea	rdi, [rdi]
	jmp	.label_1476
.label_1501:
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
	jmp	.label_1496
.label_1478:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0xf0], rax
.label_1517:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x88]
	jge	.label_1506
	jmp	.label_1526
.label_1526:
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
	je	.label_1528
	mov	dword ptr [rbp - 0x10c], 0
.label_1518:
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
	jge	.label_1486
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	setl	cl
	nop	
	mov	byte ptr [rbp - 0xdd], cl
.label_1486:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdd]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1507
	mov	rbp, rbp
	jmp	.label_1514
.label_1507:
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
	jmp	.label_1518
.label_1514:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1475
.label_1528:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_1475:
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
	jae	.label_1503
	nop	
	cmp	qword ptr [rbp - 0x20], -2
	mov	rsp, rsp
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_1503:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1521
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	call	towupper
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	je	.label_1531
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
	je	.label_1490
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
	jmp	.label_1502
.label_1490:
	cmp	qword ptr [rbp - 0xb0], -1
	mov	rbp, rbp
	je	.label_1504
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_1510
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1506
.label_1510:
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jne	.label_1487
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
	jne	.label_1516
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1496
.label_1516:
	lea	rdi, [rdi]
	jmp	.label_1487
.label_1487:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_1491
	mov	qword ptr [rbp - 0xc8], 0
.label_1505:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_1484
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
	jmp	.label_1505
.label_1484:
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	byte ptr [rax + 0x8c], 1
.label_1491:
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
.label_1481:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1489
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jae	.label_1524
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_1493
.label_1524:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_1493:
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
	jmp	.label_1481
.label_1489:
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
	jle	.label_1480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_1480:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	jle	.label_1500
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1511
.label_1500:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x78], rax
.label_1511:
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
	jmp	.label_1517
.label_1504:
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
	jmp	.label_1502
.label_1502:
	jmp	.label_1482
.label_1531:
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
.label_1482:
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
	je	.label_1494
	mov	qword ptr [rbp - 0xf8], 0
.label_1533:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1512
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
	jmp	.label_1533
.label_1512:
	jmp	.label_1494
.label_1494:
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
.label_1498:
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	jge	.label_1492
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
	jmp	.label_1498
.label_1492:
	jmp	.label_1495
.label_1521:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_1522
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1522
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_1527
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1527
.label_1522:
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
	je	.label_1535
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xe8], edx
.label_1535:
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
	je	.label_1508
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1508:
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
	je	.label_1534
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_1534:
	mov	rsp, rsp
	jmp	.label_1530
.label_1527:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	nop	
	jmp	.label_1506
.label_1530:
	jmp	.label_1495
.label_1495:
	mov	rbp, rbp
	jmp	.label_1517
.label_1506:
	jmp	.label_1519
.label_1519:
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
.label_1496:
	mov	eax, dword ptr [rbp - 0xe4]
	add	rsp, 0x110
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x416bf0

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
	jle	.label_1536
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1540
.label_1536:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1540:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_1539:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_1537
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
	je	.label_1538
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_1538:
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
	jmp	.label_1539
.label_1537:
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
	.section	.text
	.align	16
	#Procedure 0x416d40

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
	jle	.label_1541
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1558
.label_1541:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_1558:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
.label_1554:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_1550
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
	je	.label_1545
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0
.label_1546:
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
	jge	.label_1544
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	setl	cl
	mov	byte ptr [rbp - 0x55], cl
.label_1544:
	mov	al, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	test	al, 1
	jne	.label_1556
	lea	rdi, [rdi]
	jmp	.label_1543
.label_1556:
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
	jmp	.label_1546
.label_1543:
	nop	
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	jmp	.label_1548
.label_1545:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_1548:
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
	je	.label_1547
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	je	.label_1547
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
	jne	.label_1551
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	setge	dl
	nop	
	mov	byte ptr [rbp - 9], dl
.label_1551:
	mov	al, byte ptr [rbp - 9]
	nop	
	mov	byte ptr [rbp - 0x39], al
.label_1547:
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1549
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
	je	.label_1555
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
.label_1555:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1552
.label_1549:
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	sete	al
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1557
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	lea	rdi, [rdi]
	jmp	.label_1550
.label_1557:
	jmp	.label_1552
.label_1552:
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
.label_1542:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jge	.label_1553
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
	jmp	.label_1542
.label_1553:
	jmp	.label_1554
.label_1550:
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
	.align	16
	#Procedure 0x417120

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
	jle	.label_1559
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1560
.label_1559:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1560:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_1562:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_1561
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
	jmp	.label_1562
.label_1561:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417230

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
	.section	.text
	.align	16
	#Procedure 0x417280

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
	je	.label_1574
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x69], al
.label_1574:
	nop	
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1571
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1563
.label_1571:
	jmp	.label_1566
.label_1566:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	nop	
	jne	.label_1569
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
	je	.label_1570
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	mov	rbp, rbp
	je	.label_1570
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1567
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	je	.label_1570
.label_1567:
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
	je	.label_1572
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1572:
	mov	al, byte ptr [rbp - 0x61]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1573
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_1564
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_1564:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1563
.label_1573:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	or	rax, qword ptr [rcx + 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_1565
.label_1570:
	mov	qword ptr [rbp - 0x58], 0
.label_1565:
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
	je	.label_1568
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	jmp	.label_1563
.label_1568:
	jmp	.label_1566
.label_1569:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
.label_1563:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417580

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
	.section	.text
	.align	16
	#Procedure 0x4175f0

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
	jg	.label_1680
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], 0
	jmp	.label_1589
.label_1680:
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
	jle	.label_1600
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	je	.label_1600
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1600
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
	jmp	.label_1589
.label_1600:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	mov	rbp, rbp
	cmp	eax, 0x5c
	jne	.label_1653
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1659
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x24
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1589
.label_1659:
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
	jle	.label_1675
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
	jne	.label_1597
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd8], 0x5f
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], al
.label_1597:
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
	jmp	.label_1608
.label_1675:
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
	jne	.label_1642
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf1]
	cmp	eax, 0x5f
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_1642:
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
.label_1608:
	movzx	eax, byte ptr [rbp - 0xf1]
	mov	rsp, rsp
	mov	ecx, eax
	sub	ecx, 0x27
	mov	dword ptr [rbp - 0x50], eax
	mov	dword ptr [rbp - 0xe4], ecx
	je	.label_1655
	jmp	.label_1663
.label_1663:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	je	.label_1664
	nop	
	jmp	.label_1667
.label_1667:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_1658
	nop	
	jmp	.label_1670
.label_1670:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_1673
	jmp	.label_1676
.label_1676:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	eax, -0x31
	mov	rsp, rsp
	sub	eax, 9
	mov	dword ptr [rbp - 0xcc], eax
	lea	rsi, [rsi]
	jb	.label_1630
	jmp	.label_1665
.label_1665:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x3c
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1679
	jmp	.label_1576
.label_1576:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x3e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1577
	lea	rdi, [rdi]
	jmp	.label_1585
.label_1585:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x10], eax
	je	.label_1588
	mov	rbp, rbp
	jmp	.label_1593
.label_1593:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1596
	jmp	.label_1602
.label_1602:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1604
	jmp	.label_1609
.label_1609:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	je	.label_1611
	jmp	.label_1617
.label_1617:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1618
	jmp	.label_1681
.label_1681:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1624
	lea	rdi, [rdi]
	jmp	.label_1628
.label_1628:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0xe0], eax
	mov	rbp, rbp
	je	.label_1626
	jmp	.label_1634
.label_1634:
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x77
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	je	.label_1610
	lea	rsi, [rsi]
	jmp	.label_1638
.label_1638:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x7b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1639
	jmp	.label_1666
.label_1666:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x60], eax
	nop	
	je	.label_1643
	jmp	.label_1648
.label_1648:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_1649
	jmp	.label_1654
.label_1643:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	nop	
	jne	.label_1629
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x8000
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_1629
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1629:
	jmp	.label_1583
.label_1630:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x4000
	nop	
	cmp	rax, 0
	jne	.label_1671
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
.label_1671:
	mov	rbp, rbp
	jmp	.label_1583
.label_1679:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1682
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
.label_1682:
	nop	
	jmp	.label_1583
.label_1577:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	nop	
	jne	.label_1598
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
.label_1598:
	lea	rsi, [rsi]
	jmp	.label_1583
.label_1624:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1621
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
.label_1621:
	lea	rsi, [rsi]
	jmp	.label_1583
.label_1596:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1637
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
.label_1637:
	jmp	.label_1583
.label_1610:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_1647
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x20
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1647:
	nop	
	jmp	.label_1583
.label_1611:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1660
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1660:
	jmp	.label_1583
.label_1626:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1669
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_1669:
	jmp	.label_1583
.label_1604:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1677
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_1677:
	jmp	.label_1583
.label_1618:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1592
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
.label_1592:
	jmp	.label_1583
.label_1655:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1601
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
.label_1601:
	jmp	.label_1583
.label_1664:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1622
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 8
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1622:
	jmp	.label_1583
.label_1658:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1645
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1645:
	jmp	.label_1583
.label_1673:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1619
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1619
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1619:
	jmp	.label_1583
.label_1588:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1657
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1657
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x13
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1657:
	lea	rsi, [rsi]
	jmp	.label_1583
.label_1639:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1605
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1605
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1605:
	jmp	.label_1583
.label_1649:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1587
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x1000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	jne	.label_1587
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x18
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1587:
	nop	
	jmp	.label_1583
.label_1654:
	jmp	.label_1583
.label_1583:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 2
	nop	
	jmp	.label_1589
.label_1653:
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
	jle	.label_1612
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
	jne	.label_1635
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x5f
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc5], al
.label_1635:
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
	jmp	.label_1640
.label_1612:
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
	jne	.label_1662
	mov	rax, qword ptr [rbp - 0xf0]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb1], dl
.label_1662:
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
.label_1640:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xa
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0xb0], ecx
	je	.label_1678
	mov	rbp, rbp
	jmp	.label_1575
.label_1575:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x24
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_1578
	mov	rsp, rsp
	jmp	.label_1584
.label_1584:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_1586
	nop	
	jmp	.label_1591
.label_1591:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x29
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	je	.label_1594
	jmp	.label_1582
.label_1582:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1603
	jmp	.label_1606
.label_1606:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	je	.label_1607
	jmp	.label_1613
.label_1613:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x2e
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	je	.label_1614
	lea	rdi, [rdi]
	jmp	.label_1674
.label_1674:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	eax, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rdi, [rdi]
	je	.label_1623
	jmp	.label_1627
.label_1627:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x5b
	nop	
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1620
	mov	rbp, rbp
	jmp	.label_1633
.label_1633:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1636
	jmp	.label_1646
.label_1646:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	nop	
	je	.label_1580
	lea	rdi, [rdi]
	jmp	.label_1625
.label_1625:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x7c
	nop	
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	je	.label_1644
	lea	rsi, [rsi]
	jmp	.label_1650
.label_1650:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x7d
	nop	
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1652
	jmp	.label_1581
.label_1678:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1656
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1656:
	mov	rsp, rsp
	jmp	.label_1579
.label_1644:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x400
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1668
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x8000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1668
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1668:
	mov	rsp, rsp
	jmp	.label_1579
.label_1603:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1579
.label_1607:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1590
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	jne	.label_1590
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1590:
	mov	rbp, rbp
	jmp	.label_1579
.label_1623:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1616
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1616
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1616:
	mov	rsp, rsp
	jmp	.label_1579
.label_1580:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1631
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1631
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1631:
	jmp	.label_1579
.label_1652:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1641
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000
	cmp	rax, 0
	nop	
	je	.label_1641
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x18
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1641:
	lea	rsi, [rsi]
	jmp	.label_1579
.label_1586:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1661
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1661:
	jmp	.label_1579
.label_1594:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1672
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1672:
	jmp	.label_1579
.label_1620:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1579
.label_1614:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	jmp	.label_1579
.label_1636:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x800008
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jne	.label_1595
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 0x48], 0
	nop	
	je	.label_1595
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
	je	.label_1599
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0xa
	je	.label_1615
.label_1599:
	jmp	.label_1579
.label_1615:
	mov	rsp, rsp
	jmp	.label_1595
.label_1595:
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
	jmp	.label_1579
.label_1578:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 8
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1632
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
	je	.label_1632
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
	je	.label_1651
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xff
	lea	rsi, [rsi]
	cmp	eax, 9
	je	.label_1651
	jmp	.label_1579
.label_1651:
	mov	rsp, rsp
	jmp	.label_1632
.label_1632:
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
	jmp	.label_1579
.label_1581:
	jmp	.label_1579
.label_1579:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 1
.label_1589:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rsp, 0x100
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4187f0

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
	je	.label_1688
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
	jmp	.label_1687
.label_1688:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1685
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1686
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
	je	.label_1685
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_1685
.label_1686:
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
	jmp	.label_1687
.label_1685:
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
	je	.label_1684
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1684:
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
	je	.label_1683
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_1683
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
	jmp	.label_1687
.label_1683:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 0xd], cl
.label_1687:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0xd]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4189f0

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
	jne	.label_1689
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_1690
.label_1689:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_1690:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418a70

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
	je	.label_1696
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_1696:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1692
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	jmp	.label_1701
.label_1692:
	mov	rbp, rbp
	jmp	.label_1703
.label_1703:
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
	je	.label_1704
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
	je	.label_1704
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x71], al
	je	.label_1702
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x71], dl
.label_1702:
	mov	al, byte ptr [rbp - 0x71]
	mov	byte ptr [rbp - 0x11], al
.label_1704:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_1700
	jmp	.label_1698
.label_1700:
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
	je	.label_1694
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], al
.label_1694:
	mov	al, byte ptr [rbp - 0x49]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1693
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1697
	movabs	rsi, OFFSET FLAT:free_tree
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	postorder
	nop	
	mov	dword ptr [rbp - 8], eax
.label_1697:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_1701
.label_1693:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1695
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1695
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
	jne	.label_1705
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
	jmp	.label_1701
.label_1705:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_1691
.label_1695:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1699
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
.label_1699:
	jmp	.label_1691
.label_1691:
	jmp	.label_1703
.label_1698:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
.label_1701:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418da0

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
.label_1713:
	jmp	.label_1706
.label_1706:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	jne	.label_1708
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x29], cl
.label_1708:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1716
	jmp	.label_1709
.label_1716:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1711
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1707
.label_1711:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1707:
	mov	rsp, rsp
	jmp	.label_1706
.label_1709:
	jmp	.label_1717
.label_1717:
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
	je	.label_1714
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	jmp	.label_1715
.label_1714:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1710
	mov	dword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jmp	.label_1715
.label_1710:
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
	je	.label_1712
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1712:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1717
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1713
.label_1715:
	mov	eax, dword ptr [rbp - 0x30]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418f60

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
	.section	.text
	.align	16
	#Procedure 0x418fa0

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
	ja	.label_1753
	mov	rax, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1724]]
	mov	rsp, rsp
	jmp	rcx
.label_3830:
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
	je	.label_1741
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1741:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1742
	lea	rdi, [rdi]
	jmp	.label_1754
.label_1754:
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
	jle	.label_1764
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x140]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	je	.label_1722
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
.label_1722:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0xa9], al
.label_1764:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1743
	jmp	.label_1746
.label_1743:
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
	je	.label_1766
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xc9], al
.label_1766:
	mov	al, byte ptr [rbp - 0xc9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1727
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1718
.label_1727:
	jmp	.label_1754
.label_1746:
	jmp	.label_1742
.label_1742:
	mov	rsp, rsp
	jmp	.label_1720
.label_3834:
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
	je	.label_1758
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_1758:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1770
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	jmp	.label_1718
.label_1770:
	mov	rbp, rbp
	jmp	.label_1720
.label_3836:
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
	je	.label_1756
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	nop	
	mov	byte ptr [rbp - 0x119], al
.label_1756:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x119]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1755
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1755:
	jmp	.label_1720
.label_3832:
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
	jne	.label_1733
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1733:
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
	je	.label_1759
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1759:
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
	jmp	.label_1720
.label_3837:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000000
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1735
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jmp	.label_1718
.label_1735:
	jmp	.label_1747
.label_1747:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1740
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1718
.label_1740:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1761
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
	jmp	.label_1718
.label_1761:
	jmp	.label_1730
.label_1730:
	mov	rbp, rbp
	jmp	.label_1731
.label_1731:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	lea	rdi, [rdi]
	jne	.label_1734
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20000
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1734
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1734:
	jmp	.label_1751
.label_1751:
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
	je	.label_1767
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1767:
	nop	
	jmp	.label_1720
.label_3835:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0x30f
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1723
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1723
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	call	init_word_char
.label_1723:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x100
	je	.label_1748
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x200
	jne	.label_1765
.label_1748:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x100
	jne	.label_1757
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
	jmp	.label_1721
.label_1757:
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
.label_1721:
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
	je	.label_1763
	mov	al, 1
	cmp	qword ptr [rbp - 0x110], 0
	mov	byte ptr [rbp - 0xba], al
	lea	rdi, [rdi]
	je	.label_1763
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba], al
.label_1763:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1725
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1725:
	mov	rsp, rsp
	jmp	.label_1739
.label_1765:
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
	je	.label_1750
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_1718
.label_1750:
	mov	rbp, rbp
	jmp	.label_1739
.label_1739:
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
	jmp	.label_1718
.label_3833:
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
	je	.label_1737
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_1718
.label_1737:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1762
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_1762:
	mov	rsp, rsp
	jmp	.label_1720
.label_3838:
	movabs	rax, OFFSET FLAT:.str.1_7
	movabs	rcx, OFFSET FLAT:.str.2_4
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
	mov	r8d, OFFSET FLAT:.str.1_7
	mov	r10d, r8d
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.2_4
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
	je	.label_1729
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x131], al
.label_1729:
	mov	al, byte ptr [rbp - 0x131]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_1738
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1718
.label_1738:
	lea	rdi, [rdi]
	jmp	.label_1720
.label_3839:
	movabs	rax, OFFSET FLAT:.str.3_2
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
	mov	r8d, OFFSET FLAT:.str.3_2
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
	je	.label_1745
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x132], al
.label_1745:
	mov	al, byte ptr [rbp - 0x132]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1752
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1752:
	mov	rbp, rbp
	jmp	.label_1720
.label_3831:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_3840:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1753:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1720:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	call	fetch_token
.label_1744:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	mov	rsp, rsp
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x81], al
	je	.label_1732
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	cmp	edx, 0x12
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x81], al
	je	.label_1732
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	edx, 0xff
	cmp	edx, 0x13
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], al
	je	.label_1732
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1732:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1736
	nop	
	jmp	.label_1768
.label_1736:
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
	je	.label_1726
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x101], al
.label_1726:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1760
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_1749
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x2c], eax
.label_1749:
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1718
.label_1760:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000000
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1719
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_1769
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	mov	rbp, rbp
	jne	.label_1719
.label_1769:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1728
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
.label_1728:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1718
.label_1719:
	mov	rsp, rsp
	jmp	.label_1744
.label_1768:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
.label_1718:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rsp, 0x138
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419fb0

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
	je	.label_1771
	mov	eax, 0x3c8
	mov	edi, eax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1773
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_1774
.label_1773:
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
.label_1771:
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
	je	.label_1775
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
.label_1775:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1772
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1772:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1774:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a1a0

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
	jne	.label_1776
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jmp	.label_1777
.label_1776:
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
	jne	.label_1779
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
.label_1779:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1784
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1781
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
.label_1781:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rax], 8
.label_1784:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1782
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_1783
.label_1782:
	jmp	.label_1777
.label_1777:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 8
	ja	.label_1780
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
.label_1780:
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
	je	.label_1778
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x28], 0
	nop	
	jmp	.label_1783
.label_1778:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1783:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a420

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
	je	.label_1831
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x10d], al
.label_1831:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x10d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1793
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
	jmp	.label_1803
.label_1793:
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
	je	.label_1821
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 2
	jmp	.label_1791
.label_1821:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x19
	jne	.label_1830
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
	je	.label_1787
	nop	
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_set
.label_1787:
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
	je	.label_1819
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 2
	jmp	.label_1791
.label_1819:
	jmp	.label_1830
.label_1830:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1809
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1809:
	jmp	.label_1795
.label_1795:
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
	je	.label_1824
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_1791
.label_1824:
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
	je	.label_1788
	nop	
	cmp	dword ptr [rbp - 0xa0], 2
	mov	rsp, rsp
	je	.label_1788
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
	je	.label_1800
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1791
.label_1800:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1816
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
	je	.label_1829
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1791
.label_1829:
	nop	
	mov	eax, dword ptr [rbp - 0x138]
	mov	rsp, rsp
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 0x15
	jne	.label_1798
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
	jmp	.label_1804
.label_1798:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x181], 1
.label_1804:
	mov	rsp, rsp
	jmp	.label_1816
.label_1816:
	jmp	.label_1788
.label_1788:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_1808
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
	je	.label_1789
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_1791
.label_1789:
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
	jle	.label_1810
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_1822
.label_1810:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	jmp	.label_1822
.label_1822:
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
	je	.label_1785
	jmp	.label_1791
.label_1785:
	jmp	.label_1794
.label_1808:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0xd8], rdx
	ja	.label_1805
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1814]]
	mov	rbp, rbp
	jmp	rcx
.label_3857:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	esi, eax
	call	bitset_set
	lea	rdi, [rdi]
	jmp	.label_1790
.label_3858:
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
	je	.label_1826
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
	je	.label_1799
	mov	rbp, rbp
	jmp	.label_1797
.label_1799:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
.label_1826:
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
	jmp	.label_1790
.label_3859:
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
	je	.label_1832
	jmp	.label_1791
.label_1832:
	jmp	.label_1790
.label_3860:
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
	je	.label_1802
	jmp	.label_1791
.label_1802:
	jmp	.label_1790
.label_3861:
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
	je	.label_1796
	jmp	.label_1791
.label_1796:
	jmp	.label_1790
.label_1805:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
.label_1790:
	jmp	.label_1794
.label_1794:
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
	je	.label_1828
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1791
.label_1828:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x15
	jne	.label_1815
	jmp	.label_1820
.label_1815:
	jmp	.label_1795
.label_1820:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xc9], 1
	je	.label_1823
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_not
.label_1823:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1792
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1792:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	jne	.label_1786
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1786
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	jne	.label_1786
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1786
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1811
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1786
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x20]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1811
.label_1786:
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
	je	.label_1833
	jmp	.label_1797
.label_1833:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], 0
.label_1818:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x12c], 4
	jge	.label_1807
	movsxd	rax, dword ptr [rbp - 0x12c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1806
	jmp	.label_1807
.label_1806:
	nop	
	jmp	.label_1813
.label_1813:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_1818
.label_1807:
	nop	
	cmp	dword ptr [rbp - 0x12c], 4
	mov	rsp, rsp
	jge	.label_1817
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
	je	.label_1812
	nop	
	jmp	.label_1797
.label_1812:
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
	je	.label_1827
	mov	rsp, rsp
	jmp	.label_1797
.label_1827:
	mov	rsp, rsp
	jmp	.label_1825
.label_1817:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x90], rax
.label_1825:
	mov	rbp, rbp
	jmp	.label_1801
.label_1811:
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
	je	.label_1834
	lea	rdi, [rdi]
	jmp	.label_1797
.label_1834:
	jmp	.label_1801
.label_1801:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_1803
.label_1797:
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 0xc
.label_1791:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	qword ptr [rbp - 0x80], 0
.label_1803:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rsp, 0x188
	nop	
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b2a0

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
	je	.label_1835
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
	je	.label_1845
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
	jmp	.label_1840
.label_1845:
	mov	rsp, rsp
	jmp	.label_1835
.label_1835:
	lea	rsi, [rsi]
	jmp	.label_1838
.label_1838:
	mov	rbp, rbp
	jmp	.label_1842
.label_1842:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_1840
	mov	dword ptr [rbp - 0x34], 0
.label_1843:
	cmp	dword ptr [rbp - 0x34], 0x40
	jge	.label_1841
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
	jne	.label_1839
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0x5f
	jne	.label_1837
.label_1839:
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
.label_1837:
	lea	rdi, [rdi]
	jmp	.label_1836
.label_1836:
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
	jmp	.label_1843
.label_1841:
	mov	rbp, rbp
	jmp	.label_1844
.label_1844:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_1842
.label_1840:
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b540

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
	je	.label_1852
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1846
.label_1852:
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
	je	.label_1859
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
	jmp	.label_1846
.label_1859:
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
	je	.label_1856
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
	jmp	.label_1846
.label_1856:
	mov	rsp, rsp
	jmp	.label_1851
.label_1851:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_1854
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
	jmp	.label_1851
.label_1854:
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	je	.label_1855
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	bitset_not
.label_1855:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1849
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1849:
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
	je	.label_1857
	jmp	.label_1848
.label_1857:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1847
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
	je	.label_1853
	mov	rbp, rbp
	jmp	.label_1848
.label_1853:
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
	je	.label_1850
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_1846
.label_1850:
	mov	rbp, rbp
	jmp	.label_1858
.label_1847:
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	call	free_charset
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rdi
	jmp	.label_1846
.label_1858:
	jmp	.label_1848
.label_1848:
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
.label_1846:
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x88
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b9d0

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
	jne	.label_1896
	mov	qword ptr [rbp - 0x58], 0
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	call	fetch_number
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1885
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1888
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2c
	lea	rsi, [rsi]
	jne	.label_1888
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1893
.label_1888:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1879
.label_1893:
	mov	rsp, rsp
	jmp	.label_1885
.label_1885:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	rsp, rsp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1903
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1864
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1871
.label_1864:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_1874
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	jne	.label_1874
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1887
.label_1874:
	lea	rsi, [rsi]
	mov	rax, -2
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1887
.label_1887:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
.label_1871:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
.label_1903:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	byte ptr [rbp - 0x69], al
	mov	rsp, rsp
	je	.label_1894
	cmp	qword ptr [rbp - 0x58], -2
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 0x69], al
.label_1894:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1901
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
	je	.label_1870
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	nop	
	jne	.label_1869
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 9
	jmp	.label_1878
.label_1869:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xa
.label_1878:
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1879
.label_1870:
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
	jmp	.label_1879
.label_1901:
	cmp	qword ptr [rbp - 0x58], -1
	mov	rbp, rbp
	je	.label_1897
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	jg	.label_1899
.label_1897:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x39], dl
.label_1899:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1863
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1879
.label_1863:
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1873
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1877
.label_1873:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 8], rax
.label_1877:
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
	je	.label_1883
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1879
.label_1883:
	jmp	.label_1891
.label_1896:
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
.label_1891:
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
	je	.label_1868
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1879
.label_1868:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1882
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
.label_1882:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1886
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
	jmp	.label_1879
.label_1886:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1900
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0xa0], 2
.label_1890:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jg	.label_1861
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
	je	.label_1880
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x79], al
.label_1880:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1884
	nop	
	jmp	.label_1865
.label_1884:
	lea	rsi, [rsi]
	jmp	.label_1889
.label_1889:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1890
.label_1861:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_1892
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_1879
.label_1892:
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
	je	.label_1902
	jmp	.label_1865
.label_1902:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	jmp	.label_1866
.label_1900:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
.label_1866:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1875
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
.label_1875:
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
	je	.label_1895
	lea	rsi, [rsi]
	jmp	.label_1865
.label_1895:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 2
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_1872:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jg	.label_1862
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
	je	.label_1881
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
.label_1881:
	mov	al, byte ptr [rbp - 0xa9]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_1876
	jmp	.label_1865
.label_1876:
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
	je	.label_1898
	nop	
	jmp	.label_1865
.label_1898:
	jmp	.label_1860
.label_1860:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_1872
.label_1862:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_1867
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
.label_1867:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_1879
.label_1865:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], 0
.label_1879:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c2a0

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
	jg	.label_1918
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
	jmp	.label_1907
.label_1918:
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
	jle	.label_1917
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	je	.label_1917
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1917
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 0x50], 1
	jmp	.label_1907
.label_1917:
	movzx	eax, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	cmp	eax, 0x5c
	jne	.label_1911
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 1
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1911
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	jge	.label_1911
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
	jmp	.label_1907
.label_1911:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x5b
	nop	
	jne	.label_1916
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
	jge	.label_1921
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x51], dl
	lea	rdi, [rdi]
	jmp	.label_1912
.label_1921:
	mov	byte ptr [rbp - 0x51], 0
.label_1912:
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
	je	.label_1923
	jmp	.label_1905
.label_1905:
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x18], eax
	nop	
	je	.label_1920
	lea	rdi, [rdi]
	jmp	.label_1925
.label_1925:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	je	.label_1904
	lea	rdi, [rdi]
	jmp	.label_1915
.label_1923:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1906
.label_1904:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1906
.label_1920:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 4
	nop	
	cmp	rax, 0
	je	.label_1908
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1906
.label_1908:
	lea	rsi, [rsi]
	jmp	.label_1915
.label_1915:
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
.label_1906:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_1907
.label_1916:
	movzx	eax, byte ptr [rbp - 9]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x24], eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rbp, rbp
	je	.label_1914
	mov	rsp, rsp
	jmp	.label_1922
.label_1922:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	sub	eax, 0x5d
	nop	
	mov	dword ptr [rbp - 0x14], eax
	je	.label_1924
	jmp	.label_1910
.label_1910:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	sub	eax, 0x5e
	mov	dword ptr [rbp - 8], eax
	je	.label_1913
	lea	rdi, [rdi]
	jmp	.label_1919
.label_1914:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1909
.label_1924:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1909
.label_1913:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1909
.label_1919:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1909:
	mov	dword ptr [rbp - 0x50], 1
.label_1907:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c6b0

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
	.section	.text
	.align	16
	#Procedure 0x41c740

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
	jle	.label_1930
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
	jmp	.label_1929
.label_1930:
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
	je	.label_1927
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1927
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x1c
	jne	.label_1928
.label_1927:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	call	parse_bracket_symbol
	nop	
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1929
.label_1928:
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
	je	.label_1926
	nop	
	test	byte ptr [rbp - 0x4d], 1
	jne	.label_1926
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
	je	.label_1931
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 0xb
	lea	rdi, [rdi]
	jmp	.label_1929
.label_1931:
	nop	
	jmp	.label_1926
.label_1926:
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
.label_1929:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c920

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
	je	.label_1934
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1934
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rcx], 2
	nop	
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1934
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], cl
.label_1934:
	mov	al, byte ptr [rbp - 0x1d]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1946
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0xb
	mov	rbp, rbp
	jmp	.label_1932
.label_1946:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_1963
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
	ja	.label_1937
.label_1963:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x59], cl
	mov	rbp, rbp
	jne	.label_1941
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
.label_1941:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x59]
	mov	byte ptr [rbp - 0x6a], al
.label_1937:
	mov	al, byte ptr [rbp - 0x6a]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1961
	mov	dword ptr [rbp - 0x2c], 3
	jmp	.label_1932
.label_1961:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 0
	jne	.label_1936
	mov	rax, qword ptr [rbp - 0x98]
	movzx	ecx, byte ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_1948
.label_1936:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1947
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	jmp	.label_1952
.label_1947:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_1952
.label_1952:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_1948:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_1938
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	mov	rbp, rbp
	jmp	.label_1940
.label_1938:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	nop	
	jne	.label_1958
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rsp, rsp
	jmp	.label_1951
.label_1958:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_1951
.label_1951:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8c], eax
.label_1940:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_1964
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1939
.label_1964:
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
	jmp	.label_1953
.label_1939:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x1c], ecx
.label_1953:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	je	.label_1959
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax], 3
	jne	.label_1933
.label_1959:
	mov	eax, dword ptr [rbp - 0x30]
	mov	cl, al
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_1944
.label_1933:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x34], ecx
.label_1944:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], -1
	nop	
	je	.label_1949
	cmp	dword ptr [rbp - 0x70], -1
	lea	rsi, [rsi]
	jne	.label_1955
.label_1949:
	nop	
	mov	dword ptr [rbp - 0x2c], 3
	mov	rbp, rbp
	jmp	.label_1932
.label_1955:
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
	je	.label_1962
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	seta	cl
	mov	byte ptr [rbp - 9], cl
.label_1962:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1945
	mov	dword ptr [rbp - 0x2c], 0xb
	jmp	.label_1932
.label_1945:
	jmp	.label_1954
.label_1954:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1956
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
	je	.label_1960
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
	je	.label_1965
	cmp	qword ptr [rbp - 0x68], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_1965:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1957
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
	jmp	.label_1932
.label_1957:
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
.label_1960:
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
.label_1956:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], 0
.label_1950:
	cmp	dword ptr [rbp - 0x88], 0x100
	mov	rsp, rsp
	jge	.label_1942
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	ja	.label_1943
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	cmp	eax, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	ja	.label_1943
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	rsi, dword ptr [rbp - 0x88]
	call	bitset_set
.label_1943:
	nop	
	jmp	.label_1935
.label_1935:
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, 1
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1950
.label_1942:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_1932:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cf00

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
	je	.label_1966
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 3
	jmp	.label_1967
.label_1966:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	call	bitset_set
	mov	dword ptr [rbp - 0xc], 0
.label_1967:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cf90

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
	je	.label_1968
	mov	dword ptr [rbp - 0x24], 3
	nop	
	jmp	.label_1969
.label_1968:
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
.label_1969:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d030

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
	je	.label_1986
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_1
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2024
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_1
	mov	esi, eax
	nop	
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	jne	.label_1986
.label_2024:
	movabs	rax, OFFSET FLAT:.str.9_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1986:
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
	je	.label_2045
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
	je	.label_2094
	mov	dword ptr [rbp - 0xb4], 0xc
	mov	rsp, rsp
	jmp	.label_2033
.label_2094:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx], rax
.label_2045:
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
	mov	esi, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_1972
	jmp	.label_1976
.label_1976:
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
	je	.label_1980
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_2040:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1997
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
	je	.label_2012
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_2012:
	jmp	.label_2039
.label_2039:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2040
.label_1997:
	jmp	.label_2048
.label_1980:
	mov	dword ptr [rbp - 0xd4], 0
.label_2093:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2053
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
	je	.label_2071
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_2071:
	nop	
	jmp	.label_2089
.label_2089:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2093
.label_2053:
	lea	rsi, [rsi]
	jmp	.label_2048
.label_2048:
	jmp	.label_2101
.label_2101:
	mov	rbp, rbp
	jmp	.label_2067
.label_1972:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.10_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2108
	lea	rsi, [rsi]
	jmp	.label_2112
.label_2112:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2119
	mov	dword ptr [rbp - 0xd4], 0
.label_1991:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_2125
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
	je	.label_2135
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
.label_2135:
	lea	rdi, [rdi]
	jmp	.label_1989
.label_1989:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1991
.label_2125:
	lea	rsi, [rsi]
	jmp	.label_2000
.label_2119:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_2046:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_2009
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
	je	.label_2021
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_2021:
	jmp	.label_2043
.label_2043:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2046
.label_2009:
	jmp	.label_2000
.label_2000:
	lea	rsi, [rsi]
	jmp	.label_2059
.label_2059:
	nop	
	jmp	.label_2063
.label_2108:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_2075
	lea	rsi, [rsi]
	jmp	.label_2077
.label_2077:
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
	je	.label_2078
	mov	dword ptr [rbp - 0xd4], 0
.label_2131:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_2099
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
	je	.label_2111
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_2111:
	jmp	.label_2130
.label_2130:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2131
.label_2099:
	jmp	.label_2015
.label_2078:
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_2010:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1974
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
	je	.label_1987
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_1987:
	mov	rsp, rsp
	jmp	.label_2005
.label_2005:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2010
.label_1974:
	lea	rdi, [rdi]
	jmp	.label_2015
.label_2015:
	jmp	.label_2018
.label_2018:
	jmp	.label_2020
.label_2075:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.3_2
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2026
	mov	rsp, rsp
	jmp	.label_2032
.label_2032:
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
	je	.label_2036
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_2100:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_2055
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
	je	.label_2073
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2073:
	mov	rbp, rbp
	jmp	.label_2097
.label_2097:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_2100
.label_2055:
	jmp	.label_1977
.label_2036:
	mov	dword ptr [rbp - 0xd4], 0
.label_2140:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2109
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
	je	.label_2118
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_2118:
	jmp	.label_2136
.label_2136:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2140
.label_2109:
	jmp	.label_1977
.label_1977:
	nop	
	jmp	.label_1981
.label_1981:
	jmp	.label_1983
.label_2026:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.9_1
	nop	
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_1990
	nop	
	jmp	.label_1993
.label_1993:
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
	je	.label_1996
	mov	dword ptr [rbp - 0xd4], 0
.label_2061:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_2060
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
	je	.label_2014
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_2014:
	lea	rdi, [rdi]
	jmp	.label_2056
.label_2056:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2061
.label_2060:
	mov	rsp, rsp
	jmp	.label_1992
.label_1996:
	mov	dword ptr [rbp - 0xd4], 0
.label_2106:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_2076
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
	je	.label_2086
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_2086:
	nop	
	jmp	.label_2050
.label_2050:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2106
.label_2076:
	mov	rbp, rbp
	jmp	.label_1992
.label_1992:
	lea	rsi, [rsi]
	jmp	.label_2115
.label_2115:
	jmp	.label_2058
.label_1990:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	eax, OFFSET FLAT:.str.11_1
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_2122
	nop	
	jmp	.label_2123
.label_2123:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2127
	mov	dword ptr [rbp - 0xd4], 0
.label_2011:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2138
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
	je	.label_2029
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_2029:
	lea	rsi, [rsi]
	jmp	.label_2007
.label_2007:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2011
.label_2138:
	mov	rsp, rsp
	jmp	.label_2016
.label_2127:
	mov	dword ptr [rbp - 0xd4], 0
.label_2064:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2023
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
	je	.label_2037
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_2037:
	jmp	.label_2124
.label_2124:
	mov	eax, dword ptr [rbp - 0xd4]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2064
.label_2023:
	nop	
	jmp	.label_2016
.label_2016:
	lea	rsi, [rsi]
	jmp	.label_2074
.label_2074:
	mov	rbp, rbp
	jmp	.label_2052
.label_2122:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.12_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2082
	lea	rsi, [rsi]
	jmp	.label_2088
.label_2088:
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
	je	.label_2091
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_2141:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_2107
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
	je	.label_2117
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
.label_2117:
	nop	
	jmp	.label_2128
.label_2128:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2141
.label_2107:
	jmp	.label_1979
.label_2091:
	mov	dword ptr [rbp - 0xd4], 0
.label_2096:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1984
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
	je	.label_1999
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1999:
	jmp	.label_2083
.label_2083:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_2096
.label_1984:
	jmp	.label_1979
.label_1979:
	jmp	.label_2028
.label_2028:
	mov	rbp, rbp
	jmp	.label_2031
.label_2082:
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
	jne	.label_2042
	jmp	.label_2049
.label_2049:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2051
	mov	dword ptr [rbp - 0xd4], 0
.label_2098:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_2068
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
	je	.label_2081
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_2081:
	mov	rsp, rsp
	jmp	.label_2079
.label_2079:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_2098
.label_2068:
	mov	rbp, rbp
	jmp	.label_2001
.label_2051:
	mov	dword ptr [rbp - 0xd4], 0
.label_2047:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2120
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
	je	.label_2132
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_2132:
	jmp	.label_2102
.label_2102:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_2047
.label_2120:
	lea	rsi, [rsi]
	jmp	.label_2001
.label_2001:
	jmp	.label_1995
.label_1995:
	jmp	.label_2072
.label_2042:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.13_2
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2006
	nop	
	jmp	.label_2035
.label_2035:
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
	je	.label_2013
	mov	dword ptr [rbp - 0xd4], 0
.label_2041:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_1973
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
	je	.label_2065
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2065:
	mov	rsp, rsp
	jmp	.label_2025
.label_2025:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_2041
.label_1973:
	jmp	.label_2085
.label_2013:
	mov	dword ptr [rbp - 0xd4], 0
.label_1988:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2092
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
	je	.label_2070
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_2070:
	lea	rsi, [rsi]
	jmp	.label_1970
.label_1970:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1988
.label_2092:
	mov	rbp, rbp
	jmp	.label_2085
.label_2085:
	jmp	.label_2129
.label_2129:
	jmp	.label_2044
.label_2006:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.14_2
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_2139
	mov	rsp, rsp
	jmp	.label_1971
.label_1971:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1975
	mov	dword ptr [rbp - 0xd4], 0
.label_2002:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1985
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
	je	.label_2003
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
.label_2003:
	jmp	.label_2034
.label_2034:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_2002
.label_1985:
	jmp	.label_2004
.label_1975:
	mov	dword ptr [rbp - 0xd4], 0
.label_2137:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2090
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
	je	.label_2062
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_2062:
	mov	rbp, rbp
	jmp	.label_2087
.label_2087:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	jmp	.label_2137
.label_2090:
	lea	rdi, [rdi]
	jmp	.label_2004
.label_2004:
	jmp	.label_2022
.label_2022:
	lea	rsi, [rsi]
	jmp	.label_2019
.label_2139:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.15_2
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2110
	mov	rbp, rbp
	jmp	.label_2114
.label_2114:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2116
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1998:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_2126
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
	je	.label_2142
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
.label_2142:
	jmp	.label_2121
.label_2121:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1998
.label_2126:
	mov	rsp, rsp
	jmp	.label_2008
.label_2116:
	mov	dword ptr [rbp - 0xd4], 0
.label_2017:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_2105
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
	je	.label_2054
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_2054:
	lea	rsi, [rsi]
	jmp	.label_2113
.label_2113:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2017
.label_2105:
	jmp	.label_2008
.label_2008:
	lea	rdi, [rdi]
	jmp	.label_2066
.label_2066:
	lea	rsi, [rsi]
	jmp	.label_2057
.label_2110:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_2069
	mov	rsp, rsp
	jmp	.label_2080
.label_2080:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2084
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_2134:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rdi, [rdi]
	jge	.label_2104
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
	je	.label_2103
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
.label_2103:
	jmp	.label_2133
.label_2133:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_2134
.label_2104:
	jmp	.label_1982
.label_2084:
	mov	dword ptr [rbp - 0xd4], 0
.label_2095:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_1978
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
	je	.label_1994
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	nop	
	call	bitset_set
.label_1994:
	jmp	.label_2038
.label_2038:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2095
.label_1978:
	nop	
	jmp	.label_1982
.label_1982:
	jmp	.label_2027
.label_2027:
	jmp	.label_2030
.label_2069:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 4
	jmp	.label_2033
.label_2030:
	mov	rsp, rsp
	jmp	.label_2057
.label_2057:
	jmp	.label_2019
.label_2019:
	jmp	.label_2044
.label_2044:
	lea	rdi, [rdi]
	jmp	.label_2072
.label_2072:
	lea	rsi, [rsi]
	jmp	.label_2031
.label_2031:
	lea	rdi, [rdi]
	jmp	.label_2052
.label_2052:
	jmp	.label_2058
.label_2058:
	lea	rsi, [rsi]
	jmp	.label_1983
.label_1983:
	jmp	.label_2020
.label_2020:
	mov	rbp, rbp
	jmp	.label_2063
.label_2063:
	jmp	.label_2067
.label_2067:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], 0
.label_2033:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e540

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
.label_2144:
	cmp	dword ptr [rbp - 4], 4
	jge	.label_2143
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
	jmp	.label_2144
.label_2143:
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e5b0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], 0
.label_2145:
	cmp	dword ptr [rbp - 0xc], 4
	mov	rbp, rbp
	jge	.label_2146
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
	jmp	.label_2145
.label_2146:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e620

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
	jne	.label_2147
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_2150
.label_2147:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
.label_2152:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	jge	.label_2148
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2149
	mov	rsp, rsp
	jmp	.label_2148
.label_2149:
	jmp	.label_2151
.label_2151:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2152
.label_2148:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
.label_2150:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e6d0

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
	jg	.label_2163
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 7
	mov	rsp, rsp
	jmp	.label_2153
.label_2163:
	nop	
	jmp	.label_2162
.label_2162:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x20
	lea	rdi, [rdi]
	jl	.label_2166
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_2153
.label_2166:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x1e
	jne	.label_2157
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	jmp	.label_2167
.label_2157:
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
.label_2167:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_2164
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_2153
.label_2164:
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	movzx	ecx, byte ptr [rbp - 0x2d]
	mov	rbp, rbp
	cmp	eax, ecx
	jne	.label_2159
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
	jne	.label_2159
	jmp	.label_2160
.label_2159:
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
	jmp	.label_2162
.label_2160:
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
	je	.label_2168
	jmp	.label_2158
.label_2158:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x1c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_2161
	nop	
	jmp	.label_2165
.label_2165:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x1e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_2154
	mov	rbp, rbp
	jmp	.label_2156
.label_2168:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 3
	mov	rsp, rsp
	jmp	.label_2155
.label_2161:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_2155
.label_2154:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 4
	jmp	.label_2155
.label_2156:
	nop	
	jmp	.label_2155
.label_2155:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2153:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e930

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
	je	.label_2172
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
	jmp	.label_2171
.label_2172:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	byte ptr [rax + 0x8c], 0
	nop	
	je	.label_2170
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_2173
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rcx + rax*4], -1
	nop	
	jne	.label_2173
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
	jmp	.label_2171
.label_2173:
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
	je	.label_2169
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
	jmp	.label_2171
.label_2169:
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
	jmp	.label_2171
.label_2170:
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
.label_2171:
	movzx	eax, byte ptr [rbp - 0x15]
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41eb20

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
	jne	.label_2174
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xd]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_2175
.label_2174:
	movzx	edi, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_2175:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41eb80

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
.label_2183:
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
	je	.label_2188
	mov	qword ptr [rbp - 0x48], -2
	jmp	.label_2186
.label_2188:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 0x18
	je	.label_2177
	nop	
	movzx	eax, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_2181
.label_2177:
	lea	rsi, [rsi]
	jmp	.label_2184
.label_2181:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_2179
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x30
	jl	.label_2179
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x39]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_2179
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -2
	nop	
	jne	.label_2185
.label_2179:
	mov	rax, -2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2178
.label_2185:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2180
	movzx	eax, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_2176
.label_2180:
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
	jge	.label_2187
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2182
.label_2187:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x30], 0xa
	movzx	ecx, byte ptr [rbp - 0x39]
	mov	edx, ecx
	add	rax, rdx
	lea	rsi, [rsi]
	sub	rax, 0x30
	mov	qword ptr [rbp - 8], rax
.label_2182:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_2176:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_2178:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2183
.label_2184:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_2186:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ed60

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
.label_2195:
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
	jne	.label_2192
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2189
.label_2192:
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
	je	.label_2196
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
	jmp	.label_2193
.label_2196:
	mov	qword ptr [rbp - 0x18], 0
.label_2191:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_2197
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], cl
.label_2197:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	mov	rsp, rsp
	jne	.label_2194
	mov	rbp, rbp
	jmp	.label_2198
.label_2194:
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
	jne	.label_2190
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_2189
.label_2190:
	mov	rbp, rbp
	jmp	.label_2191
.label_2198:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_2193:
	jmp	.label_2195
.label_2189:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ef50

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
	jne	.label_2199
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_2199
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	or	ecx, 0x80000
	mov	dword ptr [rax + 0x30], ecx
.label_2199:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41efd0

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
.label_2206:
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
	je	.label_2207
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2203
.label_2207:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_2202
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_2208
.label_2202:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
.label_2200:
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
	je	.label_2204
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], cl
.label_2204:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_2209
	jmp	.label_2201
.label_2209:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_2205
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2203
.label_2205:
	jmp	.label_2200
.label_2201:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_2208:
	jmp	.label_2206
.label_2203:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f130

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
	jne	.label_2214
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xe0], 0
	mov	rsp, rsp
	je	.label_2214
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
	jmp	.label_2212
.label_2214:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 0x11
	mov	rsp, rsp
	jne	.label_2211
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_2211
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 0x11
	lea	rsi, [rsi]
	jne	.label_2211
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
	je	.label_2210
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_2210:
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
	jge	.label_2213
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
.label_2213:
	jmp	.label_2211
.label_2211:
	lea	rsi, [rsi]
	jmp	.label_2212
.label_2212:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f340

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
	je	.label_2215
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_2215
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
	je	.label_2217
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_2217:
	nop	
	jmp	.label_2215
.label_2215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	je	.label_2216
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
	jne	.label_2216
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
	je	.label_2218
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_2218:
	mov	rsp, rsp
	jmp	.label_2216
.label_2216:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f490

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
	jne	.label_2220
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
	jmp	.label_2219
.label_2220:
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
	je	.label_2221
	nop	
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_2223
.label_2221:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0xc
	nop	
	jne	.label_2222
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
.label_2222:
	jmp	.label_2219
.label_2219:
	mov	dword ptr [rbp - 4], 0
.label_2223:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f610

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
	je	.label_2227
	nop	
	jmp	.label_2230
.label_2230:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	sub	eax, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	je	.label_2224
	jmp	.label_2225
.label_2227:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_2228
.label_2224:
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
	jmp	.label_2228
.label_2225:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_2229
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
.label_2229:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_2226
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + 0x20], rax
.label_2226:
	mov	rbp, rbp
	jmp	.label_2228
.label_2228:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f730

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
	ja	.label_2234
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2233]]
	jmp	rcx

.label_41f7a7:
	mov	rbp, rbp
	jmp	.label_2235
	.section	.text
	.align	16
	#Procedure 0x41f7af

	.globl sub_41f7af
	.type sub_41f7af, @function
.label_41f7af:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_2237
	jmp	.label_2236
.label_2237:
	movabs	rdi, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2236:
	lea	rsi, [rsi]
	jmp	.label_2235
	.section	.text
	.align	16
	#Procedure 0x41f7f9

	.globl sub_41f7f9
	.type sub_41f7f9, @function
.label_41f7f9:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb0]
	lea	rsi, [rsi]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0xb0], cl
	nop
	mov	rax, qword ptr [rbp - 0x20]
	nop
	cmp	qword ptr [rax + 8], 0
	je	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_2239
.label_2245:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_2239:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2238
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2242
.label_2238:
	mov	rax, qword ptr [rbp - 0x20]
	nop
	mov	rax, qword ptr [rax + 0x20]
	nop
	mov	rax, qword ptr [rax + 0x38]
	nop
	mov	qword ptr [rbp - 0x18], rax
.label_2242:
	cmp	qword ptr [rbp - 0x48], -1
	jle	.label_2241
	jmp	.label_2240
.label_2241:
	movabs	rdi, OFFSET FLAT:.str.18_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_2240:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], -1
	mov	rbp, rbp
	jle	.label_2243
	nop
	jmp	.label_2244
.label_2243:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 0x5b0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2244:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_2
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2235
	.section	.text
	.align	16
	#Procedure 0x41f95c

	.globl sub_41f95c
	.type sub_41f95c, @function
.label_41f95c:
	nop
	.section	.text
	.align	16
	#Procedure 0x41f95d
	.globl sub_41f95d
	.type sub_41f95d, @function
.label_41f95d:

	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_2235
	.section	.text
	.align	16
	#Procedure 0x41f992

	.globl sub_41f992
	.type sub_41f992, @function
.label_41f992:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rax + 0x30]
	and	esi, 0xff
	mov	rbp, rbp
	cmp	esi, 4
	jne	.label_2246
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	nop
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
.label_2246:
	jmp	.label_2235
.label_2234:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	and	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_2231
	jmp	.label_2232
.label_2231:
	movabs	rdi, OFFSET FLAT:.str.20_0
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2232:
	nop
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2235:
	mov	eax, dword ptr [rbp - 0x3c]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret
	.section	.text
	.align	16
	#Procedure 0x41faa0

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
.label_2250:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jne	.label_2255
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	jne	.label_2252
	jmp	.label_2247
.label_2252:
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x30], 0
.label_2255:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_2251
	mov	rsp, rsp
	jmp	.label_2248
.label_2251:
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
	je	.label_2254
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	jmp	.label_2253
.label_2254:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jne	.label_2249
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 1
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_2249:
	lea	rsi, [rsi]
	jmp	.label_2248
.label_2248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2250
.label_2247:
	mov	dword ptr [rbp - 0x38], 0
.label_2253:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fbe0

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
.label_2257:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	jae	.label_2262
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
	jmp	.label_2257
.label_2262:
	mov	qword ptr [rbp - 0x18], 0
.label_2263:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	jae	.label_2256
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
.label_2261:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2258
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
	je	.label_2264
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_2265
.label_2264:
	lea	rsi, [rsi]
	jmp	.label_2260
.label_2260:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_2261
.label_2258:
	lea	rsi, [rsi]
	jmp	.label_2259
.label_2259:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2263
.label_2256:
	mov	dword ptr [rbp - 4], 0
.label_2265:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fd90

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
	je	.label_2270
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 8], 0
	je	.label_2270
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x28], 0x40
	mov	rsp, rsp
	jge	.label_2266
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
	jne	.label_2270
.label_2266:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2268
.label_2270:
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
	je	.label_2272
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
	jmp	.label_2269
.label_2272:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_2269:
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
	je	.label_2267
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	je	.label_2267
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	nop	
	mov	byte ptr [rbp - 0x11], al
	je	.label_2267
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	sete	al
	mov	byte ptr [rbp - 0x11], al
.label_2267:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_2271
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jmp	.label_2268
.label_2271:
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
.label_3789:
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
.label_2268:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x420060

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
	je	.label_2276
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
	je	.label_2280
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], -1
	nop	
	jmp	.label_2274
.label_2280:
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
	je	.label_2279
	mov	qword ptr [rbp - 0x30], -1
	lea	rsi, [rsi]
	jmp	.label_2274
.label_2279:
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
	je	.label_2273
	mov	rsp, rsp
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], al
	mov	rsp, rsp
	je	.label_2273
	nop	
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	nop	
	je	.label_2273
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
.label_2273:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2277
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
	jmp	.label_2274
.label_2277:
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
.label_2276:
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
	jne	.label_2278
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], al
	mov	rbp, rbp
	jg	.label_2275
.label_2278:
	mov	eax, dword ptr [rbp - 0x70]
	nop	
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	nop	
	mov	byte ptr [rbp - 0x61], cl
.label_2275:
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
.label_2274:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4204d0

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
	je	.label_2285
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	jmp	.label_2286
.label_2285:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2282
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
	jmp	.label_2283
.label_2282:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jge	.label_2281
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
	jmp	.label_2284
.label_2281:
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
.label_2284:
	nop	
	jmp	.label_2283
.label_2283:
	mov	dword ptr [rbp - 0xc], 0
.label_2286:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420640

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
	je	.label_2288
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 0xc
	jmp	.label_2287
.label_2288:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_2287:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420710

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
	je	.label_2303
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2291
.label_2303:
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
	je	.label_2289
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_2289
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
	jne	.label_2289
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
	je	.label_2302
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	jmp	.label_2291
.label_2302:
	mov	rsp, rsp
	jmp	.label_2289
.label_2289:
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
	je	.label_2299
	mov	qword ptr [rbp - 0x68], 0
.label_2294:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_2297
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
	jne	.label_2305
	mov	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	jmp	.label_2295
.label_2305:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2293
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
	je	.label_2304
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2291
.label_2304:
	jmp	.label_2300
.label_2293:
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
.label_2300:
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
	je	.label_2301
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	jmp	.label_2291
.label_2301:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2298
	nop	
	mov	byte ptr [rbp - 0x21], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2298:
	jmp	.label_2295
.label_2295:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2294
.label_2297:
	jmp	.label_2299
.label_2299:
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
	je	.label_2292
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], 0xc
	lea	rdi, [rdi]
	jmp	.label_2291
.label_2292:
	test	byte ptr [rbp - 0x21], 1
	je	.label_2290
	test	byte ptr [rbp - 0x79], 1
	jne	.label_2290
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_2296
.label_2290:
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
.label_2296:
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
.label_2291:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420bf0

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
	je	.label_2306
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0xc
	lea	rdi, [rdi]
	jmp	.label_2307
.label_2306:
	mov	dword ptr [rbp - 0xc], 0
.label_2307:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420ca0

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
.label_2309:
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
	jne	.label_2324
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
	je	.label_2323
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], 0xc
	nop	
	jmp	.label_2308
.label_2323:
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
	je	.label_2326
	nop	
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_2308
.label_2326:
	jmp	.label_2311
.label_2324:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2316
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
	jmp	.label_2320
.label_2316:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_2327
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
	jne	.label_2313
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	je	.label_2313
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
	je	.label_2314
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_2308
.label_2314:
	lea	rdi, [rdi]
	jmp	.label_2320
.label_2313:
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
	je	.label_2315
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_2308
.label_2315:
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
	je	.label_2328
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rsi, [rsi]
	jmp	.label_2308
.label_2328:
	lea	rdi, [rdi]
	jmp	.label_2317
.label_2327:
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
	jne	.label_2319
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
	je	.label_2318
	mov	dword ptr [rbp - 0x28], 0xc
	mov	rsp, rsp
	jmp	.label_2308
.label_2318:
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
	je	.label_2312
	nop	
	mov	dword ptr [rbp - 0x28], 0xc
	mov	rbp, rbp
	jmp	.label_2308
.label_2312:
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
	je	.label_2325
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	jmp	.label_2308
.label_2325:
	jmp	.label_2310
.label_2319:
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
	je	.label_2322
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rdi, [rdi]
	jmp	.label_2308
.label_2322:
	jmp	.label_2310
.label_2310:
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
	je	.label_2321
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rdi, [rdi]
	jmp	.label_2308
.label_2321:
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
	je	.label_2329
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_2308
.label_2329:
	mov	rbp, rbp
	jmp	.label_2317
.label_2317:
	jmp	.label_2330
.label_2330:
	lea	rdi, [rdi]
	jmp	.label_2311
.label_2311:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2309
.label_2320:
	mov	dword ptr [rbp - 0x28], 0
.label_2308:
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421340

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
	je	.label_2331
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2332
.label_2331:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_2343
.label_2332:
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
	jge	.label_2335
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
	je	.label_2352
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rbp, rbp
	jmp	.label_2343
.label_2352:
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
.label_2335:
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
	je	.label_2340
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
	jmp	.label_2343
.label_2340:
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
.label_2349:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], cl
	jl	.label_2347
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	setge	al
	nop	
	mov	byte ptr [rbp - 0x41], al
.label_2347:
	mov	al, byte ptr [rbp - 0x41]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2338
	jmp	.label_2342
.label_2338:
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
	jne	.label_2345
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
	jmp	.label_2337
.label_2345:
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
	jge	.label_2351
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
	jmp	.label_2333
.label_2351:
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
.label_2333:
	mov	rbp, rbp
	jmp	.label_2337
.label_2337:
	mov	rsp, rsp
	jmp	.label_2349
.label_2342:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jl	.label_2339
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
.label_2339:
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
	jne	.label_2334
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_2343
.label_2334:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_2350:
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
	jle	.label_2344
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
	jne	.label_2348
	jmp	.label_2336
.label_2348:
	lea	rdi, [rdi]
	jmp	.label_2346
.label_2344:
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
	jge	.label_2341
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
	jmp	.label_2336
.label_2341:
	lea	rsi, [rsi]
	jmp	.label_2346
.label_2346:
	mov	rsp, rsp
	jmp	.label_2350
.label_2336:
	nop	
	mov	dword ptr [rbp - 0x24], 0
.label_2343:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4218a0

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
	jne	.label_2353
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
	jmp	.label_2356
.label_2353:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jne	.label_2363
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
	jmp	.label_2356
.label_2363:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2355
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
	je	.label_2359
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_2356
.label_2359:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
.label_2355:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	jge	.label_2361
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_2360:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	jle	.label_2354
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
	jmp	.label_2360
.label_2354:
	jmp	.label_2357
.label_2361:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_2362:
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
	jle	.label_2358
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
	jmp	.label_2362
.label_2358:
	jmp	.label_2357
.label_2357:
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
.label_2356:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421b50

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
	je	.label_2364
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
.label_2364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421cd0

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
.label_2371:
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
	je	.label_2370
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 9], al
.label_2370:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	nop	
	jne	.label_2369
	jmp	.label_2367
.label_2369:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2368
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
	jne	.label_2368
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2366
.label_2368:
	jmp	.label_2365
.label_2365:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_2371
.label_2367:
	mov	qword ptr [rbp - 8], -1
.label_2366:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421df0

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
	jne	.label_2372
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
	je	.label_2373
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_2374
.label_2373:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
.label_2372:
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
.label_2374:
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
	.section	.text
	.align	16
	#Procedure 0x421f00

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
	jle	.label_2375
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
	je	.label_2376
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_2377
.label_2376:
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
	jmp	.label_2378
.label_2375:
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 0x18
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memset
.label_2378:
	mov	dword ptr [rbp - 4], 0
.label_2377:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422030

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
	jg	.label_2383
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2386
.label_2383:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_2380:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jae	.label_2379
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
	jge	.label_2385
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2382
.label_2385:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_2382:
	lea	rdi, [rdi]
	jmp	.label_2380
.label_2379:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jne	.label_2384
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2381
.label_2384:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_2381
.label_2381:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_2386:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422160

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
	jne	.label_2387
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_2392
.label_2387:
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
.label_2390:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_2394
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
	jne	.label_2388
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xf
	movzx	edx, cl
	cmp	edx, dword ptr [rbp - 0x1c]
	jne	.label_2388
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	re_node_set_compare
	test	al, 1
	mov	rsp, rsp
	jne	.label_2389
	jmp	.label_2388
.label_2389:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_2392
.label_2388:
	mov	rsp, rsp
	jmp	.label_2393
.label_2393:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2390
.label_2394:
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
	je	.label_2391
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax], 0xc
.label_2391:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2392:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422320

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
.label_2396:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2395
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
	jmp	.label_2396
.label_2395:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4223b0

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
	je	.label_2397
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_2397
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	je	.label_2401
.label_2397:
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_2399
.label_2401:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2400:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_2398
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
	je	.label_2402
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_2399
.label_2402:
	lea	rsi, [rsi]
	jmp	.label_2400
.label_2398:
	mov	byte ptr [rbp - 1], 1
.label_2399:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x422490

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
	je	.label_2419
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_2404
.label_2419:
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
	je	.label_2412
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jmp	.label_2404
.label_2412:
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
.label_2409:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2414
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
	jne	.label_2411
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_2411
	jmp	.label_2408
.label_2411:
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
	jne	.label_2416
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	nop	
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2405
.label_2416:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 4
	jne	.label_2410
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xbf
	mov	rsp, rsp
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_2410:
	lea	rdi, [rdi]
	jmp	.label_2405
.label_2405:
	cmp	dword ptr [rbp - 0x28], 0
	nop	
	je	.label_2407
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	cmp	rax, rcx
	jne	.label_2421
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
	je	.label_2406
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free_state
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jmp	.label_2404
.label_2406:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2403
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jmp	.label_2404
.label_2403:
	mov	qword ptr [rbp - 8], 0
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	and	cl, 0x7f
	mov	rbp, rbp
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_2421:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2413
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_2417
.label_2413:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2422
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2417
.label_2422:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 0x10
	cmp	eax, 0
	je	.label_2420
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2417
.label_2420:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 0x40
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2415
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2415
.label_2417:
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
.label_2415:
	jmp	.label_2407
.label_2407:
	jmp	.label_2408
.label_2408:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2409
.label_2414:
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
	je	.label_2418
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	call	free_state
	mov	qword ptr [rbp - 0x58], 0
.label_2418:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
.label_2404:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422930

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
	jl	.label_2423
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_2426
.label_2423:
	mov	rsp, rsp
	jmp	.label_2424
.label_2426:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
.label_2425:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2424
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
	jmp	.label_2425
.label_2424:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4229e0

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
	je	.label_2432
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rbp, rbp
	jmp	.label_2431
.label_2432:
	mov	qword ptr [rbp - 0x40], 0
.label_2435:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2433
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
	jne	.label_2428
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_2430
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0xc
	jmp	.label_2431
.label_2430:
	lea	rsi, [rsi]
	jmp	.label_2428
.label_2428:
	jmp	.label_2427
.label_2427:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_2435
.label_2433:
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
	je	.label_2434
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
	je	.label_2429
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rsp, rsp
	jmp	.label_2431
.label_2429:
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
.label_2434:
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
.label_2431:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422c60

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
	jne	.label_2446
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
	je	.label_2453
	mov	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_2439
.label_2453:
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
	je	.label_2445
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_2439
.label_2445:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	jmp	.label_2441
.label_2446:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_2437
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
	je	.label_2442
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
	je	.label_2447
	nop	
	mov	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_2439
.label_2447:
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
	je	.label_2450
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	nop	
	mov	dword ptr [rbp - 0x10], 0
	jmp	.label_2439
.label_2450:
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
.label_2442:
	mov	rsp, rsp
	jmp	.label_2451
.label_2437:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 2
	mov	rsp, rsp
	jne	.label_2452
	mov	rbp, rbp
	jmp	.label_2438
.label_2452:
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	mov	rbp, rbp
	call	__assert_fail
.label_2438:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jb	.label_2436
	jmp	.label_2443
.label_2436:
	movabs	rdi, OFFSET FLAT:.str.24_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_2443:
	mov	dword ptr [rbp - 0x44], 2
.label_2451:
	nop	
	jmp	.label_2441
.label_2441:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_2449:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2444
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
	jmp	.label_2449
.label_2444:
	lea	rsi, [rsi]
	jmp	.label_2440
.label_2440:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	mov	rbp, rbp
	jae	.label_2448
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
	jmp	.label_2440
.label_2448:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10], eax
.label_2439:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423050

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
	jge	.label_2457
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_2457:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2462
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_2460
.label_2462:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2460:
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
	je	.label_2461
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2455
.label_2461:
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
	je	.label_2459
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_2458
.label_2459:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_2458:
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
	jne	.label_2463
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2454
.label_2463:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_2456
.label_2454:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
.label_2456:
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
.label_2455:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x423280

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
	jle	.label_2464
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
	jae	.label_2470
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2469
.label_2470:
	nop	
	mov	rax, -1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_2469:
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
	je	.label_2466
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rsp, rsp
	jmp	.label_2465
.label_2466:
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
	je	.label_2467
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
.label_2467:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2468
	mov	dword ptr [rbp - 0x24], 0xc
	jmp	.label_2465
.label_2468:
	jmp	.label_2464
.label_2464:
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
.label_2465:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423450

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
	je	.label_2502
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2529
.label_2502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_2543
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_2543:
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
	jne	.label_2472
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 8], rax
.label_2472:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_2529:
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
	je	.label_2509
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
	je	.label_2482
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2527
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_2497:
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
	jle	.label_2519
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2517
.label_2519:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_2545
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2480
.label_2545:
	jmp	.label_2489
.label_2480:
	jmp	.label_2517
.label_2517:
	mov	rsp, rsp
	jmp	.label_2494
.label_2494:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	jl	.label_2497
.label_2489:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2506
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
.label_2506:
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
	jle	.label_2537
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2537
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2537
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
.label_2478:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2507
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
	jmp	.label_2478
.label_2507:
	lea	rsi, [rsi]
	jmp	.label_2508
.label_2537:
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
.label_2484:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd8], 0
	mov	byte ptr [rbp - 0x49], cl
	jle	.label_2540
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
.label_2540:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_2473
	mov	rsp, rsp
	jmp	.label_2479
.label_2473:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	jmp	.label_2484
.label_2479:
	jmp	.label_2495
.label_2495:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2521
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_2504
	jmp	.label_2521
.label_2504:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_2495
.label_2521:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jne	.label_2530
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_2538
.label_2530:
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
	je	.label_2490
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], 0
.label_2505:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	jge	.label_2493
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
	jmp	.label_2505
.label_2493:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_2490:
	lea	rsi, [rsi]
	jmp	.label_2538
.label_2538:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x38], rax
.label_2508:
	jmp	.label_2491
.label_2527:
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
	jle	.label_2471
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
.label_2471:
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8b]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2515
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
.label_2515:
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
.label_2491:
	lea	rdi, [rdi]
	jmp	.label_2477
.label_2482:
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
	je	.label_2526
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
.label_2526:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_2533
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], 0xffffffff
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	byte ptr [rax + 0x89], 0
	mov	rbp, rbp
	je	.label_2541
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
	jae	.label_2547
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
.label_2547:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_2486:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jb	.label_2518
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movzx	ecx, byte ptr [rax]
	nop	
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_2516
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
	je	.label_2535
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 6
	lea	rsi, [rsi]
	jge	.label_2475
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2481
.label_2475:
	nop	
	mov	eax, 6
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2481
.label_2481:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x14], ecx
.label_2512:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0
	mov	rbp, rbp
	jl	.label_2503
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
	jmp	.label_2512
.label_2503:
	lea	rax, [rbp - 0x92]
	mov	qword ptr [rbp - 0xb0], rax
.label_2535:
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
	ja	.label_2474
	cmp	qword ptr [rbp - 0x88], -2
	jae	.label_2474
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
.label_2474:
	mov	rsp, rsp
	jmp	.label_2518
.label_2516:
	jmp	.label_2532
.label_2532:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_2486
.label_2518:
	mov	rbp, rbp
	jmp	.label_2541
.label_2541:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], -1
	jne	.label_2546
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
.label_2546:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x50], -1
	nop	
	jne	.label_2476
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
	jmp	.label_2492
.label_2476:
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
	je	.label_2501
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	jne	.label_2520
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0x5f
	jne	.label_2501
.label_2520:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_2539
.label_2501:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x50], 0xa
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], cl
	mov	rbp, rbp
	jne	.label_2534
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], dl
.label_2534:
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
.label_2539:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x70], eax
.label_2492:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_2487
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
.label_2513:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jge	.label_2499
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
	jmp	.label_2513
.label_2499:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_2510
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
.label_2510:
	jmp	.label_2487
.label_2487:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_2498
.label_2533:
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
	je	.label_2548
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x5c], edx
.label_2548:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	call	bitset_contain
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2522
	mov	rbp, rbp
	jmp	.label_2525
.label_2522:
	mov	eax, 1
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	jmp	.label_2528
.label_2525:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x5c], 0xa
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	lea	rdi, [rdi]
	jne	.label_2536
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], dl
.label_2536:
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
.label_2528:
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	dword ptr [rcx + 0x70], eax
.label_2498:
	jmp	.label_2477
.label_2477:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_2485
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
.label_2485:
	jmp	.label_2509
.label_2509:
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
	jle	.label_2511
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	je	.label_2531
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
	je	.label_2544
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_2483
.label_2544:
	nop	
	jmp	.label_2488
.label_2531:
	mov	rdi, qword ptr [rbp - 0xc8]
	call	build_wcs_buffer
.label_2488:
	mov	rsp, rsp
	jmp	.label_2496
.label_2511:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2500
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	byte ptr [rax + 0x88], 0
	mov	rbp, rbp
	je	.label_2514
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	call	build_upper_buffer
	mov	rsp, rsp
	jmp	.label_2523
.label_2514:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	mov	rbp, rbp
	je	.label_2524
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	re_string_translate_buffer
.label_2524:
	mov	rbp, rbp
	jmp	.label_2523
.label_2523:
	jmp	.label_2542
.label_2500:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	qword ptr [rcx + 0x30], rax
.label_2542:
	mov	rbp, rbp
	jmp	.label_2496
.label_2496:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 0x2c], 0
.label_2483:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0xf0
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x424620

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
	je	.label_2556
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
	je	.label_2558
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2559
.label_2558:
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2572
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_2559
.label_2572:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	je	.label_2578
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 2
	cmp	eax, 0
	je	.label_2578
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2559
.label_2578:
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 2
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2583
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2559
.label_2583:
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2590
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
	jmp	.label_2559
.label_2590:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2559
.label_2556:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_2559:
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
	je	.label_2571
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x64], 0xc
	mov	rbp, rbp
	jne	.label_2579
	jmp	.label_2581
.label_2579:
	movabs	rdi, OFFSET FLAT:.str.25_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2581:
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_2563
.label_2571:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2551
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
	je	.label_2588
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
	je	.label_2566
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_2563
.label_2566:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2577
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
	je	.label_2573
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2563
.label_2573:
	nop	
	jmp	.label_2577
.label_2577:
	jmp	.label_2588
.label_2588:
	mov	rsp, rsp
	jmp	.label_2551
.label_2551:
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
	je	.label_2565
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2561
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x90]
	call	check_halt_state_context
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2575
.label_2561:
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jne	.label_2576
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2563
.label_2576:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0xa0], 1
	mov	rbp, rbp
	jmp	.label_2575
.label_2575:
	jmp	.label_2565
.label_2565:
	lea	rdi, [rdi]
	jmp	.label_2555
.label_2555:
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
	jne	.label_2584
	lea	rdi, [rdi]
	jmp	.label_2560
.label_2584:
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
	je	.label_2550
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2567
.label_2550:
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
	je	.label_2569
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2569
.label_2567:
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
	je	.label_2586
	cmp	dword ptr [rbp - 0x64], 0xc
	lea	rsi, [rsi]
	jne	.label_2591
	mov	rsp, rsp
	jmp	.label_2553
.label_2591:
	nop	
	movabs	rdi, OFFSET FLAT:.str.25_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	lea	rdi, [rdi]
	call	__assert_fail
.label_2553:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], -2
	mov	rbp, rbp
	jmp	.label_2563
.label_2586:
	nop	
	jmp	.label_2569
.label_2569:
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
	je	.label_2574
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	merge_state_with_log
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_2574:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	jne	.label_2562
	cmp	dword ptr [rbp - 0x64], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2582
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_2563
.label_2582:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2549
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_2589
	nop	
	test	byte ptr [rbp - 9], 1
	je	.label_2549
.label_2589:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x64]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	find_recover_state
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2557
.label_2549:
	lea	rsi, [rsi]
	jmp	.label_2560
.label_2557:
	mov	rsp, rsp
	jmp	.label_2562
.label_2562:
	test	byte ptr [rbp - 0x31], 1
	je	.label_2564
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_2568
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2570
.label_2568:
	mov	byte ptr [rbp - 0x31], 0
.label_2570:
	lea	rsi, [rsi]
	jmp	.label_2564
.label_2564:
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
	je	.label_2554
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2580
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_2552
.label_2580:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0xa0], 1
	mov	qword ptr [rbp - 0x18], 0
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	jne	.label_2587
	jmp	.label_2560
.label_2587:
	jmp	.label_2552
.label_2552:
	nop	
	jmp	.label_2554
.label_2554:
	jmp	.label_2555
.label_2560:
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_2585
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_2585:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_2563:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424e70

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
.label_2597:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2592
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
	jne	.label_2596
	jmp	.label_2593
.label_2596:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_2595
.label_2593:
	mov	rsp, rsp
	jmp	.label_2594
.label_2594:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2597
.label_2592:
	mov	qword ptr [rbp - 0x30], 0
.label_2595:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x424f70

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
	je	.label_2615
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xc
	jmp	.label_2605
.label_2615:
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
	je	.label_2601
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 0xc
	mov	rbp, rbp
	jmp	.label_2604
.label_2601:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_2612
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
	je	.label_2598
	mov	dword ptr [rbp - 0x7c], 0xc
	jmp	.label_2604
.label_2598:
	lea	rdi, [rdi]
	jmp	.label_2608
.label_2608:
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
	je	.label_2606
	mov	rsp, rsp
	jmp	.label_2604
.label_2606:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_2613
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2614
.label_2613:
	jmp	.label_2616
.label_2614:
	jmp	.label_2600
.label_2600:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_2599
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_2604
.label_2599:
	lea	rdi, [rdi]
	jmp	.label_2607
.label_2607:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x15], al
	je	.label_2609
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
.label_2609:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_2600
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
	jmp	.label_2608
.label_2616:
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
	je	.label_2603
	jmp	.label_2604
.label_2603:
	lea	rsi, [rsi]
	jmp	.label_2611
.label_2612:
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
	je	.label_2602
	jmp	.label_2604
.label_2602:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2610
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_2604
.label_2610:
	jmp	.label_2611
.label_2611:
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
.label_2604:
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
.label_2605:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425400

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
.label_2620:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2621
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
.label_2617:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	jge	.label_2618
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
	jmp	.label_2617
.label_2618:
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
	je	.label_2619
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
.label_2619:
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
	jmp	.label_2620
.label_2621:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0xe8], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0xc8], 0
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425590

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
	mov	rcx,  qword ptr [word ptr [label_2626]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_2627]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_2628]]
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rbp - 0xd], 0
	test	byte ptr [rbp - 0x8d], 1
	lea	rdi, [rdi]
	je	.label_2629
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
	jne	.label_2630
	nop	
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rbp, rbp
	jmp	.label_2622
.label_2630:
	jmp	.label_2644
.label_2629:
	mov	qword ptr [rbp - 0x80], 0
.label_2644:
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
	jae	.label_2633
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_2636
.label_2633:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	shl	rax, 4
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2650
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	call	free_fail_stack_return
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_2622
.label_2650:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], 1
.label_2636:
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
.label_2625:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_2640
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
	jne	.label_2635
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_2635
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_2645
	mov	qword ptr [rbp - 0x70], 0
.label_2641:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_2638
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	qword ptr [rax], -1
	lea	rdi, [rdi]
	jle	.label_2624
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x88]
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jne	.label_2624
	lea	rsi, [rsi]
	jmp	.label_2638
.label_2624:
	jmp	.label_2649
.label_2649:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2641
.label_2638:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2648
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	byte ptr [rbp - 0xd], 1
	je	.label_2637
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	free
.label_2637:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2622
.label_2648:
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
	jmp	.label_2647
.label_2645:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xd], 1
	je	.label_2623
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2623:
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jmp	.label_2622
.label_2647:
	jmp	.label_2635
.label_2635:
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
	je	.label_2643
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
	je	.label_2632
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0xd], 1
	je	.label_2642
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2642:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	free_fail_stack_return
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_2622
.label_2632:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2631
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
	jmp	.label_2639
.label_2631:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0xd], 1
	je	.label_2646
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	free
.label_2646:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 1
	lea	rdi, [rdi]
	jmp	.label_2622
.label_2639:
	lea	rsi, [rsi]
	jmp	.label_2643
.label_2643:
	lea	rsi, [rsi]
	jmp	.label_2625
.label_2640:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	test	byte ptr [rbp - 0xd], 1
	je	.label_2634
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	free
.label_2634:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	call	free_fail_stack_return
	mov	dword ptr [rbp - 0xc], eax
.label_2622:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425af0

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
	.section	.text
	.align	16
	#Procedure 0x425b50

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
	je	.label_2651
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x70]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	jmp	.label_2652
.label_2651:
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
	je	.label_2659
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
	jmp	.label_2652
.label_2659:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	nop	
	jle	.label_2658
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_2655:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2654
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2661
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_2652
.label_2661:
	jmp	.label_2655
.label_2654:
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
	je	.label_2657
	nop	
	mov	edi, dword ptr [rbp - 0x30]
	call	iswalnum
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_2662
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x30], 0x5f
	jne	.label_2657
.label_2662:
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_2652
.label_2657:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2653
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
.label_2653:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, 2
	mov	rbp, rbp
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	jmp	.label_2652
.label_2658:
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
	jne	.label_2660
	mov	rsp, rsp
	jmp	.label_2656
.label_2660:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 1
	mov	rbp, rbp
	jmp	.label_2652
.label_2656:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x2c], 0xa
	mov	byte ptr [rbp - 0x25], cl
	jne	.label_2663
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x25], dl
.label_2663:
	mov	al, byte ptr [rbp - 0x25]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x24], ecx
.label_2652:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425dc0

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
.label_2669:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2671
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
	je	.label_2665
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	mov	byte ptr [rbp - 0x39], al
	lea	rsi, [rsi]
	je	.label_2665
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	mov	byte ptr [rbp - 0x39], al
.label_2665:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2664
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2670
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2666
.label_2670:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 0
	nop	
	jmp	.label_2667
.label_2666:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], edx
.label_2667:
	nop	
	mov	qword ptr [rbp - 0x20], 1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2668
.label_2664:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x4c], eax
.label_2668:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2669
.label_2671:
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
	.section	.text
	.align	16
	#Procedure 0x425f60

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
	.section	.text
	.align	16
	#Procedure 0x425fe0

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
.label_2675:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2676
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
	jne	.label_2672
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	mov	rsp, rsp
	jge	.label_2672
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
	je	.label_2672
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
	je	.label_2674
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_2677
.label_2674:
	mov	rsp, rsp
	jmp	.label_2672
.label_2672:
	mov	rbp, rbp
	jmp	.label_2673
.label_2673:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2675
.label_2676:
	mov	dword ptr [rbp - 0xc], 0
.label_2677:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426180

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
.label_2701:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2703
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
	je	.label_2707
	lea	rsi, [rsi]
	jmp	.label_2691
.label_2707:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2705
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
	je	.label_2686
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 1
	cmp	eax, 0
	je	.label_2688
.label_2686:
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
	je	.label_2695
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2688
.label_2695:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2679
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 2
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2688
.label_2679:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2692
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2692
.label_2688:
	jmp	.label_2691
.label_2692:
	mov	rbp, rbp
	jmp	.label_2705
.label_2705:
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
	je	.label_2698
	nop	
	jmp	.label_2678
.label_2698:
	jmp	.label_2694
.label_2694:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xc8]
	mov	rbp, rbp
	jge	.label_2708
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
	jne	.label_2684
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb8]
	nop	
	je	.label_2697
.label_2684:
	mov	rsp, rsp
	jmp	.label_2702
.label_2697:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_2706
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
	jmp	.label_2683
.label_2706:
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
.label_2683:
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
	jne	.label_2700
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2687
.label_2700:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_2687:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_2696
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
	jne	.label_2685
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xac], 0
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2685:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x49]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2699
	lea	rsi, [rsi]
	jmp	.label_2678
.label_2699:
	jmp	.label_2680
.label_2696:
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
	je	.label_2682
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_2678
.label_2682:
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
	jne	.label_2690
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xac], 0
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], al
.label_2690:
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2693
	nop	
	jmp	.label_2678
.label_2693:
	jmp	.label_2680
.label_2680:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2681
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jle	.label_2681
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
	je	.label_2704
	jmp	.label_2678
.label_2704:
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
	je	.label_2689
	jmp	.label_2678
.label_2689:
	jmp	.label_2681
.label_2681:
	mov	rbp, rbp
	jmp	.label_2702
.label_2702:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_2694
.label_2708:
	jmp	.label_2691
.label_2691:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	jmp	.label_2701
.label_2703:
	mov	dword ptr [rbp - 0xac], 0
.label_2678:
	mov	eax, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	add	rsp, 0xc0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4268c0

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
	je	.label_2709
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 0xc
	jmp	.label_2720
.label_2709:
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
	jge	.label_2722
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2719
.label_2722:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2719:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, rax
	jge	.label_2710
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2718
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2727
.label_2718:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2727:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2723
.label_2710:
	movsxd	rax, dword ptr [rbp - 4]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_2723:
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
	je	.label_2721
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2720
.label_2721:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax + 0xb8], 0
	mov	rsp, rsp
	je	.label_2711
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
	je	.label_2716
	mov	dword ptr [rbp - 0x4c], 0xc
	mov	rbp, rbp
	jmp	.label_2720
.label_2716:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0xb8], rax
.label_2711:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2717
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	lea	rdi, [rdi]
	jle	.label_2726
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
	je	.label_2715
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2720
.label_2715:
	jmp	.label_2714
.label_2726:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	build_upper_buffer
.label_2714:
	jmp	.label_2712
.label_2717:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2724
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_2725
.label_2724:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2713
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	re_string_translate_buffer
.label_2713:
	lea	rdi, [rdi]
	jmp	.label_2725
.label_2725:
	lea	rdi, [rdi]
	jmp	.label_2712
.label_2712:
	mov	dword ptr [rbp - 0x4c], 0
.label_2720:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426be0

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
	je	.label_2728
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
	je	.label_2734
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jmp	.label_2729
.label_2734:
	jmp	.label_2728
.label_2728:
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
.label_2730:
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
	je	.label_2733
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
	jmp	.label_2729
.label_2733:
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
	je	.label_2731
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
	je	.label_2735
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 9]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2729
.label_2735:
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
	jmp	.label_2729
.label_2731:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	build_trtable
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2732
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_2729
.label_2732:
	nop	
	jmp	.label_2730
.label_2729:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426e30

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
	jle	.label_2747
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
	jmp	.label_2739
.label_2747:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2736
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_2740
.label_2736:
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
	je	.label_2748
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
	je	.label_2746
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_2737
.label_2746:
	lea	rsi, [rsi]
	jmp	.label_2745
.label_2748:
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
.label_2745:
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
	je	.label_2742
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_2742:
	jmp	.label_2740
.label_2740:
	jmp	.label_2739
.label_2739:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x98], 0
	nop	
	je	.label_2738
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2738
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
	je	.label_2744
	mov	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jmp	.label_2737
.label_2744:
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
	je	.label_2743
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
	je	.label_2741
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_2737
.label_2741:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_2743:
	jmp	.label_2738
.label_2738:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_2737:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4271a0

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
.label_2749:
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
.label_2750:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jle	.label_2753
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2751
.label_2753:
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
	je	.label_2750
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
	jne	.label_2752
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
.label_2752:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_2749
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2751:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4272b0

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
	je	.label_2754
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
	je	.label_2755
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2756
.label_2755:
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
.label_2754:
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
	je	.label_2757
	nop	
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2756
.label_2757:
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
.label_2756:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4274b0

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
	je	.label_2760
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x28], 0x28
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
.label_2790:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	jne	.label_2773
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	jmp	.label_2764
.label_2773:
	jmp	.label_2788
.label_2788:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2790
	jmp	.label_2760
.label_2760:
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
.label_2792:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2778
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
	je	.label_2784
	jmp	.label_2762
.label_2784:
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
.label_2789:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	jge	.label_2763
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
	jle	.label_2776
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
	je	.label_2777
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	jle	.label_2791
	mov	rsp, rsp
	jmp	.label_2763
.label_2791:
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
	je	.label_2769
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	jmp	.label_2764
.label_2769:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
.label_2777:
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
	je	.label_2768
	jmp	.label_2763
.label_2768:
	lea	rsi, [rsi]
	jmp	.label_2776
.label_2776:
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
	jne	.label_2758
	lea	rdi, [rdi]
	jmp	.label_2766
.label_2758:
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
	je	.label_2795
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2764
.label_2795:
	mov	rbp, rbp
	jmp	.label_2766
.label_2766:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_2789
.label_2763:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2759
	jmp	.label_2762
.label_2759:
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jle	.label_2765
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2765:
	mov	rsp, rsp
	jmp	.label_2775
.label_2775:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jg	.label_2771
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jle	.label_2782
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
	je	.label_2794
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2767
	lea	rsi, [rsi]
	jmp	.label_2771
.label_2767:
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
	je	.label_2785
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2764
.label_2785:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_2794:
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
	je	.label_2774
	lea	rdi, [rdi]
	jmp	.label_2771
.label_2774:
	jmp	.label_2782
.label_2782:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	jne	.label_2781
	jmp	.label_2770
.label_2781:
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
	jne	.label_2787
	nop	
	jmp	.label_2770
.label_2787:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2786
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
	jne	.label_2772
	mov	dword ptr [rbp - 0x4c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2764
.label_2772:
	jmp	.label_2786
.label_2786:
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
	jne	.label_2783
	mov	rsp, rsp
	jmp	.label_2770
.label_2783:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2780
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2764
.label_2780:
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
	je	.label_2761
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 0xc
	jmp	.label_2764
.label_2761:
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
	jne	.label_2793
	jmp	.label_2770
.label_2793:
	cmp	dword ptr [rbp - 0x9c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2779
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2764
.label_2779:
	lea	rsi, [rsi]
	jmp	.label_2770
.label_2770:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2775
.label_2771:
	jmp	.label_2762
.label_2762:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	jmp	.label_2792
.label_2778:
	mov	dword ptr [rbp - 0x4c], 0
.label_2764:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427cb0

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
	je	.label_2797
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jle	.label_2797
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_2797
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jle	.label_2797
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
	je	.label_2800
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0xc
	jmp	.label_2796
.label_2800:
	jmp	.label_2802
.label_2797:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2804
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2804
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_2796
.label_2804:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2807
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2807
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_2796
.label_2807:
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
	jmp	.label_2810
.label_2810:
	mov	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jmp	.label_2796
.label_2802:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], 0
.label_2806:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_2805
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x29], dl
.label_2805:
	mov	al, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_2803
	mov	rbp, rbp
	jmp	.label_2809
.label_2803:
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
	jle	.label_2811
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
	jmp	.label_2806
.label_2811:
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
	jne	.label_2808
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_2808:
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
	jmp	.label_2806
.label_2809:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jge	.label_2801
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
	jmp	.label_2799
.label_2801:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2798
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
.label_2798:
	jmp	.label_2799
.label_2799:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0
.label_2796:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4280f0

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
.label_2814:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2815
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
	jge	.label_2816
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2813
.label_2816:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2813:
	jmp	.label_2814
.label_2815:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jge	.label_2812
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_2812
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_2817
.label_2812:
	nop	
	mov	qword ptr [rbp - 0x30], -1
.label_2817:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x428220

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
	jl	.label_2818
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jl	.label_2820
.label_2818:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_2819
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2819
.label_2820:
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
	je	.label_2822
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_2823
.label_2822:
	jmp	.label_2819
.label_2819:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jge	.label_2821
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
.label_2821:
	mov	dword ptr [rbp - 0x20], 0
.label_2823:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4283a0

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
	je	.label_2826
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2825
.label_2826:
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
	je	.label_2824
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2825
.label_2824:
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
.label_2825:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4284e0

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
.label_2828:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2830
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
	jne	.label_2827
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2827
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2829
.label_2827:
	mov	rsp, rsp
	jmp	.label_2831
.label_2831:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_2828
.label_2830:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], -1
.label_2829:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4285f0

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
	je	.label_2868
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
	je	.label_2861
	mov	dword ptr [rbp - 0x6c], 0xc
	nop	
	jmp	.label_2832
.label_2861:
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
	je	.label_2840
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], 0xc
	jmp	.label_2832
.label_2840:
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
	je	.label_2859
	nop	
	mov	dword ptr [rbp - 0x6c], 0xc
	jmp	.label_2832
.label_2859:
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
.label_2868:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_2848
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_2849
.label_2848:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
.label_2849:
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
	jne	.label_2837
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
	je	.label_2846
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	jmp	.label_2832
.label_2846:
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
	je	.label_2857
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rdi, [rdi]
	jmp	.label_2832
.label_2857:
	jmp	.label_2833
.label_2837:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2834
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2834
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
	je	.label_2850
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	jmp	.label_2832
.label_2850:
	nop	
	jmp	.label_2855
.label_2834:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x48]
	mov	rdi, rcx
	call	memset
.label_2855:
	mov	rsp, rsp
	jmp	.label_2833
.label_2833:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_2862
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2865
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2865
.label_2862:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2836
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
	je	.label_2842
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	nop	
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2832
.label_2842:
	lea	rdi, [rdi]
	jmp	.label_2836
.label_2836:
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
	jne	.label_2838
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2838:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2864
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2832
.label_2864:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2865:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_2863:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0xc9], cl
	jge	.label_2844
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	mov	rsp, rsp
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xc9], dl
.label_2844:
	mov	al, byte ptr [rbp - 0xc9]
	test	al, 1
	jne	.label_2853
	jmp	.label_2845
.label_2853:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	mov	rbp, rbp
	je	.label_2839
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
	je	.label_2866
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
	jmp	.label_2832
.label_2866:
	nop	
	jmp	.label_2839
.label_2839:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	lea	rsi, [rsi]
	je	.label_2841
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
	je	.label_2851
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2832
.label_2851:
	mov	rbp, rbp
	jmp	.label_2841
.label_2841:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2860
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
	je	.label_2869
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
	jmp	.label_2832
.label_2869:
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
	je	.label_2852
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rsi, [rsi]
	jmp	.label_2832
.label_2852:
	mov	rbp, rbp
	jmp	.label_2860
.label_2860:
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
	jne	.label_2835
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0
	setne	al
	mov	byte ptr [rbp - 1], al
.label_2835:
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
	je	.label_2843
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2832
.label_2843:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2854
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2858
.label_2854:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_2858
.label_2858:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2863
.label_2845:
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
	jne	.label_2867
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_2856
.label_2867:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_2856:
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
	je	.label_2847
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	je	.label_2847
	mov	dword ptr [rbp - 0x6c], 0
	lea	rdi, [rdi]
	jmp	.label_2832
.label_2847:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], 1
.label_2832:
	mov	eax, dword ptr [rbp - 0x6c]
	add	rsp, 0xf0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4290f0

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
	je	.label_2870
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
	je	.label_2871
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_2872
.label_2871:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_2870:
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
	je	.label_2873
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
.label_2873:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_2872:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x429290

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
	jl	.label_2877
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
	je	.label_2876
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x1c], 0xc
	jmp	.label_2874
.label_2876:
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
.label_2877:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_2875
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
	jne	.label_2875
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
.label_2875:
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
	jge	.label_2878
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0xe0], ecx
.label_2878:
	mov	dword ptr [rbp - 0x1c], 0
.label_2874:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4295c0

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
	je	.label_2887
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_2883
.label_2887:
	mov	qword ptr [rbp - 0x10], 0
.label_2881:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2884
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
	jne	.label_2885
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
	je	.label_2880
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2883
.label_2880:
	lea	rsi, [rsi]
	jmp	.label_2882
.label_2885:
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
	je	.label_2886
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2883
.label_2886:
	jmp	.label_2882
.label_2882:
	mov	rbp, rbp
	jmp	.label_2879
.label_2879:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2881
.label_2884:
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
.label_2883:
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x70
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4297f0

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
	jne	.label_2905
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	jmp	.label_2907
.label_2905:
	nop	
	jmp	.label_2890
.label_2890:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0xb8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_2892:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2897
	lea	rsi, [rsi]
	jmp	.label_2889
.label_2897:
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
	jne	.label_2902
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
	je	.label_2900
	jmp	.label_2889
.label_2900:
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
	jne	.label_2901
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	byte ptr [rbp - 0xd], al
	jne	.label_2901
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], al
.label_2901:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2906
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	je	.label_2891
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	jmp	.label_2898
.label_2891:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_2893
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_2895
.label_2893:
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], eax
.label_2895:
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
.label_2898:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_2907
.label_2906:
	mov	rbp, rbp
	jmp	.label_2890
.label_2902:
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
	je	.label_2904
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
	je	.label_2911
	jmp	.label_2889
.label_2911:
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
	jne	.label_2912
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x99], al
.label_2912:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x99]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2888
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	je	.label_2903
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2908
.label_2903:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2908
.label_2908:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	jmp	.label_2907
.label_2888:
	jmp	.label_2909
.label_2904:
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
	je	.label_2894
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_2907
.label_2894:
	mov	rbp, rbp
	jmp	.label_2909
.label_2909:
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
	jne	.label_2896
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2896:
	nop	
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2910
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_2907
.label_2910:
	mov	rbp, rbp
	jmp	.label_2899
.label_2899:
	jmp	.label_2889
.label_2889:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	jne	.label_2892
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], 0
.label_2907:
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x429d60

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
.label_2917:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2918
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
	je	.label_2916
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
	jle	.label_2920
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
	je	.label_2923
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
	je	.label_2924
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2914
.label_2924:
	jmp	.label_2923
.label_2923:
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
	je	.label_2921
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2914
.label_2921:
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
	jne	.label_2922
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	setne	al
	mov	byte ptr [rbp - 0x72], al
.label_2922:
	mov	al, byte ptr [rbp - 0x72]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2913
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2914
.label_2913:
	mov	rbp, rbp
	jmp	.label_2920
.label_2920:
	jmp	.label_2916
.label_2916:
	nop	
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_2915
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
	jne	.label_2915
	jmp	.label_2919
.label_2915:
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
	je	.label_2925
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x2c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2914
.label_2925:
	mov	rbp, rbp
	jmp	.label_2919
.label_2919:
	mov	rbp, rbp
	jmp	.label_2926
.label_2926:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2917
.label_2918:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	nop	
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2914:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a140

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
.label_2937:
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
	jne	.label_2929
	jmp	.label_2930
.label_2929:
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
	jne	.label_2931
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
	jne	.label_2931
	cmp	dword ptr [rbp - 0x1c], 9
	lea	rsi, [rsi]
	jne	.label_2927
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
	je	.label_2932
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	jmp	.label_2928
.label_2932:
	jmp	.label_2927
.label_2927:
	jmp	.label_2930
.label_2931:
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
	je	.label_2935
	mov	dword ptr [rbp - 0xc], 0xc
	jmp	.label_2928
.label_2935:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_2934
	jmp	.label_2930
.label_2934:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2933
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
	je	.label_2936
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2928
.label_2936:
	lea	rsi, [rsi]
	jmp	.label_2933
.label_2933:
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
	jmp	.label_2937
.label_2930:
	mov	dword ptr [rbp - 0xc], 0
.label_2928:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a3b0

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
	je	.label_2944
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2938
.label_2944:
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
.label_2945:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx]
	nop	
	jge	.label_2940
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
	je	.label_2943
	mov	rbp, rbp
	jmp	.label_2941
.label_2943:
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
	jne	.label_2942
	lea	rdi, [rdi]
	jmp	.label_2946
.label_2942:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2938
.label_2946:
	jmp	.label_2941
.label_2941:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_2945
.label_2940:
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
	je	.label_2939
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
.label_2939:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2938:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a560

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
	je	.label_2957
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2948
.label_2957:
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
	je	.label_2959
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_2948
.label_2959:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2955:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2952
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
	jne	.label_2958
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	jne	.label_2958
	mov	rbp, rbp
	jmp	.label_2954
.label_2958:
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
	jne	.label_2956
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	rbp, rbp
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2951
.label_2956:
	nop	
	cmp	dword ptr [rbp - 0xc], 4
	jne	.label_2953
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
	jmp	.label_2950
.label_2953:
	nop	
	cmp	dword ptr [rbp - 0xc], 0xc
	je	.label_2960
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2949
.label_2960:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	and	cl, 0x7f
	or	cl, 0x80
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], cl
.label_2949:
	jmp	.label_2950
.label_2950:
	jmp	.label_2951
.label_2951:
	jmp	.label_2954
.label_2954:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2955
.label_2952:
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
	je	.label_2947
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_state
	mov	qword ptr [rbp - 0x38], 0
.label_2947:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_2948:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a860

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
	je	.label_2986
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
	je	.label_3008
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2966
.label_3008:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2970
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2966
.label_2970:
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
	jge	.label_2981
	lea	rdi, [rdi]
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x31], al
	jl	.label_3006
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x31], cl
.label_3006:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	ecx, 2
	nop	
	xor	edx, edx
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x54], ecx
	jmp	.label_2966
.label_2981:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xf0
	nop	
	jge	.label_2993
	nop	
	mov	dword ptr [rbp - 0x28], 3
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xe0
	mov	rbp, rbp
	jne	.label_2992
	movzx	eax, byte ptr [rbp - 0x22]
	nop	
	cmp	eax, 0xa0
	jge	.label_2992
	mov	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	jmp	.label_2966
.label_2992:
	lea	rdi, [rdi]
	jmp	.label_2962
.label_2993:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, 0xf8
	nop	
	jge	.label_2965
	mov	dword ptr [rbp - 0x28], 4
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xf0
	lea	rdi, [rdi]
	jne	.label_2979
	nop	
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x90
	lea	rdi, [rdi]
	jge	.label_2979
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	jmp	.label_2966
.label_2979:
	jmp	.label_2972
.label_2965:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, 0xfc
	lea	rdi, [rdi]
	jge	.label_2988
	nop	
	mov	dword ptr [rbp - 0x28], 5
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	eax, 0xf8
	jne	.label_2994
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x88
	lea	rsi, [rsi]
	jge	.label_2994
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2966
.label_2994:
	jmp	.label_2971
.label_2988:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xfe
	mov	rbp, rbp
	jge	.label_3005
	mov	dword ptr [rbp - 0x28], 6
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	cmp	eax, 0xfc
	jne	.label_3007
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	eax, 0x84
	jge	.label_3007
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2966
.label_3007:
	jmp	.label_2984
.label_3005:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	jmp	.label_2966
.label_2984:
	jmp	.label_2971
.label_2971:
	jmp	.label_2972
.label_2972:
	mov	rbp, rbp
	jmp	.label_2962
.label_2962:
	jmp	.label_2978
.label_2978:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x28]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	jle	.label_2989
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2966
.label_2989:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 1
.label_3012:
	mov	rax, qword ptr [rbp - 0x78]
	movsxd	rcx, dword ptr [rbp - 0x28]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2991
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
	jl	.label_2996
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0xbf
	nop	
	jle	.label_3004
.label_2996:
	mov	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	jmp	.label_2966
.label_3004:
	jmp	.label_3010
.label_3010:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_3012
.label_2991:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2966
.label_2986:
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
	jne	.label_2967
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 1
	jg	.label_2977
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2966
.label_2977:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_3009
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	lea	rdi, [rdi]
	je	.label_2990
.label_3009:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2998
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_2998
.label_2990:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2966
.label_2998:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2966
.label_2967:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_string_elem_size_at
	nop	
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 1
	jg	.label_3014
	nop	
	cmp	dword ptr [rbp - 0x28], 1
	jle	.label_2964
.label_3014:
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_2968
.label_2964:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2966
.label_2968:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 6
	mov	rbp, rbp
	jne	.label_2974
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
	jne	.label_2982
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_2982
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	je	.label_2987
.label_2982:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_3003
.label_2987:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_3003
.label_3003:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	qword ptr [rbp - 0x78], 0
.label_2975:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	jge	.label_3011
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
	jne	.label_3013
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_2969
.label_3013:
	jmp	.label_2973
.label_2973:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2975
.label_3011:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
.label_2963:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_2983
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
	je	.label_2997
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_2969
.label_2997:
	nop	
	jmp	.label_3001
.label_3001:
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_2963
.label_2983:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
.label_2980:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_2999
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 4]
	nop	
	jg	.label_2961
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_2961
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	mov	rsp, rsp
	jmp	.label_2969
.label_2961:
	lea	rdi, [rdi]
	jmp	.label_2976
.label_2976:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_2980
.label_2999:
	lea	rdi, [rdi]
	jmp	.label_2969
.label_2969:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	nop	
	jne	.label_2985
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2966
.label_2985:
	cmp	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jle	.label_2995
	nop	
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2966
.label_2995:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x28]
	jle	.label_3000
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_3002
.label_3000:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x14], eax
.label_3002:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_2966
.label_2974:
	mov	dword ptr [rbp - 0x54], 0
.label_2966:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42aff0

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
	ja	.label_3031
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_3019]]
	mov	rsp, rsp
	jmp	rcx
.label_3871:
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rbp, rbp
	je	.label_3026
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_3022
.label_3026:
	jmp	.label_3017
.label_3872:
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
	jne	.label_3028
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_3022
.label_3028:
	jmp	.label_3017
.label_3873:
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	cmp	eax, 0x80
	jl	.label_3016
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_3022
.label_3016:
	lea	rsi, [rsi]
	jmp	.label_3027
.label_3027:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_3024
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x98]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_3030
.label_3024:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0
	jne	.label_3023
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
	je	.label_3023
.label_3030:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_3022
.label_3023:
	nop	
	jmp	.label_3017
.label_3031:
	mov	byte ptr [rbp - 0x1d], 0
	mov	rsp, rsp
	jmp	.label_3022
.label_3017:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_3025
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
	je	.label_3021
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_3029
.label_3021:
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
	je	.label_3018
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_3029
.label_3018:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	nop	
	and	ecx, 0x20
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_3020
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_3029
.label_3020:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	lea	rsi, [rsi]
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_3015
	mov	eax, dword ptr [rbp - 4]
	and	eax, 8
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_3015
.label_3029:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_3022
.label_3015:
	mov	rbp, rbp
	jmp	.label_3025
.label_3025:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], 1
.label_3022:
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x42b2f0

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
	.section	.text
	.align	16
	#Procedure 0x42b310

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
.label_3052:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_3032
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
	jne	.label_3044
	jmp	.label_3038
.label_3044:
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
	je	.label_3047
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
	je	.label_3050
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_3033
.label_3050:
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
	je	.label_3034
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_3033
.label_3034:
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
	je	.label_3036
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_3033
.label_3036:
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
	je	.label_3041
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	nop	
	jne	.label_3041
.label_3033:
	jmp	.label_3038
.label_3041:
	jmp	.label_3047
.label_3047:
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
	jne	.label_3035
	mov	rsp, rsp
	jmp	.label_3038
.label_3035:
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
	jge	.label_3048
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3042
.label_3048:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xe0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_3042:
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
	je	.label_3043
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_3039
.label_3043:
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
	jne	.label_3037
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
	jmp	.label_3045
.label_3037:
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
	je	.label_3051
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_3039
.label_3051:
	lea	rdi, [rdi]
	jmp	.label_3045
.label_3045:
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
	je	.label_3049
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_3049:
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
	jne	.label_3040
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	mov	byte ptr [rbp - 0x79], al
.label_3040:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3046
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_3039
.label_3046:
	mov	rsp, rsp
	jmp	.label_3038
.label_3038:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_3052
.label_3032:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0
.label_3039:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42b810

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
	je	.label_3095
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], 0
	lea	rdi, [rdi]
	jmp	.label_3057
.label_3095:
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
	je	.label_3053
	mov	rbp, rbp
	test	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	je	.label_3071
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_3071:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_3081
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
	je	.label_3090
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], 0
	mov	rsp, rsp
	jmp	.label_3057
.label_3090:
	mov	byte ptr [rbp - 0xd9], 1
	nop	
	jmp	.label_3057
.label_3081:
	mov	byte ptr [rbp - 0xd9], 0
	nop	
	jmp	.label_3057
.label_3053:
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
	je	.label_3116
	jmp	.label_3058
.label_3116:
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
	je	.label_3068
	jmp	.label_3058
.label_3068:
	imul	rax, qword ptr [rbp - 8], 3
	lea	rdi, [rdi]
	shl	rax, 3
	add	rax, 0x3800
	mov	rsp, rsp
	cmp	rax, 0xfc0
	jae	.label_3088
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
	jmp	.label_3099
.label_3088:
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
	je	.label_3109
	jmp	.label_3058
.label_3058:
	test	byte ptr [rbp - 0x1d], 1
	mov	rbp, rbp
	je	.label_3059
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	mov	rdi, rax
	call	free
.label_3059:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x98], 0
.label_3093:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jge	.label_3075
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
	jmp	.label_3093
.label_3075:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	mov	rsp, rsp
	je	.label_3100
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_3100:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_3057
.label_3109:
	mov	byte ptr [rbp - 0x1d], 1
.label_3099:
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
.label_3104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jge	.label_3063
	mov	qword ptr [rbp - 0x60], 0
	nop	
	mov	qword ptr [rbp - 0x50], 0
.label_3102:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3074
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
	je	.label_3060
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
	je	.label_3113
	jmp	.label_3058
.label_3113:
	jmp	.label_3060
.label_3060:
	nop	
	jmp	.label_3062
.label_3062:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3102
.label_3074:
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
	jne	.label_3077
	cmp	dword ptr [rbp - 0xd8], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0xb1], al
.label_3077:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3106
	nop	
	jmp	.label_3058
.label_3106:
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
	je	.label_3108
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
	jne	.label_3066
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd8], 0
	setne	al
	mov	byte ptr [rbp - 0xa2], al
.label_3066:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa2]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_3092
	nop	
	jmp	.label_3058
.label_3092:
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
	je	.label_3103
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_3103
	mov	byte ptr [rbp - 0xd1], 1
.label_3103:
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
	jne	.label_3087
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xd8], 0
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], al
.label_3087:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa1]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_3089
	nop	
	jmp	.label_3058
.label_3089:
	lea	rsi, [rsi]
	jmp	.label_3086
.label_3108:
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
.label_3086:
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
	jmp	.label_3104
.label_3063:
	nop	
	test	byte ptr [rbp - 0xd1], 1
	jne	.label_3072
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
	je	.label_3083
	lea	rdi, [rdi]
	jmp	.label_3058
.label_3083:
	mov	qword ptr [rbp - 0x98], 0
.label_3079:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x98], 4
	mov	rsp, rsp
	jge	.label_3115
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
.label_3054:
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_3118
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_3056
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
.label_3085:
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
	jne	.label_3067
	lea	rdi, [rdi]
	jmp	.label_3120
.label_3120:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_3085
.label_3067:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rbp, rbp
	and	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_3094
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3105
.label_3094:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
.label_3105:
	mov	rsp, rsp
	jmp	.label_3056
.label_3056:
	lea	rsi, [rsi]
	jmp	.label_3119
.label_3119:
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
	jmp	.label_3054
.label_3118:
	lea	rdi, [rdi]
	jmp	.label_3070
.label_3070:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_3079
.label_3115:
	jmp	.label_3065
.label_3072:
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
	je	.label_3091
	jmp	.label_3058
.label_3091:
	mov	qword ptr [rbp - 0x98], 0
.label_3055:
	cmp	qword ptr [rbp - 0x98], 4
	jge	.label_3107
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
.label_3112:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_3117
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_3122
	nop	
	mov	qword ptr [rbp - 0x50], 0
.label_3114:
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
	jne	.label_3069
	lea	rsi, [rsi]
	jmp	.label_3078
.label_3078:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3114
.label_3069:
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
.label_3122:
	lea	rsi, [rsi]
	jmp	.label_3084
.label_3084:
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
	jmp	.label_3112
.label_3117:
	nop	
	jmp	.label_3121
.label_3121:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_3055
.label_3107:
	jmp	.label_3065
.label_3065:
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_contain
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_3073
	jmp	.label_3076
.label_3073:
	mov	qword ptr [rbp - 0x50], 0
.label_3110:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_3082
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
	jne	.label_3097
	nop	
	jmp	.label_3096
.label_3097:
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
	je	.label_3101
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
.label_3101:
	jmp	.label_3082
.label_3096:
	mov	rbp, rbp
	jmp	.label_3098
.label_3098:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3110
.label_3082:
	lea	rsi, [rsi]
	jmp	.label_3076
.label_3076:
	test	byte ptr [rbp - 0x1d], 1
	mov	rbp, rbp
	je	.label_3061
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	free
.label_3061:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x98], 0
.label_3064:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_3080
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
	jmp	.label_3064
.label_3080:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	je	.label_3111
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_3111:
	mov	byte ptr [rbp - 0xd9], 1
.label_3057:
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
	.section	.text
	.align	16
	#Procedure 0x42c5f0

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
.label_3157:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_3141
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
	jne	.label_3177
	lea	rdi, [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	lea	rsi, [rsi]
	call	bitset_set
	mov	rbp, rbp
	jmp	.label_3124
.label_3177:
	cmp	dword ptr [rbp - 0xfc], 3
	mov	rbp, rbp
	jne	.label_3128
	nop	
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	bitset_merge
	mov	rbp, rbp
	jmp	.label_3137
.label_3128:
	cmp	dword ptr [rbp - 0xfc], 5
	jne	.label_3140
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jle	.label_3142
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	mov	rsp, rsp
	call	bitset_merge
	jmp	.label_3154
.label_3142:
	lea	rdi, [rbp - 0x90]
	mov	rbp, rbp
	call	bitset_set_all
.label_3154:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_3162
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rdi, [rdi]
	call	bitset_clear
.label_3162:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_3171
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_clear
.label_3171:
	mov	rsp, rsp
	jmp	.label_3168
.label_3140:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xfc], 7
	mov	rsp, rsp
	jne	.label_3180
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
	jne	.label_3136
	nop	
	mov	eax, 0xa
	mov	esi, eax
	mov	rbp, rbp
	lea	rdi, [rbp - 0x90]
	mov	rsp, rsp
	call	bitset_clear
.label_3136:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_3145
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	mov	rbp, rbp
	call	bitset_clear
.label_3145:
	jmp	.label_3165
.label_3180:
	jmp	.label_3135
.label_3165:
	jmp	.label_3168
.label_3168:
	jmp	.label_3137
.label_3137:
	jmp	.label_3124
.label_3124:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	je	.label_3160
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_3138
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
	je	.label_3126
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	call	bitset_set
	jmp	.label_3133
.label_3126:
	jmp	.label_3135
.label_3133:
	jmp	.label_3138
.label_3138:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	and	eax, 0x80
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_3139
	mov	rbp, rbp
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_3135
.label_3139:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_3147
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], 0
	cmp	dword ptr [rbp - 0xfc], 1
	mov	rbp, rbp
	jne	.label_3158
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_3158
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_empty
	jmp	.label_3135
.label_3158:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_3173
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
.label_3181:
	cmp	qword ptr [rbp - 0x60], 4
	jge	.label_3178
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
	jmp	.label_3181
.label_3178:
	lea	rdi, [rdi]
	jmp	.label_3152
.label_3173:
	mov	qword ptr [rbp - 0x60], 0
.label_3172:
	cmp	qword ptr [rbp - 0x60], 4
	jge	.label_3153
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
	jmp	.label_3172
.label_3153:
	nop	
	jmp	.label_3152
.label_3152:
	cmp	qword ptr [rbp - 0x108], 0
	lea	rdi, [rdi]
	jne	.label_3174
	jmp	.label_3135
.label_3174:
	lea	rdi, [rdi]
	jmp	.label_3147
.label_3147:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	je	.label_3159
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0xfc], 1
	jne	.label_3127
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	ecx, 0x16
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	je	.label_3127
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_3135
.label_3127:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	mov	rbp, rbp
	jle	.label_3144
	mov	qword ptr [rbp - 0x60], 0
.label_3175:
	cmp	qword ptr [rbp - 0x60], 4
	mov	rbp, rbp
	jge	.label_3151
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
	jmp	.label_3175
.label_3151:
	mov	rbp, rbp
	jmp	.label_3146
.label_3144:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
.label_3129:
	cmp	qword ptr [rbp - 0x60], 4
	mov	rbp, rbp
	jge	.label_3123
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
	jmp	.label_3129
.label_3123:
	lea	rsi, [rsi]
	jmp	.label_3146
.label_3146:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_3150
	jmp	.label_3135
.label_3150:
	jmp	.label_3159
.label_3159:
	jmp	.label_3160
.label_3160:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
.label_3163:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_3161
	cmp	dword ptr [rbp - 0xfc], 1
	nop	
	jne	.label_3148
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
	jne	.label_3148
	lea	rdi, [rdi]
	jmp	.label_3156
.label_3148:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_3131:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 4
	nop	
	jge	.label_3130
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
	jmp	.label_3131
.label_3130:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_3149
	jmp	.label_3156
.label_3149:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x20], 0
.label_3132:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 4
	lea	rdi, [rdi]
	jge	.label_3166
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
	jmp	.label_3132
.label_3166:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_3179
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
	je	.label_3176
	jmp	.label_3125
.label_3176:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
.label_3179:
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
	je	.label_3143
	jmp	.label_3125
.label_3143:
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jne	.label_3155
	jmp	.label_3161
.label_3155:
	lea	rsi, [rsi]
	jmp	.label_3156
.label_3156:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_3163
.label_3161:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	jne	.label_3169
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
	cmp	dword ptr [rbp - 0x14], 0