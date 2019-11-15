	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x80
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	jmp	.label_7
.label_7:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_8
.label_9:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	nop	
	mov	al, 0
	nop	
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.13
	nop	
	mov	dword ptr [rbp - 0x44], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	nop	
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4020d0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402120

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_14:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	je	.label_10
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
.label_10:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_12
	jmp	.label_13
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_14
.label_13:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	mov	edi, 5
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_11
	nop	
	movabs	rsi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.58
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.59
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmove	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402340

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x1a0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x39], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	nop	
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.29
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.30
	mov	qword ptr [rbp - 0x130], rax
	mov	rsp, rsp
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.29
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rax
	call	textdomain
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x140], rax
	lea	rdi, [rdi]
	call	atexit
	nop	
	mov	dword ptr [rbp - 0x144], eax
.label_57:
	movabs	rdx, OFFSET FLAT:short_options
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, eax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	nop	
	je	.label_35
	nop	
	mov	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	nop	
	mov	dword ptr [rbp - 0x14c], ecx
	je	.label_40
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x148]
	nop	
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], eax
	je	.label_50
	jmp	.label_25
.label_25:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	mov	rsp, rsp
	sub	eax, 0x49
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
	nop	
	je	.label_56
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x158], eax
	mov	rsp, rsp
	je	.label_64
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x148]
	nop	
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x15c], eax
	mov	rbp, rbp
	je	.label_69
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x148]
	nop	
	sub	eax, 0x66
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x160], eax
	nop	
	je	.label_22
	nop	
	jmp	.label_28
.label_28:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x164], eax
	mov	rbp, rbp
	je	.label_29
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	sub	eax, 0x73
	nop	
	mov	dword ptr [rbp - 0x168], eax
	je	.label_39
	lea	rdi, [rdi]
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_66
	jmp	.label_43
.label_43:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x170], eax
	mov	rsp, rsp
	je	.label_60
	lea	rsi, [rsi]
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x148]
	mov	rsp, rsp
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x174], eax
	je	.label_37
	lea	rdi, [rdi]
	jmp	.label_63
.label_69:
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_16
.label_37:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [parse_datetime_flags]]
	lea	rsi, [rsi]
	or	eax, 1
	mov	dword ptr [dword ptr [parse_datetime_flags]],  eax
	jmp	.label_16
.label_22:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_16
.label_60:
	movabs	rdi, OFFSET FLAT:.str.31
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:time_spec_string
	lea	rdi, [rdi]
	add	rax, 0x10
	nop	
	movabs	rcx, OFFSET FLAT:time_spec
	add	rcx, 8
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	r8d, edx
	nop	
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rdx, rax
	call	__xargmatch_internal
	movabs	rcx, OFFSET FLAT:main.rfc_3339_format
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + label_61]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], r10d
	mov	r10d, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	mov	eax, r10d
	shl	rax, 5
	add	rcx, rax
	mov	qword ptr [rbp - 0xf8], rcx
	lea	rdi, [rdi]
	jmp	.label_16
.label_56:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_33
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.32
	movabs	rdx, OFFSET FLAT:time_spec_string
	movabs	rax, OFFSET FLAT:time_spec
	mov	rbp, rbp
	mov	ecx, 4
	nop	
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rsp, rsp
	mov	rcx, rax
	call	__xargmatch_internal
	mov	rbp, rbp
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_spec]]
	mov	dword ptr [rbp - 0x178], r10d
	lea	rdi, [rdi]
	jmp	.label_21
.label_33:
	xor	eax, eax
	mov	dword ptr [rbp - 0x178], eax
	mov	rbp, rbp
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x178]
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:main.iso_8601_format
	mov	dword ptr [rbp - 0x100], eax
	mov	eax, dword ptr [rbp - 0x100]
	mov	edx, eax
	lea	rdi, [rdi]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rcx
	lea	rsi, [rsi]
	jmp	.label_16
.label_29:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_16
.label_64:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:rfc_email_format
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_16
.label_39:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_16
.label_66:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.33
	call	bad_cast
	lea	rsi, [rsi]
	mov	rdi, rax
	call	putenv
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_46
	lea	rdi, [rdi]
	call	xalloc_die
.label_46:
	mov	rbp, rbp
	jmp	.label_16
.label_50:
	xor	edi, edi
	call	usage
.label_40:
	movabs	rsi, OFFSET FLAT:.str.5
	movabs	rdx, OFFSET FLAT:.str.17_0
	movabs	r8, OFFSET FLAT:.str.35
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9d, eax
	nop	
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_63:
	nop	
	mov	edi, 1
	call	usage
.label_16:
	nop	
	cmp	qword ptr [rbp - 0xf8], 0
	nop	
	je	.label_41
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	je	.label_44
	movabs	rdi, OFFSET FLAT:.str.36
	nop	
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_44:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_41:
	jmp	.label_57
.label_35:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	edx, eax
	cmovne	edx, ecx
	cmp	qword ptr [rbp - 0x50], 0
	mov	esi, eax
	cmovne	esi, ecx
	add	edx, esi
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	cmovne	eax, ecx
	add	edx, eax
	mov	dword ptr [rbp - 0xf0], edx
	nop	
	cmp	dword ptr [rbp - 0xf0], 1
	mov	rsp, rsp
	jle	.label_58
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	call	gettext
	nop	
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_58:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x39], 1
	je	.label_32
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xf0], 0
	lea	rdi, [rdi]
	je	.label_32
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_32:
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_31
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	jge	.label_52
	movabs	rdi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	mov	rbp, rbp
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x180], rax
	call	quote
	nop	
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	edi, 1
	call	usage
.label_52:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2b
	lea	rsi, [rsi]
	jne	.label_26
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_62
	nop	
	movabs	rdi, OFFSET FLAT:.str.36
	call	gettext
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	al, 0
	nop	
	call	error
.label_62:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [optind]],  ecx
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8]
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	jmp	.label_27
.label_26:
	test	byte ptr [rbp - 0x39], 1
	mov	rbp, rbp
	jne	.label_55
	nop	
	cmp	dword ptr [rbp - 0xf0], 0
	je	.label_59
.label_55:
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	lea	rdi, [rdi]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], rax
	mov	rsp, rsp
	call	quote
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_59:
	jmp	.label_27
.label_27:
	lea	rsi, [rsi]
	jmp	.label_31
.label_31:
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jne	.label_30
	mov	rbp, rbp
	mov	edi, 0x2006c
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_38
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.41
	mov	qword ptr [rbp - 0x48], rax
.label_38:
	jmp	.label_30
.label_30:
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	mov	rsp, rsp
	call	getenv
	mov	qword ptr [rbp - 0x108], rax
	mov	rdi, qword ptr [rbp - 0x108]
	call	tzalloc
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_51
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	call	batch_convert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xe9], al
	mov	rsp, rsp
	jmp	.label_65
.label_51:
	mov	byte ptr [rbp - 0x111], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe9], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xf0], 0
	jne	.label_19
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	jne	.label_19
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_24
	mov	edx, 7
	lea	rdi, [rbp - 0x38]
	nop	
	mov	byte ptr [rbp - 0x39], 1
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	posixtime
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x111], al
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_42
.label_24:
	lea	rdi, [rbp - 0x38]
	nop	
	call	gettime
.label_42:
	nop	
	jmp	.label_47
.label_19:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	je	.label_48
	lea	rsi, [rbp - 0xe8]
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	stat
	nop	
	cmp	eax, 0
	nop	
	je	.label_54
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	dword ptr [rbp - 0x18c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x18c]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_54:
	nop	
	lea	rdi, [rbp - 0xe8]
	call	get_stat_mtime
	nop	
	mov	qword ptr [rbp - 0x128], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_53
.label_48:
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_34
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_34:
	lea	rdi, [rbp - 0x38]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [parse_datetime_flags]]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x108]
	call	parse_datetime2
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x111], al
.label_53:
	mov	rbp, rbp
	jmp	.label_47
.label_47:
	test	byte ptr [rbp - 0x111], 1
	lea	rsi, [rsi]
	jne	.label_18
	nop	
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x198], rax
	nop	
	call	quote
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_18:
	nop	
	test	byte ptr [rbp - 0x39], 1
	mov	rbp, rbp
	je	.label_17
	lea	rdi, [rbp - 0x38]
	call	settime
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_23
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.45
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x19c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x19c]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0xe9], 0
.label_23:
	nop	
	jmp	.label_17
.label_17:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	show_date
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0xe9]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	r9d, al
	and	r9d, r8d
	cmp	r9d, 0
	nop	
	setne	al
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe9], al
.label_65:
	mov	eax, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0xe9]
	lea	rsi, [rsi]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	nop	
	add	rsp, 0x1a0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ef0

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f00

	.globl batch_convert
	.type batch_convert, @function
batch_convert:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.80
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_80
	nop	
	movabs	rdi, OFFSET FLAT:.str.81
	call	gettext
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_76
.label_80:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.82
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fopen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_71
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x5c], ecx
	nop	
	call	quotearg_n_style_colon
	nop	
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_71:
	mov	rbp, rbp
	jmp	.label_76
.label_76:
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], 1
.label_75:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x38]
	lea	rsi, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getline
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	jge	.label_73
	jmp	.label_78
.label_73:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [parse_datetime_flags]]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	parse_datetime2
	test	al, 1
	mov	rsp, rsp
	jne	.label_74
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_77
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	byte ptr [rcx + rax], 0
.label_77:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	jmp	.label_72
.label_74:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	call	show_date
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	r9d, al
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	nop	
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x21], al
.label_72:
	lea	rdi, [rdi]
	jmp	.label_75
.label_78:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_79
	nop	
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], ecx
	call	quotearg_n_style_colon
	nop	
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_79:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x70
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl show_date
	.type show_date, @function
show_date:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x60]
	lea	r8, [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, r8
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	call	localtime_rz
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_81
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:rfc_email_format
	nop	
	cmp	qword ptr [rbp - 0x20], rax
	jne	.label_83
	lea	rsi, [rsi]
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
.label_83:
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x60]
	nop	
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	r8d, eax
	nop	
	call	fprintftime
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:rfc_email_format
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	jne	.label_84
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	mov	qword ptr [rbp - 0x98], rax
.label_84:
	lea	rsi, [rsi]
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputc_unlocked
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	jmp	.label_82
.label_81:
	movabs	rdi, OFFSET FLAT:.str.84
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa8], rax
	call	timetostr
	mov	rdi, rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
.label_82:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403340

	.globl timetostr
	.type timetostr, @function
timetostr:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403380

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
	#Procedure 0x4033a0

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_85:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_95
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_92
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_86
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_88
.label_86:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_93
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_91
.label_93:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_87
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_89
.label_87:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_89:
	lea	rsi, [rsi]
	jmp	.label_91
.label_91:
	mov	rbp, rbp
	jmp	.label_94
.label_94:
	mov	rsp, rsp
	jmp	.label_92
.label_92:
	nop	
	jmp	.label_96
.label_96:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_85
.label_95:
	test	byte ptr [rbp - 0x41], 1
	je	.label_90
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_88
.label_90:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_88:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403550

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_97
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_98
.label_97:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_98:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
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
	#Procedure 0x403630

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_102:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_100
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_99
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_104
.label_99:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_101
.label_104:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_101:
	jmp	.label_103
.label_103:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_102
.label_100:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037e0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_105
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_106
.label_105:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], -1
.label_106:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038a0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_109:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_111
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30]
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
	jne	.label_108
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_107
.label_108:
	lea	rdi, [rdi]
	jmp	.label_110
.label_110:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_109
.label_111:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_107:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403970
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
	#Procedure 0x4039a0
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
	#Procedure 0x4039d0

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
	je	.label_112
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_115
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_112
.label_115:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_113
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_114
.label_113:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_114:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_112:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_116
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_116:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b00

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	r9d, 0xffffffff
	mov	rsp, rsp
	lea	r10, [rbp - 0x25]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	byte ptr [rbp - 0x25], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], r8d
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r10
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0xb40
	mov	al, cl
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	nop	
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [rbp - 0x3c], r9d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], r10
	mov	dword ptr [rbp - 0x54], ecx
	mov	qword ptr [rbp - 0x60], -1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 8]
	nop	
	mov	dword ptr [rbp - 0x64], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_366
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 0x70], rax
.label_366:
	nop	
	cmp	dword ptr [rbp - 0x64], 0xc
	jle	.label_409
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0xc
	nop	
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_412
.label_409:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_416
	nop	
	mov	dword ptr [rbp - 0x64], 0xc
.label_416:
	jmp	.label_412
.label_412:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x88], rax
.label_217:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_424
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_433
	jmp	.label_449
.label_449:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	jge	.label_451
	xor	eax, eax
	mov	dword ptr [rbp - 0x83c], eax
	jmp	.label_461
.label_451:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x83c], eax
.label_461:
	mov	eax, dword ptr [rbp - 0x83c]
	mov	rbp, rbp
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x110], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	jae	.label_469
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x848], rax
	jmp	.label_482
.label_469:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x848], rax
.label_482:
	mov	rax, qword ptr [rbp - 0x848]
	mov	qword ptr [rbp - 0x118], rax
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_490
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_121
.label_490:
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_504
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jne	.label_506
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	jae	.label_506
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_516
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_526
.label_516:
	jmp	.label_530
.label_530:
	mov	qword ptr [rbp - 0x128], 0
.label_548:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	jae	.label_538
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84c], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_548
.label_538:
	lea	rsi, [rsi]
	jmp	.label_562
.label_562:
	mov	rbp, rbp
	jmp	.label_565
.label_526:
	jmp	.label_568
.label_568:
	nop	
	mov	qword ptr [rbp - 0x130], 0
.label_585:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x130]
	nop	
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_639
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x850], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_585
.label_639:
	jmp	.label_593
.label_593:
	jmp	.label_565
.label_565:
	mov	rsp, rsp
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x854], eax
.label_504:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_215
.label_433:
	lea	rsi, [rsi]
	jmp	.label_131
.label_131:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, rax
	nop	
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	esi, edx
	sub	esi, 0x23
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x858], edx
	nop	
	mov	dword ptr [rbp - 0x85c], esi
	je	.label_610
	jmp	.label_626
.label_626:
	nop	
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x860], eax
	je	.label_127
	lea	rdi, [rdi]
	jmp	.label_631
.label_631:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x864], eax
	je	.label_127
	jmp	.label_263
.label_263:
	mov	eax, dword ptr [rbp - 0x858]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x868], eax
	je	.label_127
	jmp	.label_484
.label_484:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x858]
	lea	rdi, [rdi]
	sub	eax, 0x5e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x86c], eax
	je	.label_606
	mov	rsp, rsp
	jmp	.label_228
.label_228:
	nop	
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x870], eax
	lea	rsi, [rsi]
	jne	.label_118
	mov	rsp, rsp
	jmp	.label_127
.label_127:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_131
.label_606:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe2], 1
	nop	
	jmp	.label_131
.label_610:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_131
.label_118:
	mov	rbp, rbp
	jmp	.label_147
.label_147:
	jmp	.label_148
.label_148:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_150
	mov	dword ptr [rbp - 0x3c], 0
.label_196:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jg	.label_163
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jne	.label_167
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 7
	jle	.label_167
.label_163:
	mov	dword ptr [rbp - 0x3c], 0x7fffffff
	jmp	.label_182
.label_167:
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x3c], 0xa
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], eax
.label_182:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_196
	mov	rsp, rsp
	jmp	.label_150
.label_150:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x874], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x878], edx
	je	.label_211
	lea	rsi, [rsi]
	jmp	.label_221
.label_221:
	mov	eax, dword ptr [rbp - 0x874]
	sub	eax, 0x4f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x87c], eax
	lea	rsi, [rsi]
	jne	.label_225
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x90], edx
	lea	rsi, [rsi]
	jmp	.label_231
.label_225:
	mov	dword ptr [rbp - 0x90], 0
.label_231:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x880], ecx
	nop	
	je	.label_247
	lea	rsi, [rsi]
	jmp	.label_256
.label_256:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x884], eax
	mov	rbp, rbp
	je	.label_337
	jmp	.label_169
.label_169:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x888], eax
	je	.label_266
	jmp	.label_428
.label_428:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x88c], eax
	je	.label_272
	jmp	.label_419
.label_419:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rbp, rbp
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x890], eax
	je	.label_279
	jmp	.label_288
.label_288:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x43
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x894], eax
	je	.label_289
	mov	rbp, rbp
	jmp	.label_295
.label_295:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x898], eax
	nop	
	je	.label_298
	mov	rsp, rsp
	jmp	.label_303
.label_303:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x46
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x89c], eax
	nop	
	je	.label_304
	nop	
	jmp	.label_309
.label_309:
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x8a0], eax
	je	.label_394
	jmp	.label_317
.label_317:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x8a4], eax
	je	.label_319
	jmp	.label_326
.label_326:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x49
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8a8], eax
	je	.label_327
	jmp	.label_333
.label_333:
	nop	
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8ac], eax
	je	.label_334
	jmp	.label_479
.label_479:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x8b0], eax
	je	.label_339
	jmp	.label_345
.label_345:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x8b4], eax
	nop	
	je	.label_347
	mov	rsp, rsp
	jmp	.label_353
.label_353:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8b8], eax
	lea	rsi, [rsi]
	je	.label_358
	jmp	.label_367
.label_367:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8bc], eax
	je	.label_369
	jmp	.label_373
.label_373:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x8c0], eax
	lea	rsi, [rsi]
	je	.label_375
	lea	rsi, [rsi]
	jmp	.label_381
.label_381:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	lea	rdi, [rdi]
	sub	eax, 0x55
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c4], eax
	mov	rbp, rbp
	je	.label_382
	jmp	.label_392
.label_392:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x56
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c8], eax
	je	.label_394
	jmp	.label_398
.label_398:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	lea	rdi, [rdi]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x8cc], eax
	je	.label_402
	jmp	.label_331
.label_331:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x8d0], eax
	je	.label_405
	nop	
	jmp	.label_265
.label_265:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x8d4], eax
	lea	rdi, [rdi]
	je	.label_414
	mov	rbp, rbp
	jmp	.label_310
.label_310:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8d8], eax
	lea	rsi, [rsi]
	je	.label_322
	nop	
	jmp	.label_429
.label_429:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8dc], eax
	mov	rsp, rsp
	je	.label_431
	jmp	.label_439
.label_439:
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x8e0], eax
	je	.label_441
	mov	rbp, rbp
	jmp	.label_445
.label_445:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x8e4], eax
	je	.label_447
	nop	
	jmp	.label_456
.label_456:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rbp, rbp
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8e8], eax
	je	.label_524
	nop	
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0x8ec], eax
	je	.label_468
	jmp	.label_475
.label_475:
	nop	
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x67
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8f0], eax
	mov	rbp, rbp
	je	.label_394
	mov	rsp, rsp
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 0x8f4], eax
	mov	rsp, rsp
	je	.label_441
	jmp	.label_493
.label_493:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8f8], eax
	je	.label_202
	jmp	.label_500
.label_500:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8fc], eax
	lea	rdi, [rdi]
	je	.label_253
	nop	
	jmp	.label_581
.label_581:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0x900], eax
	je	.label_509
	jmp	.label_514
.label_514:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x904], eax
	je	.label_348
	mov	rsp, rsp
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x908], eax
	je	.label_399
	jmp	.label_487
.label_487:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90c], eax
	lea	rsi, [rsi]
	je	.label_535
	jmp	.label_546
.label_546:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x910], eax
	je	.label_497
	jmp	.label_550
.label_550:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x914], eax
	je	.label_553
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rdi, [rdi]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x918], eax
	lea	rsi, [rsi]
	je	.label_561
	jmp	.label_571
.label_571:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x91c], eax
	je	.label_149
	nop	
	jmp	.label_365
.label_365:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x920], eax
	je	.label_151
	lea	rdi, [rdi]
	jmp	.label_587
.label_587:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x924], eax
	je	.label_590
	jmp	.label_594
.label_594:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x928], eax
	je	.label_570
	jmp	.label_296
.label_296:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x79
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x92c], eax
	je	.label_602
	jmp	.label_341
.label_341:
	nop	
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x930], eax
	je	.label_609
	jmp	.label_388
.label_337:
	nop	
	cmp	dword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	je	.label_617
	jmp	.label_257
.label_617:
	mov	rsp, rsp
	jmp	.label_623
.label_623:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jge	.label_270
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x934], eax
	jmp	.label_629
.label_270:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x934], eax
.label_629:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x934]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x140], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rbp - 0x140]
	jae	.label_637
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	qword ptr [rbp - 0x940], rax
	lea	rsi, [rsi]
	jmp	.label_648
.label_637:
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x940], rax
.label_648:
	nop	
	mov	rax, qword ptr [rbp - 0x940]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_119
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_121
.label_119:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_140
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_145
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	jae	.label_145
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	sub	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_158
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_168
.label_158:
	nop	
	jmp	.label_172
.label_172:
	nop	
	mov	qword ptr [rbp - 0x158], 0
.label_192:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	jae	.label_179
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x944], eax
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	mov	rbp, rbp
	jmp	.label_192
.label_179:
	lea	rdi, [rdi]
	jmp	.label_201
.label_201:
	nop	
	jmp	.label_195
.label_168:
	lea	rdi, [rdi]
	jmp	.label_204
.label_204:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], 0
.label_220:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	jae	.label_212
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0x948], eax
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_220
.label_212:
	lea	rsi, [rsi]
	jmp	.label_230
.label_230:
	lea	rsi, [rsi]
	jmp	.label_195
.label_195:
	mov	rsp, rsp
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0x94c], eax
.label_140:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_210
.label_431:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_649
	lea	rsi, [rsi]
	jmp	.label_257
.label_649:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xf1], 1
	nop	
	je	.label_259
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_259:
	mov	rsp, rsp
	jmp	.label_238
.label_272:
	cmp	dword ptr [rbp - 0x90], 0
	nop	
	je	.label_269
	mov	rsp, rsp
	jmp	.label_257
.label_269:
	test	byte ptr [rbp - 0xf1], 1
	lea	rdi, [rdi]
	je	.label_273
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_273:
	lea	rdi, [rdi]
	jmp	.label_238
.label_441:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xf1], 1
	lea	rdi, [rdi]
	je	.label_286
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe2], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe1], 0
.label_286:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	nop	
	jne	.label_577
	nop	
	jmp	.label_257
.label_577:
	nop	
	jmp	.label_238
.label_279:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_616
	jmp	.label_257
.label_616:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_305
	mov	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe1], 0
.label_305:
	jmp	.label_238
.label_447:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_313
	jmp	.label_257
.label_313:
	lea	rdi, [rdi]
	jmp	.label_238
.label_330:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_501:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	and	cl, 1
	mov	rsp, rsp
	movzx	ecx, cl
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	nop	
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	nop	
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_343
	xor	eax, eax
	mov	dword ptr [rbp - 0x950], eax
	mov	rbp, rbp
	jmp	.label_354
.label_343:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x950], eax
.label_354:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x178], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rcx, qword ptr [rbp - 0x178]
	nop	
	jae	.label_214
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x958], rax
	nop	
	jmp	.label_377
.label_214:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x958], rax
.label_377:
	mov	rax, qword ptr [rbp - 0x958]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rax
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_384
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_121
.label_384:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_401
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_216
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	nop	
	cmp	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	jae	.label_216
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x188], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_411
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_174
.label_411:
	mov	rbp, rbp
	jmp	.label_423
.label_423:
	nop	
	mov	qword ptr [rbp - 0x190], 0
.label_443:
	mov	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_430
	lea	rdi, [rdi]
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x95c], eax
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, 1
	mov	qword ptr [rbp - 0x190], rax
	mov	rsp, rsp
	jmp	.label_443
.label_430:
	nop	
	jmp	.label_448
.label_448:
	nop	
	jmp	.label_450
.label_174:
	jmp	.label_452
.label_452:
	mov	qword ptr [rbp - 0x198], 0
.label_471:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_458
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x960], eax
	mov	rax, qword ptr [rbp - 0x198]
	add	rax, 1
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_471
.label_458:
	jmp	.label_477
.label_477:
	mov	rsp, rsp
	jmp	.label_450
.label_450:
	jmp	.label_216
.label_216:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	r9d, dword ptr [rbp - 0xfc]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x54]
	and	al, 1
	movzx	ebx, al
	mov	qword ptr [rbp - 0x968], rcx
	mov	ecx, ebx
	mov	r14, qword ptr [rbp - 0x968]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	lea	rdi, [rdi]
	call	__strftime_internal
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x970], rax
.label_401:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_210
.label_238:
	lea	rax, [rbp - 0x19d]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x25
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_513
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x1a8]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a8], rsi
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
.label_513:
	mov	eax, 0x400
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0x19d]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x5b0]
	nop	
	mov	eax, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	mov	r9, r8
	add	r9, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a8], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	strftime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5b8], rax
	cmp	qword ptr [rbp - 0x5b8], 0
	mov	rsp, rsp
	je	.label_251
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x5b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x5c0], rax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jge	.label_591
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x974], eax
	mov	rsp, rsp
	jmp	.label_595
.label_591:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x974], eax
.label_595:
	nop	
	mov	eax, dword ptr [rbp - 0x974]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	cmp	rcx, qword ptr [rbp - 0x5c8]
	mov	rsp, rsp
	jae	.label_129
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	qword ptr [rbp - 0x980], rax
	jmp	.label_615
.label_129:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x980], rax
.label_615:
	mov	rax, qword ptr [rbp - 0x980]
	mov	qword ptr [rbp - 0x5d0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5d0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, rcx
	jb	.label_624
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_121
.label_624:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_249
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_194
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x5c8]
	lea	rsi, [rsi]
	jae	.label_194
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x5d8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_645
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_658
.label_645:
	nop	
	jmp	.label_122
.label_122:
	mov	qword ptr [rbp - 0x5e0], 0
.label_141:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5d8]
	lea	rdi, [rdi]
	jae	.label_126
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x984], eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5e0], rax
	jmp	.label_141
.label_126:
	jmp	.label_154
.label_154:
	lea	rdi, [rdi]
	jmp	.label_157
.label_658:
	nop	
	jmp	.label_160
.label_160:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e8], 0
.label_180:
	nop	
	mov	rax, qword ptr [rbp - 0x5e8]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_166
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x988], eax
	mov	rax, qword ptr [rbp - 0x5e8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x5e8], rax
	jmp	.label_180
.label_166:
	mov	rbp, rbp
	jmp	.label_187
.label_187:
	jmp	.label_157
.label_157:
	jmp	.label_194
.label_194:
	jmp	.label_197
.label_197:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	lea	rdi, [rdi]
	je	.label_198
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	mov	rsp, rsp
	call	fwrite_lowcase
	jmp	.label_209
.label_198:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_213
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	fwrite_uppcase
	mov	rsp, rsp
	jmp	.label_494
.label_213:
	nop	
	mov	eax, 1
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x5b0]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x990], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x990]
	mov	rsp, rsp
	call	fwrite
	nop	
	mov	qword ptr [rbp - 0x998], rax
.label_494:
	jmp	.label_209
.label_209:
	lea	rdi, [rdi]
	jmp	.label_248
.label_248:
	jmp	.label_249
.label_249:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5d0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_251
.label_251:
	jmp	.label_210
.label_289:
	cmp	dword ptr [rbp - 0x90], 0x45
	nop	
	jne	.label_260
	nop	
	jmp	.label_238
.label_260:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x99c], eax
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x99c]
	mov	rbp, rbp
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ec], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	idiv	esi
	mov	rsp, rsp
	cmp	edx, 0
	mov	byte ptr [rbp - 0x99d], cl
	jge	.label_267
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ec]
	mov	rsp, rsp
	setl	cl
	mov	byte ptr [rbp - 0x99d], cl
.label_267:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x99d]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ec]
	sub	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5ec], edx
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x5ec]
	nop	
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_292
.label_570:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x4f
	nop	
	jne	.label_315
	lea	rdi, [rdi]
	jmp	.label_257
.label_315:
	jmp	.label_238
.label_298:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_323
	mov	rsp, rsp
	jmp	.label_257
.label_323:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.1_2
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_330
.label_524:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_374
	mov	rbp, rbp
	jmp	.label_257
.label_374:
	lea	rdi, [rdi]
	jmp	.label_340
.label_340:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	lea	rsi, [rsi]
	jmp	.label_143
.label_468:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_351
	mov	rsp, rsp
	jmp	.label_257
.label_351:
	jmp	.label_359
.label_359:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_361
.label_425:
	mov	byte ptr [rbp - 0x9e], 1
	mov	rbp, rbp
	jmp	.label_371
.label_292:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_529
	nop	
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x8c], eax
.label_529:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x99e], cl
	nop	
	jne	.label_378
	nop	
	mov	al, 1
	mov	ecx, 0x270f
	nop	
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99f], al
	mov	rsp, rsp
	jb	.label_611
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	nop	
	cmp	eax, dword ptr [rbp - 0x3c]
	setl	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99f], cl
.label_611:
	mov	al, byte ptr [rbp - 0x99f]
	mov	byte ptr [rbp - 0x99e], al
.label_378:
	nop	
	mov	al, byte ptr [rbp - 0x99e]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], al
	mov	rbp, rbp
	jmp	.label_403
.label_361:
	nop	
	cmp	dword ptr [rbp - 0x8c], 0
	mov	rbp, rbp
	jne	.label_408
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_408:
	mov	rsp, rsp
	jmp	.label_143
.label_143:
	cmp	dword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_328:
	mov	byte ptr [rbp - 0x9e], 0
.label_403:
	mov	dword ptr [rbp - 0xa4], 0
.label_371:
	cmp	dword ptr [rbp - 0x90], 0x4f
	mov	rsp, rsp
	jne	.label_434
	nop	
	test	byte ptr [rbp - 0x9d], 1
	nop	
	jne	.label_434
	nop	
	jmp	.label_238
.label_434:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x9d], 1
	mov	rbp, rbp
	je	.label_444
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
.label_444:
	mov	rbp, rbp
	jmp	.label_460
.label_460:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_465
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0x3a
.label_465:
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sar	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9a4], eax
	mov	eax, ecx
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x9a4]
	lea	rsi, [rsi]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	nop	
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x9a5], al
	jne	.label_480
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9a5], al
.label_480:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x9a5]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_460
	mov	rbp, rbp
	jmp	.label_523
.label_523:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_525
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
.label_525:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x9d], 1
	je	.label_537
	mov	rbp, rbp
	mov	eax, 0x2d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9ac], eax
	nop	
	jmp	.label_543
.label_537:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9ac], eax
.label_543:
	mov	eax, dword ptr [rbp - 0x9ac]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_556
	cmp	byte ptr [rbp - 0xb1], 0
	lea	rsi, [rsi]
	je	.label_183
	jmp	.label_573
.label_573:
	mov	qword ptr [rbp - 0x5f8], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jge	.label_576
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9b0], eax
	lea	rdi, [rdi]
	jmp	.label_582
.label_576:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9b0], eax
.label_582:
	mov	eax, dword ptr [rbp - 0x9b0]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x600], rcx
	mov	rcx, qword ptr [rbp - 0x5f8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x600]
	lea	rdi, [rdi]
	jae	.label_588
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x9b8], rax
	nop	
	jmp	.label_597
.label_588:
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x9b8], rax
.label_597:
	mov	rax, qword ptr [rbp - 0x9b8]
	mov	qword ptr [rbp - 0x608], rax
	nop	
	mov	rax, qword ptr [rbp - 0x608]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_605
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_121
.label_605:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_621
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_173
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x600]
	nop	
	jae	.label_173
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	sub	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x610], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_632
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_640
.label_632:
	mov	rbp, rbp
	jmp	.label_643
.label_643:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x618], 0
.label_124:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x618]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x610]
	lea	rsi, [rsi]
	jae	.label_651
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0x9bc], eax
	mov	rax, qword ptr [rbp - 0x618]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x618], rax
	jmp	.label_124
.label_651:
	jmp	.label_136
.label_136:
	lea	rdi, [rdi]
	jmp	.label_137
.label_640:
	mov	rbp, rbp
	jmp	.label_240
.label_240:
	mov	qword ptr [rbp - 0x620], 0
.label_161:
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x610]
	nop	
	jae	.label_146
	lea	rsi, [rsi]
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0x9c0], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x620]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x620], rax
	jmp	.label_161
.label_146:
	mov	rsp, rsp
	jmp	.label_170
.label_170:
	jmp	.label_137
.label_137:
	nop	
	jmp	.label_173
.label_173:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9c4], eax
.label_621:
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_183
.label_183:
	lea	rsi, [rsi]
	jmp	.label_188
.label_556:
	nop	
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rbp, rbp
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	mov	rsp, rsp
	movsxd	rax, edi
	sub	rcx, rax
	mov	rsp, rsp
	mov	edi, ecx
	mov	dword ptr [rbp - 0x624], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x624], 0
	jle	.label_193
	cmp	dword ptr [rbp - 0x8c], 0x5f
	lea	rdi, [rdi]
	jne	.label_218
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jb	.label_226
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_121
.label_226:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_237
	mov	rsp, rsp
	jmp	.label_239
.label_239:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x630], 0
.label_255:
	mov	rax, qword ptr [rbp - 0x630]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_245
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9c8], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x630]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x630], rax
	nop	
	jmp	.label_255
.label_245:
	jmp	.label_387
.label_387:
	jmp	.label_237
.label_237:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x3c]
	cmp	ecx, dword ptr [rbp - 0x624]
	mov	rbp, rbp
	jle	.label_268
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x624]
	nop	
	mov	dword ptr [rbp - 0x9cc], eax
	lea	rsi, [rsi]
	jmp	.label_275
.label_268:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x9cc], eax
	mov	rsp, rsp
	jmp	.label_275
.label_275:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9cc]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	nop	
	je	.label_287
	jmp	.label_383
.label_383:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x638], 1
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jge	.label_294
	xor	eax, eax
	mov	dword ptr [rbp - 0x9d0], eax
	mov	rbp, rbp
	jmp	.label_300
.label_294:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9d0], eax
.label_300:
	mov	eax, dword ptr [rbp - 0x9d0]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x640], rcx
	mov	rcx, qword ptr [rbp - 0x638]
	cmp	rcx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	jae	.label_650
	nop	
	mov	rax, qword ptr [rbp - 0x640]
	nop	
	mov	qword ptr [rbp - 0x9d8], rax
	jmp	.label_314
.label_650:
	nop	
	mov	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x9d8], rax
.label_314:
	mov	rax, qword ptr [rbp - 0x9d8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x648], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x648]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_325
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_121
.label_325:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_338
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_342
	mov	rax, qword ptr [rbp - 0x638]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x640]
	jae	.label_342
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x638]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_352
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_364
.label_352:
	jmp	.label_370
.label_370:
	mov	qword ptr [rbp - 0x658], 0
.label_380:
	mov	rax, qword ptr [rbp - 0x658]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_372
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9dc], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x658]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x658], rax
	lea	rsi, [rsi]
	jmp	.label_380
.label_372:
	jmp	.label_391
.label_391:
	mov	rsp, rsp
	jmp	.label_393
.label_364:
	mov	rsp, rsp
	jmp	.label_396
.label_396:
	nop	
	mov	qword ptr [rbp - 0x660], 0
.label_407:
	mov	rax, qword ptr [rbp - 0x660]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_400
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9e0], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x660]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x660], rax
	lea	rdi, [rdi]
	jmp	.label_407
.label_400:
	jmp	.label_418
.label_418:
	jmp	.label_393
.label_393:
	jmp	.label_342
.label_342:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x9e4], eax
.label_338:
	nop	
	mov	rax, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_287
.label_287:
	jmp	.label_435
.label_218:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_436
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_121
.label_436:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_446
	mov	rbp, rbp
	jmp	.label_495
.label_495:
	mov	qword ptr [rbp - 0x668], 1
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jge	.label_453
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x9e8], eax
	jmp	.label_463
.label_453:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9e8], eax
.label_463:
	mov	eax, dword ptr [rbp - 0x9e8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_472
	mov	rax, qword ptr [rbp - 0x670]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9f0], rax
	jmp	.label_481
.label_472:
	mov	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9f0], rax
.label_481:
	mov	rax, qword ptr [rbp - 0x9f0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_491
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jmp	.label_121
.label_491:
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	je	.label_505
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jne	.label_254
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x668]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_254
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_517
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_527
.label_517:
	jmp	.label_532
.label_532:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x688], 0
.label_551:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	rax, qword ptr [rbp - 0x680]
	mov	rsp, rsp
	jae	.label_540
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0x9f4], eax
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	lea	rsi, [rsi]
	jmp	.label_551
.label_540:
	mov	rbp, rbp
	jmp	.label_563
.label_563:
	jmp	.label_357
.label_527:
	lea	rsi, [rsi]
	jmp	.label_567
.label_567:
	mov	qword ptr [rbp - 0x690], 0
.label_584:
	mov	rax, qword ptr [rbp - 0x690]
	cmp	rax, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	jae	.label_574
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9f8], eax
	nop	
	mov	rax, qword ptr [rbp - 0x690]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x690], rax
	lea	rdi, [rdi]
	jmp	.label_584
.label_574:
	lea	rdi, [rdi]
	jmp	.label_592
.label_592:
	jmp	.label_357
.label_357:
	lea	rsi, [rsi]
	jmp	.label_254
.label_254:
	movsx	edi, byte ptr [rbp - 0xb1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9fc], eax
.label_505:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x678]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_446
.label_446:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_608
	jmp	.label_613
.label_613:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x698], 0
.label_627:
	mov	rax, qword ptr [rbp - 0x698]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x624]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_619
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0xa00], eax
	mov	rax, qword ptr [rbp - 0x698]
	add	rax, 1
	mov	qword ptr [rbp - 0x698], rax
	lea	rsi, [rsi]
	jmp	.label_627
.label_619:
	jmp	.label_533
.label_533:
	mov	rsp, rsp
	jmp	.label_608
.label_608:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_435:
	jmp	.label_276
.label_193:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0xb1], 0
	nop	
	je	.label_271
	jmp	.label_652
.label_652:
	mov	qword ptr [rbp - 0x6a0], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_655
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa04], eax
	lea	rdi, [rdi]
	jmp	.label_120
.label_655:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa04], eax
.label_120:
	nop	
	mov	eax, dword ptr [rbp - 0xa04]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6a8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x6a0]
	cmp	rcx, qword ptr [rbp - 0x6a8]
	nop	
	jae	.label_132
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6a8]
	mov	qword ptr [rbp - 0xa10], rax
	nop	
	jmp	.label_653
.label_132:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0xa10], rax
.label_653:
	mov	rax, qword ptr [rbp - 0xa10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b0], rax
	mov	rax, qword ptr [rbp - 0x6b0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_320
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_121
.label_320:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_404
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_184
	mov	rax, qword ptr [rbp - 0x6a0]
	cmp	rax, qword ptr [rbp - 0x6a8]
	mov	rsp, rsp
	jae	.label_184
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0x6b8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_492
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_203
.label_492:
	lea	rsi, [rsi]
	jmp	.label_205
.label_205:
	mov	qword ptr [rbp - 0x6c0], 0
.label_219:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x6c0]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_557
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa14], eax
	mov	rax, qword ptr [rbp - 0x6c0]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6c0], rax
	mov	rbp, rbp
	jmp	.label_219
.label_557:
	jmp	.label_630
.label_630:
	lea	rsi, [rsi]
	jmp	.label_233
.label_203:
	jmp	.label_236
.label_236:
	mov	qword ptr [rbp - 0x6c8], 0
.label_250:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x6c8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_601
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa18], eax
	mov	rax, qword ptr [rbp - 0x6c8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6c8], rax
	jmp	.label_250
.label_601:
	jmp	.label_262
.label_262:
	mov	rbp, rbp
	jmp	.label_233
.label_233:
	jmp	.label_184
.label_184:
	movsx	edi, byte ptr [rbp - 0xb1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa1c], eax
.label_404:
	mov	rax, qword ptr [rbp - 0x6b0]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_271
.label_271:
	mov	rbp, rbp
	jmp	.label_276
.label_276:
	mov	rbp, rbp
	jmp	.label_188
.label_188:
	jmp	.label_282
.label_282:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6d0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jge	.label_284
	xor	eax, eax
	mov	dword ptr [rbp - 0xa20], eax
	lea	rsi, [rsi]
	jmp	.label_293
.label_284:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa20], eax
.label_293:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa20]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_301
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0xa28], rax
	jmp	.label_308
.label_301:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0xa28], rax
.label_308:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa28]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_316
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jmp	.label_121
.label_316:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_332
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_335
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6d0]
	nop	
	cmp	rax, qword ptr [rbp - 0x6d8]
	lea	rsi, [rsi]
	jae	.label_335
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_344
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_356
.label_344:
	nop	
	jmp	.label_362
.label_362:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6f0], 0
.label_376:
	mov	rax, qword ptr [rbp - 0x6f0]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_368
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa2c], eax
	mov	rax, qword ptr [rbp - 0x6f0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	jmp	.label_376
.label_368:
	jmp	.label_600
.label_600:
	jmp	.label_241
.label_356:
	lea	rdi, [rdi]
	jmp	.label_386
.label_386:
	mov	qword ptr [rbp - 0x6f8], 0
.label_171:
	mov	rax, qword ptr [rbp - 0x6f8]
	cmp	rax, qword ptr [rbp - 0x6e8]
	lea	rdi, [rdi]
	jae	.label_390
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0xa30], eax
	mov	rax, qword ptr [rbp - 0x6f8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6f8], rax
	nop	
	jmp	.label_171
.label_390:
	lea	rdi, [rdi]
	jmp	.label_406
.label_406:
	nop	
	jmp	.label_241
.label_241:
	jmp	.label_335
.label_335:
	lea	rdi, [rdi]
	jmp	.label_410
.label_410:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	je	.label_413
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	nop	
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_422
.label_413:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	je	.label_426
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x6d0]
	lea	rsi, [rsi]
	call	fwrite_uppcase
	jmp	.label_242
.label_426:
	nop	
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x6d0]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fwrite
	mov	qword ptr [rbp - 0xa38], rax
.label_242:
	mov	rbp, rbp
	jmp	.label_422
.label_422:
	mov	rsp, rsp
	jmp	.label_455
.label_455:
	lea	rdi, [rdi]
	jmp	.label_332
.label_332:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_210
.label_304:
	cmp	dword ptr [rbp - 0x90], 0
	nop	
	je	.label_470
	jmp	.label_257
.label_470:
	cmp	dword ptr [rbp - 0x8c], 0
	nop	
	jne	.label_476
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jge	.label_476
	mov	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_483
.label_476:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_489
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xfc], 0
.label_489:
	jmp	.label_483
.label_483:
	movabs	rax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_501
.label_319:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_507
	jmp	.label_257
.label_507:
	jmp	.label_512
.label_512:
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_143
.label_327:
	nop	
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_519
	mov	rbp, rbp
	jmp	.label_257
.label_519:
	mov	rbp, rbp
	jmp	.label_528
.label_528:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_143
.label_253:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_544
	jmp	.label_257
.label_544:
	jmp	.label_547
.label_547:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_361
.label_509:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_555
	lea	rdi, [rdi]
	jmp	.label_257
.label_555:
	jmp	.label_566
.label_566:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_361
.label_202:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_580
	jmp	.label_257
.label_580:
	nop	
	jmp	.label_583
.label_583:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	edx, dword ptr [rax + 0x1c]
	nop	
	add	edx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], edx
	lea	rdi, [rdi]
	jmp	.label_328
.label_334:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_596
	mov	rbp, rbp
	jmp	.label_257
.label_596:
	jmp	.label_603
.label_603:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_143
.label_348:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_363
	lea	rdi, [rdi]
	jmp	.label_257
.label_363:
	mov	rbp, rbp
	jmp	.label_618
.label_618:
	nop	
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_328
.label_339:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rsi, [rsi]
	jne	.label_633
	jmp	.label_257
.label_633:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], -1
	lea	rdi, [rdi]
	jne	.label_638
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 9
	jmp	.label_139
.label_638:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6fc], eax
.label_117:
	nop	
	cmp	dword ptr [rbp - 0x6fc], 9
	jge	.label_654
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa3c], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0xa3c]
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x6fc]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x6fc], eax
	jmp	.label_117
.label_654:
	jmp	.label_139
.label_139:
	jmp	.label_142
.label_142:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_143
.label_399:
	jmp	.label_153
.label_153:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x708], 1
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jge	.label_156
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0xa40], eax
	nop	
	jmp	.label_164
.label_156:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa40], eax
.label_164:
	mov	eax, dword ptr [rbp - 0xa40]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x710], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	jae	.label_175
	mov	rax, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa48], rax
	jmp	.label_189
.label_175:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0xa48], rax
.label_189:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_200
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_121
.label_200:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	je	.label_635
	cmp	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	jne	.label_222
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	jae	.label_222
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x708]
	nop	
	mov	qword ptr [rbp - 0x720], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rdi, [rdi]
	je	.label_234
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_244
.label_234:
	jmp	.label_290
.label_290:
	mov	qword ptr [rbp - 0x728], 0
.label_539:
	mov	rax, qword ptr [rbp - 0x728]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x720]
	lea	rdi, [rdi]
	jae	.label_252
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4c], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x728]
	add	rax, 1
	mov	qword ptr [rbp - 0x728], rax
	jmp	.label_539
.label_252:
	jmp	.label_285
.label_285:
	lea	rdi, [rdi]
	jmp	.label_437
.label_244:
	lea	rdi, [rdi]
	jmp	.label_274
.label_274:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x730], 0
.label_291:
	mov	rax, qword ptr [rbp - 0x730]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_280
	nop	
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0xa50], eax
	mov	rax, qword ptr [rbp - 0x730]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x730], rax
	jmp	.label_291
.label_280:
	mov	rbp, rbp
	jmp	.label_299
.label_299:
	lea	rsi, [rsi]
	jmp	.label_437
.label_437:
	jmp	.label_222
.label_222:
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa54], eax
.label_635:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_210
.label_347:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_535:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_318
	mov	byte ptr [rbp - 0xe2], 0
	nop	
	mov	byte ptr [rbp - 0xe1], 1
.label_318:
	mov	rbp, rbp
	jmp	.label_238
.label_497:
	mov	rsp, rsp
	jmp	.label_486
.label_486:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	imul	ecx, dword ptr [rax + 0x10], 0xb
	mov	rsp, rsp
	sar	ecx, 5
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_328
.label_358:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.3_1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_330
.label_553:
	jmp	.label_238
.label_369:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rsi, [rsi]
	jne	.label_350
	mov	rsp, rsp
	jmp	.label_257
.label_350:
	lea	rsi, [rsi]
	jmp	.label_355
.label_355:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_143
.label_561:
	nop	
	lea	rax, [rbp - 0x768]
	mov	rsp, rsp
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa60], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa60]
	mov	rbp, rbp
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x770], rax
	add	rdx, 0x17
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x770], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_427:
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x770]
	nop	
	cqo	
	idiv	rcx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x774], esi
	mov	rdx, qword ptr [rbp - 0x770]
	mov	rsp, rsp
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x770], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9d], 1
	mov	rsp, rsp
	je	.label_569
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0xa64], eax
	mov	rsp, rsp
	jmp	.label_302
.label_569:
	nop	
	mov	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0xa64], eax
.label_302:
	mov	eax, dword ptr [rbp - 0xa64]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx - 1], cl
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x770], 0
	jne	.label_427
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], 0
	mov	rsp, rsp
	jmp	.label_523
.label_405:
	cmp	dword ptr [rbp - 0x90], 0x4f
	lea	rdi, [rdi]
	jne	.label_508
	mov	rsp, rsp
	jmp	.label_257
.label_508:
	jmp	.label_238
.label_375:
	movabs	rax, OFFSET FLAT:.str.4_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_330
.label_149:
	jmp	.label_473
.label_473:
	mov	qword ptr [rbp - 0x780], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_474
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0xa68], eax
	mov	rbp, rbp
	jmp	.label_243
.label_474:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa68], eax
.label_243:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa68]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x788], rcx
	mov	rcx, qword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x788]
	jae	.label_462
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x788]
	mov	qword ptr [rbp - 0xa70], rax
	mov	rbp, rbp
	jmp	.label_307
.label_462:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x780]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa70], rax
.label_307:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa70]
	mov	qword ptr [rbp - 0x790], rax
	mov	rax, qword ptr [rbp - 0x790]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, rcx
	jb	.label_656
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_121
.label_656:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_176
	cmp	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	jne	.label_162
	mov	rax, qword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x788]
	lea	rdi, [rdi]
	jae	.label_162
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x798], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_542
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_536
.label_542:
	jmp	.label_554
.label_554:
	mov	qword ptr [rbp - 0x7a0], 0
.label_575:
	mov	rax, qword ptr [rbp - 0x7a0]
	nop	
	cmp	rax, qword ptr [rbp - 0x798]
	lea	rdi, [rdi]
	jae	.label_560
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa74], eax
	mov	rax, qword ptr [rbp - 0x7a0]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x7a0], rax
	jmp	.label_575
.label_560:
	mov	rbp, rbp
	jmp	.label_558
.label_558:
	jmp	.label_586
.label_536:
	lea	rsi, [rsi]
	jmp	.label_191
.label_191:
	mov	qword ptr [rbp - 0x7a8], 0
.label_598:
	mov	rax, qword ptr [rbp - 0x7a8]
	cmp	rax, qword ptr [rbp - 0x798]
	nop	
	jae	.label_278
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0xa78], eax
	nop	
	mov	rax, qword ptr [rbp - 0x7a8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a8], rax
	mov	rsp, rsp
	jmp	.label_598
.label_278:
	jmp	.label_329
.label_329:
	jmp	.label_586
.label_586:
	mov	rbp, rbp
	jmp	.label_162
.label_162:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa7c], eax
.label_176:
	mov	rax, qword ptr [rbp - 0x790]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_210
.label_151:
	jmp	.label_625
.label_625:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x18]
	nop	
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0xa80], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa80]
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	jmp	.label_143
.label_382:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_642
	mov	rsp, rsp
	jmp	.label_257
.label_642:
	jmp	.label_647
.label_647:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xa84], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xa84]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_143
.label_394:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_138
	mov	rsp, rsp
	jmp	.label_257
.label_138:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x7ac], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7b0], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7b4], eax
	cmp	dword ptr [rbp - 0x7b4], 0
	nop	
	jge	.label_395
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7b0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x7ac]
	nop	
	sub	edi, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa88], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0xa88]
	lea	rsi, [rsi]
	idiv	edi
	cmp	edx, 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8c], esi
	mov	byte ptr [rbp - 0xa8d], cl
	jne	.label_181
	nop	
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	mov	rsp, rsp
	sub	edx, 1
	mov	byte ptr [rbp - 0xa8e], al
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xa8e]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa8f], sil
	lea	rsi, [rsi]
	jne	.label_207
	nop	
	mov	eax, 0x190
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7ac]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	dword ptr [rbp - 0xa94], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa94]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0xa8f], sil
.label_207:
	mov	al, byte ptr [rbp - 0xa8f]
	mov	byte ptr [rbp - 0xa8d], al
.label_181:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xa8d]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	nop	
	mov	edx, dword ptr [rbp - 0xa8c]
	add	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	edi, edx
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7b4], eax
	mov	rsp, rsp
	jmp	.label_258
.label_395:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0xa98], eax
	mov	eax, edi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0xa98]
	lea	rdi, [rdi]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0xa9c], esi
	mov	byte ptr [rbp - 0xa9d], cl
	mov	rbp, rbp
	jne	.label_264
	nop	
	mov	al, 1
	mov	ecx, 0x64
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x7ac]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa9e], al
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xa9e]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9f], sil
	jne	.label_283
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xaa4], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xaa4]
	mov	rbp, rbp
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9f], sil
.label_283:
	mov	al, byte ptr [rbp - 0xa9f]
	mov	byte ptr [rbp - 0xa9d], al
.label_264:
	mov	al, byte ptr [rbp - 0xa9d]
	and	al, 1
	movzx	ecx, al
	nop	
	add	ecx, 0x16d
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xa9c]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7b8], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x7b8]
	nop	
	jg	.label_324
	nop	
	mov	dword ptr [rbp - 0x7b0], 1
	nop	
	mov	eax, dword ptr [rbp - 0x7b8]
	mov	dword ptr [rbp - 0x7b4], eax
.label_324:
	mov	rsp, rsp
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0xaa8], ecx
	mov	dword ptr [rbp - 0xaac], edx
	je	.label_336
	mov	rsp, rsp
	jmp	.label_346
.label_346:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xaa8]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xab0], eax
	jne	.label_349
	mov	rsp, rsp
	jmp	.label_227
.label_227:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xab4], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xab4]
	nop	
	idiv	esi
	add	edx, dword ptr [rbp - 0x7b0]
	mov	eax, edx
	cdq	
	nop	
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0x7bc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x7bc]
	lea	rdi, [rdi]
	jg	.label_360
	mov	eax, dword ptr [rbp - 0x7bc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xab8], eax
	jmp	.label_385
.label_360:
	mov	rbp, rbp
	mov	eax, 0xfffff894
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	jge	.label_389
	xor	eax, eax
	nop	
	sub	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xabc], eax
	jmp	.label_397
.label_389:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7bc]
	nop	
	add	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xabc], eax
.label_397:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xabc]
	mov	dword ptr [rbp - 0xab8], eax
.label_385:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xab8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_292
.label_336:
	jmp	.label_415
.label_415:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	lea	rdi, [rdi]
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x7b0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_292
.label_349:
	jmp	.label_442
.label_442:
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x7b4]
	mov	dword ptr [rbp - 0xac0], eax
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac0]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_143
.label_402:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_459
	jmp	.label_257
.label_459:
	jmp	.label_466
.label_466:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	esi, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	sub	esi, 1
	add	esi, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac4], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	dword ptr [rbp - 0xac8], edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0xac4]
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xac8]
	mov	rsp, rsp
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_143
.label_590:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_229
	lea	rsi, [rsi]
	jmp	.label_257
.label_229:
	jmp	.label_502
.label_502:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_143
.label_414:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_511
	lea	rsi, [rsi]
	jmp	.label_238
.label_511:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x4f
	lea	rsi, [rsi]
	jne	.label_515
	mov	rbp, rbp
	jmp	.label_257
.label_515:
	jmp	.label_522
.label_522:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x14]
	mov	rsp, rsp
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_292
.label_602:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_144
	jmp	.label_238
.label_144:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xacc], eax
	nop	
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0xacc]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c0], edx
	cmp	dword ptr [rbp - 0x7c0], 0
	jge	.label_552
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_572
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xad0], eax
	mov	rsp, rsp
	jmp	.label_579
.label_572:
	mov	eax, dword ptr [rbp - 0x7c0]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xad0], eax
.label_579:
	mov	eax, dword ptr [rbp - 0xad0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c0], eax
.label_552:
	jmp	.label_223
.label_223:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	jmp	.label_292
.label_322:
	test	byte ptr [rbp - 0xf1], 1
	lea	rsi, [rsi]
	je	.label_599
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe1], 1
.label_599:
	mov	rsp, rsp
	jmp	.label_607
.label_607:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_614
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xad4], eax
	mov	rsp, rsp
	jmp	.label_620
.label_614:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xad4], eax
.label_620:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xad4]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x7c8]
	cmp	rcx, qword ptr [rbp - 0x7d0]
	jae	.label_464
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x7d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xae0], rax
	lea	rdi, [rdi]
	jmp	.label_636
.label_464:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0xae0], rax
.label_636:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xae0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_646
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_121
.label_646:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_123
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	jne	.label_125
	mov	rax, qword ptr [rbp - 0x7c8]
	nop	
	cmp	rax, qword ptr [rbp - 0x7d0]
	jae	.label_125
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0x7e0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_496
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_152
.label_496:
	mov	rbp, rbp
	jmp	.label_277
.label_277:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7e8], 0
.label_177:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7e8]
	nop	
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_165
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xae4], eax
	mov	rax, qword ptr [rbp - 0x7e8]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x7e8], rax
	lea	rdi, [rdi]
	jmp	.label_177
.label_165:
	nop	
	jmp	.label_186
.label_186:
	lea	rdi, [rdi]
	jmp	.label_190
.label_152:
	jmp	.label_498
.label_498:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x7f0], 0
.label_503:
	mov	rax, qword ptr [rbp - 0x7f0]
	nop	
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_199
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xae8], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7f0], rax
	mov	rbp, rbp
	jmp	.label_503
.label_199:
	jmp	.label_634
.label_634:
	jmp	.label_190
.label_190:
	jmp	.label_125
.label_125:
	jmp	.label_379
.label_379:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_224
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_232
.label_224:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	je	.label_235
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_uppcase
	nop	
	jmp	.label_246
.label_235:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x7c8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xaf0], rax
.label_246:
	mov	rsp, rsp
	jmp	.label_232
.label_232:
	jmp	.label_261
.label_261:
	jmp	.label_123
.label_123:
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_210
.label_266:
	mov	qword ptr [rbp - 0xf0], 1
.label_499:
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x3a
	jne	.label_432
	nop	
	jmp	.label_281
.label_281:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_499
.label_432:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x7a
	je	.label_541
	jmp	.label_257
.label_541:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	jmp	.label_297
.label_609:
	mov	qword ptr [rbp - 0xf0], 0
.label_297:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_306
	jmp	.label_210
.label_306:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7f4], edx
	cmp	dword ptr [rbp - 0x7f4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf1], al
	jl	.label_311
	xor	eax, eax
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaf2], cl
	jne	.label_321
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0xaf2], dl
.label_321:
	nop	
	mov	al, byte ptr [rbp - 0xaf2]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf1], al
.label_311:
	mov	al, byte ptr [rbp - 0xaf1]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	nop	
	mov	edx, esi
	lea	rsi, [rsi]
	shr	edx, 0x1f
	mov	rsp, rsp
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	mov	rsp, rsp
	imul	rcx, rcx, -0x77777777
	lea	rdi, [rdi]
	shr	rcx, 0x20
	lea	rsi, [rsi]
	mov	edx, ecx
	add	edx, esi
	lea	rdi, [rdi]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x7f8], edx
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	nop	
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	mov	rbp, rbp
	add	esi, edx
	mov	rbp, rbp
	mov	edx, esi
	nop	
	shr	edx, 0x1f
	mov	rsp, rsp
	sar	esi, 5
	mov	rbp, rbp
	add	esi, edx
	movsxd	rcx, esi
	nop	
	imul	rcx, rcx, -0x77777777
	nop	
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	edx, ecx
	add	edx, esi
	lea	rsi, [rsi]
	mov	edi, edx
	nop	
	shr	edi, 0x1f
	sar	edx, 5
	lea	rdi, [rdi]
	add	edx, edi
	mov	rbp, rbp
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x7fc], esi
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	lea	rdi, [rdi]
	add	esi, edx
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, 0x1f
	sar	esi, 5
	lea	rdi, [rdi]
	add	esi, edi
	lea	rdi, [rdi]
	imul	esi, esi, 0x3c
	lea	rdi, [rdi]
	sub	edx, esi
	mov	dword ptr [rbp - 0x800], edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb00], rcx
	nop	
	mov	qword ptr [rbp - 0xb08], r8
	ja	.label_417
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb00]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_420]]
	jmp	rcx
.label_5802:
	mov	rbp, rbp
	jmp	.label_421
.label_421:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	nop	
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_425
.label_5803:
	mov	rbp, rbp
	jmp	.label_438
.label_438:
	jmp	.label_440
.label_440:
	mov	dword ptr [rbp - 0x94], 6
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_425
.label_5804:
	mov	rsp, rsp
	jmp	.label_454
.label_454:
	jmp	.label_457
.label_457:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x7f8], 0x2710
	imul	ecx, dword ptr [rbp - 0x7fc], 0x64
	mov	rbp, rbp
	add	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x800]
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	jmp	.label_425
.label_5805:
	cmp	dword ptr [rbp - 0x800], 0
	mov	rbp, rbp
	je	.label_478
	nop	
	jmp	.label_454
.label_478:
	cmp	dword ptr [rbp - 0x7fc], 0
	je	.label_485
	jmp	.label_438
.label_485:
	nop	
	jmp	.label_488
.label_488:
	mov	dword ptr [rbp - 0x94], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x7f8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_425
.label_417:
	lea	rsi, [rsi]
	jmp	.label_257
.label_247:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_388:
	jmp	.label_257
.label_257:
	mov	dword ptr [rbp - 0x804], 1
.label_520:
	mov	eax, 1
	nop	
	sub	eax, dword ptr [rbp - 0x804]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	mov	rsp, rsp
	je	.label_510
	jmp	.label_518
.label_518:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x804]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_520
.label_510:
	jmp	.label_531
.label_531:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x804]
	mov	qword ptr [rbp - 0x810], rax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_534
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb0c], eax
	jmp	.label_545
.label_534:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xb0c], eax
.label_545:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb0c]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x818], rcx
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x818]
	jae	.label_549
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x818]
	mov	qword ptr [rbp - 0xb18], rax
	jmp	.label_564
.label_549:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0xb18], rax
.label_564:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb18]
	mov	qword ptr [rbp - 0x820], rax
	nop	
	mov	rax, qword ptr [rbp - 0x820]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jb	.label_578
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_121
.label_578:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_208
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_133
	mov	rax, qword ptr [rbp - 0x810]
	cmp	rax, qword ptr [rbp - 0x818]
	lea	rsi, [rsi]
	jae	.label_133
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x828], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	mov	rsp, rsp
	je	.label_604
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_612
.label_604:
	mov	rsp, rsp
	jmp	.label_657
.label_657:
	mov	qword ptr [rbp - 0x830], 0
.label_628:
	mov	rax, qword ptr [rbp - 0x830]
	cmp	rax, qword ptr [rbp - 0x828]
	mov	rbp, rbp
	jae	.label_622
	lea	rsi, [rsi]
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xb1c], eax
	mov	rax, qword ptr [rbp - 0x830]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_628
.label_622:
	lea	rsi, [rsi]
	jmp	.label_312
.label_312:
	lea	rsi, [rsi]
	jmp	.label_185
.label_612:
	mov	rsp, rsp
	jmp	.label_641
.label_641:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x838], 0
.label_659:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x838]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_644
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xb20], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x838]
	add	rax, 1
	mov	qword ptr [rbp - 0x838], rax
	jmp	.label_659
.label_644:
	jmp	.label_128
.label_128:
	jmp	.label_185
.label_185:
	jmp	.label_133
.label_133:
	nop	
	jmp	.label_134
.label_134:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	je	.label_135
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	mov	rbp, rbp
	call	fwrite_lowcase
	mov	rsp, rsp
	jmp	.label_155
.label_135:
	test	byte ptr [rbp - 0xe2], 1
	nop	
	je	.label_159
	mov	eax, 1
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	fwrite_uppcase
	lea	rsi, [rsi]
	jmp	.label_178
.label_159:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x804]
	mov	rbp, rbp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	rsi, qword ptr [rbp - 0x810]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb28], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb28]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb30], rax
.label_178:
	jmp	.label_155
.label_155:
	jmp	.label_206
.label_206:
	jmp	.label_208
.label_208:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x820]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_210
.label_210:
	jmp	.label_215
.label_215:
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_217
.label_424:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_121:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0xb40
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081a0

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
.label_660:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	cmp	rax, 0
	nop	
	jbe	.label_661
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	tolower
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_660
.label_661:
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408220

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
.label_662:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_663
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	call	toupper
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edi, eax
	nop	
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_662
.label_663:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082a0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	edi, 4
	nop	
	add	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	nop	
	sub	esi, 1
	mov	rsp, rsp
	mov	eax, esi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408300

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408340
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	lea	rdi, [rbp - 0x20]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408390

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jge	.label_664
	nop	
	jmp	.label_667
.label_667:
	mov	eax, 0x30
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	eax, 0xa
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_665
.label_664:
	jmp	.label_666
.label_666:
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_666
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084e0

	.globl yyparse
	.type yyparse, @function
yyparse:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xdb0
	nop	
	lea	rax, [rbp - 0x4f0]
	lea	rcx, [rbp - 0x80]
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:yyparse.yyval_default
	mov	rbp, rbp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	r8d, esi
	mov	rbp, rbp
	lea	r9, [rbp - 0x48]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, r9
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	mov	rdx, r8
	mov	qword ptr [rbp - 0xb78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb80], rax
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x514], 0
	mov	dword ptr [rbp - 0x554], 0
	mov	rax, qword ptr [rbp - 0xb78]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rax
	mov	rcx, qword ptr [rbp - 0xb80]
	mov	qword ptr [rbp - 0x4f8], rcx
	nop	
	mov	qword ptr [rbp - 0x500], rcx
	mov	qword ptr [rbp - 0x508], 0x14
	mov	dword ptr [rbp - 0x50], 0
	nop	
	mov	dword ptr [rbp - 0x54], 0
	mov	dword ptr [rbp - 0x4c], 0
	mov	dword ptr [rbp - 0xc], 0xfffffffe
	jmp	.label_1060
.label_1305:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 2
	mov	qword ptr [rbp - 0x90], rax
.label_1060:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	mov	cx, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	word ptr [rdx], cx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x508]
	nop	
	shl	rsi, 1
	mov	rbp, rbp
	add	rdx, rsi
	add	rdx, -2
	cmp	rdx, qword ptr [rbp - 0x90]
	ja	.label_1080
	lea	rdi, [rdi]
	mov	eax, 0x14
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	rdx, rsi
	sar	rdx, 1
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x560], rdx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x508]
	mov	rsp, rsp
	ja	.label_1007
	nop	
	jmp	.label_1108
.label_1007:
	mov	eax, 0x14
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x508]
	nop	
	shl	rdx, 1
	mov	qword ptr [rbp - 0x508], rdx
	cmp	rcx, qword ptr [rbp - 0x508]
	jae	.label_1110
	mov	qword ptr [rbp - 0x508], 0x14
.label_1110:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x568], rax
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x508], 0x3a
	add	rax, 0x37
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x570], rax
	cmp	qword ptr [rbp - 0x570], 0
	jne	.label_1146
	jmp	.label_1108
.label_1146:
	jmp	.label_1151
.label_1151:
	mov	eax, 0x38
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x570]
	nop	
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x560]
	nop	
	shl	rdi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb88], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0xb88]
	mov	qword ptr [rbp - 0xb90], rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x570]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, qword ptr [rbp - 0x508]
	shl	rcx, 1
	mov	rsp, rsp
	add	rcx, 0x37
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x578], rcx
	mov	rax, qword ptr [rbp - 0x578]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0xb90]
	mov	rbp, rbp
	div	rcx
	lea	rsi, [rsi]
	imul	rax, rax, 0x38
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x570]
	mov	qword ptr [rbp - 0x570], rax
	mov	rsp, rsp
	jmp	.label_1426
.label_1426:
	mov	eax, 0x38
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x570]
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rsi, [rsi]
	imul	rdi, qword ptr [rbp - 0x560], 0x38
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb98], rdi
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb98]
	mov	qword ptr [rbp - 0xba0], rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x570]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4f8], rcx
	imul	rcx, qword ptr [rbp - 0x508], 0x38
	add	rcx, 0x37
	mov	qword ptr [rbp - 0x580], rcx
	mov	rax, qword ptr [rbp - 0x580]
	xor	r8d, r8d
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0xba0]
	nop	
	div	rcx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x570]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x570], rax
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x568]
	cmp	rcx, rax
	mov	rsp, rsp
	je	.label_1214
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x568]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_1214:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x560]
	mov	rbp, rbp
	shl	rcx, 1
	nop	
	add	rax, rcx
	add	rax, -2
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x560], 0x38
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x500], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x508]
	shl	rcx, 1
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	add	rax, -2
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	ja	.label_1246
	lea	rdi, [rdi]
	jmp	.label_718
.label_1246:
	lea	rdi, [rdi]
	jmp	.label_1080
.label_1080:
	cmp	dword ptr [rbp - 0x50], 0xc
	mov	rbp, rbp
	jne	.label_1283
	lea	rdi, [rdi]
	jmp	.label_1286
.label_1283:
	jmp	.label_1290
.label_1290:
	movsxd	rax, dword ptr [rbp - 0x50]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50c], ecx
	cmp	dword ptr [rbp - 0x50c], -0x5d
	jne	.label_1292
	mov	rsp, rsp
	jmp	.label_1300
.label_1292:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -2
	mov	rbp, rbp
	jne	.label_1303
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	call	yylex
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_1303:
	cmp	dword ptr [rbp - 0xc], 0
	jg	.label_1315
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x514], 0
	nop	
	mov	dword ptr [rbp - 0xc], 0
	lea	rsi, [rsi]
	jmp	.label_1316
.label_1315:
	nop	
	cmp	dword ptr [rbp - 0xc], 0x115
	ja	.label_1321
	movsxd	rax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	nop	
	mov	dword ptr [rbp - 0xba4], ecx
	jmp	.label_1322
.label_1321:
	mov	eax, 2
	mov	dword ptr [rbp - 0xba4], eax
	mov	rsp, rsp
	jmp	.label_1322
.label_1322:
	nop	
	mov	eax, dword ptr [rbp - 0xba4]
	mov	dword ptr [rbp - 0x514], eax
.label_1316:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x514]
	add	eax, dword ptr [rbp - 0x50c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50c], eax
	cmp	dword ptr [rbp - 0x50c], 0
	lea	rsi, [rsi]
	jl	.label_1335
	mov	eax, 0x70
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x50c]
	jl	.label_1335
	movsxd	rax, dword ptr [rbp - 0x50c]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	nop	
	cmp	ecx, dword ptr [rbp - 0x514]
	lea	rsi, [rsi]
	je	.label_1353
.label_1335:
	jmp	.label_1300
.label_1353:
	movsxd	rax, dword ptr [rbp - 0x50c]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50c], ecx
	cmp	dword ptr [rbp - 0x50c], 0
	jg	.label_1364
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x50c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50c], eax
	lea	rsi, [rsi]
	jmp	.label_1371
.label_1364:
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	je	.label_1378
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
.label_1378:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	dword ptr [rbp - 0xc], 0xfffffffe
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50c]
	mov	dword ptr [rbp - 0x50], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	add	rsi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x500], rsi
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	jmp	.label_1305
.label_1300:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yydefact]]
	mov	dword ptr [rbp - 0x50c], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50c], 0
	lea	rsi, [rsi]
	jne	.label_1411
	mov	rbp, rbp
	jmp	.label_1420
.label_1411:
	jmp	.label_1371
.label_1371:
	movsxd	rax, dword ptr [rbp - 0x50c]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rax + yyr2]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x554], ecx
	mov	rbp, rbp
	mov	edx, 1
	sub	edx, ecx
	nop	
	movsxd	rax, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + rax + 0x30]
	mov	qword ptr [rbp - 0x520], rdi
	movups	xmm0, xmmword ptr [rsi + rax]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rsi + rax + 0x10]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rsi + rax + 0x20]
	nop	
	movaps	xmmword ptr [rbp - 0x530], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x540], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x550], xmm0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x50c]
	add	ecx, -4
	lea	rsi, [rsi]
	mov	eax, ecx
	sub	ecx, 0x57
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbb0], rax
	mov	dword ptr [rbp - 0xbb4], ecx
	mov	rbp, rbp
	ja	.label_1425
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xbb0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1457]]
	lea	rdi, [rdi]
	jmp	rcx
.label_5609:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x58], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xa0], 1
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_676
.label_5610:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xa8]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_676
.label_5611:
	movabs	rdi, OFFSET FLAT:.str.2_2
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	lea	rsi, [rsi]
	jmp	.label_676
.label_5612:
	movabs	rdi, OFFSET FLAT:.str.3_2
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb8], rcx
	nop	
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_676
.label_5613:
	movabs	rdi, OFFSET FLAT:.str.4_2
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xd0]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	nop	
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	debug_print_current_time
	nop	
	jmp	.label_676
.label_5614:
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xa8]
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_676
.label_5615:
	nop	
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xb0]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb0], rcx
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	debug_print_current_time
	jmp	.label_676
.label_5616:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	nop	
	call	debug_print_relative_time
	jmp	.label_676
.label_5617:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_current_time
	nop	
	jmp	.label_676
.label_5618:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_relative_time
	jmp	.label_676
.label_5619:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x1c], eax
	nop	
	jmp	.label_676
.label_5620:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x1c], eax
	mov	rbp, rbp
	jmp	.label_676
.label_5621:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rax - 0xa0]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	r8d, eax
	call	set_hhmmss
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x1c], r8d
	mov	rbp, rbp
	jmp	.label_676
.label_5622:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdx - 0x30]
	nop	
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x1c], 2
	lea	rsi, [rsi]
	jmp	.label_676
.label_5623:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdx - 0xa0]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x1c], 2
	jmp	.label_676
.label_5624:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rax - 0xa0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax - 0x38]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	r8d, eax
	call	set_hhmmss
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x1c], 2
	jmp	.label_676
.label_5625:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0xd0]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x500]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	call	time_zone_hhmm
	test	al, 1
	nop	
	jne	.label_714
	jmp	.label_718
.label_714:
	jmp	.label_676
.label_5626:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x14], ecx
	jmp	.label_676
.label_5627:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x14], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0xc0]
	add	rcx, 1
	mov	qword ptr [rax + 0xc0], rcx
	jmp	.label_676
.label_5628:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
	lea	rsi, [rsi]
	jmp	.label_676
.label_5629:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x18], 0x6270
	jmp	.label_676
.label_5630:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	r8, rsp
	mov	qword ptr [r8 + 0x30], rsi
	movups	xmm0, xmmword ptr [rcx]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rcx + 0x10]
	nop	
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movups	xmmword ptr [r8 + 0x20], xmm2
	movups	xmmword ptr [r8 + 0x10], xmm1
	mov	rbp, rbp
	movups	xmmword ptr [r8], xmm0
	mov	rbp, rbp
	mov	esi, 1
	mov	dword ptr [rbp - 0xbb8], eax
	lea	rsi, [rsi]
	call	apply_relative_time
	test	al, 1
	jne	.label_798
	jmp	.label_718
.label_798:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rbp, rbp
	jmp	.label_676
.label_5631:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], 0x6270
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x30], rdx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movups	xmmword ptr [rsi + 0x20], xmm2
	mov	rbp, rbp
	movups	xmmword ptr [rsi + 0x10], xmm1
	movups	xmmword ptr [rsi], xmm0
	mov	esi, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbbc], eax
	call	apply_relative_time
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_835
	mov	rbp, rbp
	jmp	.label_718
.label_835:
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rsp, rsp
	jmp	.label_676
.label_5632:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rax, -0x38
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	call	time_zone_hhmm
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_877
	lea	rsi, [rsi]
	jmp	.label_718
.label_877:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1685
	jmp	.label_888
.label_1685:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_891
	jmp	.label_902
.label_891:
	mov	al, 1
	test	al, 1
	jne	.label_905
	nop	
	jmp	.label_909
.label_905:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_911
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	sil, cl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	edx, eax
	jl	.label_823
	mov	rbp, rbp
	jmp	.label_928
.label_911:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_823
	jmp	.label_928
.label_909:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	cmp	ecx, 0
	jge	.label_950
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x18]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_823
	nop	
	jmp	.label_928
.label_950:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1227
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x18]
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	dl, al
	lea	rsi, [rsi]
	movsx	edi, dl
	mov	rsp, rsp
	add	esi, edi
	lea	rsi, [rsi]
	cmp	ecx, esi
	mov	rbp, rbp
	jle	.label_823
	jmp	.label_928
.label_1227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	dl, al
	nop	
	movsx	esi, dl
	lea	rsi, [rsi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	esi, dl
	nop	
	cmp	ecx, esi
	lea	rsi, [rsi]
	jl	.label_823
.label_928:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	dl, al
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_823
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	sil, cl
	mov	rbp, rbp
	movsx	edi, sil
	add	edx, edi
	nop	
	cmp	eax, edx
	jge	.label_1045
.label_823:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	nop	
	mov	sil, cl
	lea	rsi, [rsi]
	movsx	edi, sil
	mov	rbp, rbp
	add	edx, edi
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_794
	nop	
	jmp	.label_732
.label_1045:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x18]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	add	eax, edi
	mov	rsp, rsp
	mov	sil, al
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_794
	jmp	.label_732
.label_902:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1085
	nop	
	jmp	.label_1089
.label_1085:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_1091
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1095
	jmp	.label_1102
.label_1091:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_1095
	nop	
	jmp	.label_1102
.label_1089:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1113
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1095
	lea	rsi, [rsi]
	jmp	.label_1102
.label_1113:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1143
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1095
	jmp	.label_1102
.label_1143:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_1095
.label_1102:
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80
	jl	.label_1095
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	cmp	rcx, rdx
	jge	.label_1176
.label_1095:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	dil, dl
	movsx	edx, dil
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x18], edx
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_794
	lea	rsi, [rsi]
	jmp	.label_732
.label_1176:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rdi, [rdi]
	mov	dil, al
	movsx	eax, dil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_794
	jmp	.label_732
.label_888:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1223
	mov	rsp, rsp
	jmp	.label_1229
.label_1223:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1230
	mov	rsp, rsp
	jmp	.label_1233
.label_1230:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1237
	jmp	.label_1242
.label_1237:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1244
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	si, cx
	movsx	edi, si
	sub	eax, edi
	cmp	edx, eax
	jl	.label_1248
	jmp	.label_1262
.label_1244:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	eax, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rcx + 0x18]
	nop	
	mov	dx, si
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_1248
	jmp	.label_1262
.label_1242:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_1069
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_1248
	lea	rsi, [rsi]
	jmp	.label_1262
.label_1069:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1317
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x18]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	add	esi, edi
	cmp	ecx, esi
	jle	.label_1248
	mov	rbp, rbp
	jmp	.label_1262
.label_1317:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	dx, ax
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	nop	
	cmp	ecx, esi
	mov	rsp, rsp
	jl	.label_1248
.label_1262:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	mov	rbp, rbp
	add	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0xffff8000
	jl	.label_1248
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	si, cx
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_1399
.label_1248:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x70]
	mov	si, cx
	movsx	edi, si
	add	edx, edi
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_794
	mov	rsp, rsp
	jmp	.label_732
.label_1399:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	si, dx
	movsx	edi, si
	mov	rsp, rsp
	add	eax, edi
	nop	
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_794
	jmp	.label_732
.label_1233:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1436
	jmp	.label_1438
.label_1436:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1439
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1444
	jmp	.label_1452
.label_1439:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_1444
	lea	rdi, [rdi]
	jmp	.label_1452
.label_1438:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1470
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_1444
	lea	rsi, [rsi]
	jmp	.label_1452
.label_1470:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_1481
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1444
	jmp	.label_1452
.label_1481:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	jl	.label_1444
.label_1452:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_1444
	mov	rbp, rbp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1512
.label_1444:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	di, dx
	movsx	edx, di
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_794
	nop	
	jmp	.label_732
.label_1512:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	di, ax
	lea	rsi, [rsi]
	movsx	eax, di
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_794
	mov	rbp, rbp
	jmp	.label_732
.label_1229:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1549
	jmp	.label_1552
.label_1549:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1554
	jmp	.label_840
.label_1554:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1560
	mov	rsp, rsp
	jmp	.label_1567
.label_1560:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_1568
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	sub	eax, esi
	cmp	edx, eax
	jl	.label_903
	jmp	.label_1183
.label_1568:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rcx + 0x18]
	jl	.label_903
	lea	rsi, [rsi]
	jmp	.label_1183
.label_1567:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1591
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_903
	mov	rsp, rsp
	jmp	.label_1183
.label_1591:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_1617
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rdi]
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_903
	jmp	.label_1183
.label_1617:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	lea	rdi, [rdi]
	add	ecx, edx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	edx, eax
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_903
.label_1183:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	add	ecx, edx
	mov	rbp, rbp
	cmp	ecx, 0x80000000
	jl	.label_903
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	nop	
	jge	.label_1471
.label_903:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_794
	jmp	.label_732
.label_1471:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_794
	lea	rdi, [rdi]
	jmp	.label_732
.label_840:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_668
	jmp	.label_675
.label_668:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_730
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_689
	mov	rsp, rsp
	jmp	.label_709
.label_730:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_689
	nop	
	jmp	.label_709
.label_675:
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	lea	rsi, [rsi]
	jge	.label_735
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx - 0x70]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_689
	mov	rbp, rbp
	jmp	.label_709
.label_735:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_895
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_689
	jmp	.label_709
.label_895:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	jl	.label_689
.label_709:
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80000000
	jl	.label_689
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	nop	
	jge	.label_805
.label_689:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_794
	jmp	.label_732
.label_805:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_794
	jmp	.label_732
.label_1552:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_844
	jmp	.label_848
.label_844:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_849
	lea	rsi, [rsi]
	jmp	.label_854
.label_849:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_857
	jmp	.label_860
.label_857:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1575
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_799
	jmp	.label_881
.label_1575:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_799
	mov	rbp, rbp
	jmp	.label_881
.label_860:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	cmp	rax, 0
	jge	.label_906
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_799
	lea	rdi, [rdi]
	jmp	.label_881
.label_906:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_922
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_799
	jmp	.label_881
.label_922:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_799
.label_881:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_799
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_961
.label_799:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], esi
	mov	rsp, rsp
	test	al, 1
	jne	.label_794
	jmp	.label_732
.label_961:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_794
	mov	rbp, rbp
	jmp	.label_732
.label_854:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1367
	mov	rsp, rsp
	jmp	.label_1003
.label_1367:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1005
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_886
	jmp	.label_921
.label_1005:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jl	.label_886
	lea	rsi, [rsi]
	jmp	.label_921
.label_1003:
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1042
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_886
	jmp	.label_921
.label_1042:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	nop	
	jge	.label_1052
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_886
	nop	
	jmp	.label_921
.label_1052:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	jl	.label_886
.label_921:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_886
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_910
.label_886:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	mov	esi, ecx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_794
	jmp	.label_732
.label_910:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_794
	jmp	.label_732
.label_848:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1116
	mov	rbp, rbp
	jmp	.label_1121
.label_1116:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_1124
	jmp	.label_1129
.label_1124:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1133
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	sub	rax, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1155
	jmp	.label_957
.label_1133:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_1155
	nop	
	jmp	.label_957
.label_1129:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_1447
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1155
	jmp	.label_957
.label_1447:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_1189
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1155
	jmp	.label_957
.label_1189:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_1155
.label_957:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1155
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1228
.label_1155:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], esi
	mov	rbp, rbp
	test	al, 1
	jne	.label_794
	jmp	.label_732
.label_1228:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_794
	jmp	.label_732
.label_1121:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_992
	lea	rdi, [rdi]
	jmp	.label_1274
.label_992:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_1037
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_755
	mov	rbp, rbp
	jmp	.label_1047
.label_1037:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_755
	lea	rdi, [rdi]
	jmp	.label_1047
.label_1274:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1314
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_755
	jmp	.label_1047
.label_1314:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1324
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_755
	jmp	.label_1047
.label_1324:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_755
.label_1047:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	nop	
	jl	.label_755
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1369
.label_755:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], esi
	test	al, 1
	jne	.label_794
	mov	rbp, rbp
	jmp	.label_732
.label_1369:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_794
	lea	rdi, [rdi]
	jmp	.label_732
.label_794:
	lea	rsi, [rsi]
	jmp	.label_718
.label_732:
	jmp	.label_676
.label_5633:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 0xe10
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x18], ecx
	mov	rbp, rbp
	jmp	.label_676
.label_5634:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x38]
	add	rax, 0xe10
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	jmp	.label_676
.label_5635:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_676
.label_5636:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_676
.label_5637:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_676
.label_5638:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_676
.label_5639:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_676
.label_5640:
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0xd0]
	lea	rdi, [rdi]
	jg	.label_1497
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_1561
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10_0
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0xd0]
	mov	qword ptr [rbp - 0x588], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdx, qword ptr [rbp - 0x588]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_1561:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx - 0xd8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], rdx
	mov	rcx, qword ptr [rcx - 0xd0]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_1515
.label_1497:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rax + 0xd9], 1
	je	.label_1538
	movabs	rdi, OFFSET FLAT:.str.11_0
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_1538:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0xd8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rcx]
	nop	
	mov	qword ptr [rax + 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rax + 0x30], rcx
.label_1515:
	mov	rsp, rsp
	jmp	.label_676
.label_5641:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_1574
	nop	
	jmp	.label_1592
.label_1574:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1595
	mov	rbp, rbp
	jmp	.label_1603
.label_1595:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1606
	nop	
	jmp	.label_1609
.label_1606:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1612
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	nop	
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_812
	mov	rsp, rsp
	jmp	.label_1175
.label_1612:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_812
	jmp	.label_1175
.label_1609:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1358
	jmp	.label_1647
.label_1358:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_812
	lea	rsi, [rsi]
	jmp	.label_1175
.label_1647:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1650
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jle	.label_812
	lea	rsi, [rsi]
	jmp	.label_1175
.label_1650:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_812
.label_1175:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_812
	mov	eax, 0x7f
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	edi, sil
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_1677
.label_812:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_711
	nop	
	jmp	.label_685
.label_1677:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	sub	eax, edi
	mov	rsp, rsp
	mov	sil, al
	nop	
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_711
	nop	
	jmp	.label_685
.label_1603:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_721
	mov	rbp, rbp
	jmp	.label_728
.label_721:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_731
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_739
	lea	rdi, [rdi]
	jmp	.label_749
.label_731:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rsi
	jl	.label_739
	jmp	.label_749
.label_728:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_769
	lea	rdi, [rdi]
	jmp	.label_772
.label_769:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_739
	jmp	.label_749
.label_772:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_778
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_739
	jmp	.label_749
.label_778:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_739
.label_749:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	nop	
	jl	.label_739
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_816
.label_739:
	nop	
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	jne	.label_711
	lea	rsi, [rsi]
	jmp	.label_685
.label_816:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_711
	jmp	.label_685
.label_1592:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_864
	lea	rsi, [rsi]
	jmp	.label_1611
.label_864:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_872
	mov	rbp, rbp
	jmp	.label_1649
.label_872:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_876
	nop	
	jmp	.label_882
.label_876:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_883
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rbp, rbp
	add	edx, 0x7fffffff
	nop	
	cmp	edx, 0
	jl	.label_898
	jmp	.label_914
.label_883:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	mov	rbp, rbp
	cmp	eax, esi
	nop	
	jl	.label_898
	jmp	.label_914
.label_882:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_923
	jmp	.label_924
.label_923:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_898
	jmp	.label_914
.label_924:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_930
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	jle	.label_898
	jmp	.label_914
.label_930:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_898
.label_914:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	sub	eax, esi
	nop	
	cmp	eax, 0xffff8000
	jl	.label_898
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	nop	
	movsx	edi, si
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_966
.label_898:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	nop	
	movsx	edi, si
	sub	ecx, edi
	mov	rbp, rbp
	mov	si, cx
	lea	rsi, [rsi]
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_711
	lea	rsi, [rsi]
	jmp	.label_685
.label_966:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_711
	nop	
	jmp	.label_685
.label_1649:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1017
	mov	rsp, rsp
	jmp	.label_1019
.label_1017:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1022
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_1044
	jmp	.label_1043
.label_1022:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_1044
	jmp	.label_1043
.label_1019:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1051
	lea	rsi, [rsi]
	jmp	.label_1056
.label_1051:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1044
	lea	rdi, [rdi]
	jmp	.label_1043
.label_1056:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1066
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_1044
	jmp	.label_1043
.label_1066:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1044
.label_1043:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_1044
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1081
.label_1044:
	nop	
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	mov	rbp, rbp
	movsx	rdx, di
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_711
	mov	rsp, rsp
	jmp	.label_685
.label_1081:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	jne	.label_711
	lea	rsi, [rsi]
	jmp	.label_685
.label_1611:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1120
	lea	rdi, [rdi]
	jmp	.label_1125
.label_1120:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1128
	jmp	.label_1138
.label_1128:
	mov	al, 1
	test	al, 1
	jne	.label_1139
	lea	rsi, [rsi]
	jmp	.label_1145
.label_1139:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_1147
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_1152
	jmp	.label_1158
.label_1147:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_1152
	jmp	.label_1158
.label_1145:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1170
	mov	rsp, rsp
	jmp	.label_1178
.label_1170:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1152
	jmp	.label_1158
.label_1178:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	nop	
	jge	.label_1185
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	nop	
	jle	.label_1152
	nop	
	jmp	.label_1158
.label_1185:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_1152
.label_1158:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rbp, rbp
	jl	.label_1152
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_1216
.label_1152:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_711
	jmp	.label_685
.label_1216:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	jne	.label_711
	jmp	.label_685
.label_1138:
	mov	al, 1
	test	al, 1
	jne	.label_1257
	lea	rdi, [rdi]
	jmp	.label_1192
.label_1257:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1263
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_1270
	lea	rsi, [rsi]
	jmp	.label_1198
.label_1263:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_1270
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1192:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1137
	jmp	.label_1160
.label_1137:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1270
	jmp	.label_1198
.label_1160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_1309
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_1270
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1309:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1270
.label_1198:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_1270
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_830
.label_1270:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_711
	jmp	.label_685
.label_830:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_711
	jmp	.label_685
.label_1125:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1380
	nop	
	jmp	.label_1382
.label_1380:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1384
	lea	rdi, [rdi]
	jmp	.label_1387
.label_1384:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1390
	jmp	.label_1394
.label_1390:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_1396
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_1065
	lea	rsi, [rsi]
	jmp	.label_1419
.label_1396:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jl	.label_1065
	lea	rdi, [rdi]
	jmp	.label_1419
.label_1394:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1431
	mov	rbp, rbp
	jmp	.label_1434
.label_1431:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_1065
	jmp	.label_1419
.label_1434:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1440
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_1065
	nop	
	jmp	.label_1419
.label_1440:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_1065
.label_1419:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_1065
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1468
.label_1065:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_711
	lea	rsi, [rsi]
	jmp	.label_685
.label_1468:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_711
	lea	rdi, [rdi]
	jmp	.label_685
.label_1387:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1499
	jmp	.label_1502
.label_1499:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1504
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_727
	lea	rdi, [rdi]
	jmp	.label_705
.label_1504:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	nop	
	jl	.label_727
	jmp	.label_705
.label_1502:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1520
	lea	rsi, [rsi]
	jmp	.label_1526
.label_1520:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_727
	jmp	.label_705
.label_1526:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1530
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_727
	lea	rdi, [rdi]
	jmp	.label_705
.label_1530:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_727
.label_705:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_727
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jge	.label_867
.label_727:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_711
	jmp	.label_685
.label_867:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	jne	.label_711
	jmp	.label_685
.label_1382:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1597
	mov	rbp, rbp
	jmp	.label_1605
.label_1597:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1607
	lea	rdi, [rdi]
	jmp	.label_1474
.label_1607:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1164
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_691
	lea	rsi, [rsi]
	jmp	.label_1013
.label_1164:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_691
	nop	
	jmp	.label_1013
.label_1474:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1639
	jmp	.label_1646
.label_1639:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_691
	nop	
	jmp	.label_1013
.label_1646:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_791
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_691
	jmp	.label_1013
.label_791:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_691
.label_1013:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_691
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_1519
.label_691:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_711
	jmp	.label_685
.label_1519:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_711
	mov	rsp, rsp
	jmp	.label_685
.label_1605:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_700
	lea	rdi, [rdi]
	jmp	.label_708
.label_700:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_856
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_719
	jmp	.label_737
.label_856:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_719
	lea	rsi, [rsi]
	jmp	.label_737
.label_708:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1040
	lea	rsi, [rsi]
	jmp	.label_715
.label_1040:
	nop	
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_719
	nop	
	jmp	.label_737
.label_715:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_766
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_719
	jmp	.label_737
.label_766:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_719
.label_737:
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rdx, rax
	nop	
	jl	.label_719
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rsp, rsp
	jge	.label_806
.label_719:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_711
	jmp	.label_685
.label_806:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_711
	lea	rsi, [rsi]
	jmp	.label_685
.label_711:
	lea	rdi, [rdi]
	jmp	.label_718
.label_685:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_676
.label_5642:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_865
	mov	rbp, rbp
	jmp	.label_875
.label_865:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_878
	lea	rsi, [rsi]
	jmp	.label_885
.label_878:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_740
	jmp	.label_896
.label_740:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_899
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	nop	
	add	edx, 0x7fffffff
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jl	.label_913
	jmp	.label_919
.label_899:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, 0x80000000
	nop	
	cmp	eax, esi
	jl	.label_913
	jmp	.label_919
.label_896:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_929
	mov	rbp, rbp
	jmp	.label_934
.label_929:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_913
	jmp	.label_919
.label_934:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_941
	nop	
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, 0
	jle	.label_913
	mov	rbp, rbp
	jmp	.label_919
.label_941:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	jl	.label_913
.label_919:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_913
	nop	
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_971
.label_913:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	ecx, edi
	nop	
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_710
	lea	rsi, [rsi]
	jmp	.label_734
.label_971:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	mov	sil, al
	movsx	rdx, sil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_710
	nop	
	jmp	.label_734
.label_885:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1020
	jmp	.label_1026
.label_1020:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1511
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_1038
	lea	rsi, [rsi]
	jmp	.label_1048
.label_1511:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_1038
	jmp	.label_1048
.label_1026:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1055
	jmp	.label_1064
.label_1055:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1038
	mov	rsp, rsp
	jmp	.label_1048
.label_1064:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1068
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_1038
	jmp	.label_1048
.label_1068:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	jl	.label_1038
.label_1048:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80
	lea	rdi, [rdi]
	jl	.label_1038
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_1084
.label_1038:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_710
	jmp	.label_734
.label_1084:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	lea	rsi, [rsi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	jne	.label_710
	mov	rsp, rsp
	jmp	.label_734
.label_875:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1131
	jmp	.label_1140
.label_1131:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1144
	mov	rbp, rbp
	jmp	.label_1149
.label_1144:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_962
	mov	rbp, rbp
	jmp	.label_1319
.label_962:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1157
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_713
	nop	
	jmp	.label_1171
.label_1157:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_713
	mov	rbp, rbp
	jmp	.label_1171
.label_1319:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1188
	lea	rsi, [rsi]
	jmp	.label_1195
.label_1188:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_713
	jmp	.label_1171
.label_1195:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1564
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	cmp	eax, 0
	jle	.label_713
	jmp	.label_1171
.label_1564:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	cmp	eax, esi
	nop	
	jl	.label_713
.label_1171:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_713
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_1240
.label_713:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	nop	
	movsx	edi, si
	sub	ecx, edi
	mov	rbp, rbp
	mov	si, cx
	nop	
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_710
	jmp	.label_734
.label_1240:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	si, dx
	movsx	edi, si
	nop	
	sub	eax, edi
	mov	rbp, rbp
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_710
	jmp	.label_734
.label_1149:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1281
	jmp	.label_1287
.label_1281:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1289
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jl	.label_1293
	mov	rsp, rsp
	jmp	.label_1184
.label_1289:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_1293
	jmp	.label_1184
.label_1287:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1267
	jmp	.label_1302
.label_1267:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1293
	jmp	.label_1184
.label_1302:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1332
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	nop	
	jle	.label_1293
	nop	
	jmp	.label_1184
.label_1332:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_1293
.label_1184:
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, -0x8000
	jl	.label_1293
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_1361
.label_1293:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	mov	di, cx
	movsx	rdx, di
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_710
	lea	rdi, [rdi]
	jmp	.label_734
.label_1361:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_710
	lea	rsi, [rsi]
	jmp	.label_734
.label_1140:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1412
	mov	rsp, rsp
	jmp	.label_1416
.label_1412:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1418
	mov	rbp, rbp
	jmp	.label_1421
.label_1418:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1422
	jmp	.label_873
.label_1422:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1428
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	nop	
	jl	.label_1156
	jmp	.label_1441
.label_1428:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	add	edx, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_1156
	jmp	.label_1441
.label_873:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1449
	jmp	.label_1079
.label_1449:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1156
	jmp	.label_1441
.label_1079:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_1460
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jle	.label_1156
	lea	rsi, [rsi]
	jmp	.label_1441
.label_1460:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_1156
.label_1441:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0x80000000
	jl	.label_1156
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	nop	
	jge	.label_1150
.label_1156:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_710
	jmp	.label_734
.label_1150:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	eax, esi
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_710
	lea	rsi, [rsi]
	jmp	.label_734
.label_1421:
	mov	al, 1
	test	al, 1
	jne	.label_1514
	mov	rbp, rbp
	jmp	.label_1516
.label_1514:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1518
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_862
	jmp	.label_1531
.label_1518:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_862
	lea	rsi, [rsi]
	jmp	.label_1531
.label_1516:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1540
	mov	rbp, rbp
	jmp	.label_1547
.label_1540:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_862
	lea	rdi, [rdi]
	jmp	.label_1531
.label_1547:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_825
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jle	.label_862
	mov	rsp, rsp
	jmp	.label_1531
.label_825:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_862
.label_1531:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_862
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1585
.label_862:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	al, 1
	nop	
	jne	.label_710
	nop	
	jmp	.label_734
.label_1585:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_710
	jmp	.label_734
.label_1416:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1625
	jmp	.label_1628
.label_1625:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1631
	jmp	.label_1636
.label_1631:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_1637
	lea	rdi, [rdi]
	jmp	.label_1640
.label_1637:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1645
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_701
	lea	rdi, [rdi]
	jmp	.label_1655
.label_1645:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_701
	mov	rsp, rsp
	jmp	.label_1655
.label_1640:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1663
	jmp	.label_1666
.label_1663:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_701
	jmp	.label_1655
.label_1666:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1675
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_701
	mov	rbp, rbp
	jmp	.label_1655
.label_1675:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_701
.label_1655:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_701
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_787
.label_701:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_710
	lea	rsi, [rsi]
	jmp	.label_734
.label_787:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_710
	lea	rdi, [rdi]
	jmp	.label_734
.label_1636:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1041
	jmp	.label_1058
.label_1041:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_760
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_767
	mov	rsp, rsp
	jmp	.label_788
.label_760:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_767
	lea	rsi, [rsi]
	jmp	.label_788
.label_1058:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_790
	lea	rsi, [rsi]
	jmp	.label_801
.label_790:
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_767
	jmp	.label_788
.label_801:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_807
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_767
	jmp	.label_788
.label_807:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_767
.label_788:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_767
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_841
.label_767:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_710
	mov	rsp, rsp
	jmp	.label_734
.label_841:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_710
	jmp	.label_734
.label_1628:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_884
	jmp	.label_890
.label_884:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_893
	jmp	.label_900
.label_893:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_901
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_679
	jmp	.label_918
.label_901:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_679
	nop	
	jmp	.label_918
.label_900:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_926
	mov	rbp, rbp
	jmp	.label_1336
.label_926:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_679
	nop	
	jmp	.label_918
.label_1336:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1536
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_679
	jmp	.label_918
.label_1536:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_679
.label_918:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_679
	nop	
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_1201
.label_679:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_710
	lea	rdi, [rdi]
	jmp	.label_734
.label_1201:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	jne	.label_710
	jmp	.label_734
.label_890:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1010
	lea	rsi, [rsi]
	jmp	.label_1012
.label_1010:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1016
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_1021
	jmp	.label_1059
.label_1016:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_1021
	mov	rsp, rsp
	jmp	.label_1059
.label_1012:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1050
	lea	rsi, [rsi]
	jmp	.label_1053
.label_1050:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1021
	mov	rsp, rsp
	jmp	.label_1059
.label_1053:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1063
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_1021
	lea	rdi, [rdi]
	jmp	.label_1059
.label_1063:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_1021
.label_1059:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_1021
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	jge	.label_746
.label_1021:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_710
	mov	rbp, rbp
	jmp	.label_734
.label_746:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_710
	jmp	.label_734
.label_710:
	nop	
	jmp	.label_718
.label_734:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1112
	mov	rbp, rbp
	jmp	.label_1117
.label_1112:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1161
	jmp	.label_1191
.label_1161:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_1127
	jmp	.label_1132
.label_1127:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1135
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	add	edx, 0x7fffffff
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_1148
	jmp	.label_1154
.label_1135:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_1148
	lea	rsi, [rsi]
	jmp	.label_1154
.label_1132:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1409
	lea	rdi, [rdi]
	jmp	.label_1435
.label_1409:
	mov	al, 1
	test	al, 1
	jne	.label_1148
	jmp	.label_1154
.label_1435:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1226
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	lea	rsi, [rsi]
	sub	eax, esi
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_1148
	jmp	.label_1154
.label_1226:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_1148
.label_1154:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_1148
	mov	eax, 0x7f
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rdi, [rdi]
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_1217
.label_1148:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	sil, dl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	ecx, edi
	lea	rdi, [rdi]
	mov	sil, cl
	mov	rbp, rbp
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_720
	jmp	.label_741
.label_1217:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_720
	mov	rsp, rsp
	jmp	.label_741
.label_1191:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1272
	mov	rbp, rbp
	jmp	.label_1573
.label_1272:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1635
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_1104
	mov	rbp, rbp
	jmp	.label_1288
.label_1635:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_1104
	jmp	.label_1288
.label_1573:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1304
	jmp	.label_1312
.label_1304:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1104
	jmp	.label_1288
.label_1312:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1247
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_1104
	jmp	.label_1288
.label_1247:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_1104
.label_1288:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_1104
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1341
.label_1104:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_720
	lea	rsi, [rsi]
	jmp	.label_741
.label_1341:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	nop	
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_720
	lea	rsi, [rsi]
	jmp	.label_741
.label_1117:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_980
	lea	rdi, [rdi]
	jmp	.label_1393
.label_980:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1397
	lea	rsi, [rsi]
	jmp	.label_1404
.label_1397:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1407
	nop	
	jmp	.label_762
.label_1407:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1414
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rsi, [rsi]
	cmp	edx, 0
	jl	.label_1236
	mov	rsp, rsp
	jmp	.label_976
.label_1414:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	add	esi, 0x80000000
	mov	rsp, rsp
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_1236
	nop	
	jmp	.label_976
.label_762:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1442
	mov	rsp, rsp
	jmp	.label_1446
.label_1442:
	mov	al, 1
	test	al, 1
	jne	.label_1236
	jmp	.label_976
.label_1446:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_771
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_1236
	jmp	.label_976
.label_771:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_1236
.label_976:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	jl	.label_1236
	mov	eax, 0x7fff
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1483
.label_1236:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_720
	mov	rbp, rbp
	jmp	.label_741
.label_1483:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_720
	mov	rbp, rbp
	jmp	.label_741
.label_1404:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1437
	mov	rbp, rbp
	jmp	.label_1521
.label_1437:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1525
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_937
	mov	rbp, rbp
	jmp	.label_744
.label_1525:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_937
	jmp	.label_744
.label_1521:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1544
	jmp	.label_1550
.label_1544:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_937
	lea	rdi, [rdi]
	jmp	.label_744
.label_1550:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_1559
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_937
	jmp	.label_744
.label_1559:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_937
.label_744:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_937
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1581
.label_937:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	mov	rsp, rsp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_720
	nop	
	jmp	.label_741
.label_1581:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	nop	
	mov	di, ax
	mov	rbp, rbp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_720
	jmp	.label_741
.label_1393:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1627
	nop	
	jmp	.label_1126
.label_1627:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1328
	jmp	.label_1644
.label_1328:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1386
	nop	
	jmp	.label_1648
.label_1386:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_1408
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_781
	mov	rbp, rbp
	jmp	.label_1062
.label_1408:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, edx
	jl	.label_781
	nop	
	jmp	.label_1062
.label_1648:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_947
	jmp	.label_1676
.label_947:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_781
	jmp	.label_1062
.label_1676:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1680
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, 0
	lea	rdi, [rdi]
	jle	.label_781
	mov	rsp, rsp
	jmp	.label_1062
.label_1680:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_781
.label_1062:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, 0x80000000
	nop	
	jl	.label_781
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_828
.label_781:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_720
	mov	rsp, rsp
	jmp	.label_741
.label_828:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	nop	
	jne	.label_720
	lea	rdi, [rdi]
	jmp	.label_741
.label_1644:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_763
	jmp	.label_784
.label_763:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_768
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_773
	jmp	.label_797
.label_768:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_773
	jmp	.label_797
.label_784:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_1258
	nop	
	jmp	.label_1082
.label_1258:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_773
	nop	
	jmp	.label_797
.label_1082:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_811
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_773
	mov	rbp, rbp
	jmp	.label_797
.label_811:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_773
.label_797:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	jl	.label_773
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	nop	
	jge	.label_672
.label_773:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rbp, rbp
	jne	.label_720
	lea	rdi, [rdi]
	jmp	.label_741
.label_672:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_720
	jmp	.label_741
.label_1126:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_889
	jmp	.label_1311
.label_889:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_751
	lea	rsi, [rsi]
	jmp	.label_908
.label_751:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_912
	lea	rsi, [rsi]
	jmp	.label_916
.label_912:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_826
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_920
	jmp	.label_927
.label_826:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_920
	jmp	.label_927
.label_916:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_939
	jmp	.label_1679
.label_939:
	mov	al, 1
	test	al, 1
	jne	.label_920
	lea	rdi, [rdi]
	jmp	.label_927
.label_1679:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_949
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_920
	jmp	.label_927
.label_949:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_920
.label_927:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_920
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	jge	.label_973
.label_920:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_720
	jmp	.label_741
.label_973:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_720
	lea	rsi, [rsi]
	jmp	.label_741
.label_908:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1018
	jmp	.label_1034
.label_1018:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1023
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_1031
	mov	rsp, rsp
	jmp	.label_698
.label_1023:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_1031
	jmp	.label_698
.label_1034:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_955
	jmp	.label_1651
.label_955:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_1031
	lea	rdi, [rdi]
	jmp	.label_698
.label_1651:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_717
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_1031
	jmp	.label_698
.label_717:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1031
.label_698:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_1031
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1088
.label_1031:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_720
	lea	rsi, [rsi]
	jmp	.label_741
.label_1088:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_720
	jmp	.label_741
.label_1311:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1122
	jmp	.label_1570
.label_1122:
	mov	al, 1
	test	al, 1
	jne	.label_1210
	jmp	.label_1136
.label_1210:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_1238
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_1073
	mov	rsp, rsp
	jmp	.label_707
.label_1238:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_1073
	jmp	.label_707
.label_1136:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1165
	jmp	.label_1172
.label_1165:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1073
	jmp	.label_707
.label_1172:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1181
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_1073
	jmp	.label_707
.label_1181:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1073
.label_707:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_1073
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_1207
.label_1073:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_720
	lea	rsi, [rsi]
	jmp	.label_741
.label_1207:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_720
	mov	rbp, rbp
	jmp	.label_741
.label_1570:
	mov	al, 1
	test	al, 1
	jne	.label_870
	jmp	.label_1250
.label_870:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1253
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_819
	jmp	.label_726
.label_1253:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_819
	jmp	.label_726
.label_1250:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1280
	jmp	.label_1406
.label_1280:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_819
	lea	rdi, [rdi]
	jmp	.label_726
.label_1406:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1294
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_819
	jmp	.label_726
.label_1294:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_819
.label_726:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_819
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1325
.label_819:
	nop	
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_720
	jmp	.label_741
.label_1325:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_720
	jmp	.label_741
.label_720:
	lea	rdi, [rdi]
	jmp	.label_718
.label_741:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	jmp	.label_676
.label_5643:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_676
.label_5644:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + 0x20], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x30], rcx
	jmp	.label_676
.label_5645:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_676
.label_5646:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rax + 0x30], rcx
	mov	rsp, rsp
	jmp	.label_676
.label_5647:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rdi, qword ptr [rsi - 0x70]
	mov	qword ptr [rdx + 0x20], rdi
	mov	rdi, qword ptr [rsi - 0x68]
	nop	
	mov	qword ptr [rdx + 0x28], rdi
	mov	rsi, qword ptr [rsi - 0x60]
	mov	qword ptr [rdx + 0x30], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1456
	lea	rdi, [rdi]
	jmp	.label_1167
.label_1456:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1475
	jmp	.label_1476
.label_1475:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1478
	jmp	.label_1479
.label_1478:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_1480
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_753
	mov	rbp, rbp
	jmp	.label_1490
.label_1480:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_753
	lea	rsi, [rsi]
	jmp	.label_1490
.label_1479:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1503
	jmp	.label_1506
.label_1503:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_753
	jmp	.label_1490
.label_1506:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	nop	
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1508
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	cmp	eax, 0
	jle	.label_753
	lea	rdi, [rdi]
	jmp	.label_1490
.label_1508:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_753
.label_1490:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_753
	lea	rdi, [rdi]
	mov	eax, 0x7f
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_1537
.label_753:
	mov	al, 1
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	sil, dl
	nop	
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x38], rdx
	nop	
	test	al, 1
	jne	.label_695
	lea	rdi, [rdi]
	jmp	.label_827
.label_1537:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_695
	mov	rsp, rsp
	jmp	.label_827
.label_1476:
	mov	al, 1
	test	al, 1
	jne	.label_1576
	lea	rsi, [rsi]
	jmp	.label_1577
.label_1576:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1638
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_1054
	mov	rsp, rsp
	jmp	.label_1180
.label_1638:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_1054
	nop	
	jmp	.label_1180
.label_1577:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1615
	mov	rsp, rsp
	jmp	.label_1619
.label_1615:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1054
	mov	rbp, rbp
	jmp	.label_1180
.label_1619:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1624
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_1054
	jmp	.label_1180
.label_1624:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_1054
.label_1180:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, -0x80
	jl	.label_1054
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	jge	.label_1654
.label_1054:
	mov	rsp, rsp
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_695
	jmp	.label_827
.label_1654:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	mov	dil, al
	mov	rsp, rsp
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_695
	jmp	.label_827
.label_1167:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1688
	nop	
	jmp	.label_669
.label_1688:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_670
	mov	rsp, rsp
	jmp	.label_736
.label_670:
	mov	al, 1
	test	al, 1
	jne	.label_682
	jmp	.label_687
.label_682:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_690
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rdi, [rdi]
	cmp	edx, 0
	jl	.label_706
	jmp	.label_722
.label_690:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_706
	jmp	.label_722
.label_687:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_742
	jmp	.label_747
.label_742:
	mov	al, 1
	test	al, 1
	jne	.label_706
	nop	
	jmp	.label_722
.label_747:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_756
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	nop	
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	jle	.label_706
	jmp	.label_722
.label_756:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_706
.label_722:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_706
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_804
.label_706:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	lea	rsi, [rsi]
	movsx	rdx, si
	nop	
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_695
	jmp	.label_827
.label_804:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	si, dx
	mov	rsp, rsp
	movsx	edi, si
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	movsx	rdx, si
	nop	
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_695
	lea	rsi, [rsi]
	jmp	.label_827
.label_736:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_853
	lea	rdi, [rdi]
	jmp	.label_1548
.label_853:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_858
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_863
	nop	
	jmp	.label_874
.label_858:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_863
	jmp	.label_874
.label_1548:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_894
	mov	rbp, rbp
	jmp	.label_904
.label_894:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_863
	lea	rsi, [rsi]
	jmp	.label_874
.label_904:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_915
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_863
	jmp	.label_874
.label_915:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	jl	.label_863
.label_874:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_863
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_1015
.label_863:
	nop	
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_695
	nop	
	jmp	.label_827
.label_1015:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x38], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_695
	lea	rsi, [rsi]
	jmp	.label_827
.label_669:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1261
	jmp	.label_979
.label_1261:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_982
	nop	
	jmp	.label_987
.label_982:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_991
	jmp	.label_996
.label_991:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_999
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	lea	rsi, [rsi]
	jl	.label_897
	jmp	.label_1014
.label_999:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_897
	nop	
	jmp	.label_1014
.label_996:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1028
	jmp	.label_1533
.label_1028:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_897
	jmp	.label_1014
.label_1533:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1566
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	nop	
	cmp	eax, 0
	jle	.label_897
	mov	rsp, rsp
	jmp	.label_1014
.label_1566:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	cmp	eax, edx
	nop	
	jl	.label_897
.label_1014:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	nop	
	cmp	eax, 0x80000000
	jl	.label_897
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1070
.label_897:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	nop	
	sub	ecx, esi
	nop	
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_695
	jmp	.label_827
.label_1070:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	esi, edx
	sub	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_695
	jmp	.label_827
.label_987:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1093
	mov	rsp, rsp
	jmp	.label_1097
.label_1093:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1099
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_969
	mov	rbp, rbp
	jmp	.label_1105
.label_1099:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_969
	lea	rdi, [rdi]
	jmp	.label_1105
.label_1097:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1123
	lea	rsi, [rsi]
	jmp	.label_1130
.label_1123:
	mov	al, 1
	test	al, 1
	jne	.label_969
	jmp	.label_1105
.label_1130:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1141
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_969
	jmp	.label_1105
.label_1141:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_969
.label_1105:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_969
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1173
.label_969:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	jne	.label_695
	jmp	.label_827
.label_1173:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_695
	jmp	.label_827
.label_979:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1204
	jmp	.label_1208
.label_1204:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1212
	jmp	.label_1218
.label_1212:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1220
	jmp	.label_1222
.label_1220:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1224
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_810
	jmp	.label_803
.label_1224:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_810
	lea	rdi, [rdi]
	jmp	.label_803
.label_1222:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1255
	jmp	.label_940
.label_1255:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_810
	mov	rbp, rbp
	jmp	.label_803
.label_940:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1268
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_810
	lea	rsi, [rsi]
	jmp	.label_803
.label_1268:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_810
.label_803:
	nop	
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_810
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rax, rdx
	jge	.label_1306
.label_810:
	mov	al, 1
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	al, 1
	jne	.label_695
	nop	
	jmp	.label_827
.label_1306:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	cl, 1
	jne	.label_695
	jmp	.label_827
.label_1218:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1337
	jmp	.label_1338
.label_1337:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1342
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jl	.label_716
	nop	
	jmp	.label_1372
.label_1342:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	nop	
	jl	.label_716
	lea	rsi, [rsi]
	jmp	.label_1372
.label_1338:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1571
	lea	rdi, [rdi]
	jmp	.label_1379
.label_1571:
	mov	al, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_716
	lea	rdi, [rdi]
	jmp	.label_1372
.label_1379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1385
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_716
	jmp	.label_1372
.label_1385:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_716
.label_1372:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_716
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1424
.label_716:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_695
	mov	rsp, rsp
	jmp	.label_827
.label_1424:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_695
	lea	rdi, [rdi]
	jmp	.label_827
.label_1208:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1083
	jmp	.label_1459
.label_1083:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1461
	lea	rsi, [rsi]
	jmp	.label_1465
.label_1461:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1467
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_1234
	jmp	.label_1318
.label_1467:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_1234
	jmp	.label_1318
.label_1465:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1186
	mov	rbp, rbp
	jmp	.label_1492
.label_1186:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1234
	mov	rbp, rbp
	jmp	.label_1318
.label_1492:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1401
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_1234
	nop	
	jmp	.label_1318
.label_1401:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx - 0x30]
	nop	
	jl	.label_1234
.label_1318:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_1234
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_1517
.label_1234:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_695
	lea	rdi, [rdi]
	jmp	.label_827
.label_1517:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_695
	mov	rbp, rbp
	jmp	.label_827
.label_1459:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1551
	jmp	.label_1555
.label_1551:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1557
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_697
	jmp	.label_936
.label_1557:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_697
	mov	rsp, rsp
	jmp	.label_936
.label_1555:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1579
	lea	rsi, [rsi]
	jmp	.label_1584
.label_1579:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_697
	nop	
	jmp	.label_936
.label_1584:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_1589
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_697
	mov	rsp, rsp
	jmp	.label_936
.label_1589:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_697
.label_936:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_697
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_1623
.label_697:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_695
	nop	
	jmp	.label_827
.label_1623:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_695
	lea	rsi, [rsi]
	jmp	.label_827
.label_695:
	lea	rsi, [rsi]
	jmp	.label_718
.label_827:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1656
	jmp	.label_1658
.label_1656:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_1659
	jmp	.label_1662
.label_1659:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1665
	jmp	.label_1669
.label_1665:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1671
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	add	edx, 0x7fffffff
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_696
	jmp	.label_681
.label_1671:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
.label_5730:
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_696
	jmp	.label_681
.label_1669:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_684
	jmp	.label_694
.label_684:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_696
	lea	rsi, [rsi]
	jmp	.label_681
.label_694:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_704
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0
	mov	rbp, rbp
	jle	.label_696
	lea	rdi, [rdi]
	jmp	.label_681
.label_704:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_696
.label_681:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	lea	rsi, [rsi]
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_696
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_761
.label_696:
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_745
	mov	rbp, rbp
	jmp	.label_724
.label_761:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	mov	rbp, rbp
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_745
	mov	rsp, rsp
	jmp	.label_724
.label_1662:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_817
	mov	rbp, rbp
	jmp	.label_820
.label_817:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_822
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_824
	jmp	.label_832
.label_822:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_824
	jmp	.label_832
.label_820:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1522
	jmp	.label_1543
.label_1522:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_824
	mov	rbp, rbp
	jmp	.label_832
.label_1543:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_861
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jle	.label_824
	jmp	.label_832
.label_861:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_824
.label_832:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_824
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_907
.label_824:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	mov	dil, cl
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_745
	jmp	.label_724
.label_907:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_745
	nop	
	jmp	.label_724
.label_1658:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_946
	lea	rsi, [rsi]
	jmp	.label_948
.label_946:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_953
	jmp	.label_956
.label_953:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_958
	lea	rdi, [rdi]
	jmp	.label_960
.label_958:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1323
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_1000
	jmp	.label_974
.label_1323:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_1000
	mov	rbp, rbp
	jmp	.label_974
.label_960:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1326
	lea	rsi, [rsi]
	jmp	.label_995
.label_1326:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1000
	nop	
	jmp	.label_974
.label_995:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1405
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jle	.label_1000
	lea	rdi, [rdi]
	jmp	.label_974
.label_1405:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	cmp	eax, esi
	jl	.label_1000
.label_974:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, 0xffff8000
	nop	
	jl	.label_1000
	mov	rsp, rsp
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1049
.label_1000:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	lea	rsi, [rsi]
	movsx	edi, si
	sub	ecx, edi
	mov	rsp, rsp
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_745
	jmp	.label_724
.label_1049:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	mov	rsp, rsp
	movsx	edi, si
	nop	
	sub	eax, edi
	mov	rsp, rsp
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_745
	mov	rsp, rsp
	jmp	.label_724
.label_956:
	mov	al, 1
	test	al, 1
	jne	.label_1200
	jmp	.label_933
.label_1200:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1086
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_964
	nop	
	jmp	.label_1098
.label_1086:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_964
	lea	rdi, [rdi]
	jmp	.label_1098
.label_933:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1094
	mov	rbp, rbp
	jmp	.label_1111
.label_1094:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_964
	jmp	.label_1098
.label_1111:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_1119
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_964
	mov	rbp, rbp
	jmp	.label_1098
.label_1119:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_964
.label_1098:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_964
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1159
.label_964:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	sub	ecx, esi
	nop	
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_745
	jmp	.label_724
.label_1159:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_745
	jmp	.label_724
.label_948:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1202
	jmp	.label_1614
.label_1202:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1205
	jmp	.label_1211
.label_1205:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1103
	jmp	.label_1667
.label_1103:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_1221
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	mov	rbp, rbp
	jl	.label_1134
	jmp	.label_1239
.label_1221:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, 0x80000000
	nop	
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_1134
	jmp	.label_1239
.label_1667:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_868
	lea	rsi, [rsi]
	jmp	.label_1254
.label_868:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1134
	jmp	.label_1239
.label_1254:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1352
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	jle	.label_1134
	jmp	.label_1239
.label_1352:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_1134
.label_1239:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_1134
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1297
.label_1134:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_745
	lea	rdi, [rdi]
	jmp	.label_724
.label_1297:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_745
	mov	rsp, rsp
	jmp	.label_724
.label_1211:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1616
	lea	rdi, [rdi]
	jmp	.label_1339
.label_1616:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1344
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jl	.label_1350
	nop	
	jmp	.label_1363
.label_1344:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	nop	
	jl	.label_1350
	jmp	.label_1363
.label_1339:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1373
	jmp	.label_674
.label_1373:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1350
	lea	rsi, [rsi]
	jmp	.label_1363
.label_674:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_1643
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_1350
	jmp	.label_1363
.label_1643:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_1350
.label_1363:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, -0x80000000
	nop	
	jl	.label_1350
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	jge	.label_1259
.label_1350:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdi + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_745
	mov	rsp, rsp
	jmp	.label_724
.label_1259:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_745
	jmp	.label_724
.label_1614:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1455
	mov	rsp, rsp
	jmp	.label_1458
.label_1455:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1235
	jmp	.label_1463
.label_1235:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1466
	jmp	.label_1472
.label_1466:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_1177
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	nop	
	cmp	rcx, 0
	jl	.label_887
	jmp	.label_1266
.label_1177:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_887
	nop	
	jmp	.label_1266
.label_1472:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1489
	lea	rdi, [rdi]
	jmp	.label_1496
.label_1489:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_887
	lea	rsi, [rsi]
	jmp	.label_1266
.label_1496:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1510
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jle	.label_887
	mov	rsp, rsp
	jmp	.label_1266
.label_1510:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_887
.label_1266:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_887
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_1582
.label_887:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_745
	mov	rbp, rbp
	jmp	.label_724
.label_1582:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_745
	mov	rsp, rsp
	jmp	.label_724
.label_1463:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1556
	nop	
	jmp	.label_795
.label_1556:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_1563
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_1534
	lea	rsi, [rsi]
	jmp	.label_1087
.label_1563:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_1534
	mov	rbp, rbp
	jmp	.label_1087
.label_795:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1583
	lea	rdi, [rdi]
	jmp	.label_1588
.label_1583:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1534
	nop	
	jmp	.label_1087
.label_1588:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1096
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_1534
	lea	rdi, [rdi]
	jmp	.label_1087
.label_1096:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_1534
.label_1087:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_1534
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_1626
.label_1534:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_745
	jmp	.label_724
.label_1626:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_745
	jmp	.label_724
.label_1458:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_733
	mov	rsp, rsp
	jmp	.label_1660
.label_733:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1664
	lea	rdi, [rdi]
	jmp	.label_1523
.label_1664:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_1670
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jl	.label_712
	lea	rdi, [rdi]
	jmp	.label_699
.label_1670:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_712
	jmp	.label_699
.label_1523:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_743
	mov	rsp, rsp
	jmp	.label_774
.label_743:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_712
	mov	rsp, rsp
	jmp	.label_699
.label_774:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_702
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_712
	lea	rsi, [rsi]
	jmp	.label_699
.label_702:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_712
.label_699:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	nop	
	jl	.label_712
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_750
.label_712:
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_745
	lea	rdi, [rdi]
	jmp	.label_724
.label_750:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_745
	jmp	.label_724
.label_1660:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_792
	lea	rdi, [rdi]
	jmp	.label_925
.label_792:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_802
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jl	.label_837
	jmp	.label_859
.label_802:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_837
	lea	rdi, [rdi]
	jmp	.label_859
.label_925:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_829
	mov	rsp, rsp
	jmp	.label_834
.label_829:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_837
	jmp	.label_859
.label_834:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_845
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_837
	mov	rbp, rbp
	jmp	.label_859
.label_845:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_837
.label_859:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_837
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_1673
.label_837:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	jne	.label_745
	mov	rbp, rbp
	jmp	.label_724
.label_1673:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_745
	mov	rsp, rsp
	jmp	.label_724
.label_745:
	mov	rbp, rbp
	jmp	.label_718
.label_724:
	jmp	.label_676
.label_5648:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	rcx, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	rsi, rsp
	nop	
	mov	qword ptr [rsi + 0x30], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rax + 0x10]
	movups	xmm2, xmmword ptr [rax + 0x20]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsi + 0x20], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsi + 0x10], xmm1
	movups	xmmword ptr [rsi], xmm0
	mov	rbp, rbp
	mov	esi, edx
	call	apply_relative_time
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_952
	lea	rdi, [rdi]
	jmp	.label_718
.label_952:
	jmp	.label_676
.label_5649:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rsp
	mov	qword ptr [rsi + 0x30], rdx
	nop	
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	mov	rsp, rsp
	movups	xmm2, xmmword ptr [rcx + 0x20]
	nop	
	movups	xmmword ptr [rsi + 0x20], xmm2
	movups	xmmword ptr [rsi + 0x10], xmm1
	movups	xmmword ptr [rsi], xmm0
	mov	esi, 1
	nop	
	mov	dword ptr [rbp - 0xbc0], eax
	call	apply_relative_time
	nop	
	test	al, 1
	jne	.label_970
	jmp	.label_718
.label_970:
	nop	
	jmp	.label_676
.label_5650:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rsp
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x30], rdx
	movups	xmm0, xmmword ptr [rcx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsi + 0x20], xmm2
	movups	xmmword ptr [rsi + 0x10], xmm1
	nop	
	movups	xmmword ptr [rsi], xmm0
	mov	esi, 1
	mov	dword ptr [rbp - 0xbc4], eax
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	mov	rbp, rbp
	jne	.label_818
	jmp	.label_718
.label_818:
	jmp	.label_676
.label_5651:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x5c0]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x5c0], 0
	nop	
	mov	qword ptr [rbp - 0x5b8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5b0], 0
	mov	qword ptr [rbp - 0x5a8], 0
	mov	qword ptr [rbp - 0x5a0], 0
	mov	qword ptr [rbp - 0x598], 0
	mov	dword ptr [rbp - 0x590], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x550], rcx
	jmp	.label_676
.label_5652:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x5f8]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x5f8], 0
	mov	qword ptr [rbp - 0x5f0], 0
	mov	qword ptr [rbp - 0x5e8], 0
	mov	qword ptr [rbp - 0x5e0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5d8], 0
	mov	qword ptr [rbp - 0x5d0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x550], rcx
	jmp	.label_676
.label_5653:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x630]
	nop	
	lea	rsi, [rbp - 0x550]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x630], 0
	mov	qword ptr [rbp - 0x628], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x620], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x618], 0
	mov	qword ptr [rbp - 0x610], 0
	mov	qword ptr [rbp - 0x608], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x600], 0
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x550], 1
	jmp	.label_676
.label_5654:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x668]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x668], 0
	nop	
	mov	qword ptr [rbp - 0x660], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x658], 0
	mov	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x648], 0
	nop	
	mov	qword ptr [rbp - 0x640], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x638], 0
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x548], rcx
	nop	
	jmp	.label_676
.label_5655:
	mov	eax, 0x38
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x6a0]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x6a0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x698], 0
	mov	qword ptr [rbp - 0x690], 0
	mov	qword ptr [rbp - 0x688], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x680], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x678], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x670], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x548], rcx
	mov	rsp, rsp
	jmp	.label_676
.label_5656:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x6d8]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x6d8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6d0], 0
	mov	qword ptr [rbp - 0x6c8], 0
	mov	qword ptr [rbp - 0x6c0], 0
	mov	qword ptr [rbp - 0x6b8], 0
	mov	qword ptr [rbp - 0x6b0], 0
	mov	dword ptr [rbp - 0x6a8], 0
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [rbp - 0x548], 1
	jmp	.label_676
.label_5657:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rbp - 0x710]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x710], 0
	mov	qword ptr [rbp - 0x708], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x700], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f8], 0
	mov	qword ptr [rbp - 0x6f0], 0
	mov	qword ptr [rbp - 0x6e8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6e0], 0
	nop	
	mov	byte ptr [rbp - 0xbc5], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0xbc5]
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1252
	mov	rsp, rsp
	jmp	.label_1256
.label_1252:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1260
	jmp	.label_1264
.label_1260:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1265
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_1275
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_1282
	jmp	.label_1298
.label_1275:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_1301
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1282
	lea	rdi, [rdi]
	jmp	.label_1298
.label_1301:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	movsx	esi, dil
	mov	rsp, rsp
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_1282
	lea	rdi, [rdi]
	jmp	.label_1298
.label_1265:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_1330
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1282
	mov	rsp, rsp
	jmp	.label_1298
.label_1330:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1347
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_1282
	jmp	.label_1298
.label_1347:
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	lea	rdi, [rdi]
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_1282
.label_1298:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_1282
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_777
.label_1282:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dl, cl
	movsx	edi, dl
	lea	rsi, [rsi]
	imul	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	mov	rsp, rsp
	movsx	rcx, dl
	nop	
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	nop	
	jne	.label_757
	jmp	.label_765
.label_777:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	mov	sil, dl
	movsx	edi, sil
	nop	
	imul	eax, edi
	mov	sil, al
	mov	rsp, rsp
	movsx	rdx, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_757
	nop	
	jmp	.label_765
.label_1264:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_1464
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x38], 0
	mov	rbp, rbp
	jge	.label_1473
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbd0], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xbd0]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1477
	jmp	.label_1454
.label_1473:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	jne	.label_1485
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1477
	jmp	.label_1454
.label_1485:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_1477
	jmp	.label_1454
.label_1464:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_1505
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1477
	jmp	.label_1454
.label_1505:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1513
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xbd8], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xbd8]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1477
	mov	rsp, rsp
	jmp	.label_1454
.label_1513:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cqo	
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_1477
.label_1454:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_1477
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1546
.label_1477:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	nop	
	imul	edx, esi
	lea	rdi, [rdi]
	mov	dil, dl
	movsx	rcx, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_757
	mov	rbp, rbp
	jmp	.label_765
.label_1546:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	mov	dil, al
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_757
	nop	
	jmp	.label_765
.label_1256:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1593
	jmp	.label_1598
.label_1593:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1601
	jmp	.label_1608
.label_1601:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1610
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1618
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	idiv	edi
	mov	rsp, rsp
	cmp	esi, eax
	jl	.label_683
	lea	rsi, [rsi]
	jmp	.label_680
.label_1618:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	jne	.label_1642
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_683
	jmp	.label_680
.label_1642:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	lea	rsi, [rsi]
	movsx	esi, di
	cmp	eax, esi
	nop	
	jl	.label_683
	mov	rbp, rbp
	jmp	.label_680
.label_1610:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1661
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_683
	jmp	.label_680
.label_1661:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1678
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	jl	.label_683
	jmp	.label_680
.label_1678:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	movsx	esi, di
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_683
.label_680:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	esi, cx
	imul	edx, esi
	cmp	edx, 0xffff8000
	jl	.label_683
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	edi, dx
	imul	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jge	.label_738
.label_683:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	imul	esi, edi
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_757
	jmp	.label_765
.label_738:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	si, dx
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	si, dx
	nop	
	movsx	edi, si
	mov	rsp, rsp
	imul	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_757
	lea	rsi, [rsi]
	jmp	.label_765
.label_1608:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_808
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1345
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xbe0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xbe0]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_846
	nop	
	jmp	.label_833
.label_1345:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_836
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_846
	mov	rbp, rbp
	jmp	.label_833
.label_836:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_846
	lea	rdi, [rdi]
	jmp	.label_833
.label_808:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_869
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_846
	jmp	.label_833
.label_869:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_880
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xbe8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xbe8]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_846
	lea	rsi, [rsi]
	jmp	.label_833
.label_880:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_846
.label_833:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_846
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_965
.label_846:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_757
	jmp	.label_765
.label_965:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	imul	eax, esi
	mov	rbp, rbp
	mov	di, ax
	nop	
	movsx	rdx, di
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_757
	jmp	.label_765
.label_1598:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_977
	lea	rdi, [rdi]
	jmp	.label_984
.label_977:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_986
	lea	rsi, [rsi]
	jmp	.label_993
.label_986:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	nop	
	jge	.label_997
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1006
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbec], edx
	cdq	
	idiv	esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xbec]
	lea	rsi, [rsi]
	cmp	esi, eax
	jl	.label_1011
	jmp	.label_1032
.label_1006:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, -1
	nop	
	jne	.label_1035
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1011
	nop	
	jmp	.label_1032
.label_1035:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbf0], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xbf0]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_1011
	mov	rsp, rsp
	jmp	.label_1032
.label_997:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_1061
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1011
	jmp	.label_1032
.label_1061:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_1033
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbf4], edx
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xbf4]
	cmp	esi, eax
	jl	.label_1011
	jmp	.label_1032
.label_1033:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xbf8], edx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xbf8]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edi, ecx
	cmp	eax, edi
	mov	rbp, rbp
	jl	.label_1011
.label_1032:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	mov	rbp, rbp
	jl	.label_1011
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	nop	
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1107
.label_1011:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_757
	mov	rsp, rsp
	jmp	.label_765
.label_1107:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	imul	eax, esi
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	nop	
	jne	.label_757
	jmp	.label_765
.label_993:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_1166
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1174
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc00], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xc00]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1182
	jmp	.label_1199
.label_1174:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_1569
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_1182
	jmp	.label_1199
.label_1569:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_1182
	lea	rdi, [rdi]
	jmp	.label_1199
.label_1166:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_1225
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1182
	jmp	.label_1199
.label_1225:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1572
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc08], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc08]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1182
	nop	
	jmp	.label_1199
.label_1572:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_1182
.label_1199:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rsp, rsp
	cmp	rax, -0x80000000
	jl	.label_1182
	mov	eax, 0x7fffffff
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1284
.label_1182:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_757
	jmp	.label_765
.label_1284:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_757
	jmp	.label_765
.label_984:
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1356
	lea	rsi, [rsi]
	jmp	.label_1376
.label_1356:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1388
	jmp	.label_1423
.label_1388:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_1340
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1453
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc10], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xc10]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1002
	jmp	.label_847
.label_1453:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_1370
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1002
	lea	rsi, [rsi]
	jmp	.label_847
.label_1370:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_1002
	jmp	.label_847
.label_1340:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1398
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1002
	jmp	.label_847
.label_1398:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_1413
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc18], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc18]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1002
	jmp	.label_847
.label_1413:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_1002
.label_847:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_1002
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_1077
.label_1002:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_757
	lea	rsi, [rsi]
	jmp	.label_765
.label_1077:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_757
	lea	rsi, [rsi]
	jmp	.label_765
.label_1423:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], 0
	jge	.label_1486
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_1495
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc20], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc20]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	jl	.label_935
	jmp	.label_1509
.label_1495:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_1498
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_935
	jmp	.label_1509
.label_1498:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	jl	.label_935
	lea	rsi, [rsi]
	jmp	.label_1509
.label_1486:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_1527
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_935
	jmp	.label_1509
.label_1527:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	lea	rsi, [rsi]
	jge	.label_1687
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc28], rdx
	nop	
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc28]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_935
	jmp	.label_1509
.label_1687:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_935
.label_1509:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_935
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1578
.label_935:
	mov	rbp, rbp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_757
	jmp	.label_765
.label_1578:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_757
	lea	rsi, [rsi]
	jmp	.label_765
.label_1376:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1620
	jmp	.label_1622
.label_1620:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_1276
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_1632
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc30], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xc30]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_688
	jmp	.label_686
.label_1632:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_1652
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_688
	jmp	.label_686
.label_1652:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_688
	jmp	.label_686
.label_1276:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_1668
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_688
	jmp	.label_686
.label_1668:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1681
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	qword ptr [rbp - 0xc38], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc38]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_688
	jmp	.label_686
.label_1681:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_688
.label_686:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_688
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_938
.label_688:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_757
	jmp	.label_765
.label_938:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_757
	jmp	.label_765
.label_1622:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_780
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_786
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc40], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xc40]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_793
	jmp	.label_814
.label_786:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_1448
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_793
	jmp	.label_814
.label_1448:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_793
	mov	rsp, rsp
	jmp	.label_814
.label_780:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_1243
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_793
	lea	rdi, [rdi]
	jmp	.label_814
.label_1243:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_855
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc48], rdx
	mov	rsp, rsp
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0xc48]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_793
	jmp	.label_814
.label_855:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_793
.label_814:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_793
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1450
.label_793:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_757
	lea	rsi, [rsi]
	jmp	.label_765
.label_1450:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_757
	nop	
	jmp	.label_765
.label_757:
	jmp	.label_718
.label_765:
	nop	
	jmp	.label_676
.label_5658:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rsi, [rbp - 0x748]
	lea	rdi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x748], 0
	mov	qword ptr [rbp - 0x740], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x738], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x730], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x728], 0
	mov	qword ptr [rbp - 0x720], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x718], 0
	mov	byte ptr [rbp - 0xc49], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0xc49]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1295
	mov	rsp, rsp
	jmp	.label_985
.label_1295:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_988
	jmp	.label_998
.label_988:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1001
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_1008
	nop	
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	lea	rsi, [rsi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_989
	nop	
	jmp	.label_1036
.label_1008:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, -1
	jne	.label_1039
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_989
	jmp	.label_1036
.label_1039:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_989
	lea	rsi, [rsi]
	jmp	.label_1036
.label_1001:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jne	.label_1067
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_989
	jmp	.label_1036
.label_1067:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1074
	mov	rsp, rsp
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	edi, dl
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	lea	rsi, [rsi]
	cmp	esi, eax
	jl	.label_989
	jmp	.label_1036
.label_1074:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rbp, rbp
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_989
.label_1036:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	nop	
	cmp	edx, -0x80
	jl	.label_989
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	imul	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	jge	.label_1114
.label_989:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	imul	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	rcx, dl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_703
	mov	rbp, rbp
	jmp	.label_759
.label_1114:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	nop	
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	nop	
	mov	sil, dl
	movsx	edi, sil
	mov	rsp, rsp
	imul	eax, edi
	mov	rsp, rsp
	mov	sil, al
	lea	rsi, [rsi]
	movsx	rdx, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_703
	mov	rbp, rbp
	jmp	.label_759
.label_998:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_1187
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1194
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc58], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xc58]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_678
	jmp	.label_1206
.label_1194:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_1209
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_678
	jmp	.label_1206
.label_1209:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_678
	mov	rbp, rbp
	jmp	.label_1206
.label_1187:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1241
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_678
	jmp	.label_1206
.label_1241:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1249
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc60], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc60]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_678
	jmp	.label_1206
.label_1249:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_678
.label_1206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	mov	rsp, rsp
	jl	.label_678
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1296
.label_678:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	rsp, rsp
	mov	dil, dl
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_703
	lea	rsi, [rsi]
	jmp	.label_759
.label_1296:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	nop	
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_703
	lea	rsi, [rsi]
	jmp	.label_759
.label_985:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1346
	jmp	.label_1090
.label_1346:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1354
	mov	rbp, rbp
	jmp	.label_1359
.label_1354:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1362
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1368
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dx, cx
	movsx	edi, dx
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	edi
	cmp	esi, eax
	mov	rbp, rbp
	jl	.label_1375
	nop	
	jmp	.label_754
.label_1368:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, -1
	nop	
	jne	.label_1391
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1375
	lea	rsi, [rsi]
	jmp	.label_754
.label_1391:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	nop	
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	di, cx
	mov	rbp, rbp
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_1375
	mov	rbp, rbp
	jmp	.label_754
.label_1362:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1432
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1375
	jmp	.label_754
.label_1432:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1443
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	cdq	
	nop	
	idiv	edi
	lea	rsi, [rsi]
	cmp	esi, eax
	nop	
	jl	.label_1375
	nop	
	jmp	.label_754
.label_1443:
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	cdq	
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	nop	
	jl	.label_1375
.label_754:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_1375
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	lea	rdi, [rdi]
	imul	esi, edi
	cmp	eax, esi
	jge	.label_1493
.label_1375:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	nop	
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	edi, dx
	mov	rsp, rsp
	imul	esi, edi
	mov	rsp, rsp
	mov	dx, si
	movsx	rcx, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_703
	lea	rsi, [rsi]
	jmp	.label_759
.label_1493:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	mov	rbp, rbp
	imul	eax, edi
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x540], rdx
	nop	
	test	cl, 1
	nop	
	jne	.label_703
	mov	rsp, rsp
	jmp	.label_759
.label_1359:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_1535
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1539
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc68], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc68]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1542
	lea	rsi, [rsi]
	jmp	.label_1562
.label_1539:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_1565
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1542
	nop	
	jmp	.label_1562
.label_1565:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_1542
	jmp	.label_1562
.label_1535:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_1580
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1542
	jmp	.label_1562
.label_1580:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1590
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc70], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xc70]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1542
	lea	rdi, [rdi]
	jmp	.label_1562
.label_1590:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_1542
.label_1562:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_1542
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1641
.label_1542:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_703
	jmp	.label_759
.label_1641:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	nop	
	imul	eax, esi
	mov	di, ax
	lea	rdi, [rdi]
	movsx	rdx, di
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_703
	lea	rdi, [rdi]
	jmp	.label_759
.label_1090:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1682
	jmp	.label_1684
.label_1682:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1686
	jmp	.label_1689
.label_1686:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1690
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_677
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xc74], edx
	mov	rsp, rsp
	cdq	
	idiv	esi
	mov	esi, dword ptr [rbp - 0xc74]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_693
	jmp	.label_723
.label_677:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, -1
	lea	rdi, [rdi]
	jne	.label_725
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_693
	nop	
	jmp	.label_723
.label_725:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0xc78], edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc78]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	lea	rdi, [rdi]
	cmp	eax, edi
	lea	rsi, [rsi]
	jl	.label_693
	lea	rdi, [rdi]
	jmp	.label_723
.label_1690:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_770
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_693
	jmp	.label_723
.label_770:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_782
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xc7c], edx
	mov	rbp, rbp
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xc7c]
	lea	rsi, [rsi]
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_693
	jmp	.label_723
.label_782:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc80], edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc80]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_693
.label_723:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	nop	
	imul	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_693
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_843
.label_693:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	imul	edx, esi
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_703
	lea	rsi, [rsi]
	jmp	.label_759
.label_843:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_703
	lea	rdi, [rdi]
	jmp	.label_759
.label_1689:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_813
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_850
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc88], rdx
	lea	rsi, [rsi]
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc88]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_892
	jmp	.label_785
.label_850:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_943
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_892
	jmp	.label_785
.label_943:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_892
	jmp	.label_785
.label_813:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_963
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_892
	mov	rsp, rsp
	jmp	.label_785
.label_963:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_972
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc90], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc90]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_892
	jmp	.label_785
.label_972:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_892
.label_785:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80000000
	nop	
	jl	.label_892
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	jge	.label_1024
.label_892:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x540], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_703
	jmp	.label_759
.label_1024:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rdx
	nop	
	test	cl, 1
	jne	.label_703
	lea	rdi, [rdi]
	jmp	.label_759
.label_1684:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1072
	jmp	.label_1075
.label_1072:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1076
	jmp	.label_842
.label_1076:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_1078
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1196
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc98], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xc98]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_1029
	mov	rsp, rsp
	jmp	.label_942
.label_1196:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	jne	.label_1100
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1029
	jmp	.label_942
.label_1100:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1029
	jmp	.label_942
.label_1078:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_1395
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1029
	jmp	.label_942
.label_1395:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1142
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xca0], rdx
	lea	rdi, [rdi]
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0xca0]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1029
	jmp	.label_942
.label_1142:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1029
.label_942:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_1029
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1190
.label_1029:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_703
	mov	rsp, rsp
	jmp	.label_759
.label_1190:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_703
	mov	rsp, rsp
	jmp	.label_759
.label_842:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_1231
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_779
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	qword ptr [rbp - 0xca8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xca8]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_931
	mov	rbp, rbp
	jmp	.label_1004
.label_779:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_954
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_931
	jmp	.label_1004
.label_954:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_931
	nop	
	jmp	.label_1004
.label_1231:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_1285
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_931
	nop	
	jmp	.label_1004
.label_1285:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1299
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcb0], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xcb0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_931
	lea	rdi, [rdi]
	jmp	.label_1004
.label_1299:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_931
.label_1004:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_931
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1168
.label_931:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_703
	mov	rbp, rbp
	jmp	.label_759
.label_1168:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_703
	nop	
	jmp	.label_759
.label_1075:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1392
	jmp	.label_1402
.label_1392:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_1403
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_758
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcb8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcb8]
	nop	
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_1153
	jmp	.label_917
.label_758:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_1433
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1153
	jmp	.label_917
.label_1433:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_1153
	jmp	.label_917
.label_1403:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_1451
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1153
	jmp	.label_917
.label_1451:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1109
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcc0], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0xcc0]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1153
	jmp	.label_917
.label_1109:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_1153
.label_917:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_1153
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_1500
.label_1153:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_703
	nop	
	jmp	.label_759
.label_1500:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_703
	mov	rsp, rsp
	jmp	.label_759
.label_1402:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_1529
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1163
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xcc8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xcc8]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1179
	nop	
	jmp	.label_764
.label_1163:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_1553
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1179
	jmp	.label_764
.label_1553:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_1179
	jmp	.label_764
.label_1529:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_968
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1179
	jmp	.label_764
.label_968:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_1586
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcd0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcd0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1179
	jmp	.label_764
.label_1586:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_1179
.label_764:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	jl	.label_1179
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	jge	.label_1634
.label_1179:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_703
	jmp	.label_759
.label_1634:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_703
	jmp	.label_759
.label_703:
	jmp	.label_718
.label_759:
	jmp	.label_676
.label_5659:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x780]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x780], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x778], 0
	mov	qword ptr [rbp - 0x770], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x768], 0
	mov	qword ptr [rbp - 0x760], 0
	mov	qword ptr [rbp - 0x758], 0
	mov	dword ptr [rbp - 0x750], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	jmp	.label_676
.label_5660:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0x7b8]
	nop	
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x7b8], 0
	nop	
	mov	qword ptr [rbp - 0x7b0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x7a8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7a0], 0
	mov	qword ptr [rbp - 0x798], 0
	mov	qword ptr [rbp - 0x790], 0
	mov	dword ptr [rbp - 0x788], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x538], rcx
	jmp	.label_676
.label_5661:
	nop	
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x7f0]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x7f0], 0
	mov	qword ptr [rbp - 0x7e8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7e0], 0
	mov	qword ptr [rbp - 0x7d8], 0
	mov	qword ptr [rbp - 0x7d0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x7c8], 0
	mov	dword ptr [rbp - 0x7c0], 0
	mov	rbp, rbp
	mov	rdi, rsi
	nop	
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x538], rcx
	mov	rsp, rsp
	jmp	.label_676
.label_5662:
	mov	rsp, rsp
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x828]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x828], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x820], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x818], 0
	nop	
	mov	qword ptr [rbp - 0x810], 0
	mov	qword ptr [rbp - 0x808], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x800], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7f8], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	qword ptr [rbp - 0x538], 1
	jmp	.label_676
.label_5663:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x860]
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x860], 0
	mov	qword ptr [rbp - 0x858], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x850], 0
	mov	qword ptr [rbp - 0x848], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x840], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x830], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	qword ptr [rbp - 0x530], rcx
	mov	rbp, rbp
	jmp	.label_676
.label_5664:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x898]
	nop	
	lea	rsi, [rbp - 0x550]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x898], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x890], 0
	nop	
	mov	qword ptr [rbp - 0x888], 0
	mov	qword ptr [rbp - 0x880], 0
	mov	qword ptr [rbp - 0x878], 0
	mov	qword ptr [rbp - 0x870], 0
	mov	dword ptr [rbp - 0x868], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x530], rcx
	lea	rdi, [rdi]
	jmp	.label_676
.label_5665:
	mov	eax, 0x38
	nop	
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x8d0]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x8d0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8c8], 0
	mov	qword ptr [rbp - 0x8c0], 0
	mov	qword ptr [rbp - 0x8b8], 0
	mov	qword ptr [rbp - 0x8b0], 0
	mov	qword ptr [rbp - 0x8a8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8a0], 0
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	qword ptr [rbp - 0x530], 1
	jmp	.label_676
.label_5666:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x908]
	lea	rsi, [rbp - 0x550]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x908], 0
	mov	qword ptr [rbp - 0x900], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f8], 0
	mov	qword ptr [rbp - 0x8f0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8e8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8e0], 0
	mov	dword ptr [rbp - 0x8d8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x528], rcx
	lea	rsi, [rsi]
	jmp	.label_676
.label_5667:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x940]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x940], 0
	mov	qword ptr [rbp - 0x938], 0
	mov	qword ptr [rbp - 0x930], 0
	mov	qword ptr [rbp - 0x928], 0
	nop	
	mov	qword ptr [rbp - 0x920], 0
	mov	qword ptr [rbp - 0x918], 0
	nop	
	mov	dword ptr [rbp - 0x910], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x528], rcx
	jmp	.label_676
.label_5668:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x978]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x978], 0
	mov	qword ptr [rbp - 0x970], 0
	mov	qword ptr [rbp - 0x968], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x960], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x958], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x950], 0
	mov	dword ptr [rbp - 0x948], 0
	mov	rdi, rsi
	mov	rsi, rcx
	nop	
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x528], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x520], eax
	jmp	.label_676
.label_5669:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x9b0]
	lea	rsi, [rbp - 0x550]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9b0], 0
	mov	qword ptr [rbp - 0x9a8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9a0], 0
	mov	qword ptr [rbp - 0x998], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x990], 0
	nop	
	mov	qword ptr [rbp - 0x988], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x980], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x528], rcx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	dword ptr [rbp - 0x520], eax
	jmp	.label_676
.label_5670:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x9e8]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9e8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9e0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x9d8], 0
	mov	qword ptr [rbp - 0x9d0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x9c8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9c0], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9b8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x528], 1
	mov	rbp, rbp
	jmp	.label_676
.label_5671:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0xa20]
	nop	
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0xa20], 0
	mov	qword ptr [rbp - 0xa18], 0
	mov	qword ptr [rbp - 0xa10], 0
	mov	qword ptr [rbp - 0xa08], 0
	mov	qword ptr [rbp - 0xa00], 0
	mov	qword ptr [rbp - 0x9f8], 0
	mov	dword ptr [rbp - 0x9f0], 0
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x550], rcx
	jmp	.label_676
.label_5672:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xa58]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x550]
	nop	
	mov	qword ptr [rbp - 0xa58], 0
	mov	qword ptr [rbp - 0xa50], 0
	mov	qword ptr [rbp - 0xa48], 0
	mov	qword ptr [rbp - 0xa40], 0
	mov	qword ptr [rbp - 0xa38], 0
	mov	qword ptr [rbp - 0xa30], 0
	nop	
	mov	dword ptr [rbp - 0xa28], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x548], rcx
	lea	rsi, [rsi]
	jmp	.label_676
.label_5673:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rsi, [rbp - 0xa90]
	lea	rdi, [rbp - 0x550]
	mov	qword ptr [rbp - 0xa90], 0
	mov	qword ptr [rbp - 0xa88], 0
	mov	qword ptr [rbp - 0xa80], 0
	mov	qword ptr [rbp - 0xa78], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa70], 0
	mov	qword ptr [rbp - 0xa68], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa60], 0
	mov	byte ptr [rbp - 0xcd1], cl
	call	memcpy
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0xcd1]
	test	cl, 1
	nop	
	jne	.label_959
	jmp	.label_1269
.label_959:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1271
	jmp	.label_1273
.label_1271:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1025
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1279
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	nop	
	cdq	
	idiv	edi
	mov	rbp, rbp
	cmp	esi, eax
	mov	rbp, rbp
	jl	.label_1291
	jmp	.label_1308
.label_1279:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_1310
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1291
	mov	rsp, rsp
	jmp	.label_1308
.label_1310:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	nop	
	cdq	
	nop	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_1291
	jmp	.label_1308
.label_1025:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_1333
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1291
	jmp	.label_1308
.label_1333:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1349
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	lea	rdi, [rdi]
	cdq	
	mov	rbp, rbp
	idiv	edi
	cmp	esi, eax
	nop	
	jl	.label_1291
	jmp	.label_1308
.label_1349:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	cdq	
	idiv	esi
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_1291
.label_1308:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	imul	edx, esi
	cmp	edx, -0x80
	jl	.label_1291
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	edi, dl
	lea	rsi, [rsi]
	imul	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jge	.label_1410
.label_1291:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dl, cl
	nop	
	movsx	edi, dl
	imul	esi, edi
	mov	dl, sil
	nop	
	movsx	rcx, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_748
	lea	rsi, [rsi]
	jmp	.label_776
.label_1410:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	imul	eax, edi
	mov	sil, al
	movsx	rdx, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_748
	jmp	.label_776
.label_1273:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_1462
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1469
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xce0], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xce0]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1193
	jmp	.label_1278
.label_1469:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	jne	.label_1482
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1193
	jmp	.label_1278
.label_1482:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1193
	jmp	.label_1278
.label_1462:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1501
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1193
	nop	
	jmp	.label_1278
.label_1501:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1488
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xce8], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xce8]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_1193
	lea	rsi, [rsi]
	jmp	.label_1278
.label_1488:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1193
.label_1278:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	jl	.label_1193
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_1541
.label_1193:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	mov	dil, dl
	mov	rsp, rsp
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_748
	jmp	.label_776
.label_1541:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	imul	eax, esi
	lea	rdi, [rdi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_748
	nop	
	jmp	.label_776
.label_1269:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1587
	jmp	.label_1594
.label_1587:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1596
	jmp	.label_1602
.label_1596:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1604
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1613
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_673
	lea	rsi, [rsi]
	jmp	.label_671
.label_1613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	lea	rdi, [rdi]
	jne	.label_1633
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_673
	jmp	.label_671
.label_1633:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	esi, di
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_673
	jmp	.label_671
.label_1604:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_1657
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_673
	lea	rsi, [rsi]
	jmp	.label_671
.label_1657:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1672
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	nop	
	movsx	edi, dx
	nop	
	cdq	
	idiv	edi
	cmp	esi, eax
	jl	.label_673
	jmp	.label_671
.label_1672:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_673
.label_671:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	nop	
	movsx	esi, cx
	lea	rsi, [rsi]
	imul	edx, esi
	nop	
	cmp	edx, 0xffff8000
	nop	
	jl	.label_673
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	mov	rsp, rsp
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_729
.label_673:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rbp, rbp
	movsx	edi, dx
	mov	rbp, rbp
	imul	esi, edi
	mov	dx, si
	movsx	rcx, dx
	nop	
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_748
	nop	
	jmp	.label_776
.label_729:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	nop	
	mov	si, dx
	movsx	edi, si
	lea	rdi, [rdi]
	imul	eax, edi
	mov	rbp, rbp
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_748
	lea	rdi, [rdi]
	jmp	.label_776
.label_1602:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_809
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1599
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xcf0], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xcf0]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_821
	lea	rdi, [rdi]
	jmp	.label_852
.label_1599:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_838
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_821
	jmp	.label_852
.label_838:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_821
	lea	rsi, [rsi]
	jmp	.label_852
.label_809:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_871
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_821
	jmp	.label_852
.label_871:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_879
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xcf8], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xcf8]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_821
	jmp	.label_852
.label_879:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_821
.label_852:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x8000
	mov	rbp, rbp
	jl	.label_821
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_932
.label_821:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	jne	.label_748
	lea	rdi, [rdi]
	jmp	.label_776
.label_932:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	lea	rdi, [rdi]
	imul	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	qword ptr [rbp - 0x540], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_748
	mov	rbp, rbp
	jmp	.label_776
.label_1594:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_975
	jmp	.label_978
.label_975:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_981
	jmp	.label_1329
.label_981:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_990
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1629
	nop	
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcfc], edx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xcfc]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_1009
	mov	rsp, rsp
	jmp	.label_1027
.label_1629:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, -1
	nop	
	jne	.label_1030
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1009
	lea	rsi, [rsi]
	jmp	.label_1027
.label_1030:
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xd00], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd00]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edi, ecx
	mov	rsp, rsp
	cmp	eax, edi
	nop	
	jl	.label_1009
	jmp	.label_1027
.label_990:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1057
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1009
	nop	
	jmp	.label_1027
.label_1057:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_752
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xd04], edx
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xd04]
	mov	rsp, rsp
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_1009
	jmp	.label_1027
.label_752:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xd08], edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xd08]
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rsi, [rsi]
	cmp	eax, edi
	jl	.label_1009
.label_1027:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_1009
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	cmp	eax, edx
	jge	.label_1106
.label_1009:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_748
	jmp	.label_776
.label_1106:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	nop	
	jne	.label_748
	mov	rsp, rsp
	jmp	.label_776
.label_1329:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_1162
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1169
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd10], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd10]
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_983
	jmp	.label_1203
.label_1169:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_1600
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_983
	jmp	.label_1203
.label_1600:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_983
	mov	rsp, rsp
	jmp	.label_1203
.label_1162:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1219
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_983
	mov	rsp, rsp
	jmp	.label_1203
.label_1219:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1232
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd18], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xd18]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_983
	jmp	.label_1203
.label_1232:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_983
.label_1203:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rax, qword ptr [rcx]
	nop	
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_983
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1277
.label_983:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	nop	
	jne	.label_748
	nop	
	jmp	.label_776
.label_1277:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_748
	lea	rdi, [rdi]
	jmp	.label_776
.label_978:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_1327
	mov	rbp, rbp
	jmp	.label_1331
.label_1327:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1334
	mov	rsp, rsp
	jmp	.label_866
.label_1334:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_1343
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1348
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd20], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd20]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_789
	jmp	.label_1381
.label_1348:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_1374
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_789
	jmp	.label_1381
.label_1374:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_789
	mov	rbp, rbp
	jmp	.label_1381
.label_1343:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1400
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_789
	nop	
	jmp	.label_1381
.label_1400:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1415
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd28]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_789
	jmp	.label_1381
.label_1415:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_789
.label_1381:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_789
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rax, rcx
	jge	.label_1071
.label_789:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_748
	jmp	.label_776
.label_1071:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_748
	mov	rsp, rsp
	jmp	.label_776
.label_866:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_1484
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1491
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd30], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd30]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_944
	mov	rsp, rsp
	jmp	.label_800
.label_1491:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_1507
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_944
	nop	
	jmp	.label_800
.label_1507:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_944
	jmp	.label_800
.label_1484:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1524
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_944
	jmp	.label_800
.label_1524:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1532
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd38], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xd38]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_944
	mov	rsp, rsp
	jmp	.label_800
.label_1532:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_944
.label_800:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_944
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_967
.label_944:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_748
	mov	rsp, rsp
	jmp	.label_776
.label_967:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_748
	nop	
	jmp	.label_776
.label_1331:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_994
	mov	rbp, rbp
	jmp	.label_1621
.label_994:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_1213
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1630
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	qword ptr [rbp - 0xd40], rdx
	mov	rsp, rsp
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xd40]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_692
	jmp	.label_775
.label_1630:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_1653
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_692
	lea	rdi, [rdi]
	jmp	.label_775
.label_1653:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_692
	nop	
	jmp	.label_775
.label_1213:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_1674
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_692
	jmp	.label_775
.label_1674:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1683
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd48], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0xd48]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_692
	jmp	.label_775
.label_1683:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_692
.label_775:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_692
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_945
.label_692:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	jne	.label_748
	nop	
	jmp	.label_776
.label_945:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_748
	jmp	.label_776
.label_1621:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_783
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1215
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd50], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd50]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	nop	
	jl	.label_796
	mov	rsp, rsp
	jmp	.label_815
.label_1215:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_1366
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_796
	jmp	.label_815
.label_1366:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_796
	jmp	.label_815
.label_783:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_839
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_796
	nop	
	jmp	.label_815
.label_839:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_851
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd58], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd58]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_796
	lea	rdi, [rdi]
	jmp	.label_815
.label_851:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_796
.label_815:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_796
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_831
.label_796:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	nop	
	jne	.label_748
	jmp	.label_776
.label_831:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_748
	mov	rsp, rsp
	jmp	.label_776
.label_748:
	jmp	.label_718
.label_776:
	jmp	.label_676
.label_5674:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0xac8]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x550]
	nop	
	mov	qword ptr [rbp - 0xac8], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xac0], 0
	mov	qword ptr [rbp - 0xab8], 0
	mov	qword ptr [rbp - 0xab0], 0
	nop	
	mov	qword ptr [rbp - 0xaa8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa0], 0
	mov	dword ptr [rbp - 0xa98], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x538], rcx
	jmp	.label_676
.label_5675:
	lea	rdi, [rdi]
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xb00]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0xb00], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xaf8], 0
	mov	qword ptr [rbp - 0xaf0], 0
	mov	qword ptr [rbp - 0xae8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xae0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xad0], 0
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x530], rcx
	mov	rbp, rbp
	jmp	.label_676
.label_5676:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xb38]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb38], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb30], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb28], 0
	mov	qword ptr [rbp - 0xb20], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb18], 0
	mov	qword ptr [rbp - 0xb10], 0
	mov	dword ptr [rbp - 0xb08], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x528], rcx
	jmp	.label_676
.label_5677:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rcx, [rbp - 0xb70]
	lea	rsi, [rbp - 0x550]
	nop	
	mov	qword ptr [rbp - 0xb70], 0
	mov	qword ptr [rbp - 0xb68], 0
	mov	qword ptr [rbp - 0xb60], 0
	nop	
	mov	qword ptr [rbp - 0xb58], 0
	mov	qword ptr [rbp - 0xb50], 0
	mov	qword ptr [rbp - 0xb48], 0
	mov	dword ptr [rbp - 0xb40], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	jmp	.label_676
.label_5678:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	time_overflow
	nop	
	test	al, 1
	jne	.label_1046
	nop	
	jmp	.label_1101
.label_1046:
	jmp	.label_718
.label_1101:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x550], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x548], 0
	jmp	.label_676
.label_5679:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rdi, qword ptr [rax + 8]
	call	time_overflow
	test	al, 1
	jne	.label_1115
	jmp	.label_1118
.label_1115:
	jmp	.label_718
.label_1118:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x550], rax
	mov	qword ptr [rbp - 0x548], 0
	lea	rsi, [rsi]
	jmp	.label_676
.label_5680:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	call	digits_to_date_time
	jmp	.label_676
.label_5681:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rax, -0x38
	nop	
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	call	digits_to_date_time
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rax + 0x30]
	nop	
	mov	rsi, rsp
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x30], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rax + 0x10]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rax + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsi + 0x20], xmm2
	movups	xmmword ptr [rsi + 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [rsi], xmm0
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd5c], edx
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1197
	jmp	.label_718
.label_1197:
	jmp	.label_676
.label_5682:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x550], -1
	mov	rbp, rbp
	jmp	.label_676
.label_5683:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x550], rax
	nop	
	jmp	.label_676
.label_1425:
	jmp	.label_676
.label_676:
	xor	eax, eax
	mov	ecx, 0x38
	mov	edx, ecx
	lea	rsi, [rbp - 0x550]
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x554]
	mov	r8, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	mov	r10, rdi
	sub	r10, r9
	mov	rbp, rbp
	imul	r9, r10, 0x38
	add	r8, r9
	mov	qword ptr [rbp - 0x500], r8
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x554]
	nop	
	mov	r8, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	lea	rdi, [rdi]
	sub	rdi, r9
	lea	rdi, [rdi]
	shl	rdi, 1
	add	r8, rdi
	mov	qword ptr [rbp - 0x90], r8
	nop	
	mov	dword ptr [rbp - 0x554], 0
	mov	rdi, qword ptr [rbp - 0x500]
	add	rdi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x500], rdi
	mov	dword ptr [rbp - 0xd60], eax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x50c]
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yyr1]]
	mov	dword ptr [rbp - 0x50c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50c]
	mov	rsp, rsp
	sub	eax, 0x1c
	movsxd	rdx, eax
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yypgoto]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	movsx	ecx, word ptr [rdx]
	lea	rsi, [rsi]
	add	eax, ecx
	mov	dword ptr [rbp - 0x50], eax
	mov	eax, dword ptr [rbp - 0xd60]
	cmp	eax, dword ptr [rbp - 0x50]
	jg	.label_951
	cmp	dword ptr [rbp - 0x50], 0x70
	mov	rbp, rbp
	jg	.label_951
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	movsx	edx, word ptr [rax]
	cmp	ecx, edx
	jne	.label_951
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	dword ptr [rbp - 0x50], ecx
	lea	rsi, [rsi]
	jmp	.label_1092
.label_951:
	mov	eax, dword ptr [rbp - 0x50c]
	sub	eax, 0x1c
	mov	rsp, rsp
	movsxd	rcx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + yydefgoto]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
.label_1092:
	jmp	.label_1305
.label_1420:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], -2
	mov	rbp, rbp
	jne	.label_1307
	mov	eax, 0xfffffffe
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd64], eax
	jmp	.label_1313
.label_1307:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0x115
	ja	.label_1245
	movsxd	rax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0xd68], ecx
	jmp	.label_1320
.label_1245:
	lea	rsi, [rsi]
	mov	eax, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd68], eax
	jmp	.label_1320
.label_1320:
	nop	
	mov	eax, dword ptr [rbp - 0xd68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd64], eax
.label_1313:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd64]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x514], eax
	cmp	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	jne	.label_1360
	nop	
	movabs	rsi, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	yyerror
	mov	dword ptr [rbp - 0xd6c], eax
.label_1360:
	cmp	dword ptr [rbp - 0x54], 3
	lea	rsi, [rsi]
	jne	.label_1351
	cmp	dword ptr [rbp - 0xc], 0
	jg	.label_1355
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jne	.label_1357
	jmp	.label_718
.label_1357:
	lea	rdi, [rdi]
	jmp	.label_1365
.label_1355:
	movabs	rdi, OFFSET FLAT:.str.13_0
	nop	
	lea	rdx, [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x514]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	yydestruct
	mov	dword ptr [rbp - 0xc], 0xfffffffe
.label_1365:
	jmp	.label_1351
.label_1351:
	nop	
	jmp	.label_1377
.label_1377:
	mov	dword ptr [rbp - 0x54], 3
.label_1445:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	dword ptr [rbp - 0x50c], ecx
	cmp	dword ptr [rbp - 0x50c], -0x5d
	lea	rsi, [rsi]
	je	.label_1429
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x50c]
	add	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50c], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x50c]
	jg	.label_1389
	cmp	dword ptr [rbp - 0x50c], 0x70
	mov	rsp, rsp
	jg	.label_1389
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x50c]
	lea	rdi, [rdi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	cmp	ecx, 1
	mov	rbp, rbp
	jne	.label_1389
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x50c]
	movzx	edx,  byte ptr [byte ptr [+ (rcx * 1) + yytable]]
	nop	
	mov	dword ptr [rbp - 0x50c], edx
	cmp	eax, dword ptr [rbp - 0x50c]
	jge	.label_1417
	nop	
	jmp	.label_1427
.label_1417:
	jmp	.label_1389
.label_1389:
	jmp	.label_1429
.label_1429:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jne	.label_1430
	lea	rdi, [rdi]
	jmp	.label_718
.label_1430:
	movabs	rdi, OFFSET FLAT:.str.14_0
	movsxd	rax, dword ptr [rbp - 0x50]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x500]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x500], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	movsx	esi, word ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], esi
	jmp	.label_1445
.label_1427:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	lea	rcx, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	add	rsi, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x500], rsi
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_1305
.label_1286:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x510], 0
	nop	
	jmp	.label_1251
.label_718:
	mov	dword ptr [rbp - 0x510], 1
	nop	
	jmp	.label_1251
.label_1108:
	movabs	rsi, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	yyerror
	mov	dword ptr [rbp - 0x510], 2
	mov	dword ptr [rbp - 0xd70], eax
.label_1251:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], -2
	mov	rbp, rbp
	je	.label_1487
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0x115
	nop	
	ja	.label_1494
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0xd74], ecx
	lea	rsi, [rsi]
	jmp	.label_1383
.label_1494:
	mov	eax, 2
	mov	dword ptr [rbp - 0xd74], eax
	jmp	.label_1383
.label_1383:
	mov	eax, dword ptr [rbp - 0xd74]
	movabs	rdi, OFFSET FLAT:.str.16_0
	lea	rdx, [rbp - 0x48]
	mov	dword ptr [rbp - 0x514], eax
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x514]
	mov	rcx, qword ptr [rbp - 8]
	call	yydestruct
.label_1487:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x554]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movsxd	rsi, eax
	mov	rdi, rcx
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 0x38
	lea	rsi, [rsi]
	add	rdx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x500], rdx
	mov	eax, dword ptr [rbp - 0x554]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x90]
	movsxd	rsi, eax
	lea	rdi, [rdi]
	sub	rcx, rsi
	shl	rcx, 1
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdx
.label_1545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	je	.label_1528
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.17_1
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	movsx	rax, word ptr [rax]
	lea	rsi, [rsi]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rax, -0x38
	mov	qword ptr [rbp - 0x500], rax
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -2
	nop	
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1545
.label_1528:
	lea	rax, [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	rcx, rax
	je	.label_1558
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_1558:
	nop	
	mov	eax, dword ptr [rbp - 0x510]
	nop	
	add	rsp, 0xdb0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417df0

	.globl yylex
	.type yylex, @function
yylex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x610
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_1901:
	lea	rdi, [rdi]
	jmp	.label_1987
.label_1987:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	movzx	edi, byte ptr [rbp - 0x19]
	nop	
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_2036
	lea	rsi, [rsi]
	jmp	.label_2056
.label_2036:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1987
.label_2056:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2117
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	je	.label_2117
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x2b
	jne	.label_2138
.label_2117:
	mov	qword ptr [rbp - 0x38], 0
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x2d
	je	.label_2142
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	cmp	eax, 0x2b
	jne	.label_2147
.label_2142:
	mov	eax, 1
	mov	ecx, 0xffffffff
	nop	
	movzx	edx, byte ptr [rbp - 0x19]
	nop	
	cmp	edx, 0x2d
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x2c], eax
.label_2177:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	mov	byte ptr [rbp - 0x19], sil
	nop	
	movzx	edi, byte ptr [rbp - 0x19]
	call	c_isspace
	mov	rsp, rsp
	test	al, 1
	jne	.label_1824
	lea	rsi, [rsi]
	jmp	.label_2171
.label_1824:
	jmp	.label_2177
.label_2171:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x19]
	call	c_isdigit
	mov	rbp, rbp
	test	al, 1
	jne	.label_2183
	mov	rbp, rbp
	jmp	.label_1901
.label_2183:
	nop	
	jmp	.label_1915
.label_2147:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], 0
.label_1915:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1834:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1973
	nop	
	jmp	.label_2197
.label_1973:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2013
	jmp	.label_2202
.label_2013:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2204
	lea	rdi, [rdi]
	jmp	.label_2086
.label_2204:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1764
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	nop	
	cmp	edx, 0xccccccc
	jl	.label_1696
	lea	rsi, [rsi]
	jmp	.label_1692
.label_1764:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2225
	jmp	.label_2228
.label_2225:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1696
	mov	rbp, rbp
	jmp	.label_1692
.label_2228:
	mov	eax, 0xf3333334
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_1696
	jmp	.label_1692
.label_2086:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1707
	lea	rsi, [rsi]
	jmp	.label_1711
.label_1707:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1696
	nop	
	jmp	.label_1692
.label_1711:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1720
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0xf3333334
	jl	.label_1696
	mov	rbp, rbp
	jmp	.label_1692
.label_1720:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_1696
.label_1692:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	imul	edx, edx, 0xa
	mov	rbp, rbp
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1696
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	imul	esi, esi, 0xa
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_1759
.label_1696:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	imul	esi, esi, 0xa
	mov	rbp, rbp
	mov	dl, sil
	mov	rbp, rbp
	movsx	rcx, dl
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1704
	jmp	.label_1722
.label_1759:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	eax, sil
	imul	eax, eax, 0xa
	lea	rdi, [rdi]
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	jne	.label_1704
	mov	rsp, rsp
	jmp	.label_1722
.label_2202:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1800
	lea	rsi, [rsi]
	jmp	.label_1807
.label_1800:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1791
	lea	rdi, [rdi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1814
	jmp	.label_1819
.label_1791:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1822
	nop	
	jmp	.label_1888
.label_1822:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1814
	jmp	.label_1819
.label_1888:
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1814
	lea	rsi, [rsi]
	jmp	.label_1819
.label_1807:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1842
	jmp	.label_2027
.label_1842:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1814
	nop	
	jmp	.label_1819
.label_2027:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2065
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jl	.label_1814
	mov	rsp, rsp
	jmp	.label_1819
.label_2065:
	movabs	rax, 0xccccccccccccccc
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1814
.label_1819:
	imul	rax, qword ptr [rbp - 0x38], 0xa
	cmp	rax, -0x80
	jl	.label_1814
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	cmp	rcx, rdx
	jge	.label_1878
.label_1814:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	edx, edx, 0xa
	nop	
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	rcx, sil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1704
	jmp	.label_1722
.label_1878:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0xa
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	jne	.label_1704
	mov	rsp, rsp
	jmp	.label_1722
.label_2197:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1913
	jmp	.label_1922
.label_1913:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1895
	mov	rbp, rbp
	jmp	.label_1932
.label_1895:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1935
	nop	
	jmp	.label_1942
.label_1935:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1944
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0xccccccc
	lea	rdi, [rdi]
	jl	.label_1948
	mov	rbp, rbp
	jmp	.label_1956
.label_1944:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1959
	jmp	.label_1845
.label_1959:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1948
	nop	
	jmp	.label_1956
.label_1845:
	lea	rsi, [rsi]
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1948
	jmp	.label_1956
.label_1942:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1976
	nop	
	jmp	.label_1982
.label_1976:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1948
	jmp	.label_1956
.label_1982:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1990
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0xf3333334
	mov	rbp, rbp
	jl	.label_1948
	nop	
	jmp	.label_1956
.label_1990:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	jl	.label_1948
.label_1956:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	imul	edx, edx, 0xa
	cmp	edx, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_1948
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	imul	esi, esi, 0xa
	cmp	eax, esi
	jge	.label_2025
.label_1948:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	imul	esi, esi, 0xa
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	jne	.label_1704
	jmp	.label_1722
.label_2025:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	si, dx
	nop	
	movsx	eax, si
	nop	
	imul	eax, eax, 0xa
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1704
	jmp	.label_1722
.label_1932:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2050
	jmp	.label_2053
.label_2050:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2057
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jl	.label_1805
	nop	
	jmp	.label_1708
.label_2057:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2070
	nop	
	jmp	.label_2075
.label_2070:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1805
	lea	rdi, [rdi]
	jmp	.label_1708
.label_2075:
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1805
	mov	rbp, rbp
	jmp	.label_1708
.label_2053:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1861
	jmp	.label_2096
.label_1861:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1805
	jmp	.label_1708
.label_2096:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2104
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1805
	jmp	.label_1708
.label_2104:
	nop	
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jl	.label_1805
.label_1708:
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x38], 0xa
	cmp	rax, -0x8000
	jl	.label_1805
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2118
.label_1805:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0xa
	lea	rsi, [rsi]
	mov	si, dx
	mov	rsp, rsp
	movsx	rcx, si
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1704
	jmp	.label_1722
.label_2118:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1704
	jmp	.label_1722
.label_1922:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2151
	lea	rdi, [rdi]
	jmp	.label_1762
.label_2151:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2158
	lea	rdi, [rdi]
	jmp	.label_2166
.label_2158:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2167
	jmp	.label_2172
.label_2167:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_2174
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	ecx, 0xccccccc
	jl	.label_1697
	lea	rdi, [rdi]
	jmp	.label_2124
.label_2174:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2188
	lea	rdi, [rdi]
	jmp	.label_2192
.label_2188:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1697
	nop	
	jmp	.label_2124
.label_2192:
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_1697
	jmp	.label_2124
.label_2172:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2206
	lea	rdi, [rdi]
	jmp	.label_2209
.label_2206:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1697
	nop	
	jmp	.label_2124
.label_2209:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_2218
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0xf3333334
	lea	rdi, [rdi]
	jl	.label_1697
	mov	rsp, rsp
	jmp	.label_2124
.label_2218:
	mov	eax, 0xccccccc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_1697
.label_2124:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	ecx, ecx, 0xa
	cmp	ecx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_1697
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	edx, edx, 0xa
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1705
.label_1697:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1704
	jmp	.label_1722
.label_1705:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_1704
	jmp	.label_1722
.label_2166:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1741
	mov	rbp, rbp
	jmp	.label_1748
.label_1741:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jge	.label_1751
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x38], rax
	nop	
	jl	.label_1755
	jmp	.label_1760
.label_1751:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1763
	jmp	.label_1768
.label_1763:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1755
	jmp	.label_1760
.label_1768:
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jl	.label_1755
	mov	rbp, rbp
	jmp	.label_1760
.label_1748:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1783
	jmp	.label_1787
.label_1783:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1755
	jmp	.label_1760
.label_1787:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1798
	lea	rsi, [rsi]
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1755
	jmp	.label_1760
.label_1798:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jl	.label_1755
.label_1760:
	imul	rax, qword ptr [rbp - 0x38], 0xa
	lea	rdi, [rdi]
	cmp	rax, -0x80000000
	jl	.label_1755
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1816
.label_1755:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1704
	jmp	.label_1722
.label_1816:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	imul	eax, eax, 0xa
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1704
	lea	rdi, [rdi]
	jmp	.label_1722
.label_1762:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1851
	jmp	.label_2108
.label_1851:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1858
	jmp	.label_1863
.label_1858:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1865
	lea	rdi, [rdi]
	jmp	.label_1872
.label_1865:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1874
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1862
	jmp	.label_1870
.label_1874:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1881
	jmp	.label_1886
.label_1881:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1862
	mov	rbp, rbp
	jmp	.label_1870
.label_1886:
	nop	
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jl	.label_1862
	jmp	.label_1870
.label_1872:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1902
	jmp	.label_1907
.label_1902:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1862
	mov	rbp, rbp
	jmp	.label_1870
.label_1907:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2049
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1862
	mov	rsp, rsp
	jmp	.label_1870
.label_2049:
	movabs	rax, 0xccccccccccccccc
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jl	.label_1862
.label_1870:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1862
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1950
.label_1862:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	jne	.label_1704
	jmp	.label_1722
.label_1950:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1704
	mov	rsp, rsp
	jmp	.label_1722
.label_1863:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2208
	mov	rbp, rbp
	jmp	.label_1811
.label_2208:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1978
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1946
	jmp	.label_1986
.label_1978:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1988
	jmp	.label_1993
.label_1988:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1946
	jmp	.label_1986
.label_1993:
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jl	.label_1946
	lea	rsi, [rsi]
	jmp	.label_1986
.label_1811:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2007
	nop	
	jmp	.label_2010
.label_2007:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1946
	jmp	.label_1986
.label_2010:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2021
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1946
	jmp	.label_1986
.label_2021:
	nop	
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1946
.label_1986:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rcx, rax
	jl	.label_1946
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_2037
.label_1946:
	mov	al, 1
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	test	al, 1
	jne	.label_1704
	mov	rbp, rbp
	jmp	.label_1722
.label_2037:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1704
	jmp	.label_1722
.label_2108:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2060
	mov	rsp, rsp
	jmp	.label_2063
.label_2060:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2068
	mov	rbp, rbp
	jmp	.label_2074
.label_2068:
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jge	.label_2078
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	nop	
	jl	.label_2081
	mov	rbp, rbp
	jmp	.label_2087
.label_2078:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2090
	jmp	.label_2095
.label_2090:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2081
	mov	rbp, rbp
	jmp	.label_2087
.label_2095:
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_2081
	lea	rsi, [rsi]
	jmp	.label_2087
.label_2074:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2107
	jmp	.label_2109
.label_2107:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2081
	jmp	.label_2087
.label_2109:
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jge	.label_2114
	movabs	rax, 0xf333333333333334
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_2081
	jmp	.label_2087
.label_2114:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_2081
.label_2087:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	nop	
	cmp	rcx, rax
	jl	.label_2081
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rax, rcx
	jge	.label_2134
.label_2081:
	mov	al, 1
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1704
	jmp	.label_1722
.label_2134:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1704
	lea	rdi, [rdi]
	jmp	.label_1722
.label_2063:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2157
	mov	rbp, rbp
	jmp	.label_2161
.label_2157:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2164
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jl	.label_2168
	jmp	.label_2179
.label_2164:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2182
	mov	rsp, rsp
	jmp	.label_1918
.label_2182:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2168
	mov	rbp, rbp
	jmp	.label_2179
.label_1918:
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_2168
	lea	rsi, [rsi]
	jmp	.label_2179
.label_2161:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2201
	mov	rbp, rbp
	jmp	.label_2205
.label_2201:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2168
	nop	
	jmp	.label_2179
.label_2205:
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jge	.label_2211
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jl	.label_2168
	lea	rdi, [rdi]
	jmp	.label_2179
.label_2211:
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jl	.label_2168
.label_2179:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2168
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1716
.label_2168:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	jne	.label_1704
	jmp	.label_1722
.label_1716:
	xor	eax, eax
	nop	
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	nop	
	jne	.label_1704
	jmp	.label_1722
.label_1704:
	mov	dword ptr [rbp - 4], 0x3f
	mov	rbp, rbp
	jmp	.label_1726
.label_1722:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1730
	mov	rsp, rsp
	jmp	.label_1734
.label_1730:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1739
	jmp	.label_1743
.label_1739:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1745
	jmp	.label_1752
.label_1745:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1753
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_2029
.label_1753:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x7c], eax
.label_2029:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jge	.label_1770
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x80], edx
	jge	.label_2115
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1782
.label_2115:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
.label_1782:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	mov	ecx, 0x80000000
	mov	dl, al
	movsx	eax, dl
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x80]
	cmp	eax, ecx
	jl	.label_1792
	jmp	.label_1803
.label_1770:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1804
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1818
.label_1804:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x88], eax
.label_1818:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, 0x7fffffff
	mov	dl, al
	movsx	eax, dl
	sub	ecx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	dl, sil
	movsx	eax, dl
	lea	rsi, [rsi]
	cmp	ecx, eax
	jl	.label_1792
	jmp	.label_1803
.label_1752:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1831
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1838
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	jmp	.label_1840
.label_1838:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x8c], eax
.label_1840:
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], esi
	lea	rdi, [rdi]
	jge	.label_1855
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	jmp	.label_1875
.label_1855:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
.label_1875:
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x94]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0x90]
	cmp	eax, edx
	jle	.label_1792
	lea	rsi, [rsi]
	jmp	.label_1803
.label_1831:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1894
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	jmp	.label_1898
.label_1894:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
.label_1898:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1909
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	esi, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0xa0], edx
	mov	dword ptr [rbp - 0xa4], esi
	jge	.label_1919
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	nop	
	jmp	.label_1938
.label_1919:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xa8], eax
.label_1938:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xa4]
	add	edx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa0]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1792
	jmp	.label_1803
.label_1909:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], edx
	jge	.label_1962
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb0], eax
	nop	
	jmp	.label_1970
.label_1962:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xb0], eax
.label_1970:
	nop	
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xb4], edx
	mov	rsp, rsp
	jge	.label_1979
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	mov	rsp, rsp
	jmp	.label_1995
.label_1979:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], eax
.label_1995:
	mov	eax, dword ptr [rbp - 0xb8]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xb4]
	nop	
	cmp	edx, eax
	mov	rsp, rsp
	jl	.label_1792
.label_1803:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xbc], edx
	jge	.label_1892
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_2024
.label_1892:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], eax
.label_2024:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	cl, al
	nop	
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xbc]
	add	edx, eax
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1792
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xc4], edx
	mov	rbp, rbp
	jge	.label_2071
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_2044
.label_2071:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xc8], eax
.label_2044:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, 0x7f
	mov	rbp, rbp
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0xc4]
	add	esi, eax
	nop	
	cmp	ecx, esi
	jge	.label_2055
.label_1792:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xcc], edx
	mov	rsp, rsp
	jge	.label_2064
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], eax
	mov	rbp, rbp
	jmp	.label_2077
.label_2064:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd0], eax
.label_2077:
	mov	eax, dword ptr [rbp - 0xd0]
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0xcc]
	lea	rsi, [rsi]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	rdi, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1747
	lea	rsi, [rsi]
	jmp	.label_1701
.label_2055:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xd4], edx
	mov	rbp, rbp
	jge	.label_2105
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_2111
.label_2105:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd8], eax
.label_2111:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd8]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	ecx, dword ptr [rbp - 0xd4]
	add	ecx, eax
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	jne	.label_1747
	jmp	.label_1701
.label_1743:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2132
	lea	rsi, [rsi]
	jmp	.label_2139
.label_2132:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2141
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_2144
.label_2141:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xdc], eax
.label_2144:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1727
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	jge	.label_2155
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_2163
.label_2155:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], eax
.label_2163:
	mov	eax, dword ptr [rbp - 0xec]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xe8]
	cmp	rdx, rcx
	nop	
	jl	.label_1719
	jmp	.label_1733
.label_1727:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2191
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf0], eax
	lea	rdi, [rdi]
	jmp	.label_2193
.label_2191:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xf0], eax
.label_2193:
	nop	
	mov	eax, dword ptr [rbp - 0xf0]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1719
	nop	
	jmp	.label_1733
.label_2139:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jge	.label_2212
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2215
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_2219
.label_2215:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0xf4], eax
.label_2219:
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x100], rcx
	nop	
	mov	qword ptr [rbp - 0x108], rdx
	lea	rdi, [rdi]
	jge	.label_2229
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_1772
.label_2229:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x10c], eax
.label_1772:
	nop	
	mov	eax, dword ptr [rbp - 0x10c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x108]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jle	.label_1719
	lea	rdi, [rdi]
	jmp	.label_1733
.label_2212:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1735
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_1740
.label_1735:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x110], eax
.label_1740:
	nop	
	mov	eax, dword ptr [rbp - 0x110]
	cmp	eax, 0
	jge	.label_1756
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rcx
	jge	.label_2041
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], eax
	lea	rdi, [rdi]
	jmp	.label_2102
.label_2041:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x124], eax
.label_2102:
	mov	eax, dword ptr [rbp - 0x124]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1719
	jmp	.label_1733
.label_1756:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	jge	.label_1796
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_1801
.label_1796:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x134], eax
.label_1801:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x134]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rdx
	mov	rsp, rsp
	jge	.label_1813
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x144], eax
	mov	rsp, rsp
	jmp	.label_1828
.label_1813:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x144], eax
.label_1828:
	mov	eax, dword ptr [rbp - 0x144]
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x140]
	cmp	rdx, rcx
	jl	.label_1719
.label_1733:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rax
	jge	.label_1975
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
	mov	rsp, rsp
	jmp	.label_2058
.label_1975:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
.label_2058:
	mov	eax, dword ptr [rbp - 0x154]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rbp, rbp
	cmp	rdx, -0x80
	lea	rsi, [rsi]
	jl	.label_1719
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x160], rax
	jge	.label_1880
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x164], eax
	mov	rsp, rsp
	jmp	.label_2067
.label_1880:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], eax
.label_2067:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x164]
	lea	rsi, [rsi]
	mov	ecx, 0x7f
	lea	rsi, [rsi]
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	add	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdx, rdi
	jge	.label_1900
.label_1719:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x168], ecx
	jge	.label_1911
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x16c], eax
	jmp	.label_1926
.label_1911:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x16c], eax
.label_1926:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x16c]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x168]
	add	edx, eax
	mov	sil, dl
	mov	rbp, rbp
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1747
	nop	
	jmp	.label_1701
.label_1900:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x170], ecx
	jge	.label_2145
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_1833
.label_2145:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x174], eax
.label_1833:
	mov	eax, dword ptr [rbp - 0x174]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	add	ecx, eax
	nop	
	mov	sil, cl
	nop	
	movsx	rdi, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1747
	mov	rbp, rbp
	jmp	.label_1701
.label_1734:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1985
	mov	rsp, rsp
	jmp	.label_1989
.label_1985:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1991
	jmp	.label_1999
.label_1991:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2001
	jmp	.label_2003
.label_2001:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2004
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x178], eax
	nop	
	jmp	.label_2006
.label_2004:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x178], eax
.label_2006:
	mov	eax, dword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_2017
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x17c], edx
	nop	
	jge	.label_2026
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x180], eax
	jmp	.label_2032
.label_2026:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x180], eax
.label_2032:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, 0x80000000
	nop	
	mov	dx, ax
	movsx	eax, dx
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x17c]
	cmp	eax, ecx
	nop	
	jl	.label_1703
	jmp	.label_2045
.label_2017:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2047
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], eax
	lea	rdi, [rdi]
	jmp	.label_2051
.label_2047:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x184], eax
.label_2051:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x184]
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	dx, ax
	nop	
	movsx	eax, dx
	mov	rsp, rsp
	sub	ecx, eax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	dx, si
	mov	rbp, rbp
	movsx	eax, dx
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_1703
	nop	
	jmp	.label_2045
.label_2003:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_2083
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2088
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x188], eax
	nop	
	jmp	.label_1841
.label_2088:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x188], eax
.label_1841:
	mov	eax, dword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	cx, dx
	movsx	esi, cx
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x18c], eax
	mov	dword ptr [rbp - 0x190], esi
	jge	.label_2101
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x194], eax
	lea	rdi, [rdi]
	jmp	.label_2112
.label_2101:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x194], eax
.label_2112:
	nop	
	mov	eax, dword ptr [rbp - 0x194]
	mov	rbp, rbp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0x18c]
	cmp	eax, edx
	nop	
	jle	.label_1703
	lea	rdi, [rdi]
	jmp	.label_2045
.label_2083:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_2133
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x198], eax
	mov	rbp, rbp
	jmp	.label_2169
.label_2133:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x198], eax
.label_2169:
	mov	eax, dword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jge	.label_2148
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	esi, cx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x19c], edx
	mov	dword ptr [rbp - 0x1a0], esi
	lea	rsi, [rsi]
	jge	.label_2153
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a4], eax
	lea	rsi, [rsi]
	jmp	.label_2170
.label_2153:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a4], eax
.label_2170:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a4]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	edx, dword ptr [rbp - 0x1a0]
	add	edx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x19c]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1703
	jmp	.label_2045
.label_2148:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a8], edx
	nop	
	jge	.label_2196
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1ac], eax
	jmp	.label_2203
.label_2196:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x1ac], eax
.label_2203:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1a8]
	add	edx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], edx
	jge	.label_2213
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1b4], eax
	jmp	.label_2224
.label_2213:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1b4], eax
.label_2224:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1b0]
	cmp	edx, eax
	lea	rdi, [rdi]
	jl	.label_1703
.label_2045:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b8], edx
	jge	.label_1829
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1bc], eax
	jmp	.label_1815
.label_1829:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1bc], eax
.label_1815:
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	add	edx, eax
	cmp	edx, 0xffff8000
	jl	.label_1703
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c0], edx
	jge	.label_1742
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1c4], eax
	mov	rsp, rsp
	jmp	.label_1754
.label_1742:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c4], eax
.label_1754:
	nop	
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	ecx, 0x7fff
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x1c0]
	add	esi, eax
	cmp	ecx, esi
	nop	
	jge	.label_1769
.label_1703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c8], edx
	lea	rsi, [rsi]
	jge	.label_1780
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1cc], eax
	nop	
	jmp	.label_1786
.label_1780:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1cc], eax
.label_1786:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	rsp, rsp
	mov	cl, 1
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c8]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	rdi, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1747
	mov	rsp, rsp
	jmp	.label_1701
.label_1769:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x1d0], edx
	mov	rsp, rsp
	jge	.label_2184
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_1827
.label_2184:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1d4], eax
.label_1827:
	mov	eax, dword ptr [rbp - 0x1d4]
	xor	ecx, ecx
	mov	dl, cl
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	add	ecx, eax
	mov	si, cx
	movsx	rdi, si
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	mov	rbp, rbp
	jne	.label_1747
	lea	rsi, [rsi]
	jmp	.label_1701
.label_1999:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1859
	mov	rsp, rsp
	jmp	.label_1864
.label_1859:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1867
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1d8], eax
	jmp	.label_1873
.label_1867:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1d8], eax
.label_1873:
	mov	eax, dword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1877
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rbp, rbp
	jge	.label_1883
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], eax
	lea	rsi, [rsi]
	jmp	.label_1891
.label_1883:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e4], eax
.label_1891:
	mov	eax, dword ptr [rbp - 0x1e4]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x1e0]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1904
	jmp	.label_1920
.label_1877:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1923
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e8], eax
	mov	rsp, rsp
	jmp	.label_1928
.label_1923:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1e8], eax
.label_1928:
	nop	
	mov	eax, dword ptr [rbp - 0x1e8]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1904
	jmp	.label_1920
.label_1864:
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jge	.label_1951
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_1955
	lea	rdi, [rdi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1ec], eax
	lea	rsi, [rsi]
	jmp	.label_1960
.label_1955:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1ec], eax
.label_1960:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ec]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x1f8], rcx
	mov	qword ptr [rbp - 0x200], rdx
	lea	rdi, [rdi]
	jge	.label_1972
	mov	rbp, rbp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x204], eax
	jmp	.label_1984
.label_1972:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x204], eax
.label_1984:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x204]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x200]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x1f8]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1904
	jmp	.label_1920
.label_1951:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1846
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x208], eax
	jmp	.label_2008
.label_1846:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x208], eax
.label_2008:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x208]
	cmp	eax, 0
	jge	.label_2023
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x210], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x218], rcx
	jge	.label_2031
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x21c], eax
	jmp	.label_2034
.label_2031:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x21c], eax
.label_2034:
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x218]
	add	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x210]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1904
	jmp	.label_1920
.label_2023:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x228], rax
	lea	rdi, [rdi]
	jge	.label_2054
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
	nop	
	jmp	.label_2061
.label_2054:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x22c], eax
.label_2061:
	mov	eax, dword ptr [rbp - 0x22c]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x238], rdx
	lea	rdi, [rdi]
	jge	.label_2082
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x23c], eax
	jmp	.label_2094
.label_2082:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x23c], eax
.label_2094:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x23c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1904
.label_1920:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x248], rax
	jge	.label_2110
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24c], eax
	jmp	.label_2015
.label_2110:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x24c], eax
.label_2015:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x248]
	add	rdx, rcx
	cmp	rdx, -0x8000
	nop	
	jl	.label_1904
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x258], rax
	lea	rsi, [rsi]
	jge	.label_2131
	nop	
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x25c], eax
	jmp	.label_2143
.label_2131:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x25c], eax
.label_2143:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x25c]
	mov	ecx, 0x7fff
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x258]
	add	rdi, rsi
	cmp	rdx, rdi
	mov	rbp, rbp
	jge	.label_2150
.label_1904:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x260], ecx
	mov	rbp, rbp
	jge	.label_1795
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x264], eax
	jmp	.label_1852
.label_1795:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x264], eax
.label_1852:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x264]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x260]
	add	edx, eax
	nop	
	mov	si, dx
	mov	rbp, rbp
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1747
	lea	rsi, [rsi]
	jmp	.label_1701
.label_2150:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x268], ecx
	lea	rsi, [rsi]
	jge	.label_2200
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x26c], eax
	jmp	.label_2066
.label_2200:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x26c], eax
.label_2066:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x26c]
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x268]
	lea	rsi, [rsi]
	add	ecx, eax
	mov	rsp, rsp
	mov	si, cx
	lea	rdi, [rdi]
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	test	dl, 1
	jne	.label_1747
	mov	rsp, rsp
	jmp	.label_1701
.label_1989:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1691
	jmp	.label_1700
.label_1691:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1702
	jmp	.label_1706
.label_1702:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1709
	jmp	.label_1712
.label_1709:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1715
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x270], eax
	jmp	.label_1717
.label_1715:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x270], eax
.label_1717:
	mov	eax, dword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_1732
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x274], ecx
	jge	.label_1738
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x278], eax
	jmp	.label_1749
.label_1738:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x278], eax
.label_1749:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x278]
	mov	rbp, rbp
	mov	ecx, 0x80000000
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x274]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_1790
	jmp	.label_1774
.label_1732:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1775
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x27c], eax
	mov	rsp, rsp
	jmp	.label_2127
.label_1775:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x27c], eax
.label_2127:
	mov	eax, dword ptr [rbp - 0x27c]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	sub	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1790
	lea	rsi, [rsi]
	jmp	.label_1774
.label_1712:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1802
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1808
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x280], eax
	mov	rsp, rsp
	jmp	.label_1810
.label_1808:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x280], eax
.label_1810:
	mov	eax, dword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x284], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x288], edx
	jge	.label_1825
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28c], eax
	mov	rbp, rbp
	jmp	.label_1837
.label_1825:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28c], eax
.label_1837:
	mov	eax, dword ptr [rbp - 0x28c]
	nop	
	mov	ecx, dword ptr [rbp - 0x288]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x284]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_1790
	lea	rsi, [rsi]
	jmp	.label_1774
.label_1802:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1793
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x290], eax
	nop	
	jmp	.label_1868
.label_1793:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x290], eax
.label_1868:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1876
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x294], ecx
	mov	dword ptr [rbp - 0x298], edx
	jge	.label_1879
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x29c], eax
	jmp	.label_1718
.label_1879:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x29c], eax
.label_1718:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x29c]
	mov	ecx, dword ptr [rbp - 0x298]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x294]
	cmp	eax, ecx
	jle	.label_1790
	jmp	.label_1774
.label_1876:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2a0], ecx
	jge	.label_1910
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2a4], eax
	mov	rsp, rsp
	jmp	.label_1744
.label_1910:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2a4], eax
.label_1744:
	mov	eax, dword ptr [rbp - 0x2a4]
	mov	ecx, dword ptr [rbp - 0x2a0]
	add	ecx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2a8], ecx
	jge	.label_1940
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2ac], eax
	jmp	.label_1947
.label_1940:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2ac], eax
.label_1947:
	mov	eax, dword ptr [rbp - 0x2ac]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2a8]
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1790
.label_1774:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2b0], ecx
	mov	rsp, rsp
	jge	.label_1964
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_2162
.label_1964:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2b4], eax
.label_2162:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2b4]
	mov	ecx, dword ptr [rbp - 0x2b0]
	nop	
	add	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_1790
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2b8], ecx
	jge	.label_1761
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2bc], eax
	jmp	.label_2012
.label_1761:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2bc], eax
.label_2012:
	nop	
	mov	eax, dword ptr [rbp - 0x2bc]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x2b8]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_2009
.label_1790:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2c0], ecx
	jge	.label_2019
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2c4], eax
	mov	rsp, rsp
	jmp	.label_1971
.label_2019:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c4], eax
.label_1971:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c4]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x2c0]
	add	edx, eax
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x38], rsi
	test	cl, 1
	jne	.label_1747
	lea	rsi, [rsi]
	jmp	.label_1701
.label_2009:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2c8], ecx
	jge	.label_1969
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2cc], eax
	mov	rsp, rsp
	jmp	.label_2048
.label_1969:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2cc], eax
.label_2048:
	mov	eax, dword ptr [rbp - 0x2cc]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x2c8]
	mov	rbp, rbp
	add	ecx, eax
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1747
	jmp	.label_1701
.label_1706:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1778
	jmp	.label_2084
.label_1778:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_2085
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x2d0], eax
	mov	rbp, rbp
	jmp	.label_2089
.label_2085:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2d0], eax
.label_2089:
	mov	eax, dword ptr [rbp - 0x2d0]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2098
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x2d8], rax
	jge	.label_1943
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2dc], eax
	jmp	.label_1977
.label_1943:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2dc], eax
.label_1977:
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x2d8]
	cmp	rdx, rcx
	jl	.label_1713
	lea	rsi, [rsi]
	jmp	.label_1830
.label_2098:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2123
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2e0], eax
	lea	rdi, [rdi]
	jmp	.label_2129
.label_2123:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2e0], eax
.label_2129:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2e0]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1713
	jmp	.label_1830
.label_2084:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jge	.label_2152
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_2156
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2e4], eax
	nop	
	jmp	.label_2160
.label_2156:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2e4], eax
.label_2160:
	mov	eax, dword ptr [rbp - 0x2e4]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x2f0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2f8], rdx
	jge	.label_2176
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2fc], eax
	nop	
	jmp	.label_2189
.label_2176:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2fc], eax
.label_2189:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2fc]
	nop	
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2f8]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jle	.label_1713
	jmp	.label_1830
.label_2152:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_2207
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x300], eax
	jmp	.label_2210
.label_2207:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x300], eax
.label_2210:
	mov	eax, dword ptr [rbp - 0x300]
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_2222
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x308], rax
	nop	
	mov	qword ptr [rbp - 0x310], rcx
	lea	rsi, [rsi]
	jge	.label_2226
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x314], eax
	mov	rsp, rsp
	jmp	.label_1698
.label_2226:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x314], eax
.label_1698:
	mov	eax, dword ptr [rbp - 0x314]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x310]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x308]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1713
	jmp	.label_1830
.label_2222:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x320], rax
	jge	.label_1729
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x324], eax
	jmp	.label_1736
.label_1729:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x324], eax
.label_1736:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x324]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x330], rdx
	lea	rdi, [rdi]
	jge	.label_1887
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x334], eax
	nop	
	jmp	.label_1693
.label_1887:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x334], eax
.label_1693:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x334]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x330]
	cmp	rdx, rcx
	jl	.label_1713
.label_1830:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x340], rax
	lea	rdi, [rdi]
	jge	.label_1784
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x344], eax
	lea	rsi, [rsi]
	jmp	.label_1789
.label_1784:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x344], eax
.label_1789:
	mov	eax, dword ptr [rbp - 0x344]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x340]
	add	rdx, rcx
	cmp	rdx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_1713
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x350], rax
	jge	.label_1812
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x354], eax
	mov	rbp, rbp
	jmp	.label_1866
.label_1812:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x354], eax
.label_1866:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x354]
	mov	ecx, 0x7fffffff
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x350]
	add	rdi, rsi
	mov	rsp, rsp
	cmp	rdx, rdi
	jge	.label_1835
.label_1713:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x358], ecx
	mov	rsp, rsp
	jge	.label_1847
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x35c], eax
	mov	rsp, rsp
	jmp	.label_1856
.label_1847:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x35c], eax
.label_1856:
	mov	eax, dword ptr [rbp - 0x35c]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x358]
	nop	
	add	edx, eax
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1747
	lea	rdi, [rdi]
	jmp	.label_1701
.label_1835:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x360], ecx
	mov	rbp, rbp
	jge	.label_1882
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x364], eax
	mov	rsp, rsp
	jmp	.label_1889
.label_1882:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x364], eax
.label_1889:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x364]
	xor	ecx, ecx
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x360]
	mov	rsp, rsp
	add	ecx, eax
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1747
	jmp	.label_1701
.label_1700:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1912
	jmp	.label_1921
.label_1912:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1924
	jmp	.label_1929
.label_1924:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_1930
	jmp	.label_1937
.label_1930:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1939
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x368], eax
	jmp	.label_1941
.label_1939:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x368], eax
.label_1941:
	mov	eax, dword ptr [rbp - 0x368]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	jge	.label_1952
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x370], rax
	mov	rbp, rbp
	jge	.label_1958
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x374], eax
	lea	rdi, [rdi]
	jmp	.label_1965
.label_1958:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x374], eax
.label_1965:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x374]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x370]
	nop	
	cmp	rdx, rcx
	jl	.label_1927
	jmp	.label_2016
.label_1952:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1750
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x378], eax
	jmp	.label_1996
.label_1750:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x378], eax
.label_1996:
	mov	eax, dword ptr [rbp - 0x378]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jl	.label_1927
	jmp	.label_2016
.label_1937:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2018
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_2022
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x37c], eax
	lea	rsi, [rsi]
	jmp	.label_1967
.label_2022:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x37c], eax
.label_1967:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x388], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x390], rdx
	nop	
	jge	.label_2033
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x394], eax
	mov	rsp, rsp
	jmp	.label_2040
.label_2033:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x394], eax
.label_2040:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x394]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x390]
	nop	
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x388]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_1927
	jmp	.label_2016
.label_2018:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2069
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x398], eax
	jmp	.label_2072
.label_2069:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x398], eax
.label_2072:
	mov	eax, dword ptr [rbp - 0x398]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_1981
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3a0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3a8], rcx
	jge	.label_2092
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3ac], eax
	jmp	.label_2099
.label_2092:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3ac], eax
.label_2099:
	mov	eax, dword ptr [rbp - 0x3ac]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3a8]
	lea	rdi, [rdi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x3a0]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1927
	jmp	.label_2016
.label_1981:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x3b8], rax
	lea	rsi, [rsi]
	jge	.label_2116
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3bc], eax
	jmp	.label_2120
.label_2116:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3bc], eax
.label_2120:
	mov	eax, dword ptr [rbp - 0x3bc]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x3b8]
	nop	
	add	rdx, rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3c8], rdx
	jge	.label_2180
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3cc], eax
	jmp	.label_2217
.label_2180:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3cc], eax
.label_2217:
	nop	
	mov	eax, dword ptr [rbp - 0x3cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3c8]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1927
.label_2016:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x3d8], rax
	jge	.label_2059
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3dc], eax
	jmp	.label_1848
.label_2059:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3dc], eax
.label_1848:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3dc]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x3d8]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	jl	.label_1927
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3e8], rax
	jge	.label_2199
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3ec], eax
	lea	rdi, [rdi]
	jmp	.label_2190
.label_2199:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3ec], eax
.label_2190:
	nop	
	mov	eax, dword ptr [rbp - 0x3ec]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_2214
.label_1927:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x3f8], rax
	jge	.label_1884
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3fc], eax
	jmp	.label_2230
.label_1884:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3fc], eax
.label_2230:
	mov	eax, dword ptr [rbp - 0x3fc]
	mov	cl, 1
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x3f8]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1747
	jmp	.label_1701
.label_2214:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x408], rax
	mov	rsp, rsp
	jge	.label_1721
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40c], eax
	jmp	.label_1980
.label_1721:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40c], eax
.label_1980:
	mov	eax, dword ptr [rbp - 0x40c]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x408]
	add	rdi, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1747
	nop	
	jmp	.label_1701
.label_1929:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1767
	lea	rsi, [rsi]
	jmp	.label_1771
.label_1767:
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1773
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x410], eax
	nop	
	jmp	.label_2030
.label_1773:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x410], eax
.label_2030:
	mov	eax, dword ptr [rbp - 0x410]
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_2175
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x418], rax
	jge	.label_1788
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x41c], eax
	jmp	.label_1797
.label_1788:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x41c], eax
.label_1797:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x41c]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1806
	jmp	.label_1820
.label_2175:
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_1823
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x420], eax
	jmp	.label_1826
.label_1823:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x420], eax
.label_1826:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x420]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1806
	jmp	.label_1820
.label_1771:
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1849
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1853
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x424], eax
	jmp	.label_1857
.label_1853:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x424], eax
.label_1857:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x424]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x430], rcx
	mov	qword ptr [rbp - 0x438], rdx
	mov	rsp, rsp
	jge	.label_1871
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x43c], eax
	jmp	.label_1843
.label_1871:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x43c], eax
.label_1843:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x43c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x438]
	mov	rsp, rsp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x430]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1806
	mov	rsp, rsp
	jmp	.label_1820
.label_1849:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	jge	.label_1903
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x440], eax
	jmp	.label_1906
.label_1903:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x440], eax
.label_1906:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x440]
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_1925
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x448], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x450], rcx
	jge	.label_1931
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x454], eax
	jmp	.label_1997
.label_1931:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x454], eax
.label_1997:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x454]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	cmp	rcx, rdx
	nop	
	jle	.label_1806
	jmp	.label_1820
.label_1925:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x460], rax
	jge	.label_1966
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x464], eax
	jmp	.label_1725
.label_1966:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x464], eax
.label_1725:
	mov	eax, dword ptr [rbp - 0x464]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x460]
	nop	
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x470], rdx
	lea	rdi, [rdi]
	jge	.label_1908
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x474], eax
	jmp	.label_1994
.label_1908:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x474], eax
.label_1994:
	mov	eax, dword ptr [rbp - 0x474]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x470]
	cmp	rdx, rcx
	jl	.label_1806
.label_1820:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x480], rax
	jge	.label_2011
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x484], eax
	jmp	.label_2020
.label_2011:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x484], eax
.label_2020:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x484]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x480]
	add	rsi, rdx
	cmp	rsi, rcx
	jl	.label_1806
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x490], rax
	jge	.label_2062
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x494], eax
	jmp	.label_2039
.label_2062:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x494], eax
.label_2039:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x494]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x490]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_2052
.label_1806:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a0], rax
	nop	
	jge	.label_1694
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4a4], eax
	lea	rdi, [rdi]
	jmp	.label_2073
.label_1694:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4a4], eax
.label_2073:
	mov	eax, dword ptr [rbp - 0x4a4]
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x4a0]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1747
	mov	rsp, rsp
	jmp	.label_1701
.label_2052:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b0], rax
	jge	.label_2100
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4b4], eax
	jmp	.label_1963
.label_2100:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4b4], eax
.label_1963:
	nop	
	mov	eax, dword ptr [rbp - 0x4b4]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x4b0]
	add	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	jne	.label_1747
	lea	rdi, [rdi]
	jmp	.label_1701
.label_1921:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2122
	jmp	.label_2126
.label_2122:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2128
	jmp	.label_2135
.label_2128:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2137
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4b8], eax
	jmp	.label_2140
.label_2137:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4b8], eax
.label_2140:
	mov	eax, dword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_2149
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c0], rax
	lea	rdi, [rdi]
	jge	.label_2154
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x4c4], eax
	jmp	.label_2165
.label_2154:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x4c4], eax
.label_2165:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c4]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	cmp	rdx, rcx
	jl	.label_1777
	mov	rbp, rbp
	jmp	.label_1723
.label_2149:
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	jge	.label_2195
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4c8], eax
	mov	rsp, rsp
	jmp	.label_2198
.label_2195:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4c8], eax
.label_2198:
	mov	eax, dword ptr [rbp - 0x4c8]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1777
	jmp	.label_1723
.label_2135:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_2216
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_2220
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4cc], eax
	mov	rsp, rsp
	jmp	.label_2223
.label_2220:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4cc], eax
.label_2223:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x4d8], rcx
	mov	qword ptr [rbp - 0x4e0], rdx
	jge	.label_1695
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x4e4], eax
	mov	rbp, rbp
	jmp	.label_1781
.label_1695:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4e4], eax
.label_1781:
	mov	eax, dword ptr [rbp - 0x4e4]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4e0]
	mov	rbp, rbp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4d8]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1777
	nop	
	jmp	.label_1723
.label_2216:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1949
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4e8], eax
	jmp	.label_1746
.label_1949:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4e8], eax
.label_1746:
	nop	
	mov	eax, dword ptr [rbp - 0x4e8]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	jge	.label_1757
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4f0], rax
	mov	qword ptr [rbp - 0x4f8], rcx
	lea	rdi, [rdi]
	jge	.label_1766
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4fc], eax
	jmp	.label_1779
.label_1766:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4fc], eax
.label_1779:
	mov	eax, dword ptr [rbp - 0x4fc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x4f8]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4f0]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1777
	mov	rbp, rbp
	jmp	.label_1723
.label_1757:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x508], rax
	lea	rdi, [rdi]
	jge	.label_1799
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x50c], eax
	jmp	.label_1809
.label_1799:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50c], eax
.label_1809:
	mov	eax, dword ptr [rbp - 0x50c]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x508]
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x518], rdx
	lea	rdi, [rdi]
	jge	.label_1821
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x51c], eax
	jmp	.label_1836
.label_1821:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x51c], eax
.label_1836:
	mov	eax, dword ptr [rbp - 0x51c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x518]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1777
.label_1723:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x528], rax
	jge	.label_1860
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x52c], eax
	mov	rsp, rsp
	jmp	.label_2106
.label_1860:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x52c], eax
.label_2106:
	mov	eax, dword ptr [rbp - 0x52c]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	nop	
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x528]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	mov	rsp, rsp
	jl	.label_1777
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x538], rax
	jge	.label_1710
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x53c], eax
	mov	rbp, rbp
	jmp	.label_1896
.label_1710:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x53c], eax
.label_1896:
	mov	eax, dword ptr [rbp - 0x53c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x538]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_1905
.label_1777:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x548], rax
	mov	rbp, rbp
	jge	.label_1983
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x54c], eax
	jmp	.label_1934
.label_1983:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x54c], eax
.label_1934:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54c]
	lea	rsi, [rsi]
	mov	cl, 1
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x548]
	mov	rsp, rsp
	add	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1747
	jmp	.label_1701
.label_1905:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x558], rax
	mov	rsp, rsp
	jge	.label_1961
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x55c], eax
	jmp	.label_1968
.label_1961:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x55c], eax
.label_1968:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x55c]
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x558]
	mov	rsp, rsp
	add	rdi, rsi
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_1747
	nop	
	jmp	.label_1701
.label_2126:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1992
	nop	
	jmp	.label_1998
.label_1992:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2000
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x560], eax
	lea	rsi, [rsi]
	jmp	.label_2002
.label_2000:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x560], eax
.label_2002:
	mov	eax, dword ptr [rbp - 0x560]
	cmp	eax, 0
	jge	.label_1890
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x568], rax
	mov	rbp, rbp
	jge	.label_1914
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x56c], eax
	lea	rsi, [rsi]
	jmp	.label_2028
.label_1914:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x56c], eax
.label_2028:
	mov	eax, dword ptr [rbp - 0x56c]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jl	.label_1699
	lea	rsi, [rsi]
	jmp	.label_1728
.label_1890:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_2043
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x570], eax
	lea	rsi, [rsi]
	jmp	.label_2130
.label_2043:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x570], eax
.label_2130:
	mov	eax, dword ptr [rbp - 0x570]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1699
	jmp	.label_1728
.label_1998:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1731
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_2076
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x574], eax
	lea	rsi, [rsi]
	jmp	.label_2080
.label_2076:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x574], eax
.label_2080:
	mov	eax, dword ptr [rbp - 0x574]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x580], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x588], rdx
	jge	.label_2093
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58c], eax
	jmp	.label_1844
.label_2093:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x58c], eax
.label_1844:
	mov	eax, dword ptr [rbp - 0x58c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x588]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x580]
	cmp	rcx, rdx
	nop	
	jle	.label_1699
	jmp	.label_1728
.label_1731:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_2119
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x590], eax
	jmp	.label_2121
.label_2119:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x590], eax
.label_2121:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x590]
	cmp	eax, 0
	jge	.label_2136
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x598], rax
	mov	qword ptr [rbp - 0x5a0], rcx
	mov	rbp, rbp
	jge	.label_1854
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a4], eax
	nop	
	jmp	.label_2181
.label_1854:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5a4], eax
.label_2181:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5a4]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5a0]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x598]
	cmp	rcx, rdx
	jle	.label_1699
	mov	rbp, rbp
	jmp	.label_1728
.label_2136:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x5b0], rax
	lea	rsi, [rsi]
	jge	.label_2178
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5b4], eax
	jmp	.label_2185
.label_2178:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5b4], eax
.label_2185:
	mov	eax, dword ptr [rbp - 0x5b4]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5b0]
	add	rdx, rcx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c0], rdx
	jge	.label_2194
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5c4], eax
	mov	rsp, rsp
	jmp	.label_2042
.label_2194:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c4], eax
.label_2042:
	mov	eax, dword ptr [rbp - 0x5c4]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	cmp	rdx, rcx
	jl	.label_1699
.label_1728:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x5d0], rax
	jge	.label_2221
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5d4], eax
	jmp	.label_2227
.label_2221:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5d4], eax
.label_2227:
	mov	eax, dword ptr [rbp - 0x5d4]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x5d0]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_1699
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x5e0], rax
	mov	rsp, rsp
	jge	.label_1714
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5e4], eax
	jmp	.label_1724
.label_1714:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5e4], eax
.label_1724:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5e4]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1737
.label_1699:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f0], rax
	jge	.label_2005
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5f4], eax
	lea	rdi, [rdi]
	jmp	.label_1758
.label_2005:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5f4], eax
.label_1758:
	mov	eax, dword ptr [rbp - 0x5f4]
	nop	
	mov	cl, 1
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x5f0]
	add	rsi, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1747
	mov	rsp, rsp
	jmp	.label_1701
.label_1737:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x600], rax
	mov	rbp, rbp
	jge	.label_1785
	nop	
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x604], eax
	jmp	.label_1794
.label_1785:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x604], eax
.label_1794:
	mov	eax, dword ptr [rbp - 0x604]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	nop	
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x600]
	add	rdi, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	jne	.label_1747
	nop	
	jmp	.label_1701
.label_1747:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x3f
	jmp	.label_1726
.label_1701:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x19], dl
	movzx	edi, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1834
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	cmp	eax, 0x2e
	je	.label_1954
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x2c
	jne	.label_1839
.label_1954:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax + 1]
	lea	rsi, [rsi]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1850
	jmp	.label_1839
.label_1850:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	time_overflow
	mov	rbp, rbp
	test	al, 1
	jne	.label_1776
	jmp	.label_1869
.label_1776:
	mov	dword ptr [rbp - 4], 0x3f
	nop	
	jmp	.label_1726
.label_1869:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], 2
.label_1817:
	cmp	dword ptr [rbp - 0x48], 9
	lea	rdi, [rdi]
	jg	.label_1885
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x44], 0xa
	mov	dword ptr [rbp - 0x44], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx]
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_1893
	nop	
	jmp	.label_1897
.label_1893:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	sub	edx, 0x30
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], edx
.label_1897:
	jmp	.label_1832
.label_1832:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1817
.label_1885:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_1917
	jmp	.label_1899
.label_1899:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1933
	jmp	.label_1945
.label_1933:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	je	.label_1936
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1945
.label_1936:
	jmp	.label_2014
.label_2014:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1899
.label_1945:
	jmp	.label_1917
.label_1917:
	jmp	.label_1953
.label_1953:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	nop	
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_1957
	lea	rsi, [rsi]
	jmp	.label_1916
.label_1957:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1953
.label_1916:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1765
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_1765
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jne	.label_1974
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0x3f
	nop	
	jmp	.label_1726
.label_1974:
	mov	eax, 0x3b9aca00
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	add	rcx, -1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], eax
.label_1765:
	mov	eax, 0x115
	mov	rbp, rbp
	mov	ecx, 0x114
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x44]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rdx
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1726
.label_1839:
	mov	eax, 0x113
	lea	rsi, [rsi]
	mov	ecx, 0x112
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	setl	dl
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	and	dl, 1
	nop	
	mov	byte ptr [rsi], dl
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	sub	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rsi
	cmp	dword ptr [rbp - 0x2c], 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1726
.label_2138:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	call	c_isalpha
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_2038
	jmp	.label_2113
.label_2038:
	lea	rax, [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
.label_2091:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	add	rax, 0x14
	nop	
	add	rax, -1
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jae	.label_2046
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rdx
	mov	byte ptr [rcx], al
.label_2046:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	nop	
	mov	byte ptr [rbp - 0x19], sil
	movzx	edi, byte ptr [rbp - 0x19]
	call	c_isalpha
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x605], cl
	jne	.label_2079
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 0x605], cl
.label_2079:
	mov	al, byte ptr [rbp - 0x605]
	test	al, 1
	jne	.label_2091
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	lookup_word
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2097
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_2103
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.98
	call	gettext
	mov	rbp, rbp
	lea	rsi, [rbp - 0x60]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_2103:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0x3f
	nop	
	jmp	.label_1726
.label_2097:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rax + 0xc]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1726
.label_2113:
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x28
	je	.label_2125
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax], rdx
	movsx	edi, byte ptr [rcx]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	jmp	.label_1726
.label_2125:
	mov	qword ptr [rbp - 0x78], 0
.label_2187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax], rdx
	lea	rdi, [rdi]
	mov	sil, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], sil
	movzx	edi, byte ptr [rbp - 0x19]
	cmp	edi, 0
	nop	
	jne	.label_2146
	movzx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1726
.label_2146:
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x28
	mov	rbp, rbp
	jne	.label_2159
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_2035
.label_2159:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x29
	lea	rsi, [rsi]
	jne	.label_2173
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
.label_2173:
	mov	rbp, rbp
	jmp	.label_2035
.label_2035:
	jmp	.label_2186
.label_2186:
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	jne	.label_2187
	mov	rsp, rsp
	jmp	.label_1901
.label_1726:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x610
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cf60

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 0
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rsi + 0xd9], 1
	jne	.label_2243
	jmp	.label_2233
.label_2243:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.77
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	nop	
	call	dbg_printf
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 0xa8], 0
	mov	rbp, rbp
	je	.label_2239
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xda], 1
	nop	
	jne	.label_2239
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rax + 0x40]
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xda], 1
	mov	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
.label_2239:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0xd8]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xdf]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	cmp	edx, esi
	je	.label_2242
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	je	.label_2231
	mov	edi, 0x20
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], eax
.label_2231:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rdx + 0xd8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rdx + 0xdf], cl
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0xcc], eax
.label_2242:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xc8], 0
	je	.label_2235
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0xdd], 1
	jne	.label_2235
	movabs	rax, OFFSET FLAT:.str.80_0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x11]
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	movzx	esi, dl
	movsxd	rcx, esi
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x50]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x60], 0
	mov	dword ptr [rbp - 0xd0], eax
	lea	rdi, [rdi]
	je	.label_2236
	movabs	rsi, OFFSET FLAT:.str.81_0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
.label_2236:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x1c], 1
	nop	
	jne	.label_2244
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0xd8], eax
.label_2244:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0xdd], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
.label_2235:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xb0], 0
	je	.label_2240
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0xdb], 1
	lea	rdi, [rdi]
	jne	.label_2240
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_2234
	mov	rsp, rsp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0xdc], eax
.label_2234:
	movabs	rdi, OFFSET FLAT:.str.82_0
	mov	rax,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rbp, rbp
	mov	edx, 0x64
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	str_days
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + 0xdb], 1
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0xf4], eax
.label_2240:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xb8], 0
	nop	
	je	.label_2237
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0xdc], 1
	mov	rsp, rsp
	jne	.label_2237
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.84_0
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	sil, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	xor	sil, 0xff
	and	sil, 1
	movzx	r8d, sil
	lea	rsi, [rsi]
	movsxd	r9, r8d
	add	rdx, r9
	mov	r9, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [r9 + 0x14]
	mov	r9, qword ptr [rbp - 0x10]
	cmp	qword ptr [r9 + 0xc0], 0
	mov	rsp, rsp
	cmovne	rax, rcx
	mov	rsi, rdx
	mov	edx, r8d
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xdc], 1
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0xf8], eax
.label_2237:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_2232
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0xde], 1
	mov	rbp, rbp
	jne	.label_2232
	lea	rsi, [rbp - 0xb0]
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.85
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x11]
	xor	cl, 0xff
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	r8, edx
	mov	rbp, rbp
	add	rax, r8
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r8 + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rdi
	lea	rdi, [rdi]
	mov	edi, edx
	nop	
	mov	qword ptr [rbp - 0x108], rax
	call	time_zone_str
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xde], 1
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x10c], eax
.label_2232:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0xa0], 1
	lea	rsi, [rsi]
	je	.label_2238
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	test	byte ptr [rbp - 0x11], 1
	je	.label_2241
	nop	
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x110], eax
.label_2241:
	nop	
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x118], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x11c], eax
.label_2238:
	nop	
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x120], eax
.label_2233:
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d580

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rsi + 0xd9], 1
	nop	
	jne	.label_2245
	jmp	.label_2247
.label_2245:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	dbg_printf
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x68], 0
	mov	rbp, rbp
	jne	.label_2246
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x70], 0
	jne	.label_2246
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	jne	.label_2246
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x80], 0
	lea	rsi, [rsi]
	jne	.label_2246
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x88], 0
	mov	rbp, rbp
	jne	.label_2246
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x90], 0
	lea	rsi, [rsi]
	jne	.label_2246
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x98], 0
	mov	rbp, rbp
	jne	.label_2246
	movabs	rdi, OFFSET FLAT:.str.87
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_2247
.label_2246:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.88
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x68]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.89
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	nop	
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.90
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	call	print_rel_part
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.91
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x80]
	and	al, 1
	movzx	edi, al
	nop	
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.92
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x90]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.94
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rcx + 0x98]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	call	print_rel_part
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	byte ptr [rbp - 0x19], al
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x20], eax
.label_2247:
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d830

	.globl set_hhmmss
	.type set_hhmmss, @function
set_hhmmss:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x58], rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x60], rcx
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d8a0

	.globl time_zone_hhmm
	.type time_zone_hhmm, @function
time_zone_hhmm:
	push	rbp
	mov	rbp, rsp
	nop	
	lea	rax, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x21], 0
	cmp	qword ptr [rax + 0x10], 2
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jg	.label_2261
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_2261
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	imul	rcx, qword ptr [rax + 8], 0x64
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_2261:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_2277
	lea	rdi, [rdi]
	mov	eax, 0x64
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsp, rsp
	imul	rax, rax, 0x3c
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, rdi
	cqo	
	idiv	rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	add	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_2280
.label_2277:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2271
	jmp	.label_2273
.label_2271:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_2275
	movabs	rax, 0x222222222222222
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jl	.label_2262
	jmp	.label_2253
.label_2275:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2256
	mov	rbp, rbp
	jmp	.label_2266
.label_2256:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2262
	mov	rsp, rsp
	jmp	.label_2253
.label_2266:
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jl	.label_2262
	jmp	.label_2253
.label_2273:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2283
	jmp	.label_2281
.label_2283:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2262
	nop	
	jmp	.label_2253
.label_2281:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	jge	.label_2254
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	jl	.label_2262
	jmp	.label_2253
.label_2254:
	movabs	rax, 0x222222222222222
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_2262
.label_2253:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_2262
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_2250
.label_2262:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2265
.label_2250:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
.label_2265:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, byte ptr [rbp - 0x21]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	or	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rsi], 1
	je	.label_2276
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2255
	lea	rsi, [rsi]
	jmp	.label_2260
.label_2255:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jge	.label_2264
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jl	.label_2252
	jmp	.label_2257
.label_2264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	movabs	rcx, 0x8000000000000000
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rax, rcx
	jl	.label_2252
	jmp	.label_2257
.label_2260:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_2285
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2252
	lea	rsi, [rsi]
	jmp	.label_2257
.label_2285:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jge	.label_2269
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jle	.label_2252
	nop	
	jmp	.label_2257
.label_2269:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jl	.label_2252
.label_2257:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	jl	.label_2252
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jge	.label_2270
.label_2252:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	jmp	.label_2263
.label_2270:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x40], eax
.label_2263:
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	nop	
	jmp	.label_2274
.label_2276:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2278
	lea	rdi, [rdi]
	jmp	.label_2282
.label_2278:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_2249
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2258
	jmp	.label_2251
.label_2249:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jl	.label_2258
	jmp	.label_2251
.label_2282:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jge	.label_2272
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2258
	jmp	.label_2251
.label_2272:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_2284
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2258
	jmp	.label_2251
.label_2284:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x18]
	jl	.label_2258
.label_2251:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	jl	.label_2258
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2279
.label_2258:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_2268
.label_2279:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
.label_2268:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x44], eax
.label_2274:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	cl, byte ptr [rbp - 0x21]
	and	cl, 1
	movzx	edx, cl
	or	edx, eax
	nop	
	cmp	edx, 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
.label_2280:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_2248
	mov	rax, -0x5a0
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2248
	nop	
	cmp	qword ptr [rbp - 0x20], 0x5a0
	lea	rdi, [rdi]
	jle	.label_2259
.label_2248:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2267
.label_2259:
	imul	rax, qword ptr [rbp - 0x20], 0x3c
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_2267:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41de60

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	lea	rax, [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	mov	qword ptr [rbp - 0x20], rax
	jge	.label_2325
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2371
	nop	
	jmp	.label_2381
.label_2371:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_2389
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x30]
	add	ecx, 0x7fffffff
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rdx + 0x98]
	jl	.label_2348
	jmp	.label_2356
.label_2389:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x98]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	edx, dword ptr [rax + 0x30]
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_2348
	jmp	.label_2356
.label_2381:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rax + 0x98], 0
	lea	rsi, [rsi]
	jge	.label_2362
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2348
	jmp	.label_2356
.label_2362:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x30], 0
	jge	.label_2370
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jle	.label_2348
	jmp	.label_2356
.label_2370:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	ecx, dword ptr [rax + 0x30]
	jl	.label_2348
.label_2356:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x30]
	cmp	ecx, 0x80000000
	jl	.label_2348
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	edx, dword ptr [rcx + 0x30]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_2393
.label_2348:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_2407
.label_2393:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
.label_2407:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	cl, 1
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	jne	.label_2312
	jmp	.label_2365
.label_2312:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_2323
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x90]
	nop	
	jl	.label_2330
	lea	rdi, [rdi]
	jmp	.label_2340
.label_2323:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x90]
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_2330
	nop	
	jmp	.label_2340
.label_2365:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_2355
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2330
	lea	rdi, [rdi]
	jmp	.label_2340
.label_2355:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_2360
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x90]
	lea	rsi, [rsi]
	jle	.label_2330
	jmp	.label_2340
.label_2360:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x90]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	jl	.label_2330
.label_2340:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2330
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jge	.label_2387
.label_2330:
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_2400
.label_2387:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	dword ptr [rbp - 0x2c], eax
.label_2400:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x28]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x30], edx
	jne	.label_2363
	nop	
	jmp	.label_2321
.label_2363:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_2322
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x88]
	jl	.label_2328
	jmp	.label_2339
.label_2322:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_2328
	lea	rsi, [rsi]
	jmp	.label_2339
.label_2321:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x88], 0
	jge	.label_2354
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_2328
	jmp	.label_2339
.label_2354:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_2361
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + 0x88]
	jle	.label_2328
	jmp	.label_2339
.label_2361:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jl	.label_2328
.label_2339:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2328
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2385
.label_2328:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_2395
.label_2385:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x34], eax
.label_2395:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x30]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	lea	rdi, [rdi]
	jne	.label_2298
	jmp	.label_2308
.label_2298:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	jge	.label_2311
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x80]
	nop	
	jl	.label_2335
	lea	rsi, [rsi]
	jmp	.label_2350
.label_2311:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2335
	nop	
	jmp	.label_2350
.label_2308:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x80], 0
	jge	.label_2346
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_2335
	lea	rdi, [rdi]
	jmp	.label_2350
.label_2346:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_2359
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jle	.label_2335
	mov	rsp, rsp
	jmp	.label_2350
.label_2359:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jl	.label_2335
.label_2350:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2335
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2386
.label_2335:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x80], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2398
.label_2386:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x3c], eax
.label_2398:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x40], edx
	nop	
	jne	.label_2301
	jmp	.label_2314
.label_2301:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_2317
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x78]
	mov	rsp, rsp
	jl	.label_2319
	mov	rbp, rbp
	jmp	.label_2337
.label_2317:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_2319
	lea	rdi, [rdi]
	jmp	.label_2337
.label_2314:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	nop	
	jge	.label_2352
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2319
	jmp	.label_2337
.label_2352:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jge	.label_2397
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x78]
	lea	rdi, [rdi]
	jle	.label_2319
	jmp	.label_2337
.label_2397:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	nop	
	jl	.label_2319
.label_2337:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2319
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2384
.label_2319:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x44], eax
	nop	
	jmp	.label_2394
.label_2384:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_2394:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x48], edx
	jne	.label_2290
	jmp	.label_2303
.label_2290:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jge	.label_2305
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x70]
	jl	.label_2310
	lea	rdi, [rdi]
	jmp	.label_2313
.label_2305:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x70]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_2310
	mov	rbp, rbp
	jmp	.label_2313
.label_2303:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x70], 0
	lea	rsi, [rsi]
	jge	.label_2342
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2310
	mov	rbp, rbp
	jmp	.label_2313
.label_2342:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_2353
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x70]
	jle	.label_2310
	jmp	.label_2313
.label_2353:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jl	.label_2310
.label_2313:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, rax
	nop	
	jl	.label_2310
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2375
.label_2310:
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_2383
.label_2375:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_2383:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	or	edx, eax
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], edx
	jne	.label_2412
	lea	rdi, [rdi]
	jmp	.label_2326
.label_2412:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_2299
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x68]
	nop	
	jl	.label_2287
	jmp	.label_2358
.label_2299:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_2287
	jmp	.label_2358
.label_2326:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x68], 0
	jge	.label_2372
	mov	al, 1
	test	al, 1
	jne	.label_2287
	lea	rsi, [rsi]
	jmp	.label_2358
.label_2372:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_2306
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x68]
	jle	.label_2287
	jmp	.label_2358
.label_2306:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	nop	
	jl	.label_2287
.label_2358:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_2287
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_2368
.label_2287:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2376
.label_2368:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x54], eax
.label_2376:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x50]
	or	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_2392
	jmp	.label_2364
.label_2325:
	mov	al, 1
	test	al, 1
	jne	.label_2401
	jmp	.label_2402
.label_2401:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_2404
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	cmp	edx, eax
	jl	.label_2302
	jmp	.label_2296
.label_2404:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jl	.label_2302
	jmp	.label_2296
.label_2402:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x98], 0
	jge	.label_2316
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 0x98]
	add	esi, dword ptr [rax + 0x30]
	cmp	ecx, esi
	jle	.label_2302
	lea	rdi, [rdi]
	jmp	.label_2296
.label_2316:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jge	.label_2334
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2302
	lea	rsi, [rsi]
	jmp	.label_2296
.label_2334:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	ecx, dword ptr [rax + 0x30]
	cmp	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	jl	.label_2302
.label_2296:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	jl	.label_2302
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	cmp	eax, edx
	jge	.label_2366
.label_2302:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_2373
.label_2366:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x58], eax
.label_2373:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cl, 1
	lea	rdi, [rdi]
	test	cl, 1
	mov	dword ptr [rbp - 0x5c], eax
	jne	.label_2391
	lea	rsi, [rsi]
	jmp	.label_2329
.label_2391:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_2341
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2297
	jmp	.label_2293
.label_2341:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rdx + 0x90]
	mov	rbp, rbp
	jl	.label_2297
	jmp	.label_2293
.label_2329:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_2315
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x90]
	add	rdx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_2297
	jmp	.label_2293
.label_2315:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_2333
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x90]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jle	.label_2297
	lea	rdi, [rdi]
	jmp	.label_2293
.label_2333:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x28]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jl	.label_2297
.label_2293:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2297
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2367
.label_2297:
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jmp	.label_2378
.label_2367:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
.label_2378:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x64], edx
	jne	.label_2399
	nop	
	jmp	.label_2408
.label_2399:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_2410
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x20]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2307
	jmp	.label_2304
.label_2410:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	jl	.label_2307
	jmp	.label_2304
.label_2408:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	jge	.label_2324
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rax + 0x20]
	nop	
	cmp	rcx, rdx
	jle	.label_2307
	mov	rbp, rbp
	jmp	.label_2304
.label_2324:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_2345
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x20]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2307
	lea	rsi, [rsi]
	jmp	.label_2304
.label_2345:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jl	.label_2307
.label_2304:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2307
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	jge	.label_2388
.label_2307:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	nop	
	jmp	.label_2380
.label_2388:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x68], eax
.label_2380:
	mov	eax, dword ptr [rbp - 0x68]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x64]
	nop	
	or	edx, eax
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], edx
	jne	.label_2403
	jmp	.label_2413
.label_2403:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_2414
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2292
	nop	
	jmp	.label_2331
.label_2414:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jl	.label_2292
	nop	
	jmp	.label_2331
.label_2413:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x80], 0
	nop	
	jge	.label_2332
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rax + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x80]
	add	rdx, qword ptr [rax + 0x18]
	cmp	rcx, rdx
	jle	.label_2292
	lea	rsi, [rsi]
	jmp	.label_2331
.label_2332:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_2349
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2292
	lea	rdi, [rdi]
	jmp	.label_2331
.label_2349:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jl	.label_2292
.label_2331:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2292
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2374
.label_2292:
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x70], eax
	mov	rbp, rbp
	jmp	.label_2344
.label_2374:
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x70], eax
.label_2344:
	nop	
	mov	eax, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x6c]
	nop	
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x74], edx
	lea	rsi, [rsi]
	jne	.label_2411
	jmp	.label_2291
.label_2411:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	jge	.label_2294
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2289
	lea	rdi, [rdi]
	jmp	.label_2300
.label_2294:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x78]
	jl	.label_2289
	mov	rbp, rbp
	jmp	.label_2300
.label_2291:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jge	.label_2336
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	add	rdx, qword ptr [rax + 0x10]
	cmp	rcx, rdx
	jle	.label_2289
	nop	
	jmp	.label_2300
.label_2336:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_2351
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	cmp	rax, rcx
	jle	.label_2289
	lea	rdi, [rdi]
	jmp	.label_2300
.label_2351:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jl	.label_2289
.label_2300:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2289
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rax, rcx
	jge	.label_2377
.label_2289:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x78], eax
	jmp	.label_2382
.label_2377:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x78], eax
.label_2382:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	lea	rsi, [rsi]
	jne	.label_2405
	jmp	.label_2415
.label_2405:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_2286
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 8]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2295
	jmp	.label_2309
.label_2286:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x70]
	mov	rbp, rbp
	jl	.label_2295
	nop	
	jmp	.label_2309
.label_2415:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x70], 0
	lea	rdi, [rdi]
	jge	.label_2327
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x70]
	add	rdx, qword ptr [rax + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_2295
	lea	rsi, [rsi]
	jmp	.label_2309
.label_2327:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_2343
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2295
	nop	
	jmp	.label_2309
.label_2343:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jl	.label_2295
.label_2309:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rax
	jl	.label_2295
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 8]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2369
.label_2295:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_2379
.label_2369:
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
.label_2379:
	mov	eax, dword ptr [rbp - 0x80]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x7c]
	nop	
	or	edx, eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], edx
	jne	.label_2396
	lea	rdi, [rdi]
	jmp	.label_2406
.label_2396:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jge	.label_2409
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2357
	jmp	.label_2318
.label_2409:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x68]
	jl	.label_2357
	jmp	.label_2318
.label_2406:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	jge	.label_2320
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x68]
	add	rdx, qword ptr [rax]
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_2357
	lea	rdi, [rdi]
	jmp	.label_2318
.label_2320:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_2338
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2357
	mov	rsp, rsp
	jmp	.label_2318
.label_2338:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rcx]
	jl	.label_2357
.label_2318:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2357
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_2347
.label_2357:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	jmp	.label_2390
.label_2347:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rcx
	nop	
	mov	dword ptr [rbp - 0x88], eax
.label_2390:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	or	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_2364
.label_2392:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2288
.label_2364:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0xa1], 1
	mov	byte ptr [rbp - 1], 1
.label_2288:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f9f0

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x190
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	movaps	xmmword ptr [rbp - 0x100], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x110], xmm4
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x120], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x130], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x140], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	qword ptr [rbp - 0x158], rdi
	mov	qword ptr [rbp - 0x160], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], r8
	nop	
	mov	qword ptr [rbp - 0x170], rcx
	mov	qword ptr [rbp - 0x178], rdx
	nop	
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_2416
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	mov	rsp, rsp
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	nop	
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	mov	rbp, rbp
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	mov	rsp, rsp
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_2416:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rdi, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	r8, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 8], r8
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	r9d, OFFSET FLAT:.str.96
	mov	edi, r9d
	lea	rsi, [rsi]
	call	fputs
	mov	rbp, rbp
	lea	rcx, [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	lea	rcx, [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	lea	rdx, [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x184], eax
	call	vfprintf
	mov	dword ptr [rbp - 0x188], eax
	mov	rsp, rsp
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fbe0

	.globl time_overflow
	.type time_overflow, @function
time_overflow:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2417
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	movabs	rdx, 0x8000000000000000
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rbp - 9], cl
	jle	.label_2419
	jmp	.label_2418
.label_2417:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], cl
	nop	
	jg	.label_2418
.label_2419:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], rax
	nop	
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_2418:
	nop	
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fc80

	.globl digits_to_date_time
	.type digits_to_date_time, @function
digits_to_date_time:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0xa8], 0
	nop	
	mov	qword ptr [rbp - 0x10], rax
	nop	
	je	.label_2420
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_2420
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xa1], 1
	jne	.label_2420
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xc8], 0
	jne	.label_2422
	mov	eax, 2
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jge	.label_2420
.label_2422:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xd8], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	qword ptr [rax + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_2424
.label_2420:
	lea	rsi, [rsi]
	mov	eax, 4
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_2425
	mov	eax, 0x2710
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	eax, 0x64
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi + 0xa8]
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa8], rdi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	cqo	
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	idiv	rdi
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rdx, qword ptr [rsi + 8]
	mov	rax, rdx
	lea	rdi, [rdi]
	cqo	
	idiv	rdi
	cqo	
	mov	rbp, rbp
	idiv	rdi
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x38], rdx
	mov	rdx, qword ptr [rsi + 8]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rsi + 0x10]
	sub	rax, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_2423
.label_2425:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	qword ptr [rax + 0xc8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 2
	mov	rbp, rbp
	jg	.label_2426
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x50], 0
	lea	rdi, [rdi]
	jmp	.label_2421
.label_2426:
	mov	eax, 0x64
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	nop	
	cqo	
	mov	rsp, rsp
	idiv	rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x50], rdx
.label_2421:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x60], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x1c], 2
.label_2423:
	mov	rsp, rsp
	jmp	.label_2424
.label_2424:
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fed0

	.globl yyerror
	.type yyerror, @function
yyerror:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fef0

	.globl yydestruct
	.type yydestruct, @function
yydestruct:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_2427
	movabs	rax, OFFSET FLAT:.str.97
	mov	qword ptr [rbp - 8], rax
.label_2427:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ff30
	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rax
	nop	
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	tzalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_2428
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2429
.label_2428:
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x28]
	nop	
	call	parse_datetime2
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	tzfree
	mov	al, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
.label_2429:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fff0

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf40
	mov	qword ptr [rbp - 8], rdi
.label_5732:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	qword ptr [rbp - 0x30], r9
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x131], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x5a8], rdx
	lea	rdi, [rdi]
	call	strlen
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rdx
	nop	
	mov	qword ptr [rbp - 0x148], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_2463
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1c0]
	mov	rbp, rbp
	call	gettime
	lea	rdi, [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x18], rdi
.label_2463:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1cc], ecx
.label_2520:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1cd], cl
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rbp - 0x1cd]
	call	c_isspace
	nop	
	test	al, 1
	nop	
	jne	.label_2514
	jmp	.label_2517
.label_2514:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2520
.label_2517:
	movabs	rsi, OFFSET FLAT:.str.19_0
	nop	
	mov	eax, 4
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2540
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e8], 1
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f0], rax
.label_2743:
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_2555
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5c
	jne	.label_2561
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rax, qword ptr [rbp - 0x1f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	je	.label_2569
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x22
	nop	
	je	.label_2569
	lea	rdi, [rdi]
	jmp	.label_2555
.label_2569:
	jmp	.label_2581
.label_2561:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	jne	.label_3084
	nop	
	mov	eax, 0x64
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x200], rdx
	cmp	rcx, qword ptr [rbp - 0x1e8]
	jge	.label_2593
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	cmp	qword ptr [rbp - 0x148], 0
	lea	rdi, [rdi]
	jne	.label_3381
	nop	
	jmp	.label_2571
.label_3381:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x200], rax
.label_2593:
	nop	
	mov	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x208], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f0], rax
.label_2649:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	je	.label_2633
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	mov	rsp, rsp
	movzx	ecx, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	nop	
	movsxd	rsi, ecx
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	add	rdi, rsi
	mov	qword ptr [rbp - 0x1f0], rdi
	mov	dl, byte ptr [rax + rsi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rsi, rax
	lea	rsi, [rsi]
	add	rsi, 1
	mov	qword ptr [rbp - 0x208], rsi
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x1f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1f0], rax
	nop	
	jmp	.label_2649
.label_2633:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x200]
	nop	
	call	tzalloc
	mov	qword ptr [rbp - 0x1f8], rax
	cmp	qword ptr [rbp - 0x1f8], 0
	jne	.label_2692
	jmp	.label_2571
.label_2692:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	qword ptr [rbp - 0x1d8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_2728:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1cd], cl
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x1cd]
	mov	rbp, rbp
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_2725
	jmp	.label_2727
.label_2725:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2728
.label_2727:
	mov	rbp, rbp
	jmp	.label_2555
.label_3084:
	lea	rdi, [rdi]
	jmp	.label_2581
.label_2581:
	mov	rsp, rsp
	jmp	.label_2738
.label_2738:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1f0]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x1f0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_2743
.label_2555:
	jmp	.label_2540
.label_2540:
	lea	rdx, [rbp - 0x240]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	localtime_rz
	cmp	rax, 0
	nop	
	jne	.label_2768
	lea	rdi, [rdi]
	jmp	.label_2571
.label_2768:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2776
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.20_0
	mov	qword ptr [rbp - 0x10], rax
.label_2776:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x358], rdx
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x27f], sil
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2789
	jmp	.label_2806
.label_2789:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2807
	mov	rbp, rbp
	jmp	.label_2812
.label_2807:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2815
	lea	rsi, [rsi]
	jmp	.label_2817
.label_2815:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2819
	nop	
	jmp	.label_2822
.label_2819:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffff94
	mov	rbp, rbp
	jl	.label_2824
	jmp	.label_2827
.label_2822:
	mov	eax, 0x7fffff93
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_2824
	jmp	.label_2827
.label_2817:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_2837
	mov	eax, 0x6c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	add	ecx, 0x6c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jle	.label_2824
	lea	rsi, [rsi]
	jmp	.label_2827
.label_2837:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2849
	lea	rsi, [rsi]
	jmp	.label_2852
.label_2849:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	edx, cl
	nop	
	add	edx, 0x6c
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_2824
	jmp	.label_2827
.label_2852:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	add	eax, 0x6c
	cmp	eax, 0x6c
	lea	rdi, [rdi]
	jl	.label_2824
.label_2827:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	add	eax, 0x6c
	cmp	eax, -0x80
	jl	.label_2824
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dl, cl
	movsx	ecx, dl
	nop	
	add	ecx, 0x6c
	cmp	eax, ecx
	nop	
	jge	.label_2890
.label_2824:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rbp, rbp
	add	ecx, 0x6c
	mov	rbp, rbp
	mov	dl, cl
	mov	rsp, rsp
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	jne	.label_2814
	jmp	.label_2802
.label_2890:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	add	eax, 0x6c
	mov	rsp, rsp
	mov	dl, al
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x330], rsi
	test	cl, 1
	jne	.label_2814
	lea	rdi, [rdi]
	jmp	.label_2802
.label_2812:
	mov	al, 1
	test	al, 1
	jne	.label_2920
	mov	rsp, rsp
	jmp	.label_2921
.label_2920:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2925
	mov	rsp, rsp
	jmp	.label_2930
.label_2925:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_2936
	nop	
	jmp	.label_2944
.label_2930:
	nop	
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	jl	.label_2936
	jmp	.label_2944
.label_2921:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_2954
	lea	rsi, [rsi]
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_2936
	jmp	.label_2944
.label_2954:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2970
	jmp	.label_2974
.label_2970:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_2936
	jmp	.label_2944
.label_2974:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, 0x76c
	jl	.label_2936
.label_2944:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_2936
	nop	
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_3010
.label_2936:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2814
	lea	rsi, [rsi]
	jmp	.label_2802
.label_3010:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	mov	dl, al
	lea	rsi, [rsi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x330], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2814
	jmp	.label_2802
.label_2806:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3053
	nop	
	jmp	.label_3056
.label_3053:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3657
	jmp	.label_3064
.label_3657:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3065
	jmp	.label_3715
.label_3065:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3071
	mov	rsp, rsp
	jmp	.label_3072
.label_3071:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7ffff894
	nop	
	jl	.label_3078
	nop	
	jmp	.label_3077
.label_3072:
	mov	rbp, rbp
	mov	eax, 0x7ffff893
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_3078
	jmp	.label_3077
.label_3715:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	cx, ax
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3088
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_3078
	mov	rsp, rsp
	jmp	.label_3077
.label_3088:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3946
	jmp	.label_3118
.label_3946:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x76c
	cmp	eax, edx
	jle	.label_3078
	mov	rbp, rbp
	jmp	.label_3077
.label_3118:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 0x76c
	cmp	eax, 0x76c
	mov	rbp, rbp
	jl	.label_3078
.label_3077:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	jl	.label_3078
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_3148
.label_3078:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	add	ecx, 0x76c
	mov	dx, cx
	mov	rsp, rsp
	movsx	rsi, dx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	jne	.label_2814
	lea	rdi, [rdi]
	jmp	.label_2802
.label_3148:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dx, ax
	mov	rbp, rbp
	movsx	eax, dx
	mov	rsp, rsp
	add	eax, 0x76c
	mov	rbp, rbp
	mov	dx, ax
	mov	rbp, rbp
	movsx	rsi, dx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2814
	nop	
	jmp	.label_2802
.label_3064:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_3196
	jmp	.label_3198
.label_3196:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3200
	jmp	.label_3207
.label_3200:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_2621
	mov	rsp, rsp
	jmp	.label_3225
.label_3207:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	jl	.label_2621
	mov	rsp, rsp
	jmp	.label_3225
.label_3198:
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rdi, [rdi]
	jge	.label_3227
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_2621
	jmp	.label_3225
.label_3227:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3234
	jmp	.label_2614
.label_3234:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	nop	
	cmp	eax, ecx
	jle	.label_2621
	jmp	.label_3225
.label_2614:
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_2621
.label_3225:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	nop	
	jl	.label_2621
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_3256
.label_2621:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	mov	dx, cx
	mov	rbp, rbp
	movsx	rsi, dx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	jne	.label_2814
	jmp	.label_2802
.label_3256:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	mov	dx, ax
	nop	
	movsx	rsi, dx
	mov	qword ptr [rbp - 0x330], rsi
	test	cl, 1
	jne	.label_2814
	mov	rbp, rbp
	jmp	.label_2802
.label_3056:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3284
	jmp	.label_3009
.label_3284:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3290
	jmp	.label_3292
.label_3290:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3294
	lea	rdi, [rdi]
	jmp	.label_4193
.label_3294:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3300
	jmp	.label_3305
.label_3300:
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_3307
	mov	rsp, rsp
	jmp	.label_3311
.label_3305:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	jl	.label_3307
	jmp	.label_3311
.label_4193:
	cmp	dword ptr [rbp - 0x22c], 0
	nop	
	jge	.label_3323
	mov	rsp, rsp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_3307
	mov	rsp, rsp
	jmp	.label_3311
.label_3323:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3249
	mov	rbp, rbp
	jmp	.label_3340
.label_3249:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_3307
	jmp	.label_3311
.label_3340:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	add	eax, 0x76c
	lea	rsi, [rsi]
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_3307
.label_3311:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	eax, 0x76c
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_3307
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3368
.label_3307:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	mov	qword ptr [rbp - 0x330], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2814
	jmp	.label_2802
.label_3368:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2814
	jmp	.label_2802
.label_3292:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3401
	mov	rsp, rsp
	jmp	.label_3338
.label_3401:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3408
	jmp	.label_3412
.label_3408:
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	lea	rsi, [rsi]
	jl	.label_3414
	lea	rsi, [rsi]
	jmp	.label_3428
.label_3412:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	jl	.label_3414
	jmp	.label_3428
.label_3338:
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_3430
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	nop	
	jle	.label_3414
	jmp	.label_3428
.label_3430:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3445
	jmp	.label_3452
.label_3445:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_3414
	lea	rsi, [rsi]
	jmp	.label_3428
.label_3452:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_3414
.label_3428:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_3414
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	cmp	eax, ecx
	jge	.label_3469
.label_3414:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	al, 1
	jne	.label_2814
	mov	rbp, rbp
	jmp	.label_2802
.label_3469:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	eax, 0x76c
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x330], rdx
	test	cl, 1
	jne	.label_2814
	lea	rdi, [rdi]
	jmp	.label_2802
.label_3009:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3503
	mov	rsp, rsp
	jmp	.label_3507
.label_3503:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4260
	jmp	.label_3511
.label_4260:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3513
	jmp	.label_3519
.label_3513:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3521
	lea	rsi, [rsi]
	jmp	.label_3527
.label_3521:
	mov	rsp, rsp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x22c]
	cmp	rcx, rax
	jl	.label_3531
	jmp	.label_3539
.label_3527:
	movabs	rax, 0x7ffffffffffff893
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	cmp	rax, rcx
	jl	.label_3531
	lea	rsi, [rsi]
	jmp	.label_3539
.label_3519:
	movsxd	rax, dword ptr [rbp - 0x22c]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_3410
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x22c]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_3531
	mov	rsp, rsp
	jmp	.label_3539
.label_3410:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3560
	mov	rsp, rsp
	jmp	.label_3564
.label_3560:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3531
	jmp	.label_3539
.label_3564:
	movsxd	rax, dword ptr [rbp - 0x22c]
	add	rax, 0x76c
	cmp	rax, 0x76c
	jl	.label_3531
.label_3539:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3531
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	rcx, 0x76c
	cmp	rax, rcx
	jge	.label_3584
.label_3531:
	nop	
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_2814
	jmp	.label_2802
.label_3584:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2814
	lea	rdi, [rdi]
	jmp	.label_2802
.label_3511:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3610
	nop	
	jmp	.label_3026
.label_3610:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3614
	jmp	.label_3620
.label_3614:
	nop	
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_3621
	jmp	.label_3623
.label_3620:
	mov	rsp, rsp
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	jl	.label_3621
	mov	rbp, rbp
	jmp	.label_3623
.label_3026:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_3628
	mov	eax, 0x76c
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_3621
	jmp	.label_3623
.label_3628:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3652
	jmp	.label_3659
.label_3652:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_3621
	jmp	.label_3623
.label_3659:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_3621
.label_3623:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_3621
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	nop	
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_3685
.label_3621:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	nop	
	add	rcx, 0x76c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rcx
	test	al, 1
	jne	.label_2814
	jmp	.label_2802
.label_3685:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x22c]
	nop	
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	jne	.label_2814
	jmp	.label_2802
.label_3507:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3711
	jmp	.label_3635
.label_3711:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3719
	lea	rdi, [rdi]
	jmp	.label_3721
.label_3719:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3681
	jmp	.label_3726
.label_3681:
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x22c]
	cmp	rcx, rax
	jl	.label_3728
	jmp	.label_3732
.label_3726:
	movabs	rax, 0x7ffffffffffff893
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_3728
	jmp	.label_3732
.label_3721:
	movsxd	rax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_3743
	mov	eax, 0x76c
	mov	ecx, eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x22c]
	add	rdx, 0x76c
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_3728
	jmp	.label_3732
.label_3743:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_3755
	jmp	.label_3767
.label_3755:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	cmp	rax, rcx
	jle	.label_3728
	jmp	.label_3732
.label_3767:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	add	rax, 0x76c
	cmp	rax, 0x76c
	lea	rdi, [rdi]
	jl	.label_3728
.label_3732:
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_3728
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	rcx, 0x76c
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3790
.label_3728:
	lea	rdi, [rdi]
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x22c]
	nop	
	add	rcx, 0x76c
	mov	qword ptr [rbp - 0x330], rcx
	test	al, 1
	jne	.label_2814
	jmp	.label_2802
.label_3790:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x22c]
	nop	
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2814
	jmp	.label_2802
.label_3635:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3819
	mov	rsp, rsp
	jmp	.label_4365
.label_3819:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_4240
	jmp	.label_4256
.label_4240:
	nop	
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_2529
	mov	rbp, rbp
	jmp	.label_3834
.label_4256:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	jl	.label_2529
	lea	rdi, [rdi]
	jmp	.label_3834
.label_4365:
	nop	
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_3836
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_2529
	jmp	.label_3834
.label_3836:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3849
	jmp	.label_3855
.label_3849:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_2529
	jmp	.label_3834
.label_3855:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	eax, 0x76c
	nop	
	cmp	eax, 0x76c
	jl	.label_2529
.label_3834:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_2529
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_3877
.label_2529:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rcx
	test	al, 1
	jne	.label_2814
	mov	rbp, rbp
	jmp	.label_2802
.label_3877:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x22c]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2814
	jmp	.label_2802
.label_2814:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3896
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21_0
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_3896:
	jmp	.label_2571
.label_2802:
	movabs	rax, OFFSET FLAT:parse_datetime2.rel_time_0
	lea	rsi, [rsi]
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	lea	rsi, [rbp - 0x358]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x328], 0
	mov	ecx, dword ptr [rbp - 0x230]
	mov	rsp, rsp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	nop	
	mov	qword ptr [rbp - 0x320], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x234]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x318], rdi
	movsxd	rdi, dword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x310], rdi
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x23c]
	mov	qword ptr [rbp - 0x308], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x300], rdi
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x1cc]
	nop	
	mov	qword ptr [rbp - 0x2f8], rdi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x220]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x33c], 2
	add	rsi, 0x68
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	call	memcpy
	mov	byte ptr [rbp - 0x2b8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2b7], 0
	mov	qword ptr [rbp - 0x2b0], 0
	mov	qword ptr [rbp - 0x2a8], 0
	mov	qword ptr [rbp - 0x290], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2a0], 0
	nop	
	mov	qword ptr [rbp - 0x298], 0
	nop	
	mov	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x280], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x27e], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x27d], 0
	mov	byte ptr [rbp - 0x27b], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x27c], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x27a], 0
	mov	byte ptr [rbp - 0x279], 0
	nop	
	mov	byte ptr [rbp - 0x278], 0
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x270], rax
	mov	dword ptr [rbp - 0x268], 0x10d
	mov	ecx, dword ptr [rbp - 0x220]
	mov	dword ptr [rbp - 0x264], ecx
	mov	qword ptr [rbp - 0x260], 0
	mov	dword ptr [rbp - 0x35c], 1
.label_3637:
	cmp	dword ptr [rbp - 0x35c], 3
	nop	
	jg	.label_3597
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_4011
	nop	
	jmp	.label_3651
.label_4011:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_4017
	nop	
	jmp	.label_3694
.label_4017:
	mov	al, 1
	test	al, 1
	jne	.label_4019
	jmp	.label_4021
.label_4019:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_4022
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_3716
	mov	rbp, rbp
	jmp	.label_2532
.label_4022:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	dl, sil
	nop	
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_3716
	jmp	.label_2532
.label_4021:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_2570
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, dil
	nop	
	movsx	edi, cl
	mov	rsp, rsp
	add	esi, edi
	cmp	eax, esi
	jle	.label_3716
	jmp	.label_2532
.label_2570:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_4074
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	cl, al
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	mov	cl, dil
	lea	rdi, [rdi]
	movsx	edi, cl
	nop	
	add	esi, edi
	cmp	edx, esi
	jle	.label_3716
	jmp	.label_2532
.label_4074:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, sil
	movsx	esi, cl
	mov	rsp, rsp
	cmp	edx, esi
	nop	
	jl	.label_3716
.label_2532:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cl, sil
	mov	rsp, rsp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	edx, esi
	nop	
	cmp	edx, -0x80
	nop	
	jl	.label_3716
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	dl, cl
	movsx	esi, dl
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	dl, dil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	esi, edi
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_4309
.label_3716:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	esi, dl
	nop	
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	dl, dil
	nop	
	movsx	edi, dl
	add	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	rcx, dl
	mov	qword ptr [rbp - 0x368], rcx
	test	al, 1
	jne	.label_2469
	jmp	.label_2464
.label_4309:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	sil, dil
	mov	rbp, rbp
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	jne	.label_2469
	jmp	.label_2464
.label_3694:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4153
	lea	rdi, [rdi]
	jmp	.label_4157
.label_4153:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_4158
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_3181
	jmp	.label_4177
.label_4158:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	mov	rsp, rsp
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_3181
	jmp	.label_4177
.label_4157:
	nop	
	cmp	qword ptr [rbp - 0x1c8], 0
	lea	rdi, [rdi]
	jge	.label_4189
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_3181
	mov	rsp, rsp
	jmp	.label_4177
.label_4189:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_4208
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3181
	jmp	.label_4177
.label_4208:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	add	rax, rdx
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_3181
.label_4177:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	cmp	rax, -0x80
	jl	.label_3181
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_4245
.label_3181:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	movsx	rcx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rcx
	nop	
	test	al, 1
	jne	.label_2469
	jmp	.label_2464
.label_4245:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	add	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	nop	
	jne	.label_2469
	nop	
	jmp	.label_2464
.label_3651:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_4267
	nop	
	jmp	.label_4272
.label_4267:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_4274
	mov	rbp, rbp
	jmp	.label_4280
.label_4274:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_4282
	nop	
	jmp	.label_4287
.label_4282:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_4288
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	dx, di
	lea	rdi, [rdi]
	movsx	edi, dx
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_4100
	lea	rdi, [rdi]
	jmp	.label_4171
.label_4288:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	dx, cx
	movsx	ecx, dx
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x1c8]
	mov	dx, si
	mov	rbp, rbp
	movsx	ecx, dx
	cmp	eax, ecx
	nop	
	jl	.label_4100
	mov	rbp, rbp
	jmp	.label_4171
.label_4287:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_4335
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, di
	mov	rbp, rbp
	movsx	edi, cx
	lea	rsi, [rsi]
	add	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_4100
	jmp	.label_4171
.label_4335:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3462
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_4100
	jmp	.label_4171
.label_3462:
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	nop	
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_4100
.label_4171:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	add	edx, esi
	nop	
	cmp	edx, 0xffff8000
	jl	.label_4100
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	dx, di
	movsx	edi, dx
	add	esi, edi
	cmp	eax, esi
	jge	.label_4395
.label_4100:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	mov	dx, di
	lea	rdi, [rdi]
	movsx	edi, dx
	mov	rbp, rbp
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x368], rcx
	test	al, 1
	jne	.label_2469
	mov	rsp, rsp
	jmp	.label_2464
.label_4395:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	si, dx
	movsx	eax, si
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	mov	si, di
	lea	rdi, [rdi]
	movsx	edi, si
	add	eax, edi
	lea	rdi, [rdi]
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2469
	jmp	.label_2464
.label_4280:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2493
	jmp	.label_2498
.label_2493:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_2501
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_2508
	mov	rbp, rbp
	jmp	.label_2525
.label_2501:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	jl	.label_2508
	mov	rsp, rsp
	jmp	.label_2525
.label_2498:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_2541
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2508
	lea	rdi, [rdi]
	jmp	.label_2525
.label_2541:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_2563
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2508
	nop	
	jmp	.label_2525
.label_2563:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2508
.label_2525:
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x8000
	jl	.label_2508
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2606
.label_2508:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	mov	rbp, rbp
	mov	di, dx
	movsx	rcx, di
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x368], rcx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2469
	lea	rdi, [rdi]
	jmp	.label_2464
.label_2606:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	lea	rsi, [rsi]
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2469
	jmp	.label_2464
.label_4272:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2669
	jmp	.label_2677
.label_2669:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2678
	jmp	.label_2681
.label_2678:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2684
	jmp	.label_2688
.label_2684:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	nop	
	jge	.label_2689
	nop	
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	sub	eax, esi
	nop	
	cmp	edx, eax
	mov	rbp, rbp
	jl	.label_2698
	nop	
	jmp	.label_2712
.label_2689:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	sub	eax, ecx
	mov	rdx, qword ptr [rbp - 0x1c8]
	nop	
	mov	ecx, edx
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_2698
	jmp	.label_2712
.label_2688:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3885
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	cmp	eax, edx
	jle	.label_2698
	lea	rsi, [rsi]
	jmp	.label_2712
.label_3885:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_2746
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	edx, eax
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	cmp	ecx, edx
	jle	.label_2698
	jmp	.label_2712
.label_2746:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	add	ecx, edx
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_2698
.label_2712:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	ecx, eax
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	add	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_2698
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_2796
.label_2698:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	nop	
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x368], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2469
	mov	rbp, rbp
	jmp	.label_2464
.label_2796:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	add	eax, esi
	lea	rdi, [rdi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x368], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2469
	jmp	.label_2464
.label_2681:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_2832
	nop	
	jmp	.label_2836
.label_2832:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_2838
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_2843
	nop	
	jmp	.label_2793
.label_2838:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	nop	
	jl	.label_2843
	mov	rsp, rsp
	jmp	.label_2793
.label_2836:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_2663
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_2843
	jmp	.label_2793
.label_2663:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	cmp	eax, 0
	jge	.label_3055
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2843
	lea	rdi, [rdi]
	jmp	.label_2793
.label_3055:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	add	rax, rdx
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2843
.label_2793:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x80000000
	lea	rsi, [rsi]
	jl	.label_2843
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_2939
.label_2843:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	nop	
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2469
	mov	rsp, rsp
	jmp	.label_2464
.label_2939:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2469
	jmp	.label_2464
.label_2677:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2994
	lea	rdi, [rdi]
	jmp	.label_3001
.label_2994:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3004
	jmp	.label_3437
.label_3004:
	mov	al, 1
	test	al, 1
	jne	.label_3012
	jmp	.label_3018
.label_3012:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jge	.label_3020
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_3029
	nop	
	jmp	.label_3047
.label_3020:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	jl	.label_3029
	jmp	.label_3047
.label_3018:
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	jge	.label_3060
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_3029
	jmp	.label_3047
.label_3060:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_3074
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_3029
	lea	rdi, [rdi]
	jmp	.label_3047
.label_3074:
	mov	rax, qword ptr [rbp - 0x1c8]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jl	.label_3029
.label_3047:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3029
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3122
.label_3029:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	mov	qword ptr [rbp - 0x368], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2469
	nop	
	jmp	.label_2464
.label_3122:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x368], rdx
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2469
	jmp	.label_2464
.label_3437:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3165
	lea	rsi, [rsi]
	jmp	.label_3167
.label_3165:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_3171
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	sub	rax, rsi
	cmp	rcx, rax
	nop	
	jl	.label_2438
	lea	rdi, [rdi]
	jmp	.label_3193
.label_3171:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	jl	.label_2438
	jmp	.label_3193
.label_3167:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_3213
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	nop	
	cmp	rcx, rdx
	jle	.label_2438
	lea	rsi, [rsi]
	jmp	.label_3193
.label_3213:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_3231
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2438
	lea	rsi, [rsi]
	jmp	.label_3193
.label_3231:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_2438
.label_3193:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	add	rcx, rsi
	cmp	rcx, rax
	nop	
	jl	.label_2438
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rcx, rsi
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3271
.label_2438:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x368], rcx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2469
	jmp	.label_2464
.label_3271:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	qword ptr [rbp - 0x368], rdx
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2469
	jmp	.label_2464
.label_3001:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_3316
	jmp	.label_3322
.label_3316:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_3324
	jmp	.label_3327
.label_3324:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_3329
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_3335
	jmp	.label_3345
.label_3329:
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_3335
	jmp	.label_3345
.label_3327:
	nop	
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_3361
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	lea	rsi, [rsi]
	add	rdx, rsi
	cmp	rcx, rdx
	nop	
	jle	.label_3335
	jmp	.label_3345
.label_3361:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_3382
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3335
	mov	rsp, rsp
	jmp	.label_3345
.label_3382:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	rsp, rsp
	jl	.label_3335
.label_3345:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_3335
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3810
.label_3335:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x368], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2469
	nop	
	jmp	.label_2464
.label_3810:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x368], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2469
	nop	
	jmp	.label_2464
.label_3322:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3465
	mov	rsp, rsp
	jmp	.label_3470
.label_3465:
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_3471
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_3477
	jmp	.label_3496
.label_3471:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_3477
	jmp	.label_3496
.label_3470:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_3508
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_3477
	jmp	.label_3496
.label_3508:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_3530
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3477
	jmp	.label_3496
.label_3530:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rax, rdx
	nop	
	jl	.label_3477
.label_3496:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	cmp	rcx, rax
	jl	.label_3477
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3567
.label_3477:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x368], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2469
	jmp	.label_2464
.label_3567:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	jne	.label_2469
.label_2464:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x368]
	call	time_overflow
	test	al, 1
	mov	rsp, rsp
	jne	.label_2469
	lea	rdi, [rdi]
	jmp	.label_3596
.label_2469:
	mov	rbp, rbp
	jmp	.label_3597
.label_3596:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x370]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x3a8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x368]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1d8]
	call	localtime_rz
	cmp	rax, 0
	je	.label_3611
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x378], 0
	mov	rbp, rbp
	je	.label_3611
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x388]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x264]
	je	.label_3611
	mov	rax, qword ptr [rbp - 0x378]
	mov	qword ptr [rbp - 0x260], rax
	mov	dword ptr [rbp - 0x258], 0x10d
	mov	ecx, dword ptr [rbp - 0x388]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x254], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x250], 0
	jmp	.label_3597
.label_3611:
	lea	rdi, [rdi]
	jmp	.label_3634
.label_3634:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x35c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x35c], eax
	lea	rsi, [rsi]
	jmp	.label_3637
.label_3597:
	cmp	qword ptr [rbp - 0x270], 0
	je	.label_3649
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x260], 0
	je	.label_3649
	mov	rdi, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x260]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_3649
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x264], 0xffffffff
	mov	qword ptr [rbp - 0x260], 0
.label_3649:
	nop	
	lea	rdi, [rbp - 0x358]
	call	yyparse
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_3676
	mov	rbp, rbp
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3682
	mov	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x358]
	mov	rbp, rbp
	ja	.label_3686
	nop	
	movabs	rdi, OFFSET FLAT:.str.22_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5b0], rax
	jmp	.label_3695
.label_3686:
	movabs	rdi, OFFSET FLAT:.str.23_0
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x5b0], rax
.label_3695:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5b0]
	nop	
	mov	rsi, qword ptr [rbp - 0x358]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_3682:
	lea	rsi, [rsi]
	jmp	.label_2571
.label_3676:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x27f], 1
	nop	
	je	.label_3710
	movabs	rdi, OFFSET FLAT:.str.24_0
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2b8], 1
	je	.label_3724
	movabs	rdi, OFFSET FLAT:.str.25_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x5b8], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x5b8]
	mov	rsi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x5bc], eax
	jmp	.label_3735
.label_3724:
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_3740
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.26_0
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rbp, rbp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x5c8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5cc], eax
	jmp	.label_3757
.label_3740:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_3763
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_3769
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5d8], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x5d8]
	mov	rsi, rax
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5dc], eax
	mov	rsp, rsp
	jmp	.label_3784
.label_3769:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.28
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_3793
	movabs	rdi, OFFSET FLAT:.str.29_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e8], rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5e8]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5ec], eax
	jmp	.label_3808
.label_3793:
	movabs	rdi, OFFSET FLAT:.str.30_0
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x5f8], rax
	call	gettext
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x5f8]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5fc], eax
.label_3808:
	jmp	.label_3784
.label_3784:
	lea	rsi, [rsi]
	jmp	.label_3828
.label_3763:
	movabs	rdi, OFFSET FLAT:.str.31_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x608], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x608]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60c], eax
.label_3828:
	lea	rdi, [rdi]
	jmp	.label_3757
.label_3757:
	lea	rdi, [rdi]
	jmp	.label_3735
.label_3735:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2a0], 0
	lea	rsi, [rsi]
	je	.label_3843
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], 0
	jne	.label_3843
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x344]
	jge	.label_3843
	movabs	rsi, OFFSET FLAT:.str.32_0
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	nop	
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x610], eax
.label_3843:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_2542
	lea	rsi, [rbp - 0xc0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	nop	
	mov	eax, dword ptr [rbp - 0x340]
	mov	qword ptr [rbp - 0x618], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	time_zone_str
	movabs	rsi, OFFSET FLAT:.str.33_0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x618]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x61c], eax
.label_2542:
	mov	edi, 0xa
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x620], eax
.label_3710:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2b8], 1
	je	.label_3886
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x300]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x2f8]
	mov	qword ptr [rax + 8], rcx
	jmp	.label_3887
.label_3886:
	nop	
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	or	rdx, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0x298]
	nop	
	mov	rsi, qword ptr [rbp - 0x2a0]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	or	rdx, rsi
	cmp	rcx, rdx
	jge	.label_3891
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3486
	cmp	qword ptr [rbp - 0x290], 1
	jle	.label_3913
	nop	
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_3913:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2b0], 1
	jle	.label_3920
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.35_0
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3920:
	cmp	qword ptr [rbp - 0x2a8], 1
	nop	
	jle	.label_3929
	movabs	rdi, OFFSET FLAT:.str.36_0
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_3929:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x298], 1
	mov	rbp, rbp
	jle	.label_3938
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.37_0
	mov	al, 0
	call	dbg_printf
.label_3938:
	mov	rax, qword ptr [rbp - 0x2a0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x288]
	cmp	rax, 1
	jle	.label_3950
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.38_0
	mov	al, 0
	call	dbg_printf
.label_3950:
	jmp	.label_3486
.label_3486:
	nop	
	jmp	.label_2571
.label_3891:
	lea	rax, [rbp - 0x68]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x358]
	add	rcx, 0x20
	nop	
	mov	dl, byte ptr [rbp - 0x27f]
	mov	rsp, rsp
	add	rax, 0x14
	and	dl, 1
	mov	rsi, qword ptr [rcx]
	nop	
	mov	qword ptr [rsp], rsi
	mov	rsi, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 8], rsi
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	movzx	edi, dl
	mov	rbp, rbp
	mov	rsi, rax
	call	to_tm_year
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3983
	lea	rdi, [rdi]
	jmp	.label_2489
.label_3983:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3989
	jmp	.label_3992
.label_3989:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3510
	jmp	.label_3540
.label_3510:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_4358
	jmp	.label_3998
.label_4358:
	mov	al, 1
	test	al, 1
	jne	.label_3999
	jmp	.label_4002
.label_3999:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000001
	lea	rdi, [rdi]
	jl	.label_4004
	mov	rsp, rsp
	jmp	.label_3624
.label_4002:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_4004
	nop	
	jmp	.label_3624
.label_3998:
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_4018
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dl, cl
	movsx	esi, dl
	add	esi, -1
	cmp	eax, esi
	nop	
	jle	.label_4004
	lea	rsi, [rsi]
	jmp	.label_3624
.label_4018:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4030
	jmp	.label_4033
.label_4030:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	add	esi, -1
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_4004
	lea	rdi, [rdi]
	jmp	.label_3624
.label_4033:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	movsx	edx, cl
	add	edx, -1
	cmp	edx, -1
	mov	rbp, rbp
	jl	.label_4004
.label_3624:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, -1
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_4004
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	add	esi, -1
	lea	rsi, [rsi]
	cmp	eax, esi
	nop	
	jge	.label_4064
.label_4004:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, -1
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x58], esi
	test	al, 1
	jne	.label_2489
	jmp	.label_2502
.label_4064:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	sil, dl
	movsx	eax, sil
	add	eax, -1
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	jne	.label_2489
	lea	rsi, [rsi]
	jmp	.label_2502
.label_3540:
	mov	al, 1
	test	al, 1
	jne	.label_4082
	jmp	.label_4084
.label_4082:
	mov	al, 1
	test	al, 1
	jne	.label_4087
	jmp	.label_4089
.label_4087:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	mov	rbp, rbp
	jl	.label_4099
	jmp	.label_2482
.label_4089:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x320]
	jl	.label_4099
	jmp	.label_2482
.label_4084:
	cmp	qword ptr [rbp - 0x320], 0
	lea	rsi, [rsi]
	jge	.label_4103
	lea	rsi, [rsi]
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_4099
	nop	
	jmp	.label_2482
.label_4103:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4115
	jmp	.label_4117
.label_4115:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_4099
	lea	rdi, [rdi]
	jmp	.label_2482
.label_4117:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_4099
.label_2482:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -0x80
	jl	.label_4099
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_4140
.label_4099:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x58], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2489
	lea	rsi, [rsi]
	jmp	.label_2502
.label_4140:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, -1
	mov	sil, al
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	nop	
	jne	.label_2489
	lea	rdi, [rdi]
	jmp	.label_2502
.label_3992:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_4160
	jmp	.label_4169
.label_4160:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_4170
	nop	
	jmp	.label_4174
.label_4170:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_4176
	lea	rdi, [rdi]
	jmp	.label_4180
.label_4176:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_4182
	lea	rdi, [rdi]
	jmp	.label_3542
.label_4182:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0x80000001
	jl	.label_3273
	jmp	.label_3143
.label_3542:
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_3273
	mov	rsp, rsp
	jmp	.label_3143
.label_4180:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_4203
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	add	esi, -1
	mov	rsp, rsp
	cmp	eax, esi
	lea	rdi, [rdi]
	jle	.label_3273
	mov	rbp, rbp
	jmp	.label_3143
.label_4203:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_4223
	mov	rbp, rbp
	jmp	.label_4225
.label_4223:
	mov	rax, qword ptr [rbp - 0x320]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	cx, ax
	nop	
	movsx	esi, cx
	add	esi, -1
	lea	rdi, [rdi]
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_3273
	mov	rbp, rbp
	jmp	.label_3143
.label_4225:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, -1
	cmp	edx, -1
	jl	.label_3273
.label_3143:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	cmp	edx, 0xffff8000
	mov	rbp, rbp
	jl	.label_3273
	mov	rsp, rsp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	nop	
	add	esi, -1
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_4251
.label_3273:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, -1
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x58], esi
	test	al, 1
	jne	.label_2489
	jmp	.label_2502
.label_4251:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	si, dx
	nop	
	movsx	eax, si
	nop	
	add	eax, -1
	nop	
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	jne	.label_2489
	mov	rsp, rsp
	jmp	.label_2502
.label_4174:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_4268
	jmp	.label_3618
.label_4268:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_4275
	jmp	.label_4278
.label_4275:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_3696
	nop	
	jmp	.label_3888
.label_4278:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	jl	.label_3696
	jmp	.label_3888
.label_3618:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x320], 0
	lea	rdi, [rdi]
	jge	.label_4302
	nop	
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3696
	nop	
	jmp	.label_3888
.label_4302:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_4315
	mov	rbp, rbp
	jmp	.label_4318
.label_4315:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3696
	mov	rbp, rbp
	jmp	.label_3888
.label_4318:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	jl	.label_3696
.label_3888:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	mov	rsp, rsp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_3696
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_4346
.label_3696:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	add	edx, -1
	mov	si, dx
	movsx	edx, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], edx
	test	al, 1
	nop	
	jne	.label_2489
	mov	rbp, rbp
	jmp	.label_2502
.label_4346:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	add	eax, -1
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2489
	mov	rsp, rsp
	jmp	.label_2502
.label_4169:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4148
	lea	rdi, [rdi]
	jmp	.label_4371
.label_4148:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_4373
	jmp	.label_4376
.label_4373:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4377
	jmp	.label_4380
.label_4377:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4222
	jmp	.label_4384
.label_4222:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	nop	
	cmp	ecx, 0x80000001
	mov	rsp, rsp
	jl	.label_2437
	lea	rdi, [rdi]
	jmp	.label_2459
.label_4384:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	nop	
	cmp	eax, edx
	jl	.label_2437
	jmp	.label_2459
.label_4380:
	mov	rax, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_4393
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	nop	
	mov	edx, ecx
	add	edx, -1
	mov	rbp, rbp
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_2437
	lea	rdi, [rdi]
	jmp	.label_2459
.label_4393:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_4399
	mov	rbp, rbp
	jmp	.label_2432
.label_4399:
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	mov	edx, eax
	add	edx, -1
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_2437
	jmp	.label_2459
.label_2432:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, -1
	jl	.label_2437
.label_2459:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, 0x80000000
	jl	.label_2437
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	edx, ecx
	add	edx, -1
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_2483
.label_2437:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	mov	dword ptr [rbp - 0x58], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2489
	jmp	.label_2502
.label_2483:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2489
	jmp	.label_2502
.label_4376:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2521
	jmp	.label_2526
.label_2521:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2528
	jmp	.label_2531
.label_2528:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_2533
	jmp	.label_2539
.label_2531:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x320]
	jl	.label_2533
	jmp	.label_2539
.label_2526:
	nop	
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_2545
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2533
	jmp	.label_2539
.label_2545:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2565
	jmp	.label_2568
.label_2565:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2533
	mov	rsp, rsp
	jmp	.label_2539
.label_2568:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -1
	lea	rsi, [rsi]
	jl	.label_2533
.label_2539:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -0x80000000
	lea	rdi, [rdi]
	jl	.label_2533
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	nop	
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_2587
.label_2533:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, -1
	mov	dword ptr [rbp - 0x58], edx
	test	al, 1
	jne	.label_2489
	lea	rsi, [rsi]
	jmp	.label_2502
.label_2587:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	nop	
	jne	.label_2489
	jmp	.label_2502
.label_4371:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2623
	jmp	.label_2628
.label_2623:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2629
	lea	rsi, [rsi]
	jmp	.label_2634
.label_2629:
	nop	
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3514
	mov	rbp, rbp
	jmp	.label_2647
.label_3514:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2651
	nop	
	jmp	.label_2653
.label_2651:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	mov	rsp, rsp
	jl	.label_2656
	nop	
	jmp	.label_2666
.label_2653:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	jl	.label_2656
	nop	
	jmp	.label_2666
.label_2647:
	nop	
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_2675
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2656
	jmp	.label_2666
.label_2675:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2690
	lea	rsi, [rsi]
	jmp	.label_2695
.label_2690:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2656
	lea	rdi, [rdi]
	jmp	.label_2666
.label_2695:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -1
	jl	.label_2656
.label_2666:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	nop	
	add	rcx, -1
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2656
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rcx, -1
	nop	
	cmp	rax, rcx
	jge	.label_2726
.label_2656:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	nop	
	test	al, 1
	jne	.label_2489
	lea	rdi, [rdi]
	jmp	.label_2502
.label_2726:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2489
	jmp	.label_2502
.label_2634:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2758
	lea	rsi, [rsi]
	jmp	.label_2763
.label_2758:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2765
	lea	rsi, [rsi]
	jmp	.label_2772
.label_2765:
	nop	
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_2775
	lea	rsi, [rsi]
	jmp	.label_2784
.label_2772:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x320]
	jl	.label_2775
	jmp	.label_2784
.label_2763:
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_2795
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2775
	jmp	.label_2784
.label_2795:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2809
	jmp	.label_2813
.label_2809:
	nop	
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2775
	jmp	.label_2784
.label_2813:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_2775
.label_2784:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2775
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_2835
.label_2775:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2489
	jmp	.label_2502
.label_2835:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2489
	mov	rbp, rbp
	jmp	.label_2502
.label_2628:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2865
	lea	rdi, [rdi]
	jmp	.label_4349
.label_2865:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2869
	jmp	.label_2877
.label_2869:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2879
	jmp	.label_2882
.label_2879:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	mov	rbp, rbp
	jl	.label_2884
	jmp	.label_2893
.label_2882:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	jl	.label_2884
	jmp	.label_2893
.label_2877:
	nop	
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_2902
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2884
	mov	rsp, rsp
	jmp	.label_2893
.label_2902:
	mov	al, 1
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_2911
	jmp	.label_2913
.label_2911:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	nop	
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2884
	jmp	.label_2893
.label_2913:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_2884
.label_2893:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2884
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	jge	.label_2948
.label_2884:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2489
	jmp	.label_2502
.label_2948:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rdx, -1
	mov	eax, edx
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	jne	.label_2489
	jmp	.label_2502
.label_4349:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2980
	mov	rbp, rbp
	jmp	.label_2985
.label_2980:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_2987
	jmp	.label_2991
.label_2987:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_2993
	jmp	.label_3005
.label_2991:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	jl	.label_2993
	lea	rdi, [rdi]
	jmp	.label_3005
.label_2985:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_3023
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2993
	nop	
	jmp	.label_3005
.label_3023:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3040
	jmp	.label_3045
.label_3040:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2993
	jmp	.label_3005
.label_3045:
	mov	rax, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rax, -1
	cmp	rax, -1
	jl	.label_2993
.label_3005:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2993
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3069
.label_2993:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_2489
	mov	rbp, rbp
	jmp	.label_2502
.label_3069:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rdx, -1
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2489
.label_2502:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3875
	lea	rsi, [rsi]
	jmp	.label_3098
.label_3875:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3102
	jmp	.label_3105
.label_3102:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3108
	jmp	.label_3114
.label_3108:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3116
	jmp	.label_3120
.label_3116:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000000
	nop	
	jl	.label_3121
	mov	rbp, rbp
	jmp	.label_3154
.label_3120:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_3121
	mov	rsp, rsp
	jmp	.label_3154
.label_3114:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3140
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	add	esi, 0
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_3121
	mov	rsp, rsp
	jmp	.label_3154
.label_3140:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_4166
	jmp	.label_3161
.label_4166:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_3121
	lea	rdi, [rdi]
	jmp	.label_3154
.label_3161:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	add	edx, 0
	cmp	edx, 0
	nop	
	jl	.label_3121
.label_3154:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	add	edx, 0
	lea	rdi, [rdi]
	cmp	edx, -0x80
	mov	rbp, rbp
	jl	.label_3121
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_4369
.label_3121:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dl, cl
	movsx	esi, dl
	add	esi, 0
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x5c], esi
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2489
	jmp	.label_2458
.label_4369:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
	nop	
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	add	eax, 0
	mov	rbp, rbp
	mov	sil, al
	mov	rbp, rbp
	movsx	eax, sil
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2489
	nop	
	jmp	.label_2458
.label_3105:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3241
	mov	rsp, rsp
	jmp	.label_3242
.label_3241:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2686
	jmp	.label_3247
.label_2686:
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	nop	
	jl	.label_3250
	lea	rdi, [rdi]
	jmp	.label_2833
.label_3247:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	jl	.label_3250
	lea	rsi, [rsi]
	jmp	.label_2833
.label_3242:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_3266
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_3250
	jmp	.label_2833
.label_3266:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_3276
	jmp	.label_3282
.label_3276:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_3250
	jmp	.label_2833
.label_3282:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_3250
.label_2833:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, -0x80
	jl	.label_3250
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	jge	.label_3306
.label_3250:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	add	edx, 0
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x5c], edx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2489
	jmp	.label_2458
.label_3306:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
	mov	eax, edx
	lea	rdi, [rdi]
	add	eax, 0
	mov	sil, al
	movsx	eax, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2489
	jmp	.label_2458
.label_3098:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3339
	jmp	.label_3343
.label_3339:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3344
	mov	rsp, rsp
	jmp	.label_3346
.label_3344:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3350
	lea	rsi, [rsi]
	jmp	.label_3353
.label_3350:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3355
	mov	rsp, rsp
	jmp	.label_3364
.label_3355:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	cmp	edx, 0x80000000
	jl	.label_2977
	jmp	.label_3373
.label_3364:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	nop	
	jl	.label_2977
	mov	rsp, rsp
	jmp	.label_3373
.label_3353:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_3385
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_2977
	jmp	.label_3373
.label_3385:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3400
	jmp	.label_3407
.label_3400:
	nop	
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	movsx	esi, cx
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2977
	nop	
	jmp	.label_3373
.label_3407:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	add	edx, 0
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_2977
.label_3373:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	movsx	edx, cx
	nop	
	add	edx, 0
	nop	
	cmp	edx, 0xffff8000
	jl	.label_2977
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_3441
.label_2977:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	mov	dword ptr [rbp - 0x5c], esi
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2489
	lea	rdi, [rdi]
	jmp	.label_2458
.label_3441:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	add	eax, 0
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2489
	jmp	.label_2458
.label_3346:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_3474
	jmp	.label_3480
.label_3474:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_3482
	jmp	.label_3489
.label_3482:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_3490
	jmp	.label_3504
.label_3489:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_3490
	mov	rbp, rbp
	jmp	.label_3504
.label_3480:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x318], 0
	lea	rdi, [rdi]
	jge	.label_4195
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jle	.label_3490
	mov	rsp, rsp
	jmp	.label_3504
.label_4195:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3524
	jmp	.label_3529
.label_3524:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	jle	.label_3490
	lea	rsi, [rsi]
	jmp	.label_3504
.label_3529:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, 0
	jl	.label_3490
.label_3504:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	nop	
	jl	.label_3490
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jge	.label_3548
.label_3490:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	add	edx, 0
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	jne	.label_2489
	lea	rdi, [rdi]
	jmp	.label_2458
.label_3548:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, 0
	mov	rsp, rsp
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2489
	mov	rbp, rbp
	jmp	.label_2458
.label_3343:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_2658
	jmp	.label_3576
.label_2658:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3577
	nop	
	jmp	.label_3580
.label_3577:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3581
	jmp	.label_2759
.label_3581:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2770
	mov	rbp, rbp
	jmp	.label_3587
.label_2770:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0x80000000
	jl	.label_3180
	lea	rdi, [rdi]
	jmp	.label_3593
.label_3587:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	cmp	eax, edx
	mov	rsp, rsp
	jl	.label_3180
	jmp	.label_3593
.label_2759:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3601
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	nop	
	mov	edx, ecx
	add	edx, 0
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_3180
	lea	rsi, [rsi]
	jmp	.label_3593
.label_3601:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_4078
	lea	rsi, [rsi]
	jmp	.label_3617
.label_4078:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	add	edx, 0
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_3180
	mov	rsp, rsp
	jmp	.label_3593
.label_3617:
	nop	
	mov	rax, qword ptr [rbp - 0x318]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, 0
	cmp	ecx, 0
	jl	.label_3180
.label_3593:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, 0
	cmp	ecx, 0x80000000
	jl	.label_3180
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0
	cmp	eax, edx
	jge	.label_3646
.label_3180:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	add	edx, 0
	mov	dword ptr [rbp - 0x5c], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2489
	mov	rsp, rsp
	jmp	.label_2458
.label_3646:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	eax, edx
	add	eax, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2489
	mov	rbp, rbp
	jmp	.label_2458
.label_3580:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_3675
	jmp	.label_3678
.label_3675:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3680
	jmp	.label_3684
.label_3680:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_2713
	jmp	.label_3479
.label_3684:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_2713
	jmp	.label_3479
.label_3678:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_3698
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_2713
	nop	
	jmp	.label_3479
.label_3698:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_3709
	mov	rbp, rbp
	jmp	.label_3713
.label_3709:
	nop	
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2713
	mov	rbp, rbp
	jmp	.label_3479
.label_3713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	add	rax, 0
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2713
.label_3479:
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	add	rax, 0
	mov	rbp, rbp
	cmp	rax, -0x80000000
	jl	.label_2713
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_3737
.label_2713:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	edx, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2489
	mov	rbp, rbp
	jmp	.label_2458
.label_3737:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	add	eax, 0
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2489
	lea	rdi, [rdi]
	jmp	.label_2458
.label_3576:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3951
	mov	rbp, rbp
	jmp	.label_3777
.label_3951:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3779
	jmp	.label_3781
.label_3779:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3783
	mov	rsp, rsp
	jmp	.label_3786
.label_3783:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3787
	lea	rdi, [rdi]
	jmp	.label_3791
.label_3787:
	nop	
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_3794
	mov	rsp, rsp
	jmp	.label_3795
.label_3791:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_3794
	lea	rdi, [rdi]
	jmp	.label_3795
.label_3786:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x318], 0
	mov	rbp, rbp
	jge	.label_3807
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_3794
	lea	rdi, [rdi]
	jmp	.label_3795
.label_3807:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3821
	jmp	.label_3826
.label_3821:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_3794
	jmp	.label_3795
.label_3826:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_3794
.label_3795:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_3794
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3844
.label_3794:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2489
	mov	rsp, rsp
	jmp	.label_2458
.label_3844:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	mov	rsp, rsp
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2489
	mov	rsp, rsp
	jmp	.label_2458
.label_3781:
	mov	rsp, rsp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4366
	jmp	.label_3879
.label_4366:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_2668
	jmp	.label_3883
.label_2668:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_2842
	jmp	.label_2752
.label_3883:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x318]
	nop	
	jl	.label_2842
	jmp	.label_2752
.label_3879:
	cmp	qword ptr [rbp - 0x318], 0
	mov	rbp, rbp
	jge	.label_2821
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	jle	.label_2842
	jmp	.label_2752
.label_2821:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3901
	jmp	.label_3904
.label_3901:
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2842
	jmp	.label_2752
.label_3904:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	jl	.label_2842
.label_2752:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_2842
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_3925
.label_2842:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2489
	mov	rbp, rbp
	jmp	.label_2458
.label_3925:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	rbp, rbp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2489
	jmp	.label_2458
.label_3777:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_3958
	lea	rsi, [rsi]
	jmp	.label_3961
.label_3958:
	mov	al, 1
	test	al, 1
	jne	.label_3964
	mov	rbp, rbp
	jmp	.label_3966
.label_3964:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3967
	nop	
	jmp	.label_3973
.label_3967:
	movabs	rax, 0x8000000000000000
	nop	
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_3976
	lea	rdi, [rdi]
	jmp	.label_3501
.label_3973:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_3976
	lea	rsi, [rsi]
	jmp	.label_3501
.label_3966:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_3993
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_3976
	mov	rsp, rsp
	jmp	.label_3501
.label_3993:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_4005
	jmp	.label_4008
.label_4005:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3976
	mov	rsp, rsp
	jmp	.label_3501
.label_4008:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	lea	rdi, [rdi]
	jl	.label_3976
.label_3501:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	cmp	rcx, rax
	nop	
	jl	.label_3976
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_4027
.label_3976:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2489
	jmp	.label_2458
.label_4027:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2489
	nop	
	jmp	.label_2458
.label_3961:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_4053
	jmp	.label_4057
.label_4053:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_4059
	mov	rbp, rbp
	jmp	.label_3957
.label_4059:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_3968
	jmp	.label_4069
.label_3957:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_3968
	lea	rdi, [rdi]
	jmp	.label_4069
.label_4057:
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_4075
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_3968
	jmp	.label_4069
.label_4075:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_4079
	lea	rsi, [rsi]
	jmp	.label_4085
.label_4079:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3968
	jmp	.label_4069
.label_4085:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_3968
.label_4069:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_3968
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	nop	
	jge	.label_4109
.label_3968:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2489
	nop	
	jmp	.label_2458
.label_4109:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2489
	lea	rdi, [rdi]
	jmp	.label_2458
.label_2489:
	test	byte ptr [rbp - 0x27f], 1
	lea	rsi, [rsi]
	je	.label_4139
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.39_0
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	dbg_printf
.label_4139:
	lea	rsi, [rsi]
	jmp	.label_2571
.label_2458:
	cmp	qword ptr [rbp - 0x290], 0
	jne	.label_4146
	mov	rbp, rbp
	test	byte ptr [rbp - 0x2b7], 1
	mov	rsp, rsp
	je	.label_2643
	cmp	qword ptr [rbp - 0x2b0], 0
	jne	.label_2643
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2a8], 0
	lea	rsi, [rsi]
	jne	.label_2643
.label_4146:
	mov	rdi, qword ptr [rbp - 0x310]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x33c]
	mov	rsp, rsp
	call	to_hour
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x60], 0
	jge	.label_4161
	cmp	dword ptr [rbp - 0x33c], 0
	jne	.label_4167
	nop	
	movabs	rax, OFFSET FLAT:.str.40_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x628], rax
	lea	rdi, [rdi]
	jmp	.label_4172
.label_4167:
	movabs	rax, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.41_0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x33c], 1
	nop	
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x628], rax
.label_4172:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x3b0], rax
	test	byte ptr [rbp - 0x27f], 1
	lea	rsi, [rsi]
	je	.label_4188
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x310]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x3b0]
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_4188:
	jmp	.label_2571
.label_4161:
	mov	rax, qword ptr [rbp - 0x308]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	mov	rax, qword ptr [rbp - 0x300]
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], ecx
	nop	
	test	byte ptr [rbp - 0x27f], 1
	je	.label_4209
	cmp	qword ptr [rbp - 0x290], 0
	lea	rdi, [rdi]
	je	.label_4220
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.44_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x630], rax
	jmp	.label_4229
.label_4220:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x630], rax
.label_4229:
	mov	rax, qword ptr [rbp - 0x630]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x68]
	mov	edx, 0x64
	mov	rsp, rsp
	lea	rsi, [rbp - 0x130]
	mov	qword ptr [rbp - 0x638], rax
	mov	rbp, rbp
	call	debug_strftime
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x638]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	dbg_printf
.label_4209:
	mov	rbp, rbp
	jmp	.label_4246
.label_2643:
	mov	dword ptr [rbp - 0x68], 0
	nop	
	mov	dword ptr [rbp - 0x64], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2f8], 0
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x27f], 1
	mov	rsp, rsp
	je	.label_4248
	movabs	rdi, OFFSET FLAT:.str.46_0
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_4248:
	lea	rsi, [rsi]
	jmp	.label_4246
.label_4246:
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0x2a8]
	or	rax, qword ptr [rbp - 0x290]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_4259
	mov	dword ptr [rbp - 0x48], 0xffffffff
.label_4259:
	cmp	qword ptr [rbp - 0x2a0], 0
	je	.label_4263
	mov	eax, dword ptr [rbp - 0x344]
	mov	dword ptr [rbp - 0x48], eax
.label_4263:
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	mov	eax, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x80], eax
	mov	dword ptr [rbp - 0x50], 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1d8]
	call	mktime_z
	lea	rdi, [rbp - 0xa0]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c8], rax
	call	mktime_ok
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_4308
	mov	byte ptr [rbp - 0x3b1], 0
	cmp	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3b2], al
	test	byte ptr [rbp - 0x3b2], 1
	je	.label_4310
	lea	rax, [rbp - 0x3d0]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3ce], 0x58
	mov	byte ptr [rbp - 0x3cf], 0x58
	mov	byte ptr [rbp - 0x3d0], 0x58
	mov	edi, dword ptr [rbp - 0x340]
	lea	rdi, [rdi]
	add	rax, 3
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	time_zone_str
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x3d0]
	mov	qword ptr [rbp - 0x640], rax
	call	tzalloc
	mov	qword ptr [rbp - 0x3d8], rax
	cmp	qword ptr [rbp - 0x3d8], 0
	jne	.label_4341
	test	byte ptr [rbp - 0x27f], 1
	mov	rsp, rsp
	je	.label_4345
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x3d0]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_4345:
	jmp	.label_2571
.label_4341:
	lea	rsi, [rbp - 0x68]
	nop	
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x48], eax
	mov	dword ptr [rbp - 0x50], 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x3d8]
	mov	rsp, rsp
	call	mktime_z
	lea	rdi, [rbp - 0xa0]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x68]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rsp, rsp
	call	mktime_ok
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3b1], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	tzfree
.label_4310:
	test	byte ptr [rbp - 0x3b1], 1
	mov	rbp, rbp
	jne	.label_4388
	mov	rbp, rbp
	lea	rdi, [rbp - 0xa0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x68]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x358]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3b2]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	call	debug_mktime_not_ok
	mov	rsp, rsp
	jmp	.label_2571
.label_4388:
	jmp	.label_4308
.label_4308:
	nop	
	cmp	qword ptr [rbp - 0x2a8], 0
	je	.label_3845
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2b0], 0
	nop	
	jne	.label_3845
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_4398
	nop	
	jmp	.label_2431
.label_4398:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_2434
	nop	
	jmp	.label_2444
.label_2434:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2449
	mov	rbp, rbp
	jmp	.label_2460
.label_2449:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x648], rsi
	mov	byte ptr [rbp - 0x649], cl
	jge	.label_2560
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x649], cl
.label_2560:
	mov	al, byte ptr [rbp - 0x649]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	al, sil
	nop	
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_2696
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x658], rsi
	mov	byte ptr [rbp - 0x659], cl
	jge	.label_2509
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x659], cl
.label_2509:
	mov	al, byte ptr [rbp - 0x659]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x658]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_2535
	jmp	.label_2548
.label_2696:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2549
	jmp	.label_2553
.label_2549:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2535
	mov	rsp, rsp
	jmp	.label_2548
.label_2553:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x668], rsi
	nop	
	mov	byte ptr [rbp - 0x669], cl
	nop	
	jge	.label_2562
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x669], cl
.label_2562:
	mov	al, byte ptr [rbp - 0x669]
	mov	ecx, 0xedb6db6e
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x668]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	al, dil
	mov	rsp, rsp
	movsx	edx, al
	cmp	ecx, edx
	nop	
	jl	.label_2535
	jmp	.label_2548
.label_2460:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2592
	jmp	.label_2599
.label_2592:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2535
	jmp	.label_2548
.label_2599:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x678], rsi
	mov	byte ptr [rbp - 0x679], cl
	jge	.label_2607
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x679], cl
.label_2607:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x679]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x678]
	sub	rsi, rdx
	mov	al, sil
	lea	rsi, [rsi]
	movsx	ecx, al
	nop	
	cmp	ecx, 0
	jge	.label_2630
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x688], rsi
	mov	byte ptr [rbp - 0x689], cl
	lea	rsi, [rsi]
	jge	.label_2748
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x689], cl
.label_2748:
	mov	al, byte ptr [rbp - 0x689]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	lea	rdi, [rdi]
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0xedb6db6e
	jl	.label_2535
	jmp	.label_2548
.label_2630:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x698], rsi
	mov	byte ptr [rbp - 0x699], cl
	jge	.label_2699
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x699], cl
.label_2699:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x699]
	lea	rsi, [rsi]
	mov	ecx, 0x12492492
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x698]
	sub	rdi, rsi
	mov	al, dil
	movsx	edx, al
	nop	
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_2535
.label_2548:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x6a8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6a9], cl
	mov	rsp, rsp
	jge	.label_2734
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x6a9], cl
.label_2734:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x6a9]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x6a8]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_2535
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x6b8], rsi
	mov	byte ptr [rbp - 0x6b9], cl
	jge	.label_2774
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6b9], cl
.label_2774:
	mov	al, byte ptr [rbp - 0x6b9]
	mov	rsp, rsp
	mov	ecx, 0x7f
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	edx, al
	mov	rbp, rbp
	imul	edx, edx, 7
	cmp	ecx, edx
	nop	
	jge	.label_4244
.label_2535:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x6c8], rsi
	mov	byte ptr [rbp - 0x6c9], cl
	lea	rdi, [rdi]
	jge	.label_2816
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6c9], cl
.label_2816:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x6c9]
	nop	
	mov	cl, 1
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6c8]
	sub	rdi, rsi
	nop	
	mov	al, dil
	movsx	edx, al
	lea	rdi, [rdi]
	imul	edx, edx, 7
	mov	rbp, rbp
	mov	al, dl
	movsx	rsi, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2601
	jmp	.label_2644
.label_4244:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6d8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6d9], cl
	lea	rsi, [rsi]
	jge	.label_3954
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x6d9], cl
.label_3954:
	mov	al, byte ptr [rbp - 0x6d9]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x6d8]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	mov	al, cl
	movsx	rsi, al
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2644
.label_2444:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2896
	nop	
	jmp	.label_2900
.label_2896:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6e8], rsi
	nop	
	mov	byte ptr [rbp - 0x6e9], cl
	lea	rdi, [rdi]
	jge	.label_2901
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6e9], cl
.label_2901:
	mov	al, byte ptr [rbp - 0x6e9]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x6e8]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	jge	.label_2914
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6f8], rsi
	nop	
	mov	byte ptr [rbp - 0x6f9], cl
	mov	rsp, rsp
	jge	.label_2923
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x6f9], cl
.label_2923:
	mov	al, byte ptr [rbp - 0x6f9]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6f8]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2953
	jmp	.label_2981
.label_2914:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2966
	nop	
	jmp	.label_2973
.label_2966:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2953
	jmp	.label_2981
.label_2973:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x708], rsi
	mov	byte ptr [rbp - 0x709], cl
	jge	.label_2983
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x709], cl
.label_2983:
	mov	al, byte ptr [rbp - 0x709]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x708]
	sub	rdi, rsi
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_2953
	lea	rsi, [rsi]
	jmp	.label_2981
.label_2900:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3031
	jmp	.label_3037
.label_3031:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2953
	jmp	.label_2981
.label_3037:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x718], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x719], cl
	lea	rdi, [rdi]
	jge	.label_3048
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x719], cl
.label_3048:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x719]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x718]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3067
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x728], rsi
	mov	byte ptr [rbp - 0x729], cl
	jge	.label_3774
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x729], cl
.label_3774:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x729]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x728]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2953
	mov	rsp, rsp
	jmp	.label_2981
.label_3067:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x738], rsi
	mov	byte ptr [rbp - 0x739], cl
	lea	rdi, [rdi]
	jge	.label_3107
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x739], cl
.label_3107:
	mov	al, byte ptr [rbp - 0x739]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x738]
	sub	rdi, rsi
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_2953
.label_2981:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x748], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x749], cl
	mov	rbp, rbp
	jge	.label_3134
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x749], cl
.label_3134:
	mov	al, byte ptr [rbp - 0x749]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x748]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x80
	jl	.label_2953
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x758], rsi
	mov	byte ptr [rbp - 0x759], cl
	jge	.label_3162
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x759], cl
.label_3162:
	mov	al, byte ptr [rbp - 0x759]
	mov	ecx, 0x7f
	mov	edx, ecx
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x758]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	mov	rbp, rbp
	jge	.label_3186
.label_2953:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x768], rsi
	mov	byte ptr [rbp - 0x769], cl
	jge	.label_3202
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x769], cl
.label_3202:
	mov	al, byte ptr [rbp - 0x769]
	mov	cl, 1
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x768]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	mov	al, dl
	mov	rsp, rsp
	movsx	rsi, al
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	test	cl, 1
	jne	.label_2601
	jmp	.label_2644
.label_3186:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x778], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x779], cl
	lea	rdi, [rdi]
	jge	.label_3240
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x779], cl
.label_3240:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x779]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x778]
	sub	rdi, rsi
	nop	
	mov	ecx, edi
	imul	ecx, ecx, 7
	lea	rsi, [rsi]
	mov	al, cl
	movsx	rsi, al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	test	dl, 1
	mov	rbp, rbp
	jne	.label_2601
	jmp	.label_2644
.label_2431:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3275
	jmp	.label_3899
.label_3275:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3281
	nop	
	jmp	.label_3285
.label_3281:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_3288
	jmp	.label_4190
.label_3288:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x788], rsi
	mov	byte ptr [rbp - 0x789], cl
	mov	rbp, rbp
	jge	.label_3050
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x789], cl
.label_3050:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x789]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x788]
	sub	rsi, rdx
	lea	rsi, [rsi]
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	nop	
	cmp	ecx, 0
	lea	rdi, [rdi]
	jge	.label_3312
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x798], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x799], cl
	nop	
	jge	.label_3328
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x799], cl
.label_3328:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x799]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x798]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	cmp	ecx, 0x12492492
	lea	rdi, [rdi]
	jl	.label_3125
	lea	rsi, [rsi]
	jmp	.label_3357
.label_3312:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3360
	lea	rsi, [rsi]
	jmp	.label_4252
.label_3360:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3125
	mov	rbp, rbp
	jmp	.label_3357
.label_4252:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x7a8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a9], cl
	jge	.label_3375
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7a9], cl
.label_3375:
	mov	al, byte ptr [rbp - 0x7a9]
	mov	ecx, 0xedb6db6e
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x7a8]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_3125
	jmp	.label_3357
.label_4190:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3699
	lea	rsi, [rsi]
	jmp	.label_3411
.label_3699:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3125
	nop	
	jmp	.label_3357
.label_3411:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7b8], rsi
	mov	byte ptr [rbp - 0x7b9], cl
	jge	.label_3420
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7b9], cl
.label_3420:
	mov	al, byte ptr [rbp - 0x7b9]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x7b8]
	sub	rsi, rdx
	mov	di, si
	nop	
	movsx	ecx, di
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_3440
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x7c8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c9], cl
	jge	.label_3455
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7c9], cl
.label_3455:
	mov	al, byte ptr [rbp - 0x7c9]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x7c8]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	di, si
	movsx	ecx, di
	nop	
	cmp	ecx, 0xedb6db6e
	jl	.label_3125
	jmp	.label_3357
.label_3440:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x7d8], rsi
	mov	byte ptr [rbp - 0x7d9], cl
	jge	.label_3478
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x7d9], cl
.label_3478:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7d9]
	nop	
	mov	ecx, 0x12492492
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x7d8]
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_3125
.label_3357:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7e8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7e9], cl
	lea	rdi, [rdi]
	jge	.label_3512
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7e9], cl
.label_3512:
	mov	al, byte ptr [rbp - 0x7e9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x7e8]
	lea	rsi, [rsi]
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	di, si
	movsx	ecx, di
	imul	ecx, ecx, 7
	cmp	ecx, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_3125
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x7f8], rsi
	mov	byte ptr [rbp - 0x7f9], cl
	lea	rsi, [rsi]
	jge	.label_3549
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7f9], cl
.label_3549:
	mov	al, byte ptr [rbp - 0x7f9]
	mov	ecx, 0x7fff
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x7f8]
	lea	rsi, [rsi]
	sub	rdi, rsi
	mov	r8w, di
	lea	rsi, [rsi]
	movsx	edx, r8w
	imul	edx, edx, 7
	cmp	ecx, edx
	jge	.label_3568
.label_3125:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x808], rsi
	mov	byte ptr [rbp - 0x809], cl
	lea	rdi, [rdi]
	jge	.label_3579
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x809], cl
.label_3579:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x809]
	mov	cl, 1
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x808]
	sub	rdi, rsi
	mov	r8w, di
	movsx	edx, r8w
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2601
	jmp	.label_2644
.label_3568:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x818], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x819], cl
	jge	.label_3607
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x819], cl
.label_3607:
	mov	al, byte ptr [rbp - 0x819]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x818]
	lea	rsi, [rsi]
	sub	rdi, rsi
	lea	rsi, [rsi]
	mov	r8w, di
	movsx	ecx, r8w
	imul	ecx, ecx, 7
	nop	
	mov	r8w, cx
	nop	
	movsx	rsi, r8w
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2644
.label_3285:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3645
	jmp	.label_3654
.label_3645:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x828], rsi
	mov	byte ptr [rbp - 0x829], cl
	jge	.label_3255
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x829], cl
.label_3255:
	nop	
	mov	al, byte ptr [rbp - 0x829]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, 0
	mov	rbp, rbp
	jge	.label_3674
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], rsi
	mov	byte ptr [rbp - 0x839], cl
	mov	rbp, rbp
	jge	.label_3687
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x839], cl
.label_3687:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x839]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x838]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2604
	mov	rsp, rsp
	jmp	.label_3718
.label_3674:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3720
	mov	rbp, rbp
	jmp	.label_3723
.label_3720:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2604
	jmp	.label_3718
.label_3723:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x848], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x849], cl
	lea	rsi, [rsi]
	jge	.label_3731
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x849], cl
.label_3731:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x849]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x848]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	nop	
	jl	.label_2604
	nop	
	jmp	.label_3718
.label_3654:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3766
	jmp	.label_3770
.label_3766:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2604
	mov	rbp, rbp
	jmp	.label_3718
.label_3770:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x858], rsi
	mov	byte ptr [rbp - 0x859], cl
	nop	
	jge	.label_3775
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x859], cl
.label_3775:
	mov	al, byte ptr [rbp - 0x859]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x858]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rsi, [rsi]
	cmp	rsi, 0
	jge	.label_3789
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x868], rsi
	mov	byte ptr [rbp - 0x869], cl
	mov	rsp, rsp
	jge	.label_3798
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x869], cl
.label_3798:
	mov	al, byte ptr [rbp - 0x869]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x868]
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2604
	lea	rdi, [rdi]
	jmp	.label_3718
.label_3789:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x878], rsi
	mov	byte ptr [rbp - 0x879], cl
	lea	rdi, [rdi]
	jge	.label_3830
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x879], cl
.label_3830:
	mov	al, byte ptr [rbp - 0x879]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x878]
	nop	
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2604
.label_3718:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x888], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x889], cl
	mov	rbp, rbp
	jge	.label_3857
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x889], cl
.label_3857:
	mov	al, byte ptr [rbp - 0x889]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x888]
	lea	rsi, [rsi]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x8000
	jl	.label_2604
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x898], rsi
	mov	byte ptr [rbp - 0x899], cl
	mov	rsp, rsp
	jge	.label_3882
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x899], cl
.label_3882:
	nop	
	mov	al, byte ptr [rbp - 0x899]
	mov	rbp, rbp
	mov	ecx, 0x7fff
	mov	rbp, rbp
	mov	edx, ecx
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x898]
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	lea	rsi, [rsi]
	jge	.label_3889
.label_2604:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x8a8], rsi
	mov	byte ptr [rbp - 0x8a9], cl
	jge	.label_3903
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	byte ptr [rbp - 0x8a9], cl
.label_3903:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8a9]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x8a8]
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2644
.label_3889:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x8b8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8b9], cl
	jge	.label_3172
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x8b9], cl
.label_3172:
	mov	al, byte ptr [rbp - 0x8b9]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x8b8]
	mov	rbp, rbp
	sub	rdi, rsi
	lea	rsi, [rsi]
	mov	ecx, edi
	imul	ecx, ecx, 7
	mov	r8w, cx
	lea	rsi, [rsi]
	movsx	rsi, r8w
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rdi, [rdi]
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2644
.label_3899:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3982
	jmp	.label_3985
.label_3982:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3986
	lea	rdi, [rdi]
	jmp	.label_3991
.label_3986:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2506
	jmp	.label_3995
.label_2506:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x8c8], rsi
	mov	byte ptr [rbp - 0x8c9], cl
	mov	rbp, rbp
	jge	.label_3996
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x8c9], cl
.label_3996:
	mov	al, byte ptr [rbp - 0x8c9]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x8c8]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_4012
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8d8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8d9], cl
	jge	.label_4020
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8d9], cl
.label_4020:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8d9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x8d8]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_4034
	mov	rsp, rsp
	jmp	.label_4045
.label_4012:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_4047
	mov	rbp, rbp
	jmp	.label_4051
.label_4047:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_4034
	jmp	.label_4045
.label_4051:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x8e8], rsi
	mov	byte ptr [rbp - 0x8e9], cl
	jge	.label_4063
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x8e9], cl
.label_4063:
	mov	al, byte ptr [rbp - 0x8e9]
	mov	rbp, rbp
	mov	ecx, 0xedb6db6e
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x8e8]
	nop	
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	lea	rsi, [rsi]
	cmp	ecx, edx
	mov	rsp, rsp
	jl	.label_4034
	jmp	.label_4045
.label_3995:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_4080
	lea	rdi, [rdi]
	jmp	.label_4137
.label_4080:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_4034
	nop	
	jmp	.label_4045
.label_4137:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f8], rsi
	mov	byte ptr [rbp - 0x8f9], cl
	jge	.label_4094
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x8f9], cl
.label_4094:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x8f9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x8f8]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0
	jge	.label_4107
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x908], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x909], cl
	jge	.label_4119
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x909], cl
.label_4119:
	mov	al, byte ptr [rbp - 0x909]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x908]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0xedb6db6e
	lea	rdi, [rdi]
	jl	.label_4034
	jmp	.label_4045
.label_4107:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x918], rsi
	mov	byte ptr [rbp - 0x919], cl
	mov	rbp, rbp
	jge	.label_4143
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x919], cl
.label_4143:
	mov	al, byte ptr [rbp - 0x919]
	mov	ecx, 0x12492492
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x918]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	edx, edi
	cmp	ecx, edx
	jl	.label_4034
.label_4045:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x928], rsi
	mov	byte ptr [rbp - 0x929], cl
	mov	rsp, rsp
	jge	.label_4165
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x929], cl
.label_4165:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x929]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x928]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	ecx, esi
	imul	ecx, ecx, 7
	cmp	ecx, 0x80000000
	jl	.label_4034
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x938], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x939], cl
	lea	rdi, [rdi]
	jge	.label_4196
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x939], cl
.label_4196:
	mov	al, byte ptr [rbp - 0x939]
	mov	rsp, rsp
	mov	ecx, 0x7fffffff
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	cmp	ecx, edx
	lea	rsi, [rsi]
	jge	.label_4214
.label_4034:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x948], rsi
	nop	
	mov	byte ptr [rbp - 0x949], cl
	lea	rdi, [rdi]
	jge	.label_4230
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x949], cl
.label_4230:
	mov	al, byte ptr [rbp - 0x949]
	mov	cl, 1
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x948]
	sub	rdi, rsi
	mov	edx, edi
	mov	rsp, rsp
	imul	edx, edx, 7
	nop	
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2601
	jmp	.label_2644
.label_4214:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x958], rsi
	mov	byte ptr [rbp - 0x959], cl
	jge	.label_4253
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x959], cl
.label_4253:
	mov	al, byte ptr [rbp - 0x959]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x958]
	sub	rdi, rsi
	mov	ecx, edi
	mov	rsp, rsp
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	jne	.label_2601
	nop	
	jmp	.label_2644
.label_3991:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_4276
	jmp	.label_4279
.label_4276:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x968], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x969], cl
	mov	rbp, rbp
	jge	.label_4281
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x969], cl
.label_4281:
	mov	al, byte ptr [rbp - 0x969]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x968]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_4305
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x978], rsi
	mov	byte ptr [rbp - 0x979], cl
	lea	rdi, [rdi]
	jge	.label_4314
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x979], cl
.label_4314:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x979]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x978]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	mov	rsp, rsp
	jl	.label_2479
	jmp	.label_2716
.label_4305:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_4350
	mov	rsp, rsp
	jmp	.label_4353
.label_4350:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_2479
	lea	rsi, [rsi]
	jmp	.label_2716
.label_4353:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x988], rsi
	mov	byte ptr [rbp - 0x989], cl
	lea	rdi, [rdi]
	jge	.label_4362
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x989], cl
.label_4362:
	nop	
	mov	al, byte ptr [rbp - 0x989]
	movabs	rcx, 0xedb6db6db6db6db7
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x988]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2479
	jmp	.label_2716
.label_4279:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_4383
	jmp	.label_4247
.label_4383:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2479
	mov	rsp, rsp
	jmp	.label_2716
.label_4247:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x998], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x999], cl
	jge	.label_4390
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x999], cl
.label_4390:
	mov	al, byte ptr [rbp - 0x999]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x998]
	mov	rsp, rsp
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_4397
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9a8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9a9], cl
	jge	.label_2475
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x9a9], cl
.label_2475:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x9a9]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x9a8]
	sub	rdi, rsi
	nop	
	cmp	rdi, rcx
	jl	.label_2479
	mov	rbp, rbp
	jmp	.label_2716
.label_4397:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9b8], rsi
	mov	byte ptr [rbp - 0x9b9], cl
	nop	
	jge	.label_2494
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x9b9], cl
.label_2494:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9b9]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x9b8]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2479
.label_2716:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9c8], rsi
	mov	byte ptr [rbp - 0x9c9], cl
	jge	.label_2536
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x9c9], cl
.label_2536:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9c9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x9c8]
	sub	rsi, rdx
	nop	
	imul	rdx, rsi, 7
	lea	rdi, [rdi]
	cmp	rdx, -0x80000000
	mov	rsp, rsp
	jl	.label_2479
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9d8], rsi
	nop	
	mov	byte ptr [rbp - 0x9d9], cl
	jge	.label_2567
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9d9], cl
.label_2567:
	mov	al, byte ptr [rbp - 0x9d9]
	mov	rbp, rbp
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	edx, ecx
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x9d8]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_2579
.label_2479:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9e8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9e9], cl
	jge	.label_3318
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x9e9], cl
.label_3318:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9e9]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x9e8]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	edx, edi
	imul	edx, edx, 7
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x448], rsi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2601
	nop	
	jmp	.label_2644
.label_2579:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9f8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9f9], cl
	mov	rbp, rbp
	jge	.label_2648
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9f9], cl
.label_2648:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x9f9]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x9f8]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	ecx, edi
	mov	rbp, rbp
	imul	ecx, ecx, 7
	nop	
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	jne	.label_2601
	jmp	.label_2644
.label_3985:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2691
	jmp	.label_2697
.label_2691:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3917
	jmp	.label_2703
.label_3917:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2705
	jmp	.label_4210
.label_2705:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa08], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa09], cl
	jge	.label_2714
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa09], cl
.label_2714:
	mov	al, byte ptr [rbp - 0xa09]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa08]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_2733
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa18], rsi
	nop	
	mov	byte ptr [rbp - 0xa19], cl
	jge	.label_2749
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0xa19], cl
.label_2749:
	mov	al, byte ptr [rbp - 0xa19]
	mov	rsp, rsp
	movabs	rcx, 0x1249249249249249
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa18]
	sub	rdi, rsi
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_2769
	nop	
	jmp	.label_2790
.label_2733:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_4128
	nop	
	jmp	.label_2797
.label_4128:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2769
	lea	rdi, [rdi]
	jmp	.label_2790
.label_2797:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa28], rsi
	mov	byte ptr [rbp - 0xa29], cl
	jge	.label_2804
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa29], cl
.label_2804:
	mov	al, byte ptr [rbp - 0xa29]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa28]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2769
	lea	rsi, [rsi]
	jmp	.label_2790
.label_4210:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2834
	lea	rsi, [rsi]
	jmp	.label_2839
.label_2834:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2769
	lea	rdi, [rdi]
	jmp	.label_2790
.label_2839:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa38], rsi
	mov	byte ptr [rbp - 0xa39], cl
	jge	.label_2844
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xa39], cl
.label_2844:
	mov	al, byte ptr [rbp - 0xa39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa38]
	sub	rsi, rdx
	nop	
	cmp	rsi, 0
	nop	
	jge	.label_2859
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa48], rsi
	mov	byte ptr [rbp - 0xa49], cl
	lea	rdi, [rdi]
	jge	.label_2870
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xa49], cl
.label_2870:
	mov	al, byte ptr [rbp - 0xa49]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa48]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2769
	jmp	.label_2790
.label_2859:
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa58], rsi
	mov	byte ptr [rbp - 0xa59], cl
	mov	rsp, rsp
	jge	.label_2874
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xa59], cl
.label_2874:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa59]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa58]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdi
	jl	.label_2769
.label_2790:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xa68], rsi
	mov	byte ptr [rbp - 0xa69], cl
	mov	rbp, rbp
	jge	.label_2938
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0xa69], cl
.label_2938:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa69]
	nop	
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa68]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_2769
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa78], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa79], cl
	lea	rsi, [rsi]
	jge	.label_2979
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xa79], cl
.label_2979:
	mov	al, byte ptr [rbp - 0xa79]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa78]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_3007
.label_2769:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa88], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa89], cl
	mov	rbp, rbp
	jge	.label_3502
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa89], cl
.label_3502:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa89]
	lea	rdi, [rdi]
	mov	cl, 1
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa88]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2601
	nop	
	jmp	.label_2644
.label_3007:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa98], rsi
	mov	byte ptr [rbp - 0xa99], cl
	jge	.label_3068
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xa99], cl
.label_3068:
	mov	al, byte ptr [rbp - 0xa99]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa98]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rsi, [rsi]
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	dl, 1
	jne	.label_2601
	jmp	.label_2644
.label_2703:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3103
	nop	
	jmp	.label_3106
.label_3103:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xaa8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaa9], cl
	jge	.label_3109
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaa9], cl
.label_3109:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xaa9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xaa8]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3506
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xab8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xab9], cl
	lea	rsi, [rsi]
	jge	.label_3137
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xab9], cl
.label_3137:
	mov	al, byte ptr [rbp - 0xab9]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xab8]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_3156
	jmp	.label_2538
.label_3506:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3174
	jmp	.label_3178
.label_3174:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3156
	mov	rbp, rbp
	jmp	.label_2538
.label_3178:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xac8], rsi
	mov	byte ptr [rbp - 0xac9], cl
	jge	.label_3189
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xac9], cl
.label_3189:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xac9]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xac8]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rcx, rdi
	nop	
	jl	.label_3156
	nop	
	jmp	.label_2538
.label_3106:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3229
	jmp	.label_3232
.label_3229:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3156
	lea	rdi, [rdi]
	jmp	.label_2538
.label_3232:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xad8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xad9], cl
	lea	rsi, [rsi]
	jge	.label_3236
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xad9], cl
.label_3236:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xad9]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xad8]
	lea	rsi, [rsi]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rsi, [rsi]
	jge	.label_3258
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xae8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xae9], cl
	jge	.label_3268
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xae9], cl
.label_3268:
	mov	al, byte ptr [rbp - 0xae9]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xae8]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	jl	.label_3156
	lea	rdi, [rdi]
	jmp	.label_2538
.label_3258:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaf8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaf9], cl
	jge	.label_3304
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xaf9], cl
.label_3304:
	mov	al, byte ptr [rbp - 0xaf9]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xaf8]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_3156
.label_2538:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb08], rsi
	nop	
	mov	byte ptr [rbp - 0xb09], cl
	jge	.label_3337
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xb09], cl
.label_3337:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb09]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb08]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rsi, rcx
	jl	.label_3156
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb18], rsi
	mov	byte ptr [rbp - 0xb19], cl
	jge	.label_3374
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xb19], cl
.label_3374:
	mov	al, byte ptr [rbp - 0xb19]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb18]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rcx, rsi
	nop	
	jge	.label_3388
.label_3156:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb28], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb29], cl
	nop	
	jge	.label_3405
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb29], cl
.label_3405:
	mov	al, byte ptr [rbp - 0xb29]
	mov	cl, 1
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb28]
	mov	rsp, rsp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2601
	jmp	.label_2644
.label_3388:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xb38], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb39], cl
	nop	
	jge	.label_3443
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xb39], cl
.label_3443:
	mov	al, byte ptr [rbp - 0xb39]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xb38]
	lea	rsi, [rsi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_2601
	lea	rdi, [rdi]
	jmp	.label_2644
.label_2697:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3473
	lea	rsi, [rsi]
	jmp	.label_3481
.label_3473:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_4273
	jmp	.label_3979
.label_4273:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb48], rsi
	mov	byte ptr [rbp - 0xb49], cl
	jge	.label_3491
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0xb49], cl
.label_3491:
	nop	
	mov	al, byte ptr [rbp - 0xb49]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xb48]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_4207
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb58], rsi
	mov	byte ptr [rbp - 0xb59], cl
	mov	rbp, rbp
	jge	.label_3522
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb59], cl
.label_3522:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb59]
	lea	rsi, [rsi]
	movabs	rcx, 0x1249249249249249
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb58]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_3562
	jmp	.label_2566
.label_4207:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3553
	lea	rsi, [rsi]
	jmp	.label_3559
.label_3553:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3562
	jmp	.label_2566
.label_3559:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb68], rsi
	mov	byte ptr [rbp - 0xb69], cl
	lea	rdi, [rdi]
	jge	.label_3565
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb69], cl
.label_3565:
	nop	
	mov	al, byte ptr [rbp - 0xb69]
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb68]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_3562
	jmp	.label_2566
.label_3979:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3588
	lea	rdi, [rdi]
	jmp	.label_3590
.label_3588:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3562
	lea	rdi, [rdi]
	jmp	.label_2566
.label_3590:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb78], rsi
	mov	byte ptr [rbp - 0xb79], cl
	jge	.label_3599
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0xb79], cl
.label_3599:
	mov	al, byte ptr [rbp - 0xb79]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb78]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3011
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb88], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb89], cl
	lea	rsi, [rsi]
	jge	.label_3622
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xb89], cl
.label_3622:
	mov	al, byte ptr [rbp - 0xb89]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb88]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jl	.label_3562
	mov	rsp, rsp
	jmp	.label_2566
.label_3011:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb98], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb99], cl
	jge	.label_3660
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb99], cl
.label_3660:
	mov	al, byte ptr [rbp - 0xb99]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb98]
	lea	rsi, [rsi]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_3562
.label_2566:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xba8], rsi
	mov	byte ptr [rbp - 0xba9], cl
	jge	.label_3690
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xba9], cl
.label_3690:
	mov	al, byte ptr [rbp - 0xba9]
	movabs	rcx, 0x8000000000000000
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0xba8]
	mov	rsp, rsp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	nop	
	cmp	rsi, rcx
	jl	.label_3562
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xbb8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbb9], cl
	mov	rsp, rsp
	jge	.label_3714
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbb9], cl
.label_3714:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xbb9]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xbb8]
	nop	
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_3750
.label_3562:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xbc8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbc9], cl
	jge	.label_3747
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xbc9], cl
.label_3747:
	mov	al, byte ptr [rbp - 0xbc9]
	mov	cl, 1
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xbc8]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2601
	lea	rdi, [rdi]
	jmp	.label_2644
.label_3750:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xbd8], rsi
	mov	byte ptr [rbp - 0xbd9], cl
	jge	.label_3782
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xbd9], cl
.label_3782:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xbd9]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xbd8]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	dl, 1
	jne	.label_2601
	jmp	.label_2644
.label_3481:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3812
	jmp	.label_3815
.label_3812:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xbe8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xbe9], cl
	jge	.label_3816
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xbe9], cl
.label_3816:
	mov	al, byte ptr [rbp - 0xbe9]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xbe8]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3832
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xbf8], rsi
	mov	byte ptr [rbp - 0xbf9], cl
	jge	.label_4364
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbf9], cl
.label_4364:
	mov	al, byte ptr [rbp - 0xbf9]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xbf8]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_3858
	jmp	.label_3866
.label_3832:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3867
	nop	
	jmp	.label_3872
.label_3867:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3858
	jmp	.label_3866
.label_3872:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc08], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc09], cl
	mov	rsp, rsp
	jge	.label_3880
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc09], cl
.label_3880:
	mov	al, byte ptr [rbp - 0xc09]
	lea	rdi, [rdi]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc08]
	mov	rsp, rsp
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_3858
	mov	rsp, rsp
	jmp	.label_3866
.label_3815:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3902
	lea	rsi, [rsi]
	jmp	.label_2942
.label_3902:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3858
	mov	rbp, rbp
	jmp	.label_3866
.label_2942:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc18], rsi
	mov	byte ptr [rbp - 0xc19], cl
	nop	
	jge	.label_3914
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc19], cl
.label_3914:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc19]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xc18]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3927
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc28], rsi
	mov	byte ptr [rbp - 0xc29], cl
	jge	.label_3185
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xc29], cl
.label_3185:
	nop	
	mov	al, byte ptr [rbp - 0xc29]
	lea	rsi, [rsi]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	nop	
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc28]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rdi, rcx
	jl	.label_3858
	nop	
	jmp	.label_3866
.label_3927:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xc38], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc39], cl
	lea	rsi, [rsi]
	jge	.label_3970
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0xc39], cl
.label_3970:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc39]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0xc38]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_3858
.label_3866:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc48], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc49], cl
	jge	.label_3578
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc49], cl
.label_3578:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc49]
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xc48]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	jl	.label_3858
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc58], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc59], cl
	mov	rsp, rsp
	jge	.label_4026
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc59], cl
.label_4026:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc59]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xc58]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_4041
.label_3858:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc68], rsi
	mov	byte ptr [rbp - 0xc69], cl
	jge	.label_4055
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xc69], cl
.label_4055:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc69]
	nop	
	mov	cl, 1
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc68]
	mov	rbp, rbp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2601
	jmp	.label_2644
.label_4041:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc78], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc79], cl
	jge	.label_4077
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xc79], cl
.label_4077:
	mov	al, byte ptr [rbp - 0xc79]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xc78]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_2601
.label_2644:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_4106
	jmp	.label_4112
.label_4106:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3142
	lea	rdi, [rdi]
	jmp	.label_4116
.label_3142:
	mov	al, 1
	test	al, 1
	jne	.label_4118
	jmp	.label_4347
.label_4118:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_3463
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc80], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	mov	sil, dil
	lea	rdi, [rdi]
	movsx	edx, sil
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0xc80]
	mov	rbp, rbp
	sub	r8d, edx
	cmp	ecx, r8d
	mov	rsp, rsp
	jl	.label_4129
	nop	
	jmp	.label_4147
.label_3463:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0xc84], eax
	mov	eax, edi
	mov	rbp, rbp
	cdq	
	mov	edi, dword ptr [rbp - 0xc84]
	idiv	edi
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	lea	rdi, [rdi]
	cmp	ecx, edx
	nop	
	jl	.label_4129
	jmp	.label_4147
.label_4347:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xc88], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xc88]
	idiv	ecx
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edx, sil
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_4168
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edi, 7
	mov	dword ptr [rbp - 0xc8c], eax
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc8c]
	mov	rsp, rsp
	idiv	edi
	mov	r8b, dl
	movsx	edx, r8b
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	r8b, cl
	nop	
	movsx	r9d, r8b
	add	edx, r9d
	cmp	esi, edx
	jle	.label_4129
	mov	rsp, rsp
	jmp	.label_4147
.label_4168:
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_4212
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xc90], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xc90]
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	add	edi, 7
	lea	rdi, [rdi]
	mov	eax, edi
	mov	dword ptr [rbp - 0xc94], edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	nop	
	mov	r8, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	sil, r8b
	movsx	edi, sil
	add	edx, edi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc94]
	nop	
	cmp	edi, edx
	jle	.label_4129
	jmp	.label_4147
.label_4212:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xc98], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xc98]
	mov	rsp, rsp
	idiv	ecx
	mov	rsp, rsp
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	sil, dil
	movsx	r8d, sil
	add	edx, r8d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	cmp	edx, r8d
	jl	.label_4129
.label_4147:
	nop	
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc9c], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xc9c]
	idiv	ecx
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x448]
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	nop	
	add	edx, r8d
	lea	rsi, [rsi]
	cmp	edx, -0x80
	jl	.label_4129
	mov	eax, 0x7f
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xca0], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	sil, dl
	mov	rbp, rbp
	movsx	ecx, sil
	mov	rdi, qword ptr [rbp - 0x448]
	mov	sil, dil
	movsx	edx, sil
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xca0]
	cmp	edx, ecx
	mov	rsp, rsp
	jge	.label_4270
.label_4129:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	mov	byte ptr [rbp - 0xca1], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	nop	
	mov	sil, dil
	nop	
	movsx	edx, sil
	add	ecx, edx
	nop	
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x448], rdi
	lea	rsi, [rsi]
	mov	sil, byte ptr [rbp - 0xca1]
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	jne	.label_2601
	jmp	.label_2584
.label_4270:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xca8], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xca8]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dil, dl
	mov	rsp, rsp
	movsx	edx, dil
	mov	r8, qword ptr [rbp - 0x448]
	nop	
	mov	dil, r8b
	movsx	r9d, dil
	lea	rdi, [rdi]
	add	edx, r9d
	lea	rsi, [rsi]
	mov	dil, dl
	movsx	r8, dil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], r8
	test	cl, 1
	jne	.label_2601
	jmp	.label_2584
.label_4116:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4356
	jmp	.label_4357
.label_4356:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_4360
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xcb0], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xcb0]
	sub	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jl	.label_2497
	mov	rbp, rbp
	jmp	.label_2495
.label_4360:
	mov	rsp, rsp
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	nop	
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcb4], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xcb4]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_2497
	jmp	.label_2495
.label_4357:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcb8], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xcb8]
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_4391
	mov	eax, 7
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	edx, 7
	mov	dword ptr [rbp - 0xcbc], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xcbc]
	mov	rsp, rsp
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rcx, rdi
	jle	.label_2497
	mov	rbp, rbp
	jmp	.label_2495
.label_4391:
	cmp	qword ptr [rbp - 0x448], 0
	mov	rbp, rbp
	jge	.label_2454
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc0], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xcc0]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	nop	
	jle	.label_2497
	jmp	.label_2495
.label_2454:
	lea	rsi, [rsi]
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xcc4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xcc4]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	nop	
	jl	.label_2497
.label_2495:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc8], eax
	mov	eax, ecx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc8]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, -0x80
	mov	rbp, rbp
	jl	.label_2497
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xccc], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xccc]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jge	.label_2984
.label_2497:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	byte ptr [rbp - 0xccd], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	add	edx, ecx
	mov	dil, dl
	lea	rsi, [rsi]
	movsx	rsi, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xccd]
	test	dil, 1
	mov	rbp, rbp
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2584
.label_2984:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xcd4], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xcd4]
	lea	rdi, [rdi]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x448]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	lea	rsi, [rsi]
	mov	r9b, dl
	lea	rsi, [rsi]
	movsx	rdi, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	jne	.label_2601
	jmp	.label_2584
.label_4112:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_4178
	mov	rsp, rsp
	jmp	.label_3456
.label_4178:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3460
	lea	rsi, [rsi]
	jmp	.label_2632
.label_3460:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2636
	jmp	.label_2642
.label_2636:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	jge	.label_2646
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xcd8], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	nop	
	mov	si, dx
	nop	
	movsx	ecx, si
	mov	rdi, qword ptr [rbp - 0x448]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	r8d, dword ptr [rbp - 0xcd8]
	sub	r8d, edx
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jl	.label_2683
	jmp	.label_2680
.label_2646:
	nop	
	mov	eax, 7
	mov	ecx, 0x7fffffff
	nop	
	mov	rdx, qword ptr [rbp - 0x448]
	nop	
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	add	edi, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcdc], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0xcdc]
	mov	rbp, rbp
	idiv	edi
	mov	si, dx
	movsx	edx, si
	cmp	ecx, edx
	jl	.label_2683
	lea	rsi, [rsi]
	jmp	.label_2680
.label_2642:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xce0], eax
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xce0]
	idiv	ecx
	mov	si, dx
	nop	
	movsx	edx, si
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_2711
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0xce4], eax
	mov	eax, edi
	lea	rsi, [rsi]
	cdq	
	mov	edi, dword ptr [rbp - 0xce4]
	mov	rsp, rsp
	idiv	edi
	mov	r8w, dx
	lea	rsi, [rsi]
	movsx	edx, r8w
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	r8w, cx
	movsx	r9d, r8w
	add	edx, r9d
	cmp	esi, edx
	lea	rdi, [rdi]
	jle	.label_2683
	jmp	.label_2680
.label_2711:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_2756
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xce8], eax
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xce8]
	idiv	ecx
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	add	edi, 7
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcec], edx
	nop	
	cdq	
	nop	
	idiv	ecx
	nop	
	mov	si, dx
	movsx	edx, si
	mov	r8, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	si, r8w
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	edi, dword ptr [rbp - 0xcec]
	cmp	edi, edx
	mov	rbp, rbp
	jle	.label_2683
	nop	
	jmp	.label_2680
.label_2756:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xcf0], eax
	mov	rsp, rsp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xcf0]
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	si, di
	nop	
	movsx	r8d, si
	lea	rsi, [rsi]
	add	edx, r8d
	mov	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	si, di
	movsx	r8d, si
	cmp	edx, r8d
	jl	.label_2683
.label_2680:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0xcf4], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xcf4]
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	si, di
	movsx	r8d, si
	add	edx, r8d
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_2683
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcf8], eax
	lea	rsi, [rsi]
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	mov	si, dx
	movsx	ecx, si
	nop	
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	edx, dword ptr [rbp - 0xcf8]
	nop	
	cmp	edx, ecx
	jge	.label_2846
.label_2683:
	mov	al, 1
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcf9], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	si, dx
	lea	rsi, [rsi]
	movsx	ecx, si
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	rbp, rbp
	mov	si, cx
	movsx	rdi, si
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rdi
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xcf9]
	lea	rdi, [rdi]
	test	r8b, 1
	lea	rsi, [rsi]
	jne	.label_2601
	lea	rsi, [rsi]
	jmp	.label_2584
.label_2846:
	xor	eax, eax
	mov	cl, al
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xd00], eax
	nop	
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xd00]
	mov	rbp, rbp
	idiv	esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	edx, di
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x448]
	mov	di, r8w
	mov	rbp, rbp
	movsx	r9d, di
	add	edx, r9d
	mov	rsp, rsp
	mov	di, dx
	nop	
	movsx	r8, di
	nop	
	mov	qword ptr [rbp - 0x448], r8
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2601
	lea	rdi, [rdi]
	jmp	.label_2584
.label_2632:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2934
	lea	rsi, [rsi]
	jmp	.label_2941
.label_2934:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rdi, [rdi]
	jge	.label_2943
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xd08], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd08]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_2949
	nop	
	jmp	.label_2971
.label_2943:
	nop	
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0xd0c], eax
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0xd0c]
	lea	rsi, [rsi]
	idiv	esi
	nop	
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_2949
	lea	rsi, [rsi]
	jmp	.label_2971
.label_2941:
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xd10], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xd10]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_3000
	mov	rsp, rsp
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xd14], eax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xd14]
	idiv	esi
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_2949
	jmp	.label_2971
.label_3000:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3049
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd18], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xd18]
	idiv	ecx
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	eax, edx
	nop	
	cdq	
	nop	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	jle	.label_2949
	mov	rbp, rbp
	jmp	.label_2971
.label_3049:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd1c], eax
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xd1c]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_2949
.label_2971:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd20], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xd20]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	nop	
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, -0x8000
	jl	.label_2949
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xd24], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xd24]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	nop	
	add	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rcx, rdi
	mov	rsp, rsp
	jge	.label_3112
.label_2949:
	mov	rbp, rbp
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd25], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	add	edx, ecx
	mov	rsp, rsp
	mov	di, dx
	movsx	rsi, di
	mov	qword ptr [rbp - 0x448], rsi
	mov	r8b, byte ptr [rbp - 0xd25]
	test	r8b, 1
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2584
.label_3112:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd2c], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xd2c]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x448]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	mov	r9w, dx
	movsx	rdi, r9w
	nop	
	mov	qword ptr [rbp - 0x448], rdi
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2601
	jmp	.label_2584
.label_3456:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3187
	jmp	.label_3192
.label_3187:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3194
	mov	rsp, rsp
	jmp	.label_3199
.label_3194:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3201
	lea	rsi, [rsi]
	jmp	.label_3205
.label_3201:
	mov	rax, qword ptr [rbp - 0x448]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_3211
	mov	eax, 0x80000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xd30], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x448]
	mov	ecx, esi
	mov	edi, dword ptr [rbp - 0xd30]
	sub	edi, ecx
	mov	rbp, rbp
	cmp	edx, edi
	lea	rsi, [rsi]
	jl	.label_3219
	mov	rsp, rsp
	jmp	.label_2997
.label_3211:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	esi, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x50]
	add	esi, 7
	mov	dword ptr [rbp - 0xd34], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0xd34]
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, edx
	nop	
	jl	.label_3219
	jmp	.label_2997
.label_3205:
	mov	rbp, rbp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd38], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd38]
	idiv	ecx
	cmp	edx, 0
	jge	.label_2732
	nop	
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	esi, dword ptr [rbp - 0x50]
	add	esi, 7
	mov	dword ptr [rbp - 0xd3c], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0xd40], edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xd3c]
	lea	rsi, [rsi]
	idiv	esi
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	edx, edi
	mov	edi, dword ptr [rbp - 0xd40]
	nop	
	cmp	edi, edx
	lea	rsi, [rsi]
	jle	.label_3219
	mov	rbp, rbp
	jmp	.label_2997
.label_2732:
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3286
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd44], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd44]
	lea	rsi, [rsi]
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	esi, 7
	mov	eax, esi
	mov	dword ptr [rbp - 0xd48], edx
	cdq	
	idiv	ecx
	mov	rdi, qword ptr [rbp - 0x448]
	nop	
	mov	esi, edi
	add	edx, esi
	mov	esi, dword ptr [rbp - 0xd48]
	mov	rsp, rsp
	cmp	esi, edx
	mov	rbp, rbp
	jle	.label_3219
	jmp	.label_2997
.label_3286:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4c], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xd4c]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x448]
	mov	edi, esi
	mov	rbp, rbp
	add	edx, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edi, esi
	cmp	edx, edi
	lea	rdi, [rdi]
	jl	.label_3219
.label_2997:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd50], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd50]
	idiv	ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edi, esi
	lea	rdi, [rdi]
	add	edx, edi
	mov	rsp, rsp
	cmp	edx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_3219
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xd54], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	ecx, esi
	add	edx, ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xd54]
	cmp	ecx, edx
	mov	rsp, rsp
	jge	.label_3365
.label_3219:
	mov	al, 1
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	byte ptr [rbp - 0xd55], al
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x448]
	mov	ecx, esi
	add	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	mov	dil, byte ptr [rbp - 0xd55]
	lea	rdi, [rdi]
	test	dil, 1
	mov	rsp, rsp
	jne	.label_2601
	jmp	.label_2584
.label_3365:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xd5c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd5c]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	r8d, edi
	add	edx, r8d
	movsxd	rdi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2601
	lea	rdi, [rdi]
	jmp	.label_2584
.label_3199:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3438
	jmp	.label_3442
.label_3438:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_3870
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd68], rax
	lea	rsi, [rsi]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd68]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_3449
	mov	rbp, rbp
	jmp	.label_2510
.label_3870:
	mov	eax, 7
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xd6c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd6c]
	lea	rdi, [rdi]
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_3449
	nop	
	jmp	.label_2510
.label_3442:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xd70], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xd70]
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3492
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xd74], eax
	nop	
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xd74]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x448]
	nop	
	cmp	rcx, rdi
	mov	rsp, rsp
	jle	.label_3449
	lea	rsi, [rsi]
	jmp	.label_2510
.label_3492:
	nop	
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3532
	mov	rsp, rsp
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd78], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xd78]
	lea	rdi, [rdi]
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jle	.label_3449
	jmp	.label_2510
.label_3532:
	mov	rsp, rsp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd7c], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xd7c]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_3449
.label_2510:
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd80], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd80]
	idiv	ecx
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	cmp	rsi, -0x80000000
	jl	.label_3449
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd84], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xd84]
	mov	rsp, rsp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jge	.label_3585
.label_3449:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	byte ptr [rbp - 0xd85], al
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x448]
	mov	ecx, esi
	add	edx, ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xd85]
	lea	rdi, [rdi]
	test	dil, 1
	lea	rdi, [rdi]
	jne	.label_2601
	jmp	.label_2584
.label_3585:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xd8c], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xd8c]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	mov	r8d, edi
	nop	
	add	edx, r8d
	movsxd	rdi, edx
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2601
	lea	rdi, [rdi]
	jmp	.label_2584
.label_3192:
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3644
	jmp	.label_3403
.label_3644:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3446
	nop	
	jmp	.label_3661
.label_3446:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3664
	lea	rsi, [rsi]
	jmp	.label_3308
.label_3664:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_3321
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xd98], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd98]
	sub	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_3670
	jmp	.label_3692
.label_3321:
	mov	eax, 7
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0xd9c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd9c]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_3670
	mov	rbp, rbp
	jmp	.label_3692
.label_3308:
	mov	rbp, rbp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xda0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xda0]
	lea	rsi, [rsi]
	idiv	ecx
	nop	
	movsxd	rsi, edx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3704
	mov	eax, 7
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xda4], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xda4]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_3670
	jmp	.label_3692
.label_3704:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_3778
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xda8], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xda8]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jle	.label_3670
	jmp	.label_3692
.label_3778:
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xdac], eax
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xdac]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_3670
.label_3692:
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	qword ptr [rbp - 0xdb8], rax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	nop	
	mov	rdi, qword ptr [rbp - 0xdb8]
	mov	rsp, rsp
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_3670
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xdc0], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xdc0]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	jge	.label_3805
.label_3670:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xdc1], al
	mov	eax, edx
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0xdc1]
	lea	rdi, [rdi]
	test	dil, 1
	nop	
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2584
.label_3805:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xdc8], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xdc8]
	nop	
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	jne	.label_2601
	jmp	.label_2584
.label_3661:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_4149
	nop	
	jmp	.label_2554
.label_4149:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3863
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	qword ptr [rbp - 0xdd0], rax
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xdd0]
	nop	
	sub	rdi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_2999
	nop	
	jmp	.label_3884
.label_3863:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xdd4], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xdd4]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	jl	.label_2999
	jmp	.label_3884
.label_2554:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xdd8], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xdd8]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3897
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0xddc], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xddc]
	mov	rsp, rsp
	idiv	esi
	nop	
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jle	.label_2999
	jmp	.label_3884
.label_3897:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_2850
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	nop	
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xde0], eax
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xde0]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, rdi
	jle	.label_2999
	jmp	.label_3884
.label_2850:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0xde4], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xde4]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	nop	
	jl	.label_2999
.label_3884:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xdf0], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rdi, qword ptr [rbp - 0xdf0]
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_2999
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	qword ptr [rbp - 0xdf8], rax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rdi, qword ptr [rbp - 0xdf8]
	mov	rbp, rbp
	cmp	rdi, rsi
	jge	.label_3543
.label_2999:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	byte ptr [rbp - 0xdf9], al
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0xdf9]
	test	dil, 1
	jne	.label_2601
	lea	rdi, [rdi]
	jmp	.label_2584
.label_3543:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xe00], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe00]
	idiv	esi
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2601
	lea	rsi, [rsi]
	jmp	.label_2584
.label_3403:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_4046
	lea	rdi, [rdi]
	jmp	.label_4050
.label_4046:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_4054
	jmp	.label_4058
.label_4054:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_4060
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe08], rax
	nop	
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xe08]
	sub	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, rdi
	jl	.label_2955
	jmp	.label_2576
.label_4060:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe0c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe0c]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	lea	rsi, [rsi]
	jl	.label_2955
	jmp	.label_2576
.label_4058:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe10], eax
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xe10]
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_4095
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	mov	dword ptr [rbp - 0xe14], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xe14]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_2955
	lea	rdi, [rdi]
	jmp	.label_2576
.label_4095:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rdi, [rdi]
	jge	.label_4123
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xe18], eax
	nop	
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe18]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	jle	.label_2955
	jmp	.label_2576
.label_4123:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	nop	
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xe1c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe1c]
	mov	rsp, rsp
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	jl	.label_2955
.label_2576:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xe28], rax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe28]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_2955
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	qword ptr [rbp - 0xe30], rax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe30]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	lea	rdi, [rdi]
	jge	.label_4179
.label_2955:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	byte ptr [rbp - 0xe31], al
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xe31]
	test	dil, 1
	nop	
	jne	.label_2601
	jmp	.label_2584
.label_4179:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xe38], eax
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe38]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2601
	jmp	.label_2584
.label_4050:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_4235
	jmp	.label_4237
.label_4235:
	cmp	qword ptr [rbp - 0x448], 0
	nop	
	jge	.label_4239
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe40], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe40]
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	nop	
	jl	.label_4076
	mov	rsp, rsp
	jmp	.label_3032
.label_4239:
	lea	rdi, [rdi]
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe44], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe44]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	nop	
	jl	.label_4076
	lea	rsi, [rsi]
	jmp	.label_3032
.label_4237:
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe48], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xe48]
	idiv	ecx
	cmp	edx, 0
	jge	.label_4264
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xe4c], eax
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xe4c]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_4076
	mov	rbp, rbp
	jmp	.label_3032
.label_4264:
	nop	
	cmp	qword ptr [rbp - 0x448], 0
	mov	rbp, rbp
	jge	.label_4303
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xe50], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe50]
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	mov	rbp, rbp
	jle	.label_4076
	lea	rsi, [rsi]
	jmp	.label_3032
.label_4303:
	mov	rbp, rbp
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xe54], eax
	mov	rsp, rsp
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xe54]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_4076
.label_3032:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xe60], rax
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rdi, qword ptr [rbp - 0xe60]
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_4076
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe68], rax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe68]
	lea	rsi, [rsi]
	cmp	rdi, rsi
	mov	rsp, rsp
	jge	.label_4370
.label_4076:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe69], al
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xe69]
	lea	rdi, [rdi]
	test	dil, 1
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2584
.label_4370:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe70], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xe70]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2601
.label_2584:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2439
	lea	rdi, [rdi]
	jmp	.label_2448
.label_2439:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2452
	jmp	.label_2462
.label_2452:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2465
	mov	rbp, rbp
	jmp	.label_2472
.label_2465:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_4402
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rsi, [rsi]
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2524
	jmp	.label_2492
.label_4402:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x448]
	mov	dl, sil
	movsx	ecx, dl
	nop	
	cmp	eax, ecx
	jl	.label_2524
	jmp	.label_2492
.label_2472:
	mov	rax, qword ptr [rbp - 0x448]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_2516
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x448]
	mov	cl, dl
	movsx	esi, cl
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	cl, dil
	mov	rbp, rbp
	movsx	edi, cl
	mov	rbp, rbp
	add	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_2524
	jmp	.label_2492
.label_2516:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	nop	
	movsx	eax, cl
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_2957
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x448]
	mov	cl, al
	movsx	esi, cl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	mov	cl, dil
	movsx	edi, cl
	add	esi, edi
	mov	rsp, rsp
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_2524
	lea	rsi, [rsi]
	jmp	.label_2492
.label_2957:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_2524
.label_2492:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	cmp	edx, -0x80
	jl	.label_2524
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	eax, esi
	jge	.label_2585
.label_2524:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dl, dil
	movsx	edi, dl
	nop	
	add	esi, edi
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x5c], esi
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2601
	jmp	.label_2468
.label_2585:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	mov	edi, dword ptr [rbp - 0x5c]
	mov	sil, dil
	lea	rsi, [rsi]
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	movsx	eax, sil
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2601
	jmp	.label_2468
.label_2462:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3541
	jmp	.label_2951
.label_3541:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_2654
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2660
	lea	rsi, [rsi]
	jmp	.label_2685
.label_2654:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	jl	.label_2660
	lea	rdi, [rdi]
	jmp	.label_2685
.label_2951:
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_2687
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_2660
	mov	rbp, rbp
	jmp	.label_2685
.label_2687:
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	jge	.label_2707
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2660
	mov	rsp, rsp
	jmp	.label_2685
.label_2707:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	nop	
	jl	.label_2660
.label_2685:
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80
	jl	.label_2660
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	nop	
	add	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_2739
.label_2660:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x5c]
	mov	sil, dl
	movsx	edx, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2601
	nop	
	jmp	.label_2468
.label_2739:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2468
.label_2448:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2786
	mov	rbp, rbp
	jmp	.label_2792
.label_2786:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_4154
	jmp	.label_2799
.label_4154:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2801
	lea	rsi, [rsi]
	jmp	.label_2803
.label_2801:
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_4213
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	dx, di
	movsx	edi, dx
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2841
	lea	rdi, [rdi]
	jmp	.label_2820
.label_4213:
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x448]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_2841
	lea	rdi, [rdi]
	jmp	.label_2820
.label_2803:
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_4375
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jle	.label_2841
	jmp	.label_2820
.label_4375:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_2854
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x5c]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2841
	nop	
	jmp	.label_2820
.label_2854:
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	nop	
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	cx, si
	movsx	esi, cx
	lea	rdi, [rdi]
	add	edx, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	cx, si
	movsx	esi, cx
	nop	
	cmp	edx, esi
	lea	rdi, [rdi]
	jl	.label_2841
.label_2820:
	nop	
	mov	rax, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	cmp	edx, 0xffff8000
	mov	rsp, rsp
	jl	.label_2841
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x5c]
	mov	dx, di
	movsx	edi, dx
	nop	
	add	esi, edi
	cmp	eax, esi
	lea	rdi, [rdi]
	jge	.label_2909
.label_2841:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x5c]
	mov	dx, di
	lea	rsi, [rsi]
	movsx	edi, dx
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x5c], esi
	test	al, 1
	jne	.label_2601
	lea	rsi, [rsi]
	jmp	.label_2468
.label_2909:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x448]
	mov	si, dx
	movsx	eax, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edi, si
	mov	rsp, rsp
	add	eax, edi
	mov	si, ax
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2468
.label_2799:
	mov	al, 1
	test	al, 1
	jne	.label_2959
	lea	rdi, [rdi]
	jmp	.label_2963
.label_2959:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_2965
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	sub	rax, rdx
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2982
	jmp	.label_3014
.label_2965:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x448]
	jl	.label_2982
	jmp	.label_3014
.label_2963:
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3380
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2982
	jmp	.label_3014
.label_3380:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3019
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2982
	jmp	.label_3014
.label_3019:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_2982
.label_3014:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_2982
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3054
.label_2982:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x5c]
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2601
	jmp	.label_2468
.label_3054:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	mov	eax, edx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2601
	nop	
	jmp	.label_2468
.label_2792:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3082
	lea	rsi, [rsi]
	jmp	.label_3085
.label_3082:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3087
	lea	rdi, [rdi]
	jmp	.label_3864
.label_3087:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3095
	mov	rsp, rsp
	jmp	.label_3097
.label_3095:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3101
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x5c]
	cmp	edx, eax
	jl	.label_3104
	mov	rbp, rbp
	jmp	.label_3115
.label_3101:
	mov	eax, 0x7fffffff
	nop	
	sub	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_3104
	nop	
	jmp	.label_3115
.label_3097:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3124
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_3104
	mov	rsp, rsp
	jmp	.label_3115
.label_3124:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_4086
	mov	rax, qword ptr [rbp - 0x448]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, eax
	add	edx, dword ptr [rbp - 0x5c]
	cmp	ecx, edx
	jle	.label_3104
	mov	rbp, rbp
	jmp	.label_3115
.label_4086:
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rbp - 0x5c]
	nop	
	jl	.label_3104
.label_3115:
	nop	
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, 0x80000000
	mov	rsp, rsp
	jl	.label_3104
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x5c]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_3166
.label_3104:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], edx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2468
.label_3166:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2468
.label_3864:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3203
	lea	rdi, [rdi]
	jmp	.label_4389
.label_3203:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3215
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2552
	mov	rbp, rbp
	jmp	.label_3017
.label_3215:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x448]
	jl	.label_2552
	lea	rdi, [rdi]
	jmp	.label_3017
.label_4389:
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3235
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2552
	jmp	.label_3017
.label_3235:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	jge	.label_3245
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2552
	jmp	.label_3017
.label_3245:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2552
.label_3017:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80000000
	jl	.label_2552
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x5c]
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_3277
.label_2552:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2468
.label_3277:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	nop	
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2468
.label_3085:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3309
	lea	rdi, [rdi]
	jmp	.label_3313
.label_3309:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3315
	jmp	.label_3191
.label_3315:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3320
	lea	rdi, [rdi]
	jmp	.label_3326
.label_3320:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, 0
	jge	.label_3237
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	rax, rdx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_3332
	lea	rdi, [rdi]
	jmp	.label_3341
.label_3237:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x448]
	nop	
	jl	.label_3332
	mov	rsp, rsp
	jmp	.label_3341
.label_3326:
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_4255
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3332
	jmp	.label_3341
.label_4255:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_3372
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3332
	jmp	.label_3341
.label_3372:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_3332
.label_3341:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3332
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3409
.label_3332:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5c], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2601
	jmp	.label_2468
.label_3409:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2601
	jmp	.label_2468
.label_3191:
	mov	al, 1
	test	al, 1
	jne	.label_4372
	lea	rsi, [rsi]
	jmp	.label_3448
.label_4372:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3450
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_2916
	mov	rbp, rbp
	jmp	.label_3459
.label_3450:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_2916
	lea	rsi, [rsi]
	jmp	.label_3459
.label_3448:
	nop	
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3468
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_2916
	lea	rsi, [rsi]
	jmp	.label_3459
.label_3468:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3483
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2916
	jmp	.label_3459
.label_3483:
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_2916
.label_3459:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_2916
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3520
.label_2916:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5c], esi
	test	al, 1
	nop	
	jne	.label_2601
	jmp	.label_2468
.label_3520:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	test	cl, 1
	jne	.label_2601
	mov	rsp, rsp
	jmp	.label_2468
.label_3313:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3551
	jmp	.label_3556
.label_3551:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4113
	lea	rdi, [rdi]
	jmp	.label_3561
.label_4113:
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_3563
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3566
	lea	rdi, [rdi]
	jmp	.label_3574
.label_3563:
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x448]
	jl	.label_3566
	mov	rsp, rsp
	jmp	.label_3574
.label_3561:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3582
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	nop	
	jle	.label_3566
	jmp	.label_3574
.label_3582:
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_3589
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3566
	jmp	.label_3574
.label_3589:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	nop	
	jl	.label_3566
.label_3574:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_3566
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3616
.label_3566:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], esi
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2601
	jmp	.label_2468
.label_3616:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rdx, rsi
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2468
.label_3556:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_3658
	jmp	.label_3662
.label_3658:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3655
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_3302
	jmp	.label_3528
.label_3655:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	jl	.label_3302
	lea	rdi, [rdi]
	jmp	.label_3528
.label_3662:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_2940
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3302
	nop	
	jmp	.label_3528
.label_2940:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rsi, [rsi]
	jge	.label_3697
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3302
	mov	rbp, rbp
	jmp	.label_3528
.label_3697:
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_3302
.label_3528:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	nop	
	cmp	rcx, rax
	jl	.label_3302
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3730
.label_3302:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5c], esi
	test	al, 1
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2468
.label_3730:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	nop	
	add	rdx, rsi
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_2601
	mov	rbp, rbp
	jmp	.label_2468
.label_2601:
	mov	qword ptr [rbp - 0x1c8], -1
	mov	rbp, rbp
	jmp	.label_3759
.label_2468:
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0xffffffff
	mov	rdi, qword ptr [rbp - 0x1d8]
	nop	
	call	mktime_z
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], rax
.label_3759:
	cmp	qword ptr [rbp - 0x1c8], -1
	lea	rdi, [rdi]
	jne	.label_3773
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3780
	nop	
	movabs	rdi, OFFSET FLAT:.str.48
	nop	
	call	gettext
	lea	rdi, [rbp - 0x358]
	nop	
	mov	edx, 0x64
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x440]
	nop	
	mov	qword ptr [rbp - 0xe78], rax
	call	str_days
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	mov	rsp, rsp
	mov	ecx, 0x64
	nop	
	lea	rdx, [rbp - 0x130]
	mov	r8, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x348]
	mov	qword ptr [rbp - 0xe80], rax
	mov	dword ptr [rbp - 0xe84], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe90], r8
	nop	
	call	debug_strfdatetime
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe78]
	mov	rsi, qword ptr [rbp - 0xe80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xe90]
	mov	ecx, dword ptr [rbp - 0xe84]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
.label_3780:
	mov	rsp, rsp
	jmp	.label_2571
.label_3773:
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3822
	nop	
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x358]
	mov	edx, 0x64
	lea	rsi, [rbp - 0x440]
	mov	qword ptr [rbp - 0xe98], rax
	call	str_days
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rbp - 0xea0], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xe98]
	mov	rsi, qword ptr [rbp - 0xea0]
	mov	rdx, rax
	mov	al, 0
	call	dbg_printf
.label_3822:
	jmp	.label_3845
.label_3845:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x27f], 1
	mov	rbp, rbp
	je	.label_3847
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2b0], 0
	jne	.label_3853
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2a8], 0
	mov	rsp, rsp
	jne	.label_3853
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x68]
	mov	rbp, rbp
	mov	edx, 0x64
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x130]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xea8], rax
	nop	
	call	debug_strfdate
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xea8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3853:
	cmp	qword ptr [rbp - 0x2a8], 0
	lea	rsi, [rsi]
	je	.label_2664
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2b0], 0
	je	.label_2664
	movabs	rdi, OFFSET FLAT:.str.51
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rbp - 0x358]
	lea	rdi, [rdi]
	mov	edx, 0x64
	lea	rsi, [rbp - 0x440]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xeb0], rax
	mov	rsp, rsp
	call	str_days
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xeb0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_2664:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	nop	
	lea	rdi, [rbp - 0x68]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x358]
	lea	rsi, [rsi]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rbp - 0xeb8], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xeb8]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_3847:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	or	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, 0
	je	.label_3801
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3297
	nop	
	cmp	qword ptr [rbp - 0x2f0], 0
	lea	rsi, [rsi]
	jne	.label_3922
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	je	.label_3924
.label_3922:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0xf
	lea	rdi, [rdi]
	je	.label_3924
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_3924:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2e0], 0
	mov	rsp, rsp
	je	.label_3943
	cmp	dword ptr [rbp - 0x60], 0xc
	je	.label_3943
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_3943:
	lea	rdi, [rdi]
	jmp	.label_3297
.label_3297:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3959
	jmp	.label_3962
.label_3959:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3963
	lea	rsi, [rsi]
	jmp	.label_3969
.label_3963:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3972
	nop	
	jmp	.label_3977
.label_3972:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3978
	mov	rbp, rbp
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_3988
	lea	rdi, [rdi]
	jmp	.label_3546
.label_3978:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_3988
	jmp	.label_3546
.label_3977:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_4009
	mov	rax, qword ptr [rbp - 0x2f0]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x54]
	mov	cl, sil
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edi, cl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_3988
	jmp	.label_3546
.label_4009:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_4024
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x54]
	mov	cl, dl
	movsx	edx, cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	cl, sil
	movsx	edi, cl
	mov	rbp, rbp
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_3988
	lea	rsi, [rsi]
	jmp	.label_3546
.label_4024:
	mov	eax, dword ptr [rbp - 0x54]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cl, dl
	movsx	esi, cl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_3988
.label_3546:
	mov	eax, dword ptr [rbp - 0x54]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cl, dl
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	cmp	eax, -0x80
	lea	rsi, [rsi]
	jl	.label_3988
	mov	rbp, rbp
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dl, sil
	mov	rsp, rsp
	movsx	edi, dl
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_4066
.label_3988:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	add	ecx, edi
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_2461
	jmp	.label_2573
.label_4066:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	dl, al
	nop	
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	edi, dl
	add	eax, edi
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2461
	jmp	.label_2573
.label_3969:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4201
	jmp	.label_4101
.label_4201:
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rbp, rbp
	jge	.label_4102
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x54]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_4104
	jmp	.label_4111
.label_4102:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_4104
	jmp	.label_4111
.label_4101:
	cmp	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	jge	.label_3554
	nop	
	mov	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_4104
	lea	rdi, [rdi]
	jmp	.label_4111
.label_3554:
	nop	
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rsp, rsp
	jge	.label_4133
	movsxd	rax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_4104
	jmp	.label_4111
.label_4133:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	jl	.label_4104
.label_4111:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, -0x80
	lea	rdi, [rdi]
	jl	.label_4104
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_4150
.label_4104:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	nop	
	mov	esi, edx
	nop	
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_2461
	jmp	.label_2573
.label_4150:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	add	eax, esi
	mov	dil, al
	mov	rsp, rsp
	movsx	eax, dil
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_2461
	mov	rsp, rsp
	jmp	.label_2573
.label_3962:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_4183
	jmp	.label_4185
.label_4183:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_4187
	jmp	.label_4192
.label_4187:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2933
	mov	rbp, rbp
	jmp	.label_2964
.label_2933:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_4198
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_4205
	jmp	.label_4216
.label_4198:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	nop	
	mov	esi, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dx, si
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_4205
	mov	rsp, rsp
	jmp	.label_4216
.label_2964:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_4232
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	esi, dword ptr [rbp - 0x54]
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edi, cx
	mov	rbp, rbp
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_4205
	nop	
	jmp	.label_4216
.label_4232:
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_3349
	mov	eax, dword ptr [rbp - 0x54]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x54]
	mov	cx, dx
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_4205
	jmp	.label_4216
.label_3349:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cx, dx
	mov	rsp, rsp
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	nop	
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_4205
.label_4216:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cx, dx
	nop	
	movsx	esi, cx
	add	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_4205
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dx, si
	nop	
	movsx	edi, dx
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_4271
.label_4205:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	ecx, edi
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_2461
	jmp	.label_2573
.label_4271:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dx, si
	movsx	edi, dx
	add	eax, edi
	lea	rsi, [rsi]
	mov	dx, ax
	lea	rdi, [rdi]
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2573
.label_4192:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4324
	lea	rdi, [rdi]
	jmp	.label_4330
.label_4324:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rbp, rbp
	jge	.label_4333
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_4338
	jmp	.label_4343
.label_4333:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_4338
	mov	rbp, rbp
	jmp	.label_4343
.label_4330:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_4355
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_4338
	jmp	.label_4343
.label_4355:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_4368
	movsxd	rax, dword ptr [rbp - 0x54]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_4338
	jmp	.label_4343
.label_4368:
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	nop	
	jl	.label_4338
.label_4343:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	jl	.label_4338
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x54]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_4382
.label_4338:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	nop	
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	nop	
	jne	.label_2461
	nop	
	jmp	.label_2573
.label_4382:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2461
	nop	
	jmp	.label_2573
.label_4185:
	mov	al, 1
	test	al, 1
	jne	.label_4400
	jmp	.label_2440
.label_4400:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2433
	lea	rsi, [rsi]
	jmp	.label_2445
.label_2433:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2451
	mov	rsp, rsp
	jmp	.label_2550
.label_2451:
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	jge	.label_2466
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_2476
	jmp	.label_2485
.label_2466:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x54]
	nop	
	jl	.label_2476
	jmp	.label_2485
.label_2550:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_2744
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x54]
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	add	edx, esi
	lea	rdi, [rdi]
	cmp	ecx, edx
	mov	rbp, rbp
	jle	.label_2476
	jmp	.label_2485
.label_2744:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2522
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_2476
	jmp	.label_2485
.label_2522:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_2476
.label_2485:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	add	eax, edx
	mov	rbp, rbp
	cmp	eax, 0x80000000
	nop	
	jl	.label_2476
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_2558
.label_2476:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_2461
	mov	rbp, rbp
	jmp	.label_2573
.label_2558:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_2461
	jmp	.label_2573
.label_2445:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2586
	jmp	.label_2591
.label_2586:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_2594
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2598
	jmp	.label_2611
.label_2594:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_2598
	nop	
	jmp	.label_2611
.label_2591:
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_3330
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2598
	nop	
	jmp	.label_2611
.label_3330:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_2640
	movsxd	rax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2598
	mov	rsp, rsp
	jmp	.label_2611
.label_2640:
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	jl	.label_2598
.label_2611:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, -0x80000000
	jl	.label_2598
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2676
.label_2598:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2461
	jmp	.label_2573
.label_2676:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	esi, edx
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_2461
	nop	
	jmp	.label_2573
.label_2440:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2717
	lea	rsi, [rsi]
	jmp	.label_2723
.label_2717:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3163
	mov	rsp, rsp
	jmp	.label_2729
.label_3163:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2731
	jmp	.label_2735
.label_2731:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_2737
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_2755
	jmp	.label_2753
.label_2737:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2755
	nop	
	jmp	.label_2753
.label_2735:
	movsxd	rax, dword ptr [rbp - 0x54]
	cmp	rax, 0
	jge	.label_2767
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_2755
	nop	
	jmp	.label_2753
.label_2767:
	cmp	qword ptr [rbp - 0x2f0], 0
	nop	
	jge	.label_2787
	movsxd	rax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, rcx
	nop	
	jle	.label_2755
	mov	rsp, rsp
	jmp	.label_2753
.label_2787:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	jl	.label_2755
.label_2753:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_2755
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_4266
.label_2755:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2461
	jmp	.label_2573
.label_4266:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x54]
	nop	
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2461
	jmp	.label_2573
.label_2729:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2845
	mov	rbp, rbp
	jmp	.label_2847
.label_2845:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2f0], 0
	lea	rdi, [rdi]
	jge	.label_2848
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_2853
	jmp	.label_2788
.label_2848:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	jl	.label_2853
	lea	rdi, [rdi]
	jmp	.label_2788
.label_2847:
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_2881
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_2853
	nop	
	jmp	.label_2788
.label_2881:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2f0], 0
	lea	rdi, [rdi]
	jge	.label_2798
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x54]
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_2853
	jmp	.label_2788
.label_2798:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	add	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2f0]
	nop	
	jl	.label_2853
.label_2788:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2853
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3002
.label_2853:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	test	al, 1
	jne	.label_2461
	lea	rsi, [rsi]
	jmp	.label_2573
.label_3002:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x54]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2461
	jmp	.label_2573
.label_2723:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3220
	mov	rsp, rsp
	jmp	.label_3033
.label_3220:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2967
	jmp	.label_2972
.label_2967:
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rbp, rbp
	jge	.label_2975
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2978
	nop	
	jmp	.label_2989
.label_2975:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jl	.label_2978
	jmp	.label_2989
.label_2972:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_3008
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2978
	jmp	.label_2989
.label_3008:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3034
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, rcx
	jle	.label_2978
	mov	rsp, rsp
	jmp	.label_2989
.label_3034:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	jl	.label_2978
.label_2989:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2978
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3693
.label_2978:
	mov	rsp, rsp
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2461
	mov	rsp, rsp
	jmp	.label_2573
.label_3693:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x54]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_2461
	jmp	.label_2573
.label_3033:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3089
	jmp	.label_3092
.label_3089:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3094
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	sub	rax, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rcx, rax
	jl	.label_3099
	lea	rsi, [rsi]
	jmp	.label_3111
.label_3094:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3099
	jmp	.label_3111
.label_3092:
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_3123
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_3099
	mov	rbp, rbp
	jmp	.label_3111
.label_3123:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3136
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_3099
	mov	rbp, rbp
	jmp	.label_3111
.label_3136:
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	jl	.label_3099
.label_3111:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3099
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_3164
.label_3099:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	test	al, 1
	nop	
	jne	.label_2461
	mov	rsp, rsp
	jmp	.label_2573
.label_3164:
	nop	
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	eax, edx
	mov	dword ptr [rbp - 0x44c], eax
	nop	
	test	cl, 1
	jne	.label_2461
.label_2573:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2919
	nop	
	jmp	.label_3204
.label_2919:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3209
	mov	rsp, rsp
	jmp	.label_3218
.label_3209:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2447
	mov	rsp, rsp
	jmp	.label_3224
.label_2447:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_3226
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	jl	.label_3230
	jmp	.label_3239
.label_3226:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x58]
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_3230
	mov	rsp, rsp
	jmp	.label_3239
.label_3224:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_3252
	mov	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	nop	
	mov	esi, dword ptr [rbp - 0x58]
	mov	cl, sil
	movsx	esi, cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	cl, al
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_3230
	nop	
	jmp	.label_3239
.label_3252:
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3272
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, dl
	movsx	edx, cl
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rdi, [rdi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_3230
	mov	rsp, rsp
	jmp	.label_3239
.label_3272:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	cmp	eax, esi
	jl	.label_3230
.label_3239:
	mov	eax, dword ptr [rbp - 0x58]
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_3230
	mov	eax, 0x7f
	nop	
	mov	ecx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	ecx, edi
	cmp	eax, ecx
	jge	.label_3223
.label_3230:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	mov	rsp, rsp
	add	ecx, edi
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x450], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2461
	lea	rsi, [rsi]
	jmp	.label_2515
.label_3223:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dl, al
	nop	
	movsx	eax, dl
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	dl, sil
	mov	rbp, rbp
	movsx	edi, dl
	add	eax, edi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x450], eax
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2461
	jmp	.label_2515
.label_3218:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3370
	nop	
	jmp	.label_3377
.label_3370:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	jge	.label_3379
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	jl	.label_3383
	jmp	.label_3389
.label_3379:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3383
	lea	rdi, [rdi]
	jmp	.label_3389
.label_3377:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_3402
	mov	rax, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_3383
	mov	rbp, rbp
	jmp	.label_3389
.label_3402:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	jge	.label_3417
	nop	
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_3383
	jmp	.label_3389
.label_3417:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_3383
.label_3389:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_3383
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x2e8]
	nop	
	cmp	rcx, rdx
	jge	.label_3451
.label_3383:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	jne	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2515
.label_3451:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	nop	
	mov	dword ptr [rbp - 0x450], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2461
	jmp	.label_2515
.label_3204:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3476
	mov	rsp, rsp
	jmp	.label_3484
.label_3476:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3487
	lea	rsi, [rsi]
	jmp	.label_3493
.label_3487:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3495
	jmp	.label_3499
.label_3495:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e8]
	nop	
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	nop	
	jge	.label_3500
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_3041
	mov	rbp, rbp
	jmp	.label_3517
.label_3500:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x58]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_3041
	jmp	.label_3517
.label_3499:
	nop	
	mov	eax, dword ptr [rbp - 0x58]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	nop	
	jge	.label_3538
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	mov	esi, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	cx, si
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	mov	cx, ax
	nop	
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_3041
	jmp	.label_3517
.label_3538:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3555
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x58]
	mov	cx, dx
	movsx	edx, cx
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	cx, si
	nop	
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_3041
	jmp	.label_3517
.label_3555:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x2e8]
	nop	
	mov	cx, dx
	movsx	esi, cx
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rsp, rsp
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_3041
.label_3517:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	cx, dx
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_3041
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dx, si
	movsx	edi, dx
	add	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3188
.label_3041:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	dx, si
	movsx	edi, dx
	lea	rsi, [rsi]
	add	ecx, edi
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x450], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2461
	jmp	.label_2515
.label_3188:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x58]
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	eax, edi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x450], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2461
	mov	rbp, rbp
	jmp	.label_2515
.label_3493:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3626
	lea	rdi, [rdi]
	jmp	.label_3629
.label_3626:
	cmp	qword ptr [rbp - 0x2e8], 0
	nop	
	jge	.label_3632
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	sub	rax, qword ptr [rbp - 0x2e8]
	nop	
	cmp	rcx, rax
	jl	.label_3639
	jmp	.label_3653
.label_3632:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_3639
	mov	rsp, rsp
	jmp	.label_3653
.label_3629:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_4173
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_3639
	mov	rbp, rbp
	jmp	.label_3653
.label_4173:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_3677
	movsxd	rax, dword ptr [rbp - 0x58]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3639
	mov	rbp, rbp
	jmp	.label_3653
.label_3677:
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_3639
.label_3653:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, -0x8000
	nop	
	jl	.label_3639
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x58]
	nop	
	add	rdx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jge	.label_3701
.label_3639:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	esi, edx
	add	ecx, esi
	mov	di, cx
	movsx	ecx, di
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2461
	mov	rbp, rbp
	jmp	.label_2515
.label_3701:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	nop	
	mov	esi, edx
	nop	
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	dword ptr [rbp - 0x450], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2461
	jmp	.label_2515
.label_3484:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3734
	lea	rsi, [rsi]
	jmp	.label_4164
.label_3734:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3739
	jmp	.label_3744
.label_3739:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3080
	jmp	.label_3748
.label_3080:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_3749
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	nop	
	sub	eax, esi
	nop	
	cmp	ecx, eax
	jl	.label_3753
	jmp	.label_3765
.label_3749:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	jl	.label_3753
	jmp	.label_3765
.label_3748:
	nop	
	cmp	dword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	jge	.label_3776
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e8]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_3753
	jmp	.label_3765
.label_3776:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3788
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	mov	rsp, rsp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_3753
	mov	rsp, rsp
	jmp	.label_3765
.label_3788:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	rsp, rsp
	add	eax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_3753
.label_3765:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	add	eax, edx
	cmp	eax, 0x80000000
	jl	.label_3753
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3818
.label_3753:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2461
	lea	rsi, [rsi]
	jmp	.label_2515
.label_3818:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x450], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2461
	jmp	.label_2515
.label_3744:
	mov	al, 1
	test	al, 1
	jne	.label_3848
	mov	rsp, rsp
	jmp	.label_3850
.label_3848:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	jge	.label_3854
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_3369
	lea	rsi, [rsi]
	jmp	.label_3862
.label_3854:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rax, rcx
	nop	
	jl	.label_3369
	lea	rsi, [rsi]
	jmp	.label_3862
.label_3850:
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_3874
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3369
	mov	rbp, rbp
	jmp	.label_3862
.label_3874:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rbp, rbp
	jge	.label_2722
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x58]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_3369
	jmp	.label_3862
.label_2722:
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_3369
.label_3862:
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_3369
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rdx
	jge	.label_3955
.label_3369:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	jne	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2515
.label_3955:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x450], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2515
.label_4164:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3932
	mov	rsp, rsp
	jmp	.label_3937
.label_3932:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3939
	jmp	.label_3945
.label_3939:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3947
	lea	rdi, [rdi]
	jmp	.label_3238
.label_3947:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rbp, rbp
	jge	.label_3952
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_3433
	jmp	.label_3334
.label_3952:
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_3433
	mov	rbp, rbp
	jmp	.label_3334
.label_3238:
	movsxd	rax, dword ptr [rbp - 0x58]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_3974
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_3433
	jmp	.label_3334
.label_3974:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rbp, rbp
	jge	.label_3990
	movsxd	rax, dword ptr [rbp - 0x58]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_3433
	nop	
	jmp	.label_3334
.label_3990:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	jl	.label_3433
.label_3334:
	nop	
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	jl	.label_3433
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_4363
.label_3433:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x450], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2461
	mov	rbp, rbp
	jmp	.label_2515
.label_4363:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x450], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2461
	mov	rbp, rbp
	jmp	.label_2515
.label_3945:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_4037
	jmp	.label_4040
.label_4037:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_3841
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3915
	jmp	.label_3908
.label_3841:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	cmp	rax, rcx
	jl	.label_3915
	jmp	.label_3908
.label_4040:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_4065
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3915
	mov	rsp, rsp
	jmp	.label_3908
.label_4065:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_4073
	movsxd	rax, dword ptr [rbp - 0x58]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3915
	mov	rbp, rbp
	jmp	.label_3908
.label_4073:
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_3915
.label_3908:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_3915
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_4093
.label_3915:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x450], edx
	test	al, 1
	jne	.label_2461
	mov	rbp, rbp
	jmp	.label_2515
.label_4093:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	eax, edx
	mov	dword ptr [rbp - 0x450], eax
	test	cl, 1
	jne	.label_2461
	lea	rsi, [rsi]
	jmp	.label_2515
.label_3937:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_4336
	jmp	.label_4361
.label_4336:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_4121
	lea	rsi, [rsi]
	jmp	.label_4126
.label_4121:
	cmp	qword ptr [rbp - 0x2e8], 0
	lea	rsi, [rsi]
	jge	.label_4130
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	sub	rax, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2823
	jmp	.label_2667
.label_4130:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2e8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	jl	.label_2823
	lea	rsi, [rsi]
	jmp	.label_2667
.label_4126:
	movsxd	rax, dword ptr [rbp - 0x58]
	cmp	rax, 0
	jge	.label_4145
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_2823
	lea	rdi, [rdi]
	jmp	.label_2667
.label_4145:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_4156
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_2823
	mov	rbp, rbp
	jmp	.label_2667
.label_4156:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_2823
.label_2667:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2823
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jge	.label_4184
.label_2823:
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x450], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2515
.label_4184:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x450], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2515
.label_4361:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_4215
	jmp	.label_4217
.label_4215:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e8], 0
	lea	rsi, [rsi]
	jge	.label_4218
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	jl	.label_3157
	lea	rsi, [rsi]
	jmp	.label_4233
.label_4218:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	nop	
	jl	.label_3157
	lea	rdi, [rdi]
	jmp	.label_4233
.label_4217:
	cmp	dword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jge	.label_4241
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_3157
	jmp	.label_4233
.label_4241:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_4249
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3157
	jmp	.label_4233
.label_4249:
	movsxd	rax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x2e8]
	nop	
	cmp	rax, qword ptr [rbp - 0x2e8]
	nop	
	jl	.label_3157
.label_4233:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3157
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_4262
.label_3157:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x450], edx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2461
	nop	
	jmp	.label_2515
.label_4262:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x450], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2461
.label_2515:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_4292
	jmp	.label_4300
.label_4292:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_4301
	jmp	.label_4304
.label_4301:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4306
	jmp	.label_4311
.label_4306:
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_4312
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dl, cl
	movsx	ecx, dl
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_3545
	lea	rsi, [rsi]
	jmp	.label_4331
.label_4312:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	dl, sil
	nop	
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_3545
	jmp	.label_4331
.label_4311:
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_4342
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_3545
	jmp	.label_4331
.label_4342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_4072
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	nop	
	mov	edx, dword ptr [rbp - 0x5c]
	nop	
	mov	cl, dl
	mov	rsp, rsp
	movsx	edx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	nop	
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	jle	.label_3545
	nop	
	jmp	.label_4331
.label_4072:
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	mov	cl, dl
	movsx	esi, cl
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_3545
.label_4331:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	cl, dl
	nop	
	movsx	esi, cl
	mov	rsp, rsp
	add	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	jl	.label_3545
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_3461
.label_3545:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
.label_5734:
	mov	rsi, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	dl, sil
	nop	
	movsx	edi, dl
	lea	rdi, [rdi]
	add	ecx, edi
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x454], ecx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2461
	jmp	.label_2457
.label_3461:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	mov	dl, sil
	nop	
	movsx	edi, dl
	mov	rbp, rbp
	add	eax, edi
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	nop	
	mov	dword ptr [rbp - 0x454], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2461
	jmp	.label_2457
.label_4304:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_2486
	lea	rdi, [rdi]
	jmp	.label_2490
.label_2486:
	cmp	qword ptr [rbp - 0x2e0], 0
	lea	rdi, [rdi]
	jge	.label_3139
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	jl	.label_2499
	jmp	.label_2512
.label_3139:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_2499
	mov	rbp, rbp
	jmp	.label_2512
.label_2490:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_2530
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	nop	
	jle	.label_2499
	jmp	.label_2512
.label_2530:
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_2961
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, rcx
	jle	.label_2499
	mov	rsp, rsp
	jmp	.label_2512
.label_2961:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	jl	.label_2499
.label_2512:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	nop	
	jl	.label_2499
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rdx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_3415
.label_2499:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	ecx, dil
	mov	dword ptr [rbp - 0x454], ecx
	nop	
	test	al, 1
	jne	.label_2461
	mov	rsp, rsp
	jmp	.label_2457
.label_3415:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2461
	jmp	.label_2457
.label_4300:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2610
	jmp	.label_3398
.label_2610:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2616
	mov	rbp, rbp
	jmp	.label_2619
.label_2616:
	mov	al, 1
	test	al, 1
	jne	.label_4386
	nop	
	jmp	.label_2625
.label_4386:
	nop	
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3878
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	ecx, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	sub	eax, edi
	nop	
	cmp	ecx, eax
	jl	.label_2661
	mov	rsp, rsp
	jmp	.label_2672
.label_3878:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	dx, si
	movsx	esi, dx
	lea	rdi, [rdi]
	cmp	eax, esi
	jl	.label_2661
	nop	
	jmp	.label_2672
.label_2625:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_2673
	mov	rax, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	cx, si
	movsx	esi, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	jle	.label_2661
	lea	rsi, [rsi]
	jmp	.label_2672
.label_2673:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cx, ax
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2701
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	mov	rsi, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	cmp	eax, edx
	nop	
	jle	.label_2661
	mov	rsp, rsp
	jmp	.label_2672
.label_2701:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_2661
.label_2672:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	mov	rbp, rbp
	jl	.label_2661
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2e0]
	nop	
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_2760
.label_2661:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	edi, dx
	mov	rsp, rsp
	add	ecx, edi
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x454], ecx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2461
	jmp	.label_2457
.label_2760:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	mov	dx, si
	movsx	edi, dx
	lea	rsi, [rsi]
	add	eax, edi
	mov	rsp, rsp
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	eax, dx
	nop	
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	nop	
	jne	.label_2461
	lea	rsi, [rsi]
	jmp	.label_2457
.label_2619:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_4297
	mov	rbp, rbp
	jmp	.label_4325
.label_4297:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	mov	rbp, rbp
	jge	.label_2826
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2777
	jmp	.label_2511
.label_2826:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jl	.label_2777
	mov	rbp, rbp
	jmp	.label_2511
.label_4325:
	nop	
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_2527
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2777
	lea	rsi, [rsi]
	jmp	.label_2511
.label_2527:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	lea	rdi, [rdi]
	jge	.label_2742
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	nop	
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jle	.label_2777
	jmp	.label_2511
.label_2742:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2e0]
	nop	
	jl	.label_2777
.label_2511:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, -0x8000
	jl	.label_2777
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_2899
.label_2777:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	dword ptr [rbp - 0x454], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2461
	mov	rbp, rbp
	jmp	.label_2457
.label_2899:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	eax, esi
	mov	di, ax
	movsx	eax, di
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x454], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2461
	lea	rsi, [rsi]
	jmp	.label_2457
.label_3398:
	nop	
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2929
	mov	rbp, rbp
	jmp	.label_2937
.label_2929:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2860
	lea	rdi, [rdi]
	jmp	.label_3130
.label_2860:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2950
	jmp	.label_3190
.label_2950:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_2956
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	nop	
	sub	eax, esi
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_2960
	lea	rsi, [rsi]
	jmp	.label_2910
.label_2956:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x5c]
	jl	.label_2960
	lea	rsi, [rsi]
	jmp	.label_2910
.label_3190:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	jge	.label_2986
	nop	
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	esi, eax
	add	edx, esi
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2960
	lea	rsi, [rsi]
	jmp	.label_2910
.label_2986:
	nop	
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3013
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	ecx, esi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_2960
	jmp	.label_2910
.label_3013:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	edx, ecx
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2960
.label_2910:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	eax, edx
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_2960
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_3636
.label_2960:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x454], ecx
	test	al, 1
	jne	.label_2461
	jmp	.label_2457
.label_3636:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	jne	.label_2461
	jmp	.label_2457
.label_3130:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_4394
	jmp	.label_2544
.label_4394:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3086
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_3091
	lea	rdi, [rdi]
	jmp	.label_3117
.label_3086:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3091
	lea	rdi, [rdi]
	jmp	.label_3117
.label_2544:
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rsi, [rsi]
	jge	.label_3119
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3091
	jmp	.label_3117
.label_3119:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3128
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	nop	
	jle	.label_3091
	mov	rsp, rsp
	jmp	.label_3117
.label_3128:
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	add	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2e0]
	jl	.label_3091
.label_3117:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, -0x80000000
	jl	.label_3091
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rdx, qword ptr [rbp - 0x2e0]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_3155
.label_3091:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	nop	
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x454], ecx
	test	al, 1
	jne	.label_2461
	lea	rsi, [rsi]
	jmp	.label_2457
.label_3155:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x454], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2461
	jmp	.label_2457
.label_2937:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3195
	lea	rdi, [rdi]
	jmp	.label_3673
.label_3195:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3727
	jmp	.label_3206
.label_3727:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_4385
	jmp	.label_3216
.label_4385:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3217
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2467
	nop	
	jmp	.label_2857
.label_3217:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2467
	lea	rsi, [rsi]
	jmp	.label_2857
.label_3216:
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, 0
	jge	.label_2886
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jle	.label_2467
	lea	rdi, [rdi]
	jmp	.label_2857
.label_2886:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	mov	rsp, rsp
	jge	.label_2718
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2467
	jmp	.label_2857
.label_2718:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	jl	.label_2467
.label_2857:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2467
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_2915
.label_2467:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x454], edx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_2461
	jmp	.label_2457
.label_2915:
	xor	eax, eax
	mov	cl, al
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	nop	
	jne	.label_2461
	mov	rsp, rsp
	jmp	.label_2457
.label_3206:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_3310
	jmp	.label_3314
.label_3310:
	nop	
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3317
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	jl	.label_2885
	jmp	.label_3336
.label_3317:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_2885
	jmp	.label_3336
.label_3314:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_4313
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2885
	jmp	.label_3336
.label_4313:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3348
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2885
	nop	
	jmp	.label_3336
.label_3348:
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	jl	.label_2885
.label_3336:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2885
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jge	.label_3384
.label_2885:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x454], edx
	test	al, 1
	jne	.label_2461
	jmp	.label_2457
.label_3384:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x2e0]
	mov	eax, edx
	mov	dword ptr [rbp - 0x454], eax
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2461
	jmp	.label_2457
.label_3673:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2958
	lea	rsi, [rsi]
	jmp	.label_3418
.label_2958:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_3421
	jmp	.label_3425
.label_3421:
	nop	
	cmp	qword ptr [rbp - 0x2e0], 0
	nop	
	jge	.label_4269
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rcx, rax
	jl	.label_2478
	jmp	.label_2730
.label_4269:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2478
	jmp	.label_2730
.label_3425:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_3457
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jle	.label_2478
	mov	rbp, rbp
	jmp	.label_2730
.label_3457:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	lea	rsi, [rsi]
	jge	.label_3994
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2478
	jmp	.label_2730
.label_3994:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	nop	
	jl	.label_2478
.label_2730:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2478
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	nop	
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3494
.label_2478:
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x454], edx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2461
	jmp	.label_2457
.label_3494:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x454], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2457
.label_3418:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4298
	lea	rsi, [rsi]
	jmp	.label_3535
.label_4298:
	nop	
	cmp	qword ptr [rbp - 0x2e0], 0
	nop	
	jge	.label_3536
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2543
	mov	rbp, rbp
	jmp	.label_3569
.label_3536:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_2543
	jmp	.label_3569
.label_3535:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	jge	.label_2537
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2543
	jmp	.label_3569
.label_2537:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3570
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2543
	lea	rdi, [rdi]
	jmp	.label_3569
.label_3570:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	jl	.label_2543
.label_3569:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2543
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2962
.label_2543:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x454], edx
	test	al, 1
	jne	.label_2461
	jmp	.label_2457
.label_2962:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x5c]
	nop	
	add	rdx, qword ptr [rbp - 0x2e0]
	mov	eax, edx
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	jne	.label_2461
	jmp	.label_2457
.label_2461:
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3613
	movabs	rdi, OFFSET FLAT:.str.55_0
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.56
	mov	edx, 0x877
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	al, 0
	nop	
	call	dbg_printf
.label_3613:
	jmp	.label_2571
.label_2457:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x450]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	mov	eax, dword ptr [rbp - 0x454]
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1d8]
	call	mktime_z
	mov	qword ptr [rbp - 0x1c8], rax
	cmp	qword ptr [rbp - 0x1c8], -1
	mov	rbp, rbp
	jne	.label_3665
	test	byte ptr [rbp - 0x27f], 1
	mov	rbp, rbp
	je	.label_3331
	movabs	rdi, OFFSET FLAT:.str.57_0
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	lea	rdi, [rdi]
	mov	ecx, 0x64
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rbp - 0xec0], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xec0]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_3331:
	jmp	.label_2571
.label_3665:
	test	byte ptr [rbp - 0x27f], 1
	nop	
	je	.label_2662
	nop	
	movabs	rdi, OFFSET FLAT:.str.58_0
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	rdx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.59_0
	call	gettext
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	mov	ecx, 0x64
	mov	rbp, rbp
	lea	rdx, [rbp - 0x130]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xec8], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xec8]
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
	cmp	dword ptr [rbp - 0x80], -1
	je	.label_3689
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	je	.label_3689
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.60_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_3689:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	jne	.label_3733
	mov	eax, dword ptr [rbp - 0x5c]
	cmp	eax, dword ptr [rbp - 0x454]
	lea	rsi, [rsi]
	jne	.label_3736
	cmp	qword ptr [rbp - 0x2e8], 0
	jne	.label_3733
	nop	
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x450]
	je	.label_3733
.label_3736:
	nop	
	movabs	rdi, OFFSET FLAT:.str.61_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rbp - 0x461]
	nop	
	mov	edi, dword ptr [rbp - 0x44c]
	mov	qword ptr [rbp - 0xed0], rax
	call	tm_year_str
	mov	edi, dword ptr [rbp - 0x450]
	add	edi, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x454]
	mov	rsi, qword ptr [rbp - 0xed0]
	mov	dword ptr [rbp - 0xed4], edi
	mov	rdi, rsi
	mov	rsi, rax
	mov	edx, dword ptr [rbp - 0xed4]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rbp - 0x461]
	mov	edi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xee0], rax
	call	tm_year_str
	nop	
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	mov	edx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdi, qword ptr [rbp - 0xee0]
	mov	rsi, rax
	mov	dword ptr [rbp - 0xee4], edx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0xee4]
	mov	al, 0
	call	dbg_printf
.label_3733:
	nop	
	jmp	.label_2662
.label_2662:
	jmp	.label_3801
.label_3801:
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_3803
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x340]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x470], rcx
	mov	byte ptr [rbp - 0x479], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x488], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3806
	lea	rdi, [rdi]
	jmp	.label_3820
.label_3806:
	cmp	qword ptr [rbp - 0x488], 0
	lea	rdi, [rdi]
	jge	.label_3823
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x470]
	lea	rsi, [rsi]
	jl	.label_3827
	lea	rsi, [rsi]
	jmp	.label_3700
.label_3823:
	mov	rax, qword ptr [rbp - 0x470]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	add	rcx, qword ptr [rbp - 0x488]
	cmp	rax, rcx
	jl	.label_3827
	jmp	.label_3700
.label_3820:
	cmp	qword ptr [rbp - 0x470], 0
	nop	
	jge	.label_3838
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3827
	jmp	.label_3700
.label_3838:
	cmp	qword ptr [rbp - 0x488], 0
	lea	rsi, [rsi]
	jge	.label_3851
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x470]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x470]
	jle	.label_3827
	mov	rbp, rbp
	jmp	.label_3700
.label_3851:
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	cmp	rax, qword ptr [rbp - 0x488]
	nop	
	jl	.label_3827
.label_3700:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x488]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3827
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x470]
	sub	rcx, qword ptr [rbp - 0x488]
	cmp	rax, rcx
	jge	.label_2657
.label_3827:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x470]
	sub	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x470], rcx
	mov	dword ptr [rbp - 0xee8], eax
	jmp	.label_2720
.label_2657:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x470]
	sub	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x470], rcx
	mov	dword ptr [rbp - 0xee8], eax
.label_2720:
	mov	eax, dword ptr [rbp - 0xee8]
	mov	cl, 1
	mov	dl, byte ptr [rbp - 0x479]
	and	dl, 1
	movzx	esi, dl
	lea	rsi, [rsi]
	or	esi, eax
	mov	rsp, rsp
	cmp	esi, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x479], dl
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3892
	jmp	.label_3905
.label_3892:
	cmp	qword ptr [rbp - 0x470], 0
	lea	rdi, [rdi]
	jge	.label_3906
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x470]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_3909
	jmp	.label_3918
.label_3906:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x470]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3909
	lea	rsi, [rsi]
	jmp	.label_3918
.label_3905:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	jge	.label_3931
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3909
	jmp	.label_3918
.label_3931:
	cmp	qword ptr [rbp - 0x470], 0
	jge	.label_3940
	mov	rax, qword ptr [rbp - 0x1c8]
	sub	rax, qword ptr [rbp - 0x470]
	nop	
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	jle	.label_3909
	jmp	.label_3918
.label_3940:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	cmp	rax, qword ptr [rbp - 0x470]
	jl	.label_3909
.label_3918:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rcx, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_3909
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x470]
	cmp	rax, rcx
	jge	.label_3965
.label_3909:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rcx, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x478], rcx
	mov	dword ptr [rbp - 0xeec], eax
	lea	rsi, [rsi]
	jmp	.label_3980
.label_3965:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x470]
	nop	
	mov	qword ptr [rbp - 0x478], rcx
	mov	dword ptr [rbp - 0xeec], eax
.label_3980:
	mov	eax, dword ptr [rbp - 0xeec]
	nop	
	mov	cl, byte ptr [rbp - 0x479]
	and	cl, 1
	nop	
	movzx	edx, cl
	or	edx, eax
	nop	
	cmp	edx, 0