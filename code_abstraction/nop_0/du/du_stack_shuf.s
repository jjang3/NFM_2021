	.section	.text
	.align	16
	#Procedure 0x402610

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_7
	lea	rsi, [rsi]
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.2
	nop	
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
	nop	
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 8], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x18], eax
	call	emit_blocksize_note
	call	emit_size_note
	movabs	rdi, OFFSET FLAT:.str.13
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0x2c]
	nop	
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4028a0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028f0

	.globl emit_blocksize_note
	.type emit_blocksize_note, @function
emit_blocksize_note:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.57
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402940

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.58
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x20], rax
.label_10:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	je	.label_11
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	cl
	nop	
	xor	cl, 0xff
	mov	byte ptr [rbp - 1], cl
.label_11:
	nop	
	mov	al, byte ptr [rbp - 1]
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_14
	lea	rsi, [rsi]
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_10
.label_15:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_13
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.67
	nop	
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rdi, [rdi]
	mov	edi, 5
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	call	setlocale
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_12
	nop	
	movabs	rsi, OFFSET FLAT:.str.69
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strncmp
	cmp	eax, 0
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.70
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_12:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.71
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.72
	mov	dword ptr [rbp - 0x14], eax
	nop	
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.73
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmove	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2c], eax
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl main
	.type main, @function
main:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x230
	movabs	rax, OFFSET FLAT:.str_3
	mov	dword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x38], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x140], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1e5], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1cd], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x200], 8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], 0x10
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x59], 0
	nop	
	mov	rdi, rax
	call	bad_cast
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	rdi, qword ptr [rax]
	nop	
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.16
	nop	
	movabs	rsi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	lea	rsi, [rsi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	call	atexit
	mov	dword ptr [rbp - 0x110], eax
	call	new_exclude
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	qword ptr [word ptr [exclude]],  rax
	call	getenv
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	call	human_options
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e4], eax
.label_69:
	movabs	rdx, OFFSET FLAT:.str.19
	movabs	rcx, OFFSET FLAT:long_options
	mov	rbp, rbp
	lea	r8, [rbp - 0x194]
	mov	dword ptr [rbp - 0x194], 0xffffffff
	mov	edi, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	call	getopt_long
	mov	dword ptr [rbp - 0xc4], eax
	cmp	dword ptr [rbp - 0xc4], -1
	jne	.label_90
	jmp	.label_93
.label_90:
	mov	eax, dword ptr [rbp - 0xc4]
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	je	.label_95
	nop	
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ec], eax
	lea	rdi, [rdi]
	je	.label_101
	lea	rsi, [rsi]
	jmp	.label_109
.label_109:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xc8], eax
	lea	rsi, [rsi]
	je	.label_110
	lea	rdi, [rdi]
	jmp	.label_113
.label_113:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	sub	eax, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_115
	nop	
	jmp	.label_122
.label_122:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x1c8], eax
	je	.label_123
	jmp	.label_128
.label_128:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0x48
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1d4], eax
	je	.label_123
	mov	rsp, rsp
	jmp	.label_134
.label_134:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x108], eax
	je	.label_136
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc0], eax
	lea	rdi, [rdi]
	je	.label_24
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x1c4], eax
	je	.label_34
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x58
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_41
	mov	rsp, rsp
	jmp	.label_49
.label_49:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x150], eax
	nop	
	je	.label_50
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	je	.label_61
	lea	rdi, [rdi]
	jmp	.label_65
.label_65:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_67
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_54
	nop	
	jmp	.label_84
.label_84:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x68
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x184], eax
	lea	rdi, [rdi]
	je	.label_76
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x190], eax
	je	.label_83
	nop	
	jmp	.label_88
.label_88:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	sub	eax, 0x6c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	je	.label_89
	jmp	.label_94
.label_94:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	je	.label_96
	mov	rsp, rsp
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x73
	mov	dword ptr [rbp - 8], eax
	je	.label_133
	mov	rbp, rbp
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_105
	lea	rsi, [rsi]
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	je	.label_46
	lea	rdi, [rdi]
	jmp	.label_127
.label_127:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x80
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x204], eax
	mov	rbp, rbp
	je	.label_117
	mov	rbp, rbp
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x81
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_126
	mov	rsp, rsp
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x198], eax
	je	.label_132
	nop	
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0x83
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_17
	lea	rsi, [rsi]
	jmp	.label_27
.label_27:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x85
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_28
	lea	rdi, [rdi]
	jmp	.label_78
.label_78:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x86
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x11c], eax
	mov	rbp, rbp
	je	.label_130
	jmp	.label_48
.label_48:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	sub	eax, 0x87
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18c], eax
	nop	
	je	.label_129
	jmp	.label_59
.label_110:
	mov	byte ptr [byte ptr [opt_nul_terminate_output]],  1
	lea	rsi, [rsi]
	jmp	.label_18
.label_50:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [opt_all]],  1
	jmp	.label_18
.label_117:
	mov	byte ptr [byte ptr [apparent_size]],  1
	nop	
	jmp	.label_18
.label_61:
	mov	byte ptr [byte ptr [apparent_size]],  1
	mov	rsp, rsp
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  1
	lea	rsi, [rsi]
	jmp	.label_18
.label_67:
	mov	byte ptr [byte ptr [print_grand_total]],  1
	mov	rbp, rbp
	jmp	.label_18
.label_76:
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [output_block_size]],  1
	jmp	.label_18
.label_17:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [output_block_size]],  1
	jmp	.label_18
.label_83:
	mov	dword ptr [dword ptr [human_output_opts]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [output_block_size]],  0x400
	mov	rsp, rsp
	jmp	.label_18
.label_54:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rbp - 0x78]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rcx
	mov	rcx, r8
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x98]
	call	xstrtoul
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_21
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], -1
	ja	.label_21
	mov	byte ptr [rbp - 0x1e5], 1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [word ptr [max_depth]],  rax
	nop	
	jmp	.label_47
.label_21:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1c0], rax
	nop	
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1cd], 0
.label_47:
	mov	rsp, rsp
	jmp	.label_18
.label_96:
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x100000
	jmp	.label_18
.label_89:
	nop	
	mov	byte ptr [byte ptr [opt_count_all]],  1
	jmp	.label_18
.label_133:
	mov	byte ptr [rbp - 0x59], 1
	mov	rbp, rbp
	jmp	.label_18
.label_105:
	nop	
	xor	eax, eax
	nop	
	mov	esi, eax
	xor	edx, edx
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:opt_threshold
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str.21
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	xstrtoimax
	mov	dword ptr [rbp - 0x104], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x104], 0
	je	.label_63
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x104]
	mov	esi, dword ptr [rbp - 0x194]
	mov	eax, dword ptr [rbp - 0xc4]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_63:
	cmp	qword ptr [word ptr [opt_threshold]],  0
	mov	rsp, rsp
	jne	.label_79
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2d
	jne	.label_79
	movabs	rdi, OFFSET FLAT:.str.22
	nop	
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_79:
	jmp	.label_18
.label_46:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x200]
	or	eax, 0x40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x200], eax
	jmp	.label_18
.label_115:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	human_options
	mov	dword ptr [rbp - 0x1b8], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b8], 0
	lea	rdi, [rdi]
	je	.label_106
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x1b8]
	nop	
	mov	esi, dword ptr [rbp - 0x194]
	mov	eax, dword ptr [rbp - 0xc4]
	lea	rdi, [rdi]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	nop	
	call	xstrtol_fatal
.label_106:
	jmp	.label_18
.label_123:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], 0x11
	jmp	.label_18
.label_136:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], 2
	lea	rdi, [rdi]
	jmp	.label_18
.label_24:
	mov	dword ptr [rbp - 0x6c], 0x10
	jmp	.label_18
.label_34:
	mov	byte ptr [byte ptr [opt_separate_dirs]],  1
	lea	rdi, [rdi]
	jmp	.label_18
.label_41:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:add_exclude
	mov	ecx, 0x10000000
	nop	
	mov	r8d, 0xa
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [exclude]]
	nop	
	mov	rdx,  qword ptr [word ptr [optarg]]
	nop	
	call	add_exclude_file
	nop	
	cmp	eax, 0
	je	.label_33
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [optarg]]
	mov	dword ptr [rbp - 0x1fc], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1fc]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x1cd], 0
.label_33:
	nop	
	jmp	.label_18
.label_132:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	jmp	.label_18
.label_126:
	lea	rdi, [rdi]
	mov	edx, 0x10000000
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [exclude]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	call	add_exclude
	mov	rsp, rsp
	jmp	.label_18
.label_129:
	mov	byte ptr [byte ptr [opt_inodes]],  1
	mov	rbp, rbp
	jmp	.label_18
.label_28:
	mov	byte ptr [byte ptr [opt_time]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	je	.label_81
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:time_args
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:time_types
	mov	rsp, rsp
	mov	ecx, 4
	lea	rsi, [rsi]
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], r10d
	lea	rsi, [rsi]
	jmp	.label_102
.label_81:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_102
.label_102:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x15c]
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	dword ptr [dword ptr [time_type]],  eax
	call	getenv
	mov	rdi, rax
	call	tzalloc
	nop	
	mov	qword ptr [word ptr [localtz]],  rax
	lea	rdi, [rdi]
	jmp	.label_18
.label_130:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [time_style]],  rax
	lea	rdi, [rdi]
	jmp	.label_18
.label_101:
	mov	rbp, rbp
	xor	edi, edi
	call	usage
.label_95:
	movabs	rsi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.27
	lea	rdi, [rdi]
	movabs	r9, OFFSET FLAT:.str.28
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.29
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.30
	xor	edi, edi
	mov	rbp, rbp
	mov	r10d, edi
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r11,  qword ptr [word ptr [Version]]
	nop	
	mov	qword ptr [rbp - 0x130], rcx
	mov	rbp, rbp
	mov	rcx, r11
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], 0
	mov	al, 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e0], r10
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_59:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1cd], 0
.label_18:
	nop	
	jmp	.label_69
.label_93:
	test	byte ptr [rbp - 0x1cd], 1
	jne	.label_71
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_71:
	test	byte ptr [byte ptr [opt_all]],  1
	nop	
	je	.label_74
	test	byte ptr [rbp - 0x59], 1
	mov	rsp, rsp
	je	.label_74
	movabs	rdi, OFFSET FLAT:.str.31
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_74:
	nop	
	test	byte ptr [rbp - 0x59], 1
	je	.label_91
	test	byte ptr [rbp - 0x1e5], 1
	je	.label_91
	nop	
	cmp	qword ptr [word ptr [max_depth]],  0
	lea	rdi, [rdi]
	jne	.label_91
	nop	
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_91:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x59], 1
	lea	rdi, [rdi]
	je	.label_107
	test	byte ptr [rbp - 0x1e5], 1
	lea	rdi, [rdi]
	je	.label_107
	cmp	qword ptr [word ptr [max_depth]],  0
	mov	rbp, rbp
	je	.label_107
	movabs	rdi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [max_depth]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], rax
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x210], rdi
	nop	
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x210]
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	mov	edi, 1
	call	usage
.label_107:
	test	byte ptr [rbp - 0x59], 1
	je	.label_16
	mov	rsp, rsp
	mov	qword ptr [word ptr [max_depth]],  0
.label_16:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [opt_inodes]],  1
	lea	rdi, [rdi]
	je	.label_26
	nop	
	test	byte ptr [byte ptr [apparent_size]],  1
	je	.label_30
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_30:
	mov	qword ptr [word ptr [output_block_size]],  1
.label_26:
	test	byte ptr [byte ptr [opt_time]],  1
	mov	rbp, rbp
	je	.label_55
	cmp	qword ptr [word ptr [time_style]],  0
	nop	
	jne	.label_60
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [word ptr [time_style]],  rax
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [time_style]],  0
	lea	rdi, [rdi]
	je	.label_70
	mov	rdi,  qword ptr [word ptr [time_style]]
	nop	
	mov	eax, OFFSET FLAT:.str.8_0
	nop	
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_77
.label_70:
	movabs	rax, OFFSET FLAT:.str.37
	mov	qword ptr [word ptr [time_style]],  rax
	jmp	.label_120
.label_77:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [time_style]]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_87
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [time_style]]
	call	strchr
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	je	.label_97
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax], 0
.label_97:
	jmp	.label_99
.label_87:
	mov	rsp, rsp
	jmp	.label_100
.label_100:
	nop	
	movabs	rsi, OFFSET FLAT:main.posix_prefix
	lea	rdi, [rdi]
	mov	eax, 6
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [time_style]]
	nop	
	call	strncmp
	cmp	eax, 0
	jne	.label_111
	mov	rax,  qword ptr [word ptr [time_style]]
	nop	
	add	rax, 6
	mov	qword ptr [word ptr [time_style]],  rax
	nop	
	jmp	.label_100
.label_111:
	jmp	.label_99
.label_99:
	jmp	.label_120
.label_120:
	jmp	.label_60
.label_60:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [time_style]]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2b
	lea	rsi, [rsi]
	jne	.label_121
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [time_style]]
	add	rax, 1
	mov	qword ptr [word ptr [time_format]],  rax
	mov	rbp, rbp
	jmp	.label_80
.label_121:
	mov	rsi,  qword ptr [word ptr [rip + time_style]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	nop	
	mov	eax, OFFSET FLAT:.str.38
	mov	edi, eax
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:time_style_args
	mov	rsp, rsp
	mov	edx, eax
	mov	eax, OFFSET FLAT:time_style_types
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 4
	lea	rsi, [rsi]
	mov	r8d, eax
	call	__xargmatch_internal
	nop	
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_style_types]]
	lea	rsi, [rsi]
	test	r10d, r10d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x16c], r10d
	je	.label_35
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rbp, rbp
	sub	eax, 1
	mov	dword ptr [rbp - 0x1b4], eax
	je	.label_44
	lea	rsi, [rsi]
	jmp	.label_52
.label_52:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x16c]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_57
	mov	rbp, rbp
	jmp	.label_64
.label_35:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [time_format]],  rax
	mov	rbp, rbp
	jmp	.label_64
.label_44:
	movabs	rax, OFFSET FLAT:.str.40
	mov	qword ptr [word ptr [time_format]],  rax
	lea	rsi, [rsi]
	jmp	.label_64
.label_57:
	movabs	rax, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [time_format]],  rax
.label_64:
	jmp	.label_80
.label_80:
	jmp	.label_55
.label_55:
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	je	.label_82
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_86
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	call	quote
	nop	
	xor	edx, edx
	mov	edi, edx
	nop	
	mov	esi, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.43
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	edi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1cc], eax
	lea	rsi, [rsi]
	call	usage
.label_86:
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.45
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	je	.label_23
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rdx,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	call	freopen_safer
	cmp	rax, 0
	jne	.label_23
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.47
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_23:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	argv_iter_init_stream
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [byte ptr [hash_all]],  1
	jmp	.label_62
.label_82:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_66
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_29
.label_66:
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 0xf0], rax
.label_29:
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x90]
	nop	
	call	argv_iter_init_argv
	mov	cl, 1
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [optind]]
	nop	
	add	edx, 1
	mov	rbp, rbp
	cmp	edx, dword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x149], cl
	jl	.label_85
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x6c], 2
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x149], al
.label_85:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x149]
	and	al, 1
	nop	
	mov	byte ptr [byte ptr [hash_all]],  al
.label_62:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_19
	lea	rdi, [rdi]
	call	xalloc_die
.label_19:
	mov	rbp, rbp
	call	di_set_alloc
	mov	qword ptr [word ptr [di_files]],  rax
	cmp	qword ptr [word ptr [di_files]],  0
	lea	rsi, [rsi]
	jne	.label_108
	lea	rdi, [rdi]
	call	xalloc_die
.label_108:
	nop	
	test	byte ptr [byte ptr [opt_count_all]],  1
	lea	rdi, [rdi]
	jne	.label_114
	nop	
	test	byte ptr [byte ptr [hash_all]],  1
	jne	.label_119
.label_114:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x200]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x200], eax
.label_119:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	or	eax, dword ptr [rbp - 0x200]
	mov	dword ptr [rbp - 0x200], eax
.label_98:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x10]
	mov	byte ptr [rbp - 0x16d], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa8]
	call	argv_iter
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x158], 0
	jne	.label_137
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 2
	mov	dword ptr [rbp - 0x180], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rsp, rsp
	je	.label_25
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0x180]
	sub	eax, 3
	mov	dword ptr [rbp - 0x17c], eax
	nop	
	je	.label_38
	jmp	.label_43
.label_43:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x180]
	sub	eax, 4
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_45
	jmp	.label_53
.label_25:
	mov	rbp, rbp
	jmp	.label_56
.label_45:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x1cd], 0
	jmp	.label_56
.label_38:
	mov	rsp, rsp
	call	xalloc_die
.label_53:
	movabs	rdi, OFFSET FLAT:.str.49
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.50
	lea	rsi, [rsi]
	mov	edx, 0x438
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rsi, [rsi]
	call	__assert_fail
.label_137:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	je	.label_92
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	eax, OFFSET FLAT:.str.45
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_92
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.45
	mov	esi, eax
	call	strcmp
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_92
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x188], edi
	mov	esi, dword ptr [rbp - 0x188]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x16d], 1
.label_92:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	jne	.label_131
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_135
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	nop	
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	jmp	.label_32
.label_135:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	call	argv_iter_n_args
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], rax
	mov	rdx, qword ptr [rbp - 0xd0]
	call	quotearg_n_style_colon
	movabs	rdi, OFFSET FLAT:.str.52
	mov	r8, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rax
	mov	qword ptr [rbp - 0x68], r8
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str.53
	mov	edi, esi
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x168]
	mov	r8, qword ptr [rbp - 0x68]
	mov	r9, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_32:
	mov	byte ptr [rbp - 0x16d], 1
.label_131:
	test	byte ptr [rbp - 0x16d], 1
	je	.label_73
	mov	byte ptr [rbp - 0x1cd], 0
	mov	rbp, rbp
	jmp	.label_75
.label_73:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:main.temp_argv
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [word ptr [main.temp_argv]],  rax
	mov	esi, dword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	call	du_files
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	esi, al
	mov	al, byte ptr [rbp - 0x1cd]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	and	ecx, esi
	cmp	ecx, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x1cd], al
.label_75:
	lea	rdi, [rdi]
	jmp	.label_98
.label_56:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	call	argv_iter_free
	mov	rdi,  qword ptr [word ptr [di_files]]
	lea	rsi, [rsi]
	call	di_set_free
	cmp	qword ptr [word ptr [di_mnt]],  0
	je	.label_51
	mov	rdi,  qword ptr [word ptr [di_mnt]]
	lea	rsi, [rsi]
	call	di_set_free
.label_51:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_68
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rbp, rbp
	call	ferror_unlocked
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_118
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rbp, rbp
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_68
.label_118:
	test	byte ptr [rbp - 0x1cd], 1
	nop	
	je	.label_68
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1f8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_68:
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_grand_total]],  1
	lea	rdi, [rdi]
	je	.label_36
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	nop	
	movabs	rdi, OFFSET FLAT:tot_dui
	mov	rsi, rax
	nop	
	call	print_size
.label_36:
	lea	rsi, [rsi]
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x1cd]
	mov	rbp, rbp
	test	dl, 1
	cmovne	eax, ecx
	lea	rsi, [rsi]
	add	rsp, 0x230
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042a0

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl du_files
	.type du_files, @function
du_files:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x34], esi
	nop	
	mov	byte ptr [rbp - 0x21], 1
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	mov	rsp, rsp
	je	.label_141
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x34]
	call	xfts_open
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_142:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	rpl_fts_read
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_143
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_139
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.105
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x20]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x21], 0
.label_139:
	mov	qword ptr [word ptr [prev_level]],  0
	lea	rdi, [rdi]
	jmp	.label_138
.label_143:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	call	process_file
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rsi, [rsi]
	jmp	.label_142
.label_138:
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_fts_close
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_140
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.106
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	byte ptr [rbp - 0x21], 0
.label_140:
	jmp	.label_141
.label_141:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl print_size
	.type print_size, @function
print_size:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [opt_inodes]],  1
	nop	
	je	.label_144
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_145
.label_144:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_145:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	print_only_size
	mov	rsp, rsp
	test	byte ptr [byte ptr [opt_time]],  1
	nop	
	je	.label_146
	mov	edi, 9
	nop	
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [time_format]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [localtz]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	call	show_date
.label_146:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.112
	mov	eax, 0xa
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dl,  byte ptr [byte ptr [opt_nul_terminate_output]]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	al, 0
	call	printf
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x2c], eax
	call	fflush_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404560

	.globl process_file
	.type process_file, @function
process_file:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rsi + 0x38]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rsi + 0x70]
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 4
	mov	rsp, rsp
	jne	.label_171
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.107
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xcd], 0
	jmp	.label_158
.label_171:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 6
	mov	rbp, rbp
	je	.label_161
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [exclude]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	excluded_file_name
	and	al, 1
	mov	byte ptr [rbp - 0xfd], al
	test	byte ptr [rbp - 0xfd], 1
	nop	
	jne	.label_169
	cmp	dword ptr [rbp - 0xc], 0xb
	jne	.label_179
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	call	rpl_fts_set
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
	call	rpl_fts_read
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jne	.label_188
	jmp	.label_191
.label_188:
	movabs	rdi, OFFSET FLAT:.str.108
	movabs	rsi, OFFSET FLAT:.str.50
	mov	edx, 0x20e
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	lea	rdi, [rdi]
	call	__assert_fail
.label_191:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
.label_179:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0xa
	je	.label_147
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0xd
	mov	rbp, rbp
	jne	.label_154
.label_147:
	movabs	rdi, OFFSET FLAT:.str.109
	mov	rax, qword ptr [rbp - 0x58]
	mov	esi, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0x48], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5d], 0
	nop	
	jmp	.label_157
.label_154:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	nop	
	and	ecx, 0x40
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_172
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 0x58]
	jge	.label_172
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	je	.label_172
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xfd], 1
.label_172:
	lea	rdi, [rdi]
	jmp	.label_169
.label_169:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xfd], 1
	jne	.label_197
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [opt_count_all]],  1
	jne	.label_152
	test	byte ptr [byte ptr [hash_all]],  1
	lea	rsi, [rsi]
	jne	.label_174
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	je	.label_152
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	jae	.label_152
.label_174:
	mov	rdi,  qword ptr [word ptr [di_files]]
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	call	hash_ins
	nop	
	test	al, 1
	jne	.label_152
.label_197:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_201
	mov	edx, 4
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x58]
	call	rpl_fts_set
	mov	rdi, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	call	rpl_fts_read
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_189
	jmp	.label_193
.label_189:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.108
	movabs	rsi, OFFSET FLAT:.str.50
	mov	edx, 0x22f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	mov	rbp, rbp
	call	__assert_fail
.label_193:
	mov	rbp, rbp
	jmp	.label_201
.label_201:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5d], 1
	mov	rbp, rbp
	jmp	.label_157
.label_152:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0xd4], ecx
	je	.label_155
	nop	
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_164
	lea	rsi, [rsi]
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 7
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	je	.label_170
	jmp	.label_180
.label_155:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x5d], 1
	jmp	.label_157
.label_170:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x98]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0xcd], 0
	nop	
	jmp	.label_180
.label_164:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x58]
	call	cycle_warning_required
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_203
	jmp	.label_149
.label_203:
	mov	rdi, qword ptr [rbp - 0x58]
	call	mount_point_in_fts_cycle
	test	al, 1
	nop	
	jne	.label_149
	mov	rbp, rbp
	jmp	.label_153
.label_153:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.110
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5d], 0
	lea	rsi, [rsi]
	jmp	.label_157
.label_149:
	mov	byte ptr [rbp - 0x5d], 1
	mov	rsp, rsp
	jmp	.label_157
.label_180:
	jmp	.label_161
.label_161:
	lea	rsi, [rsi]
	jmp	.label_158
.label_158:
	nop	
	test	byte ptr [byte ptr [apparent_size]],  1
	je	.label_185
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 0x30]
	jle	.label_187
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_190
.label_187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
.label_190:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_198
.label_185:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_198:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [time_type]],  0
	mov	qword ptr [rbp - 0x18], rax
	jne	.label_150
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	get_stat_mtime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	jmp	.label_167
.label_150:
	cmp	dword ptr [dword ptr [time_type]],  2
	jne	.label_175
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	jmp	.label_177
.label_175:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa8]
	call	get_stat_ctime
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdx
.label_177:
	mov	rbp, rbp
	jmp	.label_167
.label_167:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	duinfo_set
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rcx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf0], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xe8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xe0], rcx
	cmp	qword ptr [word ptr [process_file.n_alloc]],  0
	jne	.label_195
	mov	eax, 0x40
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 0xa
	mov	qword ptr [word ptr [process_file.n_alloc]],  rcx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [process_file.n_alloc]]
	nop	
	call	xcalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [process_file.dulvl]],  rax
	jmp	.label_156
.label_195:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [prev_level]]
	jne	.label_168
	jmp	.label_176
.label_168:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [prev_level]]
	jbe	.label_178
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [process_file.n_alloc]]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	ja	.label_182
	nop	
	mov	eax, 0x80
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [process_file.dulvl]]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	nop	
	call	xnrealloc
	mov	qword ptr [word ptr [process_file.dulvl]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [process_file.n_alloc]],  rax
.label_182:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [prev_level]]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
.label_166:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_184
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	shl	rax, 6
	nop	
	add	rax,  qword ptr [word ptr [process_file.dulvl]]
	mov	rdi, rax
	nop	
	call	duinfo_init
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	shl	rax, 6
	add	rax,  qword ptr [word ptr [process_file.dulvl]]
	add	rax, 0x20
	lea	rdi, [rdi]
	mov	rdi, rax
	call	duinfo_init
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	jmp	.label_166
.label_184:
	jmp	.label_159
.label_178:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [prev_level]]
	mov	rbp, rbp
	sub	rcx, 1
	mov	rbp, rbp
	cmp	rax, rcx
	jne	.label_173
	jmp	.label_202
.label_173:
	movabs	rdi, OFFSET FLAT:.str.111
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.50
	mov	edx, 0x27d
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	lea	rsi, [rsi]
	call	__assert_fail
.label_202:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xf8]
	mov	rax,  qword ptr [word ptr [prev_level]]
	shl	rax, 6
	add	rax,  qword ptr [word ptr [process_file.dulvl]]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	duinfo_add
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [opt_separate_dirs]],  1
	jne	.label_199
	lea	rdi, [rbp - 0xf8]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [prev_level]]
	shl	rax, 6
	add	rax,  qword ptr [word ptr [process_file.dulvl]]
	add	rax, 0x20
	nop	
	mov	rsi, rax
	call	duinfo_add
.label_199:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 6
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [process_file.dulvl]]
	mov	rsp, rsp
	add	rax, 0x20
	mov	rcx,  qword ptr [word ptr [prev_level]]
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rdi, [rdi]
	add	rcx,  qword ptr [word ptr [process_file.dulvl]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	duinfo_add
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	shl	rax, 6
	add	rax,  qword ptr [word ptr [process_file.dulvl]]
	nop	
	add	rax, 0x20
	mov	rcx,  qword ptr [word ptr [prev_level]]
	lea	rdi, [rdi]
	shl	rcx, 6
	add	rcx,  qword ptr [word ptr [process_file.dulvl]]
	mov	rbp, rbp
	add	rcx, 0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	duinfo_add
.label_159:
	jmp	.label_176
.label_176:
	jmp	.label_156
.label_156:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [prev_level]],  rax
	nop	
	test	byte ptr [byte ptr [opt_separate_dirs]],  1
	mov	rbp, rbp
	je	.label_162
	cmp	dword ptr [rbp - 0xc], 6
	je	.label_196
	cmp	dword ptr [rbp - 0xc], 4
	je	.label_196
.label_162:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 6
	add	rax,  qword ptr [word ptr [process_file.dulvl]]
	mov	rdi, rax
	mov	rbp, rbp
	call	duinfo_add
.label_196:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:tot_dui
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x80]
	call	duinfo_add
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 6
	nop	
	je	.label_186
	cmp	dword ptr [rbp - 0xc], 4
	mov	rbp, rbp
	jne	.label_160
.label_186:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [max_depth]]
	mov	rbp, rbp
	jbe	.label_165
.label_160:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [opt_all]],  1
	je	.label_148
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [max_depth]]
	mov	rbp, rbp
	jbe	.label_165
.label_148:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_181
.label_165:
	test	byte ptr [byte ptr [opt_inodes]],  1
	nop	
	je	.label_183
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_194
.label_183:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xb0], rax
.label_194:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [word ptr [opt_threshold]],  0
	lea	rdi, [rdi]
	jge	.label_192
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rcx,  qword ptr [word ptr [opt_threshold]]
	mov	rsp, rsp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jbe	.label_200
	jmp	.label_151
.label_192:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [opt_threshold]]
	jb	.label_151
.label_200:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	print_size
.label_151:
	jmp	.label_181
.label_181:
	mov	al, byte ptr [rbp - 0xcd]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5d], al
.label_157:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x5d]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0x110
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl hash_ins
	.type hash_ins, @function
hash_ins:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	di_set_insert
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_205
	call	xalloc_die
.label_205:
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050f0

	.globl mount_point_in_fts_cycle
	.type mount_point_in_fts_cycle, @function
mount_point_in_fts_cycle:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [di_mnt]],  0
	nop	
	jne	.label_210
	call	di_set_alloc
	mov	qword ptr [word ptr [di_mnt]],  rax
	cmp	qword ptr [word ptr [di_mnt]],  0
	jne	.label_206
	nop	
	call	xalloc_die
.label_206:
	lea	rdi, [rdi]
	call	fill_mount_table
.label_210:
	nop	
	jmp	.label_208
.label_208:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_207
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 8]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], cl
.label_207:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_213
	jmp	.label_209
.label_213:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [di_mnt]]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x78]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x80]
	mov	rbp, rbp
	call	di_set_lookup
	lea	rsi, [rsi]
	cmp	eax, 0
	jle	.label_212
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_211
.label_212:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_208
.label_209:
	mov	byte ptr [rbp - 0x19], 0
.label_211:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405200

	.globl duinfo_set
	.type duinfo_set, @function
duinfo_set:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], 1
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rdx
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405260

	.globl duinfo_init
	.type duinfo_init, @function
duinfo_init:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], -1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052b0

	.globl duinfo_add
	.type duinfo_add, @function
duinfo_add:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	cmp	rsi, qword ptr [rbp - 0x10]
	ja	.label_214
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_216
.label_214:
	nop	
	mov	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_216
.label_216:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	call	timespec_cmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_215
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x18], rcx
.label_215:
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053b0

	.globl fill_mount_table
	.type fill_mount_table, @function
fill_mount_table:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	rbp, rbp
	xor	edi, edi
	call	read_file_system_list
	nop	
	mov	qword ptr [rbp - 0xa8], rax
.label_221:
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rsi, [rsi]
	je	.label_220
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_218
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x28]
	nop	
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jne	.label_218
	lea	rsi, [rbp - 0x90]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_217
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [di_mnt]]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	call	hash_ins
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], al
	jmp	.label_219
.label_217:
	jmp	.label_219
.label_219:
	mov	rbp, rbp
	jmp	.label_218
.label_218:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free_mount_entry
	lea	rsi, [rsi]
	jmp	.label_221
.label_220:
	nop	
	add	rsp, 0xb0
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054e0

	.globl print_only_size
	.type print_only_size, @function
print_only_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2b0
	nop	
	mov	qword ptr [rbp - 0x298], rdi
	nop	
	cmp	qword ptr [rbp - 0x298], -1
	jne	.label_222
	nop	
	movabs	rdi, OFFSET FLAT:.str.113
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_223
.label_222:
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rbp - 0x290]
	mov	rdi, qword ptr [rbp - 0x298]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	lea	rsi, [rsi]
	call	human_readable
	mov	qword ptr [rbp - 0x2a8], rax
.label_223:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x29c], eax
	lea	rdi, [rdi]
	add	rsp, 0x2b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405590

	.globl show_date
	.type show_date, @function
show_date:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x90]
	lea	r8, [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, r8
	lea	rsi, [rsi]
	mov	rdx, rax
	call	localtime_rz
	nop	
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_225
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x90]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x48]
	mov	r8d, eax
	call	fprintftime
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_224
.label_225:
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	timetostr
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.114
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
.label_224:
	mov	rbp, rbp
	add	rsp, 0xa0
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl timetostr
	.type timetostr, @function
timetostr:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056e0

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
	#Procedure 0x405700

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
.label_233:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_231
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
	jne	.label_228
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_234
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_226
.label_234:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_229
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_227
.label_229:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_235
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
	je	.label_236
.label_235:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_236:
	lea	rsi, [rsi]
	jmp	.label_227
.label_227:
	mov	rbp, rbp
	jmp	.label_230
.label_230:
	mov	rsp, rsp
	jmp	.label_228
.label_228:
	nop	
	jmp	.label_232
.label_232:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_233
.label_231:
	test	byte ptr [rbp - 0x21], 1
	je	.label_237
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_226
.label_237:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_226:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058b0

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
	jne	.label_238
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_239
.label_238:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_239:
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
	#Procedure 0x405990

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_1
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
.label_240:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_242
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_241
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
	je	.label_245
.label_241:
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
	jmp	.label_243
.label_245:
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
.label_243:
	jmp	.label_244
.label_244:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_240
.label_242:
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
	#Procedure 0x405b40

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
	jl	.label_246
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_247
.label_246:
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
.label_247:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c00
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
.label_250:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_252
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
	jne	.label_249
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_248
.label_249:
	lea	rdi, [rdi]
	jmp	.label_251
.label_251:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_250
.label_252:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_248:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	eax, 0x30
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_253
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_254
.label_253:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_254:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d70

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_256
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_255
.label_256:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e30

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rsi], 0
	je	.label_257
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	call	getdelim
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_260
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	feof
	mov	ecx, 4
	mov	rsp, rsp
	mov	edx, 2
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_258
.label_260:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	nop	
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_258
.label_257:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_259
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_258
.label_259:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x28], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
.label_258:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f90

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_261
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_262
.label_261:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	sub	rax, rcx
	sar	rax, 3
	mov	qword ptr [rbp - 8], rax
.label_262:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406000

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	je	.label_263
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	free
.label_263:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x10
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406060
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
	#Procedure 0x406090
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
	#Procedure 0x4060c0

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
	je	.label_264
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_265
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_264
.label_265:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_268
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
	movabs	rdx, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_268:
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
.label_266:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_264:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_267
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_267:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061f0

	.globl di_set_alloc
	.type di_set_alloc, @function
di_set_alloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_271
	nop	
	mov	eax, 0xb
	nop	
	mov	edi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:di_ent_hash
	movabs	rcx, OFFSET FLAT:di_ent_compare
	movabs	r8, OFFSET FLAT:di_ent_free
	call	hash_initialize
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_269
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	nop	
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jmp	.label_270
.label_269:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
.label_271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_270:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062d0

	.globl di_ent_hash
	.type di_ent_hash, @function
di_ent_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x2c], 1
	mov	dword ptr [rbp - 0x14], 1
.label_273:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_272
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	edx, ecx
	shl	rdx, 6
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rax, cl
	lea	rdi, [rdi]
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_273
.label_272:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl di_ent_compare
	.type di_ent_compare, @function
di_ent_compare:
	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi]
	sete	al
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063d0

	.globl di_ent_free
	.type di_ent_free, @function
di_ent_free:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	nop	
	call	hash_free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406420

	.globl di_set_free
	.type di_set_free, @function
di_set_free:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	hash_free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406480

	.globl di_set_insert
	.type di_set_insert, @function
di_set_insert:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	map_device
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_275
	mov	dword ptr [rbp - 0x14], 0xffffffff
	nop	
	jmp	.label_274
.label_275:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	map_inode_number
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_276
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_274
.label_276:
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_274:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406530

	.globl map_device
	.type map_device, @function
map_device:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_282
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jne	.label_279
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_283
.label_279:
	jmp	.label_277
.label_282:
	nop	
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	edi, eax
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_281
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_283
.label_281:
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_280
	mov	qword ptr [rbp - 8], 0
	jmp	.label_283
.label_280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_278
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_284
.label_278:
	mov	eax, 0x3fd
	mov	rsp, rsp
	mov	edi, eax
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:di_ino_hash
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x10], 0
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_284:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_283:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066d0

	.globl map_inode_number
	.type map_inode_number, @function
map_inode_number:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jae	.label_285
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jae	.label_285
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_288
.label_285:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	nop	
	jne	.label_287
	mov	rbp, rbp
	movabs	rdi, 0x7fffffffffffffff
	mov	rbp, rbp
	call	ino_map_alloc
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], 0
	nop	
	jne	.label_286
	mov	qword ptr [rbp - 0x10], -1
	mov	rsp, rsp
	jmp	.label_288
