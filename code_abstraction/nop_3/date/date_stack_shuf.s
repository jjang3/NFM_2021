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
	mov	dword ptr [rbp - 0x58], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_9
	jmp	.label_7
.label_7:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0xc], eax
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
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], eax
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
	mov	dword ptr [rbp - 0x68], eax
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
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.13
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x7c], eax
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
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x44], eax
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
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 0x58]
	call	exit
	nop	dword ptr [rax]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402120

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rax
.label_14:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	je	.label_10
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], cl
.label_10:
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_12
	jmp	.label_13
.label_12:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_14
.label_13:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
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
	mov	dword ptr [rbp - 4], eax
	call	setlocale
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_11
	nop	
	movabs	rsi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
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
	mov	dword ptr [rbp - 0x18], eax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.59
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmove	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
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
	sub	rsp, 0x1b0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], 0
	nop	
	mov	dword ptr [rbp - 0x198], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rsi
	mov	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0xad], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x150], 0
	mov	rsi, qword ptr [rbp - 0x180]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.29
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x188], rax
	lea	rdi, [rdi]
	call	atexit
	nop	
	mov	dword ptr [rbp - 0xa4], eax
.label_55:
	movabs	rdx, OFFSET FLAT:short_options
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, eax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x180]
	call	getopt_long
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	nop	
	je	.label_40
	nop	
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa8], eax
	nop	
	mov	dword ptr [rbp - 0x174], ecx
	je	.label_42
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_54
	jmp	.label_62
.label_62:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rsp, rsp
	sub	eax, 0x49
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18c], eax
	nop	
	je	.label_64
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x1a4], eax
	mov	rsp, rsp
	je	.label_70
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	je	.label_17
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x66
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], eax
	nop	
	je	.label_23
	nop	
	jmp	.label_38
.label_38:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x9c], eax
	mov	rbp, rbp
	je	.label_47
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x73
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_39
	lea	rdi, [rdi]
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x194], eax
	je	.label_46
	jmp	.label_49
.label_49:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	je	.label_51
	lea	rsi, [rsi]
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rsp, rsp
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	je	.label_61
	lea	rdi, [rdi]
	jmp	.label_67
.label_17:
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_19
.label_61:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [parse_datetime_flags]]
	lea	rsi, [rsi]
	or	eax, 1
	mov	dword ptr [dword ptr [parse_datetime_flags]],  eax
	jmp	.label_19
.label_23:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_19
.label_51:
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
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + label_69]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x178], r10d
	mov	r10d, dword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	eax, r10d
	shl	rax, 5
	add	rcx, rax
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	jmp	.label_19
.label_64:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_59
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
	mov	dword ptr [rbp - 0x54], r10d
	lea	rdi, [rdi]
	jmp	.label_21
.label_59:
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:main.iso_8601_format
	mov	dword ptr [rbp - 0x68], eax
	mov	eax, dword ptr [rbp - 0x68]
	mov	edx, eax
	lea	rdi, [rdi]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	lea	rsi, [rsi]
	jmp	.label_19
.label_47:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x150], rax
	lea	rsi, [rsi]
	jmp	.label_19
.label_70:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:rfc_email_format
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_19
.label_39:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xad], 1
	jmp	.label_19
.label_46:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.33
	call	bad_cast
	lea	rsi, [rsi]
	mov	rdi, rax
	call	putenv
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_31
	lea	rdi, [rdi]
	call	xalloc_die
.label_31:
	mov	rbp, rbp
	jmp	.label_19
.label_54:
	xor	edi, edi
	call	usage
.label_42:
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
.label_67:
	nop	
	mov	edi, 1
	call	usage
.label_19:
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	je	.label_33
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	je	.label_37
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
.label_37:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_33:
	jmp	.label_55
.label_40:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	edx, eax
	cmovne	edx, ecx
	cmp	qword ptr [rbp - 0x38], 0
	mov	esi, eax
	cmovne	esi, ecx
	add	edx, esi
	cmp	qword ptr [rbp - 0x150], 0
	mov	rbp, rbp
	cmovne	eax, ecx
	add	edx, eax
	mov	dword ptr [rbp - 0x168], edx
	nop	
	cmp	dword ptr [rbp - 0x168], 1
	mov	rsp, rsp
	jle	.label_56
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
.label_56:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xad], 1
	je	.label_25
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x168], 0
	lea	rdi, [rdi]
	je	.label_25
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
.label_25:
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	cmp	eax, dword ptr [rbp - 0x198]
	jge	.label_29
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	jge	.label_53
	movabs	rdi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	mov	rbp, rbp
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quote
	nop	
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	edi, 1
	call	usage
.label_53:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2b
	lea	rsi, [rsi]
	jne	.label_24
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_32
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
.label_32:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [optind]],  ecx
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8]
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	jmp	.label_28
.label_24:
	test	byte ptr [rbp - 0xad], 1
	mov	rbp, rbp
	jne	.label_58
	nop	
	cmp	dword ptr [rbp - 0x168], 0
	je	.label_66
.label_58:
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	lea	rdi, [rdi]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x170], rax
	mov	rsp, rsp
	call	quote
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_66:
	jmp	.label_28
.label_28:
	lea	rsi, [rsi]
	jmp	.label_29
.label_29:
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
	jne	.label_35
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.41
	mov	qword ptr [rbp - 0x48], rax
.label_35:
	jmp	.label_30
.label_30:
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	mov	rsp, rsp
	call	getenv
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_57
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	batch_convert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x21], al
	mov	rsp, rsp
	jmp	.label_68
.label_57:
	mov	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x168], 0
	jne	.label_18
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xad], 1
	jne	.label_18
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x198]
	jge	.label_22
	mov	edx, 7
	lea	rdi, [rbp - 0x160]
	nop	
	mov	byte ptr [rbp - 0xad], 1
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x180]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	posixtime
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], al
	mov	qword ptr [rbp - 0x158], 0
	lea	rdi, [rdi]
	jmp	.label_41
.label_22:
	lea	rdi, [rbp - 0x160]
	nop	
	call	gettime
.label_41:
	nop	
	jmp	.label_48
.label_18:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x150], 0
	mov	rsp, rsp
	je	.label_50
	lea	rsi, [rbp - 0x140]
	nop	
	mov	rdi, qword ptr [rbp - 0x150]
	call	stat
	nop	
	cmp	eax, 0
	nop	
	je	.label_65
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	mov	dword ptr [rbp - 0x144], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x144]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_65:
	nop	
	lea	rdi, [rbp - 0x140]
	call	get_stat_mtime
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x158], rax
	nop	
	jmp	.label_27
.label_50:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	je	.label_34
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
.label_34:
	lea	rdi, [rbp - 0x160]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [parse_datetime_flags]]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x20]
	call	parse_datetime2
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], al
.label_27:
	mov	rbp, rbp
	jmp	.label_48
.label_48:
	test	byte ptr [rbp - 0x89], 1
	lea	rsi, [rsi]
	jne	.label_60
	nop	
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	quote
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_60:
	nop	
	test	byte ptr [rbp - 0xad], 1
	mov	rbp, rbp
	je	.label_20
	lea	rdi, [rbp - 0x160]
	call	settime
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_26
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.45
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x190], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x190]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
.label_26:
	nop	
	jmp	.label_20
.label_20:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x160]
	mov	rdx, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	call	show_date
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x21]
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
	mov	byte ptr [rbp - 0x21], al
.label_68:
	mov	eax, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	nop	
	add	rsp, 0x1b0
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
	nop	
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
	mov	qword ptr [rbp - 0x50], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x50]
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
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_76
.label_80:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.82
	mov	rdi, qword ptr [rbp - 0x50]
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
	mov	rdx, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x54], ecx
	nop	
	call	quotearg_n_style_colon
	nop	
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	esi, dword ptr [rbp - 0x54]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_71:
	mov	rbp, rbp
	jmp	.label_76
.label_76:
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
.label_75:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getline
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_73
	jmp	.label_78
.label_73:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x68]
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x70]
	mov	ecx,  dword ptr [dword ptr [parse_datetime_flags]]
	mov	r8, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	parse_datetime2
	test	al, 1
	mov	rsp, rsp
	jne	.label_74
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_77
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	byte ptr [rcx + rax], 0
.label_77:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_72
.label_74:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	show_date
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 1]
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
	mov	byte ptr [rbp - 1], al
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
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	nop	
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_79:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x70
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl show_date
	.type show_date, @function
show_date:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x50]
	lea	r8, [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x70], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
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
	cmp	qword ptr [rbp - 0x10], rax
	jne	.label_82
	lea	rsi, [rsi]
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
.label_82:
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x50]
	nop	
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	r8d, eax
	nop	
	call	fprintftime
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:rfc_email_format
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	jne	.label_83
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	mov	qword ptr [rbp - 0x60], rax
.label_83:
	lea	rsi, [rsi]
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputc_unlocked
	mov	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_84
.label_81:
	movabs	rdi, OFFSET FLAT:.str.84
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	call	timetostr
	mov	rdi, rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], 0
.label_84:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x15]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
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
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
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
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
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
.label_85:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_95
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
	jne	.label_92
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_86
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_88
.label_86:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_93
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_91
.label_93:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_87
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
	je	.label_89
.label_87:
	nop	
	mov	byte ptr [rbp - 0x21], 1
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
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_85
.label_95:
	test	byte ptr [rbp - 0x21], 1
	je	.label_90
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_88
.label_90:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_88:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
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
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_97
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_98
.label_97:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_98:
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
	nop	word ptr cs:[rax + rax]
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
.label_102:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_100
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_99
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
	je	.label_104
.label_99:
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
	jmp	.label_101
.label_104:
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
.label_101:
	jmp	.label_103
.label_103:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_102
.label_100:
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
	nop	dword ptr [rax + rax]
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
	jl	.label_105
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_106
.label_105:
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
.label_106:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_109:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_111
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
	jne	.label_108
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_107
.label_108:
	lea	rdi, [rdi]
	jmp	.label_110
.label_110:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_109
.label_111:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_107:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
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
	nop	word ptr cs:[rax + rax]
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
	nop	dword ptr [rax + rax]
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
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_113
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
	jmp	.label_114
.label_113:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
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
	nop	
	nop	dword ptr [rax + rax]
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
	lea	r10, [rbp - 0x31]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	byte ptr [rbp - 0x31], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], r8d
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r10
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 8]
	mov	qword ptr [rsp + 8], r10
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
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
	sub	rsp, 0xba0
	mov	al, cl
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x540], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6e8], rsi
	mov	qword ptr [rbp - 0x708], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x8c9], al
	nop	
	mov	dword ptr [rbp - 0x524], r8d
	mov	dword ptr [rbp - 0x964], r9d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x620], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb98], r10
	mov	dword ptr [rbp - 0x4ac], ecx
	mov	qword ptr [rbp - 0x558], -1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rdx + 8]
	nop	
	mov	dword ptr [rbp - 0x624], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x540]
	nop	
	mov	qword ptr [rbp - 0xa58], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c0], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	qword ptr [rbp - 0x4c0], rdx
	cmp	qword ptr [rbp - 0x4c0], 0
	jne	.label_378
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 0x4c0], rax
.label_378:
	nop	
	cmp	dword ptr [rbp - 0x624], 0xc
	jle	.label_448
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x624]
	sub	eax, 0xc
	nop	
	mov	dword ptr [rbp - 0x624], eax
	jmp	.label_449
.label_448:
	cmp	dword ptr [rbp - 0x624], 0
	jne	.label_457
	nop	
	mov	dword ptr [rbp - 0x624], 0xc
.label_457:
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x6e8]
	mov	qword ptr [rbp - 0x7c0], rax
.label_416:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_466
	mov	dword ptr [rbp - 0x8d0], 0
	mov	dword ptr [rbp - 0x588], 0
	mov	byte ptr [rbp - 0x909], 0
	mov	al, byte ptr [rbp - 0x8c9]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xb19], al
	mov	byte ptr [rbp - 0x549], 0
	mov	rcx, qword ptr [rbp - 0x7c0]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_472
	jmp	.label_489
.label_489:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x938], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x964], 0
	lea	rdi, [rdi]
	jge	.label_490
	xor	eax, eax
	mov	dword ptr [rbp - 0x958], eax
	jmp	.label_499
.label_490:
	mov	eax, dword ptr [rbp - 0x964]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x958], eax
.label_499:
	mov	eax, dword ptr [rbp - 0x958]
	mov	rbp, rbp
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x668], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x938]
	cmp	rcx, qword ptr [rbp - 0x668]
	mov	rsp, rsp
	jae	.label_508
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x748], rax
	jmp	.label_516
.label_508:
	mov	rax, qword ptr [rbp - 0x938]
	mov	qword ptr [rbp - 0x748], rax
.label_516:
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x630], rax
	nop	
	mov	rax, qword ptr [rbp - 0x630]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x558]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_528
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_132
.label_528:
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_542
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	lea	rdi, [rdi]
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x938]
	cmp	rax, qword ptr [rbp - 0x668]
	mov	rbp, rbp
	jae	.label_545
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8e8], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_556
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_566
.label_556:
	jmp	.label_569
.label_569:
	mov	qword ptr [rbp - 0x948], 0
.label_580:
	mov	rax, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x8e8]
	lea	rdi, [rdi]
	jae	.label_571
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa14], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x948], rax
	jmp	.label_580
.label_571:
	lea	rsi, [rsi]
	jmp	.label_590
.label_590:
	mov	rbp, rbp
	jmp	.label_591
.label_566:
	jmp	.label_592
.label_592:
	nop	
	mov	qword ptr [rbp - 0x780], 0
.label_606:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x780]
	nop	
	cmp	rax, qword ptr [rbp - 0x8e8]
	jae	.label_599
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x584], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x780]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x780], rax
	jmp	.label_606
.label_599:
	jmp	.label_616
.label_616:
	jmp	.label_591
.label_591:
	mov	rsp, rsp
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0xa40], eax
.label_542:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_412
.label_472:
	lea	rsi, [rsi]
	jmp	.label_173
.label_173:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x7c0]
	nop	
	mov	rcx, rax
	nop	
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7c0], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	esi, edx
	sub	esi, 0x23
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xaec], edx
	nop	
	mov	dword ptr [rbp - 0x87c], esi
	je	.label_631
	jmp	.label_630
.label_630:
	nop	
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x930], eax
	je	.label_128
	lea	rdi, [rdi]
	jmp	.label_126
.label_126:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0xb50], eax
	je	.label_128
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0xaec]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xa98], eax
	je	.label_128
	jmp	.label_148
.label_148:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xaec]
	lea	rdi, [rdi]
	sub	eax, 0x5e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa60], eax
	je	.label_149
	mov	rsp, rsp
	jmp	.label_159
.label_159:
	nop	
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x7f0], eax
	lea	rsi, [rsi]
	jne	.label_161
	mov	rsp, rsp
	jmp	.label_128
.label_128:
	nop	
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8d0], ecx
	jmp	.label_173
.label_149:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb19], 1
	nop	
	jmp	.label_173
.label_631:
	mov	byte ptr [rbp - 0x549], 1
	jmp	.label_173
.label_161:
	mov	rbp, rbp
	jmp	.label_187
.label_187:
	jmp	.label_191
.label_191:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_193
	mov	dword ptr [rbp - 0x964], 0
.label_234:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x964], 0xccccccc
	jg	.label_203
	cmp	dword ptr [rbp - 0x964], 0xccccccc
	jne	.label_210
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 7
	jle	.label_210
.label_203:
	mov	dword ptr [rbp - 0x964], 0x7fffffff
	jmp	.label_219
.label_210:
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x964], 0xa
	nop	
	mov	dword ptr [rbp - 0x964], eax
	mov	rcx, qword ptr [rbp - 0x7c0]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x964], eax
.label_219:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7c0]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x7c0]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_234
	mov	rsp, rsp
	jmp	.label_193
.label_193:
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x92c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x974], edx
	je	.label_250
	lea	rsi, [rsi]
	jmp	.label_308
.label_308:
	mov	eax, dword ptr [rbp - 0x92c]
	sub	eax, 0x4f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jne	.label_260
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c0], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x63c], edx
	lea	rsi, [rsi]
	jmp	.label_268
.label_260:
	mov	dword ptr [rbp - 0x63c], 0
.label_268:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7a4], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x828], ecx
	nop	
	je	.label_282
	lea	rsi, [rsi]
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0xa28], eax
	mov	rbp, rbp
	je	.label_293
	jmp	.label_299
.label_299:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94c], eax
	je	.label_300
	jmp	.label_313
.label_313:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x8b0], eax
	je	.label_314
	jmp	.label_164
.label_164:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa34], eax
	je	.label_322
	jmp	.label_331
.label_331:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x43
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_333
	mov	rbp, rbp
	jmp	.label_341
.label_341:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb0c], eax
	nop	
	je	.label_343
	mov	rsp, rsp
	jmp	.label_351
.label_351:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x46
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x86c], eax
	nop	
	je	.label_355
	nop	
	jmp	.label_361
.label_361:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x72c], eax
	je	.label_363
	jmp	.label_369
.label_369:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0xb68], eax
	je	.label_371
	jmp	.label_375
.label_375:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x49
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x81c], eax
	je	.label_376
	jmp	.label_382
.label_382:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x5ac], eax
	je	.label_384
	jmp	.label_390
.label_390:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x93c], eax
	je	.label_391
	jmp	.label_399
.label_399:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7f8], eax
	nop	
	je	.label_400
	mov	rsp, rsp
	jmp	.label_409
.label_409:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x544], eax
	lea	rsi, [rsi]
	je	.label_415
	jmp	.label_420
.label_420:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x564], eax
	je	.label_422
	jmp	.label_432
.label_432:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x6d0], eax
	lea	rsi, [rsi]
	je	.label_433
	lea	rsi, [rsi]
	jmp	.label_439
.label_439:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x55
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa94], eax
	mov	rbp, rbp
	je	.label_441
	jmp	.label_446
.label_446:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x56
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x968], eax
	je	.label_363
	jmp	.label_452
.label_452:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x784], eax
	je	.label_397
	jmp	.label_460
.label_460:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0xafc], eax
	je	.label_206
	nop	
	jmp	.label_486
.label_486:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x6a0], eax
	lea	rdi, [rdi]
	je	.label_468
	mov	rbp, rbp
	jmp	.label_473
.label_473:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x59c], eax
	lea	rsi, [rsi]
	je	.label_477
	nop	
	jmp	.label_579
.label_579:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa9c], eax
	mov	rsp, rsp
	je	.label_487
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x5ec], eax
	je	.label_495
	mov	rbp, rbp
	jmp	.label_358
.label_358:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x73c], eax
	je	.label_502
	nop	
	jmp	.label_509
.label_509:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x824], eax
	je	.label_510
	nop	
	jmp	.label_254
.label_254:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0xb30], eax
	je	.label_261
	jmp	.label_526
.label_526:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x67
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x548], eax
	mov	rbp, rbp
	je	.label_363
	mov	rsp, rsp
	jmp	.label_535
.label_535:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 0x70], eax
	mov	rsp, rsp
	je	.label_495
	jmp	.label_539
.label_539:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_541
	jmp	.label_546
.label_546:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x99c], eax
	lea	rdi, [rdi]
	je	.label_548
	nop	
	jmp	.label_555
.label_555:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0x5cc], eax
	je	.label_557
	jmp	.label_561
.label_561:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x5d4], eax
	je	.label_563
	mov	rsp, rsp
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x6fc], eax
	je	.label_570
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x518], eax
	lea	rsi, [rsi]
	je	.label_642
	jmp	.label_581
.label_581:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_584
	jmp	.label_587
.label_587:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_589
	jmp	.label_593
.label_593:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x9dc], eax
	lea	rsi, [rsi]
	je	.label_595
	jmp	.label_603
.label_603:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x910], eax
	je	.label_648
	nop	
	jmp	.label_607
.label_607:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5d0], eax
	je	.label_609
	lea	rdi, [rdi]
	jmp	.label_617
.label_617:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x6c8], eax
	je	.label_657
	jmp	.label_621
.label_621:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x640], eax
	je	.label_622
	jmp	.label_626
.label_626:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x79
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x610], eax
	je	.label_522
	jmp	.label_559
.label_559:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb80], eax
	je	.label_633
	jmp	.label_645
.label_293:
	nop	
	cmp	dword ptr [rbp - 0x63c], 0
	mov	rsp, rsp
	je	.label_647
	jmp	.label_129
.label_647:
	mov	rsp, rsp
	jmp	.label_655
.label_655:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x498], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_658
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c4], eax
	jmp	.label_130
.label_658:
	mov	eax, dword ptr [rbp - 0x964]
	nop	
	mov	dword ptr [rbp - 0x6c4], eax
.label_130:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c4]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8a0], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x498]
	cmp	rcx, qword ptr [rbp - 0x8a0]
	jae	.label_143
	mov	rax, qword ptr [rbp - 0x8a0]
	nop	
	mov	qword ptr [rbp - 0x878], rax
	lea	rsi, [rsi]
	jmp	.label_157
.label_143:
	mov	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0x878], rax
.label_157:
	nop	
	mov	rax, qword ptr [rbp - 0x878]
	mov	qword ptr [rbp - 0xa10], rax
	mov	rax, qword ptr [rbp - 0xa10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x558]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_169
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	jmp	.label_132
.label_169:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_192
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_196
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x498]
	cmp	rax, qword ptr [rbp - 0x8a0]
	mov	rbp, rbp
	jae	.label_196
	movsxd	rax, dword ptr [rbp - 0x964]
	nop	
	sub	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0x988], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_209
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_215
.label_209:
	nop	
	jmp	.label_221
.label_221:
	nop	
	mov	qword ptr [rbp - 0x688], 0
.label_640:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x988]
	mov	rsp, rsp
	jae	.label_225
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x820], eax
	mov	rax, qword ptr [rbp - 0x688]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	mov	rbp, rbp
	jmp	.label_640
.label_225:
	lea	rdi, [rdi]
	jmp	.label_245
.label_245:
	nop	
	jmp	.label_247
.label_215:
	lea	rdi, [rdi]
	jmp	.label_248
.label_248:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb28], 0
.label_262:
	mov	rax, qword ptr [rbp - 0xb28]
	cmp	rax, qword ptr [rbp - 0x988]
	mov	rbp, rbp
	jae	.label_253
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0x6a4], eax
	mov	rax, qword ptr [rbp - 0xb28]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb28], rax
	jmp	.label_262
.label_253:
	lea	rsi, [rsi]
	jmp	.label_272
.label_272:
	lea	rsi, [rsi]
	jmp	.label_247
.label_247:
	mov	rsp, rsp
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0x7b4], eax
.label_192:
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rsp, rsp
	jmp	.label_336
.label_487:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_296
	lea	rsi, [rsi]
	jmp	.label_129
.label_296:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x549], 1
	nop	
	je	.label_304
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb19], 1
	mov	byte ptr [rbp - 0x909], 0
.label_304:
	mov	rsp, rsp
	jmp	.label_141
.label_314:
	cmp	dword ptr [rbp - 0x63c], 0
	nop	
	je	.label_316
	mov	rsp, rsp
	jmp	.label_129
.label_316:
	test	byte ptr [rbp - 0x549], 1
	lea	rdi, [rdi]
	je	.label_325
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb19], 1
	mov	byte ptr [rbp - 0x909], 0
.label_325:
	lea	rdi, [rdi]
	jmp	.label_141
.label_495:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x549], 1
	lea	rdi, [rdi]
	je	.label_335
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb19], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x909], 0
.label_335:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	nop	
	jne	.label_347
	nop	
	jmp	.label_129
.label_347:
	nop	
	jmp	.label_141
.label_322:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rbp, rbp
	jne	.label_359
	jmp	.label_129
.label_359:
	test	byte ptr [rbp - 0x549], 1
	je	.label_398
	mov	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x909], 0
.label_398:
	jmp	.label_141
.label_502:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	jne	.label_456
	jmp	.label_129
.label_456:
	lea	rdi, [rdi]
	jmp	.label_141
.label_424:
	mov	dword ptr [rbp - 0x68c], 0xffffffff
.label_623:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x790]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0xb19]
	mov	r8d, dword ptr [rbp - 0x8d0]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x68c]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x620]
	mov	r11, qword ptr [rbp - 0xb98]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4ac]
	and	cl, 1
	mov	rsp, rsp
	movzx	ecx, cl
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	nop	
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	nop	
	mov	qword ptr [rbp - 0x768], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x768]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x810], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_413
	xor	eax, eax
	mov	dword ptr [rbp - 0x8ec], eax
	mov	rbp, rbp
	jmp	.label_426
.label_413:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x8ec], eax
.label_426:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8ec]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x960], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x960]
	nop	
	jae	.label_435
	mov	rax, qword ptr [rbp - 0x960]
	mov	qword ptr [rbp - 0x928], rax
	nop	
	jmp	.label_444
.label_435:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x928], rax
.label_444:
	mov	rax, qword ptr [rbp - 0x928]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb38], rax
	mov	rax, qword ptr [rbp - 0xb38]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_450
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_132
.label_450:
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rbp, rbp
	je	.label_467
	nop	
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_470
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x810]
	nop	
	cmp	rax, qword ptr [rbp - 0x960]
	lea	rsi, [rsi]
	jae	.label_470
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x980], rax
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0x30
	lea	rsi, [rsi]
	je	.label_481
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_491
.label_481:
	mov	rbp, rbp
	jmp	.label_644
.label_644:
	nop	
	mov	qword ptr [rbp - 0x6e0], 0
.label_514:
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x980]
	jae	.label_501
	lea	rdi, [rdi]
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x7ec], eax
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rsp, rsp
	jmp	.label_514
.label_501:
	nop	
	jmp	.label_520
.label_520:
	nop	
	jmp	.label_285
.label_491:
	jmp	.label_525
.label_525:
	mov	qword ptr [rbp - 0x580], 0
.label_538:
	mov	rax, qword ptr [rbp - 0x580]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x980]
	jae	.label_530
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x990], eax
	mov	rax, qword ptr [rbp - 0x580]
	add	rax, 1
	mov	qword ptr [rbp - 0x580], rax
	jmp	.label_538
.label_530:
	jmp	.label_543
.label_543:
	mov	rsp, rsp
	jmp	.label_285
.label_285:
	jmp	.label_470
.label_470:
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x790]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb19]
	mov	r8d, dword ptr [rbp - 0x8d0]
	mov	r9d, dword ptr [rbp - 0x68c]
	mov	rcx, qword ptr [rbp - 0x620]
	mov	r10, qword ptr [rbp - 0xb98]
	mov	r11d, dword ptr [rbp - 0x4ac]
	and	al, 1
	movzx	ebx, al
	mov	qword ptr [rbp - 0xa48], rcx
	mov	ecx, ebx
	mov	r14, qword ptr [rbp - 0xa48]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	lea	rdi, [rdi]
	call	__strftime_internal
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x658], rax
.label_467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb38]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_336
.label_141:
	lea	rax, [rbp - 0x70d]
	mov	qword ptr [rbp - 0xa50], rax
	mov	rax, qword ptr [rbp - 0xa50]
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa50], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0xa50]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xa50], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x25
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_582
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x63c]
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0xa50]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa50], rsi
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
.label_582:
	mov	eax, 0x400
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0x70d]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x480]
	nop	
	mov	eax, dword ptr [rbp - 0x7a4]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0xa50]
	lea	rsi, [rsi]
	mov	r9, r8
	add	r9, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa50], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0xa50]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	call	strftime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8b8], rax
	cmp	qword ptr [rbp - 0x8b8], 0
	mov	rsp, rsp
	je	.label_168
	jmp	.label_637
.label_637:
	mov	rax, qword ptr [rbp - 0x8b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x7d0], rax
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_641
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x534], eax
	mov	rsp, rsp
	jmp	.label_652
.label_641:
	nop	
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x534], eax
.label_652:
	nop	
	mov	eax, dword ptr [rbp - 0x534]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xae8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x7d0]
	cmp	rcx, qword ptr [rbp - 0xae8]
	mov	rsp, rsp
	jae	.label_124
	mov	rax, qword ptr [rbp - 0xae8]
	mov	qword ptr [rbp - 0x598], rax
	jmp	.label_142
.label_124:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0x598], rax
.label_142:
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x660], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x660]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	nop	
	cmp	rax, rcx
	jb	.label_154
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_132
.label_154:
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_175
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_180
	nop	
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xae8]
	lea	rsi, [rsi]
	jae	.label_180
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0x4e8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_190
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_200
.label_190:
	nop	
	jmp	.label_547
.label_547:
	mov	qword ptr [rbp - 0x638], 0
.label_223:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x638]
	cmp	rax, qword ptr [rbp - 0x4e8]
	lea	rdi, [rdi]
	jae	.label_211
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x800], eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x638]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x638], rax
	jmp	.label_223
.label_211:
	jmp	.label_179
.label_179:
	lea	rdi, [rdi]
	jmp	.label_186
.label_200:
	nop	
	jmp	.label_235
.label_235:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x888], 0
.label_302:
	nop	
	mov	rax, qword ptr [rbp - 0x888]
	cmp	rax, qword ptr [rbp - 0x4e8]
	jae	.label_240
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa3c], eax
	mov	rax, qword ptr [rbp - 0x888]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_302
.label_240:
	mov	rbp, rbp
	jmp	.label_364
.label_364:
	jmp	.label_186
.label_186:
	jmp	.label_180
.label_180:
	jmp	.label_263
.label_263:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	lea	rdi, [rdi]
	je	.label_264
	lea	rax, [rbp - 0x480]
	mov	rdi, qword ptr [rbp - 0xa58]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x7d0]
	mov	rsi, rax
	mov	rsp, rsp
	call	fwrite_lowcase
	jmp	.label_278
.label_264:
	test	byte ptr [rbp - 0xb19], 1
	je	.label_279
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x480]
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x7d0]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	fwrite_uppcase
	mov	rsp, rsp
	jmp	.label_295
.label_279:
	nop	
	mov	eax, 1
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x480]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x7d0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	qword ptr [rbp - 0x4f8], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4f8]
	mov	rsp, rsp
	call	fwrite
	nop	
	mov	qword ptr [rbp - 0x8e0], rax
.label_295:
	jmp	.label_278
.label_278:
	lea	rdi, [rdi]
	jmp	.label_323
.label_323:
	jmp	.label_175
.label_175:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x660]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_168
.label_168:
	jmp	.label_336
.label_333:
	cmp	dword ptr [rbp - 0x63c], 0x45
	nop	
	jne	.label_338
	nop	
	jmp	.label_141
.label_338:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x798], eax
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x798]
	mov	rbp, rbp
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x504], eax
	mov	rdi, qword ptr [rbp - 0x708]
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	idiv	esi
	mov	rsp, rsp
	cmp	edx, 0
	mov	byte ptr [rbp - 0xb49], cl
	jge	.label_345
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x504]
	mov	rsp, rsp
	setl	cl
	mov	byte ptr [rbp - 0xb49], cl
.label_345:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x504]
	sub	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x504], edx
	mov	dword ptr [rbp - 0x588], 2
	nop	
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x504]
	nop	
	mov	dword ptr [rbp - 0x4b0], edx
	mov	rbp, rbp
	jmp	.label_155
.label_622:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x4f
	nop	
	jne	.label_405
	lea	rdi, [rdi]
	jmp	.label_129
.label_405:
	jmp	.label_141
.label_343:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_417
	mov	rsp, rsp
	jmp	.label_129
.label_417:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.1_2
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_424
.label_510:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_229
	mov	rbp, rbp
	jmp	.label_129
.label_229:
	lea	rdi, [rdi]
	jmp	.label_438
.label_438:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xa24], ecx
	lea	rsi, [rsi]
	jmp	.label_123
.label_261:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_447
	mov	rsp, rsp
	jmp	.label_129
.label_447:
	jmp	.label_451
.label_451:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xa24], ecx
	nop	
	jmp	.label_146
.label_122:
	mov	byte ptr [rbp - 0xa15], 1
	mov	rbp, rbp
	jmp	.label_461
.label_155:
	cmp	dword ptr [rbp - 0x8d0], 0
	jne	.label_463
	nop	
	mov	eax, dword ptr [rbp - 0x524]
	mov	dword ptr [rbp - 0x8d0], eax
.label_463:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	byte ptr [rbp - 0x749], cl
	nop	
	jne	.label_505
	nop	
	mov	al, 1
	mov	ecx, 0x270f
	nop	
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x588], 2
	mov	rsp, rsp
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71d], al
	mov	rsp, rsp
	jb	.label_476
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x588]
	nop	
	cmp	eax, dword ptr [rbp - 0x964]
	setl	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71d], cl
.label_476:
	mov	al, byte ptr [rbp - 0x71d]
	mov	byte ptr [rbp - 0x749], al
.label_505:
	nop	
	mov	al, byte ptr [rbp - 0x749]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa15], al
	mov	rbp, rbp
	jmp	.label_386
.label_146:
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0
	mov	rbp, rbp
	jne	.label_507
	mov	dword ptr [rbp - 0x8d0], 0x5f
.label_507:
	mov	rsp, rsp
	jmp	.label_123
.label_123:
	cmp	dword ptr [rbp - 0xa24], 0
	lea	rdi, [rdi]
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x7d1], al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xa24]
	mov	dword ptr [rbp - 0x4b0], ecx
.label_150:
	mov	byte ptr [rbp - 0xa15], 0
.label_386:
	mov	dword ptr [rbp - 0x6ec], 0
.label_461:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	mov	rsp, rsp
	jne	.label_531
	nop	
	test	byte ptr [rbp - 0x7d1], 1
	nop	
	jne	.label_531
	nop	
	jmp	.label_141
.label_531:
	lea	rax, [rbp - 0x680]
	add	rax, 0x17
	nop	
	mov	qword ptr [rbp - 0x5e0], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7d1], 1
	mov	rbp, rbp
	je	.label_537
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], eax
.label_537:
	mov	rbp, rbp
	jmp	.label_482
.label_482:
	mov	eax, dword ptr [rbp - 0x6ec]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_553
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x5e0], rcx
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0x3a
.label_553:
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x6ec]
	lea	rsi, [rsi]
	sar	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6ec], ecx
	mov	ecx, dword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x904], eax
	mov	eax, ecx
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x904]
	lea	rsi, [rsi]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x5e0]
	mov	r8, rdi
	add	r8, -1
	nop	
	mov	qword ptr [rbp - 0x5e0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x4b0]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4b0], eax
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4b0], 0
	mov	byte ptr [rbp - 0x6fd], al
	jne	.label_565
	cmp	dword ptr [rbp - 0x6ec], 0
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6fd], al
.label_565:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x6fd]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_482
	mov	rbp, rbp
	jmp	.label_500
.label_500:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x588]
	cmp	eax, dword ptr [rbp - 0x964]
	jge	.label_346
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x588], eax
.label_346:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7d1], 1
	je	.label_612
	mov	rbp, rbp
	mov	eax, 0x2d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x954], eax
	nop	
	jmp	.label_618
.label_612:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0xa15]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x954], eax
.label_618:
	mov	eax, dword ptr [rbp - 0x954]
	mov	cl, al
	mov	byte ptr [rbp - 0x801], cl
	cmp	dword ptr [rbp - 0x8d0], 0x2d
	jne	.label_627
	cmp	byte ptr [rbp - 0x801], 0
	lea	rsi, [rsi]
	je	.label_267
	jmp	.label_639
.label_639:
	mov	qword ptr [rbp - 0xa90], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_643
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_650
.label_643:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x14], eax
.label_650:
	mov	eax, dword ptr [rbp - 0x14]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb70], rcx
	mov	rcx, qword ptr [rbp - 0xa90]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0xb70]
	lea	rdi, [rdi]
	jae	.label_121
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb70]
	mov	qword ptr [rbp - 0xb48], rax
	nop	
	jmp	.label_214
.label_121:
	mov	rax, qword ptr [rbp - 0xa90]
	mov	qword ptr [rbp - 0xb48], rax
.label_214:
	mov	rax, qword ptr [rbp - 0xb48]
	mov	qword ptr [rbp - 0x9f8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x9f8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_151
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_132
.label_151:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_172
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_178
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa90]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xb70]
	nop	
	jae	.label_178
	movsxd	rax, dword ptr [rbp - 0x964]
	nop	
	sub	rax, qword ptr [rbp - 0xa90]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_189
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_199
.label_189:
	mov	rbp, rbp
	jmp	.label_205
.label_205:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa70], 0
.label_224:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	jae	.label_213
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0x5e4], eax
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa70], rax
	jmp	.label_224
.label_213:
	jmp	.label_166
.label_166:
	lea	rdi, [rdi]
	jmp	.label_230
.label_199:
	mov	rbp, rbp
	jmp	.label_232
.label_232:
	mov	qword ptr [rbp - 0x8d8], 0
.label_283:
	mov	rax, qword ptr [rbp - 0x8d8]
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jae	.label_238
	lea	rsi, [rsi]
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0xb7c], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8d8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x8d8], rax
	jmp	.label_283
.label_238:
	mov	rsp, rsp
	jmp	.label_256
.label_256:
	jmp	.label_230
.label_230:
	nop	
	jmp	.label_178
.label_178:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp - 0x801]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x908], eax
.label_172:
	mov	rax, qword ptr [rbp - 0x9f8]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_267
.label_267:
	lea	rsi, [rsi]
	jmp	.label_407
.label_627:
	nop	
	lea	rax, [rbp - 0x680]
	movsxd	rcx, dword ptr [rbp - 0x588]
	mov	rsp, rsp
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rbp, rbp
	sub	rcx, rax
	cmp	byte ptr [rbp - 0x801], 0
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
	mov	dword ptr [rbp - 0x4b4], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4b4], 0
	jle	.label_275
	cmp	dword ptr [rbp - 0x8d0], 0x5f
	lea	rdi, [rdi]
	jne	.label_307
	movsxd	rax, dword ptr [rbp - 0x4b4]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jb	.label_312
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_132
.label_312:
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_327
	mov	rsp, rsp
	jmp	.label_332
.label_332:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], 0
.label_352:
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x4b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_337
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x4cc], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], rax
	nop	
	jmp	.label_352
.label_337:
	jmp	.label_388
.label_388:
	jmp	.label_327
.label_327:
	movsxd	rax, dword ptr [rbp - 0x4b4]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	ecx, dword ptr [rbp - 0x964]
	cmp	ecx, dword ptr [rbp - 0x4b4]
	mov	rbp, rbp
	jle	.label_366
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x4b4]
	nop	
	mov	dword ptr [rbp - 0x628], eax
	lea	rsi, [rsi]
	jmp	.label_374
.label_366:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x628], eax
	mov	rsp, rsp
	jmp	.label_374
.label_374:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x628]
	mov	dword ptr [rbp - 0x964], eax
	cmp	byte ptr [rbp - 0x801], 0
	nop	
	je	.label_385
	jmp	.label_394
.label_394:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x738], 1
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_395
	xor	eax, eax
	mov	dword ptr [rbp - 0x508], eax
	mov	rbp, rbp
	jmp	.label_404
.label_395:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x508], eax
.label_404:
	mov	eax, dword ptr [rbp - 0x508]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x578], rcx
	mov	rcx, qword ptr [rbp - 0x738]
	cmp	rcx, qword ptr [rbp - 0x578]
	mov	rsp, rsp
	jae	.label_139
	nop	
	mov	rax, qword ptr [rbp - 0x578]
	nop	
	mov	qword ptr [rbp - 0xa00], rax
	jmp	.label_431
.label_139:
	nop	
	mov	rax, qword ptr [rbp - 0x738]
	mov	qword ptr [rbp - 0xa00], rax
.label_431:
	mov	rax, qword ptr [rbp - 0xa00]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x570], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x570]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_440
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_132
.label_440:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_453
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_458
	mov	rax, qword ptr [rbp - 0x738]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x578]
	jae	.label_458
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x738]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa80], rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_464
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_475
.label_464:
	jmp	.label_480
.label_480:
	mov	qword ptr [rbp - 0x818], 0
.label_493:
	mov	rax, qword ptr [rbp - 0x818]
	cmp	rax, qword ptr [rbp - 0xa80]
	jae	.label_484
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0xb88], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x818]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x818], rax
	lea	rsi, [rsi]
	jmp	.label_493
.label_484:
	jmp	.label_504
.label_504:
	mov	rsp, rsp
	jmp	.label_506
.label_475:
	mov	rsp, rsp
	jmp	.label_194
.label_194:
	nop	
	mov	qword ptr [rbp - 0x728], 0
.label_524:
	mov	rax, qword ptr [rbp - 0x728]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa80]
	jae	.label_512
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa64], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x728]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x728], rax
	lea	rdi, [rdi]
	jmp	.label_524
.label_512:
	jmp	.label_534
.label_534:
	jmp	.label_506
.label_506:
	jmp	.label_458
.label_458:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 0x801]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x8ac], eax
.label_453:
	nop	
	mov	rax, qword ptr [rbp - 0x570]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_385
.label_385:
	jmp	.label_550
.label_307:
	movsxd	rax, dword ptr [rbp - 0x588]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_552
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	jmp	.label_132
.label_552:
	cmp	byte ptr [rbp - 0x801], 0
	je	.label_184
	mov	rbp, rbp
	jmp	.label_567
.label_567:
	mov	qword ptr [rbp - 0x850], 1
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_568
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 0xadc], eax
	jmp	.label_573
.label_568:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0xadc], eax
.label_573:
	mov	eax, dword ptr [rbp - 0xadc]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x848], rcx
	mov	rcx, qword ptr [rbp - 0x850]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x848]
	jae	.label_577
	mov	rax, qword ptr [rbp - 0x848]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa8], rax
	jmp	.label_588
.label_577:
	mov	rax, qword ptr [rbp - 0x850]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa8], rax
.label_588:
	mov	rax, qword ptr [rbp - 0xaa8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4a0]
	mov	rcx, qword ptr [rbp - 0x558]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_598
	mov	qword ptr [rbp - 0xad8], 0
	mov	rsp, rsp
	jmp	.label_132
.label_598:
	cmp	qword ptr [rbp - 0xa58], 0
	lea	rdi, [rdi]
	je	.label_610
	nop	
	cmp	dword ptr [rbp - 0x588], 0
	lea	rdi, [rdi]
	jne	.label_171
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x850]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x848]
	jae	.label_171
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x6c0], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_459
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_540
.label_459:
	jmp	.label_632
.label_632:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
.label_656:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x6c0]
	mov	rsp, rsp
	jae	.label_638
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0x644], eax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_656
.label_638:
	mov	rbp, rbp
	jmp	.label_127
.label_127:
	jmp	.label_131
.label_540:
	lea	rsi, [rsi]
	jmp	.label_133
.label_133:
	mov	qword ptr [rbp - 0x530], 0
.label_276:
	mov	rax, qword ptr [rbp - 0x530]
	cmp	rax, qword ptr [rbp - 0x6c0]
	lea	rdi, [rdi]
	jae	.label_140
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x600], eax
	nop	
	mov	rax, qword ptr [rbp - 0x530]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x530], rax
	lea	rdi, [rdi]
	jmp	.label_276
.label_140:
	lea	rdi, [rdi]
	jmp	.label_165
.label_165:
	jmp	.label_131
.label_131:
	lea	rsi, [rsi]
	jmp	.label_171
.label_171:
	movsx	edi, byte ptr [rbp - 0x801]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x71c], eax
.label_610:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4a0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_184
.label_184:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_226
	jmp	.label_197
.label_197:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], 0
.label_216:
	mov	rax, qword ptr [rbp - 0x838]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x4b4]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_202
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0xa5c], eax
	mov	rax, qword ptr [rbp - 0x838]
	add	rax, 1
	mov	qword ptr [rbp - 0x838], rax
	lea	rsi, [rsi]
	jmp	.label_216
.label_202:
	jmp	.label_120
.label_120:
	mov	rsp, rsp
	jmp	.label_226
.label_226:
	movsxd	rax, dword ptr [rbp - 0x4b4]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x964], 0
.label_550:
	jmp	.label_236
.label_275:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0x801], 0
	nop	
	je	.label_239
	jmp	.label_242
.label_242:
	mov	qword ptr [rbp - 0x58], 1
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_244
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	jmp	.label_249
.label_244:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x34], eax
.label_249:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb40], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0xb40]
	nop	
	jae	.label_255
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb40]
	mov	qword ptr [rbp - 0x560], rax
	nop	
	jmp	.label_265
.label_255:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x560], rax
.label_265:
	mov	rax, qword ptr [rbp - 0x560]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7e0], rax
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_274
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_132
.label_274:
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rbp, rbp
	je	.label_290
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_297
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0xb40]
	mov	rsp, rsp
	jae	.label_297
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x998], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_311
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_319
.label_311:
	lea	rsi, [rsi]
	jmp	.label_324
.label_324:
	mov	qword ptr [rbp - 0x590], 0
.label_342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x998]
	jae	.label_330
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb20], eax
	mov	rax, qword ptr [rbp - 0x590]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x590], rax
	mov	rbp, rbp
	jmp	.label_342
.label_330:
	jmp	.label_356
.label_356:
	lea	rsi, [rsi]
	jmp	.label_357
.label_319:
	jmp	.label_360
.label_360:
	mov	qword ptr [rbp - 0x898], 0
.label_373:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x898]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x998]
	jae	.label_362
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c8], eax
	mov	rax, qword ptr [rbp - 0x898]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x898], rax
	jmp	.label_373
.label_362:
	jmp	.label_381
.label_381:
	mov	rbp, rbp
	jmp	.label_357
.label_357:
	jmp	.label_297
.label_297:
	movsx	edi, byte ptr [rbp - 0x801]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x7e8], eax
.label_290:
	mov	rax, qword ptr [rbp - 0x7e0]
	nop	
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_239
.label_239:
	mov	rbp, rbp
	jmp	.label_236
.label_236:
	mov	rbp, rbp
	jmp	.label_407
.label_407:
	jmp	.label_411
.label_411:
	lea	rax, [rbp - 0x680]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0x5e0]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa20], rax
	cmp	dword ptr [rbp - 0x964], 0
	mov	rbp, rbp
	jge	.label_414
	xor	eax, eax
	mov	dword ptr [rbp - 0x69c], eax
	lea	rsi, [rsi]
	jmp	.label_429
.label_414:
	mov	eax, dword ptr [rbp - 0x964]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x69c], eax
.label_429:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x69c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x698], rcx
	mov	rcx, qword ptr [rbp - 0xa20]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x698]
	jae	.label_583
	mov	rax, qword ptr [rbp - 0x698]
	mov	qword ptr [rbp - 0x5f8], rax
	jmp	.label_445
.label_583:
	mov	rax, qword ptr [rbp - 0xa20]
	mov	qword ptr [rbp - 0x5f8], rax
.label_445:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_320
	nop	
	mov	qword ptr [rbp - 0xad8], 0
	mov	rsp, rsp
	jmp	.label_132
.label_320:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_494
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_471
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa20]
	nop	
	cmp	rax, qword ptr [rbp - 0x698]
	lea	rsi, [rsi]
	jae	.label_471
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xa20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x900], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_483
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_629
.label_483:
	nop	
	jmp	.label_497
.label_497:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c8], 0
.label_511:
	mov	rax, qword ptr [rbp - 0x5c8]
	cmp	rax, qword ptr [rbp - 0x900]
	jae	.label_503
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x774], eax
	mov	rax, qword ptr [rbp - 0x5c8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x5c8], rax
	jmp	.label_511
.label_503:
	jmp	.label_517
.label_517:
	jmp	.label_521
.label_629:
	lea	rdi, [rdi]
	jmp	.label_523
.label_523:
	mov	qword ptr [rbp - 0xb18], 0
.label_536:
	mov	rax, qword ptr [rbp - 0xb18]
	cmp	rax, qword ptr [rbp - 0x900]
	lea	rdi, [rdi]
	jae	.label_529
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0x4fc], eax
	mov	rax, qword ptr [rbp - 0xb18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb18], rax
	nop	
	jmp	.label_536
.label_529:
	lea	rdi, [rdi]
	jmp	.label_544
.label_544:
	nop	
	jmp	.label_521
.label_521:
	jmp	.label_471
.label_471:
	lea	rdi, [rdi]
	jmp	.label_549
.label_549:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	je	.label_551
	nop	
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rdx, qword ptr [rbp - 0xa20]
	nop	
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_560
.label_551:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	je	.label_562
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	call	fwrite_uppcase
	jmp	.label_575
.label_562:
	nop	
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x5e0]
	mov	rsi, qword ptr [rbp - 0xa20]
	mov	rcx, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fwrite
	mov	qword ptr [rbp - 0xab8], rax
.label_575:
	mov	rbp, rbp
	jmp	.label_560
.label_560:
	mov	rsp, rsp
	jmp	.label_586
.label_586:
	lea	rdi, [rdi]
	jmp	.label_494
.label_494:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x718]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_336
.label_355:
	cmp	dword ptr [rbp - 0x63c], 0
	nop	
	je	.label_600
	jmp	.label_129
.label_600:
	cmp	dword ptr [rbp - 0x8d0], 0
	nop	
	jne	.label_317
	cmp	dword ptr [rbp - 0x964], 0
	mov	rbp, rbp
	jge	.label_317
	mov	dword ptr [rbp - 0x8d0], 0x2b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68c], 4
	jmp	.label_608
.label_317:
	mov	eax, dword ptr [rbp - 0x964]
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x68c], 0
	jge	.label_615
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68c], 0
.label_615:
	jmp	.label_608
.label_608:
	movabs	rax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x790], rax
	lea	rdi, [rdi]
	jmp	.label_623
.label_371:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_628
	jmp	.label_129
.label_628:
	jmp	.label_634
.label_634:
	mov	dword ptr [rbp - 0x588], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_123
.label_376:
	nop	
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_649
	mov	rbp, rbp
	jmp	.label_129
.label_649:
	mov	rbp, rbp
	jmp	.label_117
.label_117:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0xa24], eax
	nop	
	jmp	.label_123
.label_548:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_136
	jmp	.label_129
.label_136:
	jmp	.label_144
.label_144:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_146
.label_557:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_156
	lea	rdi, [rdi]
	jmp	.label_129
.label_156:
	jmp	.label_163
.label_163:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0xa24], eax
	lea	rsi, [rsi]
	jmp	.label_146
.label_541:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_403
	jmp	.label_129
.label_403:
	nop	
	jmp	.label_183
.label_183:
	mov	dword ptr [rbp - 0x588], 3
	mov	rax, qword ptr [rbp - 0x708]
	nop	
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rax, qword ptr [rbp - 0x708]
	nop	
	mov	edx, dword ptr [rax + 0x1c]
	nop	
	add	edx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], edx
	lea	rdi, [rdi]
	jmp	.label_150
.label_384:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_228
	mov	rbp, rbp
	jmp	.label_129
.label_228:
	jmp	.label_212
.label_212:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_123
.label_563:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_220
	lea	rdi, [rdi]
	jmp	.label_129
.label_220:
	mov	rbp, rbp
	jmp	.label_134
.label_134:
	nop	
	mov	dword ptr [rbp - 0x588], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x708]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rax, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	add	edx, 1
	mov	dword ptr [rbp - 0x4b0], edx
	jmp	.label_150
.label_391:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rsi, [rsi]
	jne	.label_246
	jmp	.label_129
.label_246:
	nop	
	mov	eax, dword ptr [rbp - 0x4ac]
	mov	dword ptr [rbp - 0xa24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x964], -1
	lea	rdi, [rdi]
	jne	.label_252
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x964], 9
	jmp	.label_258
.label_252:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9f0], eax
.label_271:
	nop	
	cmp	dword ptr [rbp - 0x9f0], 9
	jge	.label_421
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4d8], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x4d8]
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa24], eax
	mov	eax, dword ptr [rbp - 0x9f0]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x9f0], eax
	jmp	.label_271
.label_421:
	jmp	.label_258
.label_258:
	jmp	.label_287
.label_287:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x588], eax
	nop	
	mov	eax, dword ptr [rbp - 0xa24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_123
.label_570:
	jmp	.label_301
.label_301:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x868], 1
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_305
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x794], eax
	nop	
	jmp	.label_315
.label_305:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x794], eax
.label_315:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb78], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x868]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0xb78]
	lea	rsi, [rsi]
	jae	.label_326
	mov	rax, qword ptr [rbp - 0xb78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_340
.label_326:
	mov	rax, qword ptr [rbp - 0x868]
	mov	qword ptr [rbp - 0x40], rax
.label_340:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x760], rax
	mov	rax, qword ptr [rbp - 0x760]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_349
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_132
.label_349:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	lea	rsi, [rsi]
	je	.label_437
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_423
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x868]
	cmp	rax, qword ptr [rbp - 0xb78]
	mov	rsp, rsp
	jae	.label_423
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x868]
	nop	
	mov	qword ptr [rbp - 0xa08], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x30
	lea	rdi, [rdi]
	je	.label_383
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_393
.label_383:
	jmp	.label_401
.label_401:
	mov	qword ptr [rbp - 0x78], 0
.label_418:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa08]
	lea	rdi, [rdi]
	jae	.label_620
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5e8], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_418
.label_620:
	jmp	.label_430
.label_430:
	lea	rdi, [rdi]
	jmp	.label_402
.label_393:
	lea	rdi, [rdi]
	jmp	.label_233
.label_233:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x920], 0
.label_303:
	mov	rax, qword ptr [rbp - 0x920]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xa08]
	jae	.label_427
	nop	
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0x30], eax
	mov	rax, qword ptr [rbp - 0x920]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x920], rax
	jmp	.label_303
.label_427:
	mov	rbp, rbp
	jmp	.label_387
.label_387:
	lea	rsi, [rsi]
	jmp	.label_402
.label_402:
	jmp	.label_423
.label_423:
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x6cc], eax
.label_437:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x760]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_336
.label_400:
	mov	byte ptr [rbp - 0x909], 1
	mov	dword ptr [rbp - 0x7a4], 0x70
.label_642:
	test	byte ptr [rbp - 0x549], 1
	je	.label_474
	mov	byte ptr [rbp - 0xb19], 0
	nop	
	mov	byte ptr [rbp - 0x909], 1
.label_474:
	mov	rbp, rbp
	jmp	.label_141
.label_584:
	mov	rsp, rsp
	jmp	.label_485
.label_485:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 1
	mov	byte ptr [rbp - 0x7d1], 0
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	imul	ecx, dword ptr [rax + 0x10], 0xb
	mov	rsp, rsp
	sar	ecx, 5
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x4b0], ecx
	jmp	.label_150
.label_415:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.3_1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_424
.label_589:
	jmp	.label_141
.label_422:
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rsi, [rsi]
	jne	.label_207
	mov	rsp, rsp
	jmp	.label_129
.label_207:
	lea	rsi, [rsi]
	jmp	.label_515
.label_515:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_123
.label_595:
	nop	
	lea	rax, [rbp - 0x9d8]
	mov	rsp, rsp
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xb98]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	mktime_z
	lea	rdx, [rbp - 0x680]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f8], rax
	add	rdx, 0x17
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e0], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x6f8], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x7d1], r8b
.label_160:
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6f8]
	nop	
	cqo	
	idiv	rcx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x870], esi
	mov	rdx, qword ptr [rbp - 0x6f8]
	mov	rsp, rsp
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x6f8], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7d1], 1
	mov	rsp, rsp
	je	.label_125
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x870]
	mov	dword ptr [rbp - 0x978], eax
	mov	rsp, rsp
	jmp	.label_572
.label_125:
	nop	
	mov	eax, dword ptr [rbp - 0x870]
	mov	dword ptr [rbp - 0x978], eax
.label_572:
	mov	eax, dword ptr [rbp - 0x978]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5e0]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -1
	mov	qword ptr [rbp - 0x5e0], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx - 1], cl
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x6f8], 0
	jne	.label_160
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x588], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa15], 0
	mov	rsp, rsp
	jmp	.label_500
.label_206:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	lea	rdi, [rdi]
	jne	.label_604
	mov	rsp, rsp
	jmp	.label_129
.label_604:
	jmp	.label_141
.label_433:
	movabs	rax, OFFSET FLAT:.str.4_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_424
.label_648:
	jmp	.label_410
.label_410:
	mov	qword ptr [rbp - 0xb90], 1
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_419
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x4d0], eax
	mov	rbp, rbp
	jmp	.label_321
.label_419:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x4d0], eax
.label_321:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4d0]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8c8], rcx
	mov	rcx, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x8c8]
	jae	.label_624
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x8c8]
	mov	qword ptr [rbp - 0xac0], rax
	mov	rbp, rbp
	jmp	.label_635
.label_624:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xac0], rax
.label_635:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xac0]
	mov	qword ptr [rbp - 0x858], rax
	mov	rax, qword ptr [rbp - 0x858]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	nop	
	cmp	rax, rcx
	jb	.label_653
	mov	qword ptr [rbp - 0xad8], 0
	nop	
	jmp	.label_132
.label_653:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rsp, rsp
	je	.label_137
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_147
	mov	rax, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x8c8]
	lea	rdi, [rdi]
	jae	.label_147
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x890], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_158
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_379
.label_158:
	jmp	.label_177
.label_177:
	mov	qword ptr [rbp - 0x510], 0
.label_195:
	mov	rax, qword ptr [rbp - 0x510]
	nop	
	cmp	rax, qword ptr [rbp - 0x890]
	lea	rdi, [rdi]
	jae	.label_182
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa30], eax
	mov	rax, qword ptr [rbp - 0x510]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x510], rax
	jmp	.label_195
.label_182:
	mov	rbp, rbp
	jmp	.label_204
.label_204:
	jmp	.label_231
.label_379:
	lea	rsi, [rsi]
	jmp	.label_377
.label_377:
	mov	qword ptr [rbp - 0x8a8], 0
.label_636:
	mov	rax, qword ptr [rbp - 0x8a8]
	cmp	rax, qword ptr [rbp - 0x890]
	nop	
	jae	.label_527
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x4ec], eax
	nop	
	mov	rax, qword ptr [rbp - 0x8a8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x8a8], rax
	mov	rsp, rsp
	jmp	.label_636
.label_527:
	jmp	.label_174
.label_174:
	jmp	.label_231
.label_231:
	mov	rbp, rbp
	jmp	.label_147
.label_147:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac8], eax
.label_137:
	mov	rax, qword ptr [rbp - 0x858]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	nop	
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rdi, [rdi]
	jmp	.label_336
.label_609:
	jmp	.label_251
.label_251:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x588], 1
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x18]
	nop	
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0xacc], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xacc]
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], edx
	lea	rdi, [rdi]
	jmp	.label_123
.label_441:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_273
	mov	rsp, rsp
	jmp	.label_129
.label_273:
	jmp	.label_277
.label_277:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xac4], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xac4]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_123
.label_363:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rdi, [rdi]
	jne	.label_310
	mov	rsp, rsp
	jmp	.label_129
.label_310:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x538], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x708]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5bc], eax
	cmp	dword ptr [rbp - 0x5bc], 0
	nop	
	jge	.label_344
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x538]
	nop	
	sub	edi, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6a8], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x6a8]
	lea	rsi, [rsi]
	idiv	edi
	cmp	edx, 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa2c], esi
	mov	byte ptr [rbp - 0x7b5], cl
	jne	.label_350
	nop	
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x538]
	mov	rsp, rsp
	sub	edx, 1
	mov	byte ptr [rbp - 0xb61], al
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xb61]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x859], sil
	lea	rsi, [rsi]
	jne	.label_479
	nop	
	mov	eax, 0x190
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x538]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x500], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x500]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x859], sil
.label_479:
	mov	al, byte ptr [rbp - 0x859]
	mov	byte ptr [rbp - 0x7b5], al
.label_350:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7b5]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	nop	
	mov	edx, dword ptr [rbp - 0xa2c]
	add	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x708]
	mov	esi, dword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	edi, edx
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5bc], eax
	mov	rsp, rsp
	jmp	.label_434
.label_344:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x708]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x538]
	mov	dword ptr [rbp - 0x5fc], eax
	mov	eax, edi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x5fc]
	lea	rdi, [rdi]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x514], esi
	mov	byte ptr [rbp - 0x489], cl
	mov	rbp, rbp
	jne	.label_436
	nop	
	mov	al, 1
	mov	ecx, 0x64
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x538]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x35], al
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x74a], sil
	jne	.label_454
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x538]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5f0], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0x5f0]
	mov	rbp, rbp
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x74a], sil
.label_454:
	mov	al, byte ptr [rbp - 0x74a]
	mov	byte ptr [rbp - 0x489], al
.label_436:
	mov	al, byte ptr [rbp - 0x489]
	and	al, 1
	movzx	ecx, al
	nop	
	add	ecx, 0x16d
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x514]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x708]
	mov	rbp, rbp
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb10], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0xb10]
	nop	
	jg	.label_498
	nop	
	mov	dword ptr [rbp - 0x18], 1
	nop	
	mov	eax, dword ptr [rbp - 0xb10]
	mov	dword ptr [rbp - 0x5bc], eax
.label_498:
	mov	rsp, rsp
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x950], ecx
	mov	dword ptr [rbp - 0x6c], edx
	je	.label_513
	mov	rsp, rsp
	jmp	.label_518
.label_518:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x6d4], eax
	jne	.label_284
	mov	rsp, rsp
	jmp	.label_532
.label_532:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x758], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x758]
	nop	
	idiv	esi
	add	edx, dword ptr [rbp - 0x18]
	mov	eax, edx
	cdq	
	nop	
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0x914], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x588], 2
	mov	byte ptr [rbp - 0x7d1], 0
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x914]
	lea	rdi, [rdi]
	jg	.label_533
	mov	eax, dword ptr [rbp - 0x914]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_554
.label_533:
	mov	rbp, rbp
	mov	eax, 0xfffff894
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x18]
	cmp	edx, eax
	jge	.label_558
	xor	eax, eax
	nop	
	sub	eax, dword ptr [rbp - 0x914]
	mov	dword ptr [rbp - 0xaac], eax
	jmp	.label_564
.label_558:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x914]
	nop	
	add	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xaac], eax
.label_564:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xaac]
	mov	dword ptr [rbp - 0x5c], eax
.label_554:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_155
.label_513:
	jmp	.label_576
.label_576:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x588], 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7d1], sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x708]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_155
.label_284:
	jmp	.label_601
.label_601:
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x588], 2
	mov	ecx, dword ptr [rbp - 0x5bc]
	mov	dword ptr [rbp - 0xb2c], eax
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xb2c]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_123
.label_397:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_614
	jmp	.label_129
.label_614:
	jmp	.label_294
.label_294:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x588], 2
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	nop	
	mov	esi, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	sub	esi, 1
	add	esi, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6b4], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x98c], edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0x6b4]
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x98c]
	mov	rsp, rsp
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_123
.label_657:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_651
	lea	rsi, [rsi]
	jmp	.label_129
.label_651:
	jmp	.label_119
.label_119:
	mov	dword ptr [rbp - 0x588], 1
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_123
.label_468:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_135
	lea	rsi, [rsi]
	jmp	.label_141
.label_135:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x4f
	lea	rsi, [rsi]
	jne	.label_145
	mov	rbp, rbp
	jmp	.label_129
.label_145:
	jmp	.label_152
.label_152:
	mov	dword ptr [rbp - 0x588], 4
	mov	rax, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rax, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rax + 0x14]
	mov	rsp, rsp
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x4b0], edx
	jmp	.label_155
.label_522:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rbp, rbp
	jne	.label_406
	jmp	.label_141
.label_406:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7e4], eax
	nop	
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0x7e4]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], edx
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_185
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_578
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6b8], eax
	mov	rsp, rsp
	jmp	.label_208
.label_578:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x6b8], eax
.label_208:
	mov	eax, dword ptr [rbp - 0x6b8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_185:
	jmp	.label_217
.label_217:
	mov	dword ptr [rbp - 0x588], 2
	mov	byte ptr [rbp - 0x7d1], 0
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4b0], eax
	mov	rsp, rsp
	jmp	.label_155
.label_477:
	test	byte ptr [rbp - 0x549], 1
	lea	rsi, [rsi]
	je	.label_227
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb19], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x909], 1
.label_227:
	mov	rsp, rsp
	jmp	.label_218
.label_218:
	mov	rdi, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_243
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa38], eax
	mov	rsp, rsp
	jmp	.label_291
.label_243:
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa38], eax
.label_291:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa38]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9e8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4a8]
	cmp	rcx, qword ptr [rbp - 0x9e8]
	jae	.label_257
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x9e8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb58], rax
	lea	rdi, [rdi]
	jmp	.label_269
.label_257:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	qword ptr [rbp - 0xb58], rax
.label_269:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a0], rax
	mov	rax, qword ptr [rbp - 0x7a0]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	nop	
	jb	.label_281
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_132
.label_281:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_443
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_306
	mov	rax, qword ptr [rbp - 0x4a8]
	nop	
	cmp	rax, qword ptr [rbp - 0x9e8]
	jae	.label_306
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x4a8]
	mov	qword ptr [rbp - 0xa78], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_318
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_328
.label_318:
	mov	rbp, rbp
	jmp	.label_334
.label_334:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x520], 0
.label_354:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x520]
	nop	
	cmp	rax, qword ptr [rbp - 0xa78]
	jae	.label_339
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4d4], eax
	mov	rax, qword ptr [rbp - 0x520]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x520], rax
	lea	rdi, [rdi]
	jmp	.label_354
.label_339:
	nop	
	jmp	.label_365
.label_365:
	lea	rdi, [rdi]
	jmp	.label_367
.label_328:
	jmp	.label_368
.label_368:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x608], 0
.label_380:
	mov	rax, qword ptr [rbp - 0x608]
	nop	
	cmp	rax, qword ptr [rbp - 0xa78]
	jae	.label_372
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x4dc], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, 1
	mov	qword ptr [rbp - 0x608], rax
	mov	rbp, rbp
	jmp	.label_380
.label_372:
	jmp	.label_389
.label_389:
	jmp	.label_367
.label_367:
	jmp	.label_306
.label_306:
	jmp	.label_392
.label_392:
	test	byte ptr [rbp - 0x909], 1
	je	.label_585
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x4c0]
	mov	rdx, qword ptr [rbp - 0x4a8]
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_408
.label_585:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	je	.label_659
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x4c0]
	mov	rdx, qword ptr [rbp - 0x4a8]
	call	fwrite_uppcase
	nop	
	jmp	.label_428
.label_659:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x4c0]
	mov	rsi, qword ptr [rbp - 0x4a8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa58]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8c0], rax
.label_428:
	mov	rsp, rsp
	jmp	.label_408
.label_408:
	jmp	.label_442
.label_442:
	jmp	.label_443
.label_443:
	mov	rax, qword ptr [rbp - 0x7a0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rdi, [rdi]
	jmp	.label_336
.label_300:
	mov	qword ptr [rbp - 0x7b0], 1
.label_465:
	mov	rax, qword ptr [rbp - 0x7b0]
	nop	
	mov	rcx, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x3a
	jne	.label_455
	nop	
	jmp	.label_462
.label_462:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7b0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_465
.label_455:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	rcx, qword ptr [rbp - 0x7c0]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x7a
	je	.label_469
	jmp	.label_129
.label_469:
	mov	rax, qword ptr [rbp - 0x7b0]
	add	rax, qword ptr [rbp - 0x7c0]
	nop	
	mov	qword ptr [rbp - 0x7c0], rax
	lea	rsi, [rsi]
	jmp	.label_478
.label_633:
	mov	qword ptr [rbp - 0x7b0], 0
.label_478:
	nop	
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_488
	jmp	.label_336
.label_488:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x708]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x82c], edx
	cmp	dword ptr [rbp - 0x82c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], al
	jl	.label_496
	xor	eax, eax
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x82c], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9e9], cl
	jne	.label_162
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x9e9], dl
.label_162:
	nop	
	mov	al, byte ptr [rbp - 0x9e9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], al
.label_496:
	mov	al, byte ptr [rbp - 0x7f1]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x7d1], al
	movsxd	rcx, dword ptr [rbp - 0x82c]
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
	mov	dword ptr [rbp - 0xa84], edx
	movsxd	rcx, dword ptr [rbp - 0x82c]
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
	mov	dword ptr [rbp - 0x750], esi
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x82c]
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
	mov	dword ptr [rbp - 0x60c], edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x7b0]
	mov	r8, rcx
	sub	r8, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b0], rcx
	nop	
	mov	qword ptr [rbp - 0x5b8], r8
	ja	.label_594
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6b0]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_597]]
	jmp	rcx
.label_5709:
	mov	rbp, rbp
	jmp	.label_602
.label_602:
	mov	dword ptr [rbp - 0x588], 5
	mov	dword ptr [rbp - 0x6ec], 0
	nop	
	imul	eax, dword ptr [rbp - 0xa84], 0x64
	add	eax, dword ptr [rbp - 0x750]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_122
.label_5710:
	mov	rbp, rbp
	jmp	.label_611
.label_611:
	jmp	.label_613
.label_613:
	mov	dword ptr [rbp - 0x588], 6
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6ec], 4
	imul	eax, dword ptr [rbp - 0xa84], 0x64
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x750]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_122
.label_5711:
	mov	rsp, rsp
	jmp	.label_619
.label_619:
	jmp	.label_625
.label_625:
	mov	dword ptr [rbp - 0x588], 9
	mov	dword ptr [rbp - 0x6ec], 0x14
	imul	eax, dword ptr [rbp - 0xa84], 0x2710
	imul	ecx, dword ptr [rbp - 0x750], 0x64
	mov	rbp, rbp
	add	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x60c]
	mov	dword ptr [rbp - 0x4b0], eax
	lea	rdi, [rdi]
	jmp	.label_122
.label_5712:
	cmp	dword ptr [rbp - 0x60c], 0
	mov	rbp, rbp
	je	.label_646
	nop	
	jmp	.label_619
.label_646:
	cmp	dword ptr [rbp - 0x750], 0
	je	.label_654
	jmp	.label_611
.label_654:
	nop	
	jmp	.label_118
.label_118:
	mov	dword ptr [rbp - 0x588], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6ec], 0
	mov	eax, dword ptr [rbp - 0xa84]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_122
.label_594:
	lea	rsi, [rsi]
	jmp	.label_129
.label_282:
	mov	rax, qword ptr [rbp - 0x7c0]
	add	rax, -1
	mov	qword ptr [rbp - 0x7c0], rax
.label_645:
	jmp	.label_129
.label_129:
	mov	dword ptr [rbp - 0x754], 1
.label_170:
	mov	eax, 1
	nop	
	sub	eax, dword ptr [rbp - 0x754]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	mov	rsp, rsp
	je	.label_153
	jmp	.label_167
.label_167:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x754]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x754], eax
	jmp	.label_170
.label_153:
	jmp	.label_181
.label_181:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x754]
	mov	qword ptr [rbp - 0x5a8], rax
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_425
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4b8], eax
	jmp	.label_188
.label_425:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x4b8], eax
.label_188:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x770], rcx
	mov	rcx, qword ptr [rbp - 0x5a8]
	cmp	rcx, qword ptr [rbp - 0x770]
	jae	.label_198
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x770]
	mov	qword ptr [rbp - 0xb60], rax
	jmp	.label_519
.label_198:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5a8]
	mov	qword ptr [rbp - 0xb60], rax
.label_519:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb60]
	mov	qword ptr [rbp - 0xaf8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xaf8]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jb	.label_222
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_132
.label_222:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_237
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x588], 0
	mov	rbp, rbp
	jne	.label_241
	mov	rax, qword ptr [rbp - 0x5a8]
	cmp	rax, qword ptr [rbp - 0x770]
	lea	rsi, [rsi]
	jae	.label_241
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x5a8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	mov	rsp, rsp
	je	.label_309
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_259
.label_309:
	mov	rsp, rsp
	jmp	.label_266
.label_266:
	mov	qword ptr [rbp - 0x488], 0
.label_280:
	mov	rax, qword ptr [rbp - 0x488]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_270
	lea	rsi, [rsi]
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x614], eax
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x488], rax
	jmp	.label_280
.label_270:
	lea	rsi, [rsi]
	jmp	.label_286
.label_286:
	lea	rsi, [rsi]
	jmp	.label_288
.label_259:
	mov	rsp, rsp
	jmp	.label_292
.label_292:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb08], 0
.label_605:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb08]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_298
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0xb84], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb08]
	add	rax, 1
	mov	qword ptr [rbp - 0xb08], rax
	jmp	.label_605
.label_298:
	jmp	.label_176
.label_176:
	jmp	.label_288
.label_288:
	jmp	.label_241
.label_241:
	nop	
	jmp	.label_201
.label_201:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	je	.label_329
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x754]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x7c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	mov	rsi, rcx
	mov	rbp, rbp
	call	fwrite_lowcase
	mov	rsp, rsp
	jmp	.label_348
.label_329:
	test	byte ptr [rbp - 0xb19], 1
	nop	
	je	.label_353
	mov	eax, 1
	nop	
	mov	rdi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x754]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x7c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	fwrite_uppcase
	lea	rsi, [rsi]
	jmp	.label_370
.label_353:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x754]
	mov	rbp, rbp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x7c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x5a8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8f8], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x8f8]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x970], rax
.label_370:
	jmp	.label_348
.label_348:
	jmp	.label_396
.label_396:
	jmp	.label_237
.label_237:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xaf8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_336
.label_336:
	jmp	.label_412
.label_412:
	mov	dword ptr [rbp - 0x964], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_416
.label_466:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xad8], rax
.label_132:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xad8]
	lea	rdi, [rdi]
	add	rsp, 0xba0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408460

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
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
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	tolower
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 1
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_660
.label_661:
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4084e0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
.label_662:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	jbe	.label_663
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	call	toupper
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, eax
	nop	
	call	fputc
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_662
.label_663:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408560

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], esi
	mov	dword ptr [rbp - 4], 0x17a
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	sub	edi, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	edi, 4
	nop	
	add	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085c0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408600
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
	lea	rdi, [rbp - 0x10]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408650

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_666
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4087a0

	.globl yyparse
	.type yyparse, @function
yyparse:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xdf0
	nop	
	lea	rax, [rbp - 0xb70]
	lea	rcx, [rbp - 0x220]
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:yyparse.yyval_default
	mov	rbp, rbp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	r8d, esi
	mov	rbp, rbp
	lea	r9, [rbp - 0x38]
	mov	qword ptr [rbp - 0x5c0], rdi
	mov	rdi, r9
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	mov	rdx, r8
	mov	qword ptr [rbp - 0x648], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc70], rax
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], 0
	mov	dword ptr [rbp - 0x22c], 0
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x5b0], rax
	mov	qword ptr [rbp - 0x418], rax
	mov	rcx, qword ptr [rbp - 0xc70]
	mov	qword ptr [rbp - 0xc48], rcx
	nop	
	mov	qword ptr [rbp - 0x258], rcx
	mov	qword ptr [rbp - 0x5e8], 0x14
	mov	dword ptr [rbp - 0x4d4], 0
	nop	
	mov	dword ptr [rbp - 0x68c], 0
	mov	dword ptr [rbp - 0xc50], 0
	mov	dword ptr [rbp - 0xcac], 0xfffffffe
	jmp	.label_1244
.label_903:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x418]
	add	rax, 2
	mov	qword ptr [rbp - 0x418], rax
.label_1244:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4d4]
	nop	
	mov	cx, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x418]
	mov	word ptr [rdx], cx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5b0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5e8]
	nop	
	shl	rsi, 1
	mov	rbp, rbp
	add	rdx, rsi
	add	rdx, -2
	cmp	rdx, qword ptr [rbp - 0x418]
	ja	.label_1285
	lea	rdi, [rdi]
	mov	eax, 0x14
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5b0]
	mov	rbp, rbp
	sub	rdx, rsi
	sar	rdx, 1
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc60], rdx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	mov	rsp, rsp
	ja	.label_1304
	nop	
	jmp	.label_1321
.label_1304:
	mov	eax, 0x14
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5e8]
	nop	
	shl	rdx, 1
	mov	qword ptr [rbp - 0x5e8], rdx
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_1323
	mov	qword ptr [rbp - 0x5e8], 0x14
.label_1323:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	qword ptr [rbp - 0x650], rax
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x5e8], 0x3a
	add	rax, 0x37
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0xc68], rax
	cmp	qword ptr [rbp - 0xc68], 0
	jne	.label_1334
	jmp	.label_1321
.label_1334:
	jmp	.label_1342
.label_1342:
	mov	eax, 0x38
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc68]
	nop	
	mov	rsi, qword ptr [rbp - 0x5b0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc60]
	nop	
	shl	rdi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc38], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0xc38]
	mov	qword ptr [rbp - 0x408], rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xc68]
	mov	qword ptr [rbp - 0x5b0], rcx
	mov	rcx, qword ptr [rbp - 0x5e8]
	shl	rcx, 1
	mov	rsp, rsp
	add	rcx, 0x37
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rax, qword ptr [rbp - 0x3c0]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0x408]
	mov	rbp, rbp
	div	rcx
	lea	rsi, [rsi]
	imul	rax, rax, 0x38
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xc68]
	mov	qword ptr [rbp - 0xc68], rax
	mov	rsp, rsp
	jmp	.label_1479
.label_1479:
	mov	eax, 0x38
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xc68]
	mov	rsi, qword ptr [rbp - 0xc48]
	lea	rsi, [rsi]
	imul	rdi, qword ptr [rbp - 0xc60], 0x38
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5d0], rdi
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5d0]
	mov	qword ptr [rbp - 0x5a8], rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc48], rcx
	imul	rcx, qword ptr [rbp - 0x5e8], 0x38
	add	rcx, 0x37
	mov	qword ptr [rbp - 0x538], rcx
	mov	rax, qword ptr [rbp - 0x538]
	xor	r8d, r8d
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0x5a8]
	nop	
	div	rcx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0xc68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc68], rax
	lea	rax, [rbp - 0x220]
	mov	rcx, qword ptr [rbp - 0x650]
	cmp	rcx, rax
	mov	rsp, rsp
	je	.label_1396
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_1396:
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	rcx, qword ptr [rbp - 0xc60]
	mov	rbp, rbp
	shl	rcx, 1
	nop	
	add	rax, rcx
	add	rax, -2
	mov	qword ptr [rbp - 0x418], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc48]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0xc60], 0x38
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x258], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	rcx, qword ptr [rbp - 0x5e8]
	shl	rcx, 1
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	add	rax, -2
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x418]
	mov	rsp, rsp
	ja	.label_1436
	lea	rdi, [rdi]
	jmp	.label_823
.label_1436:
	lea	rdi, [rdi]
	jmp	.label_1285
.label_1285:
	cmp	dword ptr [rbp - 0x4d4], 0xc
	mov	rbp, rbp
	jne	.label_1464
	lea	rdi, [rdi]
	jmp	.label_1468
.label_1464:
	jmp	.label_1470
.label_1470:
	movsxd	rax, dword ptr [rbp - 0x4d4]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x410], ecx
	cmp	dword ptr [rbp - 0x410], -0x5d
	jne	.label_1471
	mov	rsp, rsp
	jmp	.label_1481
.label_1471:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcac], -2
	mov	rbp, rbp
	jne	.label_1484
	lea	rdi, [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x5c0]
	call	yylex
	nop	
	mov	dword ptr [rbp - 0xcac], eax
.label_1484:
	cmp	dword ptr [rbp - 0xcac], 0
	jg	.label_1494
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], 0
	nop	
	mov	dword ptr [rbp - 0xcac], 0
	lea	rsi, [rsi]
	jmp	.label_1498
.label_1494:
	nop	
	cmp	dword ptr [rbp - 0xcac], 0x115
	ja	.label_1383
	movsxd	rax, dword ptr [rbp - 0xcac]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	nop	
	mov	dword ptr [rbp - 0xc3c], ecx
	jmp	.label_1518
.label_1383:
	mov	eax, 2
	mov	dword ptr [rbp - 0xc3c], eax
	mov	rsp, rsp
	jmp	.label_1518
.label_1518:
	nop	
	mov	eax, dword ptr [rbp - 0xc3c]
	mov	dword ptr [rbp - 0x1b4], eax
.label_1498:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	add	eax, dword ptr [rbp - 0x410]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x410], eax
	cmp	dword ptr [rbp - 0x410], 0
	lea	rsi, [rsi]
	jl	.label_1531
	mov	eax, 0x70
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x410]
	jl	.label_1531
	movsxd	rax, dword ptr [rbp - 0x410]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	nop	
	cmp	ecx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	je	.label_1576
.label_1531:
	jmp	.label_1481
.label_1576:
	movsxd	rax, dword ptr [rbp - 0x410]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x410], ecx
	cmp	dword ptr [rbp - 0x410], 0
	jg	.label_1557
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x410]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x410], eax
	lea	rsi, [rsi]
	jmp	.label_1562
.label_1557:
	cmp	dword ptr [rbp - 0x68c], 0
	lea	rsi, [rsi]
	je	.label_1566
	mov	eax, dword ptr [rbp - 0x68c]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68c], eax
.label_1566:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x38]
	mov	dword ptr [rbp - 0xcac], 0xfffffffe
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x410]
	mov	dword ptr [rbp - 0x4d4], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	add	rsi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x258], rsi
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	jmp	.label_903
.label_1481:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yydefact]]
	mov	dword ptr [rbp - 0x410], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x410], 0
	lea	rsi, [rsi]
	jne	.label_1584
	mov	rbp, rbp
	jmp	.label_1592
.label_1584:
	jmp	.label_1562
.label_1562:
	movsxd	rax, dword ptr [rbp - 0x410]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rax + yyr2]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x22c], ecx
	mov	rbp, rbp
	mov	edx, 1
	sub	edx, ecx
	nop	
	movsxd	rax, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + rax + 0x30]
	mov	qword ptr [rbp - 0x270], rdi
	movups	xmm0, xmmword ptr [rsi + rax]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rsi + rax + 0x10]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rsi + rax + 0x20]
	nop	
	movaps	xmmword ptr [rbp - 0x280], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x290], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x2a0], xmm0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x410]
	add	ecx, -4
	lea	rsi, [rsi]
	mov	eax, ecx
	sub	ecx, 0x57
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rax
	mov	dword ptr [rbp - 0xc4c], ecx
	mov	rbp, rbp
	ja	.label_1594
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x240]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1635]]
	lea	rdi, [rdi]
	jmp	rcx
.label_5730:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x58], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	byte ptr [rax + 0xa0], 1
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_668
.label_5731:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_4
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xa8]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_668
.label_5732:
	movabs	rdi, OFFSET FLAT:.str.2_2
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	lea	rsi, [rsi]
	jmp	.label_668
.label_5733:
	movabs	rdi, OFFSET FLAT:.str.3_2
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb8], rcx
	nop	
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_668
.label_5734:
	movabs	rdi, OFFSET FLAT:.str.4_2
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xd0]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	nop	
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	debug_print_current_time
	nop	
	jmp	.label_668
.label_5735:
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xa8]
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_668
.label_5736:
	nop	
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xb0]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb0], rcx
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	mov	rsp, rsp
	call	debug_print_current_time
	jmp	.label_668
.label_5737:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	nop	
	call	debug_print_relative_time
	jmp	.label_668
.label_5738:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_current_time
	nop	
	jmp	.label_668
.label_5739:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_relative_time
	jmp	.label_668
.label_5740:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x1c], eax
	nop	
	jmp	.label_668
.label_5741:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x1c], eax
	mov	rbp, rbp
	jmp	.label_668
.label_5742:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rax - 0xa0]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	r8d, eax
	call	set_hhmmss
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x1c], r8d
	mov	rbp, rbp
	jmp	.label_668
.label_5743:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdx - 0x30]
	nop	
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x1c], 2
	lea	rsi, [rsi]
	jmp	.label_668
.label_5744:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdx - 0xa0]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x1c], 2
	jmp	.label_668
.label_5745:
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rax - 0xa0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax - 0x38]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	r8d, eax
	call	set_hhmmss
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x1c], 2
	jmp	.label_668
.label_5746:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0xd0]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rax, qword ptr [rbp - 0x258]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x258]
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
	jne	.label_959
	jmp	.label_823
.label_959:
	jmp	.label_668
.label_5747:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x14], ecx
	jmp	.label_668
.label_5748:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x14], 1
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0xc0]
	add	rcx, 1
	mov	qword ptr [rax + 0xc0], rcx
	jmp	.label_668
.label_5749:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x18], ecx
	lea	rsi, [rsi]
	jmp	.label_668
.label_5750:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x18], 0x6270
	jmp	.label_668
.label_5751:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], edx
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	dword ptr [rbp - 0x59c], eax
	lea	rsi, [rsi]
	call	apply_relative_time
	test	al, 1
	jne	.label_1038
	jmp	.label_823
.label_1038:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rbp, rbp
	jmp	.label_668
.label_5752:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], 0x6270
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	dword ptr [rbp - 0x328], eax
	call	apply_relative_time
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1085
	mov	rbp, rbp
	jmp	.label_823
.label_1085:
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rsp, rsp
	jmp	.label_668
.label_5753:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rax, -0x38
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
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
	jne	.label_1120
	lea	rsi, [rsi]
	jmp	.label_823
.label_1120:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1058
	jmp	.label_1125
.label_1058:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1128
	jmp	.label_1135
.label_1128:
	mov	al, 1
	test	al, 1
	jne	.label_1138
	nop	
	jmp	.label_1141
.label_1138:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1143
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	sil, cl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	edx, eax
	jl	.label_1151
	mov	rbp, rbp
	jmp	.label_1175
.label_1143:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_1151
	jmp	.label_1175
.label_1141:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	cmp	ecx, 0
	jge	.label_1194
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x18]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_1151
	nop	
	jmp	.label_1175
.label_1194:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1216
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x18]
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
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
	jle	.label_1151
	jmp	.label_1175
.label_1216:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	dl, al
	nop	
	movsx	esi, dl
	lea	rsi, [rsi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	esi, dl
	nop	
	cmp	ecx, esi
	lea	rsi, [rsi]
	jl	.label_1151
.label_1175:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	dl, al
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_1151
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	sil, cl
	mov	rbp, rbp
	movsx	edi, sil
	add	edx, edi
	nop	
	cmp	eax, edx
	jge	.label_1286
.label_1151:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_705
	nop	
	jmp	.label_788
.label_1286:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	eax, dword ptr [rdx + 0x18]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	add	eax, edi
	mov	rsp, rsp
	mov	sil, al
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_705
	jmp	.label_788
.label_1135:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1336
	nop	
	jmp	.label_1339
.label_1336:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_1341
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1254
	jmp	.label_1349
.label_1341:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_1254
	nop	
	jmp	.label_1349
.label_1339:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1364
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1254
	lea	rsi, [rsi]
	jmp	.label_1349
.label_1364:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1382
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1254
	jmp	.label_1349
.label_1382:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_1254
.label_1349:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80
	jl	.label_1254
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	cmp	rcx, rdx
	jge	.label_1421
.label_1254:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	dil, dl
	movsx	edx, dil
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x18], edx
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_705
	lea	rsi, [rsi]
	jmp	.label_788
.label_1421:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_705
	jmp	.label_788
.label_1125:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1469
	mov	rsp, rsp
	jmp	.label_1214
.label_1469:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1476
	mov	rsp, rsp
	jmp	.label_1478
.label_1476:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1482
	jmp	.label_1486
.label_1482:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1487
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	si, cx
	movsx	edi, si
	sub	eax, edi
	cmp	edx, eax
	jl	.label_1495
	jmp	.label_1515
.label_1487:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	eax, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rcx + 0x18]
	nop	
	mov	dx, si
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_1495
	jmp	.label_1515
.label_1486:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_1535
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	esi, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_1495
	lea	rsi, [rsi]
	jmp	.label_1515
.label_1535:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1565
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	esi, dword ptr [rax + 0x18]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	add	esi, edi
	cmp	ecx, esi
	jle	.label_1495
	mov	rbp, rbp
	jmp	.label_1515
.label_1565:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	dx, ax
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	nop	
	cmp	ecx, esi
	mov	rsp, rsp
	jl	.label_1495
.label_1515:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	mov	rbp, rbp
	add	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0xffff8000
	jl	.label_1495
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	si, cx
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_1611
.label_1495:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x70]
	mov	si, cx
	movsx	edi, si
	add	edx, edi
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_705
	mov	rsp, rsp
	jmp	.label_788
.label_1611:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_705
	jmp	.label_788
.label_1478:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1662
	jmp	.label_671
.label_1662:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1668
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_699
	jmp	.label_687
.label_1668:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_699
	lea	rdi, [rdi]
	jmp	.label_687
.label_671:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1686
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_699
	lea	rsi, [rsi]
	jmp	.label_687
.label_1686:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_691
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_699
	jmp	.label_687
.label_691:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	jl	.label_699
.label_687:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_699
	mov	rbp, rbp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_754
.label_699:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	di, dx
	movsx	edx, di
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_705
	nop	
	jmp	.label_788
.label_754:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	di, ax
	lea	rsi, [rsi]
	movsx	eax, di
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_705
	mov	rbp, rbp
	jmp	.label_788
.label_1214:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_807
	jmp	.label_811
.label_807:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_815
	jmp	.label_820
.label_815:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1428
	mov	rsp, rsp
	jmp	.label_1453
.label_1428:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_830
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	sub	eax, esi
	cmp	edx, eax
	jl	.label_841
	jmp	.label_872
.label_830:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	cmp	eax, dword ptr [rcx + 0x18]
	jl	.label_841
	lea	rsi, [rsi]
	jmp	.label_872
.label_1453:
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_876
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_841
	mov	rsp, rsp
	jmp	.label_872
.label_876:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_901
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rdi]
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_841
	jmp	.label_872
.label_901:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	lea	rdi, [rdi]
	add	ecx, edx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	edx, eax
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_841
.label_872:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	add	ecx, edx
	mov	rbp, rbp
	cmp	ecx, 0x80000000
	jl	.label_841
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	nop	
	jge	.label_1070
.label_841:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_705
	jmp	.label_788
.label_1070:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_705
	lea	rdi, [rdi]
	jmp	.label_788
.label_820:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_992
	jmp	.label_997
.label_992:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_998
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_1020
	mov	rsp, rsp
	jmp	.label_1035
.label_998:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_1020
	nop	
	jmp	.label_1035
.label_997:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	lea	rsi, [rsi]
	jge	.label_1039
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx - 0x70]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1020
	mov	rbp, rbp
	jmp	.label_1035
.label_1039:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_1061
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1020
	jmp	.label_1035
.label_1061:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	jl	.label_1020
.label_1035:
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80000000
	jl	.label_1020
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	nop	
	jge	.label_1102
.label_1020:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_705
	jmp	.label_788
.label_1102:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_705
	jmp	.label_788
.label_811:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1152
	jmp	.label_1158
.label_1152:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1159
	lea	rsi, [rsi]
	jmp	.label_1164
.label_1159:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1165
	jmp	.label_1171
.label_1165:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1173
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1177
	jmp	.label_1357
.label_1173:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_1177
	mov	rbp, rbp
	jmp	.label_1357
.label_1171:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	cmp	rax, 0
	jge	.label_1205
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_1177
	lea	rdi, [rdi]
	jmp	.label_1357
.label_1205:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1580
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1177
	jmp	.label_1357
.label_1580:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_1177
.label_1357:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_1177
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1262
.label_1177:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], esi
	mov	rsp, rsp
	test	al, 1
	jne	.label_705
	jmp	.label_788
.label_1262:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_705
	mov	rbp, rbp
	jmp	.label_788
.label_1164:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1309
	mov	rsp, rsp
	jmp	.label_1312
.label_1309:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1145
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1183
	jmp	.label_1234
.label_1145:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jl	.label_1183
	lea	rsi, [rsi]
	jmp	.label_1234
.label_1312:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1333
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1183
	jmp	.label_1234
.label_1333:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	nop	
	jge	.label_1347
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_1183
	nop	
	jmp	.label_1234
.label_1347:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	jl	.label_1183
.label_1234:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1183
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_764
.label_1183:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	mov	esi, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_705
	jmp	.label_788
.label_764:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_705
	jmp	.label_788
.label_1158:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1439
	mov	rbp, rbp
	jmp	.label_1442
.label_1439:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_1444
	jmp	.label_1448
.label_1444:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1003
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	sub	rax, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1123
	jmp	.label_1116
.label_1003:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_1123
	nop	
	jmp	.label_1116
.label_1448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_1473
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1123
	jmp	.label_1116
.label_1473:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_1332
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1123
	jmp	.label_1116
.label_1332:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_1123
.label_1116:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1123
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1542
.label_1123:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], esi
	mov	rbp, rbp
	test	al, 1
	jne	.label_705
	jmp	.label_788
.label_1542:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_705
	jmp	.label_788
.label_1442:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1574
	lea	rdi, [rdi]
	jmp	.label_854
.label_1574:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_1578
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1573
	mov	rbp, rbp
	jmp	.label_1207
.label_1578:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_1573
	lea	rdi, [rdi]
	jmp	.label_1207
.label_854:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1610
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_1573
	jmp	.label_1207
.label_1610:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1625
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_1573
	jmp	.label_1207
.label_1625:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_1573
.label_1207:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	nop	
	jl	.label_1573
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1661
.label_1573:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], esi
	test	al, 1
	jne	.label_705
	mov	rbp, rbp
	jmp	.label_788
.label_1661:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_705
	lea	rdi, [rdi]
	jmp	.label_788
.label_705:
	lea	rsi, [rsi]
	jmp	.label_823
.label_788:
	jmp	.label_668
.label_5754:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 0xe10
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x18], ecx
	mov	rbp, rbp
	jmp	.label_668
.label_5755:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x38]
	add	rax, 0xe10
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	jmp	.label_668
.label_5756:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_668
.label_5757:
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_668
.label_5758:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_668
.label_5759:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_668
.label_5760:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_668
.label_5761:
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0xd0]
	lea	rdi, [rdi]
	jg	.label_805
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_817
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10_0
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0xd0]
	mov	qword ptr [rbp - 0x3f0], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdx, qword ptr [rbp - 0x3f0]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_817:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx - 0xd8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], rdx
	mov	rcx, qword ptr [rcx - 0xd0]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_852
.label_805:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	test	byte ptr [rax + 0xd9], 1
	je	.label_887
	movabs	rdi, OFFSET FLAT:.str.11_0
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_887:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0xd8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
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
.label_852:
	mov	rsp, rsp
	jmp	.label_668
.label_5762:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_931
	nop	
	jmp	.label_951
.label_931:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_953
	mov	rbp, rbp
	jmp	.label_956
.label_953:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_957
	nop	
	jmp	.label_960
.label_957:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_963
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	nop	
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_972
	mov	rsp, rsp
	jmp	.label_980
.label_963:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_972
	jmp	.label_980
.label_960:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_996
	jmp	.label_1393
.label_996:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_972
	lea	rsi, [rsi]
	jmp	.label_980
.label_1393:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1009
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jle	.label_972
	lea	rsi, [rsi]
	jmp	.label_980
.label_1009:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_972
.label_980:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_972
	mov	eax, 0x7f
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	edi, sil
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_1053
.label_972:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_785
	nop	
	jmp	.label_809
.label_1053:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_785
	nop	
	jmp	.label_809
.label_956:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_1099
	mov	rbp, rbp
	jmp	.label_1101
.label_1099:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_946
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_1112
	lea	rdi, [rdi]
	jmp	.label_1136
.label_946:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rsi
	jl	.label_1112
	jmp	.label_1136
.label_1101:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1139
	lea	rdi, [rdi]
	jmp	.label_1166
.label_1139:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_1112
	jmp	.label_1136
.label_1166:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_1201
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_1112
	jmp	.label_1136
.label_1201:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1112
.label_1136:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	nop	
	jl	.label_1112
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1186
.label_1112:
	nop	
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	jne	.label_785
	lea	rsi, [rsi]
	jmp	.label_809
.label_1186:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_785
	jmp	.label_809
.label_951:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1632
	lea	rsi, [rsi]
	jmp	.label_1225
.label_1632:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1228
	mov	rbp, rbp
	jmp	.label_1676
.label_1228:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1237
	nop	
	jmp	.label_1240
.label_1237:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_1243
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rbp, rbp
	add	edx, 0x7fffffff
	nop	
	cmp	edx, 0
	jl	.label_845
	jmp	.label_1264
.label_1243:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	mov	rbp, rbp
	cmp	eax, esi
	nop	
	jl	.label_845
	jmp	.label_1264
.label_1240:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_928
	jmp	.label_1283
.label_928:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_845
	jmp	.label_1264
.label_1283:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1292
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
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
	jle	.label_845
	jmp	.label_1264
.label_1292:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_845
.label_1264:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	sub	eax, esi
	nop	
	cmp	eax, 0xffff8000
	jl	.label_845
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	nop	
	movsx	edi, si
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_1328
.label_845:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_785
	lea	rsi, [rsi]
	jmp	.label_809
.label_1328:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_785
	nop	
	jmp	.label_809
.label_1676:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1358
	mov	rsp, rsp
	jmp	.label_1362
.label_1358:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1365
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_1203
	jmp	.label_1375
.label_1365:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_1203
	jmp	.label_1375
.label_1362:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1389
	lea	rsi, [rsi]
	jmp	.label_1394
.label_1389:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1203
	lea	rdi, [rdi]
	jmp	.label_1375
.label_1394:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1402
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_1203
	jmp	.label_1375
.label_1402:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1203
.label_1375:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_1203
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_937
.label_1203:
	nop	
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	mov	rbp, rbp
	movsx	rdx, di
	nop	
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_785
	mov	rsp, rsp
	jmp	.label_809
.label_937:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	jne	.label_785
	lea	rsi, [rsi]
	jmp	.label_809
.label_1225:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1226
	lea	rdi, [rdi]
	jmp	.label_1480
.label_1226:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1483
	jmp	.label_1488
.label_1483:
	mov	al, 1
	test	al, 1
	jne	.label_1489
	lea	rsi, [rsi]
	jmp	.label_1490
.label_1489:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_1492
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_1405
	jmp	.label_1514
.label_1492:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_1405
	jmp	.label_1514
.label_1490:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1526
	mov	rsp, rsp
	jmp	.label_1533
.label_1526:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1405
	jmp	.label_1514
.label_1533:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	nop	
	jge	.label_1550
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	nop	
	jle	.label_1405
	nop	
	jmp	.label_1514
.label_1550:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_1405
.label_1514:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rbp, rbp
	jl	.label_1405
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_1567
.label_1405:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_785
	jmp	.label_809
.label_1567:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	jne	.label_785
	jmp	.label_809
.label_1488:
	mov	al, 1
	test	al, 1
	jne	.label_1593
	lea	rdi, [rdi]
	jmp	.label_1595
.label_1593:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1597
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_1603
	lea	rsi, [rsi]
	jmp	.label_1266
.label_1597:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_1603
	lea	rdi, [rdi]
	jmp	.label_1266
.label_1595:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1627
	jmp	.label_1631
.label_1627:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1603
	jmp	.label_1266
.label_1631:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_1639
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_1603
	lea	rdi, [rdi]
	jmp	.label_1266
.label_1639:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1603
.label_1266:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_1603
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_1657
.label_1603:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_785
	jmp	.label_809
.label_1657:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_785
	jmp	.label_809
.label_1480:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1689
	nop	
	jmp	.label_1690
.label_1689:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1086
	lea	rdi, [rdi]
	jmp	.label_672
.label_1086:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_677
	jmp	.label_684
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_686
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_696
	lea	rsi, [rsi]
	jmp	.label_709
.label_686:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jl	.label_696
	lea	rdi, [rdi]
	jmp	.label_709
.label_684:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_732
	mov	rbp, rbp
	jmp	.label_1445
.label_732:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_696
	jmp	.label_709
.label_1445:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_748
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_696
	nop	
	jmp	.label_709
.label_748:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_696
.label_709:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_696
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_789
.label_696:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_785
	lea	rsi, [rsi]
	jmp	.label_809
.label_789:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_785
	lea	rdi, [rdi]
	jmp	.label_809
.label_672:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_836
	jmp	.label_842
.label_836:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1516
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_849
	lea	rdi, [rdi]
	jmp	.label_675
.label_1516:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	nop	
	jl	.label_849
	jmp	.label_675
.label_842:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_879
	lea	rsi, [rsi]
	jmp	.label_884
.label_879:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_849
	jmp	.label_675
.label_884:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_893
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_849
	lea	rdi, [rdi]
	jmp	.label_675
.label_893:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_849
.label_675:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_849
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jge	.label_1132
.label_849:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_785
	jmp	.label_809
.label_1132:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	jne	.label_785
	jmp	.label_809
.label_1690:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_966
	mov	rbp, rbp
	jmp	.label_971
.label_966:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1230
	lea	rdi, [rdi]
	jmp	.label_1651
.label_1230:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_977
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_982
	lea	rsi, [rsi]
	jmp	.label_1005
.label_977:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_982
	nop	
	jmp	.label_1005
.label_1651:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1006
	jmp	.label_1460
.label_1006:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_982
	nop	
	jmp	.label_1005
.label_1460:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_1106
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_982
	jmp	.label_1005
.label_1106:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_982
.label_1005:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_982
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_1062
.label_982:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_785
	jmp	.label_809
.label_1062:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_785
	mov	rsp, rsp
	jmp	.label_809
.label_971:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1098
	lea	rdi, [rdi]
	jmp	.label_1103
.label_1098:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_1105
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_915
	jmp	.label_1121
.label_1105:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_915
	lea	rsi, [rsi]
	jmp	.label_1121
.label_1103:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1088
	lea	rsi, [rsi]
	jmp	.label_1083
.label_1088:
	nop	
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_915
	nop	
	jmp	.label_1121
.label_1083:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1204
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_915
	jmp	.label_1121
.label_1204:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_915
.label_1121:
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rdx, rax
	nop	
	jl	.label_915
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rsp, rsp
	jge	.label_1420
.label_915:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_785
	jmp	.label_809
.label_1420:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_785
	lea	rsi, [rsi]
	jmp	.label_809
.label_785:
	lea	rdi, [rdi]
	jmp	.label_823
.label_809:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_668
.label_5763:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1238
	mov	rbp, rbp
	jmp	.label_1248
.label_1238:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1250
	lea	rsi, [rsi]
	jmp	.label_1258
.label_1250:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1260
	jmp	.label_1267
.label_1260:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1269
	nop	
	mov	rax, qword ptr [rbp - 0x258]
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
	jl	.label_1275
	jmp	.label_1290
.label_1269:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, 0x80000000
	nop	
	cmp	eax, esi
	jl	.label_1275
	jmp	.label_1290
.label_1267:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_1303
	mov	rbp, rbp
	jmp	.label_1307
.label_1303:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1275
	jmp	.label_1290
.label_1307:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1313
	nop	
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, 0
	jle	.label_1275
	mov	rbp, rbp
	jmp	.label_1290
.label_1313:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	jl	.label_1275
.label_1290:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_1275
	nop	
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_1337
.label_1275:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_695
	lea	rsi, [rsi]
	jmp	.label_692
.label_1337:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_695
	nop	
	jmp	.label_692
.label_1258:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1373
	jmp	.label_1377
.label_1373:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1379
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_902
	lea	rsi, [rsi]
	jmp	.label_777
.label_1379:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_902
	jmp	.label_777
.label_1377:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1546
	jmp	.label_1415
.label_1546:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_902
	mov	rsp, rsp
	jmp	.label_777
.label_1415:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1422
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_902
	jmp	.label_777
.label_1422:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	jl	.label_902
.label_777:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80
	lea	rdi, [rdi]
	jl	.label_902
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_1454
.label_902:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_695
	jmp	.label_692
.label_1454:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	lea	rsi, [rsi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	jne	.label_695
	mov	rsp, rsp
	jmp	.label_692
.label_1248:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1196
	jmp	.label_1503
.label_1196:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1506
	mov	rbp, rbp
	jmp	.label_1407
.label_1506:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_1521
	mov	rbp, rbp
	jmp	.label_1523
.label_1521:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1457
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_1530
	nop	
	jmp	.label_1539
.label_1457:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_1530
	mov	rbp, rbp
	jmp	.label_1539
.label_1523:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1556
	lea	rsi, [rsi]
	jmp	.label_1560
.label_1556:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1530
	jmp	.label_1539
.label_1560:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
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
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	cmp	eax, 0
	jle	.label_1530
	jmp	.label_1539
.label_1564:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	cmp	eax, esi
	nop	
	jl	.label_1530
.label_1539:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_1530
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_1587
.label_1530:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	nop	
	movsx	edi, si
	sub	ecx, edi
	mov	rbp, rbp
	mov	si, cx
	nop	
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_695
	jmp	.label_692
.label_1587:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_695
	jmp	.label_692
.label_1407:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1218
	jmp	.label_1634
.label_1218:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1636
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jl	.label_1640
	mov	rsp, rsp
	jmp	.label_1645
.label_1636:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_1640
	jmp	.label_1645
.label_1634:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1652
	jmp	.label_1659
.label_1652:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1640
	jmp	.label_1645
.label_1659:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1667
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	nop	
	jle	.label_1640
	nop	
	jmp	.label_1645
.label_1667:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_1640
.label_1645:
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, -0x8000
	jl	.label_1640
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_1683
.label_1640:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	mov	di, cx
	movsx	rdx, di
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_695
	lea	rdi, [rdi]
	jmp	.label_692
.label_1683:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_695
	lea	rsi, [rsi]
	jmp	.label_692
.label_1503:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_719
	mov	rsp, rsp
	jmp	.label_725
.label_719:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1326
	mov	rbp, rbp
	jmp	.label_736
.label_1326:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_741
	jmp	.label_1018
.label_741:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1624
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	nop	
	jl	.label_760
	jmp	.label_773
.label_1624:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	add	edx, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_760
	jmp	.label_773
.label_1018:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_779
	jmp	.label_1219
.label_779:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_760
	jmp	.label_773
.label_1219:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_793
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jle	.label_760
	lea	rsi, [rsi]
	jmp	.label_773
.label_793:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_760
.label_773:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0x80000000
	jl	.label_760
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	nop	
	jge	.label_834
.label_760:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_695
	jmp	.label_692
.label_834:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	eax, esi
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_695
	lea	rsi, [rsi]
	jmp	.label_692
.label_736:
	mov	al, 1
	test	al, 1
	jne	.label_886
	mov	rbp, rbp
	jmp	.label_891
.label_886:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_895
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_900
	jmp	.label_892
.label_895:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_900
	lea	rsi, [rsi]
	jmp	.label_892
.label_891:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_923
	mov	rbp, rbp
	jmp	.label_935
.label_923:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_900
	lea	rdi, [rdi]
	jmp	.label_892
.label_935:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_932
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jle	.label_900
	mov	rsp, rsp
	jmp	.label_892
.label_932:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_900
.label_892:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_900
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_967
.label_900:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	al, 1
	nop	
	jne	.label_695
	nop	
	jmp	.label_692
.label_967:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_695
	jmp	.label_692
.label_725:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1010
	jmp	.label_1014
.label_1010:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1015
	jmp	.label_1019
.label_1015:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_1021
	lea	rdi, [rdi]
	jmp	.label_1023
.label_1021:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1025
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_1037
	lea	rdi, [rdi]
	jmp	.label_723
.label_1025:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_1037
	mov	rsp, rsp
	jmp	.label_723
.label_1023:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1066
	jmp	.label_1069
.label_1066:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1037
	jmp	.label_723
.label_1069:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1077
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_1037
	mov	rbp, rbp
	jmp	.label_723
.label_1077:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_1037
.label_723:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_1037
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_1108
.label_1037:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_695
	lea	rsi, [rsi]
	jmp	.label_692
.label_1108:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_695
	lea	rdi, [rdi]
	jmp	.label_692
.label_1019:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1156
	jmp	.label_1160
.label_1156:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1162
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_1169
	mov	rsp, rsp
	jmp	.label_1188
.label_1162:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_1169
	lea	rsi, [rsi]
	jmp	.label_1188
.label_1160:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1191
	lea	rsi, [rsi]
	jmp	.label_1437
.label_1191:
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1169
	jmp	.label_1188
.label_1437:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1206
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_1169
	jmp	.label_1188
.label_1206:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_1169
.label_1188:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_1169
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_883
.label_1169:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_695
	mov	rsp, rsp
	jmp	.label_692
.label_883:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_695
	jmp	.label_692
.label_1014:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1271
	jmp	.label_920
.label_1271:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1276
	jmp	.label_1280
.label_1276:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1282
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_1229
	jmp	.label_1030
.label_1282:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_1229
	nop	
	jmp	.label_1030
.label_1280:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1122
	mov	rbp, rbp
	jmp	.label_1317
.label_1122:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1229
	nop	
	jmp	.label_1030
.label_1317:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1322
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_1229
	jmp	.label_1030
.label_1322:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_1229
.label_1030:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_1229
	nop	
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_1220
.label_1229:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_695
	lea	rdi, [rdi]
	jmp	.label_692
.label_1220:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	jne	.label_695
	jmp	.label_692
.label_920:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1605
	lea	rsi, [rsi]
	jmp	.label_1380
.label_1605:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1381
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_1387
	jmp	.label_697
.label_1381:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_1387
	mov	rsp, rsp
	jmp	.label_697
.label_1380:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_810
	lea	rsi, [rsi]
	jmp	.label_840
.label_810:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1387
	mov	rsp, rsp
	jmp	.label_697
.label_840:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1273
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_1387
	lea	rdi, [rdi]
	jmp	.label_697
.label_1273:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_1387
.label_697:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_1387
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	jge	.label_1459
.label_1387:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_695
	mov	rbp, rbp
	jmp	.label_692
.label_1459:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_695
	jmp	.label_692
.label_695:
	nop	
	jmp	.label_823
.label_692:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1176
	mov	rbp, rbp
	jmp	.label_1500
.label_1176:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1502
	jmp	.label_1511
.label_1502:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_1549
	jmp	.label_1519
.label_1549:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1520
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	add	edx, 0x7fffffff
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_806
	jmp	.label_1461
.label_1520:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_806
	lea	rsi, [rsi]
	jmp	.label_1461
.label_1519:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1548
	lea	rdi, [rdi]
	jmp	.label_1552
.label_1548:
	mov	al, 1
	test	al, 1
	jne	.label_806
	jmp	.label_1461
.label_1552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1559
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	lea	rsi, [rsi]
	sub	eax, esi
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_806
	jmp	.label_1461
.label_1559:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_806
.label_1461:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_806
	mov	eax, 0x7f
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rdi, [rdi]
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_885
.label_806:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_724
	jmp	.label_679
.label_885:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_724
	mov	rsp, rsp
	jmp	.label_679
.label_1511:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1628
	mov	rbp, rbp
	jmp	.label_1630
.label_1628:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1633
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_924
	mov	rbp, rbp
	jmp	.label_825
.label_1633:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_924
	jmp	.label_825
.label_1630:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1359
	jmp	.label_1656
.label_1359:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_924
	jmp	.label_825
.label_1656:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1664
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_924
	jmp	.label_825
.label_1664:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_924
.label_825:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_924
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1617
.label_924:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_724
	lea	rsi, [rsi]
	jmp	.label_679
.label_1617:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	nop	
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_724
	lea	rsi, [rsi]
	jmp	.label_679
.label_1500:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_714
	lea	rdi, [rdi]
	jmp	.label_1189
.label_714:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_936
	lea	rsi, [rsi]
	jmp	.label_727
.label_936:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_733
	nop	
	jmp	.label_1596
.label_733:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_743
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rsi, [rsi]
	cmp	edx, 0
	jl	.label_753
	mov	rsp, rsp
	jmp	.label_780
.label_743:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	add	esi, 0x80000000
	mov	rsp, rsp
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_753
	nop	
	jmp	.label_780
.label_1596:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_781
	mov	rsp, rsp
	jmp	.label_1242
.label_781:
	mov	al, 1
	test	al, 1
	jne	.label_753
	jmp	.label_780
.label_1242:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_880
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
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
	jle	.label_753
	jmp	.label_780
.label_880:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_753
.label_780:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	jl	.label_753
	mov	eax, 0x7fff
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_844
.label_753:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_724
	mov	rbp, rbp
	jmp	.label_679
.label_844:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_724
	mov	rbp, rbp
	jmp	.label_679
.label_727:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_905
	mov	rbp, rbp
	jmp	.label_1615
.label_905:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1681
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_916
	mov	rbp, rbp
	jmp	.label_945
.label_1681:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_916
	jmp	.label_945
.label_1615:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1673
	jmp	.label_941
.label_1673:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_916
	lea	rdi, [rdi]
	jmp	.label_945
.label_941:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_948
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_916
	jmp	.label_945
.label_948:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_916
.label_945:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_916
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1261
.label_916:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	mov	rsp, rsp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_724
	nop	
	jmp	.label_679
.label_1261:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	nop	
	mov	di, ax
	mov	rbp, rbp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_724
	jmp	.label_679
.label_1189:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1026
	nop	
	jmp	.label_1032
.label_1026:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1036
	jmp	.label_1583
.label_1036:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1537
	nop	
	jmp	.label_1620
.label_1537:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_1051
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_993
	mov	rbp, rbp
	jmp	.label_869
.label_1051:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, edx
	jl	.label_993
	nop	
	jmp	.label_869
.label_1620:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_794
	jmp	.label_1224
.label_794:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_993
	jmp	.label_869
.label_1224:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1095
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, 0
	lea	rdi, [rdi]
	jle	.label_993
	mov	rsp, rsp
	jmp	.label_869
.label_1095:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_993
.label_869:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, 0x80000000
	nop	
	jl	.label_993
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_1126
.label_993:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_724
	mov	rsp, rsp
	jmp	.label_679
.label_1126:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	nop	
	jne	.label_724
	lea	rdi, [rdi]
	jmp	.label_679
.label_1583:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1329
	jmp	.label_1340
.label_1329:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1181
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_875
	jmp	.label_750
.label_1181:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_875
	jmp	.label_750
.label_1340:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_1210
	nop	
	jmp	.label_1212
.label_1210:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_875
	nop	
	jmp	.label_750
.label_1212:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1570
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_875
	mov	rbp, rbp
	jmp	.label_750
.label_1570:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_875
.label_750:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	jl	.label_875
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	nop	
	jge	.label_1245
.label_875:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rbp, rbp
	jne	.label_724
	lea	rdi, [rdi]
	jmp	.label_679
.label_1245:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_724
	jmp	.label_679
.label_1032:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1508
	jmp	.label_1296
.label_1508:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1467
	lea	rsi, [rsi]
	jmp	.label_1302
.label_1467:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1064
	lea	rsi, [rsi]
	jmp	.label_1305
.label_1064:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1308
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_1213
	jmp	.label_1208
.label_1308:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_1213
	jmp	.label_1208
.label_1305:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1331
	jmp	.label_943
.label_1331:
	mov	al, 1
	test	al, 1
	jne	.label_1213
	lea	rdi, [rdi]
	jmp	.label_1208
.label_943:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1522
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_1213
	jmp	.label_1208
.label_1522:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_1213
.label_1208:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_1213
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	jge	.label_1356
.label_1213:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_724
	jmp	.label_679
.label_1356:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_724
	lea	rsi, [rsi]
	jmp	.label_679
.label_1302:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_680
	jmp	.label_1626
.label_680:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_717
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_1404
	mov	rsp, rsp
	jmp	.label_768
.label_717:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_1404
	jmp	.label_768
.label_1626:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1272
	jmp	.label_965
.label_1272:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_1404
	lea	rdi, [rdi]
	jmp	.label_768
.label_965:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1426
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_1404
	jmp	.label_768
.label_1426:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1404
.label_768:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_1404
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1474
.label_1404:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_724
	lea	rsi, [rsi]
	jmp	.label_679
.label_1474:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_724
	jmp	.label_679
.label_1296:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1524
	jmp	.label_913
.label_1524:
	mov	al, 1
	test	al, 1
	jne	.label_947
	jmp	.label_1022
.label_947:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_1505
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_1096
	mov	rsp, rsp
	jmp	.label_1217
.label_1505:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_1096
	jmp	.label_1217
.label_1022:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1561
	jmp	.label_1675
.label_1561:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1096
	jmp	.label_1217
.label_1675:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1568
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_1096
	jmp	.label_1217
.label_1568:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1096
.label_1217:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_1096
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_1585
.label_1096:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_724
	lea	rsi, [rsi]
	jmp	.label_679
.label_1585:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_724
	mov	rbp, rbp
	jmp	.label_679
.label_913:
	mov	al, 1
	test	al, 1
	jne	.label_1368
	jmp	.label_1184
.label_1368:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1192
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_1295
	jmp	.label_689
.label_1192:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_1295
	jmp	.label_689
.label_1184:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1346
	jmp	.label_1649
.label_1346:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1295
	lea	rdi, [rdi]
	jmp	.label_689
.label_1649:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1124
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_1295
	jmp	.label_689
.label_1124:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_1295
.label_689:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_1295
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1599
.label_1295:
	nop	
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_724
	jmp	.label_679
.label_1599:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_724
	jmp	.label_679
.label_724:
	lea	rdi, [rdi]
	jmp	.label_823
.label_679:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	jmp	.label_668
.label_5764:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_668
.label_5765:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0xa8]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + 0x20], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x30], rcx
	jmp	.label_668
.label_5766:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_668
.label_5767:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
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
	jmp	.label_668
.label_5768:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rdi, qword ptr [rsi - 0x70]
	mov	qword ptr [rdx + 0x20], rdi
	mov	rdi, qword ptr [rsi - 0x68]
	nop	
	mov	qword ptr [rdx + 0x28], rdi
	mov	rsi, qword ptr [rsi - 0x60]
	mov	qword ptr [rdx + 0x30], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_824
	lea	rdi, [rdi]
	jmp	.label_843
.label_824:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_847
	jmp	.label_850
.label_847:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_853
	jmp	.label_856
.label_853:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_859
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_868
	mov	rbp, rbp
	jmp	.label_716
.label_859:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_868
	lea	rsi, [rsi]
	jmp	.label_716
.label_856:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_734
	jmp	.label_904
.label_734:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_868
	jmp	.label_716
.label_904:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	nop	
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1678
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	cmp	eax, 0
	jle	.label_868
	lea	rdi, [rdi]
	jmp	.label_716
.label_1678:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_868
.label_716:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_868
	lea	rdi, [rdi]
	mov	eax, 0x7f
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_944
.label_868:
	mov	al, 1
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	sil, dl
	nop	
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x38], rdx
	nop	
	test	al, 1
	jne	.label_770
	lea	rdi, [rdi]
	jmp	.label_685
.label_944:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_770
	mov	rsp, rsp
	jmp	.label_685
.label_850:
	mov	al, 1
	test	al, 1
	jne	.label_990
	lea	rsi, [rsi]
	jmp	.label_994
.label_990:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_995
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_1002
	mov	rsp, rsp
	jmp	.label_1012
.label_995:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_1002
	nop	
	jmp	.label_1012
.label_994:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1028
	mov	rsp, rsp
	jmp	.label_1040
.label_1028:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1002
	mov	rbp, rbp
	jmp	.label_1012
.label_1040:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1049
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_1002
	jmp	.label_1012
.label_1049:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_1002
.label_1012:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, -0x80
	jl	.label_1002
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	jge	.label_1084
.label_1002:
	mov	rsp, rsp
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_770
	jmp	.label_685
.label_1084:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	mov	dil, al
	mov	rsp, rsp
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_770
	jmp	.label_685
.label_843:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1063
	nop	
	jmp	.label_1129
.label_1063:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1131
	mov	rsp, rsp
	jmp	.label_1137
.label_1131:
	mov	al, 1
	test	al, 1
	jne	.label_1140
	jmp	.label_1142
.label_1140:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1146
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rdi, [rdi]
	cmp	edx, 0
	jl	.label_1168
	jmp	.label_1167
.label_1146:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_1168
	jmp	.label_1167
.label_1142:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1182
	jmp	.label_1185
.label_1182:
	mov	al, 1
	test	al, 1
	jne	.label_1168
	nop	
	jmp	.label_1167
.label_1185:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_1190
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	nop	
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	jle	.label_1168
	jmp	.label_1167
.label_1190:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_1168
.label_1167:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_1168
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_1222
.label_1168:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	lea	rsi, [rsi]
	movsx	rdx, si
	nop	
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_770
	jmp	.label_685
.label_1222:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_770
	lea	rsi, [rsi]
	jmp	.label_685
.label_1137:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_1274
	lea	rdi, [rdi]
	jmp	.label_1277
.label_1274:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1279
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_970
	nop	
	jmp	.label_1310
.label_1279:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_970
	jmp	.label_1310
.label_1277:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1311
	mov	rbp, rbp
	jmp	.label_1318
.label_1311:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_970
	lea	rsi, [rsi]
	jmp	.label_1310
.label_1318:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1324
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_970
	jmp	.label_1310
.label_1324:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	jl	.label_970
.label_1310:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_970
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_1374
.label_970:
	nop	
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_770
	nop	
	jmp	.label_685
.label_1374:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x38], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_770
	lea	rsi, [rsi]
	jmp	.label_685
.label_1129:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1378
	jmp	.label_1384
.label_1378:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1385
	nop	
	jmp	.label_1390
.label_1385:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1391
	jmp	.label_1231
.label_1391:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1395
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	lea	rsi, [rsi]
	jl	.label_1401
	jmp	.label_1412
.label_1395:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_1401
	nop	
	jmp	.label_1412
.label_1231:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1427
	jmp	.label_1434
.label_1427:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1401
	jmp	.label_1412
.label_1434:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1440
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	nop	
	cmp	eax, 0
	jle	.label_1401
	mov	rsp, rsp
	jmp	.label_1412
.label_1440:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	cmp	eax, edx
	nop	
	jl	.label_1401
.label_1412:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	nop	
	cmp	eax, 0x80000000
	jl	.label_1401
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1463
.label_1401:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	nop	
	sub	ecx, esi
	nop	
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_770
	jmp	.label_685
.label_1463:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	esi, edx
	sub	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_770
	jmp	.label_685
.label_1390:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1501
	mov	rsp, rsp
	jmp	.label_1510
.label_1501:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1513
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_718
	mov	rbp, rbp
	jmp	.label_1527
.label_1513:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_718
	lea	rdi, [rdi]
	jmp	.label_1527
.label_1510:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1541
	lea	rsi, [rsi]
	jmp	.label_1547
.label_1541:
	mov	al, 1
	test	al, 1
	jne	.label_718
	jmp	.label_1527
.label_1547:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1554
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_718
	jmp	.label_1527
.label_1554:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_718
.label_1527:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_718
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_796
.label_718:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	jne	.label_770
	jmp	.label_685
.label_796:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_770
	jmp	.label_685
.label_1384:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1600
	jmp	.label_1607
.label_1600:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1608
	jmp	.label_1612
.label_1608:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1614
	jmp	.label_1618
.label_1614:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1619
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_1579
	jmp	.label_1629
.label_1619:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_1579
	lea	rdi, [rdi]
	jmp	.label_1629
.label_1618:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1643
	jmp	.label_1647
.label_1643:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1579
	mov	rbp, rbp
	jmp	.label_1629
.label_1647:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1370
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_1579
	lea	rsi, [rsi]
	jmp	.label_1629
.label_1370:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_1579
.label_1629:
	nop	
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_1579
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rax, rdx
	jge	.label_1677
.label_1579:
	mov	al, 1
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	al, 1
	jne	.label_770
	nop	
	jmp	.label_685
.label_1677:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
.label_5665:
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	cl, 1
	jne	.label_770
	jmp	.label_685
.label_1612:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_688
	jmp	.label_693
.label_688:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_694
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jl	.label_702
	nop	
	jmp	.label_735
.label_694:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	nop	
	jl	.label_702
	lea	rsi, [rsi]
	jmp	.label_735
.label_693:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_988
	lea	rdi, [rdi]
	jmp	.label_745
.label_988:
	mov	al, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_702
	lea	rdi, [rdi]
	jmp	.label_735
.label_745:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1071
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_702
	jmp	.label_735
.label_1071:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_702
.label_735:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_702
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_867
.label_702:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_770
	mov	rsp, rsp
	jmp	.label_685
.label_867:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_770
	lea	rdi, [rdi]
	jmp	.label_685
.label_1607:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_839
	jmp	.label_1529
.label_839:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_848
	lea	rsi, [rsi]
	jmp	.label_1351
.label_848:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1569
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_862
	jmp	.label_828
.label_1569:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_862
	jmp	.label_828
.label_1351:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_889
	mov	rbp, rbp
	jmp	.label_897
.label_889:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_862
	mov	rbp, rbp
	jmp	.label_828
.label_897:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1581
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_862
	nop	
	jmp	.label_828
.label_1581:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx - 0x30]
	nop	
	jl	.label_862
.label_828:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_862
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_832
.label_862:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_770
	lea	rdi, [rdi]
	jmp	.label_685
.label_832:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_770
	mov	rbp, rbp
	jmp	.label_685
.label_1529:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_974
	jmp	.label_976
.label_974:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_978
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_984
	jmp	.label_1348
.label_978:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_984
	mov	rsp, rsp
	jmp	.label_1348
.label_976:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1432
	lea	rsi, [rsi]
	jmp	.label_812
.label_1432:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_984
	nop	
	jmp	.label_1348
.label_812:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_1300
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_984
	mov	rsp, rsp
	jmp	.label_1348
.label_1300:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_984
.label_1348:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_984
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_1060
.label_984:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_770
	nop	
	jmp	.label_685
.label_1060:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_770
	lea	rsi, [rsi]
	jmp	.label_685
.label_770:
	lea	rsi, [rsi]
	jmp	.label_823
.label_685:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_919
	jmp	.label_940
.label_919:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_1104
	jmp	.label_1109
.label_1104:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1111
	jmp	.label_1117
.label_1111:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1119
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	add	edx, 0x7fffffff
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_826
	jmp	.label_1154
.label_1119:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_826
	jmp	.label_1154
.label_1117:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1215
	jmp	.label_1239
.label_1215:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_826
	lea	rsi, [rsi]
	jmp	.label_1154
.label_1239:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_1170
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0
	mov	rbp, rbp
	jle	.label_826
	lea	rdi, [rdi]
	jmp	.label_1154
.label_1170:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_826
.label_1154:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
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
	jl	.label_826
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_1493
.label_826:
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_729
	mov	rbp, rbp
	jmp	.label_711
.label_1493:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	mov	rbp, rbp
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_729
	mov	rsp, rsp
	jmp	.label_711
.label_1109:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_759
	mov	rbp, rbp
	jmp	.label_1252
.label_759:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1255
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_774
	jmp	.label_701
.label_1255:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_774
	jmp	.label_701
.label_1252:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1288
	jmp	.label_1294
.label_1288:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_774
	mov	rbp, rbp
	jmp	.label_701
.label_1294:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1301
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jle	.label_774
	jmp	.label_701
.label_1301:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_774
.label_701:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_774
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_1354
.label_774:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	mov	dil, cl
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_729
	jmp	.label_711
.label_1354:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_729
	nop	
	jmp	.label_711
.label_940:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1353
	lea	rsi, [rsi]
	jmp	.label_1360
.label_1353:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1361
	jmp	.label_1366
.label_1361:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1367
	lea	rdi, [rdi]
	jmp	.label_1369
.label_1367:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1371
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_782
	jmp	.label_1388
.label_1371:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_782
	mov	rbp, rbp
	jmp	.label_1388
.label_1369:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1400
	lea	rsi, [rsi]
	jmp	.label_1059
.label_1400:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_782
	nop	
	jmp	.label_1388
.label_1059:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_813
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
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
	jle	.label_782
	lea	rdi, [rdi]
	jmp	.label_1388
.label_813:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	cmp	eax, esi
	jl	.label_782
.label_1388:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, 0xffff8000
	nop	
	jl	.label_782
	mov	rsp, rsp
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1335
.label_782:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	lea	rsi, [rsi]
	movsx	edi, si
	sub	ecx, edi
	mov	rsp, rsp
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_729
	jmp	.label_711
.label_1335:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_729
	mov	rsp, rsp
	jmp	.label_711
.label_1366:
	mov	al, 1
	test	al, 1
	jne	.label_1352
	jmp	.label_1509
.label_1352:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1512
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_831
	nop	
	jmp	.label_771
.label_1512:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_831
	lea	rdi, [rdi]
	jmp	.label_771
.label_1509:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1538
	mov	rbp, rbp
	jmp	.label_1543
.label_1538:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_831
	jmp	.label_771
.label_1543:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_1663
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_831
	mov	rbp, rbp
	jmp	.label_771
.label_1663:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_831
.label_771:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_831
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_790
.label_831:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	sub	ecx, esi
	nop	
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_729
	jmp	.label_711
.label_790:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_729
	jmp	.label_711
.label_1360:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1609
	jmp	.label_1097
.label_1609:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1532
	jmp	.label_1376
.label_1532:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1148
	jmp	.label_1621
.label_1148:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_1622
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	mov	rbp, rbp
	jl	.label_816
	jmp	.label_1268
.label_1622:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, 0x80000000
	nop	
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_816
	jmp	.label_1268
.label_1621:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1344
	lea	rsi, [rsi]
	jmp	.label_1455
.label_1344:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_816
	jmp	.label_1268
.label_1455:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1654
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	jle	.label_816
	jmp	.label_1268
.label_1654:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_816
.label_1268:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_816
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1613
.label_816:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_729
	lea	rdi, [rdi]
	jmp	.label_711
.label_1613:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_729
	mov	rsp, rsp
	jmp	.label_711
.label_1376:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_860
	lea	rdi, [rdi]
	jmp	.label_707
.label_860:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_712
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jl	.label_720
	nop	
	jmp	.label_737
.label_712:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	nop	
	jl	.label_720
	jmp	.label_737
.label_707:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_755
	jmp	.label_766
.label_755:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_720
	lea	rsi, [rsi]
	jmp	.label_737
.label_766:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_1297
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_720
	jmp	.label_737
.label_1297:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_720
.label_737:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, -0x80000000
	nop	
	jl	.label_720
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	jge	.label_801
.label_720:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rdi + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_729
	mov	rsp, rsp
	jmp	.label_711
.label_801:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_729
	jmp	.label_711
.label_1097:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1447
	mov	rsp, rsp
	jmp	.label_861
.label_1447:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_863
	jmp	.label_1682
.label_863:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_870
	jmp	.label_1438
.label_870:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_877
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	nop	
	cmp	rcx, 0
	jl	.label_896
	jmp	.label_894
.label_877:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_896
	nop	
	jmp	.label_894
.label_1438:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_792
	lea	rdi, [rdi]
	jmp	.label_912
.label_792:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_896
	lea	rsi, [rsi]
	jmp	.label_894
.label_912:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_921
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jle	.label_896
	mov	rsp, rsp
	jmp	.label_894
.label_921:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_896
.label_894:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_896
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_949
.label_896:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_729
	mov	rbp, rbp
	jmp	.label_711
.label_949:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_729
	mov	rsp, rsp
	jmp	.label_711
.label_1682:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_986
	nop	
	jmp	.label_1363
.label_986:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_1406
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_1000
	lea	rsi, [rsi]
	jmp	.label_1008
.label_1406:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_1000
	mov	rbp, rbp
	jmp	.label_1008
.label_1363:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1525
	lea	rdi, [rdi]
	jmp	.label_1031
.label_1525:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1000
	nop	
	jmp	.label_1008
.label_1031:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1043
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_1000
	lea	rdi, [rdi]
	jmp	.label_1008
.label_1043:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_1000
.label_1008:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_1000
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_1320
.label_1000:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_729
	jmp	.label_711
.label_1320:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_729
	jmp	.label_711
.label_861:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1115
	mov	rsp, rsp
	jmp	.label_1110
.label_1115:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_882
	lea	rdi, [rdi]
	jmp	.label_1127
.label_882:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_1073
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jl	.label_822
	lea	rdi, [rdi]
	jmp	.label_1150
.label_1073:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_822
	jmp	.label_1150
.label_1127:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1278
	mov	rsp, rsp
	jmp	.label_1078
.label_1278:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_822
	mov	rsp, rsp
	jmp	.label_1150
.label_1078:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_1179
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_822
	lea	rsi, [rsi]
	jmp	.label_1150
.label_1179:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_822
.label_1150:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	nop	
	jl	.label_822
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_1528
.label_822:
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_729
	lea	rdi, [rdi]
	jmp	.label_711
.label_1528:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_729
	jmp	.label_711
.label_1110:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1241
	lea	rdi, [rdi]
	jmp	.label_1246
.label_1241:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_739
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jl	.label_1253
	jmp	.label_1048
.label_739:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_1253
	lea	rdi, [rdi]
	jmp	.label_1048
.label_1246:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_1281
	mov	rsp, rsp
	jmp	.label_1289
.label_1281:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_1253
	jmp	.label_1048
.label_1289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1011
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_1253
	mov	rbp, rbp
	jmp	.label_1048
.label_1011:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_1253
.label_1048:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_1253
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_1325
.label_1253:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	jne	.label_729
	mov	rbp, rbp
	jmp	.label_711
.label_1325:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_729
	mov	rsp, rsp
	jmp	.label_711
.label_729:
	mov	rbp, rbp
	jmp	.label_823
.label_711:
	jmp	.label_668
.label_5769:
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x258]
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
	jne	.label_1372
	lea	rdi, [rdi]
	jmp	.label_823
.label_1372:
	jmp	.label_668
.label_5770:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	dword ptr [rbp - 0x41c], eax
	call	apply_relative_time
	nop	
	test	al, 1
	jne	.label_1398
	jmp	.label_823
.label_1398:
	nop	
	jmp	.label_668
.label_5771:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	dword ptr [rbp - 0x5d4], eax
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	mov	rbp, rbp
	jne	.label_1431
	jmp	.label_823
.label_1431:
	jmp	.label_668
.label_5772:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x380]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x380], 0
	nop	
	mov	qword ptr [rbp - 0x378], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], 0
	mov	qword ptr [rbp - 0x368], 0
	mov	qword ptr [rbp - 0x360], 0
	mov	qword ptr [rbp - 0x358], 0
	mov	dword ptr [rbp - 0x350], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x2a0], rcx
	jmp	.label_668
.label_5773:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x498]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x498], 0
	mov	qword ptr [rbp - 0x490], 0
	mov	qword ptr [rbp - 0x488], 0
	mov	qword ptr [rbp - 0x480], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x478], 0
	mov	qword ptr [rbp - 0x470], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x468], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x2a0], rcx
	jmp	.label_668
.label_5774:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x140]
	nop	
	lea	rsi, [rbp - 0x2a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x138], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], 0
	mov	qword ptr [rbp - 0x120], 0
	mov	qword ptr [rbp - 0x118], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x2a0], 1
	jmp	.label_668
.label_5775:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0xa8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xa8], 0
	nop	
	mov	qword ptr [rbp - 0xa0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], 0
	mov	qword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
	nop	
	mov	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], 0
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x298], rcx
	nop	
	jmp	.label_668
.label_5776:
	mov	eax, 0x38
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x640]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x640], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x638], 0
	mov	qword ptr [rbp - 0x630], 0
	mov	qword ptr [rbp - 0x628], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x620], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x618], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x610], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x298], rcx
	mov	rsp, rsp
	jmp	.label_668
.label_5777:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x4d0]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x4d0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c8], 0
	mov	qword ptr [rbp - 0x4c0], 0
	mov	qword ptr [rbp - 0x4b8], 0
	mov	qword ptr [rbp - 0x4b0], 0
	mov	qword ptr [rbp - 0x4a8], 0
	mov	dword ptr [rbp - 0x4a0], 0
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [rbp - 0x298], 1
	jmp	.label_668
.label_5778:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rbp - 0xf8]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], 0
	nop	
	mov	byte ptr [rbp - 0x2a1], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0x2a1]
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1655
	mov	rsp, rsp
	jmp	.label_1450
.label_1655:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1665
	jmp	.label_1669
.label_1665:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1670
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_1551
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_670
	jmp	.label_681
.label_1551:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_1687
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_670
	lea	rdi, [rdi]
	jmp	.label_681
.label_1687:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	movsx	esi, dil
	mov	rsp, rsp
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_670
	lea	rdi, [rdi]
	jmp	.label_681
.label_1670:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_706
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_670
	mov	rsp, rsp
	jmp	.label_681
.label_706:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_958
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_670
	jmp	.label_681
.label_958:
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_670
.label_681:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_670
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_802
.label_670:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	nop	
	jne	.label_682
	jmp	.label_678
.label_802:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_682
	nop	
	jmp	.label_678
.label_1669:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_878
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x38], 0
	mov	rbp, rbp
	jge	.label_881
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x598], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x598]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_890
	jmp	.label_804
.label_881:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	jne	.label_909
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_890
	jmp	.label_804
.label_909:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_890
	jmp	.label_804
.label_878:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_930
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_890
	jmp	.label_804
.label_930:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_942
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3e0], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3e0]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_890
	mov	rsp, rsp
	jmp	.label_804
.label_942:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cqo	
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_890
.label_804:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_890
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_985
.label_890:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	nop	
	imul	edx, esi
	lea	rdi, [rdi]
	mov	dil, dl
	movsx	rcx, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_682
	mov	rbp, rbp
	jmp	.label_678
.label_985:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	mov	dil, al
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_682
	nop	
	jmp	.label_678
.label_1450:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1590
	jmp	.label_1050
.label_1590:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1052
	jmp	.label_1056
.label_1052:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1057
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1065
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	idiv	edi
	mov	rsp, rsp
	cmp	esi, eax
	jl	.label_1075
	lea	rsi, [rsi]
	jmp	.label_1092
.label_1065:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	jne	.label_1094
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1075
	jmp	.label_1092
.label_1094:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	lea	rsi, [rsi]
	movsx	esi, di
	cmp	eax, esi
	nop	
	jl	.label_1075
	mov	rbp, rbp
	jmp	.label_1092
.label_1057:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1118
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1075
	jmp	.label_1092
.label_1118:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1144
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	jl	.label_1075
	jmp	.label_1092
.label_1144:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	movsx	esi, di
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_1075
.label_1092:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	esi, cx
	imul	edx, esi
	cmp	edx, 0xffff8000
	jl	.label_1075
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
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
	jge	.label_1202
.label_1075:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	imul	esi, edi
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_682
	jmp	.label_678
.label_1202:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	si, dx
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_682
	lea	rsi, [rsi]
	jmp	.label_678
.label_1056:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_1256
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1265
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x600], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x600]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1263
	nop	
	jmp	.label_1291
.label_1265:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_1293
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1263
	mov	rbp, rbp
	jmp	.label_1291
.label_1293:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_1263
	lea	rdi, [rdi]
	jmp	.label_1291
.label_1256:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_1319
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1263
	jmp	.label_1291
.label_1319:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_1327
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x5e0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1263
	lea	rsi, [rsi]
	jmp	.label_1291
.label_1327:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_1263
.label_1291:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_1263
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_1355
.label_1263:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_682
	jmp	.label_678
.label_1355:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_682
	jmp	.label_678
.label_1050:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1408
	lea	rdi, [rdi]
	jmp	.label_1413
.label_1408:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1416
	lea	rsi, [rsi]
	jmp	.label_1419
.label_1416:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	nop	
	jge	.label_1423
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1433
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58c], edx
	cdq	
	idiv	esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x58c]
	lea	rsi, [rsi]
	cmp	esi, eax
	jl	.label_1134
	jmp	.label_1452
.label_1433:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, -1
	nop	
	jne	.label_1456
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1134
	nop	
	jmp	.label_1452
.label_1456:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xbc]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_1134
	mov	rsp, rsp
	jmp	.label_1452
.label_1423:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_1477
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1134
	jmp	.label_1452
.label_1477:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_1209
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd34], edx
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xd34]
	cmp	esi, eax
	jl	.label_1134
	jmp	.label_1452
.label_1209:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xcb8], edx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xcb8]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edi, ecx
	cmp	eax, edi
	mov	rbp, rbp
	jl	.label_1134
.label_1452:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	mov	rbp, rbp
	jl	.label_1134
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	nop	
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1553
.label_1134:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_682
	mov	rsp, rsp
	jmp	.label_678
.label_1553:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	imul	eax, esi
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	nop	
	jne	.label_682
	jmp	.label_678
.label_1419:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_1586
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1591
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x588], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x588]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1466
	jmp	.label_1616
.label_1591:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_1114
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_1466
	jmp	.label_1616
.label_1114:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_1466
	lea	rdi, [rdi]
	jmp	.label_1616
.label_1586:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_1637
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1466
	jmp	.label_1616
.label_1637:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1644
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x228], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0x228]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1466
	nop	
	jmp	.label_1616
.label_1644:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_1466
.label_1616:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rsp, rsp
	cmp	rax, -0x80000000
	jl	.label_1466
	mov	eax, 0x7fffffff
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1589
.label_1466:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_682
	jmp	.label_678
.label_1589:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_682
	jmp	.label_678
.label_1413:
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_855
	lea	rsi, [rsi]
	jmp	.label_708
.label_855:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_713
	jmp	.label_926
.label_713:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_721
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_728
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xcd8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcd8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_776
	jmp	.label_763
.label_728:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_765
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_776
	lea	rsi, [rsi]
	jmp	.label_763
.label_765:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_776
	jmp	.label_763
.label_721:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1259
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_776
	jmp	.label_763
.label_1259:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_800
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x108], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x108]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_776
	jmp	.label_763
.label_800:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_776
.label_763:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_776
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_1588
.label_776:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_682
	lea	rsi, [rsi]
	jmp	.label_678
.label_1588:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_682
	lea	rsi, [rsi]
	jmp	.label_678
.label_926:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], 0
	jge	.label_911
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_918
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x320], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x320]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	jl	.label_906
	jmp	.label_938
.label_918:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_939
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_906
	jmp	.label_938
.label_939:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	jl	.label_906
	lea	rsi, [rsi]
	jmp	.label_938
.label_911:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_962
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_906
	jmp	.label_938
.label_962:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	lea	rsi, [rsi]
	jge	.label_975
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xd80], rdx
	nop	
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd80]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_906
	jmp	.label_938
.label_975:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_906
.label_938:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_906
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1024
.label_906:
	mov	rbp, rbp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_682
	jmp	.label_678
.label_1024:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_682
	lea	rsi, [rsi]
	jmp	.label_678
.label_708:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1076
	jmp	.label_1079
.label_1076:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_1082
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_1089
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xd78], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd78]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_964
	jmp	.label_1007
.label_1089:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_1107
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_964
	jmp	.label_1007
.label_1107:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_964
	jmp	.label_1007
.label_1082:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_1133
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_964
	jmp	.label_1007
.label_1133:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1149
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	qword ptr [rbp - 0xbb0], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xbb0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_964
	jmp	.label_1007
.label_1149:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_964
.label_1007:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_964
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_1199
.label_964:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_682
	jmp	.label_678
.label_1199:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_682
	jmp	.label_678
.label_1079:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_1232
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1641
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4f0], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0x4f0]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1055
	jmp	.label_1068
.label_1641:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_857
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1055
	jmp	.label_1068
.label_857:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_1055
	mov	rsp, rsp
	jmp	.label_1068
.label_1232:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_1016
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1055
	lea	rdi, [rdi]
	jmp	.label_1068
.label_1016:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1306
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x338], rdx
	mov	rsp, rsp
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0x338]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1055
	jmp	.label_1068
.label_1306:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_1055
.label_1068:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_1055
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1343
.label_1055:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_682
	lea	rsi, [rsi]
	jmp	.label_678
.label_1343:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_682
	nop	
	jmp	.label_678
.label_682:
	jmp	.label_823
.label_678:
	nop	
	jmp	.label_668
.label_5779:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rsi, [rbp - 0xba8]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xba8], 0
	mov	qword ptr [rbp - 0xba0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb98], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb90], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb88], 0
	mov	qword ptr [rbp - 0xb80], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb78], 0
	mov	byte ptr [rbp - 0x3f9], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0x3f9]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1409
	mov	rsp, rsp
	jmp	.label_1414
.label_1409:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1417
	jmp	.label_1424
.label_1417:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1425
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_1435
	nop	
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
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
	jl	.label_1443
	nop	
	jmp	.label_1174
.label_1435:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, -1
	jne	.label_1458
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1443
	jmp	.label_1174
.label_1458:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_1443
	lea	rsi, [rsi]
	jmp	.label_1174
.label_1425:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jne	.label_1485
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1443
	jmp	.label_1174
.label_1485:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1496
	mov	rsp, rsp
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
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
	jl	.label_1443
	jmp	.label_1174
.label_1496:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rbp, rbp
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_1443
.label_1174:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	nop	
	cmp	edx, -0x80
	jl	.label_1443
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	imul	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	jge	.label_1646
.label_1443:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_674
	mov	rbp, rbp
	jmp	.label_700
.label_1646:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	nop	
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_674
	mov	rbp, rbp
	jmp	.label_700
.label_1424:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_1598
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1606
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3d0], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x3d0]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_864
	jmp	.label_1392
.label_1606:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_1623
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_864
	jmp	.label_1392
.label_1623:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_864
	mov	rbp, rbp
	jmp	.label_1392
.label_1598:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1648
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_864
	jmp	.label_1392
.label_1648:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1399
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xce0], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xce0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_864
	jmp	.label_1392
.label_1399:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_864
.label_1392:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	mov	rsp, rsp
	jl	.label_864
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1685
.label_864:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	rsp, rsp
	mov	dil, dl
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_674
	lea	rsi, [rsi]
	jmp	.label_700
.label_1685:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	nop	
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_674
	lea	rsi, [rsi]
	jmp	.label_700
.label_1414:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_726
	jmp	.label_738
.label_726:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_742
	mov	rbp, rbp
	jmp	.label_747
.label_742:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_749
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_761
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
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
	jl	.label_772
	nop	
	jmp	.label_783
.label_761:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, -1
	nop	
	jne	.label_787
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_772
	lea	rsi, [rsi]
	jmp	.label_783
.label_787:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	nop	
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	di, cx
	mov	rbp, rbp
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_772
	mov	rbp, rbp
	jmp	.label_783
.label_749:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1441
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_772
	jmp	.label_783
.label_1441:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_846
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
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
	jl	.label_772
	nop	
	jmp	.label_783
.label_846:
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	cdq	
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	nop	
	jl	.label_772
.label_783:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_772
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	lea	rdi, [rdi]
	imul	esi, edi
	cmp	eax, esi
	jge	.label_917
.label_772:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	nop	
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_674
	lea	rsi, [rsi]
	jmp	.label_700
.label_917:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	mov	rbp, rbp
	imul	eax, edi
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x290], rdx
	nop	
	test	cl, 1
	nop	
	jne	.label_674
	mov	rsp, rsp
	jmp	.label_700
.label_747:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_973
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1270
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x608], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x608]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_983
	lea	rsi, [rsi]
	jmp	.label_999
.label_1270:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_1001
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_983
	nop	
	jmp	.label_999
.label_1001:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_983
	jmp	.label_999
.label_973:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_1027
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_983
	jmp	.label_999
.label_1027:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1044
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x460], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0x460]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_983
	lea	rdi, [rdi]
	jmp	.label_999
.label_1044:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_983
.label_999:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_983
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1093
.label_983:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_674
	jmp	.label_700
.label_1093:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_674
	lea	rdi, [rdi]
	jmp	.label_700
.label_738:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1153
	jmp	.label_1155
.label_1153:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1157
	jmp	.label_1161
.label_1157:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1163
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_1172
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5b4], edx
	mov	rsp, rsp
	cdq	
	idiv	esi
	mov	esi, dword ptr [rbp - 0x5b4]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_1178
	jmp	.label_1195
.label_1172:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, -1
	lea	rdi, [rdi]
	jne	.label_1197
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1178
	nop	
	jmp	.label_1195
.label_1197:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0x250], edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	lea	rdi, [rdi]
	cmp	eax, edi
	lea	rsi, [rsi]
	jl	.label_1178
	lea	rdi, [rdi]
	jmp	.label_1195
.label_1163:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1221
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1178
	jmp	.label_1195
.label_1221:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1235
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xfc], edx
	mov	rbp, rbp
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_1178
	jmp	.label_1195
.label_1235:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x244], edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x244]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_1178
.label_1195:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	nop	
	imul	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_1178
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_1298
.label_1178:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	imul	edx, esi
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_674
	lea	rsi, [rsi]
	jmp	.label_700
.label_1298:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_674
	lea	rdi, [rdi]
	jmp	.label_700
.label_1161:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_1338
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1345
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xcd0], rdx
	lea	rsi, [rsi]
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xcd0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1180
	jmp	.label_871
.label_1345:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_1544
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1180
	jmp	.label_871
.label_1544:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1180
	jmp	.label_871
.label_1338:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1386
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1180
	mov	rsp, rsp
	jmp	.label_871
.label_1386:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1465
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x580], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0x580]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_1180
	jmp	.label_871
.label_1465:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_1180
.label_871:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80000000
	nop	
	jl	.label_1180
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	jge	.label_1451
.label_1180:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x290], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_674
	jmp	.label_700
.label_1451:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rdx
	nop	
	test	cl, 1
	jne	.label_674
	lea	rdi, [rdi]
	jmp	.label_700
.label_1155:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1491
	jmp	.label_1497
.label_1491:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1499
	jmp	.label_1504
.label_1499:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_1507
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1517
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd30], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xd30]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_907
	mov	rsp, rsp
	jmp	.label_821
.label_1517:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	jne	.label_1540
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_907
	jmp	.label_821
.label_1540:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_907
	jmp	.label_821
.label_1507:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_1563
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_907
	jmp	.label_821
.label_1563:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1572
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xc58], rdx
	lea	rdi, [rdi]
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0xc58]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_907
	jmp	.label_821
.label_1572:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_907
.label_821:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_907
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1601
.label_907:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_674
	mov	rsp, rsp
	jmp	.label_700
.label_1601:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_674
	mov	rsp, rsp
	jmp	.label_700
.label_1504:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_1642
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1330
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	qword ptr [rbp - 0xcc8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xcc8]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_910
	mov	rbp, rbp
	jmp	.label_838
.label_1330:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_1475
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_910
	jmp	.label_838
.label_1475:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_910
	nop	
	jmp	.label_838
.label_1642:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_1679
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_910
	nop	
	jmp	.label_838
.label_1679:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1658
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x340], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x340]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_910
	lea	rdi, [rdi]
	jmp	.label_838
.label_1658:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_910
.label_838:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_910
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_730
.label_910:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_674
	mov	rbp, rbp
	jmp	.label_700
.label_730:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_674
	nop	
	jmp	.label_700
.label_1497:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1236
	jmp	.label_1033
.label_1236:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_795
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1315
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xb8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xb8]
	nop	
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_769
	jmp	.label_744
.label_1315:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_827
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_769
	jmp	.label_744
.label_827:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_769
	jmp	.label_744
.label_795:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_858
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_769
	jmp	.label_744
.label_858:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_873
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x4f8], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_769
	jmp	.label_744
.label_873:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_769
.label_744:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_769
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_925
.label_769:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_674
	nop	
	jmp	.label_700
.label_925:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_674
	mov	rsp, rsp
	jmp	.label_700
.label_1033:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_1187
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_968
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x260], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x260]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_751
	nop	
	jmp	.label_989
.label_968:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_991
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_751
	jmp	.label_989
.label_991:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_751
	jmp	.label_989
.label_1187:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1211
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_751
	jmp	.label_989
.label_1211:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_1034
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xcf0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcf0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_751
	jmp	.label_989
.label_1034:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_751
.label_989:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	jl	.label_751
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	jge	.label_814
.label_751:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_674
	jmp	.label_700
.label_814:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_674
	jmp	.label_700
.label_674:
	jmp	.label_823
.label_700:
	jmp	.label_668
.label_5780:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x688]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x688], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x680], 0
	mov	qword ptr [rbp - 0x678], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x670], 0
	mov	qword ptr [rbp - 0x668], 0
	mov	qword ptr [rbp - 0x660], 0
	mov	dword ptr [rbp - 0x658], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	jmp	.label_668
.label_5781:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0x178]
	nop	
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x178], 0
	nop	
	mov	qword ptr [rbp - 0x170], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], 0
	mov	qword ptr [rbp - 0x158], 0
	mov	qword ptr [rbp - 0x150], 0
	mov	dword ptr [rbp - 0x148], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x288], rcx
	jmp	.label_668
.label_5782:
	nop	
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x70]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	rdi, rsi
	nop	
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rcx
	mov	rsp, rsp
	jmp	.label_668
.label_5783:
	mov	rsp, rsp
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x570]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x570], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x568], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x560], 0
	nop	
	mov	qword ptr [rbp - 0x558], 0
	mov	qword ptr [rbp - 0x550], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x548], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x540], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	qword ptr [rbp - 0x288], 1
	jmp	.label_668
.label_5784:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0xd28]
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd28], 0
	mov	qword ptr [rbp - 0xd20], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd18], 0
	mov	qword ptr [rbp - 0xd10], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd08], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd00], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcf8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	qword ptr [rbp - 0x280], rcx
	mov	rbp, rbp
	jmp	.label_668
.label_5785:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0xc28]
	nop	
	lea	rsi, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc28], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc20], 0
	nop	
	mov	qword ptr [rbp - 0xc18], 0
	mov	qword ptr [rbp - 0xc10], 0
	mov	qword ptr [rbp - 0xc08], 0
	mov	qword ptr [rbp - 0xc00], 0
	mov	dword ptr [rbp - 0xbf8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x280], rcx
	lea	rdi, [rdi]
	jmp	.label_668
.label_5786:
	mov	eax, 0x38
	nop	
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x3b8]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x3b8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3b0], 0
	mov	qword ptr [rbp - 0x3a8], 0
	mov	qword ptr [rbp - 0x3a0], 0
	mov	qword ptr [rbp - 0x398], 0
	mov	qword ptr [rbp - 0x390], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x388], 0
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	qword ptr [rbp - 0x280], 1
	jmp	.label_668
.label_5787:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x2e0]
	lea	rsi, [rbp - 0x2a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2e0], 0
	mov	qword ptr [rbp - 0x2d8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2d0], 0
	mov	qword ptr [rbp - 0x2c8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2c0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2b8], 0
	mov	dword ptr [rbp - 0x2b0], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x278], rcx
	lea	rsi, [rsi]
	jmp	.label_668
.label_5788:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x458]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x458], 0
	mov	qword ptr [rbp - 0x450], 0
	mov	qword ptr [rbp - 0x448], 0
	mov	qword ptr [rbp - 0x440], 0
	nop	
	mov	qword ptr [rbp - 0x438], 0
	mov	qword ptr [rbp - 0x430], 0
	nop	
	mov	dword ptr [rbp - 0x428], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x278], rcx
	jmp	.label_668
.label_5789:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x1b0]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x1b0], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1a0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x198], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x190], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], 0
	mov	dword ptr [rbp - 0x180], 0
	mov	rdi, rsi
	mov	rsi, rcx
	nop	
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x278], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x270], eax
	jmp	.label_668
.label_5790:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x318]
	lea	rsi, [rbp - 0x2a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x310], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x308], 0
	mov	qword ptr [rbp - 0x300], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2f8], 0
	nop	
	mov	qword ptr [rbp - 0x2f0], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2e8], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x278], rcx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	dword ptr [rbp - 0x270], eax
	jmp	.label_668
.label_5791:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x6c8]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6c8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6c0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6b8], 0
	mov	qword ptr [rbp - 0x6b0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6a8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6a0], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x698], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x278], 1
	mov	rbp, rbp
	jmp	.label_668
.label_5792:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x530]
	nop	
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x530], 0
	mov	qword ptr [rbp - 0x528], 0
	mov	qword ptr [rbp - 0x520], 0
	mov	qword ptr [rbp - 0x518], 0
	mov	qword ptr [rbp - 0x510], 0
	mov	qword ptr [rbp - 0x508], 0
	mov	dword ptr [rbp - 0x500], 0
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x2a0], rcx
	jmp	.label_668
.label_5793:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xca8]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	qword ptr [rbp - 0xca8], 0
	mov	qword ptr [rbp - 0xca0], 0
	mov	qword ptr [rbp - 0xc98], 0
	mov	qword ptr [rbp - 0xc90], 0
	mov	qword ptr [rbp - 0xc88], 0
	mov	qword ptr [rbp - 0xc80], 0
	nop	
	mov	dword ptr [rbp - 0xc78], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x298], rcx
	lea	rsi, [rsi]
	jmp	.label_668
.label_5794:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rsi, [rbp - 0xd70]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xd70], 0
	mov	qword ptr [rbp - 0xd68], 0
	mov	qword ptr [rbp - 0xd60], 0
	mov	qword ptr [rbp - 0xd58], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd50], 0
	mov	qword ptr [rbp - 0xd48], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd40], 0
	mov	byte ptr [rbp - 0xcad], cl
	call	memcpy
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0xcad]
	test	cl, 1
	nop	
	jne	.label_1660
	jmp	.label_1113
.label_1660:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1472
	jmp	.label_1671
.label_1472:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1672
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1674
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	nop	
	cdq	
	idiv	edi
	mov	rbp, rbp
	cmp	esi, eax
	mov	rbp, rbp
	jl	.label_669
	jmp	.label_676
.label_1674:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_1688
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_669
	mov	rsp, rsp
	jmp	.label_676
.label_1688:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	nop	
	cdq	
	nop	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_669
	jmp	.label_676
.label_1672:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_703
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_669
	jmp	.label_676
.label_703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_722
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
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
	jl	.label_669
	jmp	.label_676
.label_722:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	cdq	
	idiv	esi
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_669
.label_676:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	imul	edx, esi
	cmp	edx, -0x80
	jl	.label_669
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
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
	jge	.label_791
.label_669:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_808
	lea	rsi, [rsi]
	jmp	.label_799
.label_791:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	imul	eax, edi
	mov	sil, al
	movsx	rdx, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_808
	jmp	.label_799
.label_1671:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_866
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_874
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3d8], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x3d8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_818
	jmp	.label_898
.label_874:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	jne	.label_899
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_818
	jmp	.label_898
.label_899:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_818
	jmp	.label_898
.label_866:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_922
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_818
	nop	
	jmp	.label_898
.label_922:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_969
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5f0], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0x5f0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_818
	lea	rsi, [rsi]
	jmp	.label_898
.label_969:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_818
.label_898:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	jl	.label_818
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_1251
.label_818:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	mov	dil, dl
	mov	rsp, rsp
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_808
	jmp	.label_799
.label_1251:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	imul	eax, esi
	lea	rdi, [rdi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_808
	nop	
	jmp	.label_799
.label_1113:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1029
	jmp	.label_1571
.label_1029:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1041
	jmp	.label_1045
.label_1041:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1046
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1054
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_1047
	lea	rsi, [rsi]
	jmp	.label_1080
.label_1054:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	lea	rdi, [rdi]
	jne	.label_757
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1047
	jmp	.label_1080
.label_757:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	esi, di
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1047
	jmp	.label_1080
.label_1046:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_979
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1047
	lea	rsi, [rsi]
	jmp	.label_1080
.label_979:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1090
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	nop	
	movsx	edi, dx
	nop	
	cdq	
	idiv	edi
	cmp	esi, eax
	jl	.label_1047
	jmp	.label_1080
.label_1090:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_1047
.label_1080:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
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
	jl	.label_1047
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	mov	rsp, rsp
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_1193
.label_1047:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_808
	nop	
	jmp	.label_799
.label_1193:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_808
	lea	rdi, [rdi]
	jmp	.label_799
.label_1045:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_1249
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1257
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x578], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x578]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1042
	lea	rdi, [rdi]
	jmp	.label_1284
.label_1257:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_1287
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1042
	jmp	.label_1284
.label_1287:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_1042
	lea	rsi, [rsi]
	jmp	.label_1284
.label_1249:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_1314
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1042
	jmp	.label_1284
.label_1314:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1666
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4e8], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x4e8]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1042
	jmp	.label_1284
.label_1666:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_1042
.label_1284:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x8000
	mov	rbp, rbp
	jl	.label_1042
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1350
.label_1042:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	jne	.label_808
	lea	rdi, [rdi]
	jmp	.label_799
.label_1350:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	lea	rdi, [rdi]
	imul	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	qword ptr [rbp - 0x290], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_808
	mov	rbp, rbp
	jmp	.label_799
.label_1571:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1397
	jmp	.label_740
.label_1397:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1403
	jmp	.label_1410
.label_1403:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_1411
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1418
	nop	
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x400], edx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0x400]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_1429
	mov	rsp, rsp
	jmp	.label_1446
.label_1418:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, -1
	nop	
	jne	.label_1449
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1429
	lea	rsi, [rsi]
	jmp	.label_1446
.label_1449:
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc0], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xc0]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edi, ecx
	mov	rsp, rsp
	cmp	eax, edi
	nop	
	jl	.label_1429
	jmp	.label_1446
.label_1411:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1200
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1429
	nop	
	jmp	.label_1446
.label_1200:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1091
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xcb4], edx
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xcb4]
	mov	rsp, rsp
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_1429
	jmp	.label_1446
.label_1091:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xce4], edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xce4]
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rsi, [rsi]
	cmp	eax, edi
	jl	.label_1429
.label_1446:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_1429
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	cmp	eax, edx
	jge	.label_1575
.label_1429:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_808
	jmp	.label_799
.label_1575:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	nop	
	jne	.label_808
	mov	rsp, rsp
	jmp	.label_799
.label_1410:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_1577
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1582
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x238], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x238]
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1223
	jmp	.label_1316
.label_1582:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_1604
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1223
	jmp	.label_1316
.label_1604:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1223
	mov	rsp, rsp
	jmp	.label_1316
.label_1577:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1198
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1223
	mov	rsp, rsp
	jmp	.label_1316
.label_1198:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1638
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xbf0], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xbf0]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1223
	jmp	.label_1316
.label_1638:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1223
.label_1316:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rax, qword ptr [rcx]
	nop	
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_1223
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1545
.label_1223:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	nop	
	jne	.label_808
	nop	
	jmp	.label_799
.label_1545:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_808
	lea	rdi, [rdi]
	jmp	.label_799
.label_740:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_698
	mov	rbp, rbp
	jmp	.label_835
.label_698:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_704
	mov	rsp, rsp
	jmp	.label_888
.label_704:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_715
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_933
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3c8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x3c8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_731
	jmp	.label_758
.label_933:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_762
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_731
	jmp	.label_758
.label_762:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_731
	mov	rbp, rbp
	jmp	.label_758
.label_715:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_786
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_731
	nop	
	jmp	.label_758
.label_786:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_798
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x708], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_731
	jmp	.label_758
.label_798:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_731
.label_758:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_731
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rax, rcx
	jge	.label_851
.label_731:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_808
	jmp	.label_799
.label_851:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_808
	mov	rsp, rsp
	jmp	.label_799
.label_888:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_775
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_950
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4e0], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x4e0]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_914
	mov	rsp, rsp
	jmp	.label_829
.label_950:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_954
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_914
	nop	
	jmp	.label_829
.label_954:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_914
	jmp	.label_829
.label_775:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_952
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_914
	jmp	.label_829
.label_952:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_961
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x330], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x330]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_914
	mov	rsp, rsp
	jmp	.label_829
.label_961:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_914
.label_829:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_914
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1013
.label_914:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_808
	mov	rsp, rsp
	jmp	.label_799
.label_1013:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_808
	nop	
	jmp	.label_799
.label_835:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1067
	mov	rbp, rbp
	jmp	.label_1072
.label_1067:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_1074
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1081
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	qword ptr [rbp - 0x3f8], rdx
	mov	rsp, rsp
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3f8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1087
	jmp	.label_987
.label_1081:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_1100
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1087
	lea	rdi, [rdi]
	jmp	.label_987
.label_1100:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_1087
	nop	
	jmp	.label_987
.label_1074:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_1130
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1087
	jmp	.label_987
.label_1130:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1147
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3e8], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0x3e8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_1087
	jmp	.label_987
.label_1147:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_1087
.label_987:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_1087
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1430
.label_1087:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	jne	.label_808
	nop	
	jmp	.label_799
.label_1430:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_808
	jmp	.label_799
.label_1072:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_1227
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1233
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xb0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	nop	
	jl	.label_955
	mov	rsp, rsp
	jmp	.label_803
.label_1233:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_1017
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_955
	jmp	.label_803
.label_1017:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_955
	jmp	.label_803
.label_1227:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_1653
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_955
	nop	
	jmp	.label_803
.label_1653:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1299
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc30], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc30]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_955
	lea	rdi, [rdi]
	jmp	.label_803
.label_1299:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_955
.label_803:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_955
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1462
.label_955:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	nop	
	jne	.label_808
	jmp	.label_799
.label_1462:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_808
	mov	rsp, rsp
	jmp	.label_799
.label_808:
	jmp	.label_823
.label_799:
	jmp	.label_668
.label_5795:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x1f0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	qword ptr [rbp - 0x1f0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], 0
	mov	qword ptr [rbp - 0x1e0], 0
	mov	qword ptr [rbp - 0x1d8], 0
	nop	
	mov	qword ptr [rbp - 0x1d0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], 0
	mov	dword ptr [rbp - 0x1c0], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x288], rcx
	jmp	.label_668
.label_5796:
	lea	rdi, [rdi]
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xbe8]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xbe8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xbe0], 0
	mov	qword ptr [rbp - 0xbd8], 0
	mov	qword ptr [rbp - 0xbd0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xbc8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xbc0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbb8], 0
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x280], rcx
	mov	rbp, rbp
	jmp	.label_668
.label_5797:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xdb8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xdb8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xdb0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xda8], 0
	mov	qword ptr [rbp - 0xda0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd98], 0
	mov	qword ptr [rbp - 0xd90], 0
	mov	dword ptr [rbp - 0xd88], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x278], rcx
	jmp	.label_668
.label_5798:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rcx, [rbp - 0x700]
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	qword ptr [rbp - 0x700], 0
	mov	qword ptr [rbp - 0x6f8], 0
	mov	qword ptr [rbp - 0x6f0], 0
	nop	
	mov	qword ptr [rbp - 0x6e8], 0
	mov	qword ptr [rbp - 0x6e0], 0
	mov	qword ptr [rbp - 0x6d8], 0
	mov	dword ptr [rbp - 0x6d0], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	jmp	.label_668
.label_5799:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	time_overflow
	nop	
	test	al, 1
	jne	.label_1534
	nop	
	jmp	.label_1536
.label_1534:
	jmp	.label_823
.label_1536:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2a0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x298], 0
	jmp	.label_668
.label_5800:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rdi, qword ptr [rax + 8]
	call	time_overflow
	test	al, 1
	jne	.label_1555
	jmp	.label_1558
.label_1555:
	jmp	.label_823
.label_1558:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x2a0], rax
	mov	qword ptr [rbp - 0x298], 0
	lea	rsi, [rsi]
	jmp	.label_668
.label_5801:
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rax, qword ptr [rbp - 0x258]
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
	jmp	.label_668
.label_5802:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
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
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
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
	mov	dword ptr [rbp - 0x5c4], edx
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1602
	jmp	.label_823
.label_1602:
	jmp	.label_668
.label_5803:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2a0], -1
	mov	rbp, rbp
	jmp	.label_668
.label_5804:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a0], rax
	nop	
	jmp	.label_668
.label_1594:
	jmp	.label_668
.label_668:
	xor	eax, eax
	mov	ecx, 0x38
	mov	edx, ecx
	lea	rsi, [rbp - 0x2a0]
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	r8, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	mov	r10, rdi
	sub	r10, r9
	mov	rbp, rbp
	imul	r9, r10, 0x38
	add	r8, r9
	mov	qword ptr [rbp - 0x258], r8
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	mov	r8, qword ptr [rbp - 0x418]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	lea	rdi, [rdi]
	sub	rdi, r9
	lea	rdi, [rdi]
	shl	rdi, 1
	add	r8, rdi
	mov	qword ptr [rbp - 0x418], r8
	nop	
	mov	dword ptr [rbp - 0x22c], 0
	mov	rdi, qword ptr [rbp - 0x258]
	add	rdi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x258], rdi
	mov	dword ptr [rbp - 0x40c], eax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x410]
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yyr1]]
	mov	dword ptr [rbp - 0x410], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x410]
	mov	rsp, rsp
	sub	eax, 0x1c
	movsxd	rdx, eax
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yypgoto]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	movsx	ecx, word ptr [rdx]
	lea	rsi, [rsi]
	add	eax, ecx
	mov	dword ptr [rbp - 0x4d4], eax
	mov	eax, dword ptr [rbp - 0x40c]
	cmp	eax, dword ptr [rbp - 0x4d4]
	jg	.label_1650
	cmp	dword ptr [rbp - 0x4d4], 0x70
	mov	rbp, rbp
	jg	.label_1650
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x418]
	nop	
	movsx	edx, word ptr [rax]
	cmp	ecx, edx
	jne	.label_1650
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	dword ptr [rbp - 0x4d4], ecx
	lea	rsi, [rsi]
	jmp	.label_1680
.label_1650:
	mov	eax, dword ptr [rbp - 0x410]
	sub	eax, 0x1c
	mov	rsp, rsp
	movsxd	rcx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + yydefgoto]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4d4], eax
.label_1680:
	jmp	.label_903
.label_1592:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xcac], -2
	mov	rbp, rbp
	jne	.label_1684
	mov	eax, 0xfffffffe
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5f4], eax
	jmp	.label_673
.label_1684:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcac], 0x115
	ja	.label_683
	movsxd	rax, dword ptr [rbp - 0xcac]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0x248], ecx
	jmp	.label_690
.label_683:
	lea	rsi, [rsi]
	mov	eax, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x248], eax
	jmp	.label_690
.label_690:
	nop	
	mov	eax, dword ptr [rbp - 0x248]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5f4], eax
.label_673:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5f4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], eax
	cmp	dword ptr [rbp - 0x68c], 0
	mov	rbp, rbp
	jne	.label_710
	nop	
	movabs	rsi, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc50]
	add	eax, 1
	mov	dword ptr [rbp - 0xc50], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	call	yyerror
	mov	dword ptr [rbp - 0xcbc], eax
.label_710:
	cmp	dword ptr [rbp - 0x68c], 3
	lea	rsi, [rsi]
	jne	.label_746
	cmp	dword ptr [rbp - 0xcac], 0
	jg	.label_752
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xcac], 0
	mov	rsp, rsp
	jne	.label_756
	jmp	.label_823
.label_756:
	lea	rdi, [rdi]
	jmp	.label_767
.label_752:
	movabs	rdi, OFFSET FLAT:.str.13_0
	nop	
	lea	rdx, [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	call	yydestruct
	mov	dword ptr [rbp - 0xcac], 0xfffffffe
.label_767:
	jmp	.label_746
.label_746:
	nop	
	jmp	.label_778
.label_778:
	mov	dword ptr [rbp - 0x68c], 3
.label_865:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x4d4]
	mov	rsp, rsp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	dword ptr [rbp - 0x410], ecx
	cmp	dword ptr [rbp - 0x410], -0x5d
	lea	rsi, [rsi]
	je	.label_784
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x410]
	add	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x410], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x410]
	jg	.label_797
	cmp	dword ptr [rbp - 0x410], 0x70
	mov	rsp, rsp
	jg	.label_797
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x410]
	lea	rdi, [rdi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	cmp	ecx, 1
	mov	rbp, rbp
	jne	.label_797
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x410]
	movzx	edx,  byte ptr [byte ptr [+ (rcx * 1) + yytable]]
	nop	
	mov	dword ptr [rbp - 0x410], edx
	cmp	eax, dword ptr [rbp - 0x410]
	jge	.label_819
	nop	
	jmp	.label_833
.label_819:
	jmp	.label_797
.label_797:
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0x418]
	cmp	rax, qword ptr [rbp - 0x5b0]
	mov	rbp, rbp
	jne	.label_837
	lea	rdi, [rdi]
	jmp	.label_823
.label_837:
	movabs	rdi, OFFSET FLAT:.str.14_0
	movsxd	rax, dword ptr [rbp - 0x4d4]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x258]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x258], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x418]
	add	rax, -2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x418], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x418]
	movsx	esi, word ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4d4], esi
	jmp	.label_865
.label_833:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	lea	rcx, [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	add	rsi, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x258], rsi
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x410]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4d4], eax
	mov	rbp, rbp
	jmp	.label_903
.label_1468:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24c], 0
	nop	
	jmp	.label_908
.label_823:
	mov	dword ptr [rbp - 0x24c], 1
	nop	
	jmp	.label_908
.label_1321:
	movabs	rsi, OFFSET FLAT:.str.1_3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	call	yyerror
	mov	dword ptr [rbp - 0x24c], 2
	mov	dword ptr [rbp - 0x324], eax
.label_908:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xcac], -2
	mov	rbp, rbp
	je	.label_927
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcac], 0x115
	nop	
	ja	.label_929
	movsxd	rax, dword ptr [rbp - 0xcac]
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0x344], ecx
	lea	rsi, [rsi]
	jmp	.label_934
.label_929:
	mov	eax, 2
	mov	dword ptr [rbp - 0x344], eax
	jmp	.label_934
.label_934:
	mov	eax, dword ptr [rbp - 0x344]
	movabs	rdi, OFFSET FLAT:.str.16_0
	lea	rdx, [rbp - 0x38]
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x5c0]
	call	yydestruct
.label_927:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rdx, qword ptr [rbp - 0x258]
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
	mov	qword ptr [rbp - 0x258], rdx
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x418]
	movsxd	rsi, eax
	lea	rdi, [rdi]
	sub	rcx, rsi
	shl	rcx, 1
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x418], rdx
.label_1004:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x5b0]
	lea	rdi, [rdi]
	je	.label_981
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.17_1
	mov	rax, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	movsx	rax, word ptr [rax]
	lea	rsi, [rsi]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rax, -0x38
	mov	qword ptr [rbp - 0x258], rax
	mov	rax, qword ptr [rbp - 0x418]
	add	rax, -2
	nop	
	mov	qword ptr [rbp - 0x418], rax
	jmp	.label_1004
.label_981:
	lea	rax, [rbp - 0x220]
	nop	
	mov	rcx, qword ptr [rbp - 0x5b0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	je	.label_1247
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	rdi, rax
	call	free
.label_1247:
	nop	
	mov	eax, dword ptr [rbp - 0x24c]
	nop	
	add	rsp, 0xdf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4184f0

	.globl yylex
	.type yylex, @function
yylex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x5d0
	mov	qword ptr [rbp - 0x4f8], rdi
	mov	qword ptr [rbp - 0x160], rsi
.label_2126:
	lea	rdi, [rdi]
	jmp	.label_2033
.label_2033:
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x135], cl
	mov	rbp, rbp
	movzx	edi, byte ptr [rbp - 0x135]
	nop	
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_2044
	lea	rsi, [rsi]
	jmp	.label_2049
.label_2044:
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_2033
.label_2049:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2063
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	je	.label_2063
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x2b
	jne	.label_2070
.label_2063:
	mov	qword ptr [rbp - 0x288], 0
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x2d
	je	.label_1832
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	cmp	eax, 0x2b
	jne	.label_1875
.label_1832:
	mov	eax, 1
	mov	ecx, 0xffffffff
	nop	
	movzx	edx, byte ptr [rbp - 0x135]
	nop	
	cmp	edx, 0x2d
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x110], eax
.label_2119:
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	mov	byte ptr [rbp - 0x135], sil
	nop	
	movzx	edi, byte ptr [rbp - 0x135]
	call	c_isspace
	mov	rsp, rsp
	test	al, 1
	jne	.label_2113
	lea	rsi, [rsi]
	jmp	.label_2116
.label_2113:
	jmp	.label_2119
.label_2116:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x135]
	call	c_isdigit
	mov	rbp, rbp
	test	al, 1
	jne	.label_2091
	mov	rbp, rbp
	jmp	.label_2126
.label_2091:
	nop	
	jmp	.label_2123
.label_1875:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x110], 0
.label_2123:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x378], rax
.label_1701:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2139
	nop	
	jmp	.label_2143
.label_2139:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2146
	jmp	.label_2150
.label_2146:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2152
	lea	rdi, [rdi]
	jmp	.label_2158
.label_2152:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_2161
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	nop	
	cmp	edx, 0xccccccc
	jl	.label_1693
	lea	rsi, [rsi]
	jmp	.label_2075
.label_2161:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2178
	jmp	.label_1926
.label_2178:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1693
	mov	rbp, rbp
	jmp	.label_2075
.label_1926:
	mov	eax, 0xf3333334
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_1693
	jmp	.label_2075
.label_2158:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2202
	lea	rsi, [rsi]
	jmp	.label_2205
.label_2202:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1693
	nop	
	jmp	.label_2075
.label_2205:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2213
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0xf3333334
	jl	.label_1693
	mov	rbp, rbp
	jmp	.label_2075
.label_2213:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_1693
.label_2075:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	imul	edx, edx, 0xa
	mov	rbp, rbp
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1693
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x288]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	imul	esi, esi, 0xa
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_1708
.label_1693:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x288]
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
	mov	qword ptr [rbp - 0x288], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1710
	jmp	.label_1718
.label_1708:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	eax, sil
	imul	eax, eax, 0xa
	lea	rdi, [rdi]
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	jne	.label_1710
	mov	rsp, rsp
	jmp	.label_1718
.label_2150:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1751
	lea	rsi, [rsi]
	jmp	.label_1757
.label_1751:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1759
	lea	rdi, [rdi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1778
	jmp	.label_1766
.label_1759:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1768
	nop	
	jmp	.label_1775
.label_1768:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1778
	jmp	.label_1766
.label_1775:
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1778
	lea	rsi, [rsi]
	jmp	.label_1766
.label_1757:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1795
	jmp	.label_1803
.label_1795:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1778
	nop	
	jmp	.label_1766
.label_1803:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1807
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], rax
	mov	rbp, rbp
	jl	.label_1778
	mov	rsp, rsp
	jmp	.label_1766
.label_1807:
	movabs	rax, 0xccccccccccccccc
	nop	
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1778
.label_1766:
	imul	rax, qword ptr [rbp - 0x288], 0xa
	cmp	rax, -0x80
	jl	.label_1778
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	cmp	rcx, rdx
	jge	.label_1835
.label_1778:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	edx, edx, 0xa
	nop	
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	rcx, sil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x288], rcx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1710
	jmp	.label_1718
.label_1835:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0xa
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	jne	.label_1710
	mov	rsp, rsp
	jmp	.label_1718
.label_2143:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1876
	jmp	.label_1881
.label_1876:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1884
	mov	rbp, rbp
	jmp	.label_1890
.label_1884:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1891
	nop	
	jmp	.label_1897
.label_1891:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1787
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0xccccccc
	lea	rdi, [rdi]
	jl	.label_1909
	mov	rbp, rbp
	jmp	.label_1920
.label_1787:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1922
	jmp	.label_1929
.label_1922:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1909
	nop	
	jmp	.label_1920
.label_1929:
	lea	rsi, [rsi]
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1909
	jmp	.label_1920
.label_1897:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1946
	nop	
	jmp	.label_1949
.label_1946:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1909
	jmp	.label_1920
.label_1949:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1954
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0xf3333334
	mov	rbp, rbp
	jl	.label_1909
	nop	
	jmp	.label_1920
.label_1954:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	jl	.label_1909
.label_1920:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	imul	edx, edx, 0xa
	cmp	edx, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_1909
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	imul	esi, esi, 0xa
	cmp	eax, esi
	jge	.label_1988
.label_1909:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	imul	esi, esi, 0xa
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	jne	.label_1710
	jmp	.label_1718
.label_1988:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	si, dx
	nop	
	movsx	eax, si
	nop	
	imul	eax, eax, 0xa
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1710
	jmp	.label_1718
.label_1890:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2018
	jmp	.label_2023
.label_2018:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_2024
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x288], rax
	lea	rdi, [rdi]
	jl	.label_2029
	nop	
	jmp	.label_2036
.label_2024:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2037
	nop	
	jmp	.label_2041
.label_2037:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2029
	lea	rdi, [rdi]
	jmp	.label_2036
.label_2041:
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_2029
	mov	rbp, rbp
	jmp	.label_2036
.label_2023:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2059
	jmp	.label_1755
.label_2059:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2029
	jmp	.label_2036
.label_1755:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_2071
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_2029
	jmp	.label_2036
.label_2071:
	nop	
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	jl	.label_2029
.label_2036:
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x288], 0xa
	cmp	rax, -0x8000
	jl	.label_2029
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2099
.label_2029:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0xa
	lea	rsi, [rsi]
	mov	si, dx
	mov	rsp, rsp
	movsx	rcx, si
	nop	
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1710
	jmp	.label_1718
.label_2099:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	qword ptr [rbp - 0x288], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1710
	jmp	.label_1718
.label_1881:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2138
	lea	rdi, [rdi]
	jmp	.label_2141
.label_2138:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2145
	lea	rdi, [rdi]
	jmp	.label_2149
.label_2145:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2153
	jmp	.label_2156
.label_2153:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_2157
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	ecx, 0xccccccc
	jl	.label_1941
	lea	rdi, [rdi]
	jmp	.label_2168
.label_2157:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2171
	lea	rdi, [rdi]
	jmp	.label_2179
.label_2171:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1941
	nop	
	jmp	.label_2168
.label_2179:
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_1941
	jmp	.label_2168
.label_2156:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2193
	lea	rdi, [rdi]
	jmp	.label_2201
.label_2193:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1941
	nop	
	jmp	.label_2168
.label_2201:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_2208
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0xf3333334
	lea	rdi, [rdi]
	jl	.label_1941
	mov	rsp, rsp
	jmp	.label_2168
.label_2208:
	mov	eax, 0xccccccc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_1941
.label_2168:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	ecx, ecx, 0xa
	cmp	ecx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_1941
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	edx, edx, 0xa
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1696
.label_1941:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1710
	jmp	.label_1718
.label_1696:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x288], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_1710
	jmp	.label_1718
.label_2149:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1733
	mov	rbp, rbp
	jmp	.label_1739
.label_1733:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	jge	.label_1740
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x288], rax
	nop	
	jl	.label_1744
	jmp	.label_1750
.label_1740:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1753
	jmp	.label_2054
.label_1753:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1744
	jmp	.label_1750
.label_2054:
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	nop	
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	jl	.label_1744
	mov	rbp, rbp
	jmp	.label_1750
.label_1739:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1771
	jmp	.label_1781
.label_1771:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1744
	jmp	.label_1750
.label_1781:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1788
	lea	rsi, [rsi]
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1744
	jmp	.label_1750
.label_1788:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	jl	.label_1744
.label_1750:
	imul	rax, qword ptr [rbp - 0x288], 0xa
	lea	rdi, [rdi]
	cmp	rax, -0x80000000
	jl	.label_1744
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1815
.label_1744:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x288], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1710
	jmp	.label_1718
.label_1815:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	imul	eax, eax, 0xa
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1710
	lea	rdi, [rdi]
	jmp	.label_1718
.label_2141:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1849
	jmp	.label_2078
.label_1849:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1856
	jmp	.label_1861
.label_1856:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1863
	lea	rdi, [rdi]
	jmp	.label_1867
.label_1863:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1870
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1874
	jmp	.label_1769
.label_1870:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1885
	jmp	.label_1889
.label_1885:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1874
	mov	rbp, rbp
	jmp	.label_1769
.label_1889:
	nop	
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	jl	.label_1874
	jmp	.label_1769
.label_1867:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1910
	jmp	.label_1917
.label_1910:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1874
	mov	rbp, rbp
	jmp	.label_1769
.label_1917:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1928
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1874
	mov	rsp, rsp
	jmp	.label_1769
.label_1928:
	movabs	rax, 0xccccccccccccccc
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	jl	.label_1874
.label_1769:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1874
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1846
.label_1874:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	jne	.label_1710
	jmp	.label_1718
.label_1846:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	qword ptr [rbp - 0x288], rdx
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1710
	mov	rsp, rsp
	jmp	.label_1718
.label_1861:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1980
	mov	rbp, rbp
	jmp	.label_1984
.label_1980:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1986
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1989
	jmp	.label_1994
.label_1986:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1996
	jmp	.label_2000
.label_1996:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1989
	jmp	.label_1994
.label_2000:
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	jl	.label_1989
	lea	rsi, [rsi]
	jmp	.label_1994
.label_1984:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1964
	nop	
	jmp	.label_2012
.label_1964:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1989
	jmp	.label_1994
.label_2012:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_2019
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1989
	jmp	.label_1994
.label_2019:
	nop	
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1989
.label_1994:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rcx, rax
	jl	.label_1989
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_2043
.label_1989:
	mov	al, 1
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x288], rcx
	nop	
	test	al, 1
	jne	.label_1710
	mov	rbp, rbp
	jmp	.label_1718
.label_2043:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	nop	
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1710
	jmp	.label_1718
.label_2078:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2077
	mov	rsp, rsp
	jmp	.label_1848
.label_2077:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2080
	mov	rbp, rbp
	jmp	.label_1906
.label_2080:
	nop	
	cmp	qword ptr [rbp - 0x288], 0
	nop	
	jge	.label_2088
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	nop	
	jl	.label_2093
	mov	rbp, rbp
	jmp	.label_2047
.label_2088:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2101
	jmp	.label_2108
.label_2101:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2093
	mov	rbp, rbp
	jmp	.label_2047
.label_2108:
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_2093
	lea	rsi, [rsi]
	jmp	.label_2047
.label_1906:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2127
	jmp	.label_2132
.label_2127:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2093
	jmp	.label_2047
.label_2132:
	cmp	qword ptr [rbp - 0x288], 0
	mov	rsp, rsp
	jge	.label_2176
	movabs	rax, 0xf333333333333334
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_2093
	jmp	.label_2047
.label_2176:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_2093
.label_2047:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	nop	
	cmp	rcx, rax
	jl	.label_2093
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rax, rcx
	jge	.label_2163
.label_2093:
	mov	al, 1
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	mov	qword ptr [rbp - 0x288], rcx
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1710
	jmp	.label_1718
.label_2163:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	qword ptr [rbp - 0x288], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1710
	lea	rdi, [rdi]
	jmp	.label_1718
.label_1848:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2192
	mov	rbp, rbp
	jmp	.label_2195
.label_2192:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_2198
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	mov	rsp, rsp
	jl	.label_1700
	jmp	.label_1709
.label_2198:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2083
	mov	rsp, rsp
	jmp	.label_2122
.label_2083:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1700
	mov	rbp, rbp
	jmp	.label_1709
.label_2122:
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1700
	lea	rsi, [rsi]
	jmp	.label_1709
.label_2195:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1691
	mov	rbp, rbp
	jmp	.label_1697
.label_1691:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1700
	nop	
	jmp	.label_1709
.label_1697:
	cmp	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	jge	.label_1711
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	mov	rsp, rsp
	jl	.label_1700
	lea	rdi, [rdi]
	jmp	.label_1709
.label_1711:
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	jl	.label_1700
.label_1709:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1700
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1742
.label_1700:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	nop	
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	jne	.label_1710
	jmp	.label_1718
.label_1742:
	xor	eax, eax
	nop	
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	nop	
	jne	.label_1710
	jmp	.label_1718
.label_1710:
	mov	dword ptr [rbp - 0x3c8], 0x3f
	mov	rbp, rbp
	jmp	.label_1735
.label_1718:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1765
	mov	rsp, rsp
	jmp	.label_1776
.label_1765:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1780
	jmp	.label_1782
.label_1780:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1783
	jmp	.label_1791
.label_1783:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1792
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x434], eax
	jmp	.label_1797
.label_1792:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x434], eax
.label_1797:
	mov	eax, dword ptr [rbp - 0x434]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jge	.label_1808
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x53c], edx
	jge	.label_1821
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x27c], eax
	jmp	.label_1829
.label_1821:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x27c], eax
.label_1829:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x27c]
	nop	
	mov	ecx, 0x80000000
	mov	dl, al
	movsx	eax, dl
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x53c]
	cmp	eax, ecx
	jl	.label_1842
	jmp	.label_1851
.label_1808:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1853
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x334], eax
	jmp	.label_2095
.label_1853:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x334], eax
.label_2095:
	mov	eax, dword ptr [rbp - 0x334]
	mov	ecx, 0x7fffffff
	mov	dl, al
	movsx	eax, dl
	sub	ecx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x288]
	mov	dl, sil
	movsx	eax, dl
	lea	rsi, [rsi]
	cmp	ecx, eax
	jl	.label_1842
	jmp	.label_1851
.label_1791:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1888
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1894
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x164], eax
	lea	rsi, [rsi]
	jmp	.label_1899
.label_1894:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x164], eax
.label_1899:
	mov	eax, dword ptr [rbp - 0x164]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe0], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a0], esi
	lea	rdi, [rdi]
	jge	.label_1914
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c0], eax
	mov	rsp, rsp
	jmp	.label_1934
.label_1914:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c0], eax
.label_1934:
	nop	
	mov	eax, dword ptr [rbp - 0x3c0]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x1a0]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0xe0]
	cmp	eax, edx
	jle	.label_1842
	lea	rsi, [rsi]
	jmp	.label_1851
.label_1888:
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1955
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x548], eax
	lea	rdi, [rdi]
	jmp	.label_1961
.label_1955:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x548], eax
.label_1961:
	mov	eax, dword ptr [rbp - 0x548]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_2225
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	esi, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0xdc], edx
	mov	dword ptr [rbp - 0x1cc], esi
	jge	.label_1724
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2b8], eax
	nop	
	jmp	.label_1992
.label_1724:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2b8], eax
.label_1992:
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1cc]
	add	edx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1842
	jmp	.label_1851
.label_2225:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x308], edx
	jge	.label_2013
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_2040
.label_2013:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd4], eax
.label_2040:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x308]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x1bc], edx
	mov	rsp, rsp
	jge	.label_2034
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28c], eax
	mov	rsp, rsp
	jmp	.label_2048
.label_2034:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28c], eax
.label_2048:
	mov	eax, dword ptr [rbp - 0x28c]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x1bc]
	nop	
	cmp	edx, eax
	mov	rsp, rsp
	jl	.label_1842
.label_1851:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x274], edx
	jge	.label_2211
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1860
.label_2211:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
.label_1860:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	cl, al
	nop	
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x274]
	add	edx, eax
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1842
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x1d0], edx
	mov	rbp, rbp
	jge	.label_2100
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1a4], eax
	jmp	.label_2115
.label_2100:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1a4], eax
.label_2115:
	mov	eax, dword ptr [rbp - 0x1a4]
	mov	ecx, 0x7f
	mov	rbp, rbp
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0x1d0]
	add	esi, eax
	nop	
	cmp	ecx, esi
	jge	.label_2129
.label_1842:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x3b8], edx
	mov	rsp, rsp
	jge	.label_2137
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], eax
	mov	rbp, rbp
	jmp	.label_2147
.label_2137:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xfc], eax
.label_2147:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0x3b8]
	lea	rsi, [rsi]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	rdi, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdi
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1698
	lea	rsi, [rsi]
	jmp	.label_1714
.label_2129:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x404], edx
	mov	rbp, rbp
	jge	.label_2182
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1e4], eax
	jmp	.label_2189
.label_2182:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1e4], eax
.label_2189:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1e4]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	ecx, dword ptr [rbp - 0x404]
	add	ecx, eax
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	jne	.label_1698
	jmp	.label_1714
.label_1782:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2219
	lea	rsi, [rsi]
	jmp	.label_2221
.label_2219:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2223
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x208], eax
	jmp	.label_2227
.label_2223:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x208], eax
.label_2227:
	mov	eax, dword ptr [rbp - 0x208]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_2170
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x90], rax
	jge	.label_1707
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3d8], eax
	jmp	.label_1715
.label_1707:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3d8], eax
.label_1715:
	mov	eax, dword ptr [rbp - 0x3d8]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, rcx
	nop	
	jl	.label_1728
	jmp	.label_1762
.label_2170:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1743
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x33c], eax
	lea	rdi, [rdi]
	jmp	.label_1836
.label_1743:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x33c], eax
.label_1836:
	nop	
	mov	eax, dword ptr [rbp - 0x33c]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1728
	nop	
	jmp	.label_1762
.label_2221:
	cmp	qword ptr [rbp - 0x288], 0
	nop	
	jge	.label_1764
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1772
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_2190
.label_1772:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x10], eax
.label_2190:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x4b0], rcx
	nop	
	mov	qword ptr [rbp - 0x128], rdx
	lea	rdi, [rdi]
	jge	.label_1794
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x43c], eax
	jmp	.label_1819
.label_1794:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x43c], eax
.label_1819:
	nop	
	mov	eax, dword ptr [rbp - 0x43c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x128]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x4b0]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jle	.label_1728
	lea	rdi, [rdi]
	jmp	.label_1762
.label_1764:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_2209
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe8], eax
	jmp	.label_1840
.label_2209:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xe8], eax
.label_1840:
	nop	
	mov	eax, dword ptr [rbp - 0xe8]
	cmp	eax, 0
	jge	.label_1854
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x458], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5b0], rcx
	jge	.label_1953
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x400], eax
	lea	rdi, [rdi]
	jmp	.label_1873
.label_1953:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x400], eax
.label_1873:
	mov	eax, dword ptr [rbp - 0x400]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5b0]
	add	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x458]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1728
	jmp	.label_1762
.label_1854:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2d0], rax
	jge	.label_1800
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x59c], eax
	jmp	.label_1913
.label_1800:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x59c], eax
.label_1913:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x59c]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2d0]
	lea	rsi, [rsi]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rsp, rsp
	jge	.label_1930
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_1943
.label_1930:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x68], eax
.label_1943:
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf8]
	cmp	rdx, rcx
	jl	.label_1728
.label_1762:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4d8], rax
	jge	.label_1956
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2fc], eax
	mov	rsp, rsp
	jmp	.label_1965
.label_1956:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2fc], eax
.label_1965:
	mov	eax, dword ptr [rbp - 0x2fc]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4d8]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rbp, rbp
	cmp	rdx, -0x80
	lea	rsi, [rsi]
	jl	.label_1728
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c8], rax
	jge	.label_1789
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x140], eax
	mov	rsp, rsp
	jmp	.label_1997
.label_1789:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x140], eax
.label_1997:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	ecx, 0x7f
	lea	rsi, [rsi]
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	add	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdx, rdi
	jge	.label_2006
.label_1728:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x4a8], ecx
	jge	.label_2017
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x588], eax
	jmp	.label_2025
.label_2017:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], eax
.label_2025:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x588]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x4a8]
	add	edx, eax
	mov	sil, dl
	mov	rbp, rbp
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x288], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1698
	nop	
	jmp	.label_1714
.label_2006:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0xb4], ecx
	jge	.label_2052
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1b8], eax
	jmp	.label_2061
.label_2052:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1b8], eax
.label_2061:
	mov	eax, dword ptr [rbp - 0x1b8]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	ecx, dword ptr [rbp - 0xb4]
	add	ecx, eax
	nop	
	mov	sil, cl
	nop	
	movsx	rdi, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1698
	mov	rbp, rbp
	jmp	.label_1714
.label_1776:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2089
	mov	rsp, rsp
	jmp	.label_2094
.label_2089:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2097
	jmp	.label_1990
.label_2097:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2103
	jmp	.label_2107
.label_2103:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2110
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x204], eax
	nop	
	jmp	.label_2114
.label_2110:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x204], eax
.label_2114:
	mov	eax, dword ptr [rbp - 0x204]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_2128
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x25c], edx
	nop	
	jge	.label_2134
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3c4], eax
	jmp	.label_2142
.label_2134:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c4], eax
.label_2142:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c4]
	lea	rsi, [rsi]
	mov	ecx, 0x80000000
	nop	
	mov	dx, ax
	movsx	eax, dx
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x25c]
	cmp	eax, ecx
	nop	
	jl	.label_1702
	jmp	.label_1729
.label_2128:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2169
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	jmp	.label_2174
.label_2169:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x200], eax
.label_2174:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x200]
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	dx, ax
	nop	
	movsx	eax, dx
	mov	rsp, rsp
	sub	ecx, eax
	mov	rsi, qword ptr [rbp - 0x288]
	mov	dx, si
	mov	rbp, rbp
	movsx	eax, dx
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_1702
	nop	
	jmp	.label_1729
.label_2107:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_2203
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2210
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5d0], eax
	nop	
	jmp	.label_2216
.label_2210:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5d0], eax
.label_2216:
	mov	eax, dword ptr [rbp - 0x5d0]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x288]
	mov	cx, dx
	movsx	esi, cx
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x11c], eax
	mov	dword ptr [rbp - 0xac], esi
	jge	.label_2226
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x29c], eax
	lea	rdi, [rdi]
	jmp	.label_1699
.label_2226:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x29c], eax
.label_1699:
	nop	
	mov	eax, dword ptr [rbp - 0x29c]
	mov	rbp, rbp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0x11c]
	cmp	eax, edx
	nop	
	jle	.label_1702
	lea	rdi, [rdi]
	jmp	.label_1729
.label_2203:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1730
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3b0], eax
	mov	rbp, rbp
	jmp	.label_1737
.label_1730:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3b0], eax
.label_1737:
	mov	eax, dword ptr [rbp - 0x3b0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jge	.label_1748
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	esi, cx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0xb8], edx
	mov	dword ptr [rbp - 0x484], esi
	lea	rsi, [rsi]
	jge	.label_1756
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x540], eax
	lea	rsi, [rsi]
	jmp	.label_1767
.label_1756:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x540], eax
.label_1767:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x540]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	edx, dword ptr [rbp - 0x484]
	add	edx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1702
	jmp	.label_1729
.label_1748:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], edx
	nop	
	jge	.label_1911
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x31c], eax
	jmp	.label_1812
.label_1911:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x31c], eax
.label_1812:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x31c]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1ac]
	add	edx, eax
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3cc], edx
	jge	.label_1827
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1839
.label_1827:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x14], eax
.label_1839:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x3cc]
	cmp	edx, eax
	lea	rdi, [rdi]
	jl	.label_1702
.label_1729:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], edx
	jge	.label_1862
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1b0], eax
	jmp	.label_1871
.label_1862:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1b0], eax
.label_1871:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	edx, eax
	cmp	edx, 0xffff8000
	jl	.label_1702
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x244], edx
	jge	.label_1895
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_2187
.label_1895:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
.label_2187:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, 0x7fff
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x244]
	add	esi, eax
	cmp	ecx, esi
	nop	
	jge	.label_1925
.label_1702:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], edx
	lea	rsi, [rsi]
	jge	.label_1935
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x464], eax
	nop	
	jmp	.label_1947
.label_1935:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x464], eax
.label_1947:
	mov	eax, dword ptr [rbp - 0x464]
	mov	rsp, rsp
	mov	cl, 1
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xa4]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	rdi, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1698
	mov	rsp, rsp
	jmp	.label_1714
.label_1925:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x1e8], edx
	mov	rsp, rsp
	jge	.label_1975
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x230], eax
	jmp	.label_1983
.label_1975:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x230], eax
.label_1983:
	mov	eax, dword ptr [rbp - 0x230]
	xor	ecx, ecx
	mov	dl, cl
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1e8]
	lea	rdi, [rdi]
	add	ecx, eax
	mov	si, cx
	movsx	rdi, si
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	mov	rbp, rbp
	jne	.label_1698
	lea	rsi, [rsi]
	jmp	.label_1714
.label_1990:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2007
	mov	rsp, rsp
	jmp	.label_2010
.label_2007:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1979
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5cc], eax
	jmp	.label_2002
.label_1979:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5cc], eax
.label_2002:
	mov	eax, dword ptr [rbp - 0x5cc]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2028
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jge	.label_2032
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x448], eax
	lea	rsi, [rsi]
	jmp	.label_2159
.label_2032:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x448], eax
.label_2159:
	mov	eax, dword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1727
	jmp	.label_2068
.label_2028:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2069
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x350], eax
	mov	rsp, rsp
	jmp	.label_2072
.label_2069:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x350], eax
.label_2072:
	nop	
	mov	eax, dword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1727
	jmp	.label_2068
.label_2010:
	cmp	qword ptr [rbp - 0x288], 0
	lea	rsi, [rsi]
	jge	.label_2009
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_1998
	lea	rdi, [rdi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18c], eax
	lea	rsi, [rsi]
	jmp	.label_2109
.label_1998:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x18c], eax
.label_2109:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x5c8], rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	lea	rdi, [rdi]
	jge	.label_2124
	mov	rbp, rbp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x414], eax
	jmp	.label_2188
.label_2124:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x414], eax
.label_2188:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x414]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3e0]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x5c8]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1727
	jmp	.label_2068
.label_2009:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2164
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_2167
.label_2164:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x13c], eax
.label_2167:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x13c]
	cmp	eax, 0
	jge	.label_2183
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x398], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	jge	.label_2186
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x444], eax
	jmp	.label_2200
.label_2186:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x444], eax
.label_2200:
	mov	eax, dword ptr [rbp - 0x444]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	add	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1727
	jmp	.label_2068
.label_2183:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x188], rax
	lea	rdi, [rdi]
	jge	.label_2224
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_2230
.label_2224:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
.label_2230:
	mov	eax, dword ptr [rbp - 0x34]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x2e8], rdx
	lea	rdi, [rdi]
	jge	.label_1712
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30c], eax
	jmp	.label_1777
.label_1712:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x30c], eax
.label_1777:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1727
.label_2068:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x270], rax
	jge	.label_1746
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3ac], eax
	jmp	.label_1752
.label_1746:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3ac], eax
.label_1752:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3ac]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x270]
	add	rdx, rcx
	cmp	rdx, -0x8000
	nop	
	jl	.label_1727
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x490], rax
	lea	rsi, [rsi]
	jge	.label_1745
	nop	
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_1785
.label_1745:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x22c], eax
.label_1785:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	ecx, 0x7fff
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x490]
	add	rdi, rsi
	cmp	rdx, rdi
	mov	rbp, rbp
	jge	.label_1902
.label_1727:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jge	.label_1811
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x234], eax
	jmp	.label_1903
.label_1811:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x234], eax
.label_1903:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x234]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 4]
	add	edx, eax
	nop	
	mov	si, dx
	mov	rbp, rbp
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1698
	lea	rsi, [rsi]
	jmp	.label_1714
.label_1902:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	jge	.label_1850
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20c], eax
	jmp	.label_1865
.label_1850:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x20c], eax
.label_1865:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20c]
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	ecx, eax
	mov	rsp, rsp
	mov	si, cx
	lea	rdi, [rdi]
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	nop	
	test	dl, 1
	jne	.label_1698
	mov	rsp, rsp
	jmp	.label_1714
.label_2094:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1896
	jmp	.label_1904
.label_1896:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	jmp	.label_1912
.label_1905:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1857
	jmp	.label_1918
.label_1857:
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1919
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_1923
.label_1919:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3a4], eax
.label_1923:
	mov	eax, dword ptr [rbp - 0x3a4]
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_1937
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2ec], ecx
	jge	.label_2008
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1950
.label_2008:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 8], eax
.label_1950:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, 0x80000000
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x2ec]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_1959
	jmp	.label_1967
.label_1937:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1968
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x438], eax
	mov	rsp, rsp
	jmp	.label_1973
.label_1968:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x438], eax
.label_1973:
	mov	eax, dword ptr [rbp - 0x438]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	sub	ecx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1959
	lea	rsi, [rsi]
	jmp	.label_1967
.label_1918:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1999
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2003
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_1932
.label_2003:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
.label_1932:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x35c], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x430], edx
	jge	.label_2016
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x584], eax
	mov	rbp, rbp
	jmp	.label_2067
.label_2016:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x584], eax
.label_2067:
	mov	eax, dword ptr [rbp - 0x584]
	nop	
	mov	ecx, dword ptr [rbp - 0x430]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x35c]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_1959
	lea	rsi, [rsi]
	jmp	.label_1967
.label_1999:
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1969
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x39c], eax
	nop	
	jmp	.label_2055
.label_1969:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x39c], eax
.label_2055:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x39c]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2066
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x288]
	mov	edx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x278], ecx
	mov	dword ptr [rbp - 0x10c], edx
	jge	.label_2058
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1892
.label_2058:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
.label_1892:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	ecx, dword ptr [rbp - 0x10c]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x278]
	cmp	eax, ecx
	jle	.label_1959
	jmp	.label_1967
.label_2066:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x570], ecx
	jge	.label_2214
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2f4], eax
	mov	rsp, rsp
	jmp	.label_2117
.label_2214:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2f4], eax
.label_2117:
	mov	eax, dword ptr [rbp - 0x2f4]
	mov	ecx, dword ptr [rbp - 0x570]
	add	ecx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2b4], ecx
	jge	.label_2131
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x424], eax
	jmp	.label_2196
.label_2131:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x424], eax
.label_2196:
	mov	eax, dword ptr [rbp - 0x424]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2b4]
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1959
.label_1967:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x3a0], ecx
	mov	rsp, rsp
	jge	.label_1878
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_2194
.label_1878:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], eax
.label_2194:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	mov	ecx, dword ptr [rbp - 0x3a0]
	nop	
	add	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_1959
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x324], ecx
	jge	.label_2191
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x494], eax
	jmp	.label_2015
.label_2191:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x494], eax
.label_2015:
	nop	
	mov	eax, dword ptr [rbp - 0x494]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x324]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_1908
.label_1959:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x2c4], ecx
	jge	.label_2220
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	jmp	.label_2228
.label_2220:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
.label_2228:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x2c4]
	add	edx, eax
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x288], rsi
	test	cl, 1
	jne	.label_1698
	lea	rsi, [rsi]
	jmp	.label_1714
.label_1908:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x44c], ecx
	jge	.label_1810
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	jmp	.label_1723
.label_1810:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x20], eax
.label_1723:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x44c]
	mov	rbp, rbp
	add	ecx, eax
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x288], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1698
	jmp	.label_1714
.label_1912:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1749
	jmp	.label_1754
.label_1749:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_2045
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x154], eax
	mov	rbp, rbp
	jmp	.label_2073
.label_2045:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x154], eax
.label_2073:
	mov	eax, dword ptr [rbp - 0x154]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2160
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x420], rax
	jge	.label_1779
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x460], eax
	jmp	.label_1692
.label_1779:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x460], eax
.label_1692:
	mov	eax, dword ptr [rbp - 0x460]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x420]
	cmp	rdx, rcx
	jl	.label_1770
	lea	rsi, [rsi]
	jmp	.label_1814
.label_2160:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1818
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x19c], eax
	lea	rdi, [rdi]
	jmp	.label_1823
.label_1818:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x19c], eax
.label_1823:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x19c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1770
	jmp	.label_1814
.label_1754:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x288], 0
	nop	
	jge	.label_1844
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1852
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], eax
	nop	
	jmp	.label_1858
.label_1852:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x134], eax
.label_1858:
	mov	eax, dword ptr [rbp - 0x134]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x1f8], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rdx
	jge	.label_1872
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2b0], eax
	nop	
	jmp	.label_1887
.label_1872:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2b0], eax
.label_1887:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2b0]
	nop	
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1f8]
	mov	rbp, rbp
	cmp	rcx, rdx
	jle	.label_1770
	jmp	.label_1814
.label_1844:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1915
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1921
.label_1915:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
.label_1921:
	mov	eax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1936
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x318], rax
	nop	
	mov	qword ptr [rbp - 0x108], rcx
	lea	rsi, [rsi]
	jge	.label_1942
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	jmp	.label_2085
.label_1942:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x80], eax
.label_2085:
	mov	eax, dword ptr [rbp - 0x80]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x318]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1770
	jmp	.label_1814
.label_1936:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x3e8], rax
	jge	.label_2092
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3ec], eax
	jmp	.label_1982
.label_2092:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3ec], eax
.label_1982:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3ec]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x5b8], rdx
	lea	rdi, [rdi]
	jge	.label_1995
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	nop	
	jmp	.label_2042
.label_1995:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x88], eax
.label_2042:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5b8]
	cmp	rdx, rcx
	jl	.label_1770
.label_1814:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x198], rax
	lea	rdi, [rdi]
	jge	.label_2020
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rsi, [rsi]
	jmp	.label_2030
.label_2020:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3b4], eax
.label_2030:
	mov	eax, dword ptr [rbp - 0x3b4]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rdx, rcx
	cmp	rdx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_1770
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x500], rax
	jge	.label_2051
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x440], eax
	mov	rbp, rbp
	jmp	.label_2062
.label_2051:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x440], eax
.label_2062:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x440]
	mov	ecx, 0x7fffffff
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x500]
	add	rdi, rsi
	mov	rsp, rsp
	cmp	rdx, rdi
	jge	.label_1826
.label_1770:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x2f0], ecx
	mov	rsp, rsp
	jge	.label_2087
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	rsp, rsp
	jmp	.label_2096
.label_2087:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1dc], eax
.label_2096:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x2f0]
	nop	
	add	edx, eax
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1698
	lea	rdi, [rdi]
	jmp	.label_1714
.label_1826:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x4dc], ecx
	mov	rbp, rbp
	jge	.label_2050
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x338], eax
	mov	rsp, rsp
	jmp	.label_2136
.label_2050:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x338], eax
.label_2136:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x338]
	xor	ecx, ecx
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x4dc]
	mov	rsp, rsp
	add	ecx, eax
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x288], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1698
	jmp	.label_1714
.label_1904:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1793
	jmp	.label_2166
.label_1793:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1831
	jmp	.label_2173
.label_1831:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_2175
	jmp	.label_2177
.label_2175:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_2180
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x21c], eax
	jmp	.label_2184
.label_2180:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x21c], eax
.label_2184:
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	jge	.label_2197
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x348], rax
	mov	rbp, rbp
	jge	.label_2204
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x45c], eax
	lea	rdi, [rdi]
	jmp	.label_2215
.label_2204:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x45c], eax
.label_2215:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x45c]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x348]
	nop	
	cmp	rdx, rcx
	jl	.label_1719
	jmp	.label_1694
.label_2197:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1695
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x34c], eax
	jmp	.label_1705
.label_1695:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34c], eax
.label_1705:
	mov	eax, dword ptr [rbp - 0x34c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	jl	.label_1719
	jmp	.label_1694
.label_2177:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1731
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1736
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4f0], eax
	lea	rsi, [rsi]
	jmp	.label_1741
.label_1736:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4f0], eax
.label_1741:
	mov	eax, dword ptr [rbp - 0x4f0]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x538], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x388], rdx
	nop	
	jge	.label_2031
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x450], eax
	mov	rsp, rsp
	jmp	.label_1761
.label_2031:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x450], eax
.label_1761:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x450]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x388]
	nop	
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x538]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_1719
	jmp	.label_1694
.label_1731:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1798
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x320], eax
	jmp	.label_1802
.label_1798:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x320], eax
.label_1802:
	mov	eax, dword ptr [rbp - 0x320]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_1816
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x590], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4d0], rcx
	jge	.label_1824
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x498], eax
	jmp	.label_1834
.label_1824:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x498], eax
.label_1834:
	mov	eax, dword ptr [rbp - 0x498]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x4d0]
	lea	rdi, [rdi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x590]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1719
	jmp	.label_1694
.label_1816:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jge	.label_1864
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1722
.label_1864:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5c], eax
.label_1722:
	mov	eax, dword ptr [rbp - 0x5c]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	add	rdx, rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x250], rdx
	jge	.label_1882
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4b4], eax
	jmp	.label_1893
.label_1882:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4b4], eax
.label_1893:
	nop	
	mov	eax, dword ptr [rbp - 0x4b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1719
.label_1694:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x1d8], rax
	jge	.label_1958
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x258], eax
	jmp	.label_1931
.label_1958:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x258], eax
.label_1931:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	jl	.label_1719
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x410], rax
	jge	.label_1970
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x370], eax
	lea	rdi, [rdi]
	jmp	.label_1962
.label_1970:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x370], eax
.label_1962:
	nop	
	mov	eax, dword ptr [rbp - 0x370]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x410]
	lea	rdi, [rdi]
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1977
.label_1719:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x4c8], rax
	jge	.label_1987
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3d4], eax
	jmp	.label_1828
.label_1987:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3d4], eax
.label_1828:
	mov	eax, dword ptr [rbp - 0x3d4]
	mov	cl, 1
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x288], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1698
	jmp	.label_1714
.label_1977:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x528], rax
	mov	rsp, rsp
	jge	.label_2014
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x328], eax
	jmp	.label_2218
.label_2014:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x328], eax
.label_2218:
	mov	eax, dword ptr [rbp - 0x328]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x528]
	add	rdi, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1698
	nop	
	jmp	.label_1714
.label_2173:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2053
	lea	rsi, [rsi]
	jmp	.label_2056
.label_2053:
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_2229
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x480], eax
	nop	
	jmp	.label_2064
.label_2229:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x480], eax
.label_2064:
	mov	eax, dword ptr [rbp - 0x480]
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_2074
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x118], rax
	jge	.label_2079
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5bc], eax
	jmp	.label_2086
.label_2079:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5bc], eax
.label_2086:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5bc]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1801
	jmp	.label_1877
.label_2074:
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_2118
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3fc], eax
	jmp	.label_2121
.label_2118:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3fc], eax
.label_2121:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3fc]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1801
	jmp	.label_1877
.label_2056:
	nop	
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_2144
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1713
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_2151
.label_1713:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xc4], eax
.label_2151:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc4]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x578], rcx
	mov	qword ptr [rbp - 0x218], rdx
	mov	rsp, rsp
	jge	.label_2165
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x56c], eax
	jmp	.label_2181
.label_2165:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x56c], eax
.label_2181:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x56c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x578]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1801
	mov	rsp, rsp
	jmp	.label_1877
.label_2144:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_2206
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a0], eax
	jmp	.label_2212
.label_2206:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5a0], eax
.label_2212:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5a0]
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_2222
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x228], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	jge	.label_2154
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x340], eax
	jmp	.label_1720
.label_2154:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x340], eax
.label_1720:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x340]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x228]
	cmp	rcx, rdx
	nop	
	jle	.label_1801
	jmp	.label_1877
.label_2222:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x560], rax
	jge	.label_1726
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_1734
.label_1726:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0xb0], eax
.label_1734:
	mov	eax, dword ptr [rbp - 0xb0]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x560]
	nop	
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x2d8], rdx
	lea	rdi, [rdi]
	jge	.label_1747
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x120], eax
	jmp	.label_1758
.label_1747:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x120], eax
.label_1758:
	mov	eax, dword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2d8]
	cmp	rdx, rcx
	jl	.label_1801
.label_1877:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x268], rax
	jge	.label_2155
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x330], eax
	jmp	.label_1790
.label_2155:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x330], eax
.label_1790:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x268]
	add	rsi, rdx
	cmp	rsi, rcx
	jl	.label_1801
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x358], rax
	jge	.label_1817
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_2076
.label_1817:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1fc], eax
.label_2076:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1fc]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x358]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1985
.label_1801:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a8], rax
	nop	
	jge	.label_1847
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	lea	rdi, [rdi]
	jmp	.label_2102
.label_1847:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xe4], eax
.label_2102:
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2a8]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x288], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1698
	mov	rsp, rsp
	jmp	.label_1714
.label_1985:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], rax
	jge	.label_2038
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a8], eax
	jmp	.label_1901
.label_2038:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5a8], eax
.label_1901:
	nop	
	mov	eax, dword ptr [rbp - 0x5a8]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x148]
	add	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	jne	.label_1698
	lea	rdi, [rdi]
	jmp	.label_1714
.label_2166:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1933
	jmp	.label_1938
.label_1933:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1939
	jmp	.label_1944
.label_1939:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1945
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_1948
.label_1945:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x254], eax
.label_1948:
	mov	eax, dword ptr [rbp - 0x254]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_1957
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x170], rax
	lea	rdi, [rdi]
	jge	.label_1963
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1e0], eax
	jmp	.label_1974
.label_1963:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x1e0], eax
.label_1974:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	cmp	rdx, rcx
	jl	.label_1833
	mov	rbp, rbp
	jmp	.label_1952
.label_1957:
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_2001
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x36c], eax
	mov	rsp, rsp
	jmp	.label_1900
.label_2001:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x36c], eax
.label_1900:
	mov	eax, dword ptr [rbp - 0x36c]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1833
	jmp	.label_1952
.label_1944:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_2022
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_2026
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x300], eax
	mov	rsp, rsp
	jmp	.label_2098
.label_2026:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x300], eax
.label_2098:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x300]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x4c0], rcx
	mov	qword ptr [rbp - 0xc0], rdx
	jge	.label_2185
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x5c0], eax
	mov	rbp, rbp
	jmp	.label_1716
.label_2185:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5c0], eax
.label_1716:
	mov	eax, dword ptr [rbp - 0x5c0]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4c0]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1833
	nop	
	jmp	.label_1952
.label_2022:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_2084
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2ac], eax
	jmp	.label_2090
.label_2084:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2ac], eax
.label_2090:
	nop	
	mov	eax, dword ptr [rbp - 0x2ac]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	jge	.label_2104
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], rax
	mov	qword ptr [rbp - 0x178], rcx
	lea	rdi, [rdi]
	jge	.label_2111
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2125
.label_2111:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x60], eax
.label_2125:
	mov	eax, dword ptr [rbp - 0x60]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x178]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x240]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1833
	mov	rbp, rbp
	jmp	.label_1952
.label_2104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x380], rax
	lea	rdi, [rdi]
	jge	.label_2148
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2dc], eax
	jmp	.label_1763
.label_2148:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2dc], eax
.label_1763:
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x380]
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4e8], rdx
	lea	rdi, [rdi]
	jge	.label_2172
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x360], eax
	jmp	.label_1704
.label_2172:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x360], eax
.label_1704:
	mov	eax, dword ptr [rbp - 0x360]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x4e8]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1833
.label_1952:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0xd0], rax
	jge	.label_2207
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38c], eax
	mov	rsp, rsp
	jmp	.label_2217
.label_2207:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x38c], eax
.label_2217:
	mov	eax, dword ptr [rbp - 0x38c]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	nop	
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0xd0]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	mov	rsp, rsp
	jl	.label_1833
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x580], rax
	jge	.label_1703
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1a8], eax
	mov	rbp, rbp
	jmp	.label_1830
.label_1703:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1a8], eax
.label_1830:
	mov	eax, dword ptr [rbp - 0x1a8]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x580]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_1725
.label_1833:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x530], rax
	mov	rbp, rbp
	jge	.label_1738
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x32c], eax
	jmp	.label_1993
.label_1738:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x32c], eax
.label_1993:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x32c]
	lea	rsi, [rsi]
	mov	cl, 1
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x530]
	mov	rsp, rsp
	add	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rsi
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1698
	jmp	.label_1714
.label_1725:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jge	.label_1773
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x17c], eax
	jmp	.label_1784
.label_1773:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x17c], eax
.label_1784:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x17c]
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rdi, rsi
	nop	
	mov	qword ptr [rbp - 0x288], rdi
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_1698
	nop	
	jmp	.label_1714
.label_1938:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1813
	nop	
	jmp	.label_1868
.label_1813:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1822
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	lea	rsi, [rsi]
	jmp	.label_1907
.label_1822:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd8], eax
.label_1907:
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, 0
	jge	.label_1837
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rbp, rbp
	jge	.label_1841
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x544], eax
	lea	rsi, [rsi]
	jmp	.label_2057
.label_1841:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x544], eax
.label_2057:
	mov	eax, dword ptr [rbp - 0x544]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jl	.label_1825
	lea	rsi, [rsi]
	jmp	.label_1880
.label_1837:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1883
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x4ec], eax
	lea	rsi, [rsi]
	jmp	.label_1717
.label_1883:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4ec], eax
.label_1717:
	mov	eax, dword ptr [rbp - 0x4ec]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1825
	jmp	.label_1880
.label_1868:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1916
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1898
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a4], eax
	lea	rsi, [rsi]
	jmp	.label_1927
.label_1898:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5a4], eax
.label_1927:
	mov	eax, dword ptr [rbp - 0x5a4]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x558], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3f8], rdx
	jge	.label_1940
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1951
.label_1940:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x84], eax
.label_1951:
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3f8]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x558]
	cmp	rcx, rdx
	nop	
	jle	.label_1825
	jmp	.label_1880
.label_1916:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1976
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x428], eax
	jmp	.label_1981
.label_1976:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x428], eax
.label_1981:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x428]
	cmp	eax, 0
	jge	.label_1991
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x298], rax
	mov	qword ptr [rbp - 0x2c0], rcx
	mov	rbp, rbp
	jge	.label_1838
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x54c], eax
	nop	
	jmp	.label_2005
.label_1838:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x54c], eax
.label_2005:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2c0]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x298]
	cmp	rcx, rdx
	jle	.label_1825
	mov	rbp, rbp
	jmp	.label_1880
.label_1991:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x568], rax
	lea	rsi, [rsi]
	jge	.label_1845
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2f8], eax
	jmp	.label_2035
.label_1845:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2f8], eax
.label_2035:
	mov	eax, dword ptr [rbp - 0x2f8]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x568]
	add	rdx, rcx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x368], rdx
	jge	.label_2046
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	jmp	.label_2060
.label_2046:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], eax
.label_2060:
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x368]
	cmp	rdx, rcx
	jl	.label_1825
.label_1880:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x130], rax
	jge	.label_2081
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3a8], eax
	jmp	.label_1924
.label_2081:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3a8], eax
.label_1924:
	mov	eax, dword ptr [rbp - 0x3a8]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_1825
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	jge	.label_1859
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x47c], eax
	jmp	.label_2130
.label_1859:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x47c], eax
.label_2130:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x47c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_2140
.label_1825:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x470], rax
	jge	.label_1805
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3d0], eax
	lea	rdi, [rdi]
	jmp	.label_2162
.label_1805:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3d0], eax
.label_2162:
	mov	eax, dword ptr [rbp - 0x3d0]
	nop	
	mov	cl, 1
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x470]
	add	rsi, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x288], rsi
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1698
	mov	rsp, rsp
	jmp	.label_1714
.label_2140:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x598], rax
	mov	rbp, rbp
	jge	.label_1972
	nop	
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x304], eax
	jmp	.label_2199
.label_1972:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x304], eax
.label_2199:
	mov	eax, dword ptr [rbp - 0x304]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	nop	
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x598]
	add	rdi, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	jne	.label_1698
	nop	
	jmp	.label_1714
.label_1698:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c8], 0x3f
	jmp	.label_1735
.label_1714:
	mov	rax, qword ptr [rbp - 0x378]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x378], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x135], dl
	movzx	edi, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1701
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	cmp	eax, 0x2e
	je	.label_1706
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x2c
	jne	.label_1869
.label_1706:
	mov	rax, qword ptr [rbp - 0x378]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax + 1]
	lea	rsi, [rsi]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1721
	jmp	.label_1869
.label_1721:
	mov	rdi, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	call	time_overflow
	mov	rbp, rbp
	test	al, 1
	jne	.label_1886
	jmp	.label_1732
.label_1886:
	mov	dword ptr [rbp - 0x3c8], 0x3f
	nop	
	jmp	.label_1735
.label_1732:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, 1
	mov	qword ptr [rbp - 0x378], rax
	mov	rax, qword ptr [rbp - 0x378]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x378], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x42c], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3bc], 2
.label_1799:
	cmp	dword ptr [rbp - 0x3bc], 9
	lea	rdi, [rdi]
	jg	.label_1760
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x42c], 0xa
	mov	dword ptr [rbp - 0x42c], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x378]
	movsx	edi, byte ptr [rcx]
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_1774
	nop	
	jmp	.label_1786
.label_1774:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x378]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x378], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	sub	edx, 0x30
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x42c]
	mov	dword ptr [rbp - 0x42c], edx
.label_1786:
	jmp	.label_1796
.label_1796:
	mov	eax, dword ptr [rbp - 0x3bc]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3bc], eax
	jmp	.label_1799
.label_1760:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_1804
	jmp	.label_1806
.label_1806:
	mov	rax, qword ptr [rbp - 0x378]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1855
	jmp	.label_1820
.label_1855:
	mov	rax, qword ptr [rbp - 0x378]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	je	.label_1879
	mov	eax, dword ptr [rbp - 0x42c]
	mov	rsp, rsp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x42c], eax
	jmp	.label_1820
.label_1879:
	jmp	.label_1809
.label_1809:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, 1
	mov	qword ptr [rbp - 0x378], rax
	jmp	.label_1806
.label_1820:
	jmp	.label_1804
.label_1804:
	jmp	.label_1843
.label_1843:
	mov	rax, qword ptr [rbp - 0x378]
	movsx	edi, byte ptr [rax]
	nop	
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_2039
	lea	rsi, [rsi]
	jmp	.label_1960
.label_2039:
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x378], rax
	mov	rbp, rbp
	jmp	.label_1843
.label_1960:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1866
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x42c], 0
	je	.label_1866
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4a0], rax
	mov	rbp, rbp
	jne	.label_2106
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], 0x3f
	nop	
	jmp	.label_1735
.label_2106:
	mov	eax, 0x3b9aca00
	mov	rcx, qword ptr [rbp - 0x4a0]
	nop	
	add	rcx, -1
	mov	qword ptr [rbp - 0x4a0], rcx
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x42c]
	mov	dword ptr [rbp - 0x42c], eax
.label_1866:
	mov	eax, 0x115
	mov	rbp, rbp
	mov	ecx, 0x114
	mov	rdx, qword ptr [rbp - 0x4a0]
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x42c]
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x378]
	mov	rsi, qword ptr [rbp - 0x160]
	mov	qword ptr [rsi], rdx
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], eax
	jmp	.label_1735
.label_1869:
	mov	eax, 0x113
	lea	rsi, [rsi]
	mov	ecx, 0x112
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	setl	dl
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	and	dl, 1
	nop	
	mov	byte ptr [rsi], dl
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x288]
	mov	rdi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x378]
	mov	rdi, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	sub	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x4f8]
	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x378]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x160]
	mov	qword ptr [rdi], rsi
	cmp	dword ptr [rbp - 0x110], 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x3c8], eax
	nop	
	jmp	.label_1735
.label_2070:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	call	c_isalpha
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1966
	jmp	.label_1971
.label_1966:
	lea	rax, [rbp - 0x520]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
.label_2011:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x520]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, 0x14
	nop	
	add	rax, -1
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jae	.label_1978
	mov	al, byte ptr [rbp - 0x135]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	mov	byte ptr [rcx], al
.label_1978:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	nop	
	mov	byte ptr [rbp - 0x135], sil
	movzx	edi, byte ptr [rbp - 0x135]
	call	c_isalpha
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x4a1], cl
	jne	.label_2004
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 0x4a1], cl
.label_2004:
	mov	al, byte ptr [rbp - 0x4a1]
	test	al, 1
	jne	.label_2011
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x520]
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	call	lookup_word
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2021
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_2027
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.98
	call	gettext
	mov	rbp, rbp
	lea	rsi, [rbp - 0x520]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_2027:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], 0x3f
	nop	
	jmp	.label_1735
.label_2021:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rax + 0xc]
	nop	
	mov	rcx, qword ptr [rbp - 0x4f8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], edx
	jmp	.label_1735
.label_1971:
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x28
	je	.label_2065
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax], rdx
	movsx	edi, byte ptr [rcx]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c8], edi
	lea	rsi, [rsi]
	jmp	.label_1735
.label_2065:
	mov	qword ptr [rbp - 0x478], 0
.label_2135:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax], rdx
	lea	rdi, [rdi]
	mov	sil, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x135], sil
	movzx	edi, byte ptr [rbp - 0x135]
	cmp	edi, 0
	nop	
	jne	.label_2082
	movzx	eax, byte ptr [rbp - 0x135]
	mov	dword ptr [rbp - 0x3c8], eax
	lea	rsi, [rsi]
	jmp	.label_1735
.label_2082:
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x28
	mov	rbp, rbp
	jne	.label_2105
	mov	rax, qword ptr [rbp - 0x478]
	add	rax, 1
	mov	qword ptr [rbp - 0x478], rax
	lea	rdi, [rdi]
	jmp	.label_2112
.label_2105:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x29
	lea	rsi, [rsi]
	jne	.label_2120
	nop	
	mov	rax, qword ptr [rbp - 0x478]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x478], rax
.label_2120:
	mov	rbp, rbp
	jmp	.label_2112
.label_2112:
	jmp	.label_2133
.label_2133:
	cmp	qword ptr [rbp - 0x478], 0
	mov	rbp, rbp
	jne	.label_2135
	mov	rsp, rsp
	jmp	.label_2126
.label_1735:
	mov	eax, dword ptr [rbp - 0x3c8]
	add	rsp, 0x5d0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41deb0

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x130
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	byte ptr [rbp - 9], 0
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rsi + 0xd9], 1
	jne	.label_2237
	jmp	.label_2242
.label_2237:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.77
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	nop	
	call	dbg_printf
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	qword ptr [rsi + 0xa8], 0
	mov	rbp, rbp
	je	.label_2231
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xda], 1
	nop	
	jne	.label_2231
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rax + 0x40]
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xda], 1
	mov	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
.label_2231:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0xd8]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0xdf]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	cmp	edx, esi
	je	.label_2233
	mov	rsp, rsp
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	je	.label_2239
	mov	edi, 0x20
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
.label_2239:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rdx + 0xd8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rdx + 0xdf], cl
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x28], eax
.label_2233:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xc8], 0
	je	.label_2241
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0xdd], 1
	jne	.label_2241
	movabs	rax, OFFSET FLAT:.str.80_0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 9]
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	movzx	esi, dl
	movsxd	rcx, esi
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x50]
	mov	r8, qword ptr [rbp - 8]
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x60], 0
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_2243
	movabs	rsi, OFFSET FLAT:.str.81_0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x60]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x12c], eax
.label_2243:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x1c], 1
	nop	
	jne	.label_2238
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x18], eax
.label_2238:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xdd], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
.label_2241:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xb0], 0
	je	.label_2232
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0xdb], 1
	lea	rdi, [rdi]
	jne	.label_2232
	test	byte ptr [rbp - 9], 1
	nop	
	je	.label_2236
	mov	rsp, rsp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x4c], eax
.label_2236:
	movabs	rdi, OFFSET FLAT:.str.82_0
	mov	rax,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rbp, rbp
	mov	edx, 0x64
	mov	rbp, rbp
	lea	rsi, [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	call	str_days
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + 0xdb], 1
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x10], eax
.label_2232:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xb8], 0
	nop	
	je	.label_2240
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rax + 0xdc], 1
	mov	rsp, rsp
	jne	.label_2240
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.84_0
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	sil, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	xor	sil, 0xff
	and	sil, 1
	movzx	r8d, sil
	lea	rsi, [rsi]
	movsxd	r9, r8d
	add	rdx, r9
	mov	r9, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [r9 + 0x14]
	mov	r9, qword ptr [rbp - 0x20]
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
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xdc], 1
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x60], eax
.label_2240:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_2234
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rax + 0xde], 1
	mov	rbp, rbp
	jne	.label_2234
	lea	rsi, [rbp - 0x110]
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.85
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 9]
	xor	cl, 0xff
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	r8, edx
	mov	rbp, rbp
	add	rax, r8
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r8 + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x128], rdi
	lea	rdi, [rdi]
	mov	edi, edx
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	call	time_zone_str
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rdx + 0xde], 1
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x114], eax
.label_2234:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rax + 0xa0], 1
	lea	rsi, [rsi]
	je	.label_2235
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x120], rax
	nop	
	test	byte ptr [rbp - 9], 1
	je	.label_2244
	nop	
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x24], eax
.label_2244:
	nop	
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x130], eax
.label_2235:
	nop	
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
.label_2242:
	add	rsp, 0x130
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41e4a0

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 0
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	test	byte ptr [rsi + 0xd9], 1
	nop	
	jne	.label_2247
	jmp	.label_2246
.label_2247:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	dbg_printf
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x68], 0
	mov	rbp, rbp
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x70], 0
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x80], 0
	lea	rsi, [rsi]
	jne	.label_2245
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x88], 0
	mov	rbp, rbp
	jne	.label_2245
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x90], 0
	lea	rsi, [rsi]
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x98], 0
	mov	rbp, rbp
	jne	.label_2245
	movabs	rdi, OFFSET FLAT:.str.87
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_2246
.label_2245:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.88
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x68]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.89
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.90
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x80]
	and	al, 1
	movzx	edi, al
	nop	
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.92
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x90]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.94
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	byte ptr [rbp - 5], al
	nop	
	call	fputc
	mov	dword ptr [rbp - 4], eax
.label_2246:
	nop	
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41e750

	.globl set_hhmmss
	.type set_hhmmss, @function
set_hhmmss:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x1c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x58], rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rdx + 0x60], rcx
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41e7c0

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
	mov	qword ptr [rbp - 0x30], rsi
	mov	byte ptr [rbp - 0x39], 0
	cmp	qword ptr [rax + 0x10], 2
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jg	.label_2273
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2273
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rcx, qword ptr [rax + 8], 0x64
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_2273:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2252
	lea	rdi, [rdi]
	mov	eax, 0x64
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsp, rsp
	imul	rax, rax, 0x3c
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, rdi
	cqo	
	idiv	rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_2258
.label_2252:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2281
	jmp	.label_2284
.label_2281:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_2285
	movabs	rax, 0x222222222222222
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jl	.label_2250
	jmp	.label_2249
.label_2285:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2270
	mov	rbp, rbp
	jmp	.label_2279
.label_2270:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2250
	mov	rsp, rsp
	jmp	.label_2249
.label_2279:
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jl	.label_2250
	jmp	.label_2249
.label_2284:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2267
	jmp	.label_2259
.label_2267:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2250
	nop	
	jmp	.label_2249
.label_2259:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jge	.label_2268
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	jl	.label_2250
	jmp	.label_2249
.label_2268:
	movabs	rax, 0x222222222222222
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_2250
.label_2249:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_2250
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_2264
.label_2250:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_2277
.label_2264:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
.label_2277:
	mov	eax, dword ptr [rbp - 0x38]
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	or	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	test	byte ptr [rsi], 1
	je	.label_2257
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2269
	lea	rsi, [rsi]
	jmp	.label_2272
.label_2269:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jge	.label_2276
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jl	.label_2278
	jmp	.label_2256
.label_2276:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	movabs	rcx, 0x8000000000000000
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jl	.label_2278
	jmp	.label_2256
.label_2272:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2261
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2278
	lea	rsi, [rsi]
	jmp	.label_2256
.label_2261:
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	jge	.label_2248
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jle	.label_2278
	nop	
	jmp	.label_2256
.label_2248:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jl	.label_2278
.label_2256:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jl	.label_2278
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jge	.label_2262
.label_2278:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_2275
.label_2262:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x34], eax
.label_2275:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2282
.label_2257:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2254
	lea	rdi, [rdi]
	jmp	.label_2260
.label_2254:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2274
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2251
	jmp	.label_2265
.label_2274:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jl	.label_2251
	jmp	.label_2265
.label_2260:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_2283
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2251
	jmp	.label_2265
.label_2283:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2255
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2251
	jmp	.label_2265
.label_2255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x30]
	jl	.label_2251
.label_2265:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jl	.label_2251
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2253
.label_2251:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2266
.label_2253:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_2266:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2282:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	movzx	edx, cl
	or	edx, eax
	nop	
	cmp	edx, 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
.label_2258:
	test	byte ptr [rbp - 0x39], 1
	jne	.label_2263
	mov	rax, -0x5a0
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_2263
	nop	
	cmp	qword ptr [rbp - 0x28], 0x5a0
	lea	rdi, [rdi]
	jle	.label_2271
.label_2263:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2280
.label_2271:
	imul	rax, qword ptr [rbp - 0x28], 0x3c
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], 1
.label_2280:
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41ed80

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
	mov	qword ptr [rbp - 0x70], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], esi
	nop	
	cmp	dword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x58], rax
	jge	.label_2395
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2401
	nop	
	jmp	.label_2405
.label_2401:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_2406
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x30]
	add	ecx, 0x7fffffff
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rdx + 0x98]
	jl	.label_2313
	jmp	.label_2306
.label_2406:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	ecx, dword ptr [rax + 0x98]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	edx, dword ptr [rax + 0x30]
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_2313
	jmp	.label_2306
.label_2405:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	dword ptr [rax + 0x98], 0
	lea	rsi, [rsi]
	jge	.label_2307
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2313
	jmp	.label_2306
.label_2307:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x30], 0
	jge	.label_2290
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	ecx, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jle	.label_2313
	jmp	.label_2306
.label_2290:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	cmp	ecx, dword ptr [rax + 0x30]
	jl	.label_2313
.label_2306:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x30]
	cmp	ecx, 0x80000000
	jl	.label_2313
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	edx, dword ptr [rcx + 0x30]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_2341
.label_2313:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_2359
.label_2341:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
.label_2359:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, 1
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	jne	.label_2386
	jmp	.label_2339
.label_2386:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_2350
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x90]
	nop	
	jl	.label_2286
	lea	rdi, [rdi]
	jmp	.label_2297
.label_2350:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x90]
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_2286
	nop	
	jmp	.label_2297
.label_2339:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_2415
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2286
	lea	rdi, [rdi]
	jmp	.label_2297
.label_2415:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_2303
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x90]
	lea	rsi, [rsi]
	jle	.label_2286
	jmp	.label_2297
.label_2303:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x90]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	jl	.label_2286
.label_2297:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2286
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jge	.label_2336
.label_2286:
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_2351
.label_2336:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	dword ptr [rbp - 0x48], eax
.label_2351:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x24]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x40], edx
	jne	.label_2383
	nop	
	jmp	.label_2391
.label_2383:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_2393
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x88]
	jl	.label_2288
	jmp	.label_2296
.label_2393:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_2288
	lea	rsi, [rsi]
	jmp	.label_2296
.label_2391:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x88], 0
	jge	.label_2414
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_2288
	jmp	.label_2296
.label_2414:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_2300
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + 0x88]
	jle	.label_2288
	jmp	.label_2296
.label_2300:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jl	.label_2288
.label_2296:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2288
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2334
.label_2288:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_2343
.label_2334:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x30], eax
.label_2343:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x40]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], edx
	lea	rdi, [rdi]
	jne	.label_2377
	jmp	.label_2384
.label_2377:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	jge	.label_2305
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x80]
	nop	
	jl	.label_2319
	lea	rsi, [rsi]
	jmp	.label_2291
.label_2305:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2319
	nop	
	jmp	.label_2291
.label_2384:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x80], 0
	jge	.label_2329
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_2319
	lea	rdi, [rdi]
	jmp	.label_2291
.label_2329:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_2295
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jle	.label_2319
	mov	rsp, rsp
	jmp	.label_2291
.label_2295:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jl	.label_2319
.label_2291:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2319
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2335
.label_2319:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x80], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2346
.label_2335:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0xc], eax
.label_2346:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x10], edx
	nop	
	jne	.label_2380
	jmp	.label_2387
.label_2380:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_2390
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x78]
	mov	rsp, rsp
	jl	.label_2310
	mov	rbp, rbp
	jmp	.label_2379
.label_2390:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_2310
	lea	rdi, [rdi]
	jmp	.label_2379
.label_2387:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	nop	
	jge	.label_2412
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2310
	jmp	.label_2379
.label_2412:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jge	.label_2338
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x78]
	lea	rdi, [rdi]
	jle	.label_2310
	jmp	.label_2379
.label_2338:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	nop	
	jl	.label_2310
.label_2379:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2310
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2333
.label_2310:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2342
.label_2333:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_2342:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x1c], edx
	jne	.label_2357
	jmp	.label_2381
.label_2357:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 8], 0
	jge	.label_2382
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x70]
	jl	.label_2287
	lea	rdi, [rdi]
	jmp	.label_2396
.label_2382:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x70]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_2287
	mov	rbp, rbp
	jmp	.label_2396
.label_2381:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x70], 0
	lea	rsi, [rsi]
	jge	.label_2407
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2287
	mov	rbp, rbp
	jmp	.label_2396
.label_2407:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_2413
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x70]
	jle	.label_2287
	jmp	.label_2396
.label_2413:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jl	.label_2287
.label_2396:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, rax
	nop	
	jl	.label_2287
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2322
.label_2287:
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_2332
.label_2322:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_2332:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	or	edx, eax
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], edx
	jne	.label_2365
	lea	rdi, [rdi]
	jmp	.label_2369
.label_2365:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_2378
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x68]
	nop	
	jl	.label_2292
	jmp	.label_2309
.label_2378:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_2292
	jmp	.label_2309
.label_2369:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x68], 0
	jge	.label_2403
	mov	al, 1
	test	al, 1
	jne	.label_2292
	lea	rsi, [rsi]
	jmp	.label_2309
.label_2403:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_2353
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x68]
	jle	.label_2292
	jmp	.label_2309
.label_2353:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	nop	
	jl	.label_2292
.label_2309:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_2292
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_2315
.label_2292:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2323
.label_2315:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x14], eax
.label_2323:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	or	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_2340
	jmp	.label_2337
.label_2395:
	mov	al, 1
	test	al, 1
	jne	.label_2352
	jmp	.label_2354
.label_2352:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_2356
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	cmp	edx, eax
	jl	.label_2302
	jmp	.label_2376
.label_2356:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	eax, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jl	.label_2302
	jmp	.label_2376
.label_2354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x98], 0
	jge	.label_2389
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	esi, dword ptr [rdx + 0x98]
	add	esi, dword ptr [rax + 0x30]
	cmp	ecx, esi
	jle	.label_2302
	lea	rdi, [rdi]
	jmp	.label_2376
.label_2389:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jge	.label_2400
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2302
	lea	rsi, [rsi]
	jmp	.label_2376
.label_2400:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	ecx, dword ptr [rax + 0x30]
	cmp	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	jl	.label_2302
.label_2376:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	jl	.label_2302
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	cmp	eax, edx
	jge	.label_2311
.label_2302:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	jmp	.label_2320
.label_2311:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x80], eax
.label_2320:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	cl, 1
	lea	rdi, [rdi]
	test	cl, 1
	mov	dword ptr [rbp - 0x78], eax
	jne	.label_2330
	lea	rsi, [rsi]
	jmp	.label_2372
.label_2330:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_2385
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2299
	jmp	.label_2374
.label_2385:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	cmp	rax, qword ptr [rdx + 0x90]
	mov	rbp, rbp
	jl	.label_2299
	jmp	.label_2374
.label_2372:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_2388
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x90]
	add	rdx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_2299
	jmp	.label_2374
.label_2388:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_2399
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x90]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jle	.label_2299
	lea	rdi, [rdi]
	jmp	.label_2374
.label_2399:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 0x28]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jl	.label_2299
.label_2374:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2299
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2314
.label_2299:
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	jmp	.label_2326
.label_2314:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
.label_2326:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x78]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x34], edx
	jne	.label_2349
	nop	
	jmp	.label_2361
.label_2349:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_2363
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x20]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2301
	jmp	.label_2294
.label_2363:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	jl	.label_2301
	jmp	.label_2294
.label_2361:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	jge	.label_2394
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rax + 0x20]
	nop	
	cmp	rcx, rdx
	jle	.label_2301
	mov	rbp, rbp
	jmp	.label_2294
.label_2394:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_2408
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x20]
	lea	rsi, [rsi]
.label_5667:
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2301
	lea	rsi, [rsi]
	jmp	.label_2294
.label_2408:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jl	.label_2301
.label_2294:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2301
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	jge	.label_2318
.label_2301:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x88], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	nop	
	jmp	.label_2328
.label_2318:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 8], eax
.label_2328:
	mov	eax, dword ptr [rbp - 8]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x34]
	nop	
	or	edx, eax
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], edx
	jne	.label_2355
	jmp	.label_2366
.label_2355:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_2367
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2304
	nop	
	jmp	.label_2325
.label_2367:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jl	.label_2304
	nop	
	jmp	.label_2325
.label_2366:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x80], 0
	nop	
	jge	.label_2398
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rax + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x80]
	add	rdx, qword ptr [rax + 0x18]
	cmp	rcx, rdx
	jle	.label_2304
	lea	rsi, [rsi]
	jmp	.label_2325
.label_2398:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_2410
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2304
	lea	rdi, [rdi]
	jmp	.label_2325
.label_2410:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jl	.label_2304
.label_2325:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2304
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2321
.label_2304:
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	jmp	.label_2345
.label_2321:
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x28], eax
.label_2345:
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x44], edx
	lea	rsi, [rsi]
	jne	.label_2364
	jmp	.label_2373
.label_2364:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jge	.label_2375
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2308
	lea	rdi, [rdi]
	jmp	.label_2344
.label_2375:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x78]
	jl	.label_2308
	mov	rbp, rbp
	jmp	.label_2344
.label_2373:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jge	.label_2402
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x78]
	add	rdx, qword ptr [rax + 0x10]
	cmp	rcx, rdx
	jle	.label_2308
	nop	
	jmp	.label_2344
.label_2402:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_2411
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	cmp	rax, rcx
	jle	.label_2308
	lea	rdi, [rdi]
	jmp	.label_2344
.label_2411:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jl	.label_2308
.label_2344:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2308
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rax, rcx
	jge	.label_2324
.label_2308:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_2331
.label_2324:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
.label_2331:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x84], edx
	lea	rsi, [rsi]
	jne	.label_2358
	jmp	.label_2368
.label_2358:
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_2371
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 8]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2293
	jmp	.label_2289
.label_2371:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x70]
	mov	rbp, rbp
	jl	.label_2293
	nop	
	jmp	.label_2289
.label_2368:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x70], 0
	lea	rdi, [rdi]
	jge	.label_2397
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x70]
	add	rdx, qword ptr [rax + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_2293
	lea	rsi, [rsi]
	jmp	.label_2289
.label_2397:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_2409
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2293
	nop	
	jmp	.label_2289
.label_2409:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jl	.label_2293
.label_2289:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rax
	jl	.label_2293
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 8]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2316
.label_2293:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2327
.label_2316:
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
.label_2327:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x84]
	nop	
	or	edx, eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], edx
	jne	.label_2370
	lea	rdi, [rdi]
	jmp	.label_2360
.label_2370:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jge	.label_2362
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2317
	jmp	.label_2298
.label_2362:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x68]
	jl	.label_2317
	jmp	.label_2298
.label_2360:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	jge	.label_2392
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x68]
	add	rdx, qword ptr [rax]
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_2317
	lea	rdi, [rdi]
	jmp	.label_2298
.label_2392:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_2404
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2317
	mov	rsp, rsp
	jmp	.label_2298
.label_2404:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rcx]
	jl	.label_2317
.label_2298:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2317
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_2312
.label_2317:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x68], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	jmp	.label_2347
.label_2312:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x68], rcx
	nop	
	mov	dword ptr [rbp - 0x74], eax
.label_2347:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_2337
.label_2340:
	mov	byte ptr [rbp - 0x85], 0
	jmp	.label_2348
.label_2337:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax + 0xa1], 1
	mov	byte ptr [rbp - 0x85], 1
.label_2348:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420910

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x1b0
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x190], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x10], xmm6
	movaps	xmmword ptr [rbp - 0x170], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x150], xmm4
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0x30], xmm0
	mov	qword ptr [rbp - 0x198], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], r8
	nop	
	mov	qword ptr [rbp - 0x138], rcx
	mov	qword ptr [rbp - 0x1a0], rdx
	nop	
	mov	qword ptr [rbp - 0x128], rsi
	je	.label_2416
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	mov	rsp, rsp
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	nop	
	movaps	xmm2, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	mov	rbp, rbp
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	mov	rsp, rsp
	movaps	xmm4, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_2416:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1a0]
	nop	
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x130], r8
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	r9d, OFFSET FLAT:.str.96
	mov	edi, r9d
	lea	rsi, [rsi]
	call	fputs
	mov	rbp, rbp
	lea	rcx, [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rcx
	lea	rsi, [rsi]
	lea	rcx, [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mov	dword ptr [rbp - 0x11c], 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x120], 8
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rsi, qword ptr [rbp - 0x130]
	nop	
	lea	rdx, [rbp - 0x120]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	call	vfprintf
	mov	dword ptr [rbp - 0x1a4], eax
	mov	rsp, rsp
	add	rsp, 0x1b0
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x420b00

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420ba0

	.globl digits_to_date_time
	.type digits_to_date_time, @function
digits_to_date_time:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdi + 0xa8], 0
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	je	.label_2420
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_2420
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0xa1], 1
	jne	.label_2420
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xc8], 0
	jne	.label_2422
	mov	eax, 2
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jge	.label_2420
.label_2422:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xd8], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	qword ptr [rax + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_2423
.label_2420:
	lea	rsi, [rsi]
	mov	eax, 4
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_2425
	mov	eax, 0x2710
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	eax, 0x64
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0xa8]
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cqo	
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	idiv	rdi
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
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
	mov	r8, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x38], rdx
	mov	rdx, qword ptr [rsi + 8]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rsi + 0x10]
	sub	rax, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_2424
.label_2425:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	qword ptr [rax + 0xc8], rcx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 2
	mov	rbp, rbp
	jg	.label_2426
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x50], 0
	lea	rdi, [rdi]
	jmp	.label_2421
.label_2426:
	mov	eax, 0x64
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	nop	
	cqo	
	mov	rsp, rsp
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x50], rdx
.label_2421:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x60], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x1c], 2
.label_2424:
	mov	rsp, rsp
	jmp	.label_2423
.label_2423:
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420df0

	.globl yyerror
	.type yyerror, @function
yyerror:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x420e10

	.globl yydestruct
	.type yydestruct, @function
yydestruct:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_2427
	movabs	rax, OFFSET FLAT:.str.97
	mov	qword ptr [rbp - 0x18], rax
.label_2427:
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x420e50
	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, rax
	nop	
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	tzalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_2428
	mov	byte ptr [rbp - 0x1a], 0
	jmp	.label_2429
.label_2428:
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x18]
	nop	
	call	parse_datetime2
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	tzfree
	mov	al, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], al
.label_2429:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420f10

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe30
	mov	qword ptr [rbp - 0x2b8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa70], rsi
	mov	qword ptr [rbp - 0x7d8], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3f0], ecx
	mov	qword ptr [rbp - 0x808], r8
	nop	
	mov	qword ptr [rbp - 0x7a8], r9
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x822], 0
	mov	rdx, qword ptr [rbp - 0xa70]
	mov	rdi, qword ptr [rbp - 0xa70]
	nop	
	mov	qword ptr [rbp - 0xca0], rdx
	lea	rdi, [rdi]
	call	strlen
	mov	rdx, qword ptr [rbp - 0xca0]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbc8], rdx
	nop	
	mov	qword ptr [rbp - 0x218], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x7d8], 0
	mov	rbp, rbp
	jne	.label_2469
	mov	rbp, rbp
	lea	rdi, [rbp - 0x3b8]
	mov	rbp, rbp
	call	gettime
	lea	rdi, [rbp - 0x3b8]
	mov	qword ptr [rbp - 0x7d8], rdi
.label_2469:
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x488], rax
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x71c], ecx
.label_3493:
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0xcb1], cl
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rbp - 0xcb1]
	call	c_isspace
	nop	
	test	al, 1
	nop	
	jne	.label_3489
	jmp	.label_3491
.label_3489:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa70]
	add	rax, 1
	mov	qword ptr [rbp - 0xa70], rax
	jmp	.label_3493
.label_3491:
	movabs	rsi, OFFSET FLAT:.str.19_0
	nop	
	mov	eax, 4
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x808]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x228], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa70]
	call	strncmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_3515
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9c0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7c0], 1
	mov	rax, qword ptr [rbp - 0x9c0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f0], rax
.label_3684:
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_3533
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5c
	jne	.label_3536
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	mov	rax, qword ptr [rbp - 0x6f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	je	.label_3540
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6f0]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x22
	nop	
	je	.label_3540
	lea	rdi, [rdi]
	jmp	.label_3533
.label_3540:
	jmp	.label_3557
.label_3536:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6f0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	jne	.label_2957
	nop	
	mov	eax, 0x64
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xaf0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb50], rdx
	cmp	rcx, qword ptr [rbp - 0x7c0]
	jge	.label_3563
	mov	rdi, qword ptr [rbp - 0x7c0]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x218], rax
	cmp	qword ptr [rbp - 0x218], 0
	lea	rdi, [rdi]
	jne	.label_3090
	nop	
	jmp	.label_2503
.label_3090:
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0xb50], rax
.label_3563:
	nop	
	mov	rax, qword ptr [rbp - 0xb50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x800], rax
	mov	rax, qword ptr [rbp - 0x9c0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f0], rax
.label_3588:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	je	.label_3586
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x6f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	mov	rsp, rsp
	movzx	ecx, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6f0]
	nop	
	movsxd	rsi, ecx
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	add	rdi, rsi
	mov	qword ptr [rbp - 0x6f0], rdi
	mov	dl, byte ptr [rax + rsi]
	mov	rax, qword ptr [rbp - 0x800]
	mov	rsi, rax
	lea	rsi, [rsi]
	add	rsi, 1
	mov	qword ptr [rbp - 0x800], rsi
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x6f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	nop	
	jmp	.label_3588
.label_3586:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x800]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb50]
	nop	
	call	tzalloc
	mov	qword ptr [rbp - 0x880], rax
	cmp	qword ptr [rbp - 0x880], 0
	jne	.label_3624
	jmp	.label_2503
.label_3624:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x228], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a8], rax
	mov	rax, qword ptr [rbp - 0x6f0]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xa70], rax
.label_3671:
	mov	rax, qword ptr [rbp - 0xa70]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0xcb1], cl
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0xcb1]
	mov	rbp, rbp
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_3664
	jmp	.label_3669
.label_3664:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa70]
	add	rax, 1
	mov	qword ptr [rbp - 0xa70], rax
	jmp	.label_3671
.label_3669:
	mov	rbp, rbp
	jmp	.label_3533
.label_2957:
	lea	rdi, [rdi]
	jmp	.label_3557
.label_3557:
	mov	rsp, rsp
	jmp	.label_3681
.label_3681:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6f0]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_3684
.label_3533:
	jmp	.label_3515
.label_3515:
	lea	rdx, [rbp - 0x558]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x7d8]
	call	localtime_rz
	cmp	rax, 0
	nop	
	jne	.label_3696
	lea	rdi, [rdi]
	jmp	.label_2503
.label_3696:
	mov	rax, qword ptr [rbp - 0xa70]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3700
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.20_0
	mov	qword ptr [rbp - 0xa70], rax
.label_3700:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa70]
	mov	qword ptr [rbp - 0x180], rdx
	mov	eax, dword ptr [rbp - 0x3f0]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0xa7], sil
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3708
	jmp	.label_4006
.label_3708:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3728
	mov	rbp, rbp
	jmp	.label_3731
.label_3728:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3734
	lea	rsi, [rsi]
	jmp	.label_3258
.label_3734:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3738
	nop	
	jmp	.label_3745
.label_3738:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffff94
	mov	rbp, rbp
	jl	.label_3025
	jmp	.label_3750
.label_3745:
	mov	eax, 0x7fffff93
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_3025
	jmp	.label_3750
.label_3258:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_4195
	mov	eax, 0x6c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	add	ecx, 0x6c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jle	.label_3025
	lea	rsi, [rsi]
	jmp	.label_3750
.label_4195:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3782
	lea	rsi, [rsi]
	jmp	.label_3787
.label_3782:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	edx, cl
	nop	
	add	edx, 0x6c
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_3025
	jmp	.label_3750
.label_3787:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	add	eax, 0x6c
	cmp	eax, 0x6c
	lea	rdi, [rdi]
	jl	.label_3025
.label_3750:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	add	eax, 0x6c
	cmp	eax, -0x80
	jl	.label_3025
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dl, cl
	movsx	ecx, dl
	nop	
	add	ecx, 0x6c
	cmp	eax, ecx
	nop	
	jge	.label_3813
.label_3025:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
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
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	jne	.label_2466
	jmp	.label_2490
.label_3813:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	add	eax, 0x6c
	mov	rsp, rsp
	mov	dl, al
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x158], rsi
	test	cl, 1
	jne	.label_2466
	lea	rdi, [rdi]
	jmp	.label_2490
.label_3731:
	mov	al, 1
	test	al, 1
	jne	.label_3836
	mov	rsp, rsp
	jmp	.label_3838
.label_3836:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3104
	mov	rsp, rsp
	jmp	.label_3846
.label_3104:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_3848
	nop	
	jmp	.label_3855
.label_3846:
	nop	
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	jl	.label_3848
	jmp	.label_3855
.label_3838:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x544], 0
	lea	rsi, [rsi]
	jge	.label_3861
	lea	rsi, [rsi]
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_3848
	jmp	.label_3855
.label_3861:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3877
	jmp	.label_3882
.label_3877:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_3848
	jmp	.label_3855
.label_3882:
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, 0x76c
	jl	.label_3848
.label_3855:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_3848
	nop	
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_3907
.label_3848:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2466
	lea	rsi, [rsi]
	jmp	.label_2490
.label_3907:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	mov	dl, al
	lea	rsi, [rsi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2466
	jmp	.label_2490
.label_4006:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3935
	nop	
	jmp	.label_3940
.label_3935:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3404
	jmp	.label_3947
.label_3404:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3453
	jmp	.label_3952
.label_3453:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3953
	mov	rsp, rsp
	jmp	.label_3959
.label_3953:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7ffff894
	nop	
	jl	.label_3631
	nop	
	jmp	.label_3961
.label_3959:
	mov	rbp, rbp
	mov	eax, 0x7ffff893
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_3631
	jmp	.label_3961
.label_3952:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	mov	cx, ax
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3968
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_3631
	mov	rsp, rsp
	jmp	.label_3961
.label_3968:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3989
	jmp	.label_3994
.label_3989:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x76c
	cmp	eax, edx
	jle	.label_3631
	mov	rbp, rbp
	jmp	.label_3961
.label_3994:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 0x76c
	cmp	eax, 0x76c
	mov	rbp, rbp
	jl	.label_3631
.label_3961:
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	jl	.label_3631
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_4025
.label_3631:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	add	ecx, 0x76c
	mov	dx, cx
	mov	rsp, rsp
	movsx	rsi, dx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	jne	.label_2466
	lea	rdi, [rdi]
	jmp	.label_2490
.label_4025:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x544]
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
	mov	qword ptr [rbp - 0x158], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2466
	nop	
	jmp	.label_2490
.label_3947:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_4058
	jmp	.label_4059
.label_4058:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_4060
	jmp	.label_4267
.label_4060:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_4067
	mov	rsp, rsp
	jmp	.label_4072
.label_4267:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	jl	.label_4067
	mov	rsp, rsp
	jmp	.label_4072
.label_4059:
	cmp	dword ptr [rbp - 0x544], 0
	lea	rdi, [rdi]
	jge	.label_4273
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_4067
	jmp	.label_4072
.label_4273:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_4095
	jmp	.label_4099
.label_4095:
	mov	eax, dword ptr [rbp - 0x544]
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	nop	
	cmp	eax, ecx
	jle	.label_4067
	jmp	.label_4072
.label_4099:
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_4067
.label_4072:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	nop	
	jl	.label_4067
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_3823
.label_4067:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	mov	dx, cx
	mov	rbp, rbp
	movsx	rsi, dx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	jne	.label_2466
	jmp	.label_2490
.label_3823:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	mov	dx, ax
	nop	
	movsx	rsi, dx
	mov	qword ptr [rbp - 0x158], rsi
	test	cl, 1
	jne	.label_2466
	mov	rbp, rbp
	jmp	.label_2490
.label_3940:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_4151
	jmp	.label_2935
.label_4151:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_4155
	jmp	.label_4158
.label_4155:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_4162
	lea	rdi, [rdi]
	jmp	.label_3259
.label_4162:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3305
	jmp	.label_4166
.label_3305:
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_2920
	mov	rsp, rsp
	jmp	.label_4168
.label_4166:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	jl	.label_2920
	jmp	.label_4168
.label_3259:
	cmp	dword ptr [rbp - 0x544], 0
	nop	
	jge	.label_4174
	mov	rsp, rsp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_2920
	mov	rsp, rsp
	jmp	.label_4168
.label_4174:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3046
	mov	rbp, rbp
	jmp	.label_4193
.label_3046:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_2920
	jmp	.label_4168
.label_4193:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	add	eax, 0x76c
	lea	rsi, [rsi]
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_2920
.label_4168:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	eax, 0x76c
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_2920
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_4230
.label_2920:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	mov	qword ptr [rbp - 0x158], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2466
	jmp	.label_2490
.label_4230:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2466
	jmp	.label_2490
.label_4158:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4259
	mov	rsp, rsp
	jmp	.label_4263
.label_4259:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_4264
	jmp	.label_3480
.label_4264:
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	lea	rsi, [rsi]
	jl	.label_4269
	lea	rsi, [rsi]
	jmp	.label_4271
.label_3480:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	jl	.label_4269
	jmp	.label_4271
.label_4263:
	cmp	dword ptr [rbp - 0x544], 0
	jge	.label_4276
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	nop	
	jle	.label_4269
	jmp	.label_4271
.label_4276:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3679
	jmp	.label_4290
.label_3679:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_4269
	lea	rsi, [rsi]
	jmp	.label_4271
.label_4290:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_4269
.label_4271:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_4269
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	cmp	eax, ecx
	jge	.label_4311
.label_4269:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	al, 1
	jne	.label_2466
	mov	rbp, rbp
	jmp	.label_2490
.label_4311:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	eax, 0x76c
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x158], rdx
	test	cl, 1
	jne	.label_2466
	lea	rdi, [rdi]
	jmp	.label_2490
.label_2935:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4343
	mov	rsp, rsp
	jmp	.label_3993
.label_4343:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4351
	jmp	.label_4027
.label_4351:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4354
	jmp	.label_4357
.label_4354:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_4358
	lea	rsi, [rsi]
	jmp	.label_4364
.label_4358:
	mov	rsp, rsp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x544]
	cmp	rcx, rax
	jl	.label_2430
	jmp	.label_4369
.label_4364:
	movabs	rax, 0x7ffffffffffff893
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x544]
	cmp	rax, rcx
	jl	.label_2430
	lea	rsi, [rsi]
	jmp	.label_4369
.label_4357:
	movsxd	rax, dword ptr [rbp - 0x544]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_4374
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x544]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_2430
	mov	rsp, rsp
	jmp	.label_4369
.label_4374:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_4380
	mov	rsp, rsp
	jmp	.label_4384
.label_4380:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x544]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2430
	jmp	.label_4369
.label_4384:
	movsxd	rax, dword ptr [rbp - 0x544]
	add	rax, 0x76c
	cmp	rax, 0x76c
	jl	.label_2430
.label_4369:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2430
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	rcx, 0x76c
	cmp	rax, rcx
	jge	.label_2453
.label_2430:
	nop	
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_2466
	jmp	.label_2490
.label_2453:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2466
	lea	rdi, [rdi]
	jmp	.label_2490
.label_4027:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2510
	nop	
	jmp	.label_2516
.label_2510:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2518
	jmp	.label_2526
.label_2518:
	nop	
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_2528
	jmp	.label_2534
.label_2526:
	mov	rsp, rsp
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	jl	.label_2528
	mov	rbp, rbp
	jmp	.label_2534
.label_2516:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x544], 0
	jge	.label_2542
	mov	eax, 0x76c
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_2528
	jmp	.label_2534
.label_2542:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2557
	jmp	.label_2561
.label_2557:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_2528
	jmp	.label_2534
.label_2561:
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_2528
.label_2534:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_2528
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	nop	
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_2588
.label_2528:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x544]
	nop	
	add	rcx, 0x76c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rcx
	test	al, 1
	jne	.label_2466
	jmp	.label_2490
.label_2588:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x544]
	nop	
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	jne	.label_2466
	jmp	.label_2490
.label_3993:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2631
	jmp	.label_2638
.label_2631:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2639
	lea	rdi, [rdi]
	jmp	.label_2643
.label_2639:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2647
	jmp	.label_2651
.label_2647:
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x544]
	cmp	rcx, rax
	jl	.label_2654
	jmp	.label_2662
.label_2651:
	movabs	rax, 0x7ffffffffffff893
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2654
	jmp	.label_2662
.label_2643:
	movsxd	rax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_2669
	mov	eax, 0x76c
	mov	ecx, eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x544]
	add	rdx, 0x76c
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2654
	jmp	.label_2662
.label_2669:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_2686
	jmp	.label_2692
.label_2686:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x544]
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	cmp	rax, rcx
	jle	.label_2654
	jmp	.label_2662
.label_2692:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x544]
	add	rax, 0x76c
	cmp	rax, 0x76c
	lea	rdi, [rdi]
	jl	.label_2654
.label_2662:
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2654
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	rcx, 0x76c
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2707
.label_2654:
	lea	rdi, [rdi]
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x544]
	nop	
	add	rcx, 0x76c
	mov	qword ptr [rbp - 0x158], rcx
	test	al, 1
	jne	.label_2466
	jmp	.label_2490
.label_2707:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x544]
	nop	
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2466
	jmp	.label_2490
.label_2638:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2754
	mov	rsp, rsp
	jmp	.label_2760
.label_2754:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2763
	jmp	.label_2767
.label_2763:
	nop	
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_2780
	mov	rbp, rbp
	jmp	.label_2777
.label_2767:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	jl	.label_2780
	lea	rdi, [rdi]
	jmp	.label_2777
.label_2760:
	nop	
	cmp	dword ptr [rbp - 0x544], 0
	jge	.label_2787
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_2780
	jmp	.label_2777
.label_2787:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2797
	jmp	.label_2804
.label_2797:
	mov	eax, dword ptr [rbp - 0x544]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_2780
	jmp	.label_2777
.label_2804:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	eax, 0x76c
	nop	
	cmp	eax, 0x76c
	jl	.label_2780
.label_2777:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_2780
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_2827
.label_2780:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rcx
	test	al, 1
	jne	.label_2466
	mov	rbp, rbp
	jmp	.label_2490
.label_2827:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x544]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2466
	jmp	.label_2490
.label_2466:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa7], 1
	je	.label_2861
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21_0
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_2861:
	jmp	.label_2503
.label_2490:
	movabs	rax, OFFSET FLAT:parse_datetime2.rel_time_0
	lea	rsi, [rsi]
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	lea	rsi, [rbp - 0x180]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], 0
	mov	ecx, dword ptr [rbp - 0x548]
	mov	rsp, rsp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	nop	
	mov	qword ptr [rbp - 0x148], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x54c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rdi
	movsxd	rdi, dword ptr [rbp - 0x550]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rdi
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x554]
	mov	qword ptr [rbp - 0x130], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x558]
	mov	qword ptr [rbp - 0x128], rdi
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x71c]
	nop	
	mov	qword ptr [rbp - 0x120], rdi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x538]
	mov	dword ptr [rbp - 0x1a0], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], 2
	add	rsi, 0x68
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	call	memcpy
	mov	byte ptr [rbp - 0xe0], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xdf], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xd0], 0
	mov	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], 0
	nop	
	mov	qword ptr [rbp - 0xc0], 0
	nop	
	mov	qword ptr [rbp - 0xb0], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa6], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 0
	mov	byte ptr [rbp - 0xa3], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa4], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa2], 0
	mov	byte ptr [rbp - 0xa1], 0
	nop	
	mov	byte ptr [rbp - 0xa0], 0
	mov	rax, qword ptr [rbp - 0x528]
	mov	qword ptr [rbp - 0x98], rax
	mov	dword ptr [rbp - 0x90], 0x10d
	mov	ecx, dword ptr [rbp - 0x538]
	mov	dword ptr [rbp - 0x8c], ecx
	mov	qword ptr [rbp - 0x88], 0
	mov	dword ptr [rbp - 0x48c], 1
.label_2548:
	cmp	dword ptr [rbp - 0x48c], 3
	nop	
	jg	.label_2488
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2981
	nop	
	jmp	.label_2986
.label_2981:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2989
	nop	
	jmp	.label_2995
.label_2989:
	mov	al, 1
	test	al, 1
	jne	.label_2997
	jmp	.label_3000
.label_2997:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_3002
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_3012
	mov	rbp, rbp
	jmp	.label_3030
.label_3002:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	dl, sil
	nop	
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_3012
	jmp	.label_3030
.label_3000:
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_3687
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, dil
	nop	
	movsx	edi, cl
	mov	rsp, rsp
	add	esi, edi
	cmp	eax, esi
	jle	.label_3012
	jmp	.label_3030
.label_3687:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_3065
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	cl, al
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	mov	cl, dil
	lea	rdi, [rdi]
	movsx	edi, cl
	nop	
	add	esi, edi
	cmp	edx, esi
	jle	.label_3012
	jmp	.label_3030
.label_3065:
	mov	rax, qword ptr [rbp - 0x488]
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, sil
	movsx	esi, cl
	mov	rsp, rsp
	cmp	edx, esi
	nop	
	jl	.label_3012
.label_3030:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cl, sil
	mov	rsp, rsp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	edx, esi
	nop	
	cmp	edx, -0x80
	nop	
	jl	.label_3012
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	dl, cl
	movsx	esi, dl
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	dl, dil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	esi, edi
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_3125
.label_3012:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	esi, dl
	nop	
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	dl, dil
	nop	
	movsx	edi, dl
	add	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	rcx, dl
	mov	qword ptr [rbp - 0x448], rcx
	test	al, 1
	jne	.label_2478
	jmp	.label_2452
.label_3125:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	sil, dil
	mov	rbp, rbp
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	jne	.label_2478
	jmp	.label_2452
.label_2995:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3167
	lea	rdi, [rdi]
	jmp	.label_3169
.label_3167:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_3173
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_2855
	jmp	.label_2934
.label_3173:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	mov	rsp, rsp
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_2855
	jmp	.label_2934
.label_3169:
	nop	
	cmp	qword ptr [rbp - 0x488], 0
	lea	rdi, [rdi]
	jge	.label_3210
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_2855
	mov	rsp, rsp
	jmp	.label_2934
.label_3210:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_3237
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2855
	jmp	.label_2934
.label_3237:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	add	rax, rdx
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_2855
.label_2934:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	cmp	rax, -0x80
	jl	.label_2855
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_3282
.label_2855:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	movsx	rcx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rcx
	nop	
	test	al, 1
	jne	.label_2478
	jmp	.label_2452
.label_3282:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	add	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	nop	
	jne	.label_2478
	nop	
	jmp	.label_2452
.label_2986:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3317
	nop	
	jmp	.label_3383
.label_3317:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3324
	mov	rbp, rbp
	jmp	.label_3329
.label_3324:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3333
	nop	
	jmp	.label_3336
.label_3333:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3338
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	dx, di
	lea	rdi, [rdi]
	movsx	edi, dx
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_3346
	lea	rdi, [rdi]
	jmp	.label_3363
.label_3338:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	dx, cx
	movsx	ecx, dx
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x488]
	mov	dx, si
	mov	rbp, rbp
	movsx	ecx, dx
	cmp	eax, ecx
	nop	
	jl	.label_3346
	mov	rbp, rbp
	jmp	.label_3363
.label_3336:
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3374
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x488]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, di
	mov	rbp, rbp
	movsx	edi, cx
	lea	rsi, [rsi]
	add	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_3346
	jmp	.label_3363
.label_3374:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3396
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_3346
	jmp	.label_3363
.label_3396:
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	nop	
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_3346
.label_3363:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	add	edx, esi
	nop	
	cmp	edx, 0xffff8000
	jl	.label_3346
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	dx, di
	movsx	edi, dx
	add	esi, edi
	cmp	eax, esi
	jge	.label_4149
.label_3346:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
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
	mov	qword ptr [rbp - 0x448], rcx
	test	al, 1
	jne	.label_2478
	mov	rsp, rsp
	jmp	.label_2452
.label_4149:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	si, dx
	movsx	eax, si
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	mov	si, di
	lea	rdi, [rdi]
	movsx	edi, si
	add	eax, edi
	lea	rdi, [rdi]
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2478
	jmp	.label_2452
.label_3329:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3488
	jmp	.label_3490
.label_3488:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_2520
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_2762
	mov	rbp, rbp
	jmp	.label_3510
.label_2520:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	jl	.label_2762
	mov	rsp, rsp
	jmp	.label_3510
.label_3490:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_3527
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2762
	lea	rdi, [rdi]
	jmp	.label_3510
.label_3527:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_3541
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2762
	nop	
	jmp	.label_3510
.label_3541:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2762
.label_3510:
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x8000
	jl	.label_2762
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3578
.label_2762:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	mov	rbp, rbp
	mov	di, dx
	movsx	rcx, di
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rcx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2478
	lea	rdi, [rdi]
	jmp	.label_2452
.label_3578:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	lea	rsi, [rsi]
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2478
	jmp	.label_2452
.label_3383:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3615
	jmp	.label_3618
.label_3615:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3619
	jmp	.label_3623
.label_3619:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3626
	jmp	.label_3633
.label_3626:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	nop	
	jge	.label_3635
	nop	
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	sub	eax, esi
	nop	
	cmp	edx, eax
	mov	rbp, rbp
	jl	.label_3642
	nop	
	jmp	.label_3654
.label_3635:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	sub	eax, ecx
	mov	rdx, qword ptr [rbp - 0x488]
	nop	
	mov	ecx, edx
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_3642
	jmp	.label_3654
.label_3633:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3674
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	cmp	eax, edx
	jle	.label_3642
	lea	rsi, [rsi]
	jmp	.label_3654
.label_3674:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_3688
	mov	rax, qword ptr [rbp - 0x488]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	edx, eax
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	cmp	ecx, edx
	jle	.label_3642
	jmp	.label_3654
.label_3688:
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	add	ecx, edx
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_3642
.label_3654:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	ecx, eax
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	add	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_3642
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_3715
.label_3642:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	nop	
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x448], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2478
	mov	rbp, rbp
	jmp	.label_2452
.label_3715:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	add	eax, esi
	lea	rdi, [rdi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x448], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2478
	jmp	.label_2452
.label_3623:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_3753
	nop	
	jmp	.label_3758
.label_3753:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3761
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_3771
	nop	
	jmp	.label_2684
.label_3761:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	nop	
	jl	.label_3771
	mov	rsp, rsp
	jmp	.label_2684
.label_3758:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_3794
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_3771
	jmp	.label_2684
.label_3794:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	cmp	eax, 0
	jge	.label_3819
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_3771
	lea	rdi, [rdi]
	jmp	.label_2684
.label_3819:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	add	rax, rdx
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_3771
.label_2684:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x80000000
	lea	rsi, [rsi]
	jl	.label_3771
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_3853
.label_3771:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	nop	
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2478
	mov	rsp, rsp
	jmp	.label_2452
.label_3853:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2478
	jmp	.label_2452
.label_3618:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3894
	lea	rdi, [rdi]
	jmp	.label_3160
.label_3894:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3899
	jmp	.label_3194
.label_3899:
	mov	al, 1
	test	al, 1
	jne	.label_3909
	jmp	.label_3912
.label_3909:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jge	.label_3913
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_2947
	nop	
	jmp	.label_3928
.label_3913:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	jl	.label_2947
	jmp	.label_3928
.label_3912:
	cmp	qword ptr [rbp - 0x488], 0
	mov	rbp, rbp
	jge	.label_3945
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_2947
	jmp	.label_3928
.label_3945:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_3523
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2947
	lea	rdi, [rdi]
	jmp	.label_3928
.label_3523:
	mov	rax, qword ptr [rbp - 0x488]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jl	.label_2947
.label_3928:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2947
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_4003
.label_2947:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	mov	qword ptr [rbp - 0x448], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2478
	nop	
	jmp	.label_2452
.label_4003:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rdx
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2478
	jmp	.label_2452
.label_3194:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4011
	lea	rsi, [rsi]
	jmp	.label_4047
.label_4011:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_4049
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	sub	rax, rsi
	cmp	rcx, rax
	nop	
	jl	.label_2567
	lea	rdi, [rdi]
	jmp	.label_4023
.label_4049:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	jl	.label_2567
	jmp	.label_4023
.label_4047:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_4070
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	nop	
	cmp	rcx, rdx
	jle	.label_2567
	lea	rsi, [rsi]
	jmp	.label_4023
.label_4070:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_4091
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2567
	lea	rsi, [rsi]
	jmp	.label_4023
.label_4091:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_2567
.label_4023:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	add	rcx, rsi
	cmp	rcx, rax
	nop	
	jl	.label_2567
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rcx, rsi
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_4136
.label_2567:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x448], rcx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2478
	jmp	.label_2452
.label_4136:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	qword ptr [rbp - 0x448], rdx
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2478
	jmp	.label_2452
.label_3160:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_4170
	jmp	.label_4175
.label_4170:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_4176
	jmp	.label_4178
.label_4176:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_2998
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_4204
	jmp	.label_4201
.label_2998:
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_4204
	jmp	.label_4201
.label_4178:
	nop	
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_3205
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	lea	rsi, [rsi]
	add	rdx, rsi
	cmp	rcx, rdx
	nop	
	jle	.label_4204
	jmp	.label_4201
.label_3205:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_4243
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_4204
	mov	rsp, rsp
	jmp	.label_4201
.label_4243:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	rsp, rsp
	jl	.label_4204
.label_4201:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_4204
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_4277
.label_4204:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x448], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2478
	nop	
	jmp	.label_2452
.label_4277:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2478
	nop	
	jmp	.label_2452
.label_4175:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_4308
	mov	rsp, rsp
	jmp	.label_4314
.label_4308:
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_4317
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2564
	jmp	.label_4189
.label_4317:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_2564
	jmp	.label_4189
.label_4314:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_4349
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_2564
	jmp	.label_4189
.label_4349:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_4104
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2564
	jmp	.label_4189
.label_4104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rax, rdx
	nop	
	jl	.label_2564
.label_4189:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	cmp	rcx, rax
	jl	.label_2564
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_4387
.label_2564:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2478
	jmp	.label_2452
.label_4387:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	jne	.label_2478
.label_2452:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x448]
	call	time_overflow
	test	al, 1
	mov	rsp, rsp
	jne	.label_2478
	lea	rdi, [rdi]
	jmp	.label_2485
.label_2478:
	mov	rbp, rbp
	jmp	.label_2488
.label_2485:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x7c8]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x5e8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x228]
	call	localtime_rz
	cmp	rax, 0
	je	.label_2514
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x5b8], 0
	mov	rbp, rbp
	je	.label_2514
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x8c]
	je	.label_2514
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x80], 0x10d
	mov	ecx, dword ptr [rbp - 0x5c8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2488
.label_2514:
	lea	rdi, [rdi]
	jmp	.label_2546
.label_2546:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48c], eax
	lea	rsi, [rsi]
	jmp	.label_2548
.label_2488:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2553
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_2553
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_2553
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], 0xffffffff
	mov	qword ptr [rbp - 0x88], 0
.label_2553:
	nop	
	lea	rdi, [rbp - 0x180]
	call	yyparse
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2578
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa7], 1
	je	.label_2580
	mov	rax, qword ptr [rbp - 0xbc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	ja	.label_2586
	nop	
	movabs	rdi, OFFSET FLAT:.str.22_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2602
.label_2586:
	movabs	rdi, OFFSET FLAT:.str.23_0
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_2602:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_2580:
	lea	rsi, [rsi]
	jmp	.label_2503
.label_2578:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa7], 1
	nop	
	je	.label_2627
	movabs	rdi, OFFSET FLAT:.str.24_0
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe0], 1
	je	.label_2641
	movabs	rdi, OFFSET FLAT:.str.25_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x6a0], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x6a0]
	mov	rsi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2664
.label_2641:
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_2667
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.26_0
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xa08], rax
	mov	rbp, rbp
	call	gettext
	mov	rdi, qword ptr [rbp - 0xa08]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x714], eax
	jmp	.label_2681
.label_2667:
	cmp	qword ptr [rbp - 0x7a8], 0
	je	.label_2685
	mov	rax, qword ptr [rbp - 0x228]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x808]
	je	.label_3653
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa18], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x7a8]
	mov	rdi, qword ptr [rbp - 0xa18]
	mov	rsi, rax
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x514], eax
	mov	rsp, rsp
	jmp	.label_2699
.label_3653:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x7a8]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.28
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2710
	movabs	rdi, OFFSET FLAT:.str.29_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x328], rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x328]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50c], eax
	jmp	.label_2735
.label_2710:
	movabs	rdi, OFFSET FLAT:.str.30_0
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x260], rax
	call	gettext
	mov	rdx, qword ptr [rbp - 0x7a8]
	mov	rdi, qword ptr [rbp - 0x260]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xddc], eax
.label_2735:
	jmp	.label_2699
.label_2699:
	lea	rsi, [rsi]
	jmp	.label_2766
.label_2685:
	movabs	rdi, OFFSET FLAT:.str.31_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x498], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x498]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x55c], eax
.label_2766:
	lea	rdi, [rdi]
	jmp	.label_2681
.label_2681:
	lea	rdi, [rdi]
	jmp	.label_2664
.label_2664:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc8], 0
	lea	rsi, [rsi]
	je	.label_2792
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_2792
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x16c]
	jge	.label_2792
	movabs	rsi, OFFSET FLAT:.str.32_0
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	nop	
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x928], eax
.label_2792:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_2818
	lea	rsi, [rbp - 0x690]
	mov	rdi,  qword ptr [word ptr [stderr]]
	nop	
	mov	eax, dword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xcb0], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	time_zone_str
	movabs	rsi, OFFSET FLAT:.str.33_0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xcb0]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x354], eax
.label_2818:
	mov	edi, 0xa
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x200], eax
.label_2627:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe0], 1
	je	.label_2842
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rax + 8], rcx
	jmp	.label_2848
.label_2842:
	nop	
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	or	rdx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	or	rdx, rsi
	cmp	rcx, rdx
	jge	.label_2856
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa7], 1
	je	.label_2876
	cmp	qword ptr [rbp - 0xb8], 1
	jle	.label_2884
	nop	
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_2884:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 1
	jle	.label_2892
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.35_0
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_2892:
	cmp	qword ptr [rbp - 0xd0], 1
	nop	
	jle	.label_2901
	movabs	rdi, OFFSET FLAT:.str.36_0
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_2901:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xc0], 1
	mov	rbp, rbp
	jle	.label_2907
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.37_0
	mov	al, 0
	call	dbg_printf
.label_2907:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb0]
	cmp	rax, 1
	jle	.label_2918
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.38_0
	mov	al, 0
	call	dbg_printf
.label_2918:
	jmp	.label_2876
.label_2876:
	nop	
	jmp	.label_2503
.label_2856:
	lea	rax, [rbp - 0x1c0]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x180]
	add	rcx, 0x20
	nop	
	mov	dl, byte ptr [rbp - 0xa7]
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
	jne	.label_3213
	lea	rdi, [rdi]
	jmp	.label_2436
.label_3213:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2950
	jmp	.label_2954
.label_2950:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3444
	jmp	.label_2960
.label_3444:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2961
	jmp	.label_2965
.label_2961:
	mov	al, 1
	test	al, 1
	jne	.label_2968
	jmp	.label_2969
.label_2968:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000001
	lea	rdi, [rdi]
	jl	.label_2970
	mov	rsp, rsp
	jmp	.label_2982
.label_2969:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_2970
	nop	
	jmp	.label_2982
.label_2965:
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2996
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dl, cl
	movsx	esi, dl
	add	esi, -1
	cmp	eax, esi
	nop	
	jle	.label_2970
	lea	rsi, [rsi]
	jmp	.label_2982
.label_2996:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3020
	jmp	.label_3026
.label_3020:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	add	esi, -1
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_2970
	lea	rdi, [rdi]
	jmp	.label_2982
.label_3026:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	movsx	edx, cl
	add	edx, -1
	cmp	edx, -1
	mov	rbp, rbp
	jl	.label_2970
.label_2982:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, -1
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_2970
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	add	esi, -1
	lea	rsi, [rsi]
	cmp	eax, esi
	nop	
	jge	.label_3722
.label_2970:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, -1
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x1b0], esi
	test	al, 1
	jne	.label_2436
	jmp	.label_3069
.label_3722:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	sil, dl
	movsx	eax, sil
	add	eax, -1
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	jne	.label_2436
	lea	rsi, [rsi]
	jmp	.label_3069
.label_2960:
	mov	al, 1
	test	al, 1
	jne	.label_3081
	jmp	.label_3084
.label_3081:
	mov	al, 1
	test	al, 1
	jne	.label_3085
	jmp	.label_3954
.label_3085:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	mov	rbp, rbp
	jl	.label_3091
	jmp	.label_3124
.label_3954:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x148]
	jl	.label_3091
	jmp	.label_3124
.label_3084:
	cmp	qword ptr [rbp - 0x148], 0
	lea	rsi, [rsi]
	jge	.label_3596
	lea	rsi, [rsi]
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3091
	nop	
	jmp	.label_3124
.label_3596:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3127
	jmp	.label_3131
.label_3127:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3091
	lea	rdi, [rdi]
	jmp	.label_3124
.label_3131:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_3091
.label_3124:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -0x80
	jl	.label_3091
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_3149
.label_3091:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x1b0], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2436
	lea	rsi, [rsi]
	jmp	.label_3069
.label_3149:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, -1
	mov	sil, al
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	nop	
	jne	.label_2436
	lea	rdi, [rdi]
	jmp	.label_3069
.label_2954:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3180
	jmp	.label_3185
.label_3180:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3187
	nop	
	jmp	.label_3195
.label_3187:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3197
	lea	rdi, [rdi]
	jmp	.label_3200
.label_3197:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3204
	lea	rdi, [rdi]
	jmp	.label_3208
.label_3204:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0x80000001
	jl	.label_2655
	jmp	.label_2738
.label_3208:
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2655
	mov	rsp, rsp
	jmp	.label_2738
.label_3200:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3236
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	add	esi, -1
	mov	rsp, rsp
	cmp	eax, esi
	lea	rdi, [rdi]
	jle	.label_2655
	mov	rbp, rbp
	jmp	.label_2738
.label_3236:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3255
	mov	rbp, rbp
	jmp	.label_3260
.label_3255:
	mov	rax, qword ptr [rbp - 0x148]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	cx, ax
	nop	
	movsx	esi, cx
	add	esi, -1
	lea	rdi, [rdi]
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_2655
	mov	rbp, rbp
	jmp	.label_2738
.label_3260:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, -1
	cmp	edx, -1
	jl	.label_2655
.label_2738:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	cmp	edx, 0xffff8000
	mov	rbp, rbp
	jl	.label_2655
	mov	rsp, rsp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	nop	
	add	esi, -1
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_3288
.label_2655:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, -1
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x1b0], esi
	test	al, 1
	jne	.label_2436
	jmp	.label_3069
.label_3288:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
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
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	jne	.label_2436
	mov	rsp, rsp
	jmp	.label_3069
.label_3195:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_3325
	jmp	.label_3403
.label_3325:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_3331
	jmp	.label_3440
.label_3331:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_3019
	nop	
	jmp	.label_3340
.label_3440:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	jl	.label_3019
	jmp	.label_3340
.label_3403:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x148], 0
	lea	rdi, [rdi]
	jge	.label_3355
	nop	
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3019
	nop	
	jmp	.label_3340
.label_3355:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3366
	mov	rbp, rbp
	jmp	.label_3368
.label_3366:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3019
	mov	rbp, rbp
	jmp	.label_3340
.label_3368:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	jl	.label_3019
.label_3340:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	mov	rsp, rsp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_3019
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_3388
.label_3019:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	add	edx, -1
	mov	si, dx
	movsx	edx, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b0], edx
	test	al, 1
	nop	
	jne	.label_2436
	mov	rbp, rbp
	jmp	.label_3069
.label_3388:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	add	eax, -1
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2436
	mov	rsp, rsp
	jmp	.label_3069
.label_3185:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3413
	lea	rdi, [rdi]
	jmp	.label_3416
.label_3413:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3419
	jmp	.label_4024
.label_3419:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4032
	jmp	.label_3434
.label_4032:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4051
	jmp	.label_3437
.label_4051:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	nop	
	cmp	ecx, 0x80000001
	mov	rsp, rsp
	jl	.label_3439
	lea	rdi, [rdi]
	jmp	.label_3450
.label_3437:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	nop	
	cmp	eax, edx
	jl	.label_3439
	jmp	.label_3450
.label_3434:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_4215
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	nop	
	mov	edx, ecx
	add	edx, -1
	mov	rbp, rbp
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_3439
	lea	rdi, [rdi]
	jmp	.label_3450
.label_4215:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_3467
	mov	rbp, rbp
	jmp	.label_3473
.label_3467:
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	mov	edx, eax
	add	edx, -1
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_3439
	jmp	.label_3450
.label_3473:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, -1
	jl	.label_3439
.label_3450:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, 0x80000000
	jl	.label_3439
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	edx, ecx
	add	edx, -1
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_3482
.label_3439:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	mov	dword ptr [rbp - 0x1b0], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2436
	jmp	.label_3069
.label_3482:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2436
	jmp	.label_3069
.label_4024:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3516
	jmp	.label_2644
.label_3516:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3520
	jmp	.label_3525
.label_3520:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_3526
	jmp	.label_3532
.label_3525:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x148]
	jl	.label_3526
	jmp	.label_3532
.label_2644:
	nop	
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_3537
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_3526
	jmp	.label_3532
.label_3537:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2908
	jmp	.label_3552
.label_2908:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3526
	mov	rsp, rsp
	jmp	.label_3532
.label_3552:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -1
	lea	rsi, [rsi]
	jl	.label_3526
.label_3532:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -0x80000000
	lea	rdi, [rdi]
	jl	.label_3526
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	nop	
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_3572
.label_3526:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, -1
	mov	dword ptr [rbp - 0x1b0], edx
	test	al, 1
	jne	.label_2436
	lea	rsi, [rsi]
	jmp	.label_3069
.label_3572:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	nop	
	jne	.label_2436
	jmp	.label_3069
.label_3416:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3590
	jmp	.label_3591
.label_3590:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3593
	lea	rsi, [rsi]
	jmp	.label_3597
.label_3593:
	nop	
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3601
	mov	rbp, rbp
	jmp	.label_3605
.label_3601:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3607
	nop	
	jmp	.label_3610
.label_3607:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	mov	rsp, rsp
	jl	.label_3484
	nop	
	jmp	.label_3616
.label_3610:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	jl	.label_3484
	nop	
	jmp	.label_3616
.label_3605:
	nop	
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_3628
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3484
	jmp	.label_3616
.label_3628:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3645
	lea	rsi, [rsi]
	jmp	.label_3647
.label_3645:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3484
	lea	rdi, [rdi]
	jmp	.label_3616
.label_3647:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -1
	jl	.label_3484
.label_3616:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	nop	
	add	rcx, -1
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3484
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rcx, -1
	nop	
	cmp	rax, rcx
	jge	.label_3683
.label_3484:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	nop	
	test	al, 1
	jne	.label_2436
	lea	rdi, [rdi]
	jmp	.label_3069
.label_3683:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b0], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2436
	jmp	.label_3069
.label_3597:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3703
	lea	rsi, [rsi]
	jmp	.label_3704
.label_3703:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3706
	lea	rsi, [rsi]
	jmp	.label_3709
.label_3706:
	nop	
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_3712
	lea	rsi, [rsi]
	jmp	.label_3717
.label_3709:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x148]
	jl	.label_3712
	jmp	.label_3717
.label_3704:
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_4292
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3712
	jmp	.label_3717
.label_4292:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4073
	jmp	.label_3744
.label_4073:
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_3712
	jmp	.label_3717
.label_3744:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_3712
.label_3717:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3712
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_3774
.label_3712:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2436
	jmp	.label_3069
.label_3774:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2436
	mov	rbp, rbp
	jmp	.label_3069
.label_3591:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3801
	lea	rdi, [rdi]
	jmp	.label_3806
.label_3801:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2511
	jmp	.label_3816
.label_2511:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2551
	jmp	.label_3820
.label_2551:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	mov	rbp, rbp
	jl	.label_3821
	jmp	.label_3824
.label_3820:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	jl	.label_3821
	jmp	.label_3824
.label_3816:
	nop	
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_3830
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3821
	mov	rsp, rsp
	jmp	.label_3824
.label_3830:
	mov	al, 1
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_3835
	jmp	.label_3840
.label_3835:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	nop	
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_3821
	jmp	.label_3824
.label_3840:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_3821
.label_3824:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3821
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	jge	.label_3867
.label_3821:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2436
	jmp	.label_3069
.label_3867:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rdx, -1
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	jne	.label_2436
	jmp	.label_3069
.label_3806:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3895
	mov	rbp, rbp
	jmp	.label_3901
.label_3895:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_3905
	jmp	.label_3910
.label_3905:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_3221
	jmp	.label_3915
.label_3910:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	jl	.label_3221
	lea	rdi, [rdi]
	jmp	.label_3915
.label_3901:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_3923
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3221
	nop	
	jmp	.label_3915
.label_3923:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3936
	jmp	.label_3941
.label_3936:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3221
	jmp	.label_3915
.label_3941:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rax, -1
	cmp	rax, -1
	jl	.label_3221
.label_3915:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_3221
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3962
.label_3221:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_2436
	mov	rbp, rbp
	jmp	.label_3069
.label_3962:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rdx, -1
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2436
.label_3069:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3990
	lea	rsi, [rsi]
	jmp	.label_3996
.label_3990:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3746
	jmp	.label_4001
.label_3746:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4004
	jmp	.label_4008
.label_4004:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3808
	jmp	.label_4014
.label_3808:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000000
	nop	
	jl	.label_4015
	mov	rbp, rbp
	jmp	.label_4022
.label_4014:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_4015
	mov	rsp, rsp
	jmp	.label_4022
.label_4008:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_4034
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	add	esi, 0
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_4015
	mov	rsp, rsp
	jmp	.label_4022
.label_4034:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_4050
	jmp	.label_4052
.label_4050:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_4015
	lea	rdi, [rdi]
	jmp	.label_4022
.label_4052:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	add	edx, 0
	cmp	edx, 0
	nop	
	jl	.label_4015
.label_4022:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	add	edx, 0
	lea	rdi, [rdi]
	cmp	edx, -0x80
	mov	rbp, rbp
	jl	.label_4015
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_4079
.label_4015:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dl, cl
	movsx	esi, dl
	add	esi, 0
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x1b4], esi
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2436
	jmp	.label_2439
.label_4079:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
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
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2436
	nop	
	jmp	.label_2439
.label_4001:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_4116
	mov	rsp, rsp
	jmp	.label_4119
.label_4116:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_4121
	jmp	.label_4127
.label_4121:
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	nop	
	jl	.label_4129
	lea	rdi, [rdi]
	jmp	.label_4133
.label_4127:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	jl	.label_4129
	lea	rsi, [rsi]
	jmp	.label_4133
.label_4119:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_4144
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_4129
	jmp	.label_4133
.label_4144:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_4161
	jmp	.label_4164
.label_4161:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_4129
	jmp	.label_4133
.label_4164:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_4129
.label_4133:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, -0x80
	jl	.label_4129
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	jge	.label_2974
.label_4129:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	add	edx, 0
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x1b4], edx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2436
	jmp	.label_2439
.label_2974:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	mov	eax, edx
	lea	rdi, [rdi]
	add	eax, 0
	mov	sil, al
	movsx	eax, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2436
	jmp	.label_2439
.label_3996:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_4216
	jmp	.label_4226
.label_4216:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3233
	mov	rsp, rsp
	jmp	.label_4234
.label_3233:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_4238
	lea	rsi, [rsi]
	jmp	.label_4239
.label_4238:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3291
	mov	rsp, rsp
	jmp	.label_3321
.label_3291:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	cmp	edx, 0x80000000
	jl	.label_2458
	jmp	.label_4253
.label_3321:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	nop	
	jl	.label_2458
	mov	rsp, rsp
	jmp	.label_4253
.label_4239:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_4260
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_2458
	jmp	.label_4253
.label_4260:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_4272
	jmp	.label_3546
.label_4272:
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	movsx	esi, cx
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2458
	nop	
	jmp	.label_4253
.label_3546:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	add	edx, 0
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_2458
.label_4253:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	movsx	edx, cx
	nop	
	add	edx, 0
	nop	
	cmp	edx, 0xffff8000
	jl	.label_2458
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_4297
.label_2458:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	mov	dword ptr [rbp - 0x1b4], esi
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2436
	lea	rdi, [rdi]
	jmp	.label_2439
.label_4297:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	add	eax, 0
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2436
	jmp	.label_2439
.label_4234:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_4337
	jmp	.label_4342
.label_4337:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_4345
	jmp	.label_4350
.label_4345:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_4123
	jmp	.label_3859
.label_4350:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_4123
	mov	rbp, rbp
	jmp	.label_3859
.label_4342:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jge	.label_3916
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jle	.label_4123
	mov	rsp, rsp
	jmp	.label_3859
.label_3916:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_4373
	jmp	.label_4375
.label_4373:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	jle	.label_4123
	lea	rsi, [rsi]
	jmp	.label_3859
.label_4375:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, 0
	jl	.label_4123
.label_3859:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	nop	
	jl	.label_4123
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jge	.label_4385
.label_4123:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	add	edx, 0
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	jne	.label_2436
	lea	rdi, [rdi]
	jmp	.label_2439
.label_4385:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, 0
	mov	rsp, rsp
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2436
	mov	rbp, rbp
	jmp	.label_2439
.label_4226:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_2461
	jmp	.label_2464
.label_2461:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2468
	nop	
	jmp	.label_2479
.label_2468:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2482
	jmp	.label_2489
.label_2482:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2491
	mov	rbp, rbp
	jmp	.label_2500
.label_2491:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0x80000000
	jl	.label_2504
	lea	rdi, [rdi]
	jmp	.label_2513
.label_2500:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	cmp	eax, edx
	mov	rsp, rsp
	jl	.label_2504
	jmp	.label_2513
.label_2489:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2525
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	nop	
	mov	edx, ecx
	add	edx, 0
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_2504
	lea	rsi, [rsi]
	jmp	.label_2513
.label_2525:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2543
	lea	rsi, [rsi]
	jmp	.label_2549
.label_2543:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	add	edx, 0
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_2504
	mov	rsp, rsp
	jmp	.label_2513
.label_2549:
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, 0
	cmp	ecx, 0
	jl	.label_2504
.label_2513:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, 0
	cmp	ecx, 0x80000000
	jl	.label_2504
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0
	cmp	eax, edx
	jge	.label_2572
.label_2504:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	add	edx, 0
	mov	dword ptr [rbp - 0x1b4], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2436
	mov	rsp, rsp
	jmp	.label_2439
.label_2572:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	eax, edx
	add	eax, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2436
	mov	rbp, rbp
	jmp	.label_2439
.label_2479:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_2607
	jmp	.label_2611
.label_2607:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2612
	jmp	.label_2619
.label_2612:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_2621
	jmp	.label_2630
.label_2619:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_2621
	jmp	.label_2630
.label_2611:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_2640
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_2621
	nop	
	jmp	.label_2630
.label_2640:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_2661
	mov	rbp, rbp
	jmp	.label_2665
.label_2661:
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2621
	mov	rbp, rbp
	jmp	.label_2630
.label_2665:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	add	rax, 0
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2621
.label_2630:
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	add	rax, 0
	mov	rbp, rbp
	cmp	rax, -0x80000000
	jl	.label_2621
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_2690
.label_2621:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	edx, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2436
	mov	rbp, rbp
	jmp	.label_2439
.label_2690:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	add	eax, 0
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2436
	lea	rdi, [rdi]
	jmp	.label_2439
.label_2464:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2714
	mov	rbp, rbp
	jmp	.label_2717
.label_2714:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2720
	jmp	.label_3903
.label_2720:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2726
	mov	rsp, rsp
	jmp	.label_2734
.label_2726:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2737
	lea	rdi, [rdi]
	jmp	.label_2746
.label_2737:
	nop	
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_2748
	mov	rsp, rsp
	jmp	.label_2758
.label_2746:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_2748
	lea	rdi, [rdi]
	jmp	.label_2758
.label_2734:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x140], 0
	mov	rbp, rbp
	jge	.label_2772
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_2748
	lea	rdi, [rdi]
	jmp	.label_2758
.label_2772:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2789
	jmp	.label_2791
.label_2789:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2748
	jmp	.label_2758
.label_2791:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_2748
.label_2758:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_2748
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2822
.label_2748:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2436
	mov	rsp, rsp
	jmp	.label_2439
.label_2822:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	mov	rsp, rsp
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2436
	mov	rsp, rsp
	jmp	.label_2439
.label_3903:
	mov	rsp, rsp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2851
	jmp	.label_2600
.label_2851:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_2854
	jmp	.label_2858
.label_2854:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_2860
	jmp	.label_2867
.label_2858:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x140]
	nop	
	jl	.label_2860
	jmp	.label_2867
.label_2600:
	cmp	qword ptr [rbp - 0x140], 0
	mov	rbp, rbp
	jge	.label_2880
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	jle	.label_2860
	jmp	.label_2867
.label_2880:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2895
	jmp	.label_2899
.label_2895:
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2860
	jmp	.label_2867
.label_2899:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	jl	.label_2860
.label_2867:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_2860
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_2925
.label_2860:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2436
	mov	rbp, rbp
	jmp	.label_2439
.label_2925:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	rbp, rbp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2436
	jmp	.label_2439
.label_2717:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2949
	lea	rsi, [rsi]
	jmp	.label_2952
.label_2949:
	mov	al, 1
	test	al, 1
	jne	.label_2955
	mov	rbp, rbp
	jmp	.label_2958
.label_2955:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3292
	nop	
	jmp	.label_2964
.label_3292:
	movabs	rax, 0x8000000000000000
	nop	
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_2976
	lea	rdi, [rdi]
	jmp	.label_2973
.label_2964:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_2976
	lea	rsi, [rsi]
	jmp	.label_2973
.label_2958:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_2988
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2976
	mov	rsp, rsp
	jmp	.label_2973
.label_2988:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_3007
	jmp	.label_3013
.label_3007:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2976
	mov	rsp, rsp
	jmp	.label_2973
.label_3013:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	lea	rdi, [rdi]
	jl	.label_2976
.label_2973:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	cmp	rcx, rax
	nop	
	jl	.label_2976
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3039
.label_2976:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2436
	jmp	.label_2439
.label_3039:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2436
	nop	
	jmp	.label_2439
.label_2952:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3070
	jmp	.label_3071
.label_3070:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3073
	mov	rbp, rbp
	jmp	.label_3075
.label_3073:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_3076
	jmp	.label_3083
.label_3075:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_3076
	lea	rdi, [rdi]
	jmp	.label_3083
.label_3071:
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_3096
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_3076
	jmp	.label_3083
.label_3096:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3116
	lea	rsi, [rsi]
	jmp	.label_3119
.label_3116:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3076
	jmp	.label_3083
.label_3119:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_3076
.label_3083:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_3076
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	nop	
	jge	.label_3144
.label_3076:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2436
	nop	
	jmp	.label_2439
.label_3144:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2436
	lea	rdi, [rdi]
	jmp	.label_2439
.label_2436:
	test	byte ptr [rbp - 0xa7], 1
	lea	rsi, [rsi]
	je	.label_3171
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
.label_3171:
	lea	rsi, [rsi]
	jmp	.label_2503
.label_2439:
	cmp	qword ptr [rbp - 0xb8], 0
	jne	.label_3184
	mov	rbp, rbp
	test	byte ptr [rbp - 0xdf], 1
	mov	rsp, rsp
	je	.label_3190
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_3190
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	lea	rsi, [rsi]
	jne	.label_3190
.label_3184:
	mov	rdi, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x164]
	mov	rsp, rsp
	call	to_hour
	mov	dword ptr [rbp - 0x1b8], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jge	.label_3215
	cmp	dword ptr [rbp - 0x164], 0
	jne	.label_2750
	nop	
	movabs	rax, OFFSET FLAT:.str.40_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc98], rax
	lea	rdi, [rdi]
	jmp	.label_3229
.label_2750:
	movabs	rax, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.41_0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x164], 1
	nop	
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xc98], rax
.label_3229:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc98]
	mov	qword ptr [rbp - 0x248], rax
	test	byte ptr [rbp - 0xa7], 1
	lea	rsi, [rsi]
	je	.label_3248
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_3248:
	jmp	.label_2503
.label_3215:
	mov	rax, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1bc], ecx
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c0], ecx
	nop	
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3270
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	je	.label_3281
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.44_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xbb0], rax
	jmp	.label_3287
.label_3281:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xbb0], rax
.label_3287:
	mov	rax, qword ptr [rbp - 0xbb0]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x1c0]
	mov	edx, 0x64
	mov	rsp, rsp
	lea	rsi, [rbp - 0xd20]
	mov	qword ptr [rbp - 0xb58], rax
	mov	rbp, rbp
	call	debug_strftime
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb58]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	dbg_printf
.label_3270:
	mov	rbp, rbp
	jmp	.label_3310
.label_3190:
	mov	dword ptr [rbp - 0x1c0], 0
	nop	
	mov	dword ptr [rbp - 0x1bc], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], 0
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa7], 1
	mov	rsp, rsp
	je	.label_3307
	movabs	rdi, OFFSET FLAT:.str.46_0
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3307:
	lea	rsi, [rsi]
	jmp	.label_3310
.label_3310:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0xd0]
	or	rax, qword ptr [rbp - 0xb8]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_3337
	mov	dword ptr [rbp - 0x1a0], 0xffffffff
.label_3337:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_3351
	mov	eax, dword ptr [rbp - 0x16c]
	mov	dword ptr [rbp - 0x1a0], eax
.label_3351:
	lea	rsi, [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x868], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x864], eax
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x860], eax
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x85c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x858], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x854], eax
	mov	eax, dword ptr [rbp - 0x1a0]
	mov	dword ptr [rbp - 0x848], eax
	mov	dword ptr [rbp - 0x1a8], 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x228]
	call	mktime_z
	lea	rdi, [rbp - 0x868]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x1c0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x488], rax
	call	mktime_ok
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_3389
	mov	byte ptr [rbp - 0x39d], 0
	cmp	qword ptr [rbp - 0xb0], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3f3], al
	test	byte ptr [rbp - 0x3f3], 1
	je	.label_3391
	lea	rax, [rbp - 0xda0]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9e], 0x58
	mov	byte ptr [rbp - 0xd9f], 0x58
	mov	byte ptr [rbp - 0xda0], 0x58
	mov	edi, dword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	add	rax, 3
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	time_zone_str
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xda0]
	mov	qword ptr [rbp - 0x298], rax
	call	tzalloc
	mov	qword ptr [rbp - 0x220], rax
	cmp	qword ptr [rbp - 0x220], 0
	jne	.label_3412
	test	byte ptr [rbp - 0xa7], 1
	mov	rsp, rsp
	je	.label_3418
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xda0]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3418:
	jmp	.label_2503
.label_3412:
	lea	rsi, [rbp - 0x1c0]
	nop	
	mov	eax, dword ptr [rbp - 0x868]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c0], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x864]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, dword ptr [rbp - 0x860]
	mov	dword ptr [rbp - 0x1b8], eax
	mov	eax, dword ptr [rbp - 0x85c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x858]
	mov	dword ptr [rbp - 0x1b0], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x854]
	mov	dword ptr [rbp - 0x1ac], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x848]
	mov	dword ptr [rbp - 0x1a0], eax
	mov	dword ptr [rbp - 0x1a8], 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x220]
	mov	rsp, rsp
	call	mktime_z
	lea	rdi, [rbp - 0x868]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x488], rax
	mov	rsp, rsp
	call	mktime_ok
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39d], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x220]
	call	tzfree
.label_3391:
	test	byte ptr [rbp - 0x39d], 1
	mov	rbp, rbp
	jne	.label_3479
	mov	rbp, rbp
	lea	rdi, [rbp - 0x868]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1c0]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x180]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3f3]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	call	debug_mktime_not_ok
	mov	rsp, rsp
	jmp	.label_2503
.label_3479:
	jmp	.label_3389
.label_3389:
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_2530
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd8], 0
	nop	
	jne	.label_2530
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3501
	nop	
	jmp	.label_3504
.label_3501:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_3506
	nop	
	jmp	.label_3513
.label_3506:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3514
	mov	rbp, rbp
	jmp	.label_3519
.label_3514:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x9a0], rsi
	mov	byte ptr [rbp - 0xbd9], cl
	jge	.label_3521
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbd9], cl
.label_3521:
	mov	al, byte ptr [rbp - 0xbd9]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x9a0]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	al, sil
	nop	
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_3539
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x820], rsi
	mov	byte ptr [rbp - 0x9a1], cl
	jge	.label_3716
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9a1], cl
.label_3716:
	mov	al, byte ptr [rbp - 0x9a1]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x820]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_3568
	jmp	.label_3379
.label_3539:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3581
	jmp	.label_3583
.label_3581:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3568
	mov	rsp, rsp
	jmp	.label_3379
.label_3583:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x760], rsi
	nop	
	mov	byte ptr [rbp - 0x1d2], cl
	nop	
	jge	.label_3585
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d2], cl
.label_3585:
	mov	al, byte ptr [rbp - 0x1d2]
	mov	ecx, 0xedb6db6e
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x760]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	al, dil
	mov	rsp, rsp
	movsx	edx, al
	cmp	ecx, edx
	nop	
	jl	.label_3568
	jmp	.label_3379
.label_3519:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3612
	jmp	.label_3617
.label_3612:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3568
	jmp	.label_3379
.label_3617:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9e0], rsi
	mov	byte ptr [rbp - 0x8b9], cl
	jge	.label_3622
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8b9], cl
.label_3622:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8b9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x9e0]
	sub	rsi, rdx
	mov	al, sil
	lea	rsi, [rsi]
	movsx	ecx, al
	nop	
	cmp	ecx, 0
	jge	.label_3648
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xba0], rsi
	mov	byte ptr [rbp - 0x319], cl
	lea	rsi, [rsi]
	jge	.label_3668
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x319], cl
.label_3668:
	mov	al, byte ptr [rbp - 0x319]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xba0]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	lea	rdi, [rdi]
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0xedb6db6e
	jl	.label_3568
	jmp	.label_3379
.label_3648:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc78], rsi
	mov	byte ptr [rbp - 0x3da], cl
	jge	.label_3697
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3da], cl
.label_3697:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3da]
	lea	rsi, [rsi]
	mov	ecx, 0x12492492
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xc78]
	sub	rdi, rsi
	mov	al, dil
	movsx	edx, al
	nop	
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_3568
.label_3379:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x3f2], cl
	mov	rsp, rsp
	jge	.label_3729
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x3f2], cl
.label_3729:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x3f2]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_3568
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xd30], rsi
	mov	byte ptr [rbp - 0x891], cl
	jge	.label_3757
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x891], cl
.label_3757:
	mov	al, byte ptr [rbp - 0x891]
	mov	rsp, rsp
	mov	ecx, 0x7f
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd30]
	lea	rsi, [rsi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	edx, al
	mov	rbp, rbp
	imul	edx, edx, 7
	cmp	ecx, edx
	nop	
	jge	.label_3785
.label_3568:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x5f8], rsi
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	jge	.label_3793
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
.label_3793:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	nop	
	mov	cl, 1
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x5f8]
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
	mov	qword ptr [rbp - 0x650], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2537
	jmp	.label_2581
.label_3785:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x780], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7b5], cl
	lea	rsi, [rsi]
	jge	.label_2680
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7b5], cl
.label_2680:
	mov	al, byte ptr [rbp - 0x7b5]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x780]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	mov	al, cl
	movsx	rsi, al
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2581
.label_3513:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3862
	nop	
	jmp	.label_3866
.label_3862:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rsi
	nop	
	mov	byte ptr [rbp - 0xa21], cl
	lea	rdi, [rdi]
	jge	.label_3868
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa21], cl
.label_3868:
	mov	al, byte ptr [rbp - 0xa21]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1c8]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	jge	.label_3887
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9f0], rsi
	nop	
	mov	byte ptr [rbp - 0x6d1], cl
	mov	rsp, rsp
	jge	.label_3897
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x6d1], cl
.label_3897:
	mov	al, byte ptr [rbp - 0x6d1]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x9f0]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_3919
	jmp	.label_3929
.label_3887:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3930
	nop	
	jmp	.label_3385
.label_3930:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3919
	jmp	.label_3929
.label_3385:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x9e8], rsi
	mov	byte ptr [rbp - 0xa09], cl
	jge	.label_3944
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xa09], cl
.label_3944:
	mov	al, byte ptr [rbp - 0xa09]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x9e8]
	sub	rdi, rsi
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_3919
	lea	rsi, [rsi]
	jmp	.label_3929
.label_3866:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3589
	jmp	.label_3972
.label_3589:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3919
	jmp	.label_3929
.label_3972:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x1f0], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa0a], cl
	lea	rdi, [rdi]
	jge	.label_3982
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xa0a], cl
.label_3982:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa0a]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x1f0]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_4009
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x410], rsi
	mov	byte ptr [rbp - 0xdd5], cl
	jge	.label_4018
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xdd5], cl
.label_4018:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdd5]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x410]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_3919
	mov	rsp, rsp
	jmp	.label_3929
.label_4009:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x398], rsi
	mov	byte ptr [rbp - 0x31a], cl
	lea	rdi, [rdi]
	jge	.label_4048
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x31a], cl
.label_4048:
	mov	al, byte ptr [rbp - 0x31a]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x398]
	sub	rdi, rsi
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_3919
.label_3929:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x728], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x239], cl
	mov	rbp, rbp
	jge	.label_4066
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x239], cl
.label_4066:
	mov	al, byte ptr [rbp - 0x239]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x728]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x80
	jl	.label_3919
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb18], rsi
	mov	byte ptr [rbp - 0x644], cl
	jge	.label_4098
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x644], cl
.label_4098:
	mov	al, byte ptr [rbp - 0x644]
	mov	ecx, 0x7f
	mov	edx, ecx
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0xb18]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	mov	rbp, rbp
	jge	.label_4112
.label_3919:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x4d0], rsi
	mov	byte ptr [rbp - 0x271], cl
	jge	.label_4126
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x271], cl
.label_4126:
	mov	al, byte ptr [rbp - 0x271]
	mov	cl, 1
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x4d0]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	mov	al, dl
	mov	rsp, rsp
	movsx	rsi, al
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	test	cl, 1
	jne	.label_2537
	jmp	.label_2581
.label_4112:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x350], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd69], cl
	lea	rdi, [rdi]
	jge	.label_4163
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd69], cl
.label_4163:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd69]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x350]
	sub	rdi, rsi
	nop	
	mov	ecx, edi
	imul	ecx, ecx, 7
	lea	rsi, [rsi]
	mov	al, cl
	movsx	rsi, al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	test	dl, 1
	mov	rbp, rbp
	jne	.label_2537
	jmp	.label_2581
.label_3504:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3112
	jmp	.label_4203
.label_3112:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_4206
	nop	
	jmp	.label_4210
.label_4206:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_4213
	jmp	.label_4219
.label_4213:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x400], rsi
	mov	byte ptr [rbp - 0x435], cl
	mov	rbp, rbp
	jge	.label_4222
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x435], cl
.label_4222:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x435]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x400]
	sub	rsi, rdx
	lea	rsi, [rsi]
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	nop	
	cmp	ecx, 0
	lea	rdi, [rdi]
	jge	.label_4245
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x990], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7f2], cl
	nop	
	jge	.label_3792
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x7f2], cl
.label_3792:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7f2]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x990]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	cmp	ecx, 0x12492492
	lea	rdi, [rdi]
	jl	.label_2473
	lea	rsi, [rsi]
	jmp	.label_3560
.label_4245:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_4279
	lea	rsi, [rsi]
	jmp	.label_4280
.label_4279:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2473
	mov	rbp, rbp
	jmp	.label_3560
.label_4280:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xd28], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba1], cl
	jge	.label_4287
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xba1], cl
.label_4287:
	mov	al, byte ptr [rbp - 0xba1]
	mov	ecx, 0xedb6db6e
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd28]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_2473
	jmp	.label_3560
.label_4219:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_4319
	lea	rsi, [rsi]
	jmp	.label_3844
.label_4319:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2473
	nop	
	jmp	.label_3560
.label_3844:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xda8], rsi
	mov	byte ptr [rbp - 0x3f4], cl
	jge	.label_3888
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3f4], cl
.label_3888:
	mov	al, byte ptr [rbp - 0x3f4]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xda8]
	sub	rsi, rdx
	mov	di, si
	nop	
	movsx	ecx, di
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_4348
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x2a0], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41e], cl
	jge	.label_4356
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41e], cl
.label_4356:
	mov	al, byte ptr [rbp - 0x41e]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	di, si
	movsx	ecx, di
	nop	
	cmp	ecx, 0xedb6db6e
	jl	.label_2473
	jmp	.label_3560
.label_4348:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xd78], rsi
	mov	byte ptr [rbp - 0x8aa], cl
	jge	.label_4249
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x8aa], cl
.label_4249:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x8aa]
	nop	
	mov	ecx, 0x12492492
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd78]
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_2473
.label_3560:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8ce], cl
	lea	rdi, [rdi]
	jge	.label_4402
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8ce], cl
.label_4402:
	mov	al, byte ptr [rbp - 0x8ce]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	di, si
	movsx	ecx, di
	imul	ecx, ecx, 7
	cmp	ecx, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_2473
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x948], rsi
	mov	byte ptr [rbp - 0x3f5], cl
	lea	rsi, [rsi]
	jge	.label_2497
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x3f5], cl
.label_2497:
	mov	al, byte ptr [rbp - 0x3f5]
	mov	ecx, 0x7fff
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x948]
	lea	rsi, [rsi]
	sub	rdi, rsi
	mov	r8w, di
	lea	rsi, [rsi]
	movsx	edx, r8w
	imul	edx, edx, 7
	cmp	ecx, edx
	jge	.label_3407
.label_2473:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	byte ptr [rbp - 0x9b1], cl
	lea	rdi, [rdi]
	jge	.label_2927
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9b1], cl
.label_2927:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9b1]
	mov	cl, 1
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1f8]
	sub	rdi, rsi
	mov	r8w, di
	movsx	edx, r8w
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2537
	jmp	.label_2581
.label_3407:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x9b0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb31], cl
	jge	.label_2582
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xb31], cl
.label_2582:
	mov	al, byte ptr [rbp - 0xb31]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x9b0]
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
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2581
.label_4210:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2637
	jmp	.label_4298
.label_2637:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xdf0], rsi
	mov	byte ptr [rbp - 0x3c1], cl
	jge	.label_2645
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3c1], cl
.label_2645:
	nop	
	mov	al, byte ptr [rbp - 0x3c1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xdf0]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, 0
	mov	rbp, rbp
	jge	.label_2668
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd68], rsi
	mov	byte ptr [rbp - 0x4fd], cl
	mov	rbp, rbp
	jge	.label_3871
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x4fd], cl
.label_3871:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x4fd]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0xd68]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2696
	mov	rsp, rsp
	jmp	.label_2703
.label_2668:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2704
	mov	rbp, rbp
	jmp	.label_2711
.label_2704:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2696
	jmp	.label_2703
.label_2711:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x658], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d1], cl
	lea	rsi, [rsi]
	jge	.label_2719
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x1d1], cl
.label_2719:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x1d1]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x658]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	nop	
	jl	.label_2696
	nop	
	jmp	.label_2703
.label_4298:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2774
	jmp	.label_2779
.label_2774:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2696
	mov	rbp, rbp
	jmp	.label_2703
.label_2779:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x1e0], rsi
	mov	byte ptr [rbp - 0x9a2], cl
	nop	
	jge	.label_2786
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9a2], cl
.label_2786:
	mov	al, byte ptr [rbp - 0x9a2]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rsi, [rsi]
	cmp	rsi, 0
	jge	.label_2806
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xdb0], rsi
	mov	byte ptr [rbp - 0x7da], cl
	mov	rsp, rsp
	jge	.label_2820
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x7da], cl
.label_2820:
	mov	al, byte ptr [rbp - 0x7da]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xdb0]
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2696
	lea	rdi, [rdi]
	jmp	.label_2703
.label_2806:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x7e8], rsi
	mov	byte ptr [rbp - 0x1e1], cl
	lea	rdi, [rdi]
	jge	.label_2846
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x1e1], cl
.label_2846:
	mov	al, byte ptr [rbp - 0x1e1]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x7e8]
	nop	
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2696
.label_2703:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb98], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8cf], cl
	mov	rbp, rbp
	jge	.label_2882
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x8cf], cl
.label_2882:
	mov	al, byte ptr [rbp - 0x8cf]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xb98]
	lea	rsi, [rsi]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x8000
	jl	.label_2696
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x788], rsi
	mov	byte ptr [rbp - 0x8dd], cl
	mov	rsp, rsp
	jge	.label_2912
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x8dd], cl
.label_2912:
	nop	
	mov	al, byte ptr [rbp - 0x8dd]
	mov	rbp, rbp
	mov	ecx, 0x7fff
	mov	rbp, rbp
	mov	edx, ecx
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x788]
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	lea	rsi, [rsi]
	jge	.label_2932
.label_2696:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x4f8], rsi
	mov	byte ptr [rbp - 0x771], cl
	jge	.label_2938
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	byte ptr [rbp - 0x771], cl
.label_2938:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x771]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x4f8]
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2581
.label_2932:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x230], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x429], cl
	jge	.label_3394
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x429], cl
.label_3394:
	mov	al, byte ptr [rbp - 0x429]
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
	mov	rdi, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	sub	rdi, rsi
	lea	rsi, [rsi]
	mov	ecx, edi
	imul	ecx, ecx, 7
	mov	r8w, cx
	lea	rsi, [rsi]
	movsx	rsi, r8w
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rdi, [rdi]
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2581
.label_4203:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3033
	jmp	.label_3037
.label_3033:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3038
	lea	rdi, [rdi]
	jmp	.label_3044
.label_3038:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3047
	jmp	.label_3050
.label_3047:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x360], rsi
	mov	byte ptr [rbp - 0x715], cl
	mov	rbp, rbp
	jge	.label_3051
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x715], cl
.label_3051:
	mov	al, byte ptr [rbp - 0x715]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x360]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_3068
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x799], cl
	jge	.label_3077
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x799], cl
.label_3077:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x799]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x4c0]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_3101
	mov	rsp, rsp
	jmp	.label_2845
.label_3068:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3120
	mov	rbp, rbp
	jmp	.label_3126
.label_3120:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3101
	jmp	.label_2845
.label_3126:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x30], rsi
	mov	byte ptr [rbp - 0x3f1], cl
	jge	.label_3133
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x3f1], cl
.label_3133:
	mov	al, byte ptr [rbp - 0x3f1]
	mov	rbp, rbp
	mov	ecx, 0xedb6db6e
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	lea	rsi, [rsi]
	cmp	ecx, edx
	mov	rsp, rsp
	jl	.label_3101
	jmp	.label_2845
.label_3050:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_4338
	lea	rdi, [rdi]
	jmp	.label_3165
.label_4338:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3101
	nop	
	jmp	.label_2845
.label_3165:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc68], rsi
	mov	byte ptr [rbp - 0x181], cl
	jge	.label_4390
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x181], cl
.label_4390:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x181]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc68]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0
	jge	.label_3186
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x609], cl
	jge	.label_2671
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x609], cl
.label_2671:
	mov	al, byte ptr [rbp - 0x609]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0xedb6db6e
	lea	rdi, [rdi]
	jl	.label_3101
	jmp	.label_2845
.label_3186:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x640], rsi
	mov	byte ptr [rbp - 0xb65], cl
	mov	rbp, rbp
	jge	.label_3241
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb65], cl
.label_3241:
	mov	al, byte ptr [rbp - 0xb65]
	mov	ecx, 0x12492492
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	edx, edi
	cmp	ecx, edx
	jl	.label_3101
.label_2845:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xd60], rsi
	mov	byte ptr [rbp - 0x9d1], cl
	mov	rsp, rsp
	jge	.label_3274
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9d1], cl
.label_3274:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x9d1]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xd60]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	ecx, esi
	imul	ecx, ecx, 7
	cmp	ecx, 0x80000000
	jl	.label_3101
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6f5], cl
	lea	rdi, [rdi]
	jge	.label_3295
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x6f5], cl
.label_3295:
	mov	al, byte ptr [rbp - 0x6f5]
	mov	rsp, rsp
	mov	ecx, 0x7fffffff
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	cmp	ecx, edx
	lea	rsi, [rsi]
	jge	.label_3312
.label_3101:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x938], rsi
	nop	
	mov	byte ptr [rbp - 0x645], cl
	lea	rdi, [rdi]
	jge	.label_3425
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x645], cl
.label_3425:
	mov	al, byte ptr [rbp - 0x645]
	mov	cl, 1
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x938]
	sub	rdi, rsi
	mov	edx, edi
	mov	rsp, rsp
	imul	edx, edx, 7
	nop	
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2537
	jmp	.label_2581
.label_3312:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xb08], rsi
	mov	byte ptr [rbp - 0x8cd], cl
	jge	.label_3369
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8cd], cl
.label_3369:
	mov	al, byte ptr [rbp - 0x8cd]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xb08]
	sub	rdi, rsi
	mov	ecx, edi
	mov	rsp, rsp
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	jne	.label_2537
	nop	
	jmp	.label_2581
.label_3044:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3398
	jmp	.label_3856
.label_3398:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x310], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x61d], cl
	mov	rbp, rbp
	jge	.label_3400
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x61d], cl
.label_3400:
	mov	al, byte ptr [rbp - 0x61d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x310]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3414
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x6d0], rsi
	mov	byte ptr [rbp - 0xb39], cl
	lea	rdi, [rdi]
	jge	.label_3429
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb39], cl
.label_3429:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb39]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6d0]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	mov	rsp, rsp
	jl	.label_3448
	jmp	.label_3130
.label_3414:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3464
	mov	rsp, rsp
	jmp	.label_3469
.label_3464:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_3448
	lea	rsi, [rsi]
	jmp	.label_3130
.label_3469:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb30], rsi
	mov	byte ptr [rbp - 0x3e9], cl
	lea	rdi, [rdi]
	jge	.label_3474
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x3e9], cl
.label_3474:
	nop	
	mov	al, byte ptr [rbp - 0x3e9]
	movabs	rcx, 0xedb6db6db6db6db7
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb30]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_3448
	jmp	.label_3130
.label_3856:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3497
	jmp	.label_3500
.label_3497:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3448
	mov	rsp, rsp
	jmp	.label_3130
.label_3500:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8c8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4c5], cl
	jge	.label_3508
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x4c5], cl
.label_3508:
	mov	al, byte ptr [rbp - 0x4c5]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x8c8]
	mov	rsp, rsp
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_3529
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x280], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaf1], cl
	jge	.label_3538
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xaf1], cl
.label_3538:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xaf1]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x280]
	sub	rdi, rsi
	nop	
	cmp	rdi, rcx
	jl	.label_3448
	mov	rbp, rbp
	jmp	.label_3130
.label_3529:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x6c8], rsi
	mov	byte ptr [rbp - 0x42a], cl
	nop	
	jge	.label_3569
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x42a], cl
.label_3569:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x42a]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6c8]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_3448
.label_3130:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x9f8], rsi
	mov	byte ptr [rbp - 0xb19], cl
	jge	.label_3587
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xb19], cl
.label_3587:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb19]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x9f8]
	sub	rsi, rdx
	nop	
	imul	rdx, rsi, 7
	lea	rdi, [rdi]
	cmp	rdx, -0x80000000
	mov	rsp, rsp
	jl	.label_3448
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb70], rsi
	nop	
	mov	byte ptr [rbp - 0x643], cl
	jge	.label_3614
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x643], cl
.label_3614:
	mov	al, byte ptr [rbp - 0x643]
	mov	rbp, rbp
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	edx, ecx
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xb70]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_3638
.label_3448:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x418], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7c9], cl
	jge	.label_3262
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x7c9], cl
.label_3262:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7c9]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x418]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	edx, edi
	imul	edx, edx, 7
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x650], rsi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2537
	nop	
	jmp	.label_2581
.label_3638:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x3d0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb89], cl
	mov	rbp, rbp
	jge	.label_3691
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb89], cl
.label_3691:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb89]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x3d0]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	ecx, edi
	mov	rbp, rbp
	imul	ecx, ecx, 7
	nop	
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	jne	.label_2537
	jmp	.label_2581
.label_3037:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3720
	jmp	.label_3724
.label_3720:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3727
	jmp	.label_3732
.label_3727:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3733
	jmp	.label_4064
.label_3733:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb88], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x811], cl
	jge	.label_3739
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x811], cl
.label_3739:
	mov	al, byte ptr [rbp - 0x811]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb88]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3755
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb00], rsi
	nop	
	mov	byte ptr [rbp - 0x59], cl
	jge	.label_3773
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x59], cl
.label_3773:
	mov	al, byte ptr [rbp - 0x59]
	mov	rsp, rsp
	movabs	rcx, 0x1249249249249249
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb00]
	sub	rdi, rsi
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_2675
	nop	
	jmp	.label_3798
.label_3755:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3799
	nop	
	jmp	.label_3805
.label_3799:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2675
	lea	rdi, [rdi]
	jmp	.label_3798
.label_3805:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbc0], rsi
	mov	byte ptr [rbp - 0x6e1], cl
	jge	.label_3817
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6e1], cl
.label_3817:
	mov	al, byte ptr [rbp - 0x6e1]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xbc0]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2675
	lea	rsi, [rsi]
	jmp	.label_3798
.label_4064:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3834
	lea	rsi, [rsi]
	jmp	.label_3841
.label_3834:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2675
	lea	rdi, [rdi]
	jmp	.label_3798
.label_3841:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0xdb1], cl
	jge	.label_3851
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xdb1], cl
.label_3851:
	mov	al, byte ptr [rbp - 0xdb1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rsi, rdx
	nop	
	cmp	rsi, 0
	nop	
	jge	.label_2944
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4a0], rsi
	mov	byte ptr [rbp - 0x41], cl
	lea	rdi, [rdi]
	jge	.label_3876
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x41], cl
.label_3876:
	mov	al, byte ptr [rbp - 0x41]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x4a0]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2675
	jmp	.label_3798
.label_2944:
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x478], rsi
	mov	byte ptr [rbp - 0x4fe], cl
	mov	rsp, rsp
	jge	.label_3904
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x4fe], cl
.label_3904:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x4fe]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x478]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdi
	jl	.label_2675
.label_3798:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xa38], rsi
	mov	byte ptr [rbp - 0x991], cl
	mov	rbp, rbp
	jge	.label_3934
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x991], cl
.label_3934:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x991]
	nop	
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa38]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_2675
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa00], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], cl
	lea	rsi, [rsi]
	jge	.label_3964
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7f1], cl
.label_3964:
	mov	al, byte ptr [rbp - 0x7f1]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa00]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_3983
.label_2675:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2b0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x823], cl
	mov	rbp, rbp
	jge	.label_3998
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x823], cl
.label_3998:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x823]
	lea	rdi, [rdi]
	mov	cl, 1
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2537
	nop	
	jmp	.label_2581
.label_3983:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa60], rsi
	mov	byte ptr [rbp - 0x625], cl
	jge	.label_4037
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x625], cl
.label_4037:
	mov	al, byte ptr [rbp - 0x625]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa60]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rsi, [rsi]
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	dl, 1
	jne	.label_2537
	jmp	.label_2581
.label_3732:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_4061
	nop	
	jmp	.label_4063
.label_4061:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x470], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x281], cl
	jge	.label_4065
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x281], cl
.label_4065:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x281]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_4087
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x408], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9c1], cl
	lea	rsi, [rsi]
	jge	.label_4363
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x9c1], cl
.label_4363:
	mov	al, byte ptr [rbp - 0x9c1]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x408]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_4117
	jmp	.label_4131
.label_4087:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_4132
	jmp	.label_4137
.label_4132:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_4117
	mov	rbp, rbp
	jmp	.label_4131
.label_4137:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x8a8], rsi
	mov	byte ptr [rbp - 0xca2], cl
	jge	.label_4143
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xca2], cl
.label_4143:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xca2]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x8a8]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rcx, rdi
	nop	
	jl	.label_4117
	nop	
	jmp	.label_4131
.label_4063:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_4169
	jmp	.label_4172
.label_4169:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_4117
	lea	rdi, [rdi]
	jmp	.label_4131
.label_4172:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xbd8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7d9], cl
	lea	rsi, [rsi]
	jge	.label_4180
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7d9], cl
.label_4180:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x7d9]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xbd8]
	lea	rsi, [rsi]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rsi, [rsi]
	jge	.label_4205
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x770], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x282], cl
	jge	.label_4221
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x282], cl
.label_4221:
	mov	al, byte ptr [rbp - 0x282]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x770]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	jl	.label_4117
	lea	rdi, [rdi]
	jmp	.label_4131
.label_4205:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x618], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd55], cl
	jge	.label_4261
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xd55], cl
.label_4261:
	mov	al, byte ptr [rbp - 0xd55]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x618]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_4117
.label_4131:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x888], rsi
	nop	
	mov	byte ptr [rbp - 0x385], cl
	jge	.label_4282
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x385], cl
.label_4282:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x385]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x888]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rsi, rcx
	jl	.label_4117
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x390], rsi
	mov	byte ptr [rbp - 0x341], cl
	jge	.label_4309
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x341], cl
.label_4309:
	mov	al, byte ptr [rbp - 0x341]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x390]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rcx, rsi
	nop	
	jge	.label_4330
.label_4117:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xbe8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xddd], cl
	nop	
	jge	.label_4344
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xddd], cl
.label_4344:
	mov	al, byte ptr [rbp - 0xddd]
	mov	cl, 1
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xbe8]
	mov	rsp, rsp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2537
	jmp	.label_2581
.label_4330:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x608], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc81], cl
	nop	
	jge	.label_4371
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xc81], cl
.label_4371:
	mov	al, byte ptr [rbp - 0xc81]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x608]
	lea	rsi, [rsi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_2537
	lea	rdi, [rdi]
	jmp	.label_2581
.label_3724:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_4393
	lea	rsi, [rsi]
	jmp	.label_4399
.label_4393:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_4401
	jmp	.label_3865
.label_4401:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa80], rsi
	mov	byte ptr [rbp - 0xdf9], cl
	jge	.label_2442
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0xdf9], cl
.label_2442:
	nop	
	mov	al, byte ptr [rbp - 0xdf9]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xa80]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_4396
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x308], rsi
	mov	byte ptr [rbp - 0x939], cl
	mov	rbp, rbp
	jge	.label_2494
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x939], cl
.label_2494:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x939]
	lea	rsi, [rsi]
	movabs	rcx, 0x1249249249249249
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x308]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_2524
	jmp	.label_2544
.label_4396:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2545
	lea	rsi, [rsi]
	jmp	.label_2943
.label_2545:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2524
	jmp	.label_2544
.label_2943:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa48], rsi
	mov	byte ptr [rbp - 0x6f6], cl
	lea	rdi, [rdi]
	jge	.label_2556
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6f6], cl
.label_2556:
	nop	
	mov	al, byte ptr [rbp - 0x6f6]
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa48]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_2524
	jmp	.label_2544
.label_3865:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2590
	lea	rdi, [rdi]
	jmp	.label_2596
.label_2590:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2524
	lea	rdi, [rdi]
	jmp	.label_2544
.label_2596:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x208], rsi
	mov	byte ptr [rbp - 0x5f9], cl
	jge	.label_2608
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x5f9], cl
.label_2608:
	mov	al, byte ptr [rbp - 0x5f9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_2632
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xdc0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbed], cl
	lea	rsi, [rsi]
	jge	.label_2646
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xbed], cl
.label_2646:
	mov	al, byte ptr [rbp - 0xbed]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xdc0]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jl	.label_2524
	mov	rsp, rsp
	jmp	.label_2544
.label_2632:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa20], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x825], cl
	jge	.label_2679
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x825], cl
.label_2679:
	mov	al, byte ptr [rbp - 0x825]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2524
.label_2544:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x3c0], rsi
	mov	byte ptr [rbp - 0x371], cl
	jge	.label_2700
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x371], cl
.label_2700:
	mov	al, byte ptr [rbp - 0x371]
	movabs	rcx, 0x8000000000000000
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x3c0]
	mov	rsp, rsp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	nop	
	cmp	rsi, rcx
	jl	.label_2524
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x460], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd79], cl
	mov	rsp, rsp
	jge	.label_2743
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd79], cl
.label_2743:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd79]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x460]
	nop	
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_2775
.label_2524:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x3d8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4e9], cl
	jge	.label_4160
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4e9], cl
.label_4160:
	mov	al, byte ptr [rbp - 0x4e9]
	mov	cl, 1
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x3d8]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2537
	lea	rdi, [rdi]
	jmp	.label_2581
.label_2775:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x8b8], rsi
	mov	byte ptr [rbp - 0x41d], cl
	jge	.label_2823
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x41d], cl
.label_2823:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41d]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x8b8]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	dl, 1
	jne	.label_2537
	jmp	.label_2581
.label_4399:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2857
	jmp	.label_2862
.label_2857:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd50], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8a9], cl
	jge	.label_2864
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x8a9], cl
.label_2864:
	mov	al, byte ptr [rbp - 0x8a9]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xd50]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_2801
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x258], rsi
	mov	byte ptr [rbp - 0x642], cl
	jge	.label_2897
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x642], cl
.label_2897:
	mov	al, byte ptr [rbp - 0x642]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x258]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2933
	jmp	.label_2929
.label_2801:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3059
	nop	
	jmp	.label_3080
.label_3059:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2933
	jmp	.label_2929
.label_3080:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x6a8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa3d], cl
	mov	rsp, rsp
	jge	.label_2936
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa3d], cl
.label_2936:
	mov	al, byte ptr [rbp - 0xa3d]
	lea	rdi, [rdi]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6a8]
	mov	rsp, rsp
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_2933
	mov	rsp, rsp
	jmp	.label_2929
.label_2862:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3021
	lea	rsi, [rsi]
	jmp	.label_3372
.label_3021:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2933
	mov	rbp, rbp
	jmp	.label_2929
.label_3372:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xdf8], rsi
	mov	byte ptr [rbp - 0x5a1], cl
	nop	
	jge	.label_2987
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x5a1], cl
.label_2987:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x5a1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xdf8]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3011
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x380], rsi
	mov	byte ptr [rbp - 0x21], cl
	jge	.label_3027
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x21], cl
.label_3027:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	nop	
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x380]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rdi, rcx
	jl	.label_2933
	nop	
	jmp	.label_2929
.label_3011:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x668], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x3d9], cl
	lea	rsi, [rsi]
	jge	.label_3054
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x3d9], cl
.label_3054:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3d9]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x668]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_2933
.label_2929:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xd40], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa22], cl
	jge	.label_3082
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa22], cl
.label_3082:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa22]
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd40]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	jl	.label_2933
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3e8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x82d], cl
	mov	rsp, rsp
	jge	.label_3122
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x82d], cl
.label_3122:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x82d]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x3e8]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_4220
.label_2933:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b0], rsi
	mov	byte ptr [rbp - 0x361], cl
	jge	.label_3155
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x361], cl
.label_3155:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x361]
	nop	
	mov	cl, 1
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b0]
	mov	rbp, rbp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2537
	jmp	.label_2581
.label_4220:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa50], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x461], cl
	jge	.label_3181
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x461], cl
.label_3181:
	mov	al, byte ptr [rbp - 0x461]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xa50]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_2537
.label_2581:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3230
	jmp	.label_2812
.label_3230:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3234
	lea	rdi, [rdi]
	jmp	.label_3240
.label_3234:
	mov	al, 1
	test	al, 1
	jne	.label_3242
	jmp	.label_3245
.label_3242:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_3247
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8dc], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	mov	sil, dil
	lea	rdi, [rdi]
	movsx	edx, sil
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x8dc]
	mov	rbp, rbp
	sub	r8d, edx
	cmp	ecx, r8d
	mov	rsp, rsp
	jl	.label_3252
	nop	
	jmp	.label_3279
.label_3247:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0x5f0], eax
	mov	eax, edi
	mov	rbp, rbp
	cdq	
	mov	edi, dword ptr [rbp - 0x5f0]
	idiv	edi
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	lea	rdi, [rdi]
	cmp	ecx, edx
	nop	
	jl	.label_3252
	jmp	.label_3279
.label_3245:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0x7f0], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x7f0]
	idiv	ecx
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edx, sil
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3296
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edi, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edi, 7
	mov	dword ptr [rbp - 0x8f4], eax
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x8f4]
	mov	rsp, rsp
	idiv	edi
	mov	r8b, dl
	movsx	edx, r8b
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	r8b, cl
	nop	
	movsx	r9d, r8b
	add	edx, r9d
	cmp	esi, edx
	jle	.label_3252
	mov	rsp, rsp
	jmp	.label_3279
.label_3296:
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3347
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0xbb4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xbb4]
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	add	edi, 7
	lea	rdi, [rdi]
	mov	eax, edi
	mov	dword ptr [rbp - 0x94c], edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	nop	
	mov	r8, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	sil, r8b
	movsx	edi, sil
	add	edx, edi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x94c]
	nop	
	cmp	edi, edx
	jle	.label_3252
	jmp	.label_3279
.label_3347:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0x4d8], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x4d8]
	mov	rsp, rsp
	idiv	ecx
	mov	rsp, rsp
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	sil, dil
	movsx	r8d, sil
	add	edx, r8d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	cmp	edx, r8d
	jl	.label_3252
.label_3279:
	nop	
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9d8], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x9d8]
	idiv	ecx
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x650]
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	nop	
	add	edx, r8d
	lea	rsi, [rsi]
	cmp	edx, -0x80
	jl	.label_3252
	mov	eax, 0x7f
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0x510], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	sil, dl
	mov	rbp, rbp
	movsx	ecx, sil
	mov	rdi, qword ptr [rbp - 0x650]
	mov	sil, dil
	movsx	edx, sil
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x510]
	cmp	edx, ecx
	mov	rsp, rsp
	jge	.label_3423
.label_3252:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	mov	byte ptr [rbp - 0x641], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	nop	
	mov	sil, dil
	nop	
	movsx	edx, sil
	add	ecx, edx
	nop	
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x650], rdi
	lea	rsi, [rsi]
	mov	sil, byte ptr [rbp - 0x641]
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	jne	.label_2537
	jmp	.label_2431
.label_3423:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x39c], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x39c]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dil, dl
	mov	rsp, rsp
	movsx	edx, dil
	mov	r8, qword ptr [rbp - 0x650]
	nop	
	mov	dil, r8b
	movsx	r9d, dil
	lea	rdi, [rdi]
	add	edx, r9d
	lea	rsi, [rsi]
	mov	dil, dl
	movsx	r8, dil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], r8
	test	cl, 1
	jne	.label_2537
	jmp	.label_2431
.label_3240:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3492
	jmp	.label_3496
.label_3492:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_3498
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x340], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x340]
	sub	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jl	.label_3528
	mov	rbp, rbp
	jmp	.label_2863
.label_3498:
	mov	rsp, rsp
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	nop	
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4e0], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4e0]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_3528
	jmp	.label_2863
.label_3496:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa84], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xa84]
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3543
	mov	eax, 7
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	edx, 7
	mov	dword ptr [rbp - 0x764], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x764]
	mov	rsp, rsp
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rcx, rdi
	jle	.label_3528
	mov	rbp, rbp
	jmp	.label_2863
.label_3543:
	cmp	qword ptr [rbp - 0x650], 0
	mov	rbp, rbp
	jge	.label_3575
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x744], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x744]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	nop	
	jle	.label_3528
	jmp	.label_2863
.label_3575:
	lea	rsi, [rsi]
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x65c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0x65c]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	nop	
	jl	.label_3528
.label_2863:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2bc], eax
	mov	eax, ecx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x2bc]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, -0x80
	mov	rbp, rbp
	jl	.label_3528
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x430], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x430]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jge	.label_3636
.label_3528:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	byte ptr [rbp - 0x824], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	add	edx, ecx
	mov	dil, dl
	lea	rsi, [rsi]
	movsx	rsi, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0x824]
	test	dil, 1
	mov	rbp, rbp
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2431
.label_3636:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x1fc], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x1fc]
	lea	rdi, [rdi]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x650]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	lea	rsi, [rsi]
	mov	r9b, dl
	lea	rsi, [rsi]
	movsx	rdi, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	jne	.label_2537
	jmp	.label_2431
.label_2812:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3705
	mov	rsp, rsp
	jmp	.label_3707
.label_3705:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3710
	lea	rsi, [rsi]
	jmp	.label_3714
.label_3710:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3718
	jmp	.label_3719
.label_3718:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	jge	.label_3721
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x384], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	nop	
	mov	si, dx
	nop	
	movsx	ecx, si
	mov	rdi, qword ptr [rbp - 0x650]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	r8d, dword ptr [rbp - 0x384]
	sub	r8d, edx
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jl	.label_2834
	jmp	.label_3776
.label_3721:
	nop	
	mov	eax, 7
	mov	ecx, 0x7fffffff
	nop	
	mov	rdx, qword ptr [rbp - 0x650]
	nop	
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	add	edi, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4b4], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x4b4]
	mov	rbp, rbp
	idiv	edi
	mov	si, dx
	movsx	edx, si
	cmp	ecx, edx
	jl	.label_2834
	lea	rsi, [rsi]
	jmp	.label_3776
.label_3719:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x704], eax
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x704]
	idiv	ecx
	mov	si, dx
	nop	
	movsx	edx, si
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_3779
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, edi
	lea	rsi, [rsi]
	cdq	
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	idiv	edi
	mov	r8w, dx
	lea	rsi, [rsi]
	movsx	edx, r8w
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	r8w, cx
	movsx	r9d, r8w
	add	edx, r9d
	cmp	esi, edx
	lea	rdi, [rdi]
	jle	.label_2834
	jmp	.label_3776
.label_3779:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_3818
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x560], eax
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x560]
	idiv	ecx
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	add	edi, 7
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88c], edx
	nop	
	cdq	
	nop	
	idiv	ecx
	nop	
	mov	si, dx
	movsx	edx, si
	mov	r8, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	si, r8w
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	edi, dword ptr [rbp - 0x88c]
	cmp	edi, edx
	mov	rbp, rbp
	jle	.label_2834
	nop	
	jmp	.label_3776
.label_3818:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0x8cc], eax
	mov	rsp, rsp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8cc]
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	si, di
	nop	
	movsx	r8d, si
	lea	rsi, [rsi]
	add	edx, r8d
	mov	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	si, di
	movsx	r8d, si
	cmp	edx, r8d
	jl	.label_2834
.label_3776:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0x6d8], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x6d8]
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	si, di
	movsx	r8d, si
	add	edx, r8d
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_2834
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5ec], eax
	lea	rsi, [rsi]
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	mov	si, dx
	movsx	ecx, si
	nop	
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	edx, dword ptr [rbp - 0x5ec]
	nop	
	cmp	edx, ecx
	jge	.label_3891
.label_2834:
	mov	al, 1
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x209], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	si, dx
	lea	rsi, [rsi]
	movsx	ecx, si
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	rbp, rbp
	mov	si, cx
	movsx	rdi, si
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], rdi
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	test	r8b, 1
	lea	rsi, [rsi]
	jne	.label_2537
	lea	rsi, [rsi]
	jmp	.label_2431
.label_3891:
	xor	eax, eax
	mov	cl, al
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xde4], eax
	nop	
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xde4]
	mov	rbp, rbp
	idiv	esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	edx, di
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x650]
	mov	di, r8w
	mov	rbp, rbp
	movsx	r9d, di
	add	edx, r9d
	mov	rsp, rsp
	mov	di, dx
	nop	
	movsx	r8, di
	nop	
	mov	qword ptr [rbp - 0x650], r8
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2537
	lea	rdi, [rdi]
	jmp	.label_2431
.label_3714:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_3969
	lea	rsi, [rsi]
	jmp	.label_3973
.label_3969:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rdi, [rdi]
	jge	.label_3975
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0x6e0], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6e0]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_3980
	nop	
	jmp	.label_3781
.label_3975:
	nop	
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0x41c], eax
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x41c]
	lea	rsi, [rsi]
	idiv	esi
	nop	
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_3980
	lea	rsi, [rsi]
	jmp	.label_3781
.label_3973:
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xd54], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xd54]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_4026
	mov	rsp, rsp
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0x2a4], eax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x2a4]
	idiv	esi
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_3980
	jmp	.label_3781
.label_4026:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_4056
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0xb64], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xb64]
	idiv	ecx
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	eax, edx
	nop	
	cdq	
	nop	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	jle	.label_3980
	mov	rbp, rbp
	jmp	.label_3781
.label_4056:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6f4], eax
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_3980
.label_3781:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	dword ptr [rbp - 0x3a4], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x3a4]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	nop	
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, -0x8000
	jl	.label_3980
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xcb8], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xcb8]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	nop	
	add	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rcx, rdi
	mov	rsp, rsp
	jge	.label_2539
.label_3980:
	mov	rbp, rbp
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4ad], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	add	edx, ecx
	mov	rsp, rsp
	mov	di, dx
	movsx	rsi, di
	mov	qword ptr [rbp - 0x650], rsi
	mov	r8b, byte ptr [rbp - 0x4ad]
	test	r8b, 1
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2431
.label_2539:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4d4], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0x4d4]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x650]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	mov	r9w, dx
	movsx	rdi, r9w
	nop	
	mov	qword ptr [rbp - 0x650], rdi
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2537
	jmp	.label_2431
.label_3707:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_4181
	jmp	.label_4185
.label_4181:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_4187
	mov	rsp, rsp
	jmp	.label_4191
.label_4187:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3079
	lea	rsi, [rsi]
	jmp	.label_4196
.label_3079:
	mov	rax, qword ptr [rbp - 0x650]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_4198
	mov	eax, 0x80000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x5a8], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x650]
	mov	ecx, esi
	mov	edi, dword ptr [rbp - 0x5a8]
	sub	edi, ecx
	mov	rbp, rbp
	cmp	edx, edi
	lea	rsi, [rsi]
	jl	.label_4209
	mov	rsp, rsp
	jmp	.label_4237
.label_4198:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	esi, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x1a8]
	add	esi, 7
	mov	dword ptr [rbp - 0x950], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x950]
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, edx
	nop	
	jl	.label_4209
	jmp	.label_4237
.label_4196:
	mov	rbp, rbp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x924], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0x924]
	idiv	ecx
	cmp	edx, 0
	jge	.label_3386
	nop	
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	esi, dword ptr [rbp - 0x1a8]
	add	esi, 7
	mov	dword ptr [rbp - 0x92c], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x720], edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	lea	rsi, [rsi]
	idiv	esi
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	edx, edi
	mov	edi, dword ptr [rbp - 0x720]
	nop	
	cmp	edi, edx
	lea	rsi, [rsi]
	jle	.label_4209
	mov	rbp, rbp
	jmp	.label_4237
.label_3386:
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_4283
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x47c], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0x47c]
	lea	rsi, [rsi]
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	esi, 7
	mov	eax, esi
	mov	dword ptr [rbp - 0xc70], edx
	cdq	
	idiv	ecx
	mov	rdi, qword ptr [rbp - 0x650]
	nop	
	mov	esi, edi
	add	edx, esi
	mov	esi, dword ptr [rbp - 0xc70]
	mov	rsp, rsp
	cmp	esi, edx
	mov	rbp, rbp
	jle	.label_4209
	jmp	.label_4237
.label_4283:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa64], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xa64]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x650]
	mov	edi, esi
	mov	rbp, rbp
	add	edx, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edi, esi
	cmp	edx, edi
	lea	rdi, [rdi]
	jl	.label_4209
.label_4237:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc8], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xdc8]
	idiv	ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edi, esi
	lea	rdi, [rdi]
	add	edx, edi
	mov	rsp, rsp
	cmp	edx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_4209
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xb90], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	ecx, esi
	add	edx, ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xb90]
	cmp	ecx, edx
	mov	rsp, rsp
	jge	.label_4355
.label_4209:
	mov	al, 1
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	byte ptr [rbp - 0xbc9], al
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x650]
	mov	ecx, esi
	add	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	mov	dil, byte ptr [rbp - 0xbc9]
	lea	rdi, [rdi]
	test	dil, 1
	mov	rsp, rsp
	jne	.label_2537
	jmp	.label_2431
.label_4355:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0x754], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x754]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	r8d, edi
	add	edx, r8d
	movsxd	rdi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2537
	lea	rdi, [rdi]
	jmp	.label_2431
.label_4191:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2437
	jmp	.label_2445
.label_2437:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_2448
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rax
	lea	rsi, [rsi]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_2454
	mov	rbp, rbp
	jmp	.label_2495
.label_2448:
	mov	eax, 7
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0x874], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x874]
	lea	rdi, [rdi]
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_2454
	nop	
	jmp	.label_2495
.label_2445:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0x660], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x660]
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2843
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x4ac], eax
	nop	
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x4ac]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x650]
	nop	
	cmp	rcx, rdi
	mov	rsp, rsp
	jle	.label_2454
	lea	rsi, [rsi]
	jmp	.label_2495
.label_2843:
	nop	
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_2569
	mov	rsp, rsp
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x624], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x624]
	lea	rdi, [rdi]
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jle	.label_2454
	jmp	.label_2495
.label_2569:
	mov	rsp, rsp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbec], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xbec]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_2454
.label_2495:
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa3c], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xa3c]
	idiv	ecx
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	cmp	rsi, -0x80000000
	jl	.label_2454
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x914], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x914]
	mov	rsp, rsp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jge	.label_3487
.label_2454:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	byte ptr [rbp - 0xa71], al
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x650]
	mov	ecx, esi
	add	edx, ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0xa71]
	lea	rdi, [rdi]
	test	dil, 1
	lea	rdi, [rdi]
	jne	.label_2537
	jmp	.label_2431
.label_3487:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x4fc], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x4fc]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	mov	r8d, edi
	nop	
	add	edx, r8d
	movsxd	rdi, edx
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2537
	lea	rdi, [rdi]
	jmp	.label_2431
.label_4185:
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2716
	jmp	.label_2722
.label_2716:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2724
	nop	
	jmp	.label_2731
.label_2724:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3931
	lea	rsi, [rsi]
	jmp	.label_2741
.label_3931:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_2744
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0x1d0], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x1d0]
	sub	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_2486
	jmp	.label_2778
.label_2744:
	mov	eax, 7
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0x434], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x434]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2486
	mov	rbp, rbp
	jmp	.label_2778
.label_2741:
	mov	rbp, rbp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x61c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x61c]
	lea	rsi, [rsi]
	idiv	ecx
	nop	
	movsxd	rsi, edx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_2802
	mov	eax, 7
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0x4dc], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4dc]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_2486
	jmp	.label_2778
.label_2802:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_2832
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0x454], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x454]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jle	.label_2486
	jmp	.label_2778
.label_2832:
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd38], eax
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xd38]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_2486
.label_2778:
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	qword ptr [rbp - 0xb48], rax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	nop	
	mov	rdi, qword ptr [rbp - 0xb48]
	mov	rsp, rsp
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_2486
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb60], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb60]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	jge	.label_2911
.label_2486:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x329], al
	mov	eax, edx
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0x329]
	lea	rdi, [rdi]
	test	dil, 1
	nop	
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2431
.label_2911:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xb74], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xb74]
	nop	
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	jne	.label_2537
	jmp	.label_2431
.label_2731:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2971
	nop	
	jmp	.label_2977
.label_2971:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_2979
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	qword ptr [rbp - 0x910], rax
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x910]
	nop	
	sub	rdi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_2985
	nop	
	jmp	.label_3034
.label_2979:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0x210], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x210]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	jl	.label_2985
	jmp	.label_3034
.label_2977:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xd70], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xd70]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3036
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0x7b4], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x7b4]
	mov	rsp, rsp
	idiv	esi
	nop	
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jle	.label_2985
	jmp	.label_3034
.label_3036:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_3072
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	nop	
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8c], eax
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xc8c]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, rdi
	jle	.label_2985
	jmp	.label_3034
.label_3072:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0x250], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x250]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	nop	
	jl	.label_2985
.label_3034:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb80], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rdi, qword ptr [rbp - 0xb80]
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_2985
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	qword ptr [rbp - 0xb28], rax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rdi, qword ptr [rbp - 0xb28]
	mov	rbp, rbp
	cmp	rdi, rsi
	jge	.label_4251
.label_2985:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	byte ptr [rbp - 0x73e], al
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0x73e]
	test	dil, 1
	jne	.label_2537
	lea	rdi, [rdi]
	jmp	.label_2431
.label_4251:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0xc88], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xc88]
	idiv	esi
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2537
	lea	rsi, [rsi]
	jmp	.label_2431
.label_2722:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3211
	lea	rdi, [rdi]
	jmp	.label_3216
.label_3211:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_3220
	jmp	.label_3225
.label_3220:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_3228
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6b8], rax
	nop	
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6b8]
	sub	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, rdi
	jl	.label_2713
	jmp	.label_3251
.label_3228:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x43c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x43c]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	lea	rsi, [rsi]
	jl	.label_2713
	jmp	.label_3251
.label_3225:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 8]
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_3277
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	mov	dword ptr [rbp - 0x930], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_2713
	lea	rdi, [rdi]
	jmp	.label_3251
.label_3277:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rdi, [rdi]
	jge	.label_3302
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xe0c], eax
	nop	
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe0c]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	jle	.label_2713
	jmp	.label_3251
.label_3302:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	nop	
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x62c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x62c]
	mov	rsp, rsp
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	jl	.label_2713
.label_3251:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0x900], rax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x900]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_2713
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	qword ptr [rbp - 0x4a8], rax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x4a8]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	lea	rdi, [rdi]
	jge	.label_3371
.label_2713:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	byte ptr [rbp - 0xd41], al
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0xd41]
	test	dil, 1
	nop	
	jne	.label_2537
	jmp	.label_2431
.label_3371:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x748], eax
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x748]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2537
	jmp	.label_2431
.label_3216:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_3422
	jmp	.label_3428
.label_3422:
	cmp	qword ptr [rbp - 0x650], 0
	nop	
	jge	.label_3431
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x790], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x790]
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	nop	
	jl	.label_2807
	mov	rsp, rsp
	jmp	.label_2794
.label_3431:
	lea	rdi, [rdi]
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdd4], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xdd4]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	nop	
	jl	.label_2807
	lea	rsi, [rsi]
	jmp	.label_2794
.label_3428:
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc6c], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xc6c]
	idiv	ecx
	cmp	edx, 0
	jge	.label_3475
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x7ec], eax
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x7ec]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_2807
	mov	rbp, rbp
	jmp	.label_2794
.label_3475:
	nop	
	cmp	qword ptr [rbp - 0x650], 0
	mov	rbp, rbp
	jge	.label_3502
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd34], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xd34]
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
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
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	mov	rbp, rbp
	jle	.label_2807
	lea	rsi, [rsi]
	jmp	.label_2794
.label_3502:
	mov	rbp, rbp
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0x330], eax
	mov	rsp, rsp
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x330]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_2807
.label_2794:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0xdd0], rax
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rdi, qword ptr [rbp - 0xdd0]
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_2807
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x730], rax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x730]
	lea	rsi, [rsi]
	cmp	rdi, rsi
	mov	rsp, rsp
	jge	.label_3045
.label_2807:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x821], al
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0x821]
	lea	rdi, [rdi]
	test	dil, 1
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2431
.label_3045:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x82c], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0x82c]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2537
.label_2431:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3621
	lea	rdi, [rdi]
	jmp	.label_3627
.label_3621:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3630
	jmp	.label_3637
.label_3630:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3639
	mov	rbp, rbp
	jmp	.label_3518
.label_3639:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_3643
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rsi, [rsi]
	sub	eax, edi
	cmp	esi, eax
	jl	.label_3650
	jmp	.label_3670
.label_3643:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x650]
	mov	dl, sil
	movsx	ecx, dl
	nop	
	cmp	eax, ecx
	jl	.label_3650
	jmp	.label_3670
.label_3518:
	mov	rax, qword ptr [rbp - 0x650]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_3686
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x650]
	mov	cl, dl
	movsx	esi, cl
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	cl, dil
	mov	rbp, rbp
	movsx	edi, cl
	mov	rbp, rbp
	add	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_3650
	jmp	.label_3670
.label_3686:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	nop	
	movsx	eax, cl
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3161
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	mov	cl, al
	movsx	esi, cl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1b4]
	nop	
	mov	cl, dil
	movsx	edi, cl
	add	esi, edi
	mov	rsp, rsp
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_3650
	lea	rsi, [rsi]
	jmp	.label_3670
.label_3161:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	mov	esi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_3650
.label_3670:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	nop	
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	cmp	edx, -0x80
	jl	.label_3650
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	eax, esi
	jge	.label_4122
.label_3650:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dl, dil
	movsx	edi, dl
	nop	
	add	esi, edi
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x1b4], esi
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2537
	jmp	.label_2598
.label_4122:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	sil, dil
	lea	rsi, [rsi]
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	movsx	eax, sil
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2537
	jmp	.label_2598
.label_3637:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3749
	jmp	.label_4398
.label_3749:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3800
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_3804
	lea	rsi, [rsi]
	jmp	.label_3286
.label_3800:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	jl	.label_3804
	lea	rdi, [rdi]
	jmp	.label_3286
.label_4398:
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_3828
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_3804
	mov	rbp, rbp
	jmp	.label_3286
.label_3828:
	cmp	dword ptr [rbp - 0x1b4], 0
	mov	rbp, rbp
	jge	.label_2785
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3804
	mov	rsp, rsp
	jmp	.label_3286
.label_2785:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	nop	
	jl	.label_3804
.label_3286:
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80
	jl	.label_3804
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	nop	
	add	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_4248
.label_3804:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x1b4]
	mov	sil, dl
	movsx	edx, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2537
	nop	
	jmp	.label_2598
.label_4248:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2598
.label_3627:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3911
	mov	rbp, rbp
	jmp	.label_3914
.label_3911:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_3266
	jmp	.label_3918
.label_3266:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3921
	lea	rsi, [rsi]
	jmp	.label_3301
.label_3921:
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3315
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	dx, di
	movsx	edi, dx
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2519
	lea	rdi, [rdi]
	jmp	.label_2956
.label_3315:
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x650]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_2519
	lea	rdi, [rdi]
	jmp	.label_2956
.label_3301:
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3960
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jle	.label_2519
	jmp	.label_2956
.label_3960:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_3711
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2519
	nop	
	jmp	.label_2956
.label_3711:
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	nop	
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	cx, si
	movsx	esi, cx
	lea	rdi, [rdi]
	add	edx, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	nop	
	mov	cx, si
	movsx	esi, cx
	nop	
	cmp	edx, esi
	lea	rdi, [rdi]
	jl	.label_2519
.label_2956:
	nop	
	mov	rax, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	cmp	edx, 0xffff8000
	mov	rsp, rsp
	jl	.label_2519
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	dx, di
	movsx	edi, dx
	nop	
	add	esi, edi
	cmp	eax, esi
	lea	rdi, [rdi]
	jge	.label_3939
.label_2519:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	dx, di
	lea	rsi, [rsi]
	movsx	edi, dx
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x1b4], esi
	test	al, 1
	jne	.label_2537
	lea	rsi, [rsi]
	jmp	.label_2598
.label_3939:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x650]
	mov	si, dx
	movsx	eax, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edi, si
	mov	rsp, rsp
	add	eax, edi
	mov	si, ax
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2598
.label_3918:
	mov	al, 1
	test	al, 1
	jne	.label_4225
	lea	rdi, [rdi]
	jmp	.label_4075
.label_4225:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_4077
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	sub	rax, rdx
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_4080
	jmp	.label_2558
.label_4077:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x650]
	jl	.label_4080
	jmp	.label_2558
.label_4075:
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_4376
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_4080
	jmp	.label_2558
.label_4376:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_4113
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_4080
	jmp	.label_2558
.label_4113:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_4080
.label_2558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_4080
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3189
.label_4080:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x1b4]
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2537
	jmp	.label_2598
.label_3189:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	mov	eax, edx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2537
	nop	
	jmp	.label_2598
.label_3914:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_4177
	lea	rsi, [rsi]
	jmp	.label_4179
.label_4177:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_4182
	lea	rdi, [rdi]
	jmp	.label_4186
.label_4182:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_4188
	mov	rsp, rsp
	jmp	.label_4190
.label_4188:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_4194
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x1b4]
	cmp	edx, eax
	jl	.label_2896
	mov	rbp, rbp
	jmp	.label_3153
.label_4194:
	mov	eax, 0x7fffffff
	nop	
	sub	eax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2896
	nop	
	jmp	.label_3153
.label_4190:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_4227
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_2896
	mov	rsp, rsp
	jmp	.label_3153
.label_4227:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3327
	mov	rax, qword ptr [rbp - 0x650]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, eax
	add	edx, dword ptr [rbp - 0x1b4]
	cmp	ecx, edx
	jle	.label_2896
	mov	rbp, rbp
	jmp	.label_3153
.label_3327:
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rbp - 0x1b4]
	nop	
	jl	.label_2896
.label_3153:
	nop	
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x1b4]
	cmp	ecx, 0x80000000
	mov	rsp, rsp
	jl	.label_2896
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x1b4]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_4270
.label_2896:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], edx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2598
.label_4270:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2598
.label_4186:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3898
	lea	rdi, [rdi]
	jmp	.label_3693
.label_3898:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_4295
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3971
	mov	rbp, rbp
	jmp	.label_2562
.label_4295:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x650]
	jl	.label_3971
	lea	rdi, [rdi]
	jmp	.label_2562
.label_3693:
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_4326
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3971
	jmp	.label_2562
.label_4326:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	mov	rsp, rsp
	jge	.label_4069
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3971
	jmp	.label_2562
.label_4069:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3971
.label_2562:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80000000
	jl	.label_3971
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_4370
.label_3971:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2598
.label_4370:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	nop	
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2598
.label_4179:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_4386
	lea	rdi, [rdi]
	jmp	.label_4391
.label_4386:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_4392
	jmp	.label_4394
.label_4392:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_4395
	lea	rdi, [rdi]
	jmp	.label_3875
.label_4395:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	cmp	rax, 0
	jge	.label_2432
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	sub	rax, rdx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_2446
	lea	rdi, [rdi]
	jmp	.label_2585
.label_2432:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x650]
	nop	
	jl	.label_2446
	mov	rsp, rsp
	jmp	.label_2585
.label_3875:
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_2493
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2446
	jmp	.label_2585
.label_2493:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_3401
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2446
	jmp	.label_2585
.label_3401:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_2446
.label_2585:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2446
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2563
.label_2446:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x1b4], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2537
	jmp	.label_2598
.label_2563:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2537
	jmp	.label_2598
.label_4394:
	mov	al, 1
	test	al, 1
	jne	.label_3253
	lea	rsi, [rsi]
	jmp	.label_2604
.label_3253:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3807
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_2628
	mov	rbp, rbp
	jmp	.label_2624
.label_3807:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_2628
	lea	rsi, [rsi]
	jmp	.label_2624
.label_2604:
	nop	
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_3421
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_2628
	lea	rsi, [rsi]
	jmp	.label_2624
.label_3421:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_2663
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2628
	jmp	.label_2624
.label_2663:
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_2628
.label_2624:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_2628
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2695
.label_2628:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x1b4], esi
	test	al, 1
	nop	
	jne	.label_2537
	jmp	.label_2598
.label_2695:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], eax
	nop	
	test	cl, 1
	jne	.label_2537
	mov	rsp, rsp
	jmp	.label_2598
.label_4391:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2728
	jmp	.label_2736
.label_2728:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2739
	lea	rdi, [rdi]
	jmp	.label_2747
.label_2739:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_2749
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2756
	lea	rdi, [rdi]
	jmp	.label_2800
.label_2749:
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x650]
	jl	.label_2756
	mov	rsp, rsp
	jmp	.label_2800
.label_2747:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_2788
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	nop	
	jle	.label_2756
	jmp	.label_2800
.label_2788:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_2803
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2756
	jmp	.label_2800
.label_2803:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	nop	
	jl	.label_2756
.label_2800:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_2756
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2833
.label_2756:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], esi
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2537
	jmp	.label_2598
.label_2833:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rdx, rsi
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2598
.label_2736:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_2709
	jmp	.label_3191
.label_2709:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_2879
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_2849
	jmp	.label_2894
.label_2879:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	jl	.label_2849
	lea	rdi, [rdi]
	jmp	.label_2894
.label_3191:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_2905
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2849
	nop	
	jmp	.label_2894
.label_2905:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rsi, [rsi]
	jge	.label_2924
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2849
	mov	rbp, rbp
	jmp	.label_2894
.label_2924:
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_2849
.label_2894:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	nop	
	cmp	rcx, rax
	jl	.label_2849
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3598
.label_2849:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x1b4], esi
	test	al, 1
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2598
.label_3598:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	nop	
	add	rdx, rsi
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_2537
	mov	rbp, rbp
	jmp	.label_2598
.label_2537:
	mov	qword ptr [rbp - 0x488], -1
	mov	rbp, rbp
	jmp	.label_3455
.label_2598:
	lea	rsi, [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1a0], 0xffffffff
	mov	rdi, qword ptr [rbp - 0x228]
	nop	
	call	mktime_z
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x488], rax
.label_3455:
	cmp	qword ptr [rbp - 0x488], -1
	lea	rdi, [rdi]
	jne	.label_3017
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3023
	nop	
	movabs	rdi, OFFSET FLAT:.str.48
	nop	
	call	gettext
	lea	rdi, [rbp - 0x180]
	nop	
	mov	edx, 0x64
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc60]
	nop	
	mov	qword ptr [rbp - 0x908], rax
	call	str_days
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	mov	rsp, rsp
	mov	ecx, 0x64
	nop	
	lea	rdx, [rbp - 0xd20]
	mov	r8, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xa30], rax
	mov	dword ptr [rbp - 0x8e4], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x318], r8
	nop	
	call	debug_strfdatetime
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x908]
	mov	rsi, qword ptr [rbp - 0xa30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x318]
	mov	ecx, dword ptr [rbp - 0x8e4]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
.label_3023:
	mov	rsp, rsp
	jmp	.label_2503
.label_3017:
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3067
	nop	
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x180]
	mov	edx, 0x64
	lea	rsi, [rbp - 0xc60]
	mov	qword ptr [rbp - 0x9d0], rax
	call	str_days
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xd20]
	mov	qword ptr [rbp - 0x50], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0x9d0]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	dbg_printf
.label_3067:
	jmp	.label_2530
.label_2530:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa7], 1
	mov	rbp, rbp
	je	.label_3100
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_3108
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	jne	.label_3108
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x1c0]
	mov	rbp, rbp
	mov	edx, 0x64
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xd20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7b0], rax
	nop	
	call	debug_strfdate
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x7b0]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3108:
	cmp	qword ptr [rbp - 0xd0], 0
	lea	rsi, [rsi]
	je	.label_3139
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_3139
	movabs	rdi, OFFSET FLAT:.str.51
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	edx, 0x64
	lea	rsi, [rbp - 0xc60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x338], rax
	mov	rsp, rsp
	call	str_days
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x338]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_3139:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	nop	
	lea	rdi, [rbp - 0x1c0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xd20]
	mov	qword ptr [rbp - 0x798], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0x798]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_3100:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	or	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0x108]
	cmp	rax, 0
	je	.label_3179
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3192
	nop	
	cmp	qword ptr [rbp - 0x118], 0
	lea	rsi, [rsi]
	jne	.label_3198
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	je	.label_3203
.label_3198:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0xf
	lea	rdi, [rdi]
	je	.label_3203
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_3203:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	je	.label_3226
	cmp	dword ptr [rbp - 0x1b8], 0xc
	je	.label_3226
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_3226:
	lea	rdi, [rdi]
	jmp	.label_3192
.label_3192:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3246
	jmp	.label_3249
.label_3246:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3250
	lea	rsi, [rsi]
	jmp	.label_3257
.label_3250:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2948
	nop	
	jmp	.label_2967
.label_2948:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3264
	mov	rbp, rbp
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_3273
	lea	rdi, [rdi]
	jmp	.label_3283
.label_3264:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x118]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_3273
	jmp	.label_3283
.label_2967:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_3290
	mov	rax, qword ptr [rbp - 0x118]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	cl, sil
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edi, cl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_3273
	jmp	.label_3283
.label_3290:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3313
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x1ac]
	mov	cl, dl
	movsx	edx, cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	cl, sil
	movsx	edi, cl
	mov	rbp, rbp
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_3273
	lea	rsi, [rsi]
	jmp	.label_3283
.label_3313:
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cl, dl
	movsx	esi, cl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_3273
.label_3283:
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cl, dl
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	cmp	eax, -0x80
	lea	rsi, [rsi]
	jl	.label_3273
	mov	rbp, rbp
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dl, sil
	mov	rsp, rsp
	movsx	edi, dl
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_3365
.label_3273:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1ac]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	add	ecx, edi
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_2554
	jmp	.label_3382
.label_3365:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	dl, al
	nop	
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	edi, dl
	add	eax, edi
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2554
	jmp	.label_3382
.label_3257:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3399
	jmp	.label_3107
.label_3399:
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jge	.label_3559
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_3402
	jmp	.label_3409
.label_3559:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_3402
	jmp	.label_3409
.label_3107:
	cmp	dword ptr [rbp - 0x1ac], 0
	mov	rbp, rbp
	jge	.label_3426
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_3402
	lea	rdi, [rdi]
	jmp	.label_3409
.label_3426:
	nop	
	cmp	qword ptr [rbp - 0x118], 0
	mov	rsp, rsp
	jge	.label_3441
	movsxd	rax, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3402
	jmp	.label_3409
.label_3441:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	jl	.label_3402
.label_3409:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, -0x80
	lea	rdi, [rdi]
	jl	.label_3402
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_3471
.label_3402:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1ac]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	esi, edx
	nop	
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_2554
	jmp	.label_3382
.label_3471:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	add	eax, esi
	mov	dil, al
	mov	rsp, rsp
	movsx	eax, dil
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_2554
	mov	rsp, rsp
	jmp	.label_3382
.label_3249:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3495
	jmp	.label_3499
.label_3495:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_4362
	jmp	.label_3503
.label_4362:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_3505
	mov	rbp, rbp
	jmp	.label_3511
.label_3505:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_3512
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_2931
	jmp	.label_3159
.label_3512:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	nop	
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	mov	dx, si
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_2931
	mov	rsp, rsp
	jmp	.label_3159
.label_3511:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3544
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x118]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edi, cx
	mov	rbp, rbp
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_2931
	nop	
	jmp	.label_3159
.label_3544:
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_3567
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1ac]
	mov	cx, dx
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_2931
	jmp	.label_3159
.label_3567:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cx, dx
	mov	rsp, rsp
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	nop	
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_2931
.label_3159:
	nop	
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cx, dx
	nop	
	movsx	esi, cx
	add	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_2931
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dx, si
	nop	
	movsx	edi, dx
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3326
.label_2931:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	ecx, edi
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_2554
	jmp	.label_3382
.label_3326:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dx, si
	movsx	edi, dx
	add	eax, edi
	lea	rsi, [rsi]
	mov	dx, ax
	lea	rdi, [rdi]
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2554
	lea	rdi, [rdi]
	jmp	.label_3382
.label_3503:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3657
	lea	rdi, [rdi]
	jmp	.label_3662
.label_3657:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jge	.label_3665
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3673
	jmp	.label_3682
.label_3665:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_3673
	mov	rbp, rbp
	jmp	.label_3682
.label_3662:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_3689
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3673
	jmp	.label_3682
.label_3689:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_3699
	movsxd	rax, dword ptr [rbp - 0x1ac]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_3673
	jmp	.label_3682
.label_3699:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	nop	
	jl	.label_3673
.label_3682:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	jl	.label_3673
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_3725
.label_3673:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	nop	
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	nop	
	jne	.label_2554
	nop	
	jmp	.label_3382
.label_3725:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2554
	nop	
	jmp	.label_3382
.label_3499:
	mov	al, 1
	test	al, 1
	jne	.label_3765
	jmp	.label_3766
.label_3765:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3769
	lea	rsi, [rsi]
	jmp	.label_3778
.label_3769:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_3780
	mov	rsp, rsp
	jmp	.label_3393
.label_3780:
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	jge	.label_3446
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1ac]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_3791
	jmp	.label_3797
.label_3446:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x1ac]
	nop	
	jl	.label_3791
	jmp	.label_3797
.label_3393:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_3812
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x1ac]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	add	edx, esi
	lea	rdi, [rdi]
	cmp	ecx, edx
	mov	rbp, rbp
	jle	.label_3791
	jmp	.label_3797
.label_3812:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3825
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_3791
	jmp	.label_3797
.label_3825:
	nop	
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_3791
.label_3797:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	add	eax, edx
	mov	rbp, rbp
	cmp	eax, 0x80000000
	nop	
	jl	.label_3791
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_3854
.label_3791:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_2554
	mov	rbp, rbp
	jmp	.label_3382
.label_3854:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_2554
	jmp	.label_3382
.label_3778:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3074
	jmp	.label_3889
.label_3074:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_3890
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_3202
	jmp	.label_3339
.label_3890:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_3202
	nop	
	jmp	.label_3339
.label_3889:
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_3917
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3202
	nop	
	jmp	.label_3339
.label_3917:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_3352
	movsxd	rax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3202
	mov	rsp, rsp
	jmp	.label_3339
.label_3352:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	jl	.label_3202
.label_3339:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, -0x80000000
	jl	.label_3202
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3958
.label_3202:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2554
	jmp	.label_3382
.label_3958:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	esi, edx
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_2554
	nop	
	jmp	.label_3382
.label_3766:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3988
	lea	rsi, [rsi]
	jmp	.label_3992
.label_3988:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3997
	mov	rsp, rsp
	jmp	.label_3999
.label_3997:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4002
	jmp	.label_4007
.label_4002:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_4293
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_4010
	jmp	.label_4021
.label_4293:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_4010
	nop	
	jmp	.label_4021
.label_4007:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	cmp	rax, 0
	jge	.label_4033
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_4010
	nop	
	jmp	.label_4021
.label_4033:
	cmp	qword ptr [rbp - 0x118], 0
	nop	
	jge	.label_4045
	movsxd	rax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x118]
	nop	
	cmp	rax, rcx
	nop	
	jle	.label_4010
	mov	rsp, rsp
	jmp	.label_4021
.label_4045:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	nop	
	cmp	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	jl	.label_4010
.label_4021:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_4010
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_4068
.label_4010:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2554
	jmp	.label_3382
.label_4068:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	nop	
	add	rdx, qword ptr [rbp - 0x118]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2554
	jmp	.label_3382
.label_3999:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_4106
	mov	rbp, rbp
	jmp	.label_4108
.label_4106:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x118], 0
	lea	rdi, [rdi]
	jge	.label_4110
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_2574
	jmp	.label_2649
.label_4110:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	cmp	rax, rcx
	jl	.label_2574
	lea	rdi, [rdi]
	jmp	.label_2649
.label_4108:
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_4135
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_2574
	nop	
	jmp	.label_2649
.label_4135:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x118], 0
	lea	rdi, [rdi]
	jge	.label_4147
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1ac]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_2574
	jmp	.label_2649
.label_4147:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	add	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x118]
	nop	
	jl	.label_2574
.label_2649:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2574
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_4173
.label_2574:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	test	al, 1
	jne	.label_2554
	lea	rsi, [rsi]
	jmp	.label_3382
.label_4173:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	add	rdx, qword ptr [rbp - 0x118]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2554
	jmp	.label_3382
.label_3992:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_4211
	mov	rsp, rsp
	jmp	.label_3433
.label_4211:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_4223
	jmp	.label_4228
.label_4223:
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jge	.label_4229
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_4236
	nop	
	jmp	.label_4247
.label_4229:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jl	.label_4236
	jmp	.label_4247
.label_4228:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_4257
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_4236
	jmp	.label_4247
.label_4257:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_4268
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	nop	
	cmp	rax, rcx
	jle	.label_4236
	mov	rsp, rsp
	jmp	.label_4247
.label_4268:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	jl	.label_4236
.label_4247:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_4236
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_4289
.label_4236:
	mov	rsp, rsp
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2554
	mov	rsp, rsp
	jmp	.label_3382
.label_4289:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_2554
	jmp	.label_3382
.label_3433:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_4321
	jmp	.label_2962
.label_4321:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_3860
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	sub	rax, qword ptr [rbp - 0x118]
	nop	
	cmp	rcx, rax
	jl	.label_4328
	lea	rsi, [rsi]
	jmp	.label_4336
.label_3860:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_4328
	jmp	.label_4336
.label_2962:
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_4352
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_4328
	mov	rbp, rbp
	jmp	.label_4336
.label_4352:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_4365
	nop	
	movsxd	rax, dword ptr [rbp - 0x1ac]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_4328
	mov	rbp, rbp
	jmp	.label_4336
.label_4365:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	jl	.label_4328
.label_4336:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_4328
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_4378
.label_4328:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	test	al, 1
	nop	
	jne	.label_2554
	mov	rsp, rsp
	jmp	.label_3382
.label_4378:
	nop	
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x118]
	mov	eax, edx
	mov	dword ptr [rbp - 0xa68], eax
	nop	
	test	cl, 1
.label_5669:
	jne	.label_2554
.label_3382:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2435
	nop	
	jmp	.label_2449
.label_2435:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2450
	mov	rsp, rsp
	jmp	.label_2459
.label_2450:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2462
	mov	rsp, rsp
	jmp	.label_2595
.label_2462:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_2472
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	jl	.label_2487
	jmp	.label_2507
.label_2472:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_2487
	mov	rsp, rsp
	jmp	.label_2507
.label_2595:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2532
	mov	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	nop	
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	cl, sil
	movsx	esi, cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	cl, al
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2487
	nop	
	jmp	.label_2507
.label_2532:
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2555
	mov	eax, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	cl, dl
	movsx	edx, cl
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rdi, [rdi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_2487
	mov	rsp, rsp
	jmp	.label_2507
.label_2555:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	cmp	eax, esi
	jl	.label_2487
.label_2507:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_2487
	mov	eax, 0x7f
	nop	
	mov	ecx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	ecx, edi
	cmp	eax, ecx
	jge	.label_2613
.label_2487:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	mov	rsp, rsp
	add	ecx, edi
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x6bc], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2554
	lea	rsi, [rsi]
	jmp	.label_2656
.label_2613:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	dl, al
	nop	
	movsx	eax, dl
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	dl, sil
	mov	rbp, rbp
	movsx	edi, dl
	add	eax, edi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x6bc], eax
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2554
	jmp	.label_2656
.label_2459:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2672
	nop	
	jmp	.label_2676
.label_2672:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_2677
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	jl	.label_2683
	jmp	.label_2708
.label_2677:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2683
	lea	rdi, [rdi]
	jmp	.label_2708
.label_2676:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_2697
	mov	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2683
	mov	rbp, rbp
	jmp	.label_2708
.label_2697:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_2712
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_2683
	jmp	.label_2708
.label_2712:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	nop	
	add	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_2683
.label_2708:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_2683
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x110]
	nop	
	cmp	rcx, rdx
	jge	.label_2755
.label_2683:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	jne	.label_2554
	lea	rdi, [rdi]
	jmp	.label_2656
.label_2755:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	nop	
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2554
	jmp	.label_2656
.label_2449:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2798
	mov	rsp, rsp
	jmp	.label_4246
.label_2798:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_4256
	lea	rsi, [rsi]
	jmp	.label_2811
.label_4256:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2814
	jmp	.label_2819
.label_2814:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	nop	
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	nop	
	jge	.label_2821
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_2610
	mov	rbp, rbp
	jmp	.label_2831
.label_2821:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_2610
	jmp	.label_2831
.label_2819:
	nop	
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	nop	
	jge	.label_2850
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	cx, si
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	cx, ax
	nop	
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_2610
	jmp	.label_2831
.label_2850:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2874
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1b0]
	mov	cx, dx
	movsx	edx, cx
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	cx, si
	nop	
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_2610
	jmp	.label_2831
.label_2874:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x110]
	nop	
	mov	cx, dx
	movsx	esi, cx
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rsp, rsp
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2610
.label_2831:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	cx, dx
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_2610
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dx, si
	movsx	edi, dx
	add	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_2930
.label_2610:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	dx, si
	movsx	edi, dx
	lea	rsi, [rsi]
	add	ecx, edi
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x6bc], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2554
	jmp	.label_2656
.label_2930:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	eax, edi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2554
	mov	rbp, rbp
	jmp	.label_2656
.label_2811:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_4120
	lea	rdi, [rdi]
	jmp	.label_2972
.label_4120:
	cmp	qword ptr [rbp - 0x110], 0
	nop	
	jge	.label_2975
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	sub	rax, qword ptr [rbp - 0x110]
	nop	
	cmp	rcx, rax
	jl	.label_2980
	jmp	.label_2993
.label_2975:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_2980
	mov	rsp, rsp
	jmp	.label_2993
.label_2972:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_3009
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_2980
	mov	rbp, rbp
	jmp	.label_2993
.label_3009:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_3028
	movsxd	rax, dword ptr [rbp - 0x1b0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2980
	mov	rbp, rbp
	jmp	.label_2993
.label_3028:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_2980
.label_2993:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, -0x8000
	nop	
	jl	.label_2980
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	nop	
	add	rdx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jge	.label_3056
.label_2980:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	esi, edx
	add	ecx, esi
	mov	di, cx
	movsx	ecx, di
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2554
	mov	rbp, rbp
	jmp	.label_2656
.label_3056:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x110]
	nop	
	mov	esi, edx
	nop	
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	dword ptr [rbp - 0x6bc], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2554
	jmp	.label_2656
.label_4246:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3093
	lea	rsi, [rsi]
	jmp	.label_3095
.label_3093:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3098
	jmp	.label_3102
.label_3098:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3103
	jmp	.label_3110
.label_3103:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_3111
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	nop	
	sub	eax, esi
	nop	
	cmp	ecx, eax
	jl	.label_3118
	jmp	.label_3129
.label_3111:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	jl	.label_3118
	jmp	.label_3129
.label_3110:
	nop	
	cmp	dword ptr [rbp - 0x1b0], 0
	mov	rsp, rsp
	jge	.label_3137
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_3118
	jmp	.label_3129
.label_3137:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_4286
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	mov	rsp, rsp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_3118
	mov	rsp, rsp
	jmp	.label_3129
.label_4286:
	mov	eax, dword ptr [rbp - 0x1b0]
	nop	
	mov	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	rsp, rsp
	add	eax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_3118
.label_3129:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	add	eax, edx
	cmp	eax, 0x80000000
	jl	.label_3118
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3182
.label_3118:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2554
	lea	rsi, [rsi]
	jmp	.label_2656
.label_3182:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2554
	jmp	.label_2656
.label_3102:
	mov	al, 1
	test	al, 1
	jne	.label_3232
	mov	rsp, rsp
	jmp	.label_3235
.label_3232:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_3238
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	sub	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2926
	lea	rsi, [rsi]
	jmp	.label_2839
.label_3238:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	nop	
	jl	.label_2926
	lea	rsi, [rsi]
	jmp	.label_2839
.label_3235:
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_3265
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2926
	mov	rbp, rbp
	jmp	.label_2839
.label_3265:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_3278
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_2926
	jmp	.label_2839
.label_3278:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_2926
.label_2839:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_2926
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	cmp	rcx, rdx
	jge	.label_3298
.label_2926:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	jne	.label_2554
	lea	rdi, [rdi]
	jmp	.label_2656
.label_3298:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2554
	lea	rdi, [rdi]
	jmp	.label_2656
.label_3095:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3343
	mov	rsp, rsp
	jmp	.label_3349
.label_3343:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3353
	jmp	.label_3356
.label_3353:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3358
	lea	rdi, [rdi]
	jmp	.label_3387
.label_3358:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_3562
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	sub	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2515
	jmp	.label_3370
.label_3562:
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2515
	mov	rbp, rbp
	jmp	.label_3370
.label_3387:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_3378
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2515
	jmp	.label_3370
.label_3378:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_3392
	movsxd	rax, dword ptr [rbp - 0x1b0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_2515
	nop	
	jmp	.label_3370
.label_3392:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	jl	.label_2515
.label_3370:
	nop	
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	jl	.label_2515
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3411
.label_2515:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_2554
	mov	rbp, rbp
	jmp	.label_2656
.label_3411:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x6bc], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2554
	mov	rbp, rbp
	jmp	.label_2656
.label_3356:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_3451
	jmp	.label_3456
.label_3451:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_3458
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	sub	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2552
	jmp	.label_3472
.label_3458:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	cmp	rax, rcx
	jl	.label_2552
	jmp	.label_3472
.label_3456:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_3476
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2552
	mov	rsp, rsp
	jmp	.label_3472
.label_3476:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_3485
	movsxd	rax, dword ptr [rbp - 0x1b0]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2552
	mov	rbp, rbp
	jmp	.label_3472
.label_3485:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_2552
.label_3472:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2552
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	add	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_3517
.label_2552:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x6bc], edx
	test	al, 1
	jne	.label_2554
	mov	rbp, rbp
	jmp	.label_2656
.label_3517:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x110]
	mov	eax, edx
	mov	dword ptr [rbp - 0x6bc], eax
	test	cl, 1
	jne	.label_2554
	lea	rsi, [rsi]
	jmp	.label_2656
.label_3349:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2881
	jmp	.label_3547
.label_2881:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_3548
	lea	rsi, [rsi]
	jmp	.label_3554
.label_3548:
	cmp	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_3556
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	sub	rax, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2966
	jmp	.label_2945
.label_3556:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x110]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	jl	.label_2966
	lea	rsi, [rsi]
	jmp	.label_2945
.label_3554:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	cmp	rax, 0
	jge	.label_3577
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_2966
	lea	rdi, [rdi]
	jmp	.label_2945
.label_3577:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_3188
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_2966
	mov	rbp, rbp
	jmp	.label_2945
.label_3188:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_2966
.label_2945:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2966
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jge	.label_3611
.label_2966:
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6bc], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2554
	lea	rdi, [rdi]
	jmp	.label_2656
.label_3611:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2554
	lea	rdi, [rdi]
	jmp	.label_2656
.label_3547:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3652
	jmp	.label_3658
.label_3652:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_3660
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	jl	.label_2531
	lea	rsi, [rsi]
	jmp	.label_3680
.label_3660:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	nop	
	jl	.label_2531
	lea	rdi, [rdi]
	jmp	.label_3680
.label_3658:
	cmp	dword ptr [rbp - 0x1b0], 0
	mov	rbp, rbp
	jge	.label_3748
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	add	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2531
	jmp	.label_3680
.label_3748:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_2866
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2531
	jmp	.label_3680
.label_2866:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x110]
	nop	
	cmp	rax, qword ptr [rbp - 0x110]
	nop	
	jl	.label_2531
.label_3680:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2531
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_3786
.label_2531:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x6bc], edx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2554
	nop	
	jmp	.label_2656
.label_3786:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x6bc], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2554
.label_2656:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3754
	jmp	.label_4207
.label_3754:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3763
	jmp	.label_3768
.label_3763:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3772
	jmp	.label_3777
.label_3772:
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_4278
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	dl, cl
	movsx	ecx, dl
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_2921
	lea	rsi, [rsi]
	jmp	.label_2666
.label_4278:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x108]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	dl, sil
	nop	
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_2921
	jmp	.label_2666
.label_3777:
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_3810
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_2921
	jmp	.label_2666
.label_3810:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_3827
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	nop	
	mov	edx, dword ptr [rbp - 0x1b4]
	nop	
	mov	cl, dl
	mov	rsp, rsp
	movsx	edx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x108]
	nop	
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	jle	.label_2921
	nop	
	jmp	.label_2666
.label_3827:
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	cl, dl
	movsx	esi, cl
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x108]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_2921
.label_2666:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, dl
	nop	
	movsx	esi, cl
	mov	rsp, rsp
	add	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	jl	.label_2921
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_3873
.label_2921:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	dl, sil
	nop	
	movsx	edi, dl
	lea	rdi, [rdi]
	add	ecx, edi
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x890], ecx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2554
	jmp	.label_2444
.label_3873:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	dl, sil
	nop	
	movsx	edi, dl
	mov	rbp, rbp
	add	eax, edi
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	nop	
	mov	dword ptr [rbp - 0x890], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2554
	jmp	.label_2444
.label_3768:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_3924
	lea	rdi, [rdi]
	jmp	.label_3926
.label_3924:
	cmp	qword ptr [rbp - 0x108], 0
	lea	rdi, [rdi]
	jge	.label_3927
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	jl	.label_3641
	jmp	.label_3410
.label_3927:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_3641
	mov	rbp, rbp
	jmp	.label_3410
.label_3926:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rdi, [rdi]
	jge	.label_3048
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	nop	
	jle	.label_3641
	jmp	.label_3410
.label_3048:
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_3963
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, rcx
	jle	.label_3641
	mov	rsp, rsp
	jmp	.label_3410
.label_3963:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	jl	.label_3641
.label_3410:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	nop	
	jl	.label_3641
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_3995
.label_3641:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	nop	
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	ecx, dil
	mov	dword ptr [rbp - 0x890], ecx
	nop	
	test	al, 1
	jne	.label_2554
	mov	rsp, rsp
	jmp	.label_2444
.label_3995:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2554
	jmp	.label_2444
.label_4207:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3957
	jmp	.label_4039
.label_3957:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_4040
	mov	rbp, rbp
	jmp	.label_4043
.label_4040:
	mov	al, 1
	test	al, 1
	jne	.label_4044
	nop	
	jmp	.label_4046
.label_4044:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_4036
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	ecx, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	sub	eax, edi
	nop	
	cmp	ecx, eax
	jl	.label_3902
	mov	rsp, rsp
	jmp	.label_3136
.label_4036:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	dx, si
	movsx	esi, dx
	lea	rdi, [rdi]
	cmp	eax, esi
	jl	.label_3902
	nop	
	jmp	.label_3136
.label_4046:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_4074
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	cx, si
	movsx	esi, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	jle	.label_3902
	lea	rsi, [rsi]
	jmp	.label_3136
.label_4074:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	cx, ax
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3702
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x1b4]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	cmp	eax, edx
	nop	
	jle	.label_3902
	mov	rsp, rsp
	jmp	.label_3136
.label_3702:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x108]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_3902
.label_3136:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	mov	rbp, rbp
	jl	.label_3902
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x108]
	nop	
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_4150
.label_3902:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x108]
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
	mov	dword ptr [rbp - 0x890], ecx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2554
	jmp	.label_2444
.label_4150:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x108]
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
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	nop	
	jne	.label_2554
	lea	rsi, [rsi]
	jmp	.label_2444
.label_4043:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_3088
	mov	rbp, rbp
	jmp	.label_4199
.label_3088:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	mov	rbp, rbp
	jge	.label_4202
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2579
	jmp	.label_3459
.label_4202:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jl	.label_2579
	mov	rbp, rbp
	jmp	.label_3459
.label_4199:
	nop	
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rdi, [rdi]
	jge	.label_4242
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2579
	lea	rsi, [rsi]
	jmp	.label_3459
.label_4242:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	lea	rdi, [rdi]
	jge	.label_4255
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	nop	
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jle	.label_2579
	jmp	.label_3459
.label_4255:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jl	.label_2579
.label_3459:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, -0x8000
	jl	.label_2579
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_4274
.label_2579:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b4]
	nop	
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	dword ptr [rbp - 0x890], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_2554
	mov	rbp, rbp
	jmp	.label_2444
.label_4274:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	eax, esi
	mov	di, ax
	movsx	eax, di
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x890], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2554
	lea	rsi, [rsi]
	jmp	.label_2444
.label_4039:
	nop	
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_4303
	mov	rbp, rbp
	jmp	.label_4307
.label_4303:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_4310
	lea	rdi, [rdi]
	jmp	.label_2869
.label_4310:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_4320
	jmp	.label_4324
.label_4320:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_3063
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	nop	
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	nop	
	sub	eax, esi
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_3551
	lea	rsi, [rsi]
	jmp	.label_4012
.label_3063:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x1b4]
	jl	.label_3551
	lea	rsi, [rsi]
	jmp	.label_4012
.label_4324:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0
	nop	
	jge	.label_4353
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	esi, eax
	add	edx, esi
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_3551
	lea	rsi, [rsi]
	jmp	.label_4012
.label_4353:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_4366
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	ecx, esi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_3551
	jmp	.label_4012
.label_4366:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	edx, ecx
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_3551
.label_4012:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	eax, edx
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_3551
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_3580
.label_3551:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x890], ecx
	test	al, 1
	jne	.label_2554
	jmp	.label_2444
.label_3580:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	jne	.label_2554
	jmp	.label_2444
.label_2869:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_2463
	jmp	.label_2470
.label_2463:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_2615
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2481
	lea	rdi, [rdi]
	jmp	.label_2496
.label_2615:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2481
	lea	rdi, [rdi]
	jmp	.label_2496
.label_2470:
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rsi, [rsi]
	jge	.label_2796
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2481
	jmp	.label_2496
.label_2796:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_2538
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	nop	
	jle	.label_2481
	mov	rsp, rsp
	jmp	.label_2496
.label_2538:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	add	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x108]
	jl	.label_2481
.label_2496:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, -0x80000000
	jl	.label_2481
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rdx, qword ptr [rbp - 0x108]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_2566
.label_2481:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	nop	
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x890], ecx
	test	al, 1
	jne	.label_2554
	lea	rsi, [rsi]
	jmp	.label_2444
.label_2566:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x890], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2554
	jmp	.label_2444
.label_4307:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2606
	lea	rdi, [rdi]
	jmp	.label_3293
.label_2606:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2614
	jmp	.label_2620
.label_2614:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2622
	jmp	.label_2626
.label_2622:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_2629
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2648
	nop	
	jmp	.label_2691
.label_2629:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2648
	lea	rsi, [rsi]
	jmp	.label_2691
.label_2626:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	cmp	rax, 0
	jge	.label_3172
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jle	.label_2648
	lea	rdi, [rdi]
	jmp	.label_2691
.label_3172:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	jge	.label_3582
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2648
	jmp	.label_2691
.label_3582:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	jl	.label_2648
.label_2691:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2648
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_3950
.label_2648:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x890], edx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_2554
	jmp	.label_2444
.label_3950:
	xor	eax, eax
	mov	cl, al
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	nop	
	jne	.label_2554
	mov	rsp, rsp
	jmp	.label_2444
.label_2620:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_3603
	jmp	.label_2751
.label_3603:
	nop	
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_2752
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	jl	.label_2759
	jmp	.label_2815
.label_2752:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_2759
	jmp	.label_2815
.label_2751:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rdi, [rdi]
	jge	.label_2783
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2759
	jmp	.label_2815
.label_2783:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_4382
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2759
	nop	
	jmp	.label_2815
.label_4382:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	jl	.label_2759
.label_2815:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2759
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jge	.label_2828
.label_2759:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x890], edx
	test	al, 1
	jne	.label_2554
	jmp	.label_2444
.label_2828:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x108]
	mov	eax, edx
	mov	dword ptr [rbp - 0x890], eax
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2554
	jmp	.label_2444
.label_3293:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2859
	lea	rsi, [rsi]
	jmp	.label_2865
.label_2859:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2688
	jmp	.label_2871
.label_2688:
	nop	
	cmp	qword ptr [rbp - 0x108], 0
	nop	
	jge	.label_3193
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x108]
	nop	
	cmp	rcx, rax
	jl	.label_2875
	jmp	.label_2889
.label_3193:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2875
	jmp	.label_2889
.label_2871:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_2900
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jle	.label_2875
	mov	rbp, rbp
	jmp	.label_2889
.label_2900:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	lea	rsi, [rsi]
	jge	.label_2915
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2875
	jmp	.label_2889
.label_2915:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jl	.label_2875
.label_2889:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2875
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	nop	
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2937
.label_2875:
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x890], edx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2554
	jmp	.label_2444
.label_2937:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x890], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2554
	lea	rdi, [rdi]
	jmp	.label_2444
.label_2865:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3377
	lea	rsi, [rsi]
	jmp	.label_2512
.label_3377:
	nop	
	cmp	qword ptr [rbp - 0x108], 0
	nop	
	jge	.label_2575
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2991
	mov	rbp, rbp
	jmp	.label_3005
.label_2575:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_2991
	jmp	.label_3005
.label_2512:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	mov	rbp, rbp
	jge	.label_3022
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2991
	jmp	.label_3005
.label_3022:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_3035
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2991
	lea	rdi, [rdi]
	jmp	.label_3005
.label_3035:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	jl	.label_2991
.label_3005:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2991
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_3064
.label_2991:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x890], edx
	test	al, 1
	jne	.label_2554
	jmp	.label_2444
.label_3064:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	nop	
	add	rdx, qword ptr [rbp - 0x108]
	mov	eax, edx
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	jne	.label_2554
	jmp	.label_2444
.label_2554:
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3099
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
.label_3099:
	jmp	.label_2503
.label_2444:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6bc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b0], eax
	nop	
	mov	eax, dword ptr [rbp - 0x890]
	nop	
	mov	dword ptr [rbp - 0x1b4], eax
	mov	eax, dword ptr [rbp - 0x860]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b8], eax
	nop	
	mov	eax, dword ptr [rbp - 0x864]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, dword ptr [rbp - 0x868]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c0], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x848]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a0], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x228]
	call	mktime_z
	mov	qword ptr [rbp - 0x488], rax
	cmp	qword ptr [rbp - 0x488], -1
	mov	rbp, rbp
	jne	.label_3151
	test	byte ptr [rbp - 0xa7], 1
	mov	rbp, rbp
	je	.label_3156
	movabs	rdi, OFFSET FLAT:.str.57_0
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	ecx, 0x64
	lea	rdx, [rbp - 0xd20]
	mov	qword ptr [rbp - 0xb10], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xb10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_3156:
	jmp	.label_2503
.label_3151:
	test	byte ptr [rbp - 0xa7], 1
	nop	
	je	.label_2483
	nop	
	movabs	rdi, OFFSET FLAT:.str.58_0
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.59_0
	call	gettext
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	mov	ecx, 0x64
	mov	rbp, rbp
	lea	rdx, [rbp - 0xd20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x810], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0x810]
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
	cmp	dword ptr [rbp - 0x848], -1
	je	.label_3219
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a0]
	cmp	eax, dword ptr [rbp - 0x848]
	lea	rsi, [rsi]
	je	.label_3219
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.60_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_3219:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	jne	.label_3239
	mov	eax, dword ptr [rbp - 0x1b4]
	cmp	eax, dword ptr [rbp - 0x890]
	lea	rsi, [rsi]
	jne	.label_3244
	cmp	qword ptr [rbp - 0x110], 0
	jne	.label_3239
	nop	
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x6bc]
	je	.label_3239
.label_3244:
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
	lea	rsi, [rbp - 0x73d]
	nop	
	mov	edi, dword ptr [rbp - 0xa68]
	mov	qword ptr [rbp - 0x2c8], rax
	call	tm_year_str
	mov	edi, dword ptr [rbp - 0x6bc]
	add	edi, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x890]
	mov	rsi, qword ptr [rbp - 0x2c8]
	mov	dword ptr [rbp - 0x564], edi
	mov	rdi, rsi
	mov	rsi, rax
	mov	edx, dword ptr [rbp - 0x564]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rbp - 0x73d]
	mov	edi, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rax
	call	tm_year_str
	nop	
	mov	ecx, dword ptr [rbp - 0x1b0]
	add	ecx, 1
	mov	edx, dword ptr [rbp - 0x1b4]
	nop	
	mov	al, 0