.label_286:
	jmp	.label_287
.label_287:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	ino_map_insert
	mov	qword ptr [rbp - 0x10], rax
.label_288:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl di_set_lookup
	.type di_set_lookup, @function
di_set_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	map_device
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_289
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_290
.label_289:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	call	map_inode_number
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	jne	.label_291
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_290
.label_291:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	hash_lookup
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	cl
	xor	cl, 0xff
	nop	
	xor	cl, 0xff
	nop	
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edx
.label_290:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406870

	.globl di_ino_hash
	.type di_ino_hash, @function
di_ino_hash:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rax, rdx
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068a0

	.globl exclude_add_pattern_buffer
	.type exclude_add_pattern_buffer, @function
exclude_add_pattern_buffer:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406930

	.globl fnmatch_pattern_has_wildcards
	.type fnmatch_pattern_has_wildcards, @function
fnmatch_pattern_has_wildcards:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x10], esi
.label_298:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	test	edx, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	je	.label_295
	mov	rsp, rsp
	jmp	.label_310
.label_310:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x21
	mov	dword ptr [rbp - 0x48], eax
	je	.label_292
	jmp	.label_294
.label_294:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	nop	
	add	eax, -0x28
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jb	.label_297
	mov	rsp, rsp
	jmp	.label_308
.label_308:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x34], eax
	je	.label_301
	mov	rsp, rsp
	jmp	.label_303
.label_303:
	mov	eax, dword ptr [rbp - 8]
	nop	
	sub	eax, 0x2b
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_292
	mov	rbp, rbp
	jmp	.label_304
.label_304:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x2e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	je	.label_297
	lea	rsi, [rsi]
	jmp	.label_309
.label_309:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x3f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	je	.label_301
	nop	
	jmp	.label_296
.label_296:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x40
	mov	dword ptr [rbp - 0x30], eax
	je	.label_292
	mov	rsp, rsp
	jmp	.label_306
.label_306:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x5b
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_301
	lea	rdi, [rdi]
	jmp	.label_312
.label_312:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x5c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	je	.label_314
	lea	rdi, [rdi]
	jmp	.label_300
.label_300:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	eax, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	je	.label_297
	lea	rdi, [rdi]
	jmp	.label_311
.label_311:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	jne	.label_302
	lea	rdi, [rdi]
	jmp	.label_297
.label_297:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x8000000
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_305
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 1
	jmp	.label_293
.label_305:
	lea	rsi, [rsi]
	jmp	.label_302
.label_314:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x8000000
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_313
	mov	rsp, rsp
	jmp	.label_298
.label_313:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_307
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x21], dl
.label_307:
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	movsxd	rsi, ecx
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	jmp	.label_302
.label_292:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	and	eax, 0x20
	nop	
	cmp	eax, 0
	je	.label_299
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	jne	.label_299
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jmp	.label_293
.label_299:
	jmp	.label_302
.label_301:
	nop	
	mov	byte ptr [rbp - 9], 1
	jmp	.label_293
.label_295:
	mov	byte ptr [rbp - 9], 0
	jmp	.label_293
.label_302:
	mov	rsp, rsp
	jmp	.label_298
.label_293:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ba0

	.globl new_exclude
	.type new_exclude, @function
new_exclude:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x10
	mov	edi, eax
	call	xzalloc
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bc0
	.globl free_exclude
	.type free_exclude, @function
free_exclude:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_315:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_316
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	free_exclude_segment
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_315
.label_316:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_318:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_317
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 8]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_318
.label_317:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ca0

	.globl free_exclude_segment
	.type free_exclude_segment, @function
free_exclude_segment:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	eax, dword ptr [rdi + 8]
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	je	.label_319
	jmp	.label_321
.label_321:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jne	.label_322
	jmp	.label_323
.label_323:
	mov	qword ptr [rbp - 0x10], 0
.label_326:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_325
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rax, rax, 0x48
	nop	
	add	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	nop	
	and	edx, 0x8000000
	cmp	edx, 0
	je	.label_320
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x48
	nop	
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_regfree
.label_320:
	nop	
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_326
.label_325:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	nop	
	jmp	.label_322
.label_319:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x10]
	call	hash_free
.label_322:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406db0

	.globl exclude_fnmatch
	.type exclude_fnmatch, @function
exclude_fnmatch:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:fnmatch_no_wildcards
	movabs	rcx, OFFSET FLAT:fnmatch
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 4], edx
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x10000000
	cmp	edx, 0
	cmovne	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	edx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	rax
	nop	
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 5], r8b
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	and	eax, 0x40000000
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_327
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_333:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	je	.label_329
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
.label_329:
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_332
	mov	rbp, rbp
	jmp	.label_328
.label_332:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rsp, rsp
	jne	.label_331
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_331
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	edx, dword ptr [rbp - 4]
	mov	rsi, rcx
	call	rax
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], r8b
.label_331:
	lea	rsi, [rsi]
	jmp	.label_330
.label_330:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_333
.label_328:
	jmp	.label_327
.label_327:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f20

	.globl fnmatch_no_wildcards
	.type fnmatch_no_wildcards, @function
fnmatch_no_wildcards:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x14], edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 8
	cmp	edx, 0
	lea	rdi, [rdi]
	jne	.label_341
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_334
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	mbscasecmp
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_339
.label_334:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	strcmp
	mov	dword ptr [rbp - 0x18], eax
.label_339:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_338
.label_341:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_343
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	strncmp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jne	.label_340
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], edx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x2f
	lea	rdi, [rdi]
	jne	.label_344
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_344:
	jmp	.label_340
.label_340:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_338
.label_343:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	xstrdup
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_335:
	nop	
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	strchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_336
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
.label_336:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	mbscasecmp
	mov	dword ptr [rbp - 0xc], eax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_337
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jg	.label_342
.label_337:
	lea	rdi, [rdi]
	jmp	.label_346
.label_342:
	jmp	.label_345
.label_345:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	jmp	.label_335
.label_346:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
.label_338:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407110

	.globl excluded_file_name
	.type excluded_file_name, @function
excluded_file_name:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi], 0
	jne	.label_351
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0
	nop	
	jmp	.label_349
.label_351:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
.label_358:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 8], 0
	jne	.label_353
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_356
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_356:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	call	file_name_matches
	test	al, 1
	nop	
	jne	.label_357
	jmp	.label_359
.label_357:
	lea	rdi, [rdi]
	jmp	.label_347
.label_359:
	mov	rsp, rsp
	jmp	.label_350
.label_353:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	file_pattern_matches
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_354
	jmp	.label_355
.label_354:
	mov	rbp, rbp
	jmp	.label_347
.label_355:
	mov	rbp, rbp
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_348
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_347
.label_348:
	jmp	.label_352
.label_352:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_358
.label_347:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rdi + 0xc]
	nop	
	and	edx, 0x20000000
	cmp	edx, 0
	mov	rsp, rsp
	setne	al
	mov	rsp, rsp
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	xor	ecx, edx
	cmp	ecx, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
.label_349:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072a0

	.globl file_name_matches
	.type file_name_matches, @function
file_name_matches:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rdx + 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_360:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	strcpy
	mov	qword ptr [rbp - 8], rax
.label_362:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	hash_lookup
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_370
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_361
.label_370:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 8
	nop	
	cmp	eax, 0
	je	.label_364
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	strrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_369
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	jmp	.label_362
.label_369:
	lea	rsi, [rsi]
	jmp	.label_364
.label_364:
	jmp	.label_365
.label_365:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	and	eax, 0x40000000
	cmp	eax, 0
	jne	.label_366
	lea	rsi, [rsi]
	mov	esi, 0x2f
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	strchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_363
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_363:
	mov	rsp, rsp
	jmp	.label_367
.label_366:
	lea	rdi, [rdi]
	jmp	.label_368
.label_367:
	mov	rbp, rbp
	jmp	.label_371
.label_371:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_360
.label_368:
	mov	byte ptr [rbp - 0x19], 0
.label_361:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073f0

	.globl file_pattern_matches
	.type file_pattern_matches, @function
file_pattern_matches:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], 0
.label_374:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_375
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10], 0x48
	nop	
	add	rax, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	exclude_patopts
	test	al, 1
	jne	.label_373
	lea	rsi, [rsi]
	jmp	.label_376
.label_373:
	nop	
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_372
.label_376:
	jmp	.label_377
.label_377:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_374
.label_375:
	mov	byte ptr [rbp - 0x11], 0
.label_372:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074c0

	.globl add_exclude
	.type add_exclude, @function
add_exclude:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x80
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], edx
	mov	edx, dword ptr [rbp - 0x5c]
	and	edx, 0x18000000
	cmp	edx, 0
	je	.label_381
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5c]
	call	fnmatch_pattern_has_wildcards
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_378
	lea	rsi, [rsi]
	jmp	.label_381
.label_378:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	je	.label_384
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	cmp	dword ptr [rax + 8], 1
	jne	.label_384
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	and	ecx, 0x20000000
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	and	edx, 0x20000000
	cmp	ecx, edx
	lea	rsi, [rsi]
	je	.label_388
.label_384:
	mov	rsp, rsp
	mov	esi, 1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x5c]
	nop	
	call	new_exclude_segment
.label_388:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_380
	mov	eax, 0x48
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 8
	nop	
	mov	rdi, rcx
	mov	rbp, rbp
	call	x2nrealloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_380:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	imul	rcx, rcx, 0x48
	nop	
	add	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rcx
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	nop	
	mov	esi, dword ptr [rbp - 0x5c]
	and	esi, 0x8000000
	cmp	esi, 0
	je	.label_398
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 2
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x5c]
	and	edx, 0x10
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, 9
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_389
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_393:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], cl
	mov	rbp, rbp
	jbe	.label_383
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	mov	rbp, rbp
	sete	sil
	mov	byte ptr [rbp - 0x49], sil
.label_383:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x49]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_391
	nop	
	jmp	.label_392
.label_391:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_393
.label_392:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_399
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_379
.label_399:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 7
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str_6
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rdx, 8
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rdi, rdx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	call	rpl_regcomp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	call	free
.label_379:
	jmp	.label_385
.label_389:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, rax
	mov	rbp, rbp
	call	rpl_regcomp
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
.label_385:
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	je	.label_386
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rcx
	jmp	.label_382
.label_386:
	mov	rbp, rbp
	jmp	.label_394
.label_398:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	and	eax, 0x4000000
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_396
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrdup
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x58]
	call	exclude_add_pattern_buffer
.label_396:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
.label_394:
	jmp	.label_382
.label_381:
	nop	
	mov	dword ptr [rbp - 0x24], 0x60000018
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_387
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 8], 0
	mov	rsp, rsp
	jne	.label_387
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	and	edx, dword ptr [rbp - 0x24]
	cmp	ecx, edx
	mov	rbp, rbp
	je	.label_395
.label_387:
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x5c]
	call	new_exclude_segment
.label_395:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	xstrdup
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	and	ecx, 0x10000002
	mov	rbp, rbp
	cmp	ecx, 0x10000000
	jne	.label_390
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	unescape_pattern
.label_390:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	hash_insert
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_397
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
.label_397:
	nop	
	jmp	.label_382
.label_382:
	add	rsp, 0x80
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407950

	.globl new_exclude_segment
	.type new_exclude_segment, @function
new_exclude_segment:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x38], rdi
	mov	dword ptr [rbp - 0x30], esi
	mov	dword ptr [rbp - 0x14], edx
	nop	
	mov	edx, 0x28
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rsi, [rsi]
	call	xzalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax + 8], edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0xc], edx
	mov	edx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	edx, edx
	mov	dword ptr [rbp - 4], edx
	je	.label_402
	jmp	.label_401
.label_401:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	jne	.label_400
	jmp	.label_403
.label_403:
	lea	rdi, [rdi]
	jmp	.label_400
.label_402:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	movabs	r8, OFFSET FLAT:string_free
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:string_compare
	movabs	rsi, OFFSET FLAT:string_compare_ci
	movabs	rdi, OFFSET FLAT:string_hasher
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:string_hasher_ci
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	cmovne	rdi, r9
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	cmovne	rdx, rsi
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
.label_400:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407aa0

	.globl unescape_pattern
	.type unescape_pattern, @function
unescape_pattern:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
.label_405:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x5c
	mov	byte ptr [rbp - 9], cl
	jne	.label_404
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], dl
.label_404:
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	add	rdx, rsi
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], dl
	cmp	dl, 0
	nop	
	jne	.label_405
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b50

	.globl add_exclude_fp
	.type add_exclude_fp, @function
add_exclude_fp:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], ecx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], al
	nop	
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], 0
	mov	dword ptr [rbp - 0x1c], 0
.label_415:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	getc_unlocked
	mov	dword ptr [rbp - 0x94], eax
	nop	
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_421
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_407
	lea	rsi, [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2realloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_407:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	lea	rsi, [rsi]
	jmp	.label_415
.label_421:
	mov	rdi, qword ptr [rbp - 0x80]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_419
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
.label_419:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rax, 1
	mov	rsi, rax
	nop	
	call	xrealloc
	mov	rsp, rsp
	mov	cl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	dl, byte ptr [rbp - 0x42]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rax], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 0
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], cl
	je	.label_416
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi, byte ptr [rbp - 0x42]
	mov	rsp, rsp
	cmp	edx, esi
	mov	rbp, rbp
	sete	dil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41], dil
.label_416:
	mov	al, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	exclude_add_pattern_buffer
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rdx
.label_413:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_417
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	movsx	edx, byte ptr [rbp - 0x42]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_422
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x30], rax
	movzx	ecx, byte ptr [rbp - 0x42]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x60], rax
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + rdx*2]
	nop	
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_410
	jmp	.label_412
.label_412:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_414
	jmp	.label_420
.label_414:
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax - 1]
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	jne	.label_408
	jmp	.label_409
.label_408:
	lea	rsi, [rsi]
	jmp	.label_418
.label_418:
	jmp	.label_406
.label_406:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_412
.label_409:
	lea	rsi, [rsi]
	jmp	.label_410
.label_410:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	rax
.label_420:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_422:
	jmp	.label_411
.label_411:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_413
.label_417:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	mov	esi, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	cmp	dword ptr [rbp - 0x1c], 0
	cmovne	ecx, edx
	mov	eax, ecx
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407eb0

	.globl add_exclude_file
	.type add_exclude_file, @function
add_exclude_file:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, r8b
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	byte ptr [rbp - 0x32], al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdx]
	cmp	ecx, 0x2d
	mov	byte ptr [rbp - 0x31], r9b
	jne	.label_426
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 1], 0
	lea	rdi, [rdi]
	setne	cl
	xor	cl, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
.label_426:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x1d], al
	mov	dword ptr [rbp - 0x1c], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1d], 1
	lea	rdi, [rdi]
	je	.label_425
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_427
.label_425:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_424
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_428
.label_424:
	jmp	.label_427
.label_427:
	nop	
	movabs	rdi, OFFSET FLAT:call_addfn
	lea	rax, [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x32]
	lea	rdi, [rdi]
	movsx	r8d, r8b
	mov	r9, rax
	lea	rsi, [rsi]
	call	add_exclude_fp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_423
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	rpl_fclose
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_423
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_423:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 8], eax
.label_428:
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408010

	.globl call_addfn
	.type call_addfn, @function
call_addfn:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	dword ptr [rbp - 4], edx
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	rcx
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408070

	.globl exclude_patopts
	.type exclude_patopts, @function
exclude_patopts:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x8000000
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_429
	xor	eax, eax
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rdx
	mov	rdx, rcx
	call	rpl_regexec
	cmp	eax, 0
	nop	
	sete	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	eax, r9b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_430
.label_429:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rbp - 4]
	call	exclude_fnmatch
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	mov	dword ptr [rbp - 0x1c], edx
.label_430:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408130

	.globl string_hasher_ci
	.type string_hasher_ci, @function
string_hasher_ci:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	mov	rbp, rbp
	lea	r8, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x60], 0
	add	r8, 4
	mov	rdi, r8
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x54], 0
.label_434:
	lea	rdi, [rbp - 0x60]
	mov	rbp, rbp
	call	mbuiter_multi_next
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x40], 1
	mov	byte ptr [rbp - 1], cl
	je	.label_431
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	sete	al
	nop	
	mov	byte ptr [rbp - 1], al
.label_431:
	mov	al, byte ptr [rbp - 1]
	xor	al, 0xff
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_433
	jmp	.label_435
.label_433:
	mov	eax, 0x30
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x60]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	test	byte ptr [rbp - 0x80], 1
	je	.label_432
	mov	edi, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	call	towlower
	mov	dword ptr [rbp - 8], eax
	nop	
	jmp	.label_436
.label_432:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 8], ecx
.label_436:
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, rcx
	xor	edx, edx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x54], 0
	jmp	.label_434
.label_435:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408290

	.globl string_hasher
	.type string_hasher, @function
string_hasher:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_string
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082d0

	.globl string_compare_ci
	.type string_compare_ci, @function
string_compare_ci:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	mbscasecmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408330

	.globl string_compare
	.type string_compare, @function
string_compare:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	strcmp
	cmp	eax, 0
	sete	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408390

	.globl string_free
	.type string_free, @function
string_free:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083d0

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
	.section	.text
	.align	16
	#Procedure 0x408460

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
	jne	.label_756
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 0x4c0], rax
.label_756:
	nop	
	cmp	dword ptr [rbp - 0x624], 0xc
	jle	.label_813
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x624]
	sub	eax, 0xc
	nop	
	mov	dword ptr [rbp - 0x624], eax
	jmp	.label_815
.label_813:
	cmp	dword ptr [rbp - 0x624], 0
	jne	.label_824
	nop	
	mov	dword ptr [rbp - 0x624], 0xc
.label_824:
	jmp	.label_815
.label_815:
	mov	rax, qword ptr [rbp - 0x6e8]
	mov	qword ptr [rbp - 0x7c0], rax
.label_784:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_833
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
	je	.label_840
	jmp	.label_857
.label_857:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x938], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x964], 0
	lea	rdi, [rdi]
	jge	.label_858
	xor	eax, eax
	mov	dword ptr [rbp - 0x958], eax
	jmp	.label_867
.label_858:
	mov	eax, dword ptr [rbp - 0x964]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x958], eax
.label_867:
	mov	eax, dword ptr [rbp - 0x958]
	mov	rbp, rbp
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x668], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x938]
	cmp	rcx, qword ptr [rbp - 0x668]
	mov	rsp, rsp
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x748], rax
	jmp	.label_887
.label_837:
	mov	rax, qword ptr [rbp - 0x938]
	mov	qword ptr [rbp - 0x748], rax
.label_887:
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x630], rax
	nop	
	mov	rax, qword ptr [rbp - 0x630]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x558]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_897
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_453
.label_897:
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_913
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	lea	rdi, [rdi]
	jne	.label_458
	mov	rax, qword ptr [rbp - 0x938]
	cmp	rax, qword ptr [rbp - 0x668]
	mov	rbp, rbp
	jae	.label_458
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8e8], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_927
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_940
.label_927:
	jmp	.label_943
.label_943:
	mov	qword ptr [rbp - 0x948], 0
.label_954:
	mov	rax, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x8e8]
	lea	rdi, [rdi]
	jae	.label_946
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
	jmp	.label_954
.label_946:
	lea	rsi, [rsi]
	jmp	.label_964
.label_964:
	mov	rbp, rbp
	jmp	.label_456
.label_940:
	jmp	.label_965
.label_965:
	nop	
	mov	qword ptr [rbp - 0x780], 0
.label_439:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x780]
	nop	
	cmp	rax, qword ptr [rbp - 0x8e8]
	jae	.label_971
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
	jmp	.label_439
.label_971:
	jmp	.label_452
.label_452:
	jmp	.label_456
.label_456:
	mov	rsp, rsp
	jmp	.label_458
.label_458:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0xa40], eax
.label_913:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_465
.label_840:
	lea	rsi, [rsi]
	jmp	.label_474
.label_474:
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
	je	.label_477
	jmp	.label_501
.label_501:
	nop	
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x930], eax
	je	.label_504
	lea	rdi, [rdi]
	jmp	.label_512
.label_512:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0xb50], eax
	je	.label_504
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0xaec]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xa98], eax
	je	.label_504
	jmp	.label_530
.label_530:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xaec]
	lea	rdi, [rdi]
	sub	eax, 0x5e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa60], eax
	je	.label_531
	mov	rsp, rsp
	jmp	.label_541
.label_541:
	nop	
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x7f0], eax
	lea	rsi, [rsi]
	jne	.label_542
	mov	rsp, rsp
	jmp	.label_504
.label_504:
	nop	
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8d0], ecx
	jmp	.label_474
.label_531:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb19], 1
	nop	
	jmp	.label_474
.label_477:
	mov	byte ptr [rbp - 0x549], 1
	jmp	.label_474
.label_542:
	mov	rbp, rbp
	jmp	.label_564
.label_564:
	jmp	.label_568
.label_568:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_570
	mov	dword ptr [rbp - 0x964], 0
.label_615:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x964], 0xccccccc
	jg	.label_657
	cmp	dword ptr [rbp - 0x964], 0xccccccc
	jne	.label_587
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 7
	jle	.label_587
.label_657:
	mov	dword ptr [rbp - 0x964], 0x7fffffff
	jmp	.label_599
.label_587:
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
.label_599:
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
	jbe	.label_615
	mov	rsp, rsp
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x92c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x974], edx
	je	.label_650
	lea	rsi, [rsi]
	jmp	.label_807
.label_807:
	mov	eax, dword ptr [rbp - 0x92c]
	sub	eax, 0x4f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jne	.label_466
	jmp	.label_650
.label_650:
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
	jmp	.label_651
.label_466:
	mov	dword ptr [rbp - 0x63c], 0
.label_651:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7a4], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x828], ecx
	nop	
	je	.label_667
	lea	rsi, [rsi]
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0xa28], eax
	mov	rbp, rbp
	je	.label_675
	jmp	.label_681
.label_681:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94c], eax
	je	.label_682
	jmp	.label_693
.label_693:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x8b0], eax
	je	.label_761
	jmp	.label_814
.label_814:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa34], eax
	je	.label_699
	jmp	.label_710
.label_710:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x43
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_713
	mov	rbp, rbp
	jmp	.label_720
.label_720:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb0c], eax
	nop	
	je	.label_722
	mov	rsp, rsp
	jmp	.label_730
.label_730:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x46
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x86c], eax
	nop	
	je	.label_734
	nop	
	jmp	.label_740
.label_740:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x72c], eax
	je	.label_741
	jmp	.label_746
.label_746:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0xb68], eax
	je	.label_748
	jmp	.label_753
.label_753:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x49
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x81c], eax
	je	.label_754
	jmp	.label_760
.label_760:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x5ac], eax
	je	.label_762
	jmp	.label_765
.label_765:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x93c], eax
	je	.label_767
	jmp	.label_726
.label_726:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7f8], eax
	nop	
	je	.label_663
	mov	rsp, rsp
	jmp	.label_779
.label_779:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x544], eax
	lea	rsi, [rsi]
	je	.label_783
	jmp	.label_788
.label_788:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x564], eax
	je	.label_789
	jmp	.label_796
.label_796:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x6d0], eax
	lea	rsi, [rsi]
	je	.label_797
	lea	rsi, [rsi]
	jmp	.label_803
.label_803:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x55
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa94], eax
	mov	rbp, rbp
	je	.label_806
	jmp	.label_811
.label_811:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x56
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x968], eax
	je	.label_741
	jmp	.label_819
.label_819:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x784], eax
	je	.label_822
	jmp	.label_828
.label_828:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0xafc], eax
	je	.label_551
	nop	
	jmp	.label_690
.label_690:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x6a0], eax
	lea	rdi, [rdi]
	je	.label_607
	mov	rbp, rbp
	jmp	.label_842
.label_842:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x59c], eax
	lea	rsi, [rsi]
	je	.label_660
	nop	
	jmp	.label_850
.label_850:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa9c], eax
	mov	rsp, rsp
	je	.label_852
	jmp	.label_860
.label_860:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x5ec], eax
	je	.label_863
	mov	rbp, rbp
	jmp	.label_799
.label_799:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x73c], eax
	je	.label_869
	nop	
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x824], eax
	je	.label_879
	nop	
	jmp	.label_903
.label_903:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0xb30], eax
	je	.label_910
	jmp	.label_896
.label_896:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x67
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x548], eax
	mov	rbp, rbp
	je	.label_741
	mov	rsp, rsp
	jmp	.label_905
.label_905:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 0x70], eax
	mov	rsp, rsp
	je	.label_863
	jmp	.label_514
.label_514:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_911
	jmp	.label_916
.label_916:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x99c], eax
	lea	rdi, [rdi]
	je	.label_917
	nop	
	jmp	.label_926
.label_926:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0x5cc], eax
	je	.label_928
	jmp	.label_935
.label_935:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x5d4], eax
	je	.label_937
	mov	rsp, rsp
	jmp	.label_973
.label_973:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x6fc], eax
	je	.label_944
	jmp	.label_950
.label_950:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x518], eax
	lea	rsi, [rsi]
	je	.label_774
	jmp	.label_955
.label_955:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_979
	jmp	.label_961
.label_961:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_963
	jmp	.label_966
.label_966:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x9dc], eax
	lea	rsi, [rsi]
	je	.label_968
	jmp	.label_976
.label_976:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x910], eax
	je	.label_958
	nop	
	jmp	.label_440
.label_440:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5d0], eax
	je	.label_443
	lea	rdi, [rdi]
	jmp	.label_454
.label_454:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x6c8], eax
	je	.label_636
	jmp	.label_462
.label_462:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x640], eax
	je	.label_463
	jmp	.label_470
.label_470:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x79
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x610], eax
	je	.label_550
	jmp	.label_930
.label_930:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb80], eax
	je	.label_480
	jmp	.label_490
.label_675:
	nop	
	cmp	dword ptr [rbp - 0x63c], 0
	mov	rsp, rsp
	je	.label_492
	jmp	.label_459
.label_492:
	mov	rsp, rsp
	jmp	.label_766
.label_766:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x498], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_505
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c4], eax
	jmp	.label_515
.label_505:
	mov	eax, dword ptr [rbp - 0x964]
	nop	
	mov	dword ptr [rbp - 0x6c4], eax
.label_515:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c4]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8a0], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x498]
	cmp	rcx, qword ptr [rbp - 0x8a0]
	jae	.label_525
	mov	rax, qword ptr [rbp - 0x8a0]
	nop	
	mov	qword ptr [rbp - 0x878], rax
	lea	rsi, [rsi]
	jmp	.label_539
.label_525:
	mov	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0x878], rax
.label_539:
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
	jb	.label_546
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	jmp	.label_453
.label_546:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_569
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_573
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x498]
	cmp	rax, qword ptr [rbp - 0x8a0]
	mov	rbp, rbp
	jae	.label_573
	movsxd	rax, dword ptr [rbp - 0x964]
	nop	
	sub	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0x988], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_586
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_595
.label_586:
	nop	
	jmp	.label_601
.label_601:
	nop	
	mov	qword ptr [rbp - 0x688], 0
.label_853:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x988]
	mov	rsp, rsp
	jae	.label_787
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x820], eax
	mov	rax, qword ptr [rbp - 0x688]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	mov	rbp, rbp
	jmp	.label_853
.label_787:
	lea	rdi, [rdi]
	jmp	.label_625
.label_625:
	nop	
	jmp	.label_627
.label_595:
	lea	rdi, [rdi]
	jmp	.label_931
.label_931:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb28], 0
.label_483:
	mov	rax, qword ptr [rbp - 0xb28]
	cmp	rax, qword ptr [rbp - 0x988]
	mov	rbp, rbp
	jae	.label_635
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0x6a4], eax
	mov	rax, qword ptr [rbp - 0xb28]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb28], rax
	jmp	.label_483
.label_635:
	lea	rsi, [rsi]
	jmp	.label_655
.label_655:
	lea	rsi, [rsi]
	jmp	.label_627
.label_627:
	mov	rsp, rsp
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0x7b4], eax
.label_569:
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rsp, rsp
	jmp	.label_646
.label_852:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_677
	lea	rsi, [rsi]
	jmp	.label_459
.label_677:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x549], 1
	nop	
	je	.label_684
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb19], 1
	mov	byte ptr [rbp - 0x909], 0
.label_684:
	mov	rsp, rsp
	jmp	.label_438
.label_761:
	cmp	dword ptr [rbp - 0x63c], 0
	nop	
	je	.label_696
	mov	rsp, rsp
	jmp	.label_459
.label_696:
	test	byte ptr [rbp - 0x549], 1
	lea	rdi, [rdi]
	je	.label_702
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb19], 1
	mov	byte ptr [rbp - 0x909], 0
.label_702:
	lea	rdi, [rdi]
	jmp	.label_438
.label_863:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x549], 1
	lea	rdi, [rdi]
	je	.label_715
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb19], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x909], 0
.label_715:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	nop	
	jne	.label_725
	nop	
	jmp	.label_459
.label_725:
	nop	
	jmp	.label_438
.label_699:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rbp, rbp
	jne	.label_737
	jmp	.label_459
.label_737:
	test	byte ptr [rbp - 0x549], 1
	je	.label_742
	mov	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x909], 0
.label_742:
	jmp	.label_438
.label_869:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	jne	.label_750
	jmp	.label_459
.label_750:
	lea	rdi, [rdi]
	jmp	.label_438
.label_441:
	mov	dword ptr [rbp - 0x68c], 0xffffffff
.label_608:
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
	jge	.label_781
	xor	eax, eax
	mov	dword ptr [rbp - 0x8ec], eax
	mov	rbp, rbp
	jmp	.label_790
.label_781:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x8ec], eax
.label_790:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8ec]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x960], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x960]
	nop	
	jae	.label_800
	mov	rax, qword ptr [rbp - 0x960]
	mov	qword ptr [rbp - 0x928], rax
	nop	
	jmp	.label_809
.label_800:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x928], rax
.label_809:
	mov	rax, qword ptr [rbp - 0x928]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb38], rax
	mov	rax, qword ptr [rbp - 0xb38]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_816
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_453
.label_816:
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rbp, rbp
	je	.label_834
	nop	
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_838
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x810]
	nop	
	cmp	rax, qword ptr [rbp - 0x960]
	lea	rsi, [rsi]
	jae	.label_838
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x980], rax
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0x30
	lea	rsi, [rsi]
	je	.label_848
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_859
.label_848:
	mov	rbp, rbp
	jmp	.label_864
.label_864:
	nop	
	mov	qword ptr [rbp - 0x6e0], 0
.label_884:
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x980]
	jae	.label_868
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
	jmp	.label_884
.label_868:
	nop	
	jmp	.label_891
.label_891:
	nop	
	jmp	.label_893
.label_859:
	jmp	.label_895
.label_895:
	mov	qword ptr [rbp - 0x580], 0
.label_909:
	mov	rax, qword ptr [rbp - 0x580]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x980]
	jae	.label_899
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x990], eax
	mov	rax, qword ptr [rbp - 0x580]
	add	rax, 1
	mov	qword ptr [rbp - 0x580], rax
	jmp	.label_909
.label_899:
	jmp	.label_914
.label_914:
	mov	rsp, rsp
	jmp	.label_893
.label_893:
	jmp	.label_838
.label_838:
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
.label_834:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb38]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_646
.label_438:
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
	je	.label_956
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
.label_956:
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
	je	.label_476
	jmp	.label_484
.label_484:
	mov	rax, qword ptr [rbp - 0x8b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x7d0], rax
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_488
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x534], eax
	mov	rsp, rsp
	jmp	.label_498
.label_488:
	nop	
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x534], eax
.label_498:
	nop	
	mov	eax, dword ptr [rbp - 0x534]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xae8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x7d0]
	cmp	rcx, qword ptr [rbp - 0xae8]
	mov	rsp, rsp
	jae	.label_511
	mov	rax, qword ptr [rbp - 0xae8]
	mov	qword ptr [rbp - 0x598], rax
	jmp	.label_524
.label_511:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0x598], rax
.label_524:
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x660], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x660]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	nop	
	cmp	rax, rcx
	jb	.label_535
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_453
.label_535:
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_549
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_556
	nop	
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xae8]
	lea	rsi, [rsi]
	jae	.label_556
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0x4e8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_567
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_579
.label_567:
	nop	
	jmp	.label_584
.label_584:
	mov	qword ptr [rbp - 0x638], 0
.label_603:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x638]
	cmp	rax, qword ptr [rbp - 0x4e8]
	lea	rdi, [rdi]
	jae	.label_588
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
	jmp	.label_603
.label_588:
	jmp	.label_827
.label_827:
	lea	rdi, [rdi]
	jmp	.label_643
.label_579:
	nop	
	jmp	.label_616
.label_616:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x888], 0
.label_632:
	nop	
	mov	rax, qword ptr [rbp - 0x888]
	cmp	rax, qword ptr [rbp - 0x4e8]
	jae	.label_875
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
	jmp	.label_632
.label_875:
	mov	rbp, rbp
	jmp	.label_455
.label_455:
	jmp	.label_643
.label_643:
	jmp	.label_556
.label_556:
	jmp	.label_645
.label_645:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	lea	rdi, [rdi]
	je	.label_647
	lea	rax, [rbp - 0x480]
	mov	rdi, qword ptr [rbp - 0xa58]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x7d0]
	mov	rsi, rax
	mov	rsp, rsp
	call	fwrite_lowcase
	jmp	.label_662
.label_647:
	test	byte ptr [rbp - 0xb19], 1
	je	.label_664
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
	jmp	.label_676
.label_664:
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
.label_676:
	jmp	.label_662
.label_662:
	lea	rdi, [rdi]
	jmp	.label_700
.label_700:
	jmp	.label_549
.label_549:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x660]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_476
.label_476:
	jmp	.label_646
.label_713:
	cmp	dword ptr [rbp - 0x63c], 0x45
	nop	
	jne	.label_717
	nop	
	jmp	.label_438
.label_717:
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
	jge	.label_724
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x504]
	mov	rsp, rsp
	setl	cl
	mov	byte ptr [rbp - 0xb49], cl
.label_724:
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
	jmp	.label_536
.label_463:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x4f
	nop	
	jne	.label_777
	lea	rdi, [rdi]
	jmp	.label_459
.label_777:
	jmp	.label_438
.label_722:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_786
	mov	rsp, rsp
	jmp	.label_459
.label_786:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.1_3
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_441
.label_879:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_876
	mov	rbp, rbp
	jmp	.label_459
.label_876:
	lea	rdi, [rdi]
	jmp	.label_802
.label_802:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xa24], ecx
	lea	rsi, [rsi]
	jmp	.label_460
.label_910:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_812
	mov	rsp, rsp
	jmp	.label_459
.label_812:
	jmp	.label_817
.label_817:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xa24], ecx
	nop	
	jmp	.label_528
.label_451:
	mov	byte ptr [rbp - 0xa15], 1
	mov	rbp, rbp
	jmp	.label_829
.label_536:
	cmp	dword ptr [rbp - 0x8d0], 0
	jne	.label_572
	nop	
	mov	eax, dword ptr [rbp - 0x524]
	mov	dword ptr [rbp - 0x8d0], eax
.label_572:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	byte ptr [rbp - 0x749], cl
	nop	
	jne	.label_836
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
	jb	.label_845
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x588]
	nop	
	cmp	eax, dword ptr [rbp - 0x964]
	setl	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71d], cl
.label_845:
	mov	al, byte ptr [rbp - 0x71d]
	mov	byte ptr [rbp - 0x749], al
.label_836:
	nop	
	mov	al, byte ptr [rbp - 0x749]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa15], al
	mov	rbp, rbp
	jmp	.label_880
.label_528:
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0
	mov	rbp, rbp
	jne	.label_873
	mov	dword ptr [rbp - 0x8d0], 0x5f
.label_873:
	mov	rsp, rsp
	jmp	.label_460
.label_460:
	cmp	dword ptr [rbp - 0xa24], 0
	lea	rdi, [rdi]
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x7d1], al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xa24]
	mov	dword ptr [rbp - 0x4b0], ecx
.label_562:
	mov	byte ptr [rbp - 0xa15], 0
.label_880:
	mov	dword ptr [rbp - 0x6ec], 0
.label_829:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	mov	rsp, rsp
	jne	.label_900
	nop	
	test	byte ptr [rbp - 0x7d1], 1
	nop	
	jne	.label_900
	nop	
	jmp	.label_438
.label_900:
	lea	rax, [rbp - 0x680]
	add	rax, 0x17
	nop	
	mov	qword ptr [rbp - 0x5e0], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7d1], 1
	mov	rbp, rbp
	je	.label_908
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], eax
.label_908:
	mov	rbp, rbp
	jmp	.label_593
.label_593:
	mov	eax, dword ptr [rbp - 0x6ec]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_922
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x5e0], rcx
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0x3a
.label_922:
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
	jne	.label_939
	cmp	dword ptr [rbp - 0x6ec], 0
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6fd], al
.label_939:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x6fd]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_593
	mov	rbp, rbp
	jmp	.label_461
.label_461:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x588]
	cmp	eax, dword ptr [rbp - 0x964]
	jge	.label_978
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x588], eax
.label_978:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7d1], 1
	je	.label_447
	mov	rbp, rbp
	mov	eax, 0x2d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x954], eax
	nop	
	jmp	.label_457
.label_447:
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
.label_457:
	mov	eax, dword ptr [rbp - 0x954]
	mov	cl, al
	mov	byte ptr [rbp - 0x801], cl
	cmp	dword ptr [rbp - 0x8d0], 0x2d
	jne	.label_472
	cmp	byte ptr [rbp - 0x801], 0
	lea	rsi, [rsi]
	je	.label_479
	jmp	.label_487
.label_487:
	mov	qword ptr [rbp - 0xa90], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_489
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_496
.label_489:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x14], eax
.label_496:
	mov	eax, dword ptr [rbp - 0x14]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb70], rcx
	mov	rcx, qword ptr [rbp - 0xa90]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0xb70]
	lea	rdi, [rdi]
	jae	.label_509
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb70]
	mov	qword ptr [rbp - 0xb48], rax
	nop	
	jmp	.label_855
.label_509:
	mov	rax, qword ptr [rbp - 0xa90]
	mov	qword ptr [rbp - 0xb48], rax
.label_855:
	mov	rax, qword ptr [rbp - 0xb48]
	mov	qword ptr [rbp - 0x9f8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x9f8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_532
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_453
.label_532:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_548
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_553
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa90]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xb70]
	nop	
	jae	.label_553
	movsxd	rax, dword ptr [rbp - 0x964]
	nop	
	sub	rax, qword ptr [rbp - 0xa90]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_566
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_577
.label_566:
	mov	rbp, rbp
	jmp	.label_583
.label_583:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa70], 0
.label_605:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	jae	.label_590
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
	jmp	.label_605
.label_590:
	jmp	.label_610
.label_610:
	lea	rdi, [rdi]
	jmp	.label_612
.label_577:
	mov	rbp, rbp
	jmp	.label_614
.label_614:
	mov	qword ptr [rbp - 0x8d8], 0
.label_628:
	mov	rax, qword ptr [rbp - 0x8d8]
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jae	.label_619
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
	jmp	.label_628
.label_619:
	mov	rsp, rsp
	jmp	.label_638
.label_638:
	jmp	.label_612
.label_612:
	nop	
	jmp	.label_553
.label_553:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp - 0x801]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x908], eax
.label_548:
	mov	rax, qword ptr [rbp - 0x9f8]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_479
.label_479:
	lea	rsi, [rsi]
	jmp	.label_658
.label_472:
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
	jle	.label_659
	cmp	dword ptr [rbp - 0x8d0], 0x5f
	lea	rdi, [rdi]
	jne	.label_687
	movsxd	rax, dword ptr [rbp - 0x4b4]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jb	.label_691
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_453
.label_691:
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_494
	mov	rsp, rsp
	jmp	.label_711
.label_711:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], 0
.label_731:
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x4b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_716
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
	jmp	.label_731
.label_716:
	jmp	.label_444
.label_444:
	jmp	.label_494
.label_494:
	movsxd	rax, dword ptr [rbp - 0x4b4]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	ecx, dword ptr [rbp - 0x964]
	cmp	ecx, dword ptr [rbp - 0x4b4]
	mov	rbp, rbp
	jle	.label_743
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x4b4]
	nop	
	mov	dword ptr [rbp - 0x628], eax
	lea	rsi, [rsi]
	jmp	.label_752
.label_743:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x628], eax
	mov	rsp, rsp
	jmp	.label_752
.label_752:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x628]
	mov	dword ptr [rbp - 0x964], eax
	cmp	byte ptr [rbp - 0x801], 0
	nop	
	je	.label_763
	jmp	.label_770
.label_770:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x738], 1
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_771
	xor	eax, eax
	mov	dword ptr [rbp - 0x508], eax
	mov	rbp, rbp
	jmp	.label_776
.label_771:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x508], eax
.label_776:
	mov	eax, dword ptr [rbp - 0x508]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x578], rcx
	mov	rcx, qword ptr [rbp - 0x738]
	cmp	rcx, qword ptr [rbp - 0x578]
	mov	rsp, rsp
	jae	.label_888
	nop	
	mov	rax, qword ptr [rbp - 0x578]
	nop	
	mov	qword ptr [rbp - 0xa00], rax
	jmp	.label_795
.label_888:
	nop	
	mov	rax, qword ptr [rbp - 0x738]
	mov	qword ptr [rbp - 0xa00], rax
.label_795:
	mov	rax, qword ptr [rbp - 0xa00]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x570], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x570]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_804
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_453
.label_804:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_821
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_826
	mov	rax, qword ptr [rbp - 0x738]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x578]
	jae	.label_826
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x738]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa80], rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_832
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_844
.label_832:
	jmp	.label_847
.label_847:
	mov	qword ptr [rbp - 0x818], 0
.label_861:
	mov	rax, qword ptr [rbp - 0x818]
	cmp	rax, qword ptr [rbp - 0xa80]
	jae	.label_703
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
	jmp	.label_861
.label_703:
	jmp	.label_871
.label_871:
	mov	rsp, rsp
	jmp	.label_872
.label_844:
	mov	rsp, rsp
	jmp	.label_874
.label_874:
	nop	
	mov	qword ptr [rbp - 0x728], 0
.label_894:
	mov	rax, qword ptr [rbp - 0x728]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa80]
	jae	.label_882
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
	jmp	.label_894
.label_882:
	jmp	.label_904
.label_904:
	jmp	.label_872
.label_872:
	jmp	.label_826
.label_826:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 0x801]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x8ac], eax
.label_821:
	nop	
	mov	rax, qword ptr [rbp - 0x570]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_763
.label_763:
	jmp	.label_919
.label_687:
	movsxd	rax, dword ptr [rbp - 0x588]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_921
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	jmp	.label_453
.label_921:
	cmp	byte ptr [rbp - 0x801], 0
	je	.label_560
	mov	rbp, rbp
	jmp	.label_941
.label_941:
	mov	qword ptr [rbp - 0x850], 1
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_942
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 0xadc], eax
	jmp	.label_949
.label_942:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0xadc], eax
.label_949:
	mov	eax, dword ptr [rbp - 0xadc]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x848], rcx
	mov	rcx, qword ptr [rbp - 0x850]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x848]
	jae	.label_953
	mov	rax, qword ptr [rbp - 0x848]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa8], rax
	jmp	.label_962
.label_953:
	mov	rax, qword ptr [rbp - 0x850]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa8], rax
.label_962:
	mov	rax, qword ptr [rbp - 0xaa8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4a0]
	mov	rcx, qword ptr [rbp - 0x558]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_970
	mov	qword ptr [rbp - 0xad8], 0
	mov	rsp, rsp
	jmp	.label_453
.label_970:
	cmp	qword ptr [rbp - 0xa58], 0
	lea	rdi, [rdi]
	je	.label_445
	nop	
	cmp	dword ptr [rbp - 0x588], 0
	lea	rdi, [rdi]
	jne	.label_522
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x850]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x848]
	jae	.label_522
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x6c0], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_945
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_712
.label_945:
	jmp	.label_478
.label_478:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
.label_503:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x6c0]
	mov	rsp, rsp
	jae	.label_486
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
	jmp	.label_503
.label_486:
	mov	rbp, rbp
	jmp	.label_513
.label_513:
	jmp	.label_516
.label_712:
	lea	rsi, [rsi]
	jmp	.label_517
.label_517:
	mov	qword ptr [rbp - 0x530], 0
.label_923:
	mov	rax, qword ptr [rbp - 0x530]
	cmp	rax, qword ptr [rbp - 0x6c0]
	lea	rdi, [rdi]
	jae	.label_523
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
	jmp	.label_923
.label_523:
	lea	rdi, [rdi]
	jmp	.label_544
.label_544:
	jmp	.label_516
.label_516:
	lea	rsi, [rsi]
	jmp	.label_522
.label_522:
	movsx	edi, byte ptr [rbp - 0x801]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x71c], eax
.label_445:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4a0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_560
.label_560:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_594
	jmp	.label_574
.label_574:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], 0
.label_596:
	mov	rax, qword ptr [rbp - 0x838]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x4b4]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_580
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
	jmp	.label_596
.label_580:
	jmp	.label_606
.label_606:
	mov	rsp, rsp
	jmp	.label_594
.label_594:
	movsxd	rax, dword ptr [rbp - 0x4b4]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x964], 0
.label_919:
	jmp	.label_617
.label_659:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0x801], 0
	nop	
	je	.label_620
	jmp	.label_622
.label_622:
	mov	qword ptr [rbp - 0x58], 1
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_624
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	jmp	.label_629
.label_624:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x34], eax
.label_629:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb40], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0xb40]
	nop	
	jae	.label_637
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb40]
	mov	qword ptr [rbp - 0x560], rax
	nop	
	jmp	.label_648
.label_637:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x560], rax
.label_648:
	mov	rax, qword ptr [rbp - 0x560]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7e0], rax
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_563
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_453
.label_563:
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rbp, rbp
	je	.label_673
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_678
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0xb40]
	mov	rsp, rsp
	jae	.label_678
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x998], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_689
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_698
.label_689:
	lea	rsi, [rsi]
	jmp	.label_701
.label_701:
	mov	qword ptr [rbp - 0x590], 0
.label_721:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x998]
	jae	.label_708
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
	jmp	.label_721
.label_708:
	jmp	.label_735
.label_735:
	lea	rsi, [rsi]
	jmp	.label_736
.label_698:
	jmp	.label_738
.label_738:
	mov	qword ptr [rbp - 0x898], 0
.label_751:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x898]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x998]
	jae	.label_485
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
	jmp	.label_751
.label_485:
	jmp	.label_759
.label_759:
	mov	rbp, rbp
	jmp	.label_736
.label_736:
	jmp	.label_678
.label_678:
	movsx	edi, byte ptr [rbp - 0x801]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x7e8], eax
.label_673:
	mov	rax, qword ptr [rbp - 0x7e0]
	nop	
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_620
.label_620:
	mov	rbp, rbp
	jmp	.label_617
.label_617:
	mov	rbp, rbp
	jmp	.label_658
.label_658:
	jmp	.label_780
.label_780:
	lea	rax, [rbp - 0x680]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0x5e0]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa20], rax
	cmp	dword ptr [rbp - 0x964], 0
	mov	rbp, rbp
	jge	.label_782
	xor	eax, eax
	mov	dword ptr [rbp - 0x69c], eax
	lea	rsi, [rsi]
	jmp	.label_792
.label_782:
	mov	eax, dword ptr [rbp - 0x964]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x69c], eax
.label_792:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x69c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x698], rcx
	mov	rcx, qword ptr [rbp - 0xa20]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x698]
	jae	.label_906
	mov	rax, qword ptr [rbp - 0x698]
	mov	qword ptr [rbp - 0x5f8], rax
	jmp	.label_810
.label_906:
	mov	rax, qword ptr [rbp - 0xa20]
	mov	qword ptr [rbp - 0x5f8], rax
.label_810:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_818
	nop	
	mov	qword ptr [rbp - 0xad8], 0
	mov	rsp, rsp
	jmp	.label_453
.label_818:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_835
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_839
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa20]
	nop	
	cmp	rax, qword ptr [rbp - 0x698]
	lea	rsi, [rsi]
	jae	.label_839
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xa20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x900], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_849
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_862
.label_849:
	nop	
	jmp	.label_865
.label_865:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c8], 0
.label_881:
	mov	rax, qword ptr [rbp - 0x5c8]
	cmp	rax, qword ptr [rbp - 0x900]
	jae	.label_870
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x774], eax
	mov	rax, qword ptr [rbp - 0x5c8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x5c8], rax
	jmp	.label_881
.label_870:
	jmp	.label_889
.label_889:
	jmp	.label_892
.label_862:
	lea	rdi, [rdi]
	jmp	.label_933
.label_933:
	mov	qword ptr [rbp - 0xb18], 0
.label_907:
	mov	rax, qword ptr [rbp - 0xb18]
	cmp	rax, qword ptr [rbp - 0x900]
	lea	rdi, [rdi]
	jae	.label_898
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
	jmp	.label_907
.label_898:
	lea	rdi, [rdi]
	jmp	.label_915
.label_915:
	nop	
	jmp	.label_892
.label_892:
	jmp	.label_839
.label_839:
	lea	rdi, [rdi]
	jmp	.label_918
.label_918:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	je	.label_920
	nop	
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rdx, qword ptr [rbp - 0xa20]
	nop	
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_934
.label_920:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	je	.label_936
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	call	fwrite_uppcase
	jmp	.label_951
.label_936:
	nop	
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x5e0]
	mov	rsi, qword ptr [rbp - 0xa20]
	mov	rcx, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fwrite
	mov	qword ptr [rbp - 0xab8], rax
.label_951:
	mov	rbp, rbp
	jmp	.label_934
.label_934:
	mov	rsp, rsp
	jmp	.label_959
.label_959:
	lea	rdi, [rdi]
	jmp	.label_835
.label_835:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x718]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_646
.label_734:
	cmp	dword ptr [rbp - 0x63c], 0
	nop	
	je	.label_972
	jmp	.label_459
.label_972:
	cmp	dword ptr [rbp - 0x8d0], 0
	nop	
	jne	.label_957
	cmp	dword ptr [rbp - 0x964], 0
	mov	rbp, rbp
	jge	.label_957
	mov	dword ptr [rbp - 0x8d0], 0x2b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68c], 4
	jmp	.label_442
.label_957:
	mov	eax, dword ptr [rbp - 0x964]
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x68c], 0
	jge	.label_450
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68c], 0
.label_450:
	jmp	.label_442
.label_442:
	movabs	rax, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x790], rax
	lea	rdi, [rdi]
	jmp	.label_608
.label_748:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_475
	jmp	.label_459
.label_475:
	jmp	.label_481
.label_481:
	mov	dword ptr [rbp - 0x588], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_460
.label_754:
	nop	
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_495
	mov	rbp, rbp
	jmp	.label_459
.label_495:
	mov	rbp, rbp
	jmp	.label_506
.label_506:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0xa24], eax
	nop	
	jmp	.label_460
.label_917:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_519
	jmp	.label_459
.label_519:
	jmp	.label_526
.label_526:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_528
.label_928:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_538
	lea	rdi, [rdi]
	jmp	.label_459
.label_538:
	jmp	.label_543
.label_543:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0xa24], eax
	lea	rsi, [rsi]
	jmp	.label_528
.label_911:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_554
	jmp	.label_459
.label_554:
	nop	
	jmp	.label_559
.label_559:
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
	jmp	.label_562
.label_762:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_581
	mov	rbp, rbp
	jmp	.label_459
.label_581:
	jmp	.label_589
.label_589:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_460
.label_937:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_600
	lea	rdi, [rdi]
	jmp	.label_459
.label_600:
	mov	rbp, rbp
	jmp	.label_794
.label_794:
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
	jmp	.label_562
.label_767:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rsi, [rsi]
	jne	.label_626
	jmp	.label_459
.label_626:
	nop	
	mov	eax, dword ptr [rbp - 0x4ac]
	mov	dword ptr [rbp - 0xa24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x964], -1
	lea	rdi, [rdi]
	jne	.label_948
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x964], 9
	jmp	.label_641
.label_948:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9f0], eax
.label_654:
	nop	
	cmp	dword ptr [rbp - 0x9f0], 9
	jge	.label_520
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
	jmp	.label_654
.label_520:
	jmp	.label_641
.label_641:
	jmp	.label_670
.label_670:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x588], eax
	nop	
	mov	eax, dword ptr [rbp - 0xa24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_460
.label_944:
	jmp	.label_683
.label_683:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x868], 1
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_685
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x794], eax
	nop	
	jmp	.label_695
.label_685:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x794], eax
.label_695:
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
	jae	.label_704
	mov	rax, qword ptr [rbp - 0xb78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_912
.label_704:
	mov	rax, qword ptr [rbp - 0x868]
	mov	qword ptr [rbp - 0x40], rax
.label_912:
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
	jb	.label_728
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_453
.label_728:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	lea	rsi, [rsi]
	je	.label_537
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_597
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x868]
	cmp	rax, qword ptr [rbp - 0xb78]
	mov	rsp, rsp
	jae	.label_597
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x868]
	nop	
	mov	qword ptr [rbp - 0xa08], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x30
	lea	rdi, [rdi]
	je	.label_639
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_769
.label_639:
	jmp	.label_739
.label_739:
	mov	qword ptr [rbp - 0x78], 0
.label_644:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa08]
	lea	rdi, [rdi]
	jae	.label_755
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
	jmp	.label_644
.label_755:
	jmp	.label_793
.label_793:
	lea	rdi, [rdi]
	jmp	.label_502
.label_769:
	lea	rdi, [rdi]
	jmp	.label_820
.label_820:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x920], 0
.label_805:
	mov	rax, qword ptr [rbp - 0x920]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xa08]
	jae	.label_437
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
	jmp	.label_805
.label_437:
	mov	rbp, rbp
	jmp	.label_668
.label_668:
	lea	rsi, [rsi]
	jmp	.label_502
.label_502:
	jmp	.label_597
.label_597:
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x6cc], eax
.label_537:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x760]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_646
.label_663:
	mov	byte ptr [rbp - 0x909], 1
	mov	dword ptr [rbp - 0x7a4], 0x70
.label_774:
	test	byte ptr [rbp - 0x549], 1
	je	.label_843
	mov	byte ptr [rbp - 0xb19], 0
	nop	
	mov	byte ptr [rbp - 0x909], 1
.label_843:
	mov	rbp, rbp
	jmp	.label_438
.label_979:
	mov	rsp, rsp
	jmp	.label_851
.label_851:
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
	jmp	.label_562
.label_783:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.3_1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_441
.label_963:
	jmp	.label_438
.label_789:
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rsi, [rsi]
	jne	.label_878
	mov	rsp, rsp
	jmp	.label_459
.label_878:
	lea	rsi, [rsi]
	jmp	.label_885
.label_885:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_460
.label_968:
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
.label_469:
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
	je	.label_925
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x870]
	mov	dword ptr [rbp - 0x978], eax
	mov	rsp, rsp
	jmp	.label_947
.label_925:
	nop	
	mov	eax, dword ptr [rbp - 0x870]
	mov	dword ptr [rbp - 0x978], eax
.label_947:
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
	jne	.label_469
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x588], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa15], 0
	mov	rsp, rsp
	jmp	.label_461
.label_551:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	lea	rdi, [rdi]
	jne	.label_977
	mov	rsp, rsp
	jmp	.label_459
.label_977:
	jmp	.label_438
.label_797:
	movabs	rax, OFFSET FLAT:.str.4_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_441
.label_958:
	jmp	.label_510
.label_510:
	mov	qword ptr [rbp - 0xb90], 1
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_634
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x4d0], eax
	mov	rbp, rbp
	jmp	.label_578
.label_634:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x4d0], eax
.label_578:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4d0]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8c8], rcx
	mov	rcx, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x8c8]
	jae	.label_467
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x8c8]
	mov	qword ptr [rbp - 0xac0], rax
	mov	rbp, rbp
	jmp	.label_482
.label_467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xac0], rax
.label_482:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xac0]
	mov	qword ptr [rbp - 0x858], rax
	mov	rax, qword ptr [rbp - 0x858]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	nop	
	cmp	rax, rcx
	jb	.label_499
	mov	qword ptr [rbp - 0xad8], 0
	nop	
	jmp	.label_453
.label_499:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rsp, rsp
	je	.label_854
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_529
	mov	rax, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x8c8]
	lea	rdi, [rdi]
	jae	.label_529
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x890], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_540
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_473
.label_540:
	jmp	.label_552
.label_552:
	mov	qword ptr [rbp - 0x510], 0
.label_571:
	mov	rax, qword ptr [rbp - 0x510]
	nop	
	cmp	rax, qword ptr [rbp - 0x890]
	lea	rdi, [rdi]
	jae	.label_558
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
	jmp	.label_571
.label_558:
	mov	rbp, rbp
	jmp	.label_582
.label_582:
	jmp	.label_613
.label_473:
	lea	rsi, [rsi]
	jmp	.label_679
.label_679:
	mov	qword ptr [rbp - 0x8a8], 0
.label_604:
	mov	rax, qword ptr [rbp - 0x8a8]
	cmp	rax, qword ptr [rbp - 0x890]
	nop	
	jae	.label_471
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
	jmp	.label_604
.label_471:
	jmp	.label_611
.label_611:
	jmp	.label_613
.label_613:
	mov	rbp, rbp
	jmp	.label_529
.label_529:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac8], eax
.label_854:
	mov	rax, qword ptr [rbp - 0x858]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	nop	
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rdi, [rdi]
	jmp	.label_646
.label_443:
	jmp	.label_631
.label_631:
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
	jmp	.label_460
.label_806:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_656
	mov	rsp, rsp
	jmp	.label_459
.label_656:
	jmp	.label_661
.label_661:
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
	jmp	.label_460
.label_741:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rdi, [rdi]
	jne	.label_688
	mov	rsp, rsp
	jmp	.label_459
.label_688:
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
	jge	.label_723
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
	jne	.label_729
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
	jne	.label_591
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
.label_591:
	mov	al, byte ptr [rbp - 0x859]
	mov	byte ptr [rbp - 0x7b5], al
.label_729:
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
	jmp	.label_798
.label_723:
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
	jne	.label_801
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
	jne	.label_493
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
.label_493:
	mov	al, byte ptr [rbp - 0x74a]
	mov	byte ptr [rbp - 0x489], al
.label_801:
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
	jg	.label_866
	nop	
	mov	dword ptr [rbp - 0x18], 1
	nop	
	mov	eax, dword ptr [rbp - 0xb10]
	mov	dword ptr [rbp - 0x5bc], eax
.label_866:
	mov	rsp, rsp
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x950], ecx
	mov	dword ptr [rbp - 0x6c], edx
	je	.label_883
	mov	rsp, rsp
	jmp	.label_890
.label_890:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x6d4], eax
	jne	.label_932
	mov	rsp, rsp
	jmp	.label_901
.label_901:
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
	jg	.label_902
	mov	eax, dword ptr [rbp - 0x914]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_924
.label_902:
	mov	rbp, rbp
	mov	eax, 0xfffff894
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x18]
	cmp	edx, eax
	jge	.label_929
	xor	eax, eax
	nop	
	sub	eax, dword ptr [rbp - 0x914]
	mov	dword ptr [rbp - 0xaac], eax
	jmp	.label_938
.label_929:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x914]
	nop	
	add	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xaac], eax
.label_938:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xaac]
	mov	dword ptr [rbp - 0x5c], eax
.label_924:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_536
.label_883:
	jmp	.label_952
.label_952:
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
	jmp	.label_536
.label_932:
	jmp	.label_974
.label_974:
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
	jmp	.label_460
.label_822:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_449
	jmp	.label_459
.label_449:
	jmp	.label_960
.label_960:
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
	jmp	.label_460
.label_636:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_757
	lea	rsi, [rsi]
	jmp	.label_459
.label_757:
	jmp	.label_508
.label_508:
	mov	dword ptr [rbp - 0x588], 1
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_460
.label_607:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_518
	lea	rsi, [rsi]
	jmp	.label_438
.label_518:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x4f
	lea	rsi, [rsi]
	jne	.label_527
	mov	rbp, rbp
	jmp	.label_459
.label_527:
	jmp	.label_533
.label_533:
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
	jmp	.label_536
.label_550:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rbp, rbp
	jne	.label_555
	jmp	.label_438
.label_555:
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
	jge	.label_561
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_886
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6b8], eax
	mov	rsp, rsp
	jmp	.label_585
.label_886:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x6b8], eax
.label_585:
	mov	eax, dword ptr [rbp - 0x6b8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_561:
	jmp	.label_598
.label_598:
	mov	dword ptr [rbp - 0x588], 2
	mov	byte ptr [rbp - 0x7d1], 0
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4b0], eax
	mov	rsp, rsp
	jmp	.label_536
.label_660:
	test	byte ptr [rbp - 0x549], 1
	lea	rsi, [rsi]
	je	.label_609
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb19], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x909], 1
.label_609:
	mov	rsp, rsp
	jmp	.label_618
.label_618:
	mov	rdi, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_623
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa38], eax
	mov	rsp, rsp
	jmp	.label_630
.label_623:
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa38], eax
.label_630:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa38]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9e8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4a8]
	cmp	rcx, qword ptr [rbp - 0x9e8]
	jae	.label_640
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x9e8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb58], rax
	lea	rdi, [rdi]
	jmp	.label_652
.label_640:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	qword ptr [rbp - 0xb58], rax
.label_652:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a0], rax
	mov	rax, qword ptr [rbp - 0x7a0]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	nop	
	jb	.label_666
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_453
.label_666:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_719
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_686
	mov	rax, qword ptr [rbp - 0x4a8]
	nop	
	cmp	rax, qword ptr [rbp - 0x9e8]
	jae	.label_686
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x4a8]
	mov	qword ptr [rbp - 0xa78], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_697
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_706
.label_697:
	mov	rbp, rbp
	jmp	.label_714
.label_714:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x520], 0
.label_733:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x520]
	nop	
	cmp	rax, qword ptr [rbp - 0xa78]
	jae	.label_718
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
	jmp	.label_733
.label_718:
	nop	
	jmp	.label_497
.label_497:
	lea	rdi, [rdi]
	jmp	.label_744
.label_706:
	jmp	.label_745
.label_745:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x608], 0
.label_758:
	mov	rax, qword ptr [rbp - 0x608]
	nop	
	cmp	rax, qword ptr [rbp - 0xa78]
	jae	.label_749
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x4dc], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, 1
	mov	qword ptr [rbp - 0x608], rax
	mov	rbp, rbp
	jmp	.label_758
.label_749:
	jmp	.label_764
.label_764:
	jmp	.label_744
.label_744:
	jmp	.label_686
.label_686:
	jmp	.label_768
.label_768:
	test	byte ptr [rbp - 0x909], 1
	je	.label_709
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x4c0]
	mov	rdx, qword ptr [rbp - 0x4a8]
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_778
.label_709:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	je	.label_785
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x4c0]
	mov	rdx, qword ptr [rbp - 0x4a8]
	call	fwrite_uppcase
	nop	
	jmp	.label_791
.label_785:
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
.label_791:
	mov	rsp, rsp
	jmp	.label_778
.label_778:
	jmp	.label_808
.label_808:
	jmp	.label_719
.label_719:
	mov	rax, qword ptr [rbp - 0x7a0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rdi, [rdi]
	jmp	.label_646
.label_682:
	mov	qword ptr [rbp - 0x7b0], 1
.label_831:
	mov	rax, qword ptr [rbp - 0x7b0]
	nop	
	mov	rcx, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x3a
	jne	.label_823
	nop	
	jmp	.label_830
.label_830:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7b0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_831
.label_823:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	rcx, qword ptr [rbp - 0x7c0]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x7a
	je	.label_576
	jmp	.label_459
.label_576:
	mov	rax, qword ptr [rbp - 0x7b0]
	add	rax, qword ptr [rbp - 0x7c0]
	nop	
	mov	qword ptr [rbp - 0x7c0], rax
	lea	rsi, [rsi]
	jmp	.label_846
.label_480:
	mov	qword ptr [rbp - 0x7b0], 0
.label_846:
	nop	
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_856
	jmp	.label_646
.label_856:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x708]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x82c], edx
	cmp	dword ptr [rbp - 0x82c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], al
	jl	.label_775
	xor	eax, eax
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x82c], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9e9], cl
	jne	.label_841
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x9e9], dl
.label_841:
	nop	
	mov	al, byte ptr [rbp - 0x9e9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], al
.label_775:
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
	ja	.label_967
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6b0]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_969]]
	jmp	rcx
.label_4958:
	mov	rbp, rbp
	jmp	.label_975
.label_975:
	mov	dword ptr [rbp - 0x588], 5
	mov	dword ptr [rbp - 0x6ec], 0
	nop	
	imul	eax, dword ptr [rbp - 0xa84], 0x64
	add	eax, dword ptr [rbp - 0x750]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_451
.label_4959:
	mov	rbp, rbp
	jmp	.label_446
.label_446:
	jmp	.label_448
.label_448:
	mov	dword ptr [rbp - 0x588], 6
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6ec], 4
	imul	eax, dword ptr [rbp - 0xa84], 0x64
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x750]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_451
.label_4960:
	mov	rsp, rsp
	jmp	.label_464
.label_464:
	jmp	.label_468
.label_468:
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
	jmp	.label_451
.label_4961:
	cmp	dword ptr [rbp - 0x60c], 0
	mov	rbp, rbp
	je	.label_491
	nop	
	jmp	.label_464
.label_491:
	cmp	dword ptr [rbp - 0x750], 0
	je	.label_500
	jmp	.label_446
.label_500:
	nop	
	jmp	.label_507
.label_507:
	mov	dword ptr [rbp - 0x588], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6ec], 0
	mov	eax, dword ptr [rbp - 0xa84]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_451
.label_967:
	lea	rsi, [rsi]
	jmp	.label_459
.label_667:
	mov	rax, qword ptr [rbp - 0x7c0]
	add	rax, -1
	mov	qword ptr [rbp - 0x7c0], rax
.label_490:
	jmp	.label_459
.label_459:
	mov	dword ptr [rbp - 0x754], 1
.label_547:
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
	je	.label_534
	jmp	.label_545
.label_545:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x754]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x754], eax
	jmp	.label_547
.label_534:
	jmp	.label_557
.label_557:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x754]
	mov	qword ptr [rbp - 0x5a8], rax
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_692
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4b8], eax
	jmp	.label_565
.label_692:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x4b8], eax
.label_565:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x770], rcx
	mov	rcx, qword ptr [rbp - 0x5a8]
	cmp	rcx, qword ptr [rbp - 0x770]
	jae	.label_575
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x770]
	mov	qword ptr [rbp - 0xb60], rax
	jmp	.label_592
.label_575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5a8]
	mov	qword ptr [rbp - 0xb60], rax
.label_592:
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
	jb	.label_602
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_453
.label_602:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_773
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x588], 0
	mov	rbp, rbp
	jne	.label_621
	mov	rax, qword ptr [rbp - 0x5a8]
	cmp	rax, qword ptr [rbp - 0x770]
	lea	rsi, [rsi]
	jae	.label_621
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x5a8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	mov	rsp, rsp
	je	.label_633
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_642
.label_633:
	mov	rsp, rsp
	jmp	.label_649
.label_649:
	mov	qword ptr [rbp - 0x488], 0
.label_665:
	mov	rax, qword ptr [rbp - 0x488]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_653
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
	jmp	.label_665
.label_653:
	lea	rsi, [rsi]
	jmp	.label_669
.label_669:
	lea	rsi, [rsi]
	jmp	.label_671
.label_642:
	mov	rsp, rsp
	jmp	.label_674
.label_674:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb08], 0
.label_694:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb08]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_680
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0xb84], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb08]
	add	rax, 1
	mov	qword ptr [rbp - 0xb08], rax
	jmp	.label_694
.label_680:
	jmp	.label_825
.label_825:
	jmp	.label_671
.label_671:
	jmp	.label_621
.label_621:
	nop	
	jmp	.label_705
.label_705:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	je	.label_707
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
	jmp	.label_727
.label_707:
	test	byte ptr [rbp - 0xb19], 1
	nop	
	je	.label_732
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
	jmp	.label_747
.label_732:
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
.label_747:
	jmp	.label_727
.label_727:
	jmp	.label_772
.label_772:
	jmp	.label_773
.label_773:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xaf8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_646
.label_646:
	jmp	.label_465
.label_465:
	mov	dword ptr [rbp - 0x964], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_784
.label_833:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xad8], rax
.label_453:
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
	.section	.text
	.align	16
	#Procedure 0x40cd30

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
.label_980:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	cmp	rax, 0
	nop	
	jbe	.label_981
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
	jmp	.label_980
.label_981:
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cdb0

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
.label_982:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	jbe	.label_983
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
	jmp	.label_982
.label_983:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce30

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
	.section	.text
	.align	16
	#Procedure 0x40ce90

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
	je	.label_992
	mov	rsp, rsp
	jmp	.label_999
.label_999:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	je	.label_1000
	mov	rsp, rsp
	jmp	.label_1002
.label_1002:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 2
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	je	.label_985
	lea	rdi, [rdi]
	jmp	.label_988
.label_988:
	mov	eax, 2
	mov	rbp, rbp
	mov	edi, eax
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_993
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x45], 1
.label_993:
	mov	rbp, rbp
	jmp	.label_985
.label_985:
	nop	
	mov	eax, 1
	nop	
	mov	edi, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	call	dup2
	cmp	eax, 1
	je	.label_1001
	mov	byte ptr [rbp - 0x39], 1
.label_1001:
	nop	
	jmp	.label_1000
.label_1000:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	nop	
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_986
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2d], 1
.label_986:
	lea	rdi, [rdi]
	jmp	.label_992
.label_992:
	nop	
	jmp	.label_994
.label_994:
	test	byte ptr [rbp - 0x2d], 1
	lea	rdi, [rdi]
	je	.label_990
	nop	
	xor	edi, edi
	nop	
	call	protect_fd
	test	al, 1
	jne	.label_990
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_995
.label_990:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	je	.label_997
	mov	edi, 1
	call	protect_fd
	test	al, 1
	nop	
	jne	.label_997
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_996
.label_997:
	nop	
	test	byte ptr [rbp - 0x45], 1
	je	.label_984
	lea	rsi, [rsi]
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_984
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_989
.label_984:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x28], rax
.label_989:
	jmp	.label_996
.label_996:
	jmp	.label_995
.label_995:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x40], ecx
	nop	
	test	byte ptr [rbp - 0x45], 1
	je	.label_998
	mov	rbp, rbp
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x18], eax
.label_998:
	nop	
	test	byte ptr [rbp - 0x39], 1
	je	.label_1003
	mov	edi, 1
	nop	
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_1003:
	nop	
	test	byte ptr [rbp - 0x2d], 1
	lea	rdi, [rdi]
	je	.label_987
	lea	rdi, [rdi]
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_987:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_991
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
.label_991:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d0f0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_7
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
	je	.label_1004
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x10]
	jg	.label_1006
	mov	edi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 9
.label_1006:
	mov	byte ptr [rbp - 5], 0
	jmp	.label_1005
.label_1004:
	nop	
	mov	byte ptr [rbp - 5], 1
.label_1005:
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
	#Procedure 0x40d190

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1b0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1d0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1f0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1011:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1007
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1010
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1012:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_1013
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1012
.label_1013:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1008
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1008:
	jmp	.label_1010
.label_1010:
	mov	rbp, rbp
	jmp	.label_1009
.label_1009:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1011
.label_1007:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2d0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_1018:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1014
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1016
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1019:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_1020
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1019
.label_1020:
	jmp	.label_1016
.label_1016:
	jmp	.label_1017
.label_1017:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1018
.label_1014:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1015
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1015
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1021
.label_1015:
	mov	byte ptr [rbp - 0x19], 0
.label_1021:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d400
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8b, cl
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, OFFSET FLAT:.str.1_4
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movq	xmm0, rdx
	nop	
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1022]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1023]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1024]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_2
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d580

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1029
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_1025
.label_1029:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_1027:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1030
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_1026
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1026
	mov	rsp, rsp
	jmp	.label_1031
.label_1026:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1025
.label_1031:
	nop	
	jmp	.label_1028
.label_1028:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1027
.label_1030:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_1025:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d670

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1032
	call	abort
.label_1032:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d700
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1033
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1036
.label_1033:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_1035:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1034
	lea	rsi, [rsi]
	call	abort
.label_1034:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1037
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1036
.label_1037:
	jmp	.label_1038
.label_1038:
	nop	
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1035
.label_1036:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d7c0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	safe_hasher
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1044:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1040
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_1040
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1041
.label_1040:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1044
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1045
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1043
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1041
.label_1043:
	jmp	.label_1042
.label_1045:
	mov	qword ptr [rbp - 0x28], 0
.label_1041:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8c0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
.label_1047:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1050
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1048
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_1051:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1049
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1052
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1046
.label_1052:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1051
.label_1049:
	lea	rsi, [rsi]
	jmp	.label_1048
.label_1048:
	jmp	.label_1053
.label_1053:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1047
.label_1050:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1046:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9d0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rdx
.label_1056:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1054
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1058
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1055:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1061
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1059
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1057
.label_1059:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1055
.label_1061:
	mov	rbp, rbp
	jmp	.label_1058
.label_1058:
	nop	
	jmp	.label_1060
.label_1060:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1056
.label_1054:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_1057:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dae0

	.globl hash_string
	.type hash_string, @function
hash_string:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1062:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1063
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1062
.label_1063:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db50
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [default_tuning]]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_1064]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1065]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dba0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1069
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_1069:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1070
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1070:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1066
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1072
.label_1066:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1074
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_1074:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1073
	jmp	.label_1071
.label_1073:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1067
	mov	rsp, rsp
	jmp	.label_1071
.label_1067:
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1068
	jmp	.label_1071
.label_1068:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1072
.label_1071:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_1072:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddc0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de10

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de40

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1075
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1078
.label_1075:
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1077
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1076]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1077
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1076]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1077
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1077
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1077
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1076]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1077
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	lea	rsi, [rsi]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	mov	rbp, rbp
	jbe	.label_1077
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1078
.label_1077:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1078:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dfb0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1080
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1081]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	nop	
	and	edx, 1
	nop	
	mov	esi, edx
	or	rsi, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm1, rsi
	mov	rsp, rsp
	addss	xmm1, xmm1
	mov	rsp, rsp
	cvtsi2ss	xmm2, rax
	mov	rsp, rsp
	test	rax, rax
	movss	dword ptr [rbp - 0x24], xmm0
	movss	dword ptr [rbp - 0xc], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x10], xmm1
	mov	rbp, rbp
	js	.label_1082
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_1082:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x14], xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	movss	xmm1, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1086
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1084
.label_1086:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1080:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_1083
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1084
.label_1083:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1084:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e120
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1090:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1089
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1094
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1093:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1091
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1092
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1092:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1093
.label_1091:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1088
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1088:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_1094:
	jmp	.label_1087
.label_1087:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1090
.label_1089:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e290

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1097
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1097
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1103:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1105
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1096
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_1104:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1100
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1104
.label_1100:
	jmp	.label_1096
.label_1096:
	jmp	.label_1098
.label_1098:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1103
.label_1105:
	jmp	.label_1097
.label_1097:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1095:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1108
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1102:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1099
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1102
.label_1099:
	jmp	.label_1106
.label_1106:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1095
.label_1108:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1107:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1101
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1107
.label_1101:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e480

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_1116
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_1109
.label_1116:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1111
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_1109
.label_1111:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_1113
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_1109
.label_1113:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1110
	lea	rsi, [rsi]
	jmp	.label_1115
.label_1110:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 0x71], 1
	jmp	.label_1109
.label_1115:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1112
	mov	rbp, rbp
	jmp	.label_1114
.label_1112:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1117
.label_1114:
	call	abort
.label_1117:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_1109:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e750

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
.label_1124:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1131
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1127
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1128:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1130
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1125
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1122
.label_1125:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1122:
	mov	rbp, rbp
	jmp	.label_1129
.label_1129:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1128
.label_1130:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_1121
	jmp	.label_1123
.label_1121:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1119
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1126
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_1118
.label_1126:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1120
.label_1119:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1120:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1127:
	jmp	.label_1123
.label_1123:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1124
.label_1131:
	mov	byte ptr [rbp - 0x19], 1
.label_1118:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9e0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1142
	lea	rsi, [rsi]
	call	abort
.label_1142:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1149
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1136
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1136:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1134
.label_1149:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	lea	rdi, [rdi]
	mov	edi, edx
	and	edi, 1
	lea	rdi, [rdi]
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x80], rcx
	movss	dword ptr [rbp - 0x88], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1150
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1150:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x80]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	esi, edx
	and	esi, 1
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rsp, rsp
	or	rdi, rcx
	mov	rbp, rbp
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x60], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xbc], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x24], xmm2
	mov	rsp, rsp
	js	.label_1146
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_1146:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_1139
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, r9
	lea	rdi, [rdi]
	addss	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], al
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 8], xmm0
	js	.label_1144
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_1144:
	movss	xmm0, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	lea	rdi, [rdi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x1c], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa4], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x44], xmm3
	movss	dword ptr [rbp - 0x8c], xmm2
	js	.label_1141
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_1141:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1138
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1133
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x40], xmm1
	movss	dword ptr [rbp - 0x84], xmm0
	nop	
	js	.label_1145
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_1145:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_1135
.label_1133:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 1
	mov	esi, edx
	mov	rbp, rbp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	mov	rbp, rbp
	cvtsi2ss	xmm1, rax
	mov	rbp, rbp
	test	rax, rax
	movss	dword ptr [rbp - 0x18], xmm1
	nop	
	movss	dword ptr [rbp - 0x14], xmm0
	lea	rdi, [rdi]
	js	.label_1143
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_1143:
	movss	xmm0, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1135:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1081]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1148
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1134
.label_1148:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	nop	
	cmova	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1137
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1134
.label_1137:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1140
	call	abort
.label_1140:
	jmp	.label_1138
.label_1138:
	lea	rdi, [rdi]
	jmp	.label_1139
.label_1139:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_1132
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1147
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1134
.label_1147:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1134
.label_1132:
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1134:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40efd0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1151
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1152
.label_1151:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_1157
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1157
	jmp	.label_1159
.label_1157:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1161
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1154
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1158
.label_1154:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_1158:
	jmp	.label_1161
.label_1161:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1152
.label_1159:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_1163:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1153
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1156
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1156
	lea	rsi, [rsi]
	jmp	.label_1160
.label_1156:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1162
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1162:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1152
.label_1160:
	mov	rbp, rbp
	jmp	.label_1155
.label_1155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1163
.label_1153:
	mov	qword ptr [rbp - 0x40], 0
.label_1152:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f210

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1164
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1165
.label_1164:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1165:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f290

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], -1
	lea	rdi, [rdi]
	jne	.label_1168
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1166
.label_1168:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_1169
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1167
.label_1169:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1166:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f330

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1179
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1182
.label_1179:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_1173
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	mov	rsp, rsp
	and	edi, 1
	lea	rsi, [rsi]
	mov	r8d, edi
	mov	rbp, rbp
	or	r8, rsi
	mov	rbp, rbp
	cvtsi2ss	xmm0, r8
	mov	rsp, rsp
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x20], rcx
	movss	dword ptr [rbp - 0x2c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1181
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1181:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	esi, edx
	lea	rsi, [rsi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rsi, [rsi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	movss	dword ptr [rbp - 0x14], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x64], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x5c], xmm2
	lea	rsi, [rsi]
	js	.label_1177
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1177:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_1174
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	lea	rdi, [rdi]
	and	r8d, 1
	mov	rsp, rsp
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	mov	rsp, rsp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x50], rcx
	movss	dword ptr [rbp - 0x84], xmm1
	movss	dword ptr [rbp - 0x24], xmm0
	nop	
	js	.label_1172
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_1172:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xb0], xmm0
	movss	dword ptr [rbp - 0x94], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa4], xmm3
	movss	dword ptr [rbp - 0x74], xmm2
	js	.label_1185
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_1185:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1171
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_1176
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	mov	rbp, rbp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xc], xmm1
	nop	
	movss	dword ptr [rbp - 0xac], xmm0
	lea	rsi, [rsi]
	js	.label_1170
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1170:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_1175
.label_1176:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	nop	
	mov	esi, edx
	mov	rsp, rsp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	lea	rsi, [rsi]
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	nop	
	test	rax, rax
	nop	
	movss	dword ptr [rbp - 0x28], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1184
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1184:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x10], xmm0
.label_1175:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1178
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_1180:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_1183
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1180
.label_1183:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_1178:
	lea	rsi, [rsi]
	jmp	.label_1171
.label_1171:
	jmp	.label_1174
.label_1174:
	nop	
	jmp	.label_1173
.label_1173:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1182:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f800

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0xa
	jae	.label_1186
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_1186:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1190:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_1188
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_1188:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1189
	jmp	.label_1187
.label_1189:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1190
.label_1187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8b0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], 3
	mov	rdi, qword ptr [rbp - 8]
	imul	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_1192:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_1191
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], sil
.label_1191:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1194
	jmp	.label_1193
.label_1194:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1192
.label_1193:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x18]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9b0

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x48]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x48], rsi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa00

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:.str_0
	movabs	r9, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rsi
	mov	dword ptr [rbp - 0x78], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r8
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 3
	mov	dword ptr [rbp - 0x74], edx
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 0x20
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x54], r10d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], 0xffffffff
	mov	dword ptr [rbp - 0x140], 8
	mov	qword ptr [rbp - 0x118], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0x1b0], rax
	call	localeconv
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0xe0], rcx
	call	strlen
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jae	.label_1244
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x108], 0x10
	ja	.label_1244
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x118], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x148], rax
.label_1244:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	mov	rsp, rsp
	ja	.label_1215
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b0], rax
.label_1215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x28b
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	add	rax, -3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	ja	.label_1222
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	cmp	rdx, 0
	jne	.label_1214
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1245
	mov	dword ptr [rbp - 0x150], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], 0
	jmp	.label_1208
.label_1245:
	mov	rbp, rbp
	jmp	.label_1214
.label_1214:
	mov	rsp, rsp
	jmp	.label_1216
.label_1222:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	je	.label_1218
	mov	rax, qword ptr [rbp - 0x88]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa0]
	cmp	rdx, 0
	jne	.label_1218
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x48]
	mov	rsp, rsp
	imul	rdx, rdx, 0xa
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, rdx
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x48]
	shl	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], ecx
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1228
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0xe8]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1228:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xe8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	add	edx, 2
	mov	dword ptr [rbp - 0x64], edx
.label_1209:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	jmp	.label_1208
.label_1218:
	lea	rdi, [rdi]
	jmp	.label_1216
.label_1216:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1236]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0xc8]
	faddp	st(1)
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	nop	
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1236]]
	fild	qword ptr [rbp - 0x50]
	mov	rbp, rbp
	faddp	st(1)
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x28], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1236]]
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x28]
	faddp	st(1)
	fdivrp	st(2)
	nop	
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x190]
	mov	edx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	edx, 0x10
	cmp	edx, 0
	nop	
	jne	.label_1237
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	rcx, rsp
	mov	rsp, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rdi
	mov	edi, eax
	lea	rdi, [rdi]
	call	adjust_value
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.2_3
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.2_3
	nop	
	mov	esi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	al, r8b
	mov	qword ptr [rbp - 0x70], rcx
	call	sprintf
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x17c], eax
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0x80], 0
	jmp	.label_1234
.label_1237:
	nop	
	fld1	
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x1e0]
	mov	dword ptr [rbp - 0x14c], 0
.label_1241:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x198], rcx
	nop	
	fild	qword ptr [rbp - 0x198]
	fmulp	st(1)
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	xor	eax, eax
	mov	dl, al
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	byte ptr [rbp - 0x139], dl
	jb	.label_1204
	jmp	.label_1231
.label_1231:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	setl	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x139], cl
.label_1204:
	mov	al, byte ptr [rbp - 0x139]
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1241
	fld	xword ptr [rbp - 0x1e0]
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	fdivrp	st(1)
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0xb8]
.label_4950:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	edi, eax
	nop	
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.3_3
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.3_3
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	al, r8b
	mov	qword ptr [rbp - 0x168], rcx
	mov	rbp, rbp
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x180], eax
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x78]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	nop	
	xor	r8b, 0xff
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	movsxd	rcx, r9d
	mov	rbp, rbp
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xf8]
	jb	.label_1219
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1240
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1240
.label_1219:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_3
	nop	
	mov	ecx, 0xa
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rbp - 0x74]
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_1195]]
	mov	rbp, rbp
	fmul	st(1), st(0)
	mov	rsp, rsp
	mov	rsi, rsp
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	fstp	xword ptr [rbp - 0x174]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x174]
	mov	rsp, rsp
	fdivp	st(2)
	nop	
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	rdi, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	al, r8b
	nop	
	fstp	xword ptr [rbp - 0x15c]
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
.label_1240:
	jmp	.label_1234
.label_1234:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c0], rdx
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c0]
	nop	
	add	rcx, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rcx
	lea	rdi, [rdi]
	jmp	.label_1201
.label_1208:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1212
	mov	dword ptr [rbp - 0x14c], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x138]
	ja	.label_1220
	nop	
	jmp	.label_1197
.label_1197:
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x128], rdx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x128]
	div	rsi
	imul	rdx, rdx, 0xa
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x150]
	mov	rbp, rbp
	add	rdx, rdi
	mov	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x1c4], ecx
	mov	ecx, dword ptr [rbp - 0x1c4]
	mov	eax, ecx
	xor	edx, edx
	mov	rbp, rbp
	div	dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	edx, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rsp, rsp
	sar	ecx, 1
	lea	rsi, [rsi]
	add	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x178], edx
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	rax, r8
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rdi
	nop	
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], eax
	mov	eax, dword ptr [rbp - 0x178]
	cmp	eax, dword ptr [rbp - 0x54]
	nop	
	jae	.label_1225
	mov	eax, dword ptr [rbp - 0x178]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_1213
.label_1225:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x178]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	nop	
	setb	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	add	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
.label_1213:
	mov	eax, dword ptr [rbp - 0xec]
	mov	dword ptr [rbp - 0xcc], eax
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14c], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], cl
	mov	rsp, rsp
	ja	.label_1235
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	setl	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9], cl
.label_1235:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1197
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_1226
	cmp	dword ptr [rbp - 0x74], 1
	lea	rsi, [rsi]
	jne	.label_1205
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xcc]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x150]
	mov	rsp, rsp
	and	edx, 1
	nop	
	add	ecx, edx
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_1207
	mov	rbp, rbp
	jmp	.label_1217
.label_1205:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_1217
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xcc]
	jge	.label_1217
.label_1207:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x150]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], eax
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	cmp	dword ptr [rbp - 0x150], 0xa
	lea	rdi, [rdi]
	jne	.label_1200
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], 0
.label_1200:
	lea	rdi, [rdi]
	jmp	.label_1217
.label_1217:
	nop	
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_1243
	cmp	dword ptr [rbp - 0x150], 0
	nop	
	jne	.label_1246
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 8
	cmp	eax, 0
	jne	.label_1243
.label_1246:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x150]
	add	eax, 0x30
	mov	dl, al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x1c0], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dl
	nop	
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x1c0]
	sub	rcx, rsi
	nop	
	add	rdi, rcx
	mov	qword ptr [rbp - 0x1c0], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	mov	dword ptr [rbp - 0x150], 0
.label_1243:
	jmp	.label_1226
.label_1226:
	jmp	.label_1220
.label_1220:
	jmp	.label_1212
.label_1212:
	nop	
	cmp	dword ptr [rbp - 0x74], 1
	jne	.label_1229
	lea	rsi, [rsi]
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x150]
	movsxd	rsi, dword ptr [rbp - 0xcc]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rsi, [rsi]
	add	ecx, r9d
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_1232
	lea	rsi, [rsi]
	jmp	.label_1196
.label_1229:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_1196
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x150]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_1196
.label_1232:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	mov	ecx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	ecx, 0x10
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1203
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_1203
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	jge	.label_1203
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1223
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x1c0]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	qword ptr [rbp - 0x1c0], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x148]
	call	memcpy
.label_1223:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], 1
.label_1203:
	jmp	.label_1196
.label_1196:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rax
.label_1210:
	mov	rsp, rsp
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	nop	
	mov	esi, edx
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	cmp	rax, 0
	jne	.label_1210
	lea	rdi, [rdi]
	jmp	.label_1201
.label_1201:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1233
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rbp - 0x1c0]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x1c0], rax
.label_1233:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 0x80
	nop	
	cmp	eax, 0
	je	.label_1199
	cmp	dword ptr [rbp - 0x14c], 0
	jge	.label_1206
	nop	
	mov	dword ptr [rbp - 0x14c], 0
	mov	qword ptr [rbp - 0xa8], 1
.label_1242:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jae	.label_1211
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	cmp	eax, dword ptr [rbp - 0x140]
	mov	rsp, rsp
	jne	.label_1221
	lea	rsi, [rsi]
	jmp	.label_1211
.label_1221:
	jmp	.label_1227
.label_1227:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_1242
.label_1211:
	lea	rsi, [rsi]
	jmp	.label_1206
.label_1206:
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	mov	ecx, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	ecx, 0x100
	lea	rsi, [rsi]
	or	eax, ecx
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1239
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x40
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1239
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
.label_1239:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_1198
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x20
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1202
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 1
	lea	rdi, [rdi]
	jne	.label_1202
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	jmp	.label_1238
.label_1202:
	movsxd	rax, dword ptr [rbp - 0x14c]
	mov	rbp, rbp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
.label_1238:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 8], rsi
	mov	byte ptr [rdx], cl
.label_1198:
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x100
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1224
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1230
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_1230
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x69
.label_1230:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x42
.label_1224:
	jmp	.label_1199
.label_1199:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x1c0]
	add	rsp, 0x1f0
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a20

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	fld	xword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 1
	lea	rdi, [rdi]
	je	.label_1247
	nop	
	fld	xword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	fld	xword ptr [word ptr [rip + label_1250]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1247
	jmp	.label_1248
.label_1248:
	xor	eax, eax
	nop	
	mov	cl, al
	fld	xword ptr [rbp - 0x30]
	mov	rbp, rbp
	fld	dword ptr [dword ptr [rip + label_1085]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rbp - 2]
	mov	dx, word ptr [rbp - 2]
	mov	word ptr [rbp - 2], 0xc7f
	fldcw	word ptr [rbp - 2]
	mov	word ptr [rbp - 2], dx
	fistp	qword ptr [rbp - 0x48]
	fldcw	word ptr [rbp - 2]
	mov	rbp, rbp
	fnstcw	word ptr [rbp - 0x5a]
	nop	
	mov	dx, word ptr [rbp - 0x5a]
	mov	rbp, rbp
	mov	word ptr [rbp - 0x5a], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x5a]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x5a], dx
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x5a]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movabs	rdi, 0x8000000000000000
	nop	
	xor	rsi, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x58], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x39], cl
	nop	
	jne	.label_1249
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	nop	
	movzx	edx, cl
	mov	eax, edx
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1236]]
	nop	
	fild	qword ptr [rbp - 0x18]
	faddp	st(1)
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x30]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	rsp, rsp
	setp	cl
	lea	rdi, [rdi]
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x39], sil
.label_1249:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	setns	al
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	nop	
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_1236]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x30]
.label_1247:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bb0

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x90
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1255:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x81], cl
	cmp	byte ptr [rbp - 0x81], 0
	je	.label_1254
	movzx	eax, byte ptr [rbp - 0x81]
	cmp	eax, 0x7f
	lea	rdi, [rdi]
	jge	.label_1253
	movzx	eax, byte ptr [rbp - 0x81]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	jmp	.label_1251
.label_1253:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
.label_1251:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_1254:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_1252
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_1252:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x50]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	jne	.label_1256
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x90
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1256:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	nop	
	jmp	.label_1255
	.section	.text
	.align	16
	#Procedure 0x410d80

	.globl human_options
	.type human_options, @function
human_options:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	humblock
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rdx], 0
	jne	.label_1257
	call	default_block_size
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 4
.label_1257:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e00

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jne	.label_1258
	movabs	rdi, OFFSET FLAT:.str.4_2
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1258
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	rax, 0
	jne	.label_1258
	lea	rdi, [rdi]
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_1266
.label_1258:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x27
	mov	rbp, rbp
	jne	.label_1264
	mov	eax, dword ptr [rbp - 0x24]
	or	eax, 4
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
.label_1264:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	argmatch
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r9d
	nop	
	cmp	r8d, r9d
	lea	rdi, [rdi]
	jg	.label_1271
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax], 1
	lea	rsi, [rsi]
	jmp	.label_1262
.label_1271:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	xstrtoumax
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0
	je	.label_1269
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x38], ecx
	nop	
	jmp	.label_1272
.label_1269:
	jmp	.label_1259
.label_1259:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	jg	.label_1263
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
.label_1263:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_1261
	lea	rdi, [rdi]
	jmp	.label_1268
.label_1261:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_1270
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	jne	.label_1260
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x24], eax
.label_1260:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x42
	jne	.label_1265
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x69
	lea	rsi, [rsi]
	jne	.label_1273
.label_1265:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
.label_1273:
	jmp	.label_1268
.label_1270:
	mov	rsp, rsp
	jmp	.label_1267
.label_1267:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_1259
.label_1268:
	jmp	.label_1262
.label_1262:
	jmp	.label_1266
.label_1266:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 0x38], 0
.label_1272:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110c0

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.9_0
	nop	
	call	getenv
	mov	ecx, 0x400
	lea	rsi, [rsi]
	mov	edx, 0x200
	cmp	rax, 0
	lea	rsi, [rsi]
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411100

	.globl ino_map_alloc
	.type ino_map_alloc, @function
ino_map_alloc:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1275
	mov	eax, 0x3fd
	lea	rsi, [rsi]
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:ino_hash
	movabs	rcx, OFFSET FLAT:ino_compare
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:free
	mov	rbp, rbp
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_1274
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jmp	.label_1276
.label_1274:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
.label_1275:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1276:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4111e0

	.globl ino_hash
	.type ino_hash, @function
ino_hash:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	mov	dword ptr [rbp - 0xc], 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 1
.label_1278:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0xc]
	jae	.label_1277
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	edx, ecx
	shl	rdx, 6
	mov	rcx, rdx
	lea	rsi, [rsi]
	shr	rax, cl
	lea	rdi, [rdi]
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_1278
.label_1277:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, rdx
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411280

	.globl ino_compare
	.type ino_compare, @function
ino_compare:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi]
	sete	al
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112d0
	.globl ino_map_free
	.type ino_map_free, @function
ino_map_free:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	call	hash_free
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411320

	.globl ino_map_insert
	.type ino_map_insert, @function
ino_map_insert:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1279
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_1284
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1280
.label_1284:
	mov	rsp, rsp
	jmp	.label_1286
.label_1279:
	lea	rsi, [rsi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x10], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1285
	mov	qword ptr [rbp - 0x10], -1
	lea	rsi, [rsi]
	jmp	.label_1280
.label_1285:
	lea	rsi, [rsi]
	jmp	.label_1286
.label_1286:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jne	.label_1283
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], -1
	lea	rsi, [rsi]
	jmp	.label_1280
.label_1283:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_1282
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1281
.label_1282:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [rax + 8], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], rcx
.label_1281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1280:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4114a0

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
	jge	.label_1287
	nop	
	jmp	.label_1290
.label_1290:
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
	jne	.label_1290
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_1288
.label_1287:
	jmp	.label_1289
.label_1289:
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
	jne	.label_1289
	jmp	.label_1288
.label_1288:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4115f0

	.globl mbscasecmp
	.type mbscasecmp, @function
mbscasecmp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 0xc0]
	nop	
	jne	.label_1320
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	jmp	.label_1291
.label_1320:
	lea	rdi, [rdi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	mov	rsp, rsp
	jbe	.label_1309
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	lea	rsi, [rbp - 0x110]
	nop	
	lea	rdi, [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], r8
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x50], 0
	add	rdi, 4
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x60], rdx
	nop	
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	call	memset
	mov	byte ptr [rbp - 0x44], 0
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rdx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x110], 0
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	add	rdx, 4
	lea	rdi, [rdi]
	mov	rdi, rdx
	nop	
	mov	esi, dword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x104], 0
.label_1305:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	xor	eax, eax
	nop	
	mov	cl, al
	test	byte ptr [rbp - 0x30], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	je	.label_1323
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 1], al
.label_1323:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	nop	
	mov	byte ptr [rbp - 0x79], dl
	lea	rdi, [rdi]
	jne	.label_1301
	mov	rsp, rsp
	jmp	.label_1318
.label_1301:
	lea	rdi, [rbp - 0x110]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	byte ptr [rbp - 0xf0], 1
	mov	byte ptr [rbp - 0x71], cl
	lea	rdi, [rdi]
	je	.label_1314
	cmp	dword ptr [rbp - 0xec], 0
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 0x71], al
.label_1314:
	mov	al, byte ptr [rbp - 0x71]
	nop	
	xor	al, 0xff
	mov	byte ptr [rbp - 0x79], al
.label_1318:
	mov	al, byte ptr [rbp - 0x79]
	test	al, 1
	jne	.label_1292
	jmp	.label_1296
.label_1292:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x30], 1
	je	.label_1299
	test	byte ptr [rbp - 0xf0], 1
	je	.label_1303
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	call	towlower
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xec]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	call	towlower
	mov	edi, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	edi, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x11c], edi
	jmp	.label_1312
.label_1303:
	mov	rbp, rbp
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_1312
.label_1312:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x11c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	jmp	.label_1324
.label_1299:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xf0], 1
	nop	
	je	.label_1295
	mov	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1302
.label_1295:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	jne	.label_1307
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x100]
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	memcmp
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_1316
.label_1307:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	jae	.label_1319
	mov	rbp, rbp
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb0], ecx
	call	memcmp
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	mov	ecx, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	cmovg	eax, ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	rbp, rbp
	jmp	.label_1310
.label_1319:
	mov	rbp, rbp
	mov	eax, 0xffffffff
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], ecx
	nop	
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	cmovge	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
.label_1310:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
.label_1316:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xcc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
.label_1302:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
.label_1324:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0xc8], eax
	cmp	dword ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	je	.label_1322
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_1291
.label_1322:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x44], 0
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x100], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x104], 0
	lea	rdi, [rdi]
	jmp	.label_1305
.label_1296:
	lea	rdi, [rbp - 0x50]
	mov	rbp, rbp
	call	mbuiter_multi_next
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0x30], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc1], cl
	nop	
	je	.label_1321
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc1], al
.label_1321:
	mov	al, byte ptr [rbp - 0xc1]
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_1304
	mov	rbp, rbp
	jmp	.label_1308
.label_1304:
	nop	
	mov	dword ptr [rbp - 0x98], 1
	lea	rsi, [rsi]
	jmp	.label_1291
.label_1308:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x110]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	byte ptr [rbp - 0xf0], 1
	mov	byte ptr [rbp - 0x89], cl
	je	.label_1315
	cmp	dword ptr [rbp - 0xec], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], al
.label_1315:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	xor	al, 0xff
	test	al, 1
	mov	rsp, rsp
	jne	.label_1298
	mov	rsp, rsp
	jmp	.label_1306
.label_1298:
	mov	dword ptr [rbp - 0x98], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1291
.label_1306:
	mov	dword ptr [rbp - 0x98], 0
	mov	rbp, rbp
	jmp	.label_1291
.label_1309:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x68], rax
.label_1294:
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	ecx, 0x100
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1297
	mov	rax, qword ptr [rbp - 0x128]
	movzx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	tolower
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_1313
.label_1297:
	mov	rax, qword ptr [rbp - 0x128]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], ecx
.label_1313:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	movzx	eax, byte ptr [rdx]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x70], rdx
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rdx*2]
	and	esi, 0x100
	cmp	esi, 0
	lea	rsi, [rsi]
	je	.label_1300
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	movzx	edi, byte ptr [rax]
	nop	
	call	tolower
	mov	dword ptr [rbp - 0x78], eax
	mov	rbp, rbp
	jmp	.label_1311
.label_1300:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x78], ecx
.label_1311:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	mov	cl, al
	mov	byte ptr [rbp - 0x91], cl
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0xa9]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1317
	jmp	.label_1293
.label_1317:
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0xa9]
	movzx	ecx, byte ptr [rbp - 0x91]
	cmp	eax, ecx
	lea	rsi, [rsi]
	je	.label_1294
.label_1293:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xa9]
	movzx	ecx, byte ptr [rbp - 0x91]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
.label_1291:
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411c80

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rdi + 0xc], 1
	je	.label_1325
	lea	rsi, [rsi]
	jmp	.label_1336
.label_1325:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax], 1
	je	.label_1339
	jmp	.label_1342
.label_1339:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	mov	rbp, rbp
	jne	.label_1331
	jmp	.label_1333
.label_1331:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x18], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_1335
.label_1333:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 4
	nop	
	mov	rdi, rax
	nop	
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1337
	lea	rdi, [rdi]
	jmp	.label_1341
.label_1337:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_9
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rsp, rsp
	call	__assert_fail
.label_1341:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 1
.label_1342:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	nop	
	add	rax, 0x14
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 4
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, rax
	call	rpl_mbrtowc
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], -1
	lea	rsi, [rsi]
	jne	.label_1330
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], 0
	mov	rbp, rbp
	jmp	.label_1326
.label_1330:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], -2
	nop	
	jne	.label_1334
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1343
.label_1334:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_1328
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1332
	mov	rbp, rbp
	jmp	.label_1327
.label_1332:
	movabs	rdi, OFFSET FLAT:.str.2_4
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rbp, rbp
	call	__assert_fail
.label_1327:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x24], 0
	lea	rsi, [rsi]
	jne	.label_1340
	jmp	.label_1329
.label_1340:
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_4
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	edx, 0xb3
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_1329:
	jmp	.label_1328
.label_1328:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x20], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1338
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax], 0
.label_1338:
	jmp	.label_1343
.label_1343:
	jmp	.label_1326
.label_1326:
	jmp	.label_1335
.label_1335:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 1
.label_1336:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f60
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rsi, qword ptr [rdi + 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f90
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	lea	rsi, [rsi]
	and	cl, 1
	nop	
	mov	byte ptr [rsi], cl
	test	al, 1
	mov	rbp, rbp
	jne	.label_1344
	jmp	.label_1345
.label_1344:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	rsp, rsp
	mov	qword ptr [rax + 4], rcx
	jmp	.label_1346
.label_1345:
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
.label_1346:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0xc], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, 0x10
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412060

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
	jne	.label_1347
	movabs	rdi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_1347:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1350
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1349
.label_1350:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1349:
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
	jl	.label_1348
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_6
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
	jne	.label_1348
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_5
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
	jne	.label_1351
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1351:
	jmp	.label_1348
.label_1348:
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
	#Procedure 0x4121e0
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
	je	.label_1352
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1353
.label_1352:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1353
.label_1353:
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
	#Procedure 0x412290
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
	je	.label_1354
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1355
.label_1354:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1355
.label_1355:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4122f0
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
	je	.label_1356
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1357
.label_1356:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1357
.label_1357:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412350

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
	je	.label_1358
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1359
.label_1358:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1359
.label_1359:
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
	#Procedure 0x412450
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
	jne	.label_1360
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_1360:
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
	#Procedure 0x4124b0

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
	jne	.label_1361
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_1361:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1363
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1362
.label_1363:
	call	abort
.label_1362:
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
	#Procedure 0x412550
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
	je	.label_1364
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1365
.label_1364:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1365
.label_1365:
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
	#Procedure 0x412650

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
.label_1516:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1494
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1381]]
	jmp	rcx
.label_4930:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_4929:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1544
	jmp	.label_1549
.label_1549:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1448
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1448:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1544
.label_1544:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_1428
.label_4931:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1428
.label_4932:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_1369
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
.label_1369:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1383
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_1408:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1390
	jmp	.label_1531
.label_1531:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1394
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_1394:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1400
.label_1400:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1408
.label_1390:
	mov	rbp, rbp
	jmp	.label_1383
.label_1383:
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
	jmp	.label_1428
.label_4927:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_4926:
	mov	byte ptr [rbp - 0x3e], 1
.label_4928:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1435
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_1435:
	jmp	.label_1439
.label_1439:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1440
	jmp	.label_1444
.label_1444:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1477
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1477:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1440
.label_1440:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_1428
.label_4925:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1428
.label_1494:
	call	abort
.label_1428:
	mov	qword ptr [rbp - 0xd8], 0
.label_1473:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1467
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
	jmp	.label_1470
.label_1467:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1470:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1488
	mov	rbp, rbp
	jmp	.label_1497
.label_1488:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1499
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1499
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1499
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1512
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1512
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1522
.label_1512:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1522:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1499
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
	jne	.label_1499
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1541
	jmp	.label_1366
.label_1541:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1499:
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
	ja	.label_1548
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1557]]
	nop	
	jmp	rcx
.label_4983:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1559
	mov	rsp, rsp
	jmp	.label_1564
.label_1564:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1566
	jmp	.label_1366
.label_1566:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1367
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_1367
	nop	
	jmp	.label_1373
.label_1373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1376
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1376:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1384
.label_1384:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1388
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1388:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1396
.label_1396:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1402
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1402:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1367:
	lea	rsi, [rsi]
	jmp	.label_1412
.label_1412:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1414
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1414:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1447
.label_1447:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_1433
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1433
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1433
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1433
	nop	
	jmp	.label_1451
.label_1451:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1452
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1452:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1457
.label_1457:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1460
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1460:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1433
.label_1433:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1474
.label_1559:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1478
	mov	rbp, rbp
	jmp	.label_1422
.label_1478:
	jmp	.label_1474
.label_1474:
	jmp	.label_1413
.label_4994:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1485
	mov	rbp, rbp
	jmp	.label_1492
.label_1492:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1495
	jmp	.label_1502
.label_1485:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1504
	jmp	.label_1366
.label_1504:
	jmp	.label_1410
.label_1495:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_1511
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_1511
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1511
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
	je	.label_1519
	nop	
	jmp	.label_1526
.label_1526:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1519
	jmp	.label_1530
.label_1530:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1519
	jmp	.label_1537
.label_1537:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1519
	jmp	.label_1427
.label_1427:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1547
	jmp	.label_1519
.label_1519:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1550
	jmp	.label_1366
.label_1550:
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
	jae	.label_1553
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1553:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1371
.label_1371:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1374
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1374:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1379
.label_1379:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1386
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1386:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1466
.label_1466:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1554
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1554:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1404
.label_1547:
	jmp	.label_1404
.label_1404:
	jmp	.label_1511
.label_1511:
	jmp	.label_1410
.label_1502:
	jmp	.label_1410
.label_1410:
	jmp	.label_1413
.label_4984:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_1416
.label_4985:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_1416
.label_4989:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_1416
.label_4987:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_1403
.label_4990:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_1403
.label_4986:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_1403
.label_4988:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_1416
.label_4995:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1437
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1393
	nop	
	jmp	.label_1366
.label_1393:
	lea	rsi, [rsi]
	jmp	.label_1420
.label_1437:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1446
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1446
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1446
	jmp	.label_1420
.label_1446:
	jmp	.label_1403
.label_1403:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1458
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1458
	jmp	.label_1366
.label_1458:
	mov	rsp, rsp
	jmp	.label_1416
.label_1416:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1464
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1468
.label_1464:
	jmp	.label_1413
.label_4996:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1475
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1479
	jmp	.label_1484
.label_1475:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1479
.label_1484:
	nop	
	jmp	.label_1413
.label_1479:
	jmp	.label_1489
.label_1489:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1471
	lea	rsi, [rsi]
	jmp	.label_1413
.label_1471:
	nop	
	jmp	.label_1498
.label_1498:
	mov	byte ptr [rbp - 0x91], 1
.label_4991:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1501
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1501
	jmp	.label_1366
.label_1501:
	lea	rsi, [rsi]
	jmp	.label_1413
.label_4993:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1509
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1398
	jmp	.label_1366
.label_1398:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1417
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_1417
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1417:
	jmp	.label_1523
.label_1523:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1524
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1524:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1528
.label_1528:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1534
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1534:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1542
.label_1542:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1546
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1546:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1509:
	lea	rsi, [rsi]
	jmp	.label_1413
.label_4992:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_1413
.label_1548:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_1560
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
	jmp	.label_1370
.label_1560:
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
	jne	.label_1385
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_1385:
	jmp	.label_1395
.label_1395:
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
	jne	.label_1411
	jmp	.label_1424
.label_1411:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_1418
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_1424
.label_1418:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_1506
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1449:
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
	jae	.label_1430
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_1430:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1445
	jmp	.label_1434
.label_1445:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1449
.label_1434:
	jmp	.label_1424
.label_1506:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1455
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1455
	mov	qword ptr [rbp - 0xe8], 1
.label_1507:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1459
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
	jb	.label_1461
	jmp	.label_1481
.label_1481:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1461
	jmp	.label_1486
.label_1486:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1461
	jmp	.label_1493
.label_1493:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1496
	mov	rsp, rsp
	jmp	.label_1461
.label_1461:
	mov	rsp, rsp
	jmp	.label_1366
.label_1496:
	jmp	.label_1505
.label_1505:
	mov	rsp, rsp
	jmp	.label_1508
.label_1508:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1507
.label_1459:
	mov	rbp, rbp
	jmp	.label_1455
.label_1455:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_1514
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1514:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1515
.label_1515:
	lea	rsi, [rsi]
	jmp	.label_1518
.label_1518:
	jmp	.label_1520
.label_1520:
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
	jne	.label_1395
.label_1424:
	jmp	.label_1370
.label_1370:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1527
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1536
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1536
.label_1527:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1517:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1442
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1442
	jmp	.label_1551
.label_1551:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1552
	jmp	.label_1366
.label_1552:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1556
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1556
	lea	rdi, [rdi]
	jmp	.label_1561
.label_1561:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1563
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1563:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1387
.label_1387:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1419
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1419:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1380
.label_1380:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1487
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1487:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1556:
	jmp	.label_1397
.label_1397:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1399
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1399:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1436
.label_1436:
	jmp	.label_1407
.label_1407:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1409
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
.label_1409:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1426
.label_1426:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1431
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
.label_1431:
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
	jmp	.label_1441
.label_1442:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1450
	lea	rdi, [rdi]
	jmp	.label_1453
.label_1453:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1469
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1469:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1450:
	nop	
	jmp	.label_1441
.label_1441:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1465
	jmp	.label_1472
.label_1465:
	lea	rsi, [rsi]
	jmp	.label_1476
.label_1476:
	test	byte ptr [rbp - 0x42], 1
	je	.label_1401
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1401
	lea	rsi, [rsi]
	jmp	.label_1482
.label_1482:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1483
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1483:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1491
.label_1491:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1500
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1500:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1401:
	nop	
	jmp	.label_1510
.label_1510:
	mov	rsp, rsp
	jmp	.label_1378
.label_1378:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1513
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1513:
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
	jmp	.label_1517
.label_1472:
	mov	rsp, rsp
	jmp	.label_1420
.label_1536:
	lea	rsi, [rsi]
	jmp	.label_1413
.label_1413:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_1538
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1532
.label_1538:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1535
.label_1532:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1535
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
	jne	.label_1539
.label_1535:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1539
	mov	rsp, rsp
	jmp	.label_1420
.label_1539:
	nop	
	jmp	.label_1468
.label_1468:
	jmp	.label_1558
.label_1558:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1525
	jmp	.label_1366
.label_1525:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1543
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_1543
	lea	rdi, [rdi]
	jmp	.label_1368
.label_1368:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1562
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1562:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1377
.label_1377:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1463
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1463:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1389
.label_1389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1392
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1392:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1543:
	jmp	.label_1405
.label_1405:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1406
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1406:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1415
.label_1415:
	nop	
	jmp	.label_1420
.label_1420:
	jmp	.label_1423
.label_1423:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_1425
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1425
	lea	rdi, [rdi]
	jmp	.label_1429
.label_1429:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1432
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1432:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1438
.label_1438:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1443
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1443:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1425:
	jmp	.label_1454
.label_1454:
	nop	
	jmp	.label_1382
.label_1382:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1421
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1421:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1462
	mov	byte ptr [rbp - 0xb7], 0
.label_1462:
	mov	rbp, rbp
	jmp	.label_1422
.label_1422:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1473
.label_1497:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1480
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1480
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1480
	nop	
	jmp	.label_1366
.label_1480:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1490
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1490
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1490
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1503
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
	jmp	.label_1372
.label_1503:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1521
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1521
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1516
.label_1521:
	jmp	.label_1529
.label_1529:
	mov	rbp, rbp
	jmp	.label_1490
.label_1490:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1533
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1533
	mov	rbp, rbp
	jmp	.label_1391
.label_1391:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1540
	lea	rdi, [rdi]
	jmp	.label_1456
.label_1456:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1545
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1545:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1555
.label_1555:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1391
.label_1540:
	jmp	.label_1533
.label_1533:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1565
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_1565:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1372
.label_1366:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1375
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1375
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_1375:
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
.label_1372:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140f0
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
	#Procedure 0x414160

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
	je	.label_1567
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1568
.label_1567:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1568
.label_1568:
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
	je	.label_1569
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1569:
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
	#Procedure 0x414330
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
.label_1574:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1573
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
	jmp	.label_1574
.label_1573:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1572
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1570]],  rax
.label_1572:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1571
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1571:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414440

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
	#Procedure 0x414490

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
	jge	.label_1581
	call	abort
.label_1581:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1576
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
	jge	.label_1577
	call	xalloc_die
.label_1577:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1578
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1582
.label_1578:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1582:
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
	je	.label_1580
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1570]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1580:
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
.label_1576:
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
	ja	.label_1579
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
	je	.label_1575
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1575:
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
.label_1579:
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
	#Procedure 0x4147c0

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
	#Procedure 0x414800
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
	#Procedure 0x414830
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
	#Procedure 0x414870

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
	#Procedure 0x4148d0

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
	jne	.label_1583
	call	abort
.label_1583:
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
	#Procedure 0x414970

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
	#Procedure 0x4149e0

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
	#Procedure 0x414a20
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
	#Procedure 0x414a60

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
	#Procedure 0x414b10

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
	#Procedure 0x414b50

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
	#Procedure 0x414b80
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
	#Procedure 0x414bc0

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
	#Procedure 0x414ca0

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
	#Procedure 0x414cf0

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
	#Procedure 0x414d90
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
	#Procedure 0x414de0
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
	#Procedure 0x414e40

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
	#Procedure 0x414e80
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
	#Procedure 0x414ec0

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
	#Procedure 0x414f00

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
	#Procedure 0x414f40

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
	je	.label_1587
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1585
.label_1587:
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
	jne	.label_1586
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1585
.label_1586:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1584
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1585
.label_1584:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1585:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415080
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150a0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150c0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x60]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150e0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415100

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415130

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415160

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415190
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	qword ptr [rbp - 8], -1
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4151d0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4151f0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	xor	esi, esi
	lea	rdi, [rdi]
	call	memchr
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1588
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rcx
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1589
.label_1588:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1589:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415270
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4152c0

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rbp - 0x10]
	jge	.label_1590
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1592
.label_1590:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jle	.label_1594
	nop	
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_1592
.label_1594:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_1593
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_1593
	mov	rbp, rbp
	jmp	.label_1593
.label_1593:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jg	.label_1591
	cmp	qword ptr [rbp - 8], 0x77359400
	lea	rsi, [rsi]
	jg	.label_1591
	lea	rdi, [rdi]
	jmp	.label_1591
.label_1591:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1592:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415390
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_1595
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1597
.label_1595:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	jne	.label_1596
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 1], al
.label_1596:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
.label_1597:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415400
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_1598]]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	mov	rsp, rsp
	movaps	xmm0, xmm1
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415440

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
	je	.label_1599
	movabs	rsi, OFFSET FLAT:.str_11
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
	jmp	.label_1602
.label_1599:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1602:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_6
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
	mov	ecx, OFFSET FLAT:.str.3_5
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
	ja	.label_1603
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1601]]
	jmp	rcx
.label_4933:
	jmp	.label_1600
.label_4934:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_3
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
	jmp	.label_1600
.label_4935:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_1600
.label_4936:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_1600
.label_4937:
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
	jmp	.label_1600
.label_4938:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_1600
.label_4939:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_1600
.label_4940:
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
	jmp	.label_1600
.label_4941:
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
	jmp	.label_1600
.label_4942:
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
	jmp	.label_1600
.label_1603:
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
.label_1600:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c80
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
.label_1604:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1605
	mov	rbp, rbp
	jmp	.label_1606
.label_1606:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1604
.label_1605:
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
	#Procedure 0x415d30

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
.label_1611:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1607
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1613
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
	jmp	.label_1612
.label_1613:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1612:
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
.label_1607:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1610
	mov	rsp, rsp
	jmp	.label_1608
.label_1610:
	jmp	.label_1609
.label_1609:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1611
.label_1608:
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
	#Procedure 0x415e90

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
	je	.label_1614
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
.label_1614:
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
	#Procedure 0x416050
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_0
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_0
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
	#Procedure 0x416100
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
	jae	.label_1615
	mov	rbp, rbp
	call	xalloc_die
.label_1615:
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
	#Procedure 0x416160

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
	jne	.label_1616
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1616
	lea	rdi, [rdi]
	call	xalloc_die
.label_1616:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4161c0

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
	jae	.label_1617
	mov	rsp, rsp
	call	xalloc_die
.label_1617:
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
	#Procedure 0x416240

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
	jne	.label_1618
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1618
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1620
.label_1618:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1619
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1619
	lea	rsi, [rsi]
	call	xalloc_die
.label_1619:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1620:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4162f0

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
	jne	.label_1621
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1623
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
.label_1623:
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
	jae	.label_1625
	call	xalloc_die
.label_1625:
	lea	rsi, [rsi]
	jmp	.label_1624
.label_1621:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1622
	call	xalloc_die
.label_1622:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1624:
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
	#Procedure 0x416420

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
	#Procedure 0x416450

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
	#Procedure 0x416490

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
	#Procedure 0x4164e0

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
	jb	.label_1626
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1627
.label_1626:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1627:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416550

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
	#Procedure 0x4165a0

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
	#Procedure 0x416600

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_8
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
	#Procedure 0x416660

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	esi, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	rpl_fts_open
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1630
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_1629
	lea	rdi, [rdi]
	jmp	.label_1628
.label_1629:
	nop	
	movabs	rdi, OFFSET FLAT:.str_12
	movabs	rsi, OFFSET FLAT:.str.1_9
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_1628:
	lea	rdi, [rdi]
	call	xalloc_die
.label_1630:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416710

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1631
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	je	.label_1633
.label_1631:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	nop	
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 2], cl
	lea	rdi, [rdi]
	je	.label_1632
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 2], cl
	je	.label_1632
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 2], cl
.label_1632:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
.label_1633:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4167e0

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
	jg	.label_1648
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa0], 0x24
	mov	rsp, rsp
	jg	.label_1648
	lea	rdi, [rdi]
	jmp	.label_1655
.label_1648:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_13
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
.label_1655:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1671
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_1675
.label_1671:
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_1675
.label_1675:
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
	jne	.label_1693
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1641
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1641
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
	je	.label_1641
	nop	
	mov	qword ptr [rbp - 0x80], 1
	jmp	.label_1670
.label_1641:
	mov	dword ptr [rbp - 0x40], 4
	jmp	.label_1634
.label_1670:
	jmp	.label_1680
.label_1693:
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1683
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x22
	je	.label_1686
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 4
	mov	rsp, rsp
	jmp	.label_1634
.label_1686:
	nop	
	mov	dword ptr [rbp - 0xdc], 1
.label_1683:
	lea	rdi, [rdi]
	jmp	.label_1680
.label_1680:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_1647
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
	lea	rdi, [rdi]
	jmp	.label_1634
.label_1647:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1639
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
	jne	.label_1666
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xdc]
	or	edx, 2
	mov	dword ptr [rbp - 0x40], edx
	jmp	.label_1634
.label_1666:
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
	je	.label_1644
	jmp	.label_1688
.label_1688:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1644
	jmp	.label_1692
.label_1692:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_1644
	jmp	.label_1694
.label_1694:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_1644
	jmp	.label_1640
.label_1640:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	je	.label_1644
	jmp	.label_1662
.label_1662:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1644
	lea	rsi, [rsi]
	jmp	.label_1658
.label_1658:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	jb	.label_1644
	mov	rsp, rsp
	jmp	.label_1668
.label_1668:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	je	.label_1644
	mov	rsp, rsp
	jmp	.label_1679
.label_1679:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1644
	mov	rsp, rsp
	jmp	.label_1685
.label_1685:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	eax, 0x6d
	nop	
	mov	dword ptr [rbp - 0x48], eax
	nop	
	je	.label_1644
	lea	rdi, [rdi]
	jmp	.label_1689
.label_1689:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x74
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jne	.label_1646
	jmp	.label_1644
.label_1644:
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	strchr
	nop	
	cmp	rax, 0
	je	.label_1637
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
	je	.label_1653
	mov	rsp, rsp
	jmp	.label_1657
.label_1657:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1653
	lea	rsi, [rsi]
	jmp	.label_1667
.label_1667:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jne	.label_1669
	jmp	.label_1681
.label_1681:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 2]
	mov	rsp, rsp
	cmp	ecx, 0x42
	jne	.label_1682
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	eax, 2
	mov	dword ptr [rbp - 0x34], eax
.label_1682:
	nop	
	jmp	.label_1669
.label_1653:
	mov	dword ptr [rbp - 0x94], 0x3e8
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_1669:
	mov	rsp, rsp
	jmp	.label_1637
.label_1637:
	jmp	.label_1646
.label_1646:
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
	je	.label_1678
	jmp	.label_1638
.label_1638:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1642
	nop	
	jmp	.label_1649
.label_1649:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1651
	jmp	.label_1656
.label_1656:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1652
	lea	rdi, [rdi]
	jmp	.label_1661
.label_1661:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1660
	jmp	.label_1673
.label_1673:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	je	.label_1695
	lea	rdi, [rdi]
	jmp	.label_1672
.label_1672:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_1665
	nop	
	jmp	.label_1654
.label_1654:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	je	.label_1687
	jmp	.label_1690
.label_1690:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	je	.label_1691
	jmp	.label_1677
.label_1677:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	je	.label_1645
	jmp	.label_1696
.label_1696:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1635
	jmp	.label_1643
.label_1643:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x10], eax
	je	.label_1651
	jmp	.label_1650
.label_1650:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	je	.label_1652
	jmp	.label_1659
.label_1659:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1660
	jmp	.label_1664
.label_1664:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	je	.label_1665
	lea	rsi, [rsi]
	jmp	.label_1674
.label_1674:
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_1676
	jmp	.label_1684
.label_1645:
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, 0x200
	nop	
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1636
.label_1678:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	jmp	.label_1636
.label_1635:
	mov	dword ptr [rbp - 0xbc], 0
	lea	rdi, [rdi]
	jmp	.label_1636
.label_1642:
	nop	
	lea	rdi, [rbp - 0x80]
	mov	edx, 6
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_1636
.label_1651:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1636
.label_1652:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_1636
.label_1660:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1636
.label_1695:
	lea	rdi, [rbp - 0x80]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_1636
.label_1665:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1636
.label_1676:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x80]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1636
.label_1687:
	lea	rdi, [rbp - 0x80]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_1636
.label_1691:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, 7
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1636
.label_1684:
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
	jmp	.label_1634
.label_1636:
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
	je	.label_1663
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	or	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
.label_1663:
	jmp	.label_1639
.label_1639:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
.label_1634:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417100

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
	jge	.label_1697
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 1
	jmp	.label_1698
.label_1697:
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
	jge	.label_1699
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 1
	lea	rsi, [rsi]
	jmp	.label_1698
.label_1699:
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 0
.label_1698:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4171e0

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
.label_1700:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	cmp	eax, 0
	je	.label_1701
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 4]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_1700
.label_1701:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417250

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0xa4], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	qword ptr [rbp - 0xe0], r8
	mov	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0xa4]
	jg	.label_1721
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 0x24
	mov	rsp, rsp
	jg	.label_1721
	nop	
	jmp	.label_1748
.label_1721:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_13
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_1748:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1720
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	jmp	.label_1703
.label_1720:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1703
.label_1703:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x89], cl
.label_1735:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_1731
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x89], dl
	jmp	.label_1735
.label_1731:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x89]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_1750
	mov	dword ptr [rbp - 0xc8], 4
	nop	
	jmp	.label_1702
.label_1750:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xa4]
	call	strtoul
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jne	.label_1767
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	je	.label_1713
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1713
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_1713
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 1
	nop	
	jmp	.label_1732
.label_1713:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_1702
.label_1732:
	jmp	.label_1741
.label_1767:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_1745
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_1719
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_1702
.label_1719:
	mov	dword ptr [rbp - 0x18], 1
.label_1745:
	mov	rbp, rbp
	jmp	.label_1741
.label_1741:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_1761
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0xc8], edx
	nop	
	jmp	.label_1702
.label_1761:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_1706
	mov	dword ptr [rbp - 0x90], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1724
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0xc8], edx
	jmp	.label_1702
.label_1724:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_1708
	lea	rdi, [rdi]
	jmp	.label_1749
.label_1749:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1708
	nop	
	jmp	.label_1758
.label_1758:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x74], eax
	nop	
	je	.label_1708
	lea	rsi, [rsi]
	jmp	.label_1765
.label_1765:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1708
	jmp	.label_1705
.label_1705:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_1708
	jmp	.label_1714
.label_1714:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	je	.label_1708
	jmp	.label_1723
.label_1723:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	jb	.label_1708
	mov	rsp, rsp
	jmp	.label_1754
.label_1754:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	je	.label_1708
	lea	rsi, [rsi]
	jmp	.label_1744
.label_1744:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1708
	nop	
	jmp	.label_1727
.label_1727:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	je	.label_1708
	jmp	.label_1760
.label_1760:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	jne	.label_1711
	jmp	.label_1708
.label_1708:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1707
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], ecx
	nop	
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	je	.label_1712
	mov	rsp, rsp
	jmp	.label_1759
.label_1759:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1712
	jmp	.label_1729
.label_1729:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xd0], eax
	jne	.label_1746
	lea	rsi, [rsi]
	jmp	.label_1736
.label_1736:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_1737
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1737:
	jmp	.label_1746
.label_1712:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1746:
	lea	rsi, [rsi]
	jmp	.label_1707
.label_1707:
	nop	
	jmp	.label_1711
.label_1711:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xec], ecx
	mov	dword ptr [rbp - 4], edx
	nop	
	je	.label_1762
	mov	rbp, rbp
	jmp	.label_1704
.label_1704:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	je	.label_1710
	lea	rdi, [rdi]
	jmp	.label_1716
.label_1716:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1717
	jmp	.label_1766
.label_1766:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1725
	lea	rsi, [rsi]
	jmp	.label_1730
.label_1730:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1733
	mov	rsp, rsp
	jmp	.label_1738
.label_1738:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_1740
	jmp	.label_1715
.label_1715:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x28], eax
	je	.label_1747
	jmp	.label_1755
.label_1755:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1757
	nop	
	jmp	.label_1728
.label_1728:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	je	.label_1764
	jmp	.label_1751
.label_1751:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_1722
	jmp	.label_1756
.label_1756:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_1763
	nop	
	jmp	.label_1742
.label_1742:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_1717
	mov	rbp, rbp
	jmp	.label_1726
.label_1726:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	je	.label_1725
	lea	rsi, [rsi]
	jmp	.label_1734
.label_1734:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	je	.label_1733
	nop	
	jmp	.label_1743
.label_1743:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_1747
	mov	rbp, rbp
	jmp	.label_1752
.label_1752:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1753
	jmp	.label_1718
.label_1722:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	jmp	.label_1709
.label_1762:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_1709
.label_1763:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], 0
	jmp	.label_1709
.label_1710:
	lea	rdi, [rbp - 0x70]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1717:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_1709
.label_1725:
	lea	rdi, [rbp - 0x70]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jmp	.label_1709
.label_1733:
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1740:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1747:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1753:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale_0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1757:
	lea	rdi, [rbp - 0x70]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1764:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1718:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 0xc8], edx
	mov	rbp, rbp
	jmp	.label_1702
.label_1709:
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	or	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1739
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_1739:
	lea	rsi, [rsi]
	jmp	.label_1706
.label_1706:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], edx
.label_1702:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417c20

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	movsxd	rdi, dword ptr [rbp - 4]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, esi
	div	rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	mov	rbp, rbp
	jae	.label_1768
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 0x14], 1
	lea	rsi, [rsi]
	jmp	.label_1769
.label_1768:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_1769:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ca0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_1771:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 4], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1770
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	call	bkm_scale_0
	lea	rdi, [rdi]
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1771
.label_1770:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x417d10

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x417d70

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 0x29], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], r9d
	mov	qword ptr [word ptr [rbp - 64]], OFFSET FLAT:.str_14
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_1777
	nop	
	jmp	.label_1773
.label_1773:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_1775
	lea	rdi, [rdi]
	jmp	.label_1780
.label_1780:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	je	.label_1774
	lea	rsi, [rsi]
	jmp	.label_1778
.label_1778:
	call	abort
.label_1774:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_11
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_1772
.label_1775:
	movabs	rax, OFFSET FLAT:.str.2_7
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1772
.label_1777:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1772:
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jge	.label_1776
	lea	rax, [rbp - 2]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	r8b, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], r8b
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1779
.label_1776:
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1779:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417f20

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	mov	qword ptr [rbp - 0xd8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x54]
	jg	.label_1809
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_1809
	jmp	.label_1832
.label_1809:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_13
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_1832:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1825
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1818
.label_1825:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1818
.label_1818:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x91], cl
.label_1801:
	nop	
	movzx	eax, byte ptr [rbp - 0x91]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_1791
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_1801
.label_1791:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1810
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_1792
.label_1810:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_1828
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_1790
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1790
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_1790
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_1794
.label_1790:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_1792
.label_1794:
	lea	rdi, [rdi]
	jmp	.label_1804
.label_1828:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_1808
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_1814
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_1792
.label_1814:
	mov	dword ptr [rbp - 0x60], 1
.label_1808:
	jmp	.label_1804
.label_1804:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_1792
.label_1822:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1811
	mov	dword ptr [rbp - 0x64], 0x400
	mov	dword ptr [rbp - 0xd0], 1
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_1786
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	jmp	.label_1792
.label_1786:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	nop	
	je	.label_1789
	jmp	.label_1788
.label_1788:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_1789
	nop	
	jmp	.label_1823
.label_1823:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1789
	nop	
	jmp	.label_1834
.label_1834:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_1789
	lea	rsi, [rsi]
	jmp	.label_1840
.label_1840:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_1789
	jmp	.label_1845
.label_1845:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1789
	jmp	.label_1785
.label_1785:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_1789
	mov	rsp, rsp
	jmp	.label_1799
.label_1799:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1789
	jmp	.label_1798
.label_1798:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_1789
	mov	rsp, rsp
	jmp	.label_1817
.label_1817:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_1789
	jmp	.label_1824
.label_1824:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_1838
	jmp	.label_1789
.label_1789:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1833
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], edx
	mov	rsp, rsp
	je	.label_1784
	lea	rsi, [rsi]
	jmp	.label_1783
.label_1783:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1784
	jmp	.label_1846
.label_1846:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_1796
	lea	rsi, [rsi]
	jmp	.label_1802
.label_1802:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_1805
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_1805:
	jmp	.label_1796
.label_1784:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_1796:
	jmp	.label_1833
.label_1833:
	nop	
	jmp	.label_1838
.label_1838:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rbp, rbp
	je	.label_1827
	jmp	.label_1841
.label_1841:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1844
	jmp	.label_1842
.label_1842:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_1813
	jmp	.label_1781
.label_1781:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1782
	nop	
	jmp	.label_1835
.label_1835:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_1793
	nop	
	jmp	.label_1800
.label_1800:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1826
	mov	rsp, rsp
	jmp	.label_1807
.label_1807:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_1797
	jmp	.label_1837
.label_1837:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1839
	mov	rbp, rbp
	jmp	.label_1819
.label_1819:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1821
	jmp	.label_1829
.label_1829:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1831
	jmp	.label_1836
.label_1836:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1815
	jmp	.label_1816
.label_1816:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1813
	jmp	.label_1843
.label_1843:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1782
	jmp	.label_1820
.label_1820:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1793
	jmp	.label_1787
.label_1787:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1797
	jmp	.label_1812
.label_1812:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_1803
	jmp	.label_1806
.label_1831:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale_1
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1827:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1815:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_1795
.label_1844:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1813:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1782:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1793:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1826:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_1795
.label_1797:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_1795
.label_1803:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1839:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1821:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1795
.label_1806:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	jmp	.label_1792
.label_1795:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_1830
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_1830:
	jmp	.label_1811
.label_1811:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_1792:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4188b0

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_1847
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_1848
.label_1847:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_1848:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418930

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_1849:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_1850
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale_1
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1849
.label_1850:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4189b0

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
	jge	.label_1855
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1853
.label_1855:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1852
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
	je	.label_1851
.label_1852:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1851
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1851:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1854
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
.label_1854:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1853:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ad0

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
	je	.label_1856
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1857
.label_1856:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1858
.label_1857:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1858:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x418b40

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
	je	.label_1859
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
.label_1859:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ba0

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_7
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
	jne	.label_1864
	jmp	.label_1863
.label_1864:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1862
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
	jge	.label_1860
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_1860
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
	je	.label_1861
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	dup2
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_1866
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 1
.label_1866:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 8], eax
.label_1861:
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jne	.label_1865
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	orig_freopen
	mov	qword ptr [rbp - 0x38], rax
.label_1865:
	mov	rbp, rbp
	jmp	.label_1860
.label_1860:
	mov	rbp, rbp
	jmp	.label_1862
.label_1862:
	lea	rdi, [rdi]
	jmp	.label_1863
.label_1863:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418d00

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
	#Procedure 0x418d40

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
	jne	.label_1867
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1867
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1867
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
	jne	.label_1868
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1869
.label_1868:
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
	jmp	.label_1869
.label_1867:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1869:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418e50

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x90], 0
	mov	esi, dword ptr [rbp - 0x40]
	and	esi, 0xfffff000
	cmp	esi, 0
	je	.label_1887
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	nop	
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1876
.label_1887:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1902
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0x200
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1902
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1876
.label_1902:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	and	eax, 0x12
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1870
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1876
.label_1870:
	mov	rsp, rsp
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1884
	mov	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jmp	.label_1876
.label_1884:
	xor	esi, esi
	mov	eax, 0x80
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x48], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	and	eax, 2
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1897
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax + 0x48], ecx
.label_1897:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1873
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1873
	jmp	.label_1898
.label_1898:
	movabs	rdi, OFFSET FLAT:.str_3
	xor	esi, esi
	mov	al, 0
	nop	
	call	open_safer
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	jge	.label_1880
	mov	rsp, rsp
	jmp	.label_1886
.label_1880:
	mov	edi, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_1886:
	jmp	.label_1873
.label_1873:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	fts_maxarglen
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	jbe	.label_1893
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	jmp	.label_1878
.label_1893:
	mov	rsp, rsp
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_1878
.label_1878:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rsp, rsp
	call	fts_palloc
	test	al, 1
	jne	.label_1905
	jmp	.label_1906
.label_1905:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1907
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	fts_alloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1889
	mov	rsp, rsp
	jmp	.label_1882
.label_1889:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x68], -1
.label_1907:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_1888
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
.label_1888:
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], 0
.label_1871:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1890
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	and	ecx, 0x800
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_1900
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	cmp	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jae	.label_1874
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x60]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	jne	.label_1874
	nop	
	jmp	.label_1872
.label_1872:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rbp - 0x51], cl
	jae	.label_1883
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, 2
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x2f
	mov	rsp, rsp
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], sil
.label_1883:
	nop	
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_1895
	mov	rbp, rbp
	jmp	.label_1875
.label_1895:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_1872
.label_1875:
	lea	rdi, [rdi]
	jmp	.label_1874
.label_1874:
	jmp	.label_1900
.label_1900:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	call	fts_alloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	cmp	rax, 0
	jne	.label_1903
	jmp	.label_1896
.label_1903:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 0x108
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x41], 1
	je	.label_1877
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1877
	nop	
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x68]
	call	fts_set_stat_required
	jmp	.label_1885
.label_1877:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	word ptr [rsi + 0x70], ax
.label_1885:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1892
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1894
.label_1892:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_1899
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_1901
.label_1899:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x90], rax
.label_1901:
	lea	rsi, [rsi]
	jmp	.label_1894
.label_1894:
	lea	rsi, [rsi]
	jmp	.label_1908
.label_1908:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_1871
.label_1890:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1881
	cmp	qword ptr [rbp - 0x80], 1
	nop	
	jbe	.label_1881
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x80]
	call	fts_sort
	mov	qword ptr [rbp - 0x20], rax
.label_1881:
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx], rax
	cmp	rax, 0
	jne	.label_1891
	jmp	.label_1896
.label_1891:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	word ptr [rax + 0x70], 9
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x58], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	setup_dir
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1904
	lea	rsi, [rsi]
	jmp	.label_1896
.label_1904:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_1879
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1879
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	diropen
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_1879
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_1879:
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_1876
.label_1896:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	call	free
.label_1882:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_1906:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x38], 0
.label_1876:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4195e0

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_1911:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_1910
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jbe	.label_1912
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1912:
	jmp	.label_1909
.label_1909:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1911
.label_1910:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419660

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x30]
	add	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsi, 0x100
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi + 0x30]
	jae	.label_1913
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	lea	rsi, [rsi]
	jmp	.label_1915
.label_1913:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax + 0x30]
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1914
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1915
.label_1914:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x20], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
.label_1915:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419770

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, 1
	add	rdx, 0x10f
	and	rdx, 0xfffffffffffffff8
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1916
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1917
.label_1916:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rdx + rax + 0x108], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	mov	rax, qword ptr [rbp - 8]
	mov	word ptr [rax + 0x74], 3
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1917:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4198b0

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	je	.label_1918
	lea	rdi, [rdi]
	call	abort
.label_1918:
	nop	
	jmp	.label_1919
.label_1919:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, 2
	nop	
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0xa8], rsi
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419930

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x13], al
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rsi, 0x78
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1934
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_1934
	mov	byte ptr [rbp - 0x13], 1
.label_1934:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1926
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x13], 1
	mov	rbp, rbp
	je	.label_1933
.label_1926:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1928
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1922
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1922
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 0xd
	jmp	.label_1927
.label_1922:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_1936
.label_1928:
	jmp	.label_1924
.label_1933:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	fstatat
	cmp	eax, 0
	je	.label_1935
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], ecx
.label_1936:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	mov	word ptr [rbp - 0x12], 0xa
	jmp	.label_1927
.label_1935:
	lea	rdi, [rdi]
	jmp	.label_1924
.label_1924:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1920
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_1929
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_1930
.label_1929:
	mov	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1932
.label_1930:
	mov	rsp, rsp
	mov	eax, 2
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	edi, dword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	and	edi, 0x20
	cmp	edi, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	movsxd	rsi, eax
	nop	
	sub	rdx, rsi
	mov	qword ptr [rbp - 0x28], rdx
.label_1932:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax + 0x108]
	lea	rdi, [rdi]
	cmp	edx, 0x2e
	lea	rsi, [rsi]
	jne	.label_1921
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_1923
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 0x109]
	nop	
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_1921
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_1921
.label_1923:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	nop	
	mov	word ptr [rbp - 0x12], si
	mov	rbp, rbp
	jmp	.label_1927
.label_1921:
	mov	word ptr [rbp - 0x12], 1
	jmp	.label_1927
.label_1920:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	nop	
	jne	.label_1931
	mov	rsp, rsp
	mov	word ptr [rbp - 0x12], 0xc
	jmp	.label_1927
.label_1931:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_1925
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 8
	jmp	.label_1927
.label_1925:
	mov	rbp, rbp
	mov	word ptr [rbp - 0x12], 3
.label_1927:
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 0x12]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419c60

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	rsp, rsp
	lea	rax, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rax
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_1937
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1943
.label_1937:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1943
.label_1943:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	jbe	.label_1938
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, 0x28
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_1941
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	shl	rcx, 3
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1939
.label_1941:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_1942
.label_1939:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
.label_1938:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
.label_1944:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1940
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1944
.label_1940:
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	qsort
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
.label_1945:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_1946
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1945
.label_1946:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_1942:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419ec0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	mov	rbp, rbp
	and	eax, 0x102
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1947
	mov	eax, 0x1f
	lea	rsi, [rsi]
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:AD_hash
	movabs	rcx, OFFSET FLAT:AD_compare
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	jne	.label_1950
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1948
.label_1950:
	jmp	.label_1951
.label_1947:
	mov	eax, 0x20
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1949
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1948
.label_1949:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_1951:
	mov	byte ptr [rbp - 9], 1
.label_1948:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419fc0

	.globl diropen
	.type diropen, @function
diropen:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x48]
	nop	
	and	edx, 0x10
	mov	rbp, rbp
	cmp	edx, 0
	cmovne	eax, ecx
	lea	rdi, [rdi]
	or	eax, 0x90900
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1952
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	al, 0
	nop	
	call	openat_safer
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	jmp	.label_1953
.label_1952:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	al, 0
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_1953:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a070

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
.label_1955:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_1956
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1954
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_1954:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	jmp	.label_1955
.label_1956:
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a0e0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_1970
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1958:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	jl	.label_1959
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1964
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1968
.label_1964:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1968:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_1958
.label_1959:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_1970:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1961
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_1961:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1972
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x2c]
	mov	rsp, rsp
	jg	.label_1957
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	nop	
	cmp	eax, 0
	nop	
	je	.label_1962
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_1962:
	lea	rsi, [rsi]
	jmp	.label_1957
.label_1957:
	jmp	.label_1966
.label_1972:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1967
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1971
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1971:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edi, dword ptr [rax + 0x28]
	nop	
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1960
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_1963
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
.label_1963:
	jmp	.label_1960
.label_1960:
	lea	rdi, [rdi]
	jmp	.label_1967
.label_1967:
	jmp	.label_1966
.label_1966:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x60
	mov	rdi, rax
	call	fd_ring_clear
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	je	.label_1973
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	call	hash_free
.label_1973:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_1965
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1969
.label_1965:
	mov	dword ptr [rbp - 4], 0
.label_1969:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a390

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
.label_1974:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	i_ring_empty
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_1976
	nop	
	jmp	.label_1977
.label_1976:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 8], eax
	cmp	ecx, dword ptr [rbp - 8]
	jg	.label_1975
	mov	edi, dword ptr [rbp - 8]
	call	close
	mov	dword ptr [rbp - 4], eax
.label_1975:
	jmp	.label_1974
.label_1977:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a400

	.globl free_dir
	.type free_dir, @function
free_dir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x102
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_1978
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_1980
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	call	hash_free
.label_1980:
	lea	rdi, [rdi]
	jmp	.label_1979
.label_1978:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
.label_1979:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a480

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi], 0
	mov	rbp, rbp
	je	.label_2023
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2031
.label_2023:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1997
.label_2031:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	cx, word ptr [rax + 0x74]
	nop	
	mov	word ptr [rbp - 0x4a], cx
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	movzx	edx, word ptr [rbp - 0x4a]
	lea	rdi, [rdi]
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_2045
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rsi
	jmp	.label_1997
.label_2045:
	movzx	eax, word ptr [rbp - 0x4a]
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_2005
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	nop	
	je	.label_2012
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rsp, rsp
	cmp	ecx, 0xd
	jne	.label_2005
.label_2012:
	nop	
	mov	edx, 1
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_1999
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1999
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_2004
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 7
	jmp	.label_2050
.label_2004:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	nop	
	or	ecx, 2
	mov	dx, cx
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x72], dx
.label_2050:
	jmp	.label_1999
.label_1999:
	jmp	.label_2000
.label_2005:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_2003
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x4a]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_2011
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2014
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_2014
.label_2011:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	and	ecx, 2
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2022
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x18], eax
.label_2022:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_2040
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
.label_2040:
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1997
.label_2014:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_1992
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x1000
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1992
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 8], 0
.label_1992:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 8], 0
	je	.label_2024
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1991
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_1982:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_2042
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1982
.label_2042:
	jmp	.label_1991
.label_1991:
	lea	rdi, [rdi]
	jmp	.label_2001
.label_2024:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2013
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2017
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1997
.label_2017:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x40], 0
	je	.label_2027
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_2027
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
.label_2027:
	nop	
	jmp	.label_2002
.label_2002:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	leave_dir
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1997
.label_2013:
	lea	rdi, [rdi]
	jmp	.label_2001
.label_2001:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 8], 0
	jmp	.label_2034
.label_2003:
	mov	rsp, rsp
	jmp	.label_1986
.label_1986:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	jne	.label_1989
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_1989
	mov	rbp, rbp
	mov	esi, 3
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	fts_build
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2029
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x2000
	nop	
	cmp	ecx, 0
	je	.label_2036
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1997
.label_2036:
	jmp	.label_2028
.label_2029:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	jmp	.label_2034
.label_1989:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	je	.label_2049
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1998
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	restore_initial_cwd
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2009
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x48], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_1997
.label_2009:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	free_dir
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_load
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	call	setup_dir
	mov	byte ptr [rbp - 0x39], al
	jmp	.label_2000
.label_1998:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x74]
	mov	rsp, rsp
	cmp	ecx, 4
	jne	.label_2035
	lea	rdi, [rdi]
	jmp	.label_1986
.label_2035:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + 0x74]
	nop	
	cmp	ecx, 2
	nop	
	jne	.label_2015
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	call	fts_stat
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rsi + 0x70]
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_1993
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1993
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_2018
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
	mov	rbp, rbp
	jmp	.label_2019
.label_2018:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_2019:
	jmp	.label_1993
.label_1993:
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x74], 3
.label_2015:
	mov	rbp, rbp
	jmp	.label_2034
.label_2034:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rdx + 0x38]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x2f
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jne	.label_2037
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2048
.label_2037:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_2048:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x2f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memmove
.label_2000:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_1983
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0xa8], 2
	mov	rsp, rsp
	jne	.label_2032
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], 0
	nop	
	jne	.label_1995
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_1995
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1995
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_1995
	nop	
	jmp	.label_2041
.label_1995:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsi + 0x90]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	nop	
	jne	.label_2008
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	je	.label_2008
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	jae	.label_2008
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_2008
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x68]
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x68], rcx
.label_2008:
	mov	rbp, rbp
	jmp	.label_2041
.label_2041:
	jmp	.label_2044
.label_2032:
	nop	
	jmp	.label_2046
.label_2046:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_2047
	nop	
	call	abort
.label_2047:
	jmp	.label_2010
.label_2010:
	mov	rsp, rsp
	jmp	.label_2044
.label_2044:
	mov	rsp, rsp
	jmp	.label_1983
.label_1983:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1985
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1994
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_1994:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	enter_dir
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2051
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1997
.label_2051:
	mov	rbp, rbp
	jmp	.label_1985
.label_1985:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1997
.label_2049:
	jmp	.label_2028
.label_2028:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x58], -1
	mov	rbp, rbp
	jne	.label_2043
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1997
.label_2043:
	jmp	.label_2039
.label_2039:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rsp, rsp
	jne	.label_1996
	call	abort
.label_1996:
	jmp	.label_2006
.label_2006:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2030
	mov	rdi, qword ptr [rbp - 0x58]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_2038
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rbp, rbp
	mov	dword ptr [rax + 0x48], ecx
.label_2038:
	jmp	.label_2033
.label_2030:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	nop	
	je	.label_1984
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1990
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_2020
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x44]
	nop	
	call	cwd_advance_fd
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	cl, dl
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1988
	jmp	.label_1990
.label_2020:
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	fchdir
	cmp	eax, 0
	je	.label_1990
.label_1988:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1990:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1981
.label_1984:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_2025
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_8
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	nop	
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2025
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_2025:
	jmp	.label_1981
.label_1981:
	nop	
	jmp	.label_2033
.label_2033:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rbp, rbp
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_1987
	nop	
	mov	eax, 6
	mov	rbp, rbp
	mov	ecx, 7
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rdx + 0x40], 0
	mov	rbp, rbp
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	si, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	word ptr [rdx + 0x70], si
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rdx + 0x40], 0
	nop	
	jne	.label_2021
	lea	rdi, [rdi]
	jmp	.label_2016
.label_2016:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	leave_dir
	jmp	.label_2021
.label_2021:
	mov	rsp, rsp
	jmp	.label_1987
.label_1987:
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2026
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	jmp	.label_2007
.label_2026:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
.label_2007:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1997:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b1e0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x102
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2052
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	mov	rsi, rax
	call	hash_delete
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jne	.label_2059
	call	abort
.label_2059:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	lea	rdi, [rdi]
	jmp	.label_2054
.label_2052:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2055
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_2055
	mov	rsp, rsp
	jmp	.label_2053
.label_2053:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2056
	lea	rsi, [rsi]
	call	abort
.label_2056:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2058
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_2058
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_2058:
	mov	rsp, rsp
	jmp	.label_2057
.label_2057:
	mov	rsp, rsp
	jmp	.label_2055
.label_2055:
	jmp	.label_2054
.label_2054:
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b380

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	r8b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rdi
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rcx
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], r8b
	je	.label_2060
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_8
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xcd], cl
.label_2060:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	edx, dword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	and	edx, 4
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_2075
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_2067
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0xcc]
	jg	.label_2067
	nop	
	mov	edi, dword ptr [rbp - 0xcc]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
.label_2067:
	mov	dword ptr [rbp - 0xd4], 0
	lea	rsi, [rsi]
	jmp	.label_2064
.label_2075:
	cmp	dword ptr [rbp - 0xcc], 0
	lea	rsi, [rsi]
	jge	.label_2062
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb9], 1
	je	.label_2062
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2062
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_2068
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	i_ring_pop
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	dword ptr [rbp - 0xd8], eax
	mov	byte ptr [rbp - 0xb9], 1
	cmp	ecx, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	jg	.label_2074
	mov	eax, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	mov	qword ptr [rbp - 0xa8], 0
.label_2074:
	jmp	.label_2068
.label_2068:
	jmp	.label_2062
.label_2062:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcc], 0
	mov	rbp, rbp
	jge	.label_2069
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	diropen
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_2069
	mov	dword ptr [rbp - 0xd4], 0xffffffff
	nop	
	jmp	.label_2064
.label_2069:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 2
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_2066
	cmp	qword ptr [rbp - 0xa8], 0
	nop	
	je	.label_2071
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_8
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_2071
.label_2066:
	lea	rsi, [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0xdc]
	call	__fstat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2063
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_2065
.label_2063:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	jne	.label_2072
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x90]
	nop	
	je	.label_2070
.label_2072:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 8], 0xffffffff
	mov	rbp, rbp
	jmp	.label_2065
.label_2070:
	jmp	.label_2071
.label_2071:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2061
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
	nop	
	jmp	.label_2064
.label_2061:
	mov	edi, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	call	fchdir
	mov	dword ptr [rbp - 8], eax
.label_2065:
	nop	
	cmp	dword ptr [rbp - 0xcc], 0
	jge	.label_2073
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], ecx
	mov	edi, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	nop	
	mov	dword ptr [rbp - 0xb0], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_2073:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], eax
.label_2064:
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b760

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x110
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], esi
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdi + 0x18], 0
	lea	rsi, [rsi]
	setne	al
	nop	
	xor	al, 0xff
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xad], al
	mov	byte ptr [rbp - 0x11], 0
	test	byte ptr [rbp - 0xad], 1
	mov	rbp, rbp
	je	.label_2128
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	dirfd
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_2143
	jmp	.label_2146
.label_2146:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xc8], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_2078
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 4
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
.label_2078:
	mov	qword ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	jmp	.label_2089
.label_2143:
	mov	rbp, rbp
	jmp	.label_2092
.label_2128:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_2094
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2094
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	jmp	.label_2102
.label_2094:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2102
.label_2102:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rdi + 0x48]
	mov	rsp, rsp
	and	ecx, 0x10
	cmp	ecx, 0
	mov	dword ptr [rbp - 0xe4], eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rsi
	mov	byte ptr [rbp - 0xe9], dl
	je	.label_2103
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x81], cl
	nop	
	je	.label_2113
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0x81], cl
.label_2113:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xe9], al
.label_2103:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xe9]
	mov	rbp, rbp
	lea	rcx, [rbp - 4]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	esi, 0x20000
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	cmovne	edx, esi
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x108]
	call	opendirat
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_2135
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	nop	
	jne	.label_2138
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 4
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
.label_2138:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_2089
.label_2135:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rbp, rbp
	jne	.label_2144
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_2081
.label_2144:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_2084
	jmp	.label_2088
.label_2088:
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	fts_stat
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rbp - 0x8a], ax
	nop	
	call	enter_dir
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2099
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_2089
.label_2099:
	jmp	.label_2084
.label_2084:
	jmp	.label_2081
.label_2081:
	jmp	.label_2092
.label_2092:
	nop	
	mov	eax, 0x186a0
	nop	
	mov	ecx, eax
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [rbp - 0xad], 1
	mov	rsp, rsp
	je	.label_2116
	mov	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	jmp	.label_2112
.label_2116:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xac], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	je	.label_2115
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	je	.label_2118
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	je	.label_2118
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_2118
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdx + 0x88], 2
	nop	
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_2118
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 4]
	call	leaf_optimization
	mov	rbp, rbp
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xf9], cl
.label_2118:
	mov	al, byte ptr [rbp - 0xf9]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_2115:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xae], al
	test	byte ptr [rbp - 0xae], 1
	mov	rsp, rsp
	jne	.label_2145
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_2079
.label_2145:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2082
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	rpl_fcntl
	mov	dword ptr [rbp - 4], eax
.label_2082:
	cmp	dword ptr [rbp - 4], 0
	jl	.label_2085
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	fts_safe_changedir
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2098
.label_2085:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xae], 1
	je	.label_2100
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_2100
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], ecx
.label_2100:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	byte ptr [rbp - 0xae], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	closedir
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2110
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2110
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	close
	nop	
	mov	dword ptr [rbp - 0xe8], eax
.label_2110:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_2122
.label_2098:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xae], 1
.label_2122:
	nop	
	jmp	.label_2079
.label_2079:
	jmp	.label_2112
.label_2112:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_2131
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2137
.label_2131:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_2137:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2117
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	mov	byte ptr [rax], 0x2f
	mov	rsp, rsp
	jmp	.label_2076
.label_2117:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], 0
.label_2076:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0xd0], 0
.label_2077:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	je	.label_2108
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xc0], 0
	mov	rbp, rbp
	jne	.label_2111
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_2107
	call	__errno_location
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], edx
	nop	
	test	byte ptr [rbp - 0xad], 1
	mov	byte ptr [rbp - 0xc1], cl
	mov	rbp, rbp
	jne	.label_2119
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xc1], al
.label_2119:
	mov	al, byte ptr [rbp - 0xc1]
	mov	rsp, rsp
	mov	ecx, 4
	mov	rsp, rsp
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	word ptr [rdi + 0x70], si
.label_2107:
	jmp	.label_2108
.label_2111:
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_2136
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_2136
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x14], 0
	mov	rsp, rsp
	je	.label_2140
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_2136
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_2136
.label_2140:
	mov	rsp, rsp
	jmp	.label_2077
.label_2136:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 0x13
	nop	
	mov	rdi, rax
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 0x13
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsi, rax
	call	fts_alloc
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_2087
	jmp	.label_2091
.label_2087:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	cmp	rax, qword ptr [rbp - 0x80]
	jb	.label_2093
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	rax, 1
	mov	rsi, rax
	mov	rbp, rbp
	call	fts_palloc
	test	al, 1
	mov	rbp, rbp
	jne	.label_2105
	jmp	.label_2091
.label_2091:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	call	fts_lfree
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x70], 7
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x10c], ecx
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x10c]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_2089
.label_2105:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	je	.label_2125
	nop	
	mov	byte ptr [rbp - 0x51], 1
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2130
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
.label_2130:
	jmp	.label_2125
.label_2125:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x80], rax
.label_2093:
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_2141
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	fts_lfree
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	nop	
	call	closedir
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0x88], eax
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_2089
.label_2141:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	edx, 4
	cmp	edx, 0
	je	.label_2095
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 0x108
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rcx + 0x60]
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	rsi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_2121
.label_2095:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
.label_2121:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_2126
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	nop	
	je	.label_2129
.label_2126:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf], cl
	je	.label_2134
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xaf], cl
	je	.label_2134
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0xaf], cl
	nop	
	je	.label_2134
	mov	rax, qword ptr [rbp - 0xc0]
	movzx	ecx, byte ptr [rax + 0x12]
	nop	
	cmp	ecx, 4
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaf], dl
.label_2134:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xaf]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x82], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	word ptr [rcx + 0x70], 0xb
	mov	rcx, qword ptr [rbp - 0xe0]
	add	rcx, 0x78
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	movzx	esi, byte ptr [rdx + 0x12]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	set_stat_type
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	al, byte ptr [rbp - 0x82]
	xor	al, 0xff
	nop	
	and	al, 1
	nop	
	movzx	esi, al
	call	fts_set_stat_required
	jmp	.label_2097
.label_2129:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	word ptr [rsi + 0x70], ax
.label_2097:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rax + 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_2104
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2109
.label_2104:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x68], rax
.label_2109:
	cmp	qword ptr [rbp - 0xd0], 0x2710
	jne	.label_2114
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_2114
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	dirent_inode_sort_may_be_useful
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
.label_2114:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xd0]
	ja	.label_2123
	mov	rsp, rsp
	jmp	.label_2127
.label_2123:
	nop	
	jmp	.label_2077
.label_2108:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_2133
	jmp	.label_2132
.label_2132:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	closedir
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	jmp	.label_2133
.label_2133:
	lea	rdi, [rdi]
	jmp	.label_2127
.label_2127:
	test	byte ptr [rbp - 0x51], 1
	mov	rsp, rsp
	je	.label_2142
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_padjust
.label_2142:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2147
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_2080
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_2083
.label_2080:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_2083:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	byte ptr [rax], 0
.label_2147:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xad], 1
	jne	.label_2090
	nop	
	test	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	je	.label_2090
	cmp	dword ptr [rbp - 0xac], 1
	je	.label_2096
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_2090
.label_2096:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2101
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	call	restore_initial_cwd
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2106
	jmp	.label_2090
.label_2101:
	mov	edx, 0xffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str.2_8
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	fts_safe_changedir
	nop	
	cmp	eax, 0
	je	.label_2090
.label_2106:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_2089
.label_2090:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_2120
	cmp	dword ptr [rbp - 0xac], 3
	mov	rsp, rsp
	jne	.label_2124
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_2124
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	lea	rdi, [rdi]
	je	.label_2124
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 6
.label_2124:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_lfree
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_2089
.label_2120:
	test	byte ptr [rbp - 0x11], 1
	je	.label_2139
	movabs	rax, OFFSET FLAT:fts_compare_ino
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	call	fts_sort
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x40], 0
.label_2139:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_2086
	cmp	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jbe	.label_2086
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	call	fts_sort
	mov	qword ptr [rbp - 0xa0], rax
.label_2086:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
.label_2089:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsp, 0x110
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c870

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	jne	.label_2153
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2150
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	je	.label_2149
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_2151
.label_2149:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_2151:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	jmp	.label_2152
.label_2150:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_2148
	mov	eax, 0xffffff9c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_2154
.label_2148:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_2154:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_2152:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
.label_2153:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	ecx, al
	mov	dword ptr [rbp - 0x28], ecx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x60
	mov	rdi, rdx
	call	fd_ring_clear
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c9d0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	eax, 0x2f
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x60]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x108
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	memmove
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 0x108
	mov	rdi, rcx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	strrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2155
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, 0x108
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_2156
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_2155
.label_2156:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x108
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	add	rdi, 1
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x28]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x60], rax
.label_2155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cb30

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], esi
	mov	rdi, qword ptr [rbp - 0x28]
	call	filesystem_type
	mov	rdi, rax
	mov	rsp, rsp
	test	rax, rax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	je	.label_2163
	jmp	.label_2167
.label_2167:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_2162
	lea	rdi, [rdi]
	jmp	.label_2157
.label_2157:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	je	.label_2160
	jmp	.label_2168
.label_2168:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	je	.label_2169
	mov	rsp, rsp
	jmp	.label_2158
.label_2158:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x30], rax
	je	.label_2161
	jmp	.label_2166
.label_2166:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x18], rax
	je	.label_2169
	lea	rsi, [rsi]
	jmp	.label_2170
.label_2170:
	mov	eax, 0xff534d42
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	je	.label_2159
	lea	rdi, [rdi]
	jmp	.label_2165
.label_2169:
	mov	dword ptr [rbp - 0x38], 2
	lea	rsi, [rsi]
	jmp	.label_2164
.label_2163:
	lea	rdi, [rdi]
	jmp	.label_2161
.label_2161:
	lea	rsi, [rsi]
	jmp	.label_2159
.label_2159:
	jmp	.label_2162
.label_2162:
	mov	rbp, rbp
	jmp	.label_2160
.label_2160:
	mov	dword ptr [rbp - 0x38], 0
	nop	
	jmp	.label_2164
.label_2165:
	mov	dword ptr [rbp - 0x38], 1
.label_2164:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cc80

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_2171
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, 0x78
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_2177
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	jmp	.label_2172
.label_2177:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	je	.label_2176
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2178
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_2172
.label_2178:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 2
.label_2176:
	mov	rbp, rbp
	jmp	.label_2174
.label_2171:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_2173
	jmp	.label_2175
.label_2173:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	word ptr [rax + 0x70], 2
.label_2175:
	jmp	.label_2174
.label_2174:
	mov	byte ptr [rbp - 0x19], 1
.label_2172:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ce10

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	al, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x10], esi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rdi + 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	jne	.label_2182
	cmp	dword ptr [rbp - 4], -0x64
	mov	rsp, rsp
	je	.label_2182
	call	abort
.label_2182:
	mov	rsp, rsp
	jmp	.label_2180
.label_2180:
	nop	
	test	byte ptr [rbp - 0x19], 1
	je	.label_2179
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x60
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x20], eax
	nop	
	cmp	esi, dword ptr [rbp - 0x20]
	jg	.label_2185
	mov	edi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_2185:
	mov	rsp, rsp
	jmp	.label_2183
.label_2179:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_2181
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2184
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_2184:
	jmp	.label_2181
.label_2181:
	lea	rdi, [rdi]
	jmp	.label_2183
.label_2183:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x2c], eax
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cf20

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_2186
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_2186
	cmp	dword ptr [rbp - 0xc], 2
	lea	rsi, [rsi]
	je	.label_2186
	cmp	dword ptr [rbp - 0xc], 3
	nop	
	je	.label_2186
	nop	
	cmp	dword ptr [rbp - 0xc], 4
	mov	rsp, rsp
	je	.label_2186
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	jmp	.label_2187
.label_2186:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 8]
	mov	word ptr [rdx + 0x74], cx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
.label_2187:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cfc0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_2188
	nop	
	cmp	dword ptr [rbp - 8], 0x1000
	mov	rbp, rbp
	je	.label_2188
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_2193
.label_2188:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2198
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2193
.label_2198:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_2196
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_2193
.label_2196:
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	cmp	ecx, 1
	je	.label_2189
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_2193
.label_2189:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2197
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
.label_2197:
	cmp	dword ptr [rbp - 8], 0x1000
	jne	.label_2191
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], 2
	nop	
	jmp	.label_2201
.label_2191:
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 1
.label_2201:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2190
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_2190
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2199
.label_2190:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_2193
.label_2199:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	nop	
	jge	.label_2192
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2193
.label_2192:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 8]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x48]
	and	esi, 0x200
	lea	rsi, [rsi]
	cmp	esi, 0
	mov	rsp, rsp
	je	.label_2195
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x28]
	call	cwd_advance_fd
	jmp	.label_2194
.label_2195:
	mov	edi, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	fchdir
	cmp	eax, 0
	je	.label_2200
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	close
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2193
.label_2200:
	mov	edi, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 4], eax
.label_2194:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2193:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d2a0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d2e0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x19], cl
	lea	rdi, [rdi]
	jne	.label_2202
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], dl
.label_2202:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d360

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], esi
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rdi + 0x48]
	and	esi, 0x200
	mov	rbp, rbp
	cmp	esi, 0
	jne	.label_2211
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_2207
.label_2211:
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_2206
	mov	eax, 0xd
	mov	edi, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_type_hash
	movabs	rcx, OFFSET FLAT:dev_type_compare
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:free
	mov	rbp, rbp
	call	hash_initialize
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_2206:
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	je	.label_2214
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	hash_lookup
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2212
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2207
.label_2212:
	nop	
	jmp	.label_2214
.label_2214:
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jl	.label_2208
	nop	
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	fstatfs
	cmp	eax, 0
	nop	
	je	.label_2216
.label_2208:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2207
.label_2216:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	je	.label_2204
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edi, eax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rsi, [rsi]
	je	.label_2210
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_2213
	mov	rsp, rsp
	jmp	.label_2209
.label_2209:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_2215
	call	abort
.label_2215:
	nop	
	jmp	.label_2203
.label_2203:
	jmp	.label_2205
.label_2213:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_2205:
	jmp	.label_2210
.label_2210:
	jmp	.label_2204
.label_2204:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2207:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d5d0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d620

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d680

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	dec	esi
	lea	rdi, [rdi]
	mov	edi, esi
	sub	esi, 0xb
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	ja	.label_2217
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2219]]
	jmp	rcx
.label_4875:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0x6000
	jmp	.label_2218
.label_4873:
	mov	dword ptr [rbp - 0x24], 0x2000
	mov	rsp, rsp
	jmp	.label_2218
.label_4874:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0x4000
	mov	rbp, rbp
	jmp	.label_2218
.label_4872:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x1000
	mov	rbp, rbp
	jmp	.label_2218
.label_4877:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xa000
	mov	rsp, rsp
	jmp	.label_2218
.label_4876:
	mov	dword ptr [rbp - 0x24], 0x8000
	jmp	.label_2218
.label_4878:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xc000
	jmp	.label_2218
.label_2217:
	mov	dword ptr [rbp - 0x24], 0
.label_2218:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d750

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	mov	dword ptr [rbp - 0x24], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	filesystem_type
	mov	rdi, rax
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	je	.label_2222
	lea	rdi, [rdi]
	jmp	.label_2223
.label_2223:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 0x1021994
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	je	.label_2222
	jmp	.label_2224
.label_2224:
	lea	rsi, [rsi]
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	jne	.label_2220
	jmp	.label_2222
.label_2222:
	mov	byte ptr [rbp - 0x25], 0
	nop	
	jmp	.label_2221
.label_2220:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x25], 1
.label_2221:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d800

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x20], rsi
.label_2229:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_2230
	nop	
	jmp	.label_2225
.label_2225:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_2226
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	mov	rbp, rbp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
.label_2226:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_2233
.label_2233:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2229
.label_2230:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_2227:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_2228
	lea	rdi, [rdi]
	jmp	.label_2235
.label_2235:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_2232
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x38]
	mov	rbp, rbp
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
.label_2232:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2234
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2231
.label_2234:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_2231:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2227
.label_2228:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d990

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x80]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 0x80]
	jae	.label_2236
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2237
.label_2236:
	xor	eax, eax
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x80]
	nop	
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0xc], eax
.label_2237:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41da20

	.globl fts_compar
	.type fts_compar, @function
fts_compar:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x28]
	call	rax
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41da90

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
	jne	.label_2238
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_2238:
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
	ja	.label_2239
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_2239
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2239
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
	jmp	.label_2240
.label_2239:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2240:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41db80

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x130
	mov	al, dil
	movabs	rsi, OFFSET FLAT:.str.1_0
	movabs	rcx, OFFSET FLAT:.str_15
	nop	
	lea	rdx, [rbp - 0x78]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fopen
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2262
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xd0], 0
.label_2254:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc0]
	lea	rsi, [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0x40]
	call	getline
	cmp	rax, -1
	je	.label_2243
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.2_9
	lea	rdx, [rbp - 0x98]
	lea	rcx, [rbp - 0x64]
	lea	r8, [rbp - 0x108]
	nop	
	lea	r9, [rbp - 0x80]
	lea	rax, [rbp - 0x18]
	lea	rdi, [rbp - 0x20]
	mov	rbp, rbp
	lea	r10, [rbp - 0x91]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	sscanf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xa4], 3
	je	.label_2257
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 7
	nop	
	je	.label_2257
	jmp	.label_2254
.label_2257:
	movabs	rsi, OFFSET FLAT:.str.3_7
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdi, rax
	mov	rsp, rsp
	call	strstr
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_2265
	jmp	.label_2254
.label_2265:
	movabs	rsi, OFFSET FLAT:.str.4_4
	lea	rdx, [rbp - 0xa0]
	lea	rcx, [rbp - 0x90]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x1c]
	mov	rsp, rsp
	lea	r9, [rbp - 0x50]
	lea	rax, [rbp - 0x91]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sscanf
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xa4], 1
	lea	rdi, [rdi]
	je	.label_2249
	cmp	dword ptr [rbp - 0xa4], 5
	nop	
	je	.label_2249
	mov	rsp, rsp
	jmp	.label_2254
.label_2249:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rax, rcx
	mov	rdi, rax
	lea	rsi, [rsi]
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rdi, rax
	mov	rsp, rsp
	call	unescape_tab
	mov	edx, 0x38
	mov	edi, edx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x108]
	mov	rsp, rsp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	sil, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	sil, 0xfb
	or	sil, 4
	mov	byte ptr [rax + 0x28], sil
	mov	edi, dword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x64]
	call	gnu_dev_makedev
	mov	r8b, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax + 0x18]
	mov	edx, OFFSET FLAT:.str.5_2
	mov	esi, edx
	mov	byte ptr [rbp - 0x47], r8b
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x47]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_2242
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.6_2
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x89], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x89]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_2242
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x9b], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x9b]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_2242
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.8_2
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0xa7], r8b
	mov	rsp, rsp
	je	.label_2242
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.9_2
	mov	rsp, rsp
	mov	esi, edx
	mov	byte ptr [rbp - 3], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 3]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rsi, [rsi]
	je	.label_2242
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.10_2
	mov	esi, edx
	mov	byte ptr [rbp - 0x49], al
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x49]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_2242
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.11_2
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x31]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_2242
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_2
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0x79], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x79]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rsi, [rsi]
	je	.label_2242
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xa8], al
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa7], r8b
	nop	
	je	.label_2242
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.14_1
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe2], al
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xe2]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rdi, [rdi]
	je	.label_2242
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.15_1
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xe1], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa7], r8b
	mov	rsp, rsp
	je	.label_2242
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x46], al
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x46]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_2242
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	mov	esi, eax
	mov	byte ptr [rbp - 0xa6], cl
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xa6]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45], cl
	mov	rbp, rbp
	jne	.label_2252
	mov	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_2252
.label_2252:
	nop	
	mov	al, byte ptr [rbp - 0x45]
	mov	byte ptr [rbp - 0xa7], al
.label_2242:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa7]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rsp, rsp
	mov	dil, byte ptr [rdx + 0x28]
	lea	rdi, [rdi]
	and	al, 1
	and	dil, 0xfe
	lea	rdi, [rdi]
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx]
	lea	rdi, [rdi]
	call	strchr
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0x12], r8b
	jne	.label_2246
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	nop	
	jne	.label_2256
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_2256
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.18_2
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0x9c], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x12], r8b
	je	.label_2246
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.19_1
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc3], al
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc3]
	mov	byte ptr [rbp - 0x12], r8b
	je	.label_2246
.label_2256:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.20_0
	nop	
	mov	edi, ecx
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x12], dl
.label_2246:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	shl	al, 1
	mov	rsp, rsp
	and	sil, 0xfd
	or	sil, al
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x28], sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdi], rdx
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rdx, 0x30
	mov	qword ptr [rbp - 0xf0], rdx
	jmp	.label_2254
.label_2243:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	ferror_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2264
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xd4], eax
	mov	dword ptr [rbp - 0xb4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	jmp	.label_2244
.label_2264:
	mov	rdi, qword ptr [rbp - 0x40]
	call	rpl_fclose
	cmp	eax, -1
	nop	
	jne	.label_2245
	nop	
	jmp	.label_2244
.label_2245:
	jmp	.label_2250
.label_2262:
	movabs	rsi, OFFSET FLAT:.str.1_0
	movabs	rax, OFFSET FLAT:.str.21_0
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	setmntent
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_2259
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	jmp	.label_2253
.label_2259:
	jmp	.label_2258
.label_2258:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	getmntent
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2260
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	rdi, qword ptr [rbp - 0x30]
	call	hasmntopt
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edi, ecx
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x99], dl
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax + 8]
	call	xstrdup
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	xstrdup
	mov	dl, 1
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	r8b, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	r8b, 0xfb
	or	r8b, 4
	mov	byte ptr [rax + 0x28], r8b
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:.str.5_2
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], dl
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 5]
	mov	byte ptr [rbp - 0x65], dl
	nop	
	je	.label_2241
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.6_2
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xa5]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_2241
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.7_1
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 2], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 0x65], r8b
	nop	
	je	.label_2241
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.8_2
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc1], al
	nop	
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc1]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_2241
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.9_2
	mov	esi, edx
	mov	byte ptr [rbp - 1], al
	nop	
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 1]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_2241
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.10_2
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x109], al
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	mov	r8b, byte ptr [rbp - 0x109]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_2241
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.11_2
	mov	rbp, rbp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xd5], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xd5]
	nop	
	mov	byte ptr [rbp - 0x65], r8b
	mov	rsp, rsp
	je	.label_2241
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_2
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x81], al
	call	strcmp
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0x81]
	mov	byte ptr [rbp - 0x65], r8b
	mov	rbp, rbp
	je	.label_2241
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_2
	mov	esi, edx
	mov	byte ptr [rbp - 0x102], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x102]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_2241
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.14_1
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc2], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xc2]
	mov	byte ptr [rbp - 0x65], r8b
	lea	rsi, [rsi]
	je	.label_2241
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.15_1
	nop	
	mov	esi, edx
	mov	byte ptr [rbp - 4], al
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 4]
	nop	
	mov	byte ptr [rbp - 0x65], r8b
	mov	rbp, rbp
	je	.label_2241
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.16_2
	mov	esi, edx
	mov	byte ptr [rbp - 0x21], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_2241
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.17_2
	mov	esi, eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x48], cl
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9a], cl
	jne	.label_2251
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x99]
	mov	rsp, rsp
	xor	al, 0xff
	mov	byte ptr [rbp - 0x9a], al
.label_2251:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x65], al
.label_2241:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x65]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	mov	rbp, rbp
	and	al, 1
	nop	
	and	dil, 0xfe
	or	dil, al
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x28], dil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0x8a], r8b
	nop	
	jne	.label_2248
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_2263
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_2263
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18_2
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8b], al
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x8b]
	mov	byte ptr [rbp - 0x8a], r8b
	je	.label_2248
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.19_1
	nop	
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x51], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x51]
	mov	byte ptr [rbp - 0x8a], r8b
	lea	rsi, [rsi]
	je	.label_2248
.label_2263:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.20_0
	mov	rsp, rsp
	mov	edi, ecx
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x8a], dl
.label_2248:
	mov	al, byte ptr [rbp - 0x8a]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	lea	rdi, [rdi]
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdx + 0x18]
	call	dev_from_mount_options
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rax, 0x30
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	lea	rdi, [rdi]
	jmp	.label_2258
.label_2260:
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	endmntent
	cmp	eax, 0
	nop	
	jne	.label_2247
	mov	rbp, rbp
	jmp	.label_2244
.label_2247:
	mov	rsp, rsp
	jmp	.label_2250
.label_2250:
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2253
.label_2244:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rax], 0
.label_2261:
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	je	.label_2255
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x78]
	call	free_mount_entry
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2261
.label_2255:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xf4]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], 0
.label_2253:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rsp, 0x130
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41eb10

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_2268:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_2269
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	lea	rdi, [rdi]
	jne	.label_2267
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2267
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movsx	edx, byte ptr [rcx + rax + 1]
	nop	
	cmp	edx, 0x30
	jl	.label_2267
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x33
	jg	.label_2267
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x30
	lea	rdi, [rdi]
	jl	.label_2267
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x37
	jg	.label_2267
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 3]
	lea	rsi, [rsi]
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jl	.label_2267
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 3]
	mov	rbp, rbp
	cmp	edx, 0x37
	nop	
	jg	.label_2267
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	sub	edx, 0x30
	shl	edx, 6
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rcx + rax + 2]
	lea	rsi, [rsi]
	sub	esi, 0x30
	shl	esi, 3
	mov	rsp, rsp
	add	edx, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rcx + rax + 3]
	sub	esi, 0x30
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], dil
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 3
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2266
.label_2267:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], dl
.label_2266:
	jmp	.label_2270
.label_2270:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2268
.label_2269:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ed30

	.globl dev_from_mount_options
	.type dev_from_mount_options, @function
dev_from_mount_options:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ed50

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x28]
	shr	al, 2
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2271
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x18]
	call	free
.label_2271:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ede0
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
	jne	.label_2273
	nop	
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_2272
.label_2273:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_2272:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41eed0

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
	je	.label_2278
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
	jne	.label_2283
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2276
.label_2283:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0xe8
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2278:
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
	jne	.label_2274
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], cl
	jmp	.label_2274
.label_2274:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2285
	mov	dword ptr [rbp - 8], 0xc
.label_2285:
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2281
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
	jmp	.label_2276
.label_2281:
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
	je	.label_2280
	nop	
	jmp	.label_2275
.label_2275:
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
	jmp	.label_2276
.label_2280:
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
	je	.label_2279
	jmp	.label_2275
.label_2279:
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
	je	.label_2282
	lea	rdi, [rdi]
	jmp	.label_2275
.label_2282:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	nop	
	je	.label_2277
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_2277
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_2277
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	optimize_utf8
.label_2277:
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
	je	.label_2284
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
.label_2284:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2276:
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
	#Procedure 0x41f380
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
	#Procedure 0x41f3b0

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
	je	.label_2288
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_2288:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	je	.label_2286
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_2286:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x60]
	nop	
	je	.label_2287
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
.label_2287:
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
	#Procedure 0x41f4e0

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
	jne	.label_2331
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
.label_2331:
	mov	al, byte ptr [rbp - 0xaa]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xa9], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x220], 0
.label_2312:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x220]
	mov	rcx, qword ptr [rbp - 0x248]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2295
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
	jne	.label_2317
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
	je	.label_2289
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1e0]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], 1
.label_2289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_2304
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2304
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
.label_2307:
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
	jae	.label_2298
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
	jne	.label_2298
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
.label_2298:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2327
	jmp	.label_2321
.label_2327:
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
	jmp	.label_2307
.label_2321:
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
	jne	.label_2313
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
	je	.label_2313
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
	je	.label_2329
	mov	edi, dword ptr [rbp - 0x1cc]
	mov	rbp, rbp
	call	tolower
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	byte ptr [rdx + rcx], 1
.label_2329:
	mov	rsp, rsp
	jmp	.label_2313
.label_2313:
	jmp	.label_2304
.label_2304:
	lea	rsi, [rsi]
	jmp	.label_2306
.label_2317:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 3
	lea	rdi, [rdi]
	jne	.label_2308
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x254], 0
.label_2330:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_2311
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
.label_2320:
	cmp	dword ptr [rbp - 0x8c], 0x40
	nop	
	jge	.label_2326
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
	je	.label_2324
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
	je	.label_2296
	nop	
	mov	edi, dword ptr [rbp - 0x204]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x260]
	mov	byte ptr [rdx + rcx], 1
.label_2296:
	jmp	.label_2324
.label_2324:
	jmp	.label_2319
.label_2319:
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
	jmp	.label_2320
.label_2326:
	jmp	.label_2297
.label_2297:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2330
.label_2311:
	jmp	.label_2310
.label_2308:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 6
	mov	rbp, rbp
	jne	.label_2332
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
	jle	.label_2290
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	mov	rsp, rsp
	jne	.label_2303
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_2303
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_2290
.label_2303:
	mov	byte ptr [rbp - 0x229], 0
.label_2316:
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
	jne	.label_2291
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
	je	.label_2294
	mov	edi, dword ptr [rbp - 0xc]
	call	tolower
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], 1
.label_2294:
	lea	rdi, [rdi]
	jmp	.label_2291
.label_2291:
	mov	rsp, rsp
	jmp	.label_2314
.label_2314:
	mov	al, byte ptr [rbp - 0x229]
	add	al, 1
	mov	byte ptr [rbp - 0x229], al
	lea	rdi, [rdi]
	movzx	ecx, al
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_2316
	jmp	.label_2318
.label_2290:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], 0
.label_2328:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jge	.label_2322
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
	je	.label_2299
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
	je	.label_2302
	mov	edi, dword ptr [rbp - 0x274]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rdx + rcx], 1
.label_2302:
	mov	rsp, rsp
	jmp	.label_2299
.label_2299:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_2323
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_2323
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
	je	.label_2300
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
	je	.label_2305
	mov	edi, dword ptr [rbp - 0x258]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x210]
	nop	
	mov	byte ptr [rdx + rcx], 1
.label_2305:
	lea	rsi, [rsi]
	jmp	.label_2300
.label_2300:
	nop	
	jmp	.label_2323
.label_2323:
	mov	rbp, rbp
	jmp	.label_2325
.label_2325:
	mov	rax, qword ptr [rbp - 0x1f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rbp, rbp
	jmp	.label_2328
.label_2322:
	jmp	.label_2318
.label_2318:
	jmp	.label_2309
.label_2332:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 5
	mov	rbp, rbp
	je	.label_2293
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 7
	je	.label_2293
	cmp	dword ptr [rbp - 4], 2
	mov	rsp, rsp
	jne	.label_2292
.label_2293:
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
	jne	.label_2301
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	lea	rdi, [rdi]
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_2301:
	mov	rbp, rbp
	jmp	.label_2295
.label_2292:
	jmp	.label_2309
.label_2309:
	jmp	.label_2310
.label_2310:
	mov	rsp, rsp
	jmp	.label_2306
.label_2306:
	jmp	.label_2315
.label_2315:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x220]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x220], rax
	jmp	.label_2312
.label_2295:
	add	rsp, 0x280
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ffb0

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
.label_4951:
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
	je	.label_2335
	mov	dword ptr [rbp - 0x20], 0xc
	nop	
	jmp	.label_2333
.label_2335:
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
	je	.label_2336
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
	jmp	.label_2337
.label_2336:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	mov	rsp, rsp
	mov	byte ptr [rax + 0x38], cl
.label_2337:
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
	jne	.label_2338
	mov	dword ptr [rbp - 0x1c], 8
.label_2338:
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
	je	.label_2334
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2339
.label_2334:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax + 0x20], 0
.label_2339:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
.label_2333:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420220
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
	jl	.label_2340
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	setge	cl
	mov	byte ptr [rbp - 0x15], cl
.label_2340:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2342
	lea	rdi, [rdi]
	call	abort
.label_2342:
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
	je	.label_2343
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
	je	.label_2341
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_2341:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	memcpy
.label_2343:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420370

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
	je	.label_2344
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	free_dfa_content
.label_2344:
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
	#Procedure 0x420440

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
	je	.label_2345
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
.label_2356:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_2355
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
	jmp	.label_2356
.label_2355:
	nop	
	jmp	.label_2345
.label_2345:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_2350:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_2352
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_2359
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_2359:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x38], 0
	je	.label_2357
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2357:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2351
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
.label_2351:
	mov	rbp, rbp
	jmp	.label_2349
.label_2349:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_2350
.label_2352:
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
	je	.label_2347
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_2346:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_2354
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
.label_2353:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_2348
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
	jmp	.label_2353
.label_2348:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_2346
.label_2354:
	lea	rsi, [rsi]
	jmp	.label_2347
.label_2347:
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
	je	.label_2358
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rdi, rax
	call	free
.label_2358:
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
	#Procedure 0x420760

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
	je	.label_2360
	nop	
	mov	dword ptr [rbp - 8], 2
	mov	rbp, rbp
	jmp	.label_2361
.label_2360:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 4
	cmp	eax, 0
	je	.label_2365
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
	jmp	.label_2363
.label_2365:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x30]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_2363:
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
	je	.label_2362
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
	jmp	.label_2364
.label_2362:
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
.label_2364:
	cmp	dword ptr [rbp - 4], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 8], ecx
.label_2361:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420910

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
	je	.label_2371
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
	je	.label_2371
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_2371
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_2371
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_2387
.label_2371:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_2387
.label_2387:
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
	jbe	.label_2402
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
	jmp	.label_2420
.label_2402:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rcx
	mov	rbp, rbp
	jmp	.label_2420
.label_2420:
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
	je	.label_2389
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_2389
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_2389
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_2389
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1e9], cl
.label_2389:
	mov	al, byte ptr [rbp - 0x1e9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2468
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	nop	
	jmp	.label_2367
.label_2468:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2373
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_2373
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_2388
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 7
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_2373
.label_2388:
	cmp	qword ptr [rbp - 0x200], 0
	mov	rbp, rbp
	je	.label_2407
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2407
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	lea	rsi, [rsi]
	jmp	.label_2367
.label_2407:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x200], 0
.label_2373:
	mov	al, 1
	cmp	qword ptr [rbp - 0x240], 0
	mov	byte ptr [rbp - 0x1f1], al
	lea	rsi, [rsi]
	jne	.label_2424
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f1], cl
.label_2424:
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
	je	.label_2449
	jmp	.label_2377
.label_2449:
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
	je	.label_2380
	lea	rsi, [rsi]
	jmp	.label_2377
.label_2380:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 1
	nop	
	ja	.label_2397
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
	je	.label_2404
.label_2397:
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
	je	.label_2415
	mov	dword ptr [rbp - 0x294], 0xc
	lea	rdi, [rdi]
	jmp	.label_2377
.label_2415:
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
	je	.label_2436
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_2377
.label_2436:
	jmp	.label_2441
.label_2404:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], 0
.label_2441:
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
	jge	.label_2443
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x230], rax
	jmp	.label_2464
.label_2443:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x230], rax
.label_2464:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x290], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	jge	.label_2459
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	mov	qword ptr [rbp - 0x250], rax
	jmp	.label_2375
.label_2459:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x250], rax
.label_2375:
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
	je	.label_2383
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c1], al
	jne	.label_2400
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x219], al
	jne	.label_2409
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1d8], 0
	setne	al
	mov	byte ptr [rbp - 0x219], al
.label_2409:
	mov	al, byte ptr [rbp - 0x219]
	lea	rsi, [rsi]
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c1], al
.label_2400:
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
	jmp	.label_2431
.label_2383:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	jmp	.label_2431
.label_2431:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1f8], eax
.label_2386:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x294], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jl	.label_2452
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x238]
	jge	.label_2457
.label_2452:
	mov	rsp, rsp
	jmp	.label_2377
.label_2457:
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
	ja	.label_2462
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2471]]
	jmp	rcx
.label_4834:
	jmp	.label_2368
.label_4833:
	mov	rbp, rbp
	jmp	.label_2370
.label_2370:
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
	je	.label_2374
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
.label_2374:
	mov	al, byte ptr [rbp - 0x271]
	test	al, 1
	jne	.label_2458
	jmp	.label_2413
.label_2458:
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_2370
.label_2413:
	mov	rbp, rbp
	jmp	.label_2423
.label_4832:
	mov	rbp, rbp
	jmp	.label_2425
.label_2425:
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
	je	.label_2429
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
.label_2429:
	mov	al, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2445
	mov	rbp, rbp
	jmp	.label_2450
.label_2445:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_2425
.label_2450:
	mov	rbp, rbp
	jmp	.label_2423
.label_2423:
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
	je	.label_2406
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_2463
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x298], eax
	jmp	.label_2467
.label_2463:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x298], edx
.label_2467:
	mov	eax, dword ptr [rbp - 0x298]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1d8], 0
	je	.label_2372
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rcx, qword ptr [rbp - 0x1d8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x19c], edx
	lea	rsi, [rsi]
	jmp	.label_2379
.label_2372:
	mov	eax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x19c], eax
.label_2379:
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1a8]
	cmp	byte ptr [rdx + rcx], 0
	mov	rbp, rbp
	jne	.label_2394
	mov	rbp, rbp
	jmp	.label_2377
.label_2394:
	jmp	.label_2406
.label_2406:
	lea	rsi, [rsi]
	jmp	.label_2368
.label_4831:
	jmp	.label_2410
.label_2410:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	jl	.label_2448
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	jl	.label_2417
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x244], eax
	jmp	.label_2422
.label_2417:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x244], edx
.label_2422:
	mov	eax, dword ptr [rbp - 0x244]
	mov	dword ptr [rbp - 0x1f0], eax
	cmp	qword ptr [rbp - 0x1d8], 0
	lea	rdi, [rdi]
	je	.label_2434
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x248], edx
	jmp	.label_2401
.label_2434:
	mov	eax, dword ptr [rbp - 0x1f0]
	nop	
	mov	dword ptr [rbp - 0x248], eax
.label_2401:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x248]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_2442
	lea	rdi, [rdi]
	jmp	.label_2448
.label_2442:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x238], rax
	jmp	.label_2410
.label_2448:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jge	.label_2454
	jmp	.label_2377
.label_2454:
	nop	
	jmp	.label_2368
.label_2462:
	lea	rsi, [rsi]
	jmp	.label_2439
.label_2439:
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
	je	.label_2393
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
	je	.label_2376
	jmp	.label_2377
.label_2376:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	sub	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x2a8], rax
.label_2393:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_2395
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_2403
.label_2395:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rcx, qword ptr [rbp - 0x120]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], edx
.label_2403:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x254]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_2414
	mov	rsp, rsp
	jmp	.label_2427
.label_2414:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x290]
	mov	rsp, rsp
	jl	.label_2430
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x168]
	jle	.label_2437
.label_2430:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x294], 1
	nop	
	jmp	.label_2377
.label_2437:
	jmp	.label_2439
.label_2427:
	nop	
	jmp	.label_2368
.label_2368:
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
	je	.label_2447
	lea	rdi, [rdi]
	jmp	.label_2377
.label_2447:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	jne	.label_2456
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0xf8]
	nop	
	je	.label_2456
	mov	rax, qword ptr [rbp - 0x118]
	cmp	dword ptr [rax], -1
	jne	.label_2456
	jmp	.label_2465
.label_2456:
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
	jg	.label_2466
	lea	rax, [rbp - 0x238]
	mov	qword ptr [rbp - 0x268], rax
	lea	rdi, [rdi]
	jmp	.label_2369
.label_2466:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x268], rcx
	jmp	.label_2369
.label_2369:
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
	je	.label_2428
	cmp	qword ptr [rbp - 0x1e8], -2
	sete	al
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2405
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_2377
.label_2405:
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
	jne	.label_2419
	cmp	qword ptr [rbp - 0x240], 1
	ja	.label_2432
.label_2419:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2435
.label_2432:
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
.label_2435:
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
	jne	.label_2444
	nop	
	cmp	qword ptr [rbp - 0x240], 1
	jbe	.label_2444
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_2455
.label_2444:
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2461
.label_2455:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x128]
	mov	rsp, rsp
	call	prune_impossible_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	nop	
	jne	.label_2469
	jmp	.label_2382
.label_2469:
	nop	
	cmp	dword ptr [rbp - 0x294], 1
	mov	rbp, rbp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2366
	mov	rbp, rbp
	jmp	.label_2377
.label_2366:
	mov	qword ptr [rbp - 0x1e8], -1
	jmp	.label_2378
.label_2461:
	jmp	.label_2382
.label_2378:
	lea	rdi, [rdi]
	jmp	.label_2385
.label_2385:
	nop	
	jmp	.label_2428
.label_2428:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x128]
	mov	rbp, rbp
	call	match_ctx_clean
.label_2465:
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	lea	rsi, [rsi]
	jmp	.label_2386
.label_2382:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 0
	jbe	.label_2392
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 1
.label_2418:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_2412
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
	jmp	.label_2418
.label_2412:
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
	jne	.label_2426
	cmp	qword ptr [rbp - 0x240], 1
	lea	rdi, [rdi]
	jbe	.label_2426
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
	je	.label_2451
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x285], cl
.label_2451:
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
	je	.label_2384
	lea	rsi, [rsi]
	jmp	.label_2377
.label_2384:
	jmp	.label_2426
.label_2426:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], 0
.label_2398:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_2408
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	cmp	qword ptr [rax], -1
	je	.label_2470
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
	je	.label_2421
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	jne	.label_2433
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x260], rax
	lea	rdi, [rdi]
	jmp	.label_2438
.label_2433:
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
.label_2438:
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
	jne	.label_2390
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	jmp	.label_2460
.label_2390:
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
.label_2460:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
.label_2421:
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
.label_2470:
	lea	rsi, [rsi]
	jmp	.label_2396
.label_2396:
	nop	
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_2398
.label_2408:
	mov	qword ptr [rbp - 0x180], 0
.label_2416:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	cmp	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	jge	.label_2411
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
	jmp	.label_2416
.label_2411:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0xe0], 0
	lea	rsi, [rsi]
	je	.label_2391
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 0
.label_2381:
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_2440
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x180]
	nop	
	je	.label_2446
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
.label_2446:
	mov	rsp, rsp
	jmp	.label_2453
.label_2453:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_2381
.label_2440:
	jmp	.label_2391
.label_2391:
	jmp	.label_2392
.label_2392:
	jmp	.label_2377
.label_2377:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2399
	lea	rdi, [rbp - 0x128]
	call	match_ctx_free
.label_2399:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x128]
	call	re_string_destruct
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x294]
	mov	dword ptr [rbp - 0x284], eax
.label_2367:
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
	#Procedure 0x4220e0
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
	#Procedure 0x422160

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
	jl	.label_2491
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	setg	cl
	mov	byte ptr [rbp - 0x19], cl
.label_2491:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2472
	mov	qword ptr [rbp - 0x50], -1
	mov	rsp, rsp
	jmp	.label_2477
.label_2472:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x71], al
	lea	rdi, [rdi]
	jl	.label_2481
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
	jg	.label_2487
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x98]
	setl	cl
	mov	byte ptr [rbp - 0x61], cl
.label_2487:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x61]
	mov	byte ptr [rbp - 0x71], al
.label_2481:
	mov	al, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2499
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2474
.label_2499:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x62], al
	lea	rdi, [rdi]
	jl	.label_2480
	nop	
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jge	.label_2488
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x30]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_2488:
	mov	al, byte ptr [rbp - 1]
	nop	
	mov	byte ptr [rbp - 0x62], al
.label_2480:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2497
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_2497:
	jmp	.label_2474
.label_2474:
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
	jge	.label_2485
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_2485
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_2485
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x54], eax
.label_2485:
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
	je	.label_2498
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_2498:
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_2483
	mov	qword ptr [rbp - 0x88], 1
	jmp	.label_2476
.label_2483:
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
	jne	.label_2490
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	setbe	dl
	mov	byte ptr [rbp - 0x41], dl
.label_2490:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2475
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
	je	.label_2482
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x88], 1
.label_2482:
	lea	rsi, [rsi]
	jmp	.label_2500
.label_2475:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_2500:
	jmp	.label_2476
.label_2476:
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
	je	.label_2486
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], -2
	jmp	.label_2492
.label_2486:
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
	je	.label_2484
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
	jmp	.label_2495
.label_2484:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2478
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
	je	.label_2494
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], -2
.label_2494:
	jmp	.label_2478
.label_2478:
	jmp	.label_2495
.label_2495:
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	sete	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_2479
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x8d], 1
	mov	rbp, rbp
	je	.label_2473
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x98]
	nop	
	jne	.label_2493
	jmp	.label_2489
.label_2493:
	nop	
	movabs	rdi, OFFSET FLAT:.str.21_1
	movabs	rsi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
.label_2489:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	jmp	.label_2496
.label_2473:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa8], rax
.label_2496:
	jmp	.label_2479
.label_2479:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
.label_2492:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_2477:
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
	#Procedure 0x4227e0
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
	#Procedure 0x422850
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
	#Procedure 0x422910

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
	jl	.label_2506
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x49], al
	jl	.label_2506
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x49], al
	lea	rdi, [rdi]
	jl	.label_2506
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2502
	jmp	.label_2508
.label_2502:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	lea	rdi, [rdi]
	jge	.label_2512
	nop	
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2504
	lea	rsi, [rsi]
	jmp	.label_2509
.label_2512:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jl	.label_2504
	nop	
	jmp	.label_2509
.label_2508:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_2503
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	jle	.label_2504
	jmp	.label_2509
.label_2503:
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_2511
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2504
	mov	rbp, rbp
	jmp	.label_2509
.label_2511:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	jl	.label_2504
.label_2509:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_2504
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2507
.label_2504:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_2510
.label_2507:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	mov	dword ptr [rbp - 0x94], eax
.label_2510:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], cl
.label_2506:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2515
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_2505
.label_2515:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	jle	.label_2514
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_2517
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
	je	.label_2501
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_2505
.label_2501:
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
	jmp	.label_2513
.label_2517:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
.label_2513:
	lea	rdi, [rdi]
	jmp	.label_2516
.label_2514:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_2516:
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
.label_2505:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0xa0
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422d10
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
	#Procedure 0x422dd0
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
	je	.label_2518
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
	jmp	.label_2519
.label_2518:
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
.label_2519:
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422e90

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
	jne	.label_2520
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	lea	rdi, [rdi]
	and	ecx, 1
	nop	
	cmp	ecx, 0
	jne	.label_2520
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	free_charset
	jmp	.label_2522
.label_2520:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 3
	jne	.label_2521
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_2521
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2521:
	jmp	.label_2522
.label_2522:
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422f60

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
	je	.label_2523
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
.label_2523:
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
	#Procedure 0x423040

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
	#Procedure 0x4230a0

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
	jae	.label_2561
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2572
.label_2561:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_2572
.label_2572:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_2525
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	nop	
	jae	.label_2533
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_2539
.label_2533:
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	jmp	.label_2539
.label_2539:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2547
.label_2525:
	nop	
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	nop	
	jmp	.label_2547
.label_2547:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_2556
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_2575
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2569
.label_2575:
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	jmp	.label_2569
.label_2569:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	nop	
	jae	.label_2576
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_2524
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_2532
.label_2524:
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rcx
	nop	
	jmp	.label_2532
.label_2532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2543
.label_2576:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2543
.label_2543:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2551
.label_2556:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	jmp	.label_2551
.label_2551:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, 0x18
	mov	edx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	nop	
	jae	.label_2559
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_2565
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2567
.label_2565:
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_2567
.label_2567:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_2537
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_2528
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	jmp	.label_2535
.label_2528:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_2535
.label_2535:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2545
.label_2537:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	jmp	.label_2545
.label_2545:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jae	.label_2552
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_2544
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	jmp	.label_2563
.label_2544:
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_2563
.label_2563:
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	jae	.label_2571
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_2574
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_2531
.label_2574:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_2531
.label_2531:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_2540
.label_2571:
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc8], rcx
	nop	
	jmp	.label_2540
.label_2540:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_2546
.label_2552:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2546
.label_2546:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_2558
.label_2559:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_2558
.label_2558:
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
	jae	.label_2562
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_2536
.label_2562:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe0], rax
.label_2536:
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
	je	.label_2548
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0xc
	nop	
	jmp	.label_2549
.label_2548:
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
.label_2530:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jbe	.label_2526
	jmp	.label_2579
.label_2526:
	jmp	.label_2527
.label_2527:
	mov	rax, qword ptr [rbp - 0xb8]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	jmp	.label_2530
.label_2579:
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
	je	.label_2553
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	lea	rsi, [rsi]
	jne	.label_2529
.label_2553:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	mov	rbp, rbp
	je	.label_2568
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	lea	rsi, [rsi]
	jne	.label_2529
.label_2568:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x46
	lea	rdi, [rdi]
	je	.label_2555
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	lea	rsi, [rsi]
	jne	.label_2529
.label_2555:
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
	mov	edx, OFFSET FLAT:.str_16
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2529
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfb
	mov	rsp, rsp
	or	cl, 4
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_2529:
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
	jle	.label_2560
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
	je	.label_2570
	movabs	rax, OFFSET FLAT:utf8_sb_map
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_2573
.label_2570:
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
	je	.label_2577
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_2549
.label_2577:
	mov	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], 0
.label_2557:
	cmp	dword ptr [rbp - 0x94], 4
	lea	rdi, [rdi]
	jge	.label_2541
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0
.label_2534:
	cmp	dword ptr [rbp - 0x3c], 0x40
	jge	.label_2564
	mov	edi, dword ptr [rbp - 0xf4]
	mov	rbp, rbp
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], -1
	lea	rsi, [rsi]
	je	.label_2550
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
.label_2550:
	nop	
	mov	eax, dword ptr [rbp - 0xf4]
	and	eax, 0xffffff80
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_2538
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xf4]
	je	.label_2538
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	lea	rdi, [rdi]
	or	cl, 8
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_2538:
	nop	
	jmp	.label_2578
.label_2578:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xf4], eax
	mov	rbp, rbp
	jmp	.label_2534
.label_2564:
	lea	rdi, [rdi]
	jmp	.label_2554
.label_2554:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_2557
.label_2541:
	jmp	.label_2573
.label_2573:
	jmp	.label_2560
.label_2560:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
	je	.label_2566
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_2566:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2542
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_2549
.label_2542:
	mov	dword ptr [rbp - 0xd4], 0
.label_2549:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423a40

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
	jle	.label_2588
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
	je	.label_2584
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_2587
.label_2584:
	nop	
	jmp	.label_2588
.label_2588:
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2595
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2583
.label_2595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_2583:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	je	.label_2593
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2581
	mov	rsp, rsp
	jmp	.label_2582
.label_2582:
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
	je	.label_2596
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_2587
.label_2596:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jl	.label_2592
	jmp	.label_2594
.label_2592:
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
	jle	.label_2597
	nop	
	jmp	.label_2594
.label_2597:
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
	je	.label_2580
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_2587
.label_2580:
	jmp	.label_2582
.label_2594:
	lea	rsi, [rsi]
	jmp	.label_2586
.label_2581:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	build_upper_buffer
.label_2586:
	jmp	.label_2591
.label_2593:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rsp, rsp
	jle	.label_2598
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_2585
.label_2598:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_2590
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_2589
.label_2590:
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
.label_2589:
	jmp	.label_2585
.label_2585:
	mov	rbp, rbp
	jmp	.label_2591
.label_2591:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], 0
.label_2587:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423d50

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
.label_2600:
	cmp	qword ptr [rbp - 8], 0
	je	.label_2599
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
	jmp	.label_2600
.label_2599:
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
	#Procedure 0x423e30

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
	je	.label_2601
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_2601:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423e90

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
	je	.label_2607
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_2607:
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
	je	.label_2602
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_2604
.label_2602:
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
	je	.label_2608
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
	jmp	.label_2606
.label_2608:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_2606:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x51], al
	lea	rsi, [rsi]
	je	.label_2605
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	sete	al
	nop	
	mov	byte ptr [rbp - 0x51], al
.label_2605:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2603
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2604
.label_2603:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_2604:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x424070

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
	je	.label_2611
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	je	.label_2611
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	je	.label_2611
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_2611:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2627
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_2616
.label_2627:
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
	je	.label_2612
	mov	qword ptr [rbp - 0x18], 0
.label_2610:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	jae	.label_2625
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
	jmp	.label_2610
.label_2625:
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
.label_2621:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jae	.label_2619
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	je	.label_2609
	lea	rdi, [rdi]
	jmp	.label_2619
.label_2609:
	jmp	.label_2620
.label_2620:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2621
.label_2619:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_2623
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0xe0], 0
.label_2623:
	jmp	.label_2612
.label_2612:
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
	je	.label_2613
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2616
.label_2613:
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
	je	.label_2615
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_2616
.label_2615:
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
	je	.label_2617
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2616
.label_2617:
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
	je	.label_2624
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2616
.label_2624:
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
	jne	.label_2614
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_2614
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
	jne	.label_2618
.label_2614:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2626
.label_2618:
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
	je	.label_2622
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_2616
.label_2622:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x10], eax
.label_2626:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_2616:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424590

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
.label_2653:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_2643
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
	ja	.label_2648
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2628]]
	lea	rsi, [rsi]
	jmp	rcx
.label_4836:
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
	jl	.label_2633
	mov	byte ptr [rbp - 0x31], 1
.label_2633:
	jmp	.label_2638
.label_4841:
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
	je	.label_2629
	jmp	.label_2652
.label_2652:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_2629
	jmp	.label_2631
.label_2631:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x40
	nop	
	mov	dword ptr [rbp - 8], eax
	je	.label_2629
	nop	
	jmp	.label_2640
.label_2640:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	jne	.label_2641
	jmp	.label_2629
.label_2629:
	mov	rsp, rsp
	jmp	.label_2650
.label_2641:
	jmp	.label_2647
.label_2650:
	jmp	.label_2638
.label_4839:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jmp	.label_2638
.label_4837:
	jmp	.label_2638
.label_4840:
	nop	
	jmp	.label_2647
.label_4838:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x44], 2
.label_2649:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 4
	jge	.label_2630
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
	je	.label_2636
	jmp	.label_2647
.label_2636:
	mov	dword ptr [rbp - 0x24], 0
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2649
.label_2630:
	lea	rsi, [rsi]
	jmp	.label_2638
.label_2648:
	call	abort
.label_2638:
	jmp	.label_2651
.label_2651:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_2653
.label_2643:
	test	byte ptr [rbp - 0x31], 1
	jne	.label_2635
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_2639
.label_2635:
	mov	qword ptr [rbp - 0x30], 0
.label_2637:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jae	.label_2642
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	lea	rsi, [rsi]
	cmp	edx, 1
	jne	.label_2646
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_2646
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
	jmp	.label_2632
.label_2646:
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
	jne	.label_2645
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
.label_2645:
	lea	rdi, [rdi]
	jmp	.label_2632
.label_2632:
	nop	
	jmp	.label_2634
.label_2634:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2637
.label_2642:
	mov	rsp, rsp
	jmp	.label_2639
.label_2639:
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
	jg	.label_2644
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], al
.label_2644:
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
.label_2647:
	nop	
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x424950

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
	je	.label_2664
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2668
.label_2664:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_2669
	mov	qword ptr [rbp - 0x58], 0
.label_2671:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2658
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
	je	.label_2661
	mov	rsp, rsp
	jmp	.label_2665
.label_2661:
	nop	
	mov	qword ptr [rbp - 0x38], 0
.label_2657:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2672
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
	jne	.label_2656
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
	jne	.label_2656
	lea	rsi, [rsi]
	jmp	.label_2672
.label_2656:
	mov	rsp, rsp
	jmp	.label_2654
.label_2654:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_2657
.label_2672:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2662
	mov	rsp, rsp
	jmp	.label_2665
.label_2662:
	cmp	dword ptr [rbp - 0x3c], 4
	lea	rdi, [rdi]
	jne	.label_2667
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
	jne	.label_2655
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
	je	.label_2663
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2668
.label_2663:
	nop	
	mov	qword ptr [rbp - 0x58], 0
.label_2655:
	mov	rbp, rbp
	jmp	.label_2667
.label_2667:
	jmp	.label_2665
.label_2665:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2671
.label_2658:
	mov	rsp, rsp
	jmp	.label_2669
.label_2669:
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
	je	.label_2660
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2668
.label_2660:
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
	je	.label_2670
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
	je	.label_2659
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x29], al
	je	.label_2659
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
.label_2659:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2666
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	jmp	.label_2668
.label_2666:
	lea	rsi, [rsi]
	jmp	.label_2673
.label_2670:
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
.label_2673:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x5c], 0
.label_2668:
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
	#Procedure 0x424de0

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
	jne	.label_2674
	mov	al, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
.label_2674:
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
	#Procedure 0x424f50

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
	jle	.label_2679
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
	je	.label_2675
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_2677
.label_2675:
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
	je	.label_2680
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0xc
	mov	rsp, rsp
	jmp	.label_2677
.label_2680:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_2676
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
	je	.label_2682
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_2677
.label_2682:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_2676:
	lea	rdi, [rdi]
	jmp	.label_2679
.label_2679:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_2681
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
	je	.label_2678
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xc
	nop	
	jmp	.label_2677
.label_2678:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
.label_2681:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_2677:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x425160

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
	jle	.label_2715
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_2733
.label_2715:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
.label_2733:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_2683
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_2683
	mov	rax, qword ptr [rbp - 0x100]
	cmp	byte ptr [rax + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_2683
	lea	rdi, [rdi]
	jmp	.label_2689
.label_2689:
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	cmp	rax, qword ptr [rbp - 0x88]
	nop	
	jge	.label_2699
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
	jne	.label_2708
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_2708
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
	jmp	.label_2689
.label_2708:
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
	jae	.label_2735
	cmp	qword ptr [rbp - 0x20], -2
	nop	
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], al
.label_2735:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2684
	mov	edi, dword ptr [rbp - 0xbc]
	call	towupper
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xbc]
	mov	rsp, rsp
	je	.label_2697
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
	je	.label_2695
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
	jmp	.label_2723
.label_2695:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_2724
.label_2723:
	mov	rbp, rbp
	jmp	.label_2742
.label_2697:
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
.label_2742:
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
.label_2729:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	jge	.label_2722
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
	jmp	.label_2729
.label_2722:
	jmp	.label_2688
.label_2684:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	je	.label_2740
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_2740
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_2686
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2686
.label_2740:
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
	je	.label_2694
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
.label_2694:
	jmp	.label_2744
.label_2686:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2699
.label_2744:
	jmp	.label_2688
.label_2688:
	lea	rdi, [rdi]
	jmp	.label_2689
.label_2699:
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
	jmp	.label_2693
.label_2683:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0xf0], rax
.label_2716:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x88]
	jge	.label_2705
	jmp	.label_2724
.label_2724:
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
	je	.label_2726
	mov	dword ptr [rbp - 0x10c], 0
.label_2717:
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
	jge	.label_2711
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	setl	cl
	nop	
	mov	byte ptr [rbp - 0xdd], cl
.label_2711:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdd]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_2706
	mov	rbp, rbp
	jmp	.label_2696
.label_2706:
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
	jmp	.label_2717
.label_2696:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_2739
.label_2726:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_2739:
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
	jae	.label_2701
	nop	
	cmp	qword ptr [rbp - 0x20], -2
	mov	rsp, rsp
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_2701:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_2720
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	call	towupper
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	je	.label_2730
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
	je	.label_2741
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
	jmp	.label_2700
.label_2741:
	cmp	qword ptr [rbp - 0xb0], -1
	mov	rbp, rbp
	je	.label_2738
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_2709
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2705
.label_2709:
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jne	.label_2718
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
	jne	.label_2727
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], 0xc
	lea	rdi, [rdi]
	jmp	.label_2693
.label_2727:
	lea	rdi, [rdi]
	jmp	.label_2718
.label_2718:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_2702
	mov	qword ptr [rbp - 0xc8], 0
.label_2732:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_2731
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
	jmp	.label_2732
.label_2731:
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	byte ptr [rax + 0x8c], 1
.label_2702:
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
.label_2704:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_2685
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jae	.label_2734
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_2713
.label_2734:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_2713:
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
	jmp	.label_2704
.label_2685:
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
	jle	.label_2687
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_2687:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	jle	.label_2698
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2710
.label_2698:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x78], rax
.label_2710:
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
	jmp	.label_2716
.label_2738:
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
	jmp	.label_2700
.label_2700:
	jmp	.label_2743
.label_2730:
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
.label_2743:
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
	je	.label_2692
	mov	qword ptr [rbp - 0xf8], 0
.label_2728:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2712
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
	jmp	.label_2728
.label_2712:
	jmp	.label_2692
.label_2692:
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
.label_2691:
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	jge	.label_2690
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
	jmp	.label_2691
.label_2690:
	jmp	.label_2714
.label_2720:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_2721
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_2721
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_2725
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2725
.label_2721:
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
	je	.label_2737
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xe8], edx
.label_2737:
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
	je	.label_2707
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_2707:
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
	je	.label_2736
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_2736:
	mov	rsp, rsp
	jmp	.label_2703
.label_2725:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	nop	
	jmp	.label_2705
.label_2703:
	jmp	.label_2714
.label_2714:
	mov	rbp, rbp
	jmp	.label_2716
.label_2705:
	jmp	.label_2719
.label_2719:
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
.label_2693:
	mov	eax, dword ptr [rbp - 0xe4]
	add	rsp, 0x110
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4261c0

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
	jle	.label_2745
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2749
.label_2745:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_2749:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_2746:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2747
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
	je	.label_2748
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_2748:
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
	jmp	.label_2746
.label_2747:
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
	#Procedure 0x426310

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
	jle	.label_2754
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2763
.label_2754:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_2763:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
.label_2759:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_2766
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
	je	.label_2752
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0
.label_2758:
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
	jge	.label_2756
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	setl	cl
	mov	byte ptr [rbp - 0x55], cl
.label_2756:
	mov	al, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	test	al, 1
	jne	.label_2751
	lea	rdi, [rdi]
	jmp	.label_2755
.label_2751:
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
	jmp	.label_2758
.label_2755:
	nop	
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	jmp	.label_2760
.label_2752:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_2760:
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
	je	.label_2753
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	je	.label_2753
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
	jne	.label_2764
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	setge	dl
	nop	
	mov	byte ptr [rbp - 9], dl
.label_2764:
	mov	al, byte ptr [rbp - 9]
	nop	
	mov	byte ptr [rbp - 0x39], al
.label_2753:
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_2761
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
	je	.label_2750
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
.label_2750:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2765
.label_2761:
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	sete	al
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2762
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	lea	rdi, [rdi]
	jmp	.label_2766
.label_2762:
	jmp	.label_2765
.label_2765:
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
.label_2757:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jge	.label_2767
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
	jmp	.label_2757
.label_2767:
	jmp	.label_2759
.label_2766:
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
	#Procedure 0x4266f0

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
	jle	.label_2768
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_2769
.label_2768:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_2769:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_2771:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_2770
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
	jmp	.label_2771
.label_2770:
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
	#Procedure 0x426800

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
	#Procedure 0x426850

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
	je	.label_2774
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x69], al
.label_2774:
	nop	
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2772
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_2775
.label_2772:
	jmp	.label_2780
.label_2780:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	nop	
	jne	.label_2783
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
	je	.label_2777
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	mov	rbp, rbp
	je	.label_2777
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2781
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	je	.label_2777
.label_2781:
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
	je	.label_2776
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_2776:
	mov	al, byte ptr [rbp - 0x61]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2773
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_2778
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_2778:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_2775
.label_2773:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	or	rax, qword ptr [rcx + 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_2779
.label_2777:
	mov	qword ptr [rbp - 0x58], 0
.label_2779:
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
	je	.label_2782
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	jmp	.label_2775
.label_2782:
	jmp	.label_2780
.label_2783:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
.label_2775:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426b50

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
	#Procedure 0x426bc0

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
	jg	.label_2880
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], 0
	jmp	.label_2785
.label_2880:
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
	jle	.label_2809
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	je	.label_2809
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2809
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
	jmp	.label_2785
.label_2809:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	mov	rbp, rbp
	cmp	eax, 0x5c
	jne	.label_2853
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2858
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x24
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_2785
.label_2858:
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
	jle	.label_2873
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
	jne	.label_2792
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd8], 0x5f
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], al
.label_2792:
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
	jmp	.label_2805
.label_2873:
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
	jne	.label_2824
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf1]
	cmp	eax, 0x5f
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_2824:
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
.label_2805:
	movzx	eax, byte ptr [rbp - 0xf1]
	mov	rsp, rsp
	mov	ecx, eax
	sub	ecx, 0x27
	mov	dword ptr [rbp - 0x50], eax
	mov	dword ptr [rbp - 0xe4], ecx
	je	.label_2855
	jmp	.label_2862
.label_2862:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	je	.label_2863
	nop	
	jmp	.label_2865
.label_2865:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_2815
	nop	
	jmp	.label_2868
.label_2868:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_2871
	jmp	.label_2874
.label_2874:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	eax, -0x31
	mov	rsp, rsp
	sub	eax, 9
	mov	dword ptr [rbp - 0xcc], eax
	lea	rsi, [rsi]
	jb	.label_2876
	jmp	.label_2812
.label_2812:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x3c
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2879
	jmp	.label_2883
.label_2883:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x3e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2851
	lea	rdi, [rdi]
	jmp	.label_2890
.label_2890:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x10], eax
	je	.label_2891
	mov	rbp, rbp
	jmp	.label_2788
.label_2788:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_2791
	jmp	.label_2798
.label_2798:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2800
	jmp	.label_2806
.label_2806:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	je	.label_2807
	jmp	.label_2814
.label_2814:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x30], eax
	je	.label_2864
	jmp	.label_2841
.label_2841:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_2819
	lea	rdi, [rdi]
	jmp	.label_2866
.label_2866:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0xe0], eax
	mov	rbp, rbp
	je	.label_2821
	jmp	.label_2826
.label_2826:
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x77
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	je	.label_2801
	lea	rsi, [rsi]
	jmp	.label_2832
.label_2832:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x7b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2835
	jmp	.label_2839
.label_2839:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x60], eax
	nop	
	je	.label_2878
	jmp	.label_2846
.label_2846:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_2847
	jmp	.label_2854
.label_2878:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	nop	
	jne	.label_2843
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x8000
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_2843
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_2843:
	jmp	.label_2795
.label_2876:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x4000
	nop	
	cmp	rax, 0
	jne	.label_2869
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
.label_2869:
	mov	rbp, rbp
	jmp	.label_2795
.label_2879:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_2881
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
.label_2881:
	nop	
	jmp	.label_2795
.label_2851:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	nop	
	jne	.label_2793
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
.label_2793:
	lea	rsi, [rsi]
	jmp	.label_2795
.label_2819:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_2816
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
.label_2816:
	lea	rsi, [rsi]
	jmp	.label_2795
.label_2791:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_2829
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
.label_2829:
	jmp	.label_2795
.label_2801:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_2845
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x20
	nop	
	mov	dword ptr [rax + 8], ecx
.label_2845:
	nop	
	jmp	.label_2795
.label_2807:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_2859
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_2859:
	jmp	.label_2795
.label_2821:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_2867
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_2867:
	jmp	.label_2795
.label_2800:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_2875
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_2875:
	jmp	.label_2795
.label_2864:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2884
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
.label_2884:
	jmp	.label_2795
.label_2855:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_2797
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
.label_2797:
	jmp	.label_2795
.label_2863:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_2817
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 8
	nop	
	mov	dword ptr [rax + 8], ecx
.label_2817:
	jmp	.label_2795
.label_2815:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_2888
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_2888:
	jmp	.label_2795
.label_2871:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_2844
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2844
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_2844:
	jmp	.label_2795
.label_2891:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_2857
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2857
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x13
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_2857:
	lea	rsi, [rsi]
	jmp	.label_2795
.label_2835:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2784
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_2784
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	nop	
	mov	dword ptr [rax + 8], ecx
.label_2784:
	jmp	.label_2795
.label_2847:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2886
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x1000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	jne	.label_2886
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x18
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_2886:
	nop	
	jmp	.label_2795
.label_2854:
	jmp	.label_2795
.label_2795:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 2
	nop	
	jmp	.label_2785
.label_2853:
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
	jle	.label_2808
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
	jne	.label_2827
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x5f
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc5], al
.label_2827:
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
	jmp	.label_2836
.label_2808:
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
	jne	.label_2861
	mov	rax, qword ptr [rbp - 0xf0]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb1], dl
.label_2861:
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
.label_2836:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xa
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0xb0], ecx
	je	.label_2877
	mov	rbp, rbp
	jmp	.label_2882
.label_2882:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x24
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_2885
	mov	rsp, rsp
	jmp	.label_2889
.label_2889:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_2887
	nop	
	jmp	.label_2787
.label_2787:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x29
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	je	.label_2789
	jmp	.label_2796
.label_2796:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x78], eax
	je	.label_2799
	jmp	.label_2803
.label_2803:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	je	.label_2804
	jmp	.label_2810
.label_2810:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x2e
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	je	.label_2811
	lea	rdi, [rdi]
	jmp	.label_2831
.label_2831:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	eax, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rdi, [rdi]
	je	.label_2818
	jmp	.label_2820
.label_2820:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x5b
	nop	
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2852
	mov	rbp, rbp
	jmp	.label_2825
.label_2825:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2828
	jmp	.label_2833
.label_2833:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	nop	
	je	.label_2823
	lea	rdi, [rdi]
	jmp	.label_2838
.label_2838:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x7c
	nop	
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	je	.label_2842
	lea	rsi, [rsi]
	jmp	.label_2848
.label_2848:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x7d
	nop	
	mov	dword ptr [rbp - 0x64], eax
	je	.label_2850
	jmp	.label_2840
.label_2877:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x800
	cmp	rax, 0
	je	.label_2856
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_2856:
	mov	rsp, rsp
	jmp	.label_2802
.label_2842:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x400
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2872
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x8000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2872
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_2872:
	mov	rsp, rsp
	jmp	.label_2802
.label_2799:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_2802
.label_2804:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_2786
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	jne	.label_2786
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_2786:
	mov	rbp, rbp
	jmp	.label_2802
.label_2818:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2813
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2813
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_2813:
	mov	rsp, rsp
	jmp	.label_2802
.label_2823:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	cmp	rax, 0
	je	.label_2822
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2822
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_2822:
	jmp	.label_2802
.label_2850:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2837
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000
	cmp	rax, 0
	nop	
	je	.label_2837
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x18
	nop	
	mov	dword ptr [rax + 8], ecx
.label_2837:
	lea	rsi, [rsi]
	jmp	.label_2802
.label_2887:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2860
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_2860:
	jmp	.label_2802
.label_2789:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_2870
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_2870:
	jmp	.label_2802
.label_2852:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_2802
.label_2811:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	jmp	.label_2802
.label_2828:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x800008
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jne	.label_2790
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 0x48], 0
	nop	
	je	.label_2790
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
	je	.label_2794
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0xa
	je	.label_2834
.label_2794:
	jmp	.label_2802
.label_2834:
	mov	rsp, rsp
	jmp	.label_2790
.label_2790:
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
	jmp	.label_2802
.label_2885:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 8
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_2830
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
	je	.label_2830
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
	je	.label_2849
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xff
	lea	rsi, [rsi]
	cmp	eax, 9
	je	.label_2849
	jmp	.label_2802
.label_2849:
	mov	rsp, rsp
	jmp	.label_2830
.label_2830:
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
	jmp	.label_2802
.label_2840:
	jmp	.label_2802
.label_2802:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 1
.label_2785:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rsp, 0x100
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427dc0

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
	je	.label_2892
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
	jmp	.label_2894
.label_2892:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_2893
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2897
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
	je	.label_2893
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_2893
.label_2897:
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
	jmp	.label_2894
.label_2893:
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
	je	.label_2896
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_2896:
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
	je	.label_2895
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_2895
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
	jmp	.label_2894
.label_2895:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 0xd], cl
.label_2894:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0xd]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427fc0

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
	jne	.label_2898
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_2899
.label_2898:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_2899:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x428040

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
	je	.label_2909
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_2909:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2906
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	jmp	.label_2902
.label_2906:
	mov	rbp, rbp
	jmp	.label_2901
.label_2901:
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
	je	.label_2903
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
	je	.label_2903
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x71], al
	je	.label_2900
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x71], dl
.label_2900:
	mov	al, byte ptr [rbp - 0x71]
	mov	byte ptr [rbp - 0x11], al
.label_2903:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_2914
	jmp	.label_2911
.label_2914:
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
	je	.label_2905
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], al
.label_2905:
	mov	al, byte ptr [rbp - 0x49]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2913
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2910
	movabs	rsi, OFFSET FLAT:free_tree
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	postorder
	nop	
	mov	dword ptr [rbp - 8], eax
.label_2910:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_2902
.label_2913:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2908
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_2908
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
	jne	.label_2907
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
	jmp	.label_2902
.label_2907:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_2904
.label_2908:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_2912
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
.label_2912:
	jmp	.label_2904
.label_2904:
	jmp	.label_2901
.label_2911:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
.label_2902:
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
	#Procedure 0x428370

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
.label_2916:
	jmp	.label_2917
.label_2917:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	jne	.label_2923
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x29], cl
.label_2923:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2920
	jmp	.label_2924
.label_2920:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_2926
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_2922
.label_2926:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_2922:
	mov	rsp, rsp
	jmp	.label_2917
.label_2924:
	jmp	.label_2921
.label_2921:
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
	je	.label_2918
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	jmp	.label_2919
.label_2918:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_2925
	mov	dword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jmp	.label_2919
.label_2925:
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
	je	.label_2915
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_2915:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2921
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2916
.label_2919:
	mov	eax, dword ptr [rbp - 0x30]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x428530

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
	#Procedure 0x428570

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
	ja	.label_2955
	mov	rax, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2977]]
	mov	rsp, rsp
	jmp	rcx
.label_4849:
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
	je	.label_2941
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2941:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2962
	lea	rdi, [rdi]
	jmp	.label_2937
.label_2937:
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
	jle	.label_2967
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x140]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	je	.label_2976
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
.label_2976:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0xa9], al
.label_2967:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2943
	jmp	.label_2947
.label_2943:
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
	je	.label_2972
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xc9], al
.label_2972:
	mov	al, byte ptr [rbp - 0xc9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2927
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_2928
.label_2927:
	jmp	.label_2937
.label_2947:
	jmp	.label_2962
.label_2962:
	mov	rsp, rsp
	jmp	.label_2958
.label_4853:
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
	je	.label_2951
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_2951:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2973
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	jmp	.label_2928
.label_2973:
	mov	rbp, rbp
	jmp	.label_2958
.label_4855:
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
	je	.label_2940
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	nop	
	mov	byte ptr [rbp - 0x119], al
.label_2940:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x119]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2957
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2957:
	jmp	.label_2958
.label_4851:
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
	jne	.label_2963
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2963:
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
	je	.label_2961
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2961:
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
	jmp	.label_2958
.label_4856:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000000
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2935
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jmp	.label_2928
.label_2935:
	jmp	.label_2948
.label_2948:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2949
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_2928
.label_2949:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_2966
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
	jmp	.label_2928
.label_2966:
	jmp	.label_2930
.label_2930:
	mov	rbp, rbp
	jmp	.label_2931
.label_2931:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	lea	rdi, [rdi]
	jne	.label_2934
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20000
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_2934
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2934:
	jmp	.label_2954
.label_2954:
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
	je	.label_2969
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2969:
	nop	
	jmp	.label_2958
.label_4854:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0x30f
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2936
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_2936
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	call	init_word_char
.label_2936:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x100
	je	.label_2950
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x200
	jne	.label_2956
.label_2950:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x100
	jne	.label_2960
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
	jmp	.label_2975
.label_2960:
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
.label_2975:
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
	je	.label_2964
	mov	al, 1
	cmp	qword ptr [rbp - 0x110], 0
	mov	byte ptr [rbp - 0xba], al
	lea	rdi, [rdi]
	je	.label_2964
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba], al
.label_2964:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2978
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2978:
	mov	rsp, rsp
	jmp	.label_2939
.label_2956:
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
	je	.label_2953
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_2928
.label_2953:
	mov	rbp, rbp
	jmp	.label_2939
.label_2939:
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
	jmp	.label_2928
.label_4852:
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
	je	.label_2938
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_2928
.label_2938:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2968
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_2968:
	mov	rsp, rsp
	jmp	.label_2958
.label_4857:
	movabs	rax, OFFSET FLAT:.str.1_12
	movabs	rcx, OFFSET FLAT:.str.2_10
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
	mov	r8d, OFFSET FLAT:.str.1_12
	mov	r10d, r8d
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.2_10
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
	je	.label_2933
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x131], al
.label_2933:
	mov	al, byte ptr [rbp - 0x131]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_2974
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_2928
.label_2974:
	lea	rdi, [rdi]
	jmp	.label_2958
.label_4858:
	movabs	rax, OFFSET FLAT:.str.3_8
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
	mov	r8d, OFFSET FLAT:.str.3_8
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
	je	.label_2946
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x132], al
.label_2946:
	mov	al, byte ptr [rbp - 0x132]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2944
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2944:
	mov	rbp, rbp
	jmp	.label_2958
.label_4850:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_4859:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2955:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2958:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	call	fetch_token
.label_2945:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	mov	rsp, rsp
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x81], al
	je	.label_2932
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	cmp	edx, 0x12
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x81], al
	je	.label_2932
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	edx, 0xff
	cmp	edx, 0x13
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], al
	je	.label_2932
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_2932:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2965
	nop	
	jmp	.label_2970
.label_2965:
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
	je	.label_2979
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x101], al
.label_2979:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2942
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_2952
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x2c], eax
.label_2952:
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_2928
.label_2942:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000000
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2959
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_2971
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	mov	rbp, rbp
	jne	.label_2959
.label_2971:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2929
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
.label_2929:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_2928
.label_2959:
	mov	rsp, rsp
	jmp	.label_2945
.label_2970:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
.label_2928:
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
	#Procedure 0x429580

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
	je	.label_2980
	mov	eax, 0x3c8
	mov	edi, eax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_2982
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_2983
.label_2982:
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
.label_2980:
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
	je	.label_2984
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
.label_2984:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_2981
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_2981:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_2983:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x429770

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
	jne	.label_2991
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jmp	.label_2990
.label_2991:
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
	jne	.label_2989
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
.label_2989:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2988
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2986
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
.label_2986:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rax], 8
.label_2988:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2992
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_2987
.label_2992:
	jmp	.label_2990
.label_2990:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 8
	ja	.label_2985
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
.label_2985:
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
	je	.label_2993
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x28], 0
	nop	
	jmp	.label_2987
.label_2993:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_2987:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4299f0

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
	je	.label_3033
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x10d], al
.label_3033:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x10d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_3040
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
	jmp	.label_2999
.label_3040:
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
	je	.label_3020
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 2
	jmp	.label_2996
.label_3020:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x19
	jne	.label_3031
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
	je	.label_3038
	nop	
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_set
.label_3038:
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
	je	.label_3017
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 2
	jmp	.label_2996
.label_3017:
	jmp	.label_3031
.label_3031:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_3032
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_3032:
	jmp	.label_3019
.label_3019:
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
	je	.label_3030
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_2996
.label_3030:
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
	je	.label_3004
	nop	
	cmp	dword ptr [rbp - 0xa0], 2
	mov	rsp, rsp
	je	.label_3004
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
	je	.label_2995
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_2996
.label_2995:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_3015
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
	je	.label_3029
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_2996
.label_3029:
	nop	
	mov	eax, dword ptr [rbp - 0x138]
	mov	rsp, rsp
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 0x15
	jne	.label_3042
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
	jmp	.label_3001
.label_3042:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x181], 1
.label_3001:
	mov	rsp, rsp
	jmp	.label_3015
.label_3015:
	jmp	.label_3004
.label_3004:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_3022
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
	je	.label_3039
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_2996
.label_3039:
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
	jle	.label_3007
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_2994
.label_3007:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	jmp	.label_2994
.label_2994:
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
	je	.label_3037
	jmp	.label_2996
.label_3037:
	jmp	.label_3000
.label_3022:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0xd8], rdx
	ja	.label_3002
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_3011]]
	mov	rbp, rbp
	jmp	rcx
.label_4902:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	esi, eax
	call	bitset_set
	lea	rdi, [rdi]
	jmp	.label_3010
.label_4903:
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
	je	.label_3024
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
	je	.label_3043
	mov	rbp, rbp
	jmp	.label_3003
.label_3043:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
.label_3024:
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
	jmp	.label_3010
.label_4904:
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
	je	.label_3036
	jmp	.label_2996
.label_3036:
	jmp	.label_3010
.label_4905:
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
	je	.label_2998
	jmp	.label_2996
.label_2998:
	jmp	.label_3010
.label_4906:
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
	je	.label_3025
	jmp	.label_2996
.label_3025:
	jmp	.label_3010
.label_3002:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_3
	movabs	rsi, OFFSET FLAT:.str.6_3
	mov	edx, 0xced
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
.label_3010:
	jmp	.label_3000
.label_3000:
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
	je	.label_3041
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_2996
.label_3041:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x15
	jne	.label_3012
	jmp	.label_3018
.label_3012:
	jmp	.label_3019
.label_3018:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xc9], 1
	je	.label_3021
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_not
.label_3021:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3028
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_3028:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	jne	.label_3005
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_3005
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	jne	.label_3005
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_3005
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3009
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_3005
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x20]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	cmp	edx, 0
	je	.label_3009
.label_3005:
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
	je	.label_3034
	jmp	.label_3003
.label_3034:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], 0
.label_3023:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x12c], 4
	jge	.label_3006
	movsxd	rax, dword ptr [rbp - 0x12c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3026
	jmp	.label_3006
.label_3026:
	nop	
	jmp	.label_3008
.label_3008:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_3023
.label_3006:
	nop	
	cmp	dword ptr [rbp - 0x12c], 4
	mov	rsp, rsp
	jge	.label_3016
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
	je	.label_3013
	nop	
	jmp	.label_3003
.label_3013:
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
	je	.label_3014
	mov	rsp, rsp
	jmp	.label_3003
.label_3014:
	mov	rsp, rsp
	jmp	.label_3027
.label_3016:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x90], rax
.label_3027:
	mov	rbp, rbp
	jmp	.label_2997
.label_3009:
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
	je	.label_3035
	lea	rdi, [rdi]
	jmp	.label_3003
.label_3035:
	jmp	.label_2997
.label_2997:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_2999
.label_3003:
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 0xc
.label_2996:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	qword ptr [rbp - 0x80], 0
.label_2999:
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
	#Procedure 0x42a870

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
	je	.label_3048
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
	je	.label_3047
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
	jmp	.label_3046
.label_3047:
	mov	rsp, rsp
	jmp	.label_3048
.label_3048:
	lea	rsi, [rsi]
	jmp	.label_3052
.label_3052:
	mov	rbp, rbp
	jmp	.label_3045
.label_3045:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_3046
	mov	dword ptr [rbp - 0x34], 0
.label_3050:
	cmp	dword ptr [rbp - 0x34], 0x40
	jge	.label_3044
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
	jne	.label_3053
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0x5f
	jne	.label_3051
.label_3053:
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
.label_3051:
	lea	rdi, [rdi]
	jmp	.label_3049
.label_3049:
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
	jmp	.label_3050
.label_3044:
	mov	rbp, rbp
	jmp	.label_3054
.label_3054:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_3045
.label_3046:
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42ab10

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
	je	.label_3062
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_3057
.label_3062:
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
	je	.label_3061
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
	jmp	.label_3057
.label_3061:
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
	je	.label_3059
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
	jmp	.label_3057
.label_3059:
	mov	rsp, rsp
	jmp	.label_3065
.label_3065:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_3055
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
	jmp	.label_3065
.label_3055:
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	je	.label_3058
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	bitset_not
.label_3058:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3063
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_3063:
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
	je	.label_3060
	jmp	.label_3056
.label_3060:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_3068
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
	je	.label_3066
	mov	rbp, rbp
	jmp	.label_3056
.label_3066:
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
	je	.label_3064
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_3057
.label_3064:
	mov	rbp, rbp
	jmp	.label_3067
.label_3068:
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	call	free_charset
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rdi
	jmp	.label_3057
.label_3067:
	jmp	.label_3056
.label_3056:
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
.label_3057:
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x88
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42afa0

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
	jne	.label_3102
	mov	qword ptr [rbp - 0x58], 0
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	call	fetch_number
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_3083
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_3087
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2c
	lea	rsi, [rsi]
	jne	.label_3087
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_3095
.label_3087:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_3076
.label_3095:
	mov	rsp, rsp
	jmp	.label_3083
.label_3083:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	rsp, rsp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3103
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_3110
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3070
.label_3110:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_3072
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	jne	.label_3072
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_3086
.label_3072:
	lea	rsi, [rsi]
	mov	rax, -2
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_3086
.label_3086:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
.label_3070:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
.label_3103:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	byte ptr [rbp - 0x69], al
	mov	rsp, rsp
	je	.label_3096
	cmp	qword ptr [rbp - 0x58], -2
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 0x69], al
.label_3096:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_3101
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
	je	.label_3107
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	nop	
	jne	.label_3069
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 9
	jmp	.label_3075
.label_3069:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xa
.label_3075:
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_3076
.label_3107:
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
	jmp	.label_3076
.label_3101:
	cmp	qword ptr [rbp - 0x58], -1
	mov	rbp, rbp
	je	.label_3104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	jg	.label_3081
.label_3104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x39], dl
.label_3081:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3109
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_3076
.label_3109:
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_3071
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_3074
.label_3071:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 8], rax
.label_3074:
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
	je	.label_3080
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_3076
.label_3080:
	jmp	.label_3091
.label_3102:
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
.label_3091:
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
	je	.label_3106
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_3076
.label_3106:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_3079
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
.label_3079:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3085
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
	jmp	.label_3076
.label_3085:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_3098
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0xa0], 2
.label_3090:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jg	.label_3089
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
	je	.label_3077
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x79], al
.label_3077:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_3082
	nop	
	jmp	.label_3092
.label_3082:
	lea	rsi, [rsi]
	jmp	.label_3088
.label_3088:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_3090
.label_3089:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_3094
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_3076
.label_3094:
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
	je	.label_3093
	jmp	.label_3092
.label_3093:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	jmp	.label_3111
.label_3098:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
.label_3111:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_3073
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
.label_3073:
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
	je	.label_3097
	lea	rsi, [rsi]
	jmp	.label_3092
.label_3097:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 2
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_3100:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jg	.label_3108
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
	je	.label_3078
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
.label_3078:
	mov	al, byte ptr [rbp - 0xa9]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_3084
	jmp	.label_3092
.label_3084:
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
	je	.label_3099
	nop	
	jmp	.label_3092
.label_3099:
	jmp	.label_3105
.label_3105:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_3100
.label_3108:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_3112
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
.label_3112:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_3076
.label_3092:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], 0
.label_3076:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42b870

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
	jg	.label_3131
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
	jmp	.label_3120
.label_3131:
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
	jle	.label_3118
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	je	.label_3118
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_3118
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 0x50], 1
	jmp	.label_3120
.label_3118:
	movzx	eax, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	cmp	eax, 0x5c
	jne	.label_3113
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 1
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_3113
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	jge	.label_3113
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
	jmp	.label_3120
.label_3113:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x5b
	nop	
	jne	.label_3130
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
	jge	.label_3122
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x51], dl
	lea	rdi, [rdi]
	jmp	.label_3126
.label_3122:
	mov	byte ptr [rbp - 0x51], 0
.label_3126:
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
	je	.label_3114
	jmp	.label_3127
.label_3127:
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x18], eax
	nop	
	je	.label_3133
	lea	rdi, [rdi]
	jmp	.label_3117
.label_3117:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	je	.label_3121
	lea	rdi, [rdi]
	jmp	.label_3129
.label_3114:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_3119
.label_3121:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_3119
.label_3133:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 4
	nop	
	cmp	rax, 0
	je	.label_3125
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_3119
.label_3125:
	lea	rsi, [rsi]
	jmp	.label_3129
.label_3129:
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
.label_3119:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_3120
.label_3130:
	movzx	eax, byte ptr [rbp - 9]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x24], eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rbp, rbp
	je	.label_3128
	mov	rsp, rsp
	jmp	.label_3134
.label_3134:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	sub	eax, 0x5d
	nop	
	mov	dword ptr [rbp - 0x14], eax
	je	.label_3115
	jmp	.label_3124
.label_3124:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	sub	eax, 0x5e
	mov	dword ptr [rbp - 8], eax
	je	.label_3116
	lea	rdi, [rdi]
	jmp	.label_3132
.label_3128:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_3123
.label_3115:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_3123
.label_3116:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_3123
.label_3132:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_3123:
	mov	dword ptr [rbp - 0x50], 1
.label_3120:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42bc80

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
	#Procedure 0x42bd10

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
	jle	.label_3139
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
	jmp	.label_3135
.label_3139:
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
	je	.label_3138
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_3138
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x1c
	jne	.label_3137
.label_3138:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	call	parse_bracket_symbol
	nop	
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_3135
.label_3137:
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
	je	.label_3136
	nop	
	test	byte ptr [rbp - 0x4d], 1
	jne	.label_3136
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
	je	.label_3140
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 0xb
	lea	rdi, [rdi]
	jmp	.label_3135
.label_3140:
	nop	
	jmp	.label_3136
.label_3136:
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
.label_3135:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42bef0

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
	je	.label_3160
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x1d], al
	je	.label_3160
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rcx], 2
	nop	
	mov	byte ptr [rbp - 0x1d], al
	je	.label_3160
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], cl
.label_3160:
	mov	al, byte ptr [rbp - 0x1d]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3141
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0xb
	mov	rbp, rbp
	jmp	.label_3148
.label_3141:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_3157
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
	ja	.label_3167
.label_3157:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x59], cl
	mov	rbp, rbp
	jne	.label_3153
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
.label_3153:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x59]
	mov	byte ptr [rbp - 0x6a], al
.label_3167:
	mov	al, byte ptr [rbp - 0x6a]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3159
	mov	dword ptr [rbp - 0x2c], 3
	jmp	.label_3148
.label_3159:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 0
	jne	.label_3166
	mov	rax, qword ptr [rbp - 0x98]
	movzx	ecx, byte ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_3168
.label_3166:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_3142
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	jmp	.label_3149
.label_3142:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_3149
.label_3149:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_3168:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_3163
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	mov	rbp, rbp
	jmp	.label_3170
.label_3163:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	nop	
	jne	.label_3143
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rsp, rsp
	jmp	.label_3150
.label_3143:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_3150
.label_3150:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8c], eax
.label_3170:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_3161
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_3169
.label_3161:
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
	jmp	.label_3155
.label_3169:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x1c], ecx
.label_3155:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	je	.label_3151
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax], 3
	jne	.label_3164
.label_3151:
	mov	eax, dword ptr [rbp - 0x30]
	mov	cl, al
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_3172
.label_3164:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x34], ecx
.label_3172:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], -1
	nop	
	je	.label_3144
	cmp	dword ptr [rbp - 0x70], -1
	lea	rsi, [rsi]
	jne	.label_3171
.label_3144:
	nop	
	mov	dword ptr [rbp - 0x2c], 3
	mov	rbp, rbp
	jmp	.label_3148
.label_3171:
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
	je	.label_3152
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	seta	cl
	mov	byte ptr [rbp - 9], cl
.label_3152:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_3174
	mov	dword ptr [rbp - 0x2c], 0xb
	jmp	.label_3148
.label_3174:
	jmp	.label_3154
.label_3154:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_3156
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
	je	.label_3158
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
	je	.label_3162
	cmp	qword ptr [rbp - 0x68], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_3162:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3165
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
	jmp	.label_3148
.label_3165:
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
.label_3158:
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
.label_3156:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], 0
.label_3147:
	cmp	dword ptr [rbp - 0x88], 0x100
	mov	rsp, rsp
	jge	.label_3173
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	ja	.label_3146
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	cmp	eax, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	ja	.label_3146
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	rsi, dword ptr [rbp - 0x88]
	call	bitset_set
.label_3146:
	nop	
	jmp	.label_3145
.label_3145:
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, 1
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_3147
.label_3173:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_3148:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42c4d0

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
	je	.label_3175
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 3
	jmp	.label_3176
.label_3175:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	call	bitset_set
	mov	dword ptr [rbp - 0xc], 0
.label_3176:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42c560

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
	je	.label_3177
	mov	dword ptr [rbp - 0x24], 3
	nop	
	jmp	.label_3178
.label_3177:
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
.label_3178:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42c600

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
	je	.label_3179
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_2
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_3218
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_3
	mov	esi, eax
	nop	
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	jne	.label_3179
.label_3218:
	movabs	rax, OFFSET FLAT:.str.9_3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_3179:
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
	je	.label_3240
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
	je	.label_3287
	mov	dword ptr [rbp - 0xb4], 0xc
	mov	rsp, rsp
	jmp	.label_3227
.label_3287:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx], rax
.label_3240:
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
	mov	esi, OFFSET FLAT:.str.1_12
	lea	rsi, [rsi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_3341
	jmp	.label_3263
.label_3263:
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
	je	.label_3346
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_3233:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3191
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
	je	.label_3207
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_3207:
	jmp	.label_3231
.label_3231:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3233
.label_3191:
	jmp	.label_3243
.label_3346:
	mov	dword ptr [rbp - 0xd4], 0
.label_3286:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3249
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
	je	.label_3264
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_3264:
	nop	
	jmp	.label_3282
.label_3282:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3286
.label_3249:
	lea	rsi, [rsi]
	jmp	.label_3243
.label_3243:
	jmp	.label_3294
.label_3294:
	mov	rbp, rbp
	jmp	.label_3228
.label_3341:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.10_3
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_3301
	lea	rsi, [rsi]
	jmp	.label_3307
.label_3307:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_3310
	mov	dword ptr [rbp - 0xd4], 0
.label_3185:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_3321
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
	je	.label_3232
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
.label_3232:
	lea	rdi, [rdi]
	jmp	.label_3182
.label_3182:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3185
.label_3321:
	lea	rsi, [rsi]
	jmp	.label_3195
.label_3310:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_3241:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_3202
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
	je	.label_3274
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_3274:
	jmp	.label_3237
.label_3237:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3241
.label_3202:
	jmp	.label_3195
.label_3195:
	lea	rsi, [rsi]
	jmp	.label_3253
.label_3253:
	nop	
	jmp	.label_3256
.label_3301:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.8_3
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_3267
	lea	rsi, [rsi]
	jmp	.label_3268
.label_3268:
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
	je	.label_3270
	mov	dword ptr [rbp - 0xd4], 0
.label_3327:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_3292
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
	je	.label_3304
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_3304:
	jmp	.label_3326
.label_3326:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3327
.label_3292:
	jmp	.label_3184
.label_3270:
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_3203:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3283
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
	je	.label_3180
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_3180:
	mov	rsp, rsp
	jmp	.label_3198
.label_3198:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3203
.label_3283:
	lea	rdi, [rdi]
	jmp	.label_3184
.label_3184:
	jmp	.label_3212
.label_3212:
	jmp	.label_3215
.label_3267:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.3_8
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_3222
	mov	rsp, rsp
	jmp	.label_3226
.label_3226:
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
	je	.label_3229
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_3293:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_3250
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
	je	.label_3265
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_3265:
	mov	rbp, rbp
	jmp	.label_3290
.label_3290:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_3293
.label_3250:
	jmp	.label_3298
.label_3229:
	mov	dword ptr [rbp - 0xd4], 0
.label_3337:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3302
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
	je	.label_3316
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_3316:
	jmp	.label_3333
.label_3333:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3337
.label_3302:
	jmp	.label_3298
.label_3298:
	nop	
	jmp	.label_3347
.label_3347:
	jmp	.label_3254
.label_3222:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.9_3
	nop	
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_3183
	nop	
	jmp	.label_3186
.label_3186:
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
	je	.label_3190
	mov	dword ptr [rbp - 0xd4], 0
.label_3255:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_3340
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
	je	.label_3305
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_3305:
	lea	rdi, [rdi]
	jmp	.label_3251
.label_3251:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3255
.label_3340:
	mov	rsp, rsp
	jmp	.label_3260
.label_3190:
	mov	dword ptr [rbp - 0xd4], 0
.label_3351:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_3181
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
	je	.label_3279
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_3279:
	nop	
	jmp	.label_3297
.label_3297:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3351
.label_3181:
	mov	rbp, rbp
	jmp	.label_3260
.label_3260:
	lea	rsi, [rsi]
	jmp	.label_3311
.label_3311:
	jmp	.label_3252
.label_3183:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	eax, OFFSET FLAT:.str.11_3
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_3318
	nop	
	jmp	.label_3319
.label_3319:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3323
	mov	dword ptr [rbp - 0xd4], 0
.label_3204:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3335
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
	je	.label_3348
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_3348:
	lea	rsi, [rsi]
	jmp	.label_3269
.label_3269:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3204
.label_3335:
	mov	rsp, rsp
	jmp	.label_3211
.label_3323:
	mov	dword ptr [rbp - 0xd4], 0
.label_3257:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3217
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
	je	.label_3230
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_3230:
	jmp	.label_3343
.label_3343:
	mov	eax, dword ptr [rbp - 0xd4]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3257
.label_3217:
	nop	
	jmp	.label_3211
.label_3211:
	lea	rsi, [rsi]
	jmp	.label_3266
.label_3266:
	mov	rbp, rbp
	jmp	.label_3248
.label_3318:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.12_3
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_3276
	lea	rsi, [rsi]
	jmp	.label_3281
.label_3281:
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
	je	.label_3284
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_3338:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_3299
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
	je	.label_3314
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
.label_3314:
	nop	
	jmp	.label_3345
.label_3345:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3338
.label_3299:
	jmp	.label_3221
.label_3284:
	mov	dword ptr [rbp - 0xd4], 0
.label_3200:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_3350
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
	je	.label_3193
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_3193:
	jmp	.label_3288
.label_3288:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_3200
.label_3350:
	jmp	.label_3221
.label_3221:
	jmp	.label_3224
.label_3224:
	mov	rbp, rbp
	jmp	.label_3194
.label_3276:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.7_2
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_3236
	jmp	.label_3245
.label_3245:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_3246
	mov	dword ptr [rbp - 0xd4], 0
.label_3205:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_3261
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
	je	.label_3275
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_3275:
	mov	rsp, rsp
	jmp	.label_3300
.label_3300:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_3205
.label_3261:
	mov	rbp, rbp
	jmp	.label_3213
.label_3246:
	mov	dword ptr [rbp - 0xd4], 0
.label_3331:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3317
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
	je	.label_3329
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_3329:
	jmp	.label_3320
.label_3320:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_3331
.label_3317:
	lea	rsi, [rsi]
	jmp	.label_3213
.label_3213:
	jmp	.label_3188
.label_3188:
	jmp	.label_3242
.label_3236:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.13_3
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_3199
	nop	
	jmp	.label_3206
.label_3206:
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
	je	.label_3208
	mov	dword ptr [rbp - 0xd4], 0
.label_3349:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_3291
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
	je	.label_3344
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_3344:
	mov	rsp, rsp
	jmp	.label_3189
.label_3189:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_3349
.label_3291:
	jmp	.label_3278
.label_3208:
	mov	dword ptr [rbp - 0xd4], 0
.label_3295:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3285
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
	je	.label_3328
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_3328:
	lea	rsi, [rsi]
	jmp	.label_3315
.label_3315:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_3295
.label_3285:
	mov	rbp, rbp
	jmp	.label_3278
.label_3278:
	jmp	.label_3325
.label_3325:
	jmp	.label_3239
.label_3199:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.14_2
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_3336
	mov	rsp, rsp
	jmp	.label_3271
.label_3271:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_3342
	mov	dword ptr [rbp - 0xd4], 0
.label_3272:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3247
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
	je	.label_3197
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
.label_3197:
	jmp	.label_3289
.label_3289:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_3272
.label_3247:
	jmp	.label_3238
.label_3342:
	mov	dword ptr [rbp - 0xd4], 0
.label_3258:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3196
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
	je	.label_3216
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_3216:
	mov	rbp, rbp
	jmp	.label_3280
.label_3280:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	jmp	.label_3258
.label_3196:
	lea	rdi, [rdi]
	jmp	.label_3238
.label_3238:
	jmp	.label_3313
.label_3313:
	lea	rsi, [rsi]
	jmp	.label_3235
.label_3336:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.15_2
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_3303
	mov	rbp, rbp
	jmp	.label_3309
.label_3309:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3312
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_3192:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_3322
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
	je	.label_3339
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
.label_3339:
	jmp	.label_3234
.label_3234:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_3192
.label_3322:
	mov	rsp, rsp
	jmp	.label_3201
.label_3312:
	mov	dword ptr [rbp - 0xd4], 0
.label_3214:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_3209
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
	je	.label_3244
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_3244:
	lea	rsi, [rsi]
	jmp	.label_3324
.label_3324:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3214
.label_3209:
	jmp	.label_3201
.label_3201:
	lea	rdi, [rdi]
	jmp	.label_3259
.label_3259:
	lea	rsi, [rsi]
	jmp	.label_3262
.label_3303:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.16_3
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_3219
	mov	rsp, rsp
	jmp	.label_3273
.label_3273:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_3277
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_3332:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rdi, [rdi]
	jge	.label_3296
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
	je	.label_3308
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
.label_3308:
	jmp	.label_3330
.label_3330:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_3332
.label_3296:
	jmp	.label_3220
.label_3277:
	mov	dword ptr [rbp - 0xd4], 0
.label_3306:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_3334
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
	je	.label_3187
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	nop	
	call	bitset_set
.label_3187:
	jmp	.label_3210
.label_3210:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_3306
.label_3334:
	nop	
	jmp	.label_3220
.label_3220:
	jmp	.label_3223
.label_3223:
	jmp	.label_3225
.label_3219:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 4
	jmp	.label_3227
.label_3225:
	mov	rsp, rsp
	jmp	.label_3262
.label_3262:
	jmp	.label_3235
.label_3235:
	jmp	.label_3239
.label_3239:
	lea	rdi, [rdi]
	jmp	.label_3242
.label_3242:
	lea	rsi, [rsi]
	jmp	.label_3194
.label_3194:
	lea	rdi, [rdi]
	jmp	.label_3248
.label_3248:
	jmp	.label_3252
.label_3252:
	lea	rsi, [rsi]
	jmp	.label_3254
.label_3254:
	jmp	.label_3215
.label_3215:
	mov	rbp, rbp
	jmp	.label_3256
.label_3256:
	jmp	.label_3228
.label_3228:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], 0
.label_3227:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42db10

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
.label_3353:
	cmp	dword ptr [rbp - 4], 4
	jge	.label_3352
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
	jmp	.label_3353
.label_3352:
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x42db80

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], 0
.label_3354:
	cmp	dword ptr [rbp - 0xc], 4
	mov	rbp, rbp
	jge	.label_3355
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
	jmp	.label_3354
.label_3355:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42dbf0

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
	jne	.label_3356
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_3359
.label_3356:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
.label_3361:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	jge	.label_3357
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_3358
	mov	rsp, rsp
	jmp	.label_3357
.label_3358:
	jmp	.label_3360
.label_3360:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3361
.label_3357:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
.label_3359:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42dca0

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
	jg	.label_3372
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 7
	mov	rsp, rsp
	jmp	.label_3367
.label_3372:
	nop	
	jmp	.label_3374
.label_3374:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x20
	lea	rdi, [rdi]
	jl	.label_3362
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_3367
.label_3362:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x1e
	jne	.label_3369
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	jmp	.label_3365
.label_3369:
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
.label_3365:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_3376
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_3367
.label_3376:
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	movzx	ecx, byte ptr [rbp - 0x2d]
	mov	rbp, rbp
	cmp	eax, ecx
	jne	.label_3371
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
	jne	.label_3371
	jmp	.label_3375
.label_3371:
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
	jmp	.label_3374
.label_3375:
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
	je	.label_3366
	jmp	.label_3370
.label_3370:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x1c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_3373
	nop	
	jmp	.label_3377
.label_3377:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x1e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_3363
	mov	rbp, rbp
	jmp	.label_3368
.label_3366:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 3
	mov	rsp, rsp
	jmp	.label_3364
.label_3373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_3364
.label_3363:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 4
	jmp	.label_3364
.label_3368:
	nop	
	jmp	.label_3364
.label_3364:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0
.label_3367:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42df00

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
	je	.label_3378
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
	jmp	.label_3380
.label_3378:
	nop	
	nop	
